Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563B72244B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 19:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nENvccybqBsceYOzwxIYn5r51w26h6jhtnHbQcwZH0o=; b=IiTXlUHJ8mAeL1
	dW+N6/m1I8SkctiDxOOE7/PGfRPD5p99FIGZ5Nsb/3m5OzVPLYv63LokVDUMbp7kX3SvXkAdD2t1z
	uFqQ+JGN98IiSAE+/6cz+sBXUy2cc8f/OLZqapvJ1sGV+SVp+yd5XDohOmiytwns2Xbsf8R5HY1iX
	qOAthuBf/HbKhSpfpGG0I2Ue5IpVsRXNbHpdUn5DvPDi3xXbHBEgSYkB6oSGUbWLPqT7CAqc7BIjC
	K7ZJnNmxAXJCao9nLmxMbdEeBI3VmdcCYoMTjYcfPBWDe8gEdTZcw1/+IAFtIol9Tp94+AELG74gs
	WsUCt6EevCoNRXDYVbdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS3IZ-0007tc-5s; Sat, 18 May 2019 17:39:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS3IR-0007st-Ei
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 17:39:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id w22so4771769pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 10:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=K1nkYGLmXxVZQrJhOHX5C3Yjum/GvkV8x/L+QphEw5Y=;
 b=VKIycHZ8mOTyhdoH7w67rLsEBUiN8FjSJtD8i98oTd0bVeMq1TDnxyqD+Tygrf5cox
 9RQ01OJDPB9SDuyvZoJiYiW9YK5caCd1M4OnP2jgDDehk5/UIlpfbguJZbhuf1H0wtpi
 7oneN1VrKDPSvo+EkvYw7LvLpp/41+8KiYYbaHPLa/DwrTg4Dw7ZHRafxwmsoXLrd3XM
 +zo7nFPrpU75JFHCRy/2iuZh0Vj9wcv+0NX+GBsjQE7UJXd+160+tZiOVYc7sBP2lOMk
 JcyKKbDq8LNU3STX2N0RYwfijfnAF3UAmCvNun6JT3NES8wxeZ56uXtr+IGco0xvP/qn
 8LWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=K1nkYGLmXxVZQrJhOHX5C3Yjum/GvkV8x/L+QphEw5Y=;
 b=EFxI3tvbcs3h3GaKt1XQ1jwVIg8t5IcgzrbCorqXbSb2EwyDT7R46bWVAoIW+yEfb7
 +/NPgwd4vZu+wxxDxIFx0dbw7eYQA7wA8KhAX/HCjwAIz84RSCvtb7KfautskAF4yKVn
 VVMcS5xwji1Uy51QqcvzLmo6XBs68JyLEF+6DsNdeqvy1s6Bf8ApJlu7ij8Skjs99PqC
 1jQk07azTNSbNKM3JBFBoiZ2rl07lEisg7togQAROm7r6JOh5TriEZ6o5J4ClAltEsFf
 95gZg96nvSmi4bHdSm0mV0IyhaaWdVhMgEi8oma53SrMTdEC7reu7T+Nv/3EZMcxQFwV
 JnxQ==
X-Gm-Message-State: APjAAAXUUeOJErD0LvEgIWTrpO5eKqTSKGeDeLgg6NFrhMVhdcbKoAlA
 nR04G/Yz4eIkPJMKn6W63pg=
X-Google-Smtp-Source: APXvYqzl9xVBK5tVB4brfCl3wCx/KY1AhgMnASNhuGFaPw+Hu5UPrOmG3gj5xYZHLy+UhgU9oGwz/Q==
X-Received: by 2002:a63:c5b:: with SMTP id 27mr13696567pgm.70.1558201138477;
 Sat, 18 May 2019 10:38:58 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id y16sm23283514pfo.133.2019.05.18.10.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 10:38:58 -0700 (PDT)
Date: Sat, 18 May 2019 23:08:52 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: imx: fix Unneeded variable: "ret". Return "0"
Message-ID: <20190518173852.GA1191@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_103859_542581_07BD81E8 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fix below warning reported by  coccichec

drivers/staging/media/imx/imx-media-capture.c:617:5-8: Unneeded
variable: "ret". Return "0" on line 630

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/media/imx/imx-media-capture.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 9430c83..b678857 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -614,7 +614,6 @@ static int capture_release(struct file *file)
 	struct capture_priv *priv = video_drvdata(file);
 	struct video_device *vfd = priv->vdev.vfd;
 	struct vb2_queue *vq = &priv->q;
-	int ret = 0;
 
 	mutex_lock(&priv->mutex);
 
@@ -627,7 +626,7 @@ static int capture_release(struct file *file)
 
 	v4l2_fh_release(file);
 	mutex_unlock(&priv->mutex);
-	return ret;
+	return 0;
 }
 
 static const struct v4l2_file_operations capture_fops = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
