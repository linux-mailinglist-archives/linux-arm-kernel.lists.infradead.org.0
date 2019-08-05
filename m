Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F47582833
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N1QxzANxFEI1GwxhezB3JCsRMZSh82jlX5ttAVLcqYU=; b=sfPLWbf8d4ppIzFMeIgyk1ZJ+5
	a6qKJsbxazsjzGU/5LV51uQhDAErlbtZ5Ep6MaxIX7F0RhhfwaPRIwU7mqqhJljgr5MdDNQJf8diV
	fEm/D/eSkzdFdLMJryBx16ugU6j55XCb2qVO8UJeTj4x0ayVJyqvLn2h67z9ZlJMu/lmfuNmZFuZY
	j3J2o7xNCWQU5KABoScIVvl3CT/Ak91d9/G0cxVhgIiypW1ZzDDekT9CaPKTuKa9p/GsQwvTxx1Si
	9rTVOyMdmDpLNbFNsYz3wBFTac0lbWbNYVTjykNngkuiXl7uRcoKVxl+Mr+fBtOqsbynKrlnQEVoa
	KLfJggWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humXw-0007EE-FI; Mon, 05 Aug 2019 23:37:44 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVv-000539-Sj
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so30052593pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zrm8LxDqKTEIfziOzXkM6e2flIMXktLlvnyDC/cWAXU=;
 b=E8PFWAlEca7XGp/ypYPJskiPyA9K+7OS18DItOnG2Bfl6FCKtkimS9/DnRw/hE1zFu
 OouSg6pW06IaMrrAq2zQYNzh3HlvYNDC7/+6Pd2pGb73nYxYAiOzuLNakyx/gs/0ne7M
 tOiWcZ32wmqRG7rODw5zO3uH76Efd0ztx6BR2HX5j+4+nFvZGQKj+AqMcwtpxFdu2Jqn
 D0zHlOtu7eB9PrDypfvevuW51VXdxNfXi2g+oXIyE+i8StDi8QWlJbqn41x/0jmmJhZn
 Uka/xY8sq5AdPsUB/yIUOTcehc9mCEBwQG6nlixCt38ifTG1RaeP0DX+8kwp+yp8gMOv
 Oc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zrm8LxDqKTEIfziOzXkM6e2flIMXktLlvnyDC/cWAXU=;
 b=hsXhPfyRM56WP1fvCnfEXoCpV4etdRQcyI/wCWF+2hArXB2KL5XdpE2rNGqeyKcine
 3hzHjmfNJN5PLjkaW5IV8rfFOlf2oMxjVGBDbsbfvevub0ZtVdTCfCQp4P23ZJqzIaBd
 FSgePWM29thf3Ep5rMpXQHAwMTOmGGWrpoq85HxqZt8j7O4DhE8qhYjoGEBi9CgEm//c
 iZtkMcmYuLZUoSp/AgalY5tdFTztTyzkXdsVt9XrYiJitKgvBC4cIyb0ypYX7sAGRLaC
 7jkzHdy1niekDMpyEnOSEMhYUWC6ru0F7f/lWRnoazIqMU5cxPIfL3fJ00EKQMmZfiL9
 Vzqw==
X-Gm-Message-State: APjAAAXtc7tC2dLigrq+I88DrsK3nIoaie2XVrNKSLeHtanopn2v7P+w
 3nlQeHlDJMXgnGWqLKWBu0I=
X-Google-Smtp-Source: APXvYqyH8CdkrHUQnPTNSLlBsJ0vtRNhSprKbx26bouPjx5BmsIKdhqcv08x/6Q/83cWW2HTKFyUEQ==
X-Received: by 2002:a17:902:5a2:: with SMTP id f31mr277744plf.72.1565048138734; 
 Mon, 05 Aug 2019 16:35:38 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:38 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 20/22] media: imx: Add is_ipu_internal_subdev()
Date: Mon,  5 Aug 2019 16:35:03 -0700
Message-Id: <20190805233505.21167-21-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163539_933924_2A588D50 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add a convenience inline function that returns true if the given
subdevice is one of the i.MX5/6 IPU-internal subdevices.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index d75b3c80101a..c42a2cafb8fb 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -282,4 +282,12 @@ void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
 #define IMX_MEDIA_GRP_ID_IPU_IC_PRPENC BIT(14)
 #define IMX_MEDIA_GRP_ID_IPU_IC_PRPVF  BIT(15)
 
+static inline bool is_ipu_internal_subdev(struct v4l2_subdev *sd)
+{
+	return sd->grp_id == IMX_MEDIA_GRP_ID_IPU_VDIC ||
+		sd->grp_id == IMX_MEDIA_GRP_ID_IPU_IC_PRP ||
+		sd->grp_id == IMX_MEDIA_GRP_ID_IPU_IC_PRPENC ||
+		sd->grp_id == IMX_MEDIA_GRP_ID_IPU_IC_PRPVF;
+}
+
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
