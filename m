Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6651062D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 07:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbDMnl8UQAog6FTG6GrUSX5HXYCybjhFRkOhSygmFFg=; b=tAsK3Xc5pmENCH
	E5rzqqifkI5XjKfeAnwwVLGfTY2XNRCXEUuy3gm+NFWU261PBWMsDGyCNMDygRvlAvVwrrkT/vz8d
	Dgl/oIFndfGmdJFYA0rZjauY8zsbvmRqB+CO+Jw4N3TfB0iIcv7QKHSoSvI2BRy0HI6OWsU1/+wnh
	6/MVMbj80nHbPrlces4rgCh4FMh/47hxsWTrObYdMkuwISm14L7WWLd2zR1H8qscTAns2wSrF9E7W
	+f6FACLMBKBlBxZ0Yp17sBariAvLiB9CjYyIb6OyvLB8C4EgHKPlzPazFXg+twigpuh/uZIYnvQGK
	sPxktgYojW1pYdmRn9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY25Z-0004KF-JG; Fri, 22 Nov 2019 06:06:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY21b-0007py-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 06:02:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5439020718;
 Fri, 22 Nov 2019 06:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574402555;
 bh=wLBO30qA8tZlK3OT5pGv0t3ty/ImslmbiEW2j4YjAG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tfhlrSAyA+UXH6Uk0DN1dLHFLfAyrOgWBlrUMdxFptFJVPVXWRCKLfqVXZQWsNkmG
 0TESOZw2TE+PL7LSl7hJ3V72jPPd5JStTr/jgNeg9nXuRolTlDFlUyz+JJ3Z3syGva
 p+8Qo/obOB6Hurq2/uKicYuvnv/ehijmSjWkWbeU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 60/91] pwm: clps711x: Fix period calculation
Date: Fri, 22 Nov 2019 01:00:58 -0500
Message-Id: <20191122060129.4239-59-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122060129.4239-1-sashal@kernel.org>
References: <20191122060129.4239-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_220235_879000_F18F16A7 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-pwm@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Alexander Shiyan <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Shiyan <shc_work@mail.ru>

[ Upstream commit b0f17570b8203c22f139459c86cfbaa0311313ed ]

Commit e39c0df1be5a ("pwm: Introduce the pwm_args concept") has
changed the variable for the period for clps711x-pwm driver, so now
pwm_get/set_period() works with pwm->state.period variable instead
of pwm->args.period.
This patch changes the period variable in other places where it is used.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
Signed-off-by: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pwm/pwm-clps711x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
index 26ec24e457b12..7e16b7def0dcb 100644
--- a/drivers/pwm/pwm-clps711x.c
+++ b/drivers/pwm/pwm-clps711x.c
@@ -48,7 +48,7 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
 static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
 {
 	/* Duty cycle 0..15 max */
-	return DIV_ROUND_CLOSEST(v * 0xf, pwm_get_period(pwm));
+	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
 }
 
 static int clps711x_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
@@ -71,7 +71,7 @@ static int clps711x_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	struct clps711x_chip *priv = to_clps711x_chip(chip);
 	unsigned int duty;
 
-	if (period_ns != pwm_get_period(pwm))
+	if (period_ns != pwm->args.period)
 		return -EINVAL;
 
 	duty = clps711x_get_duty(pwm, duty_ns);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
