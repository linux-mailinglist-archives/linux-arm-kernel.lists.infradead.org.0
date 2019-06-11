Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D763C667
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh4qxMsK9arhTuZwfzC5eQmSitcMk5e2vuNh/a7yXgw=; b=pogn/B+WJOJ8ZH
	GBGLLH48aJFtYFLvtr19Z45SOhlZFqNSb/TXvkupnZKGPTkgLPThboKLUaODeT6pQxltpb6hO4fXs
	oVFxtKTM8Oswy47xhT1giAScAzmAcQ8qJAISJnPa5G9kfnFkQSbWliUhj3ZR8UndSxnPdpDD41Rrx
	up/kyxAd88EoQICpjLjeobMj1lWKvHhTxIXGWiJArTVo22UME9Q9EMw1O2h5evpeYvssvgfaVXfzu
	vhIL+0zbg80tjfXLReTJ5+K42YqArgyoZf2Y8WA5Ru2EObFZxjx8J/VZu9VRHedo8tOFDdEqpj8Bi
	4Q/IeeH1wRc8U2ig7Kvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacSJ-0004SO-7q; Tue, 11 Jun 2019 08:48:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacPG-0002VV-Bj; Tue, 11 Jun 2019 08:45:28 +0000
X-UUID: e3e9e928272c4cd6993cd086cc7ad7b7-20190611
X-UUID: e3e9e928272c4cd6993cd086cc7ad7b7-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1495453108; Tue, 11 Jun 2019 00:45:20 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 01:45:19 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 16:45:17 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 16:45:15 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: [PATCH v7 07/10] usb: roles: Add fwnode_usb_role_switch_get() function
Date: Tue, 11 Jun 2019 16:44:37 +0800
Message-ID: <1560242680-23844-8-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1560242680-23844-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1560242680-23844-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_014526_684563_321DA672 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heikki Krogerus <heikki.krogerus@linux.intel.com>

The fwnode_usb_role_switch_get() function is exactly the
same as usb_role_switch_get(), except that it takes struct
fwnode_handle as parameter instead of struct device.

Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Tested-by: Biju Das <biju.das@bp.renesas.com>
---
v7: 
 add signed-off-by Chunfeng and tested-by Biju

v6:
  new patch
---
 drivers/usb/roles/class.c | 20 ++++++++++++++++++++
 include/linux/usb/role.h  |  7 +++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
index 86defca6623e..5b637aaf311f 100644
--- a/drivers/usb/roles/class.c
+++ b/drivers/usb/roles/class.c
@@ -135,6 +135,26 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(usb_role_switch_get);
 
+/**
+ * fwnode_usb_role_switch_get - Find USB role switch linked with the caller
+ * @fwnode: The caller device node
+ *
+ * This is similar to the usb_role_switch_get() function above, but it searches
+ * the switch using fwnode instead of device entry.
+ */
+struct usb_role_switch *fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
+{
+	struct usb_role_switch *sw;
+
+	sw = fwnode_connection_find_match(fwnode, "usb-role-switch", NULL,
+					  usb_role_switch_match);
+	if (!IS_ERR_OR_NULL(sw))
+		WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
+
+	return sw;
+}
+EXPORT_SYMBOL_GPL(fwnode_usb_role_switch_get);
+
 /**
  * usb_role_switch_put - Release handle to a switch
  * @sw: USB Role Switch
diff --git a/include/linux/usb/role.h b/include/linux/usb/role.h
index da2b9641b877..2d77f97df72d 100644
--- a/include/linux/usb/role.h
+++ b/include/linux/usb/role.h
@@ -47,6 +47,7 @@ struct usb_role_switch_desc {
 int usb_role_switch_set_role(struct usb_role_switch *sw, enum usb_role role);
 enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw);
 struct usb_role_switch *usb_role_switch_get(struct device *dev);
+struct usb_role_switch *fwnode_usb_role_switch_get(struct fwnode_handle *node);
 void usb_role_switch_put(struct usb_role_switch *sw);
 
 struct usb_role_switch *
@@ -70,6 +71,12 @@ static inline struct usb_role_switch *usb_role_switch_get(struct device *dev)
 	return ERR_PTR(-ENODEV);
 }
 
+static inline struct usb_role_switch *
+fwnode_usb_role_switch_get(struct fwnode_handle *node)
+{
+	return ERR_PTR(-ENODEV);
+}
+
 static inline void usb_role_switch_put(struct usb_role_switch *sw) { }
 
 static inline struct usb_role_switch *
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
