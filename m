Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3255AD24
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 21:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/iwecheijJt3ZHIm/WAICBYrak9Tl7NtYqll2x/scDA=; b=Xk9
	KnDjHbN9XtWuOMhNUQI3KZjsvwTSOTSWQVG7h7KuwrW9DN/Df1Yw3A0XWFGy6ZnuE4hLHC+TXCmKY
	l+EZ/xxKw/3dAvq4+8yKtZZX8+thoDLm/tCLgj/2TGsbQtFJDzmkXNCCgf6eqwvUIVECcq46hyPT9
	vLVJ+ZtbTXE/J+R0DI/GWXjLPOasaDRpUsqlTMa/IH8MmQyrSr1xPfbMTohacKgzYpp2IZMYrZLb4
	0hlqruKY4+LKE7OP/AUmoycQGE2fBjb8mZjsnGLpl1DC8nbOxPH9BK4dg6J79I7XG2MroKXOZSMYg
	0N0z4oY/NlF8ffyqvlnwNtX7k0BI75g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhJ70-0007mO-On; Sat, 29 Jun 2019 19:34:14 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhJ5k-0006us-AU; Sat, 29 Jun 2019 19:32:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561836762;
 bh=BIJK7S3dp1eVapaQ1NquFN0+HEOlId3LqlyUJ2Bp7Vs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=j541upki+Zi9GpMGYNtpzVcdTw89LDK/OLsN4IpA1upqoKpnh6ISahhjVuPHiDB7g
 Jt+NAf9fb2abt+9pTyRbBuHRL0uBxZso6WNfDHK6uPUVhDBBmAIjQ+BGeGCLSj4Awd
 nQDoNYjDhaYI1JCpJQM67ZXfveA74ez2KDr7EAf0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M7pku-1iTcJV3vvs-00vN8x; Sat, 29 Jun 2019 21:32:42 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 25/29] staging: mmal-vchiq: Avoid use of bool in structures
Date: Sat, 29 Jun 2019 21:31:39 +0200
Message-Id: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:SEQbTqFzj56akxHV9UR17gLVvJHO0jYiIWWM7BgEyKIv60EvWet
 PoFzOsEda00YGUMzbmmDePvP5oAdO1J1Elm9GoC8jJ3LoVK19G5ppe2EC4nSxuUeu5TZnF9
 htPyVIGRSORJh+rtElgu5uZQIqNup6uSudeXMWqkfp+lDtDvrusF8mFzY21JPDADyF7qguR
 nlz3/iuOcRbbpof1xLypg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZtQQuybeF6I=:N9KcMDZPk/RNG17uangLav
 ZRWJ78e6rVNI9sKxkwx1uGqUQUMcop6TjyfLaLzriPCPZfknxSkomtjjcMI/Lvl6EzTOsduwJ
 Tp6/v0S+1468zpGcPF7qpSDwR/SQtEbsQxRqvZP93nqDRXQ39ViqfdxNrI2p96OZb8ENsSwWg
 f02ojkP45NtpOL5KrbSQsyPDkg0AX/7LhSPZkPflcovRg8VyCHE+yZvTTfjLT1FyD9w97pKr0
 3Rkd1S7Omq5RlSvjRUmoQhkWtOTfT0c1yuMGk1NtVYcBJAOSBgSJ/KVVfg9I+7Q/dt7SBYB4M
 0OM5SXG6Nm+TBPYQlyKOyzFzq+j3MHqTapQG7ChndW8h+i5xaV97fxEItrZu8qLBHeKysolZF
 IIlN1HnYPUsdHmJgmgkQdJIuAGr6lq34WUh2p9UrS5f+8ONGZdrDA0iO7Kz8LY5aXrSrZQeYN
 lqPfpJ6lj80I1kPb1ZHjtqt7p7lAHV7eZmC+0HTTxsyioJrxg+H+BDiA0seRYla2g5ugkcfiz
 i1vgDDLGMX1ZZae3BxBegwUihyzeC82aDd42xb3sgMKsUWbyDsKY2oXFitVImQpKFGfrcHeaq
 tvFl0woso5OCbE+81AbLylgCo6nm1tJGIAPBc3auAvaO4MHWLUhEaSv9MlyHNRwRam/mXLuQZ
 6ucqqdEOAVEiSPFnvdW8pc71hiNwsHIP4bx/n+gWdUqyuYTf/AZzlPrmC2FkZIej4O/5Eip7Q
 K4O2WwYuIVmDuMCzCQdvQG6ayonuXAZYTjdet5TF0hg+zzeE81uQBrNc9Efky8MvqdzLniFVO
 KwXw8yAKb1FGFvi5nuvAS6c7KpwTHtoVFv1Pc1xgcZIZdGd2N+8UZNuBSDkwzOpsDjIwa+LFV
 yo/PbhxL2h4zek7cd1nMlPsgSfQ9BwCdoSBOp5IErpXcXyVaX+92BNZ/VnJqnLOKbrXvncZFI
 ZU+VpFj1W4MNCGp5oWUQIJqL8jyycpo636hklfGs9E0B8C1yfFQIuiOk5pxtpbJjsu2dOkq4W
 h5R7wwMzM6QSWgQ6uN+JuxozrIsOE4mBf+Xa2ajCqX5pRitB+pqrGd8ntNOaiAccWfU2Db7b6
 McZC3NZyxp2pUU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_123256_672767_1ABC0BD9 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Fixes up a checkpatch error "Avoid using bool structure members
