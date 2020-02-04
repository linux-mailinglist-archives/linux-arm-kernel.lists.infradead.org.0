Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191815236A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j4NDwUfdrYKoddGHtyyo3vW0nDaTQXLYbItAMeJrx/M=; b=COztOG2OWTjL3QDvEmt1tOox6t
	6TH2XNr8YsfgWoNN8N3Bbn6+R4FRDm5qMNrZvDFaUn91mjJSZ3dcARXdEX+LpYNYtbo34KR0neilg
	1a3rewex9uC+X12bIdIEJcAeFeW/r6D2lpMltje+SiXr9xGNi3XJlSukNITQh91nsbaypONqwt0qy
	2p/w1lWjbzGDr447yaTJ00HI5Nxo4HQqBKoI8kVHpa/DGDk3glTAwQwRY2+71KJdhVrq382jtV2/c
	T8U9bwym52a9sqtMHPARp9yiukCYnjYWQuqkskLBgQOVbLXov3kJvtSq5mGUcTzphjHvIktoiC1KS
	rlR6Hznw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7x3-0004WD-LI; Tue, 04 Feb 2020 23:49:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7wu-0004UJ-NE
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:49:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id j9so167428pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tEFP9EfjLyBSm2GDbhHW2vsbKN5BJT5FKVyhRHQNMY8=;
 b=qmhbDNR95uHywwTR96SOWFHQIuY5BcX1uVAKfd+uicZ/k1fooHXSfNBVaesqjSQuZM
 OQMTcnpW7TEz9K/YUDnRklPs/ToaTpYqRigLVpPQu4QcTCoIPUY150DuIMtiSb4/OEyH
 oJ3emGDquRgVHbaJlQYK9Fd1Ftcovqe1Bk+JATIFT7MVbxmoDSys0IY2ekFO7tQqoxLP
 bhQSL0C/24rpHydkRdHxijxlvhu8YM+ssVxLjZXU8FXyWrn7J88sNdv6x3XgL+gqmTrr
 XzMFB4qltVjlXDCHbOzNZgd94Pr/t6vht9lz9F0xzd+xATy4aNz67yWdpbTWB/kvEusB
 nBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tEFP9EfjLyBSm2GDbhHW2vsbKN5BJT5FKVyhRHQNMY8=;
 b=ndO1Sb0fzn16uFODuQTrtCiQCN04bvPEfBp4+x69l87xRvWYN+sIgWtdZwmAB5Czd0
 qAi4p3OPea+14aSjt1sNsGwuO+gKPqx9fzjD9J15ihR6JJWW9FdjjKnIZvxNtvCrIYaF
 XKOGordfHF90qtkfdP58AaaQB8dFLMsb2TnxyokQAzhwKYoIIfA+F3jRgU3AnjIsvN4g
 EACX6CPEG+Jhi/uS2nJOpRhyJp7A+VDhhua52umjhdmHPgEY8gyKHnIn9Zz2m1wx4Hdr
 q5aIVEvkGahh70gQpm+sKCxXjJxyPm7dfxp0+ULcg4JxdMKwr7Z1d8y1re7A1xCJTfMr
 SDnw==
X-Gm-Message-State: APjAAAVbF+oCu/Gzjg0FJsj/nm5jadW1mtq/cBLccyuzo5yvpzaTd0BL
 x/2l/lONcOCKfHyGGdjXFxs=
X-Google-Smtp-Source: APXvYqyIsRF7R9F2VnqpYSRTFRZQXt11C2WQyxtCzzEwR1tv4q2JGNKz08KJv6czrUc3SW0JZ1+R3g==
X-Received: by 2002:a63:9251:: with SMTP id s17mr33348585pgn.127.1580860180704; 
 Tue, 04 Feb 2020 15:49:40 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:40 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 03/17] media: imx: csi: Implement get_fwnode_pad op
Date: Tue,  4 Feb 2020 15:49:04 -0800
Message-Id: <20200204234918.20425-4-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154944_765000_04BBD3B5 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

The CSI does not have a 1:1 relationship between fwnode port numbers and
pad indexes. In fact the CSI fwnode device is itself a port which is the
sink, containing only a single fwnode endpoint. Implement media_entity
operation get_fwnode_pad to first verify the given endpoint is the CSI's
sink endpoint, and if so return the CSI sink pad index.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index b60ed4f22f6d..dc5fe25fe7b8 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1825,9 +1825,32 @@ static void csi_unregistered(struct v4l2_subdev *sd)
 		ipu_csi_put(priv->csi);
 }
 
+/*
+ * The CSI has only one fwnode endpoint, at the sink pad. Verify the
+ * endpoint belongs to us, and return CSI_SINK_PAD.
+ */
+static int csi_get_fwnode_pad(struct media_entity *entity,
+			      struct fwnode_endpoint *endpoint)
+{
+	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
+	struct csi_priv *priv = v4l2_get_subdevdata(sd);
+	struct fwnode_handle *csi_port = dev_fwnode(priv->dev);
+	struct fwnode_handle *csi_ep;
+	int ret;
+
+	csi_ep = fwnode_get_next_child_node(csi_port, NULL);
+
+	ret = endpoint->local_fwnode == csi_ep ? CSI_SINK_PAD : -ENXIO;
+
+	fwnode_handle_put(csi_ep);
+
+	return ret;
+}
+
 static const struct media_entity_operations csi_entity_ops = {
 	.link_setup = csi_link_setup,
 	.link_validate = v4l2_subdev_link_validate,
+	.get_fwnode_pad = csi_get_fwnode_pad,
 };
 
 static const struct v4l2_subdev_core_ops csi_core_ops = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
