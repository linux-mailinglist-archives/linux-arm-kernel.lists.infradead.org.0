Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363781A3F1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 05:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaE/9cdqMRZiIrWD4VK0TPRPssIOkyhxptQ5WhF9ue0=; b=CxIeiJr2RoUPCk
	nBIeYXE3XfIcUU8/PY+pA4jGEFMiGmQnvE1YHD0J6VSd9m2bV+/SmucnmgqpJfI5JO8P1md1Da+L8
	YmobQ8U9Vy/ohvbH3E3lQrc0W0i1y/OAxY5MgYHM7ybIOv5Aoit+pUN2lhaI1HQhM0eZePjh6GrES
	/YXbl2qtTJ7outlE3ycMXv3m5ZA6pfVy5jojzEZRRnG8vwJ3n4oiBgZpuzqi1eBmGTAzzaevZTWJD
	BpL5Tm0H2pba181/Vpw4mlAGe3RJoA2NtoTr782lV5nLoKGF/IV48oJdtOHBfjHBEy2nlWwHF2jOE
	knbTSKccB+9wR+ZePa/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkeT-0003Vu-58; Fri, 10 Apr 2020 03:48:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkdD-0002RX-TF
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 03:47:05 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 744B820B1F;
 Fri, 10 Apr 2020 03:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490423;
 bh=CImT4A8W+bDgMXzHhYQ9uztQmGjlbf3XrDJF5jnPrRQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nrk2dD4jqP1G10CuGIwISV8kPJlov8l256ihElSCxEUFMNbT+OK6XTY4Ss0MoHbNR
 Rhq3sqzliSEn53koaEI9gCuWokhDE0sTY1sel1Cg4crItMm3JhyBZR/aUaMu2p/ARD
 dL5uJeezjpz/Hw1ao99qeeth+sF1mSy1oT06G98E=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 22/68] media: imx: imx7_mipi_csis: Power off the
 source when stopping streaming
Date: Thu,  9 Apr 2020 23:45:47 -0400
Message-Id: <20200410034634.7731-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034634.7731-1-sashal@kernel.org>
References: <20200410034634.7731-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_204704_009659_0F9A393B 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Rui Miguel Silva <rmfrfs@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

[ Upstream commit 770cbf89f90b0663499dbb3f03aa81b3322757ec ]

The .s_stream() implementation incorrectly powers on the source when
stopping the stream. Power it off instead.

Fixes: 7807063b862b ("media: staging/imx7: add MIPI CSI-2 receiver subdev for i.MX7")
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 383abecb3bec0..0053e8b0b88e5 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -577,7 +577,7 @@ static int mipi_csis_s_stream(struct v4l2_subdev *mipi_sd, int enable)
 		state->flags |= ST_STREAMING;
 	} else {
 		v4l2_subdev_call(state->src_sd, video, s_stream, 0);
-		ret = v4l2_subdev_call(state->src_sd, core, s_power, 1);
+		ret = v4l2_subdev_call(state->src_sd, core, s_power, 0);
 		mipi_csis_stop_stream(state);
 		state->flags &= ~ST_STREAMING;
 		if (state->debug)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
