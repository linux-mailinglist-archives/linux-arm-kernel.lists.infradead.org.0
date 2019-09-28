Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DEEC0F26
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 03:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yi4egOBiPIe5jpC0lfNzrFY9jqHk1saFNpUYWXcag74=; b=GXU
	G5/P3L76ZGMSictuexDszfQwFwZ9A1davnUL3HljPx7XQ3w21X5zeLDqVoMCmG0lMCy2CJnJlLt6H
	tfxiuCicLicQGVVaTjqEPtgmPKAXWMCKyV6RH1Cxfo7baQleF++wgYMYJOK6tfHyRbS29mHiGsbnj
	6p0tdZbdSiffSLIHYA631h5Jp0aLAUgnA1dJCnSeJMCFE8H5y0BpzKGMBeZzHYIMlMGOBFobP8FQP
	qvY9CK+laBvtq3Zfx19lW+n5cTynZ39bU9Qft7iF3Jqnf4eIbEXlqX3O/bRDek3GQMH304d1W9GuO
	2gDaY6Wr9VpZE/qZXRPeQqTGG3eVnjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE1Xe-0007Qm-93; Sat, 28 Sep 2019 01:28:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE1XU-0007Q3-51
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 01:28:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 53134611D1; Sat, 28 Sep 2019 01:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569634122;
 bh=kbPZarCkYnlJWtdPyEyjjRJbhqhbOcPRYQvgulMnMvY=;
 h=From:To:Cc:Subject:Date:From;
 b=hdjZvkQZo2N+fUk7Sx+pYGkNYjzSyMvZT38pn3PYdm7pQAs0Z3qsvEyV44v7ScS/t
 Sif3OgTgCkQ0naYjj2QCwvY/UxLf4S7oRZzL9XuZxiuHqvAzfJKt3xhC9MaU3pcrjr
 RBtI32eHFqnm68rJEIs9TU9VHQGulDaJXNtUjcQc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jeykumar-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jsanka@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4D5DA60A60;
 Sat, 28 Sep 2019 01:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569634121;
 bh=kbPZarCkYnlJWtdPyEyjjRJbhqhbOcPRYQvgulMnMvY=;
 h=From:To:Cc:Subject:Date:From;
 b=ZXuRnuDCeN548AzE5Wzs5ogkd43oGCUNkvpy/bo8I7X1pOQsCewBHv/NRGmDl/8bg
 26XNsi/tdBUxPZBoFCPe9MKQAMsozB0+CCjNlGj2SSRpFY697HZEYnRPCEc/xpG+rl
 OWAse0U8VGHT5ZFU044ZavT1lLYK2WoGOgqiQySI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4D5DA60A60
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jsanka@codeaurora.org
From: Jeykumar Sankaran <jsanka@codeaurora.org>
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] Add framebuffer max width/height fields to drm_mode_config
Date: Fri, 27 Sep 2019 18:28:35 -0700
Message-Id: <1569634116-13819-1-git-send-email-jsanka@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_182848_211792_B178EAC2 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: Jeykumar Sankaran <jsanka@codeaurora.org>, jcrouse@codeaurora.org,
 seanpaul@chromium.org, robdclark@gmail.com, narmstrong@baylibre.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Below two discussion threads will provide the context behind this patch.

https://www.spinics.net/lists/dri-devel/msg229070.html
https://lore.kernel.org/linux-arm-msm/db26145b-3f64-a334-f698-76f972332881@baylibre.com/T/

Seperating out the core framework patch from vendor implementation.

Jeykumar Sankaran (1):
  drm: add fb max width/height fields to drm_mode_config

 drivers/gpu/drm/drm_framebuffer.c | 17 +++++++++++++----
 include/drm/drm_mode_config.h     |  3 +++
 2 files changed, 16 insertions(+), 4 deletions(-)

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
