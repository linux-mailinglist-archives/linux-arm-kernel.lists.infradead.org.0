Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0411E143078
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:07:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtjnUPrpLaeK7K9zCjBwcty+tytgzUMDCPyPtMF5PCs=; b=jD3KuKv8AaOOVV
	LA77F95deiV2CsA9xIlkFdv8wm41xQ56/7MXduZJHI6sWOXBJRU9V2K8KOBdo9qD2/8KaGddKmjyp
	R5JZbsKHSxHAhB/s+mdlLMWoT1bIitAXr90JkGIB+msSX9Axiw1cwZxTymn6/xJy3+tQhqVWDxkbX
	+NpzZAH5PK16OWx2G1hLrBYX9+fVc6GtNAeCeRy3ADCbOV77a8o8aX7Ph8vzROZbWQUXkU1/4iu9z
	FqPe3+Yxm0sFDdTsPATPLXzP8Fkk+qG8Wfjj31gQmuCo0SC/KwI7FMiKWBTGMcE9fpKshudXa8+eK
	Czj8BjOaNHV/82iYD/sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaVo-0007PM-4S; Mon, 20 Jan 2020 17:06:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaVH-0007AH-Bz; Mon, 20 Jan 2020 17:06:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 588B62912EE
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 1/5] component: Add an API to cleanup before unbind
Date: Mon, 20 Jan 2020 14:05:58 -0300
Message-Id: <20200120170602.3832-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120170602.3832-1-ezequiel@collabora.com>
References: <20200120170602.3832-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090619_662040_B93CB61B 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some users of the component API have a special model
for the allocation and release of its resources:
resources are allocated by an API but then
released by other means.

This contrasts with the current component API
assumption: .unbind must undo everything that .bind did.

An example of this is the DRM framework, which expects
registered objects (connectors, planes, CRTCs, etc)
to be released by respective drm_xxx_funcs.destroy hooks.

The drm_xxx_funcs.destroy call is done either directly
by drm_mode_config_cleanup() or in a refcounted fashion,
depending on the type of object.

For example, a DRM CRTC object is registered by
drm_crtc_init_with_planes(), and then released by drm_crtc_cleanup(),
which is normally called from the drm_crtc_funcs.destroy hook.

Now, in this model, drm_mode_config_cleanup() should
always be called before component_unbind() to avoid
use-after-free situations (because each component
has a devres group).

However, component_bind_all() calls component_unbind
on binded components, if any component in the chain
fails to bind.

In order to allow this special case, and following Alan Kay:

  "simple things should be simple, complex things should be possible"

introduce an extension to component_bind_all, which takes an extra
cleanup callback, to be called when binding fails to perform
extra cleanup steps.

This new API allows the following simple pattern:

void unbind_cleanup(...)
{
        drm_mode_config_cleanup(drm_dev);
}

int foo_bind()
{
	component_bind_all_or_cleanup(dev, drm_dev, unbind_cleanup);
}

void foo_unbind()
{
        drm_mode_config_cleanup(drm_dev);
        component_unbind_all(dev, drm_dev);
}

Each DRM component then uses the respective .destroy
hooks to destroy DRM resources, and the .unbind
hooks to release non-DRM resources.

Arguably, this could be viewed as Very Ugly. However, it handles
this complex case, making it possible to fix the current
unbind crashes that some DRM drivers suffer from,
in a non-invasive way, keeping the DRM resource handling model.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/base/component.c  |  9 +++++++--
 include/linux/component.h | 10 +++++++++-
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/base/component.c b/drivers/base/component.c
index 532a3a5d8f63..371cff9208cf 100644
--- a/drivers/base/component.c
+++ b/drivers/base/component.c
@@ -622,12 +622,14 @@ static int component_bind(struct component *component, struct master *master,
  * component_bind_all - bind all components of an aggregate driver
  * @master_dev: device with the aggregate driver
  * @data: opaque pointer, passed to all components
+ * @cleanup: optional cleanup callback.
  *
  * Binds all components of the aggregate @dev by passing @data to their
  * &component_ops.bind functions. Should be called from
  * &component_master_ops.bind.
  */
-int component_bind_all(struct device *master_dev, void *data)
+int component_bind_all_or_cleanup(struct device *master_dev,
+				  void *data, void (*cleanup)(void *data))
 {
 	struct master *master;
 	struct component *c;
@@ -650,6 +652,9 @@ int component_bind_all(struct device *master_dev, void *data)
 		}
 
 	if (ret != 0) {
+		if (cleanup)
+			cleanup(data);
+
 		for (; i > 0; i--)
 			if (!master->match->compare[i - 1].duplicate) {
 				c = master->match->compare[i - 1].component;
@@ -659,7 +664,7 @@ int component_bind_all(struct device *master_dev, void *data)
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(component_bind_all);
+EXPORT_SYMBOL_GPL(component_bind_all_or_cleanup);
 
 static int __component_add(struct device *dev, const struct component_ops *ops,
 	int subcomponent)
diff --git a/include/linux/component.h b/include/linux/component.h
index 16de18f473d7..1a5c7b772de3 100644
--- a/include/linux/component.h
+++ b/include/linux/component.h
@@ -38,7 +38,15 @@ int component_add_typed(struct device *dev, const struct component_ops *ops,
 	int subcomponent);
 void component_del(struct device *, const struct component_ops *);
 
-int component_bind_all(struct device *master, void *master_data);
+int component_bind_all_or_cleanup(struct device *master,
+				  void *master_data,
+				  void (*cleanup)(void *data));
+
+static inline int component_bind_all(struct device *master, void *master_data)
+{
+	return component_bind_all_or_cleanup(master, master_data, NULL);
+}
+
 void component_unbind_all(struct device *master, void *master_data);
 
 struct master;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
