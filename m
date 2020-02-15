Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF48160037
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AEuKwu5OcUT3rSZoseg19eJbxZi3l+ZtqPbTT9hBrh0=; b=L+KAMwnyJ9wXLMgm+E4MMn5I9f
	H3j+iT7ERujxD95FcLSVDUNsgTYvfQZ/0Yrbn82iE347QOesE64IgNpIMEF9qtfzFKbtBe4txV+/h
	kxYb/fPDVgkRSvgWDuf/yXBmwhathF3lEyR6QPJ4NU8hcYQ90ZCr4RmvvSXbXP4D7ylZ0c7UVjfsv
	8nui2ulxT5VIBopNxNH+RGZq9zkLAoAhNW56NEoI4zGyDdaeHCGQdFKhA/DLEi57Y/uAuxYUHXFjc
	cJSpCvMJ8HYUeb9G0lQdHEqpI4wSb/w0ltcfz78zp3h9/iVtvpBfxMZvApclIDjzjPwv5zw5Fnesr
	TW8IG+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33L8-00009s-9V; Sat, 15 Feb 2020 19:42:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33KN-000859-CX
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id s1so6740167pfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=TGhkM8HhZmjY6DuPQb4msMGHcL2dzou1bD6wb1KGAftp1o3QHahLkCxh3w2vLkJLAW
 L+KiqIFB35nAHd5eUFpbR9RaqzFZwb8ZAC/atCwwXQM0Tnje/D2Z4++AprA6vSkwa8js
 8buim4rd11xf7othSwdH1CR9PwauFkp23Iiwv8R62DtUJ65ngGFaZjyaR0i2I+2r9fkv
 lHQdo2tWRyANKH8czra1L2U/nMnigwRTlv7vgR/ovAXu4Q3+roMzvJ9aupaOhLpwPizY
 cO+n85XdHuwByzNr5GPH3/8RZTJYXoLOvvvVoUjCl1A7kix84J9ysgVv04C9X5UiGD3S
 nUXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=emsBwA/jtJjTU+vA7RiuQU7UHaR3i3AcwLBvx5Ek51hLZzzEA3uRlHetBKVexUBL9I
 usiUxMCaHuXYk5Gq8rCJzH5yyFXAmdSupUegWkoMEgit7SJxjrIJobIfk73ix4Q1n/X6
 ydjcUUsd0LLDTyiA+fiW7EaYw8YekC89wY7iAQ1MgyokjoJ3YKq8n/k2xIDB1I5iPxG4
 ZWBKwYKIjcL++eAlwskQTz05tiw9NB0z6MxAObc3+Y2m+v+kgwnq9+lK5wUl3CoMbHet
 /Tc5WjqDDVoKyFD1A1aNxk/qYoXbmYavpO+5AjYcvTNF0BgjQP9znf7cNvJCzpPLVmxZ
 YzUw==
X-Gm-Message-State: APjAAAWAsVv2krpaFlWGqqsVIlfNp9arR8rYFYq1g/WwjqlYuERqfviB
 Chpm6qSlRtLVofPUb+f8K6I=
X-Google-Smtp-Source: APXvYqykL2GsAy4uDFniQNsQVMLOFN4GwHeH/9K6Btq7YRMenUHjMOgBREWJ9t33xXFT+4LdznuKdw==
X-Received: by 2002:aa7:8654:: with SMTP id a20mr9407051pfo.88.1581795729527; 
 Sat, 15 Feb 2020 11:42:09 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:09 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 04/17] media: imx: mipi csi-2: Implement
 get_fwnode_pad op
Date: Sat, 15 Feb 2020 11:41:23 -0800
Message-Id: <20200215194136.10131-5-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114211_452426_6969CF86 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
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
