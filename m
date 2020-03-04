Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFD0179247
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zODjI3uTDR0ydr09pu6TB31nYp+APhYe7veF/PZQCTM=; b=YweDG6ws0ga4/i
	3KRJdR24TBchS+hF31Z91HczGg8JK3XJekoH2AXWbfhz/1utFWhmO3aHK89wrmitrn+hJzb/Fg3C6
	XK5cKcrXEbbKKkF2Y7MKi9lXapSTa9vSMMDC8ELu6WXSCO7WYiUDMnV4Va6vCol0IaUVsiVekmxgR
	2KwcFZgN0Dkyk31tiU4bc1a1oyN30dRCWvqhXzPw9XPUtcONt2hoPKbt/iAWyxncC+b4i4cxxTce+
	Qecw9n3OPYughvPvksR2kR+sn3A0CNtASI4dv91qBxJZOmXta7jm8WgdTzp/GuYh8Uz7QvdcXWyCZ
	2gg0BaNkh/0Pd4oD+TIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Uxt-0005lM-M0; Wed, 04 Mar 2020 14:25:37 +0000
Received: from forward103p.mail.yandex.net ([77.88.28.106])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Uxk-0005kD-KD
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:25:31 +0000
Received: from forward102q.mail.yandex.net (forward102q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:516:4e7d])
 by forward103p.mail.yandex.net (Yandex) with ESMTP id 25E9718C3845;
 Wed,  4 Mar 2020 17:25:19 +0300 (MSK)
Received: from mxback8q.mail.yandex.net (mxback8q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:42:0:640:b38f:32ec])
 by forward102q.mail.yandex.net (Yandex) with ESMTP id 205C27F20018;
 Wed,  4 Mar 2020 17:25:19 +0300 (MSK)
Received: from vla5-47b3f4751bc4.qloud-c.yandex.net
 (vla5-47b3f4751bc4.qloud-c.yandex.net [2a02:6b8:c18:3508:0:640:47b3:f475])
 by mxback8q.mail.yandex.net (mxback/Yandex) with ESMTP id I0SvveKpM4-PINeEPFT; 
 Wed, 04 Mar 2020 17:25:19 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1583331919; bh=r83eXkzCEdXbDAwniYRybWaeq5RaZBLGnoqVnnIBAUg=;
 h=Subject:To:From:Cc:Date:Message-Id;
 b=HVFWZPWPclF02CLbSzuHlL9bRIjJ8R4BhCaVEQFXbvAlKKCKFaDzEijV7uji3BY8t
 TZ2jGlQSgYvUPxMJoBPjCJExH/T7WYF8IhcGGtjjmAdtx4N1D3p/FWFB+BOzB1nI87
 zkYBOwqgqqVqCi9UK/y3MB7bKa8IcqSqvbWmvvvo=
Authentication-Results: mxback8q.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by vla5-47b3f4751bc4.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id OSNMAAdVGo-PH3OtHoN; Wed, 04 Mar 2020 17:25:17 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
From: Nikita Shubin <NShubin@topcon.com>
To: 
Subject: [PATCH 1/2] remoteproc: imx_rproc: dummy kick method
Date: Wed,  4 Mar 2020 17:26:27 +0300
Message-Id: <20200304142628.8471-1-NShubin@topcon.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_062528_851172_6E1B8849 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.106 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Nikita Shubin <NShubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add kick method that does nothing, to avoid errors in rproc_virtio_notify.

Signed-off-by: Nikita Shubin <NShubin@topcon.com>
---
 drivers/remoteproc/imx_rproc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 3e72b6f38d4b..796b6b86550a 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -240,9 +240,15 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 	return va;
 }
 
+static void imx_rproc_kick(struct rproc *rproc, int vqid)
+{
+
+}
+
 static const struct rproc_ops imx_rproc_ops = {
 	.start		= imx_rproc_start,
 	.stop		= imx_rproc_stop,
+	.kick		= imx_rproc_kick,
 	.da_to_va       = imx_rproc_da_to_va,
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
