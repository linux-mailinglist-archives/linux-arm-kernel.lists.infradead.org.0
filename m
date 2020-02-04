Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8BE152388
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AEuKwu5OcUT3rSZoseg19eJbxZi3l+ZtqPbTT9hBrh0=; b=LjbBR34SIbL+uv83/L7FwXafu/
	iH9OGr0wfTTKYPO39H3xcJNxZvdozUBvwgZB65YXdIMfjq2BfSm0JkSCb0gMDptMJlaYXyB4ebj+e
	ssbSoVZ4EcF6RbfQLnnAwvsvSU1d7j1XjtPRwwxYggsK7OjLuIBrGTXscmWG0SIvW+QOKuBS3jyBk
	Hsq6cqTp+HEO4jPKr6579QK5j3qS7Fp2oDoiC6nGZgXKlkPtXsOSS4btUhqWz1lYqy9iOb9xrHX6O
	ZU3ZMW/R6xqXeyd2Tb2ImSGy95Vsc9Ex8Hzsv2wY2QxKNd9nsP1LZEeWM94OvIXhMmWY9wsDtEJJs
	iaQviAMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7xl-0006JL-0L; Tue, 04 Feb 2020 23:50:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7wv-0004Uc-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:49:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so72480plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=Yk0UNyyAlkctNhCEl0XmAo9v2tutCjwPUMuD76Z53N2E4FftV6cTkCjAHeQGoJsHj7
 QIKwetLhpjlSd9i0Ats6RVGMrEEDEVRLioAxbYfLaBN5889APinEf0m55r5x3KXaVIrZ
 oSQTl6kQyV8sFLASP/vjlidXEX6iS/0RE8mVwS2tKLHUio+gpN488xI69k9G6e56oy9i
 HblJhv895SVGOBfy9iEga1oD2MUI/OGK6OvL9p3QKBzi///hzUbXJEi5AxaXBdj3RDze
 QjNQ3hoaGObwKZyWme74zSLdWqs4meGDHX2FHwsCWvwW5CszqBNMc8y4NEJu8dbbYXWw
 Aa4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=smvszCi3tY1lr376CNI81o2IVKoFHVnP0WRnXPun6QIxK/epzGlUQBBzsElAzDLYOF
 GXrM+2iiPodTCcZYGthZBMSR7eY/Fjzq5u1Ws1zVEdlko5/usO4FBIXKtPcTJsOtFudS
 HaRnScDi08K7xnlB3P6mAgtKSyfSVOWNBCY3cT9aXArkrPbUcprr8rZa+CoEKIUZitiT
 zdpxt3vOExJh9whd9uy/y6XgJ/Yo68sKE8vKqbGj4r9kgm63dzYRBPdm8/ThYlkdGx8X
 CRuGcLlS4Y+23YyX+iZEfpDSlhEPsyWhhxgoZySrV0BMxpTZBqzzMDhlAD667L3b+Cci
 SSyw==
X-Gm-Message-State: APjAAAV/pAInQ7t+fswOKFkwSf8HRs/aZ+WAI6Rg8cJyskViQWFKN/cd
 s49SZzzAWiklhNcQ54ehTzk=
X-Google-Smtp-Source: APXvYqzscwmenowcDy7Jeog/8AGe1JciDVrcX+rmRLWuTOpy9AufsDtRKO3ndcrFvHB5apSnObXHOw==
X-Received: by 2002:a17:902:a514:: with SMTP id
 s20mr32054509plq.300.1580860181981; 
 Tue, 04 Feb 2020 15:49:41 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:41 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 04/17] media: imx: mipi csi-2: Implement get_fwnode_pad op
Date: Tue,  4 Feb 2020 15:49:05 -0800
Message-Id: <20200204234918.20425-5-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154945_551250_AFA51D05 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement get_fwnode_pad operation. If the endpoint is owned by the MIPI
CSI-2 receiver, return the endpoint's port number. The MIPI CSI-2 receiver
maps port numbers and pad indexes 1:1.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index c1d1afeea53a..e27a342751fc 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -507,9 +507,37 @@ static int csi2_registered(struct v4l2_subdev *sd)
 				      640, 480, 0, V4L2_FIELD_NONE, NULL);
 }
 
+static int csi2_get_fwnode_pad(struct media_entity *entity,
+			       struct fwnode_endpoint *endpoint)
+{
+	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
+	struct csi2_dev *csi2 = sd_to_dev(sd);
+	struct fwnode_handle *csi2_ep;
+
+	/*
+	 * If the endpoint is one of ours, return the endpoint's port
+	 * number. This device maps port numbers and pad indexes 1:1.
+	 */
+	fwnode_graph_for_each_endpoint(dev_fwnode(csi2->dev), csi2_ep) {
+		if (endpoint->local_fwnode == csi2_ep) {
+			struct fwnode_endpoint fwep;
+			int ret;
+
+			ret = fwnode_graph_parse_endpoint(csi2_ep, &fwep);
+
+			fwnode_handle_put(csi2_ep);
+
+			return ret ? ret : fwep.port;
+		}
+	}
+
+	return -ENXIO;
+}
+
 static const struct media_entity_operations csi2_entity_ops = {
 	.link_setup = csi2_link_setup,
 	.link_validate = v4l2_subdev_link_validate,
+	.get_fwnode_pad = csi2_get_fwnode_pad,
 };
 
 static const struct v4l2_subdev_video_ops csi2_video_ops = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