because of possible alignment issues".

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 12 ++++++------
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index d0f7b67..1c180ea 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -853,9 +853,9 @@ static int port_info_get(struct vchiq_mmal_instance *instance,
 		goto release_msg;

 	if (rmsg->u.port_info_get_reply.port.is_enabled == 0)
-		port->enabled = false;
+		port->enabled = 0;
 	else
-		port->enabled = true;
+		port->enabled = 1;

 	/* copy the values out of the message */
 	port->handle = rmsg->u.port_info_get_reply.port_handle;
@@ -1292,7 +1292,7 @@ static int port_disable(struct vchiq_mmal_instance *instance,
 	if (!port->enabled)
 		return 0;

-	port->enabled = false;
+	port->enabled = 0;

 	ret = port_action_port(instance, port,
 			       MMAL_MSG_PORT_ACTION_TYPE_DISABLE);
@@ -1344,7 +1344,7 @@ static int port_enable(struct vchiq_mmal_instance *instance,
 	if (ret)
 		goto done;

-	port->enabled = true;
+	port->enabled = 1;

 	if (port->buffer_cb) {
 		/* send buffer headers to videocore */
@@ -1511,7 +1511,7 @@ int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
 			pr_err("failed disconnecting src port\n");
 			goto release_unlock;
 		}
-		src->connected->enabled = false;
+		src->connected->enabled = 0;
 		src->connected = NULL;
 	}

@@ -1758,7 +1758,7 @@ int vchiq_mmal_component_disable(struct vchiq_mmal_instance *instance,

 	ret = disable_component(instance, component);
 	if (ret == 0)
-		component->enabled = false;
+		component->enabled = 0;

 	mutex_unlock(&instance->vchiq_mutex);

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 1750ff0..f738e7f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -48,7 +48,7 @@ typedef void (*vchiq_mmal_buffer_cb)(
 		unsigned long length, u32 mmal_flags, s64 dts, s64 pts);

 struct vchiq_mmal_port {
-	bool enabled;
+	u32 enabled:1;
 	u32 handle;
 	u32 type; /* port type, cached to use on port info set */
 	u32 index; /* port index, cached to use on port info set */
@@ -82,7 +82,7 @@ struct vchiq_mmal_port {
 };

 struct vchiq_mmal_component {
-	bool enabled;
+	u32 enabled:1;
 	u32 handle;  /* VideoCore handle for component */
 	u32 inputs;  /* Number of input ports */
 	u32 outputs; /* Number of output ports */
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
