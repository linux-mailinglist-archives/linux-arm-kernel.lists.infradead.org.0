Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759D11FDE4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYz5K90Zw/qkoHCEalQdU+vQcsqJnkd0uB0ieDnyXjU=; b=VRNOyq/91ojScu
	xeGk7JSEWPGYRBv6ODNRGBK8Pmx4eMsULrD1JvO83o2ujVRZpu/E/iBsDxWIm+1R7uEclVDFXb5ZT
	B3n2PfiMM735rjENZy1EnvrFX7O5CX2zRCmtA6KR+ey/z5AXNqJxiRqkyqh5uu/ora5m1pAEZFIWI
	hXYn+wlMVyB15RtK2BqNecQHiZ9Oybs0rEqD3+Cm+aeWjkJVEuI8sa+rEnPTyd5qVJnqpV92ONzUN
	XxDPjJDzIA/bjXdQp+PsimELuDSd5DxAC757oD8GkR33cm58iIt6NxAROUE22C75jJaZ9xIZoNIul
	U/FZ4lyzL1nCuoYWS6hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljPz-00025B-I2; Thu, 18 Jun 2020 01:32:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj8h-0003t3-N2
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:14:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C682221EB;
 Thu, 18 Jun 2020 01:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442887;
 bh=3cZhsds1xAGMTrCeTPwU+J8P0xv9FZcUGrImlkxCbp4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2Pw2TaYMepsbLO05ZlObXJ0jUIlT2u6PIXpoNXmhtaE+h0rVQ4T16dwtABoid8HxT
 Jyn1BqF8cSS+GqwwBgHINpwgrojB09MEJiagkLFWGKyZ+ERIj3WLbt6NmIXRWchxzh
 LfiojwoiF4FF7bW+8s3B3k6qn8FWjQuWELb7aqhg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 310/388] mailbox: imx: Fix return in
 imx_mu_scu_xlate()
Date: Wed, 17 Jun 2020 21:06:47 -0400
Message-Id: <20200618010805.600873-310-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181447_780106_85C69B76 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit 1b3a347b7d56aa637157da1b7df225071af1421f ]

This called from mbox_request_channel().  The caller is  expecting error
pointers and not NULL so this "return NULL;" will lead to an Oops.

Fixes: 0a67003b1985 ("mailbox: imx: add SCU MU support")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mailbox/imx-mailbox.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 7906624a731c..9d6f0217077b 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -374,7 +374,7 @@ static struct mbox_chan *imx_mu_scu_xlate(struct mbox_controller *mbox,
 		break;
 	default:
 		dev_err(mbox->dev, "Invalid chan type: %d\n", type);
-		return NULL;
+		return ERR_PTR(-EINVAL);
 	}
 
 	if (chan >= mbox->num_chans) {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
