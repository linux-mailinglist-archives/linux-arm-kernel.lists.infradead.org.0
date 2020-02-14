Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC6A15E3C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:32:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMvFZ2Nf/3GK8wu6zOV1VVPk8FmxAe74RRZMxYw47sk=; b=s1WzCx5SO3hL9E
	6VJtMdD7DEonjP0doLxvIzxF7jOLoJ62vMVJl1dx7EaiXYCY3FGI9tJaR0DmC7qMxjMp1kS3KHyM6
	Q13kuUW3puAsyM+hA4GLOqNK0/pONlFeFYN/Q6WTKEsB2AYVfNQxzNLxUqbtsCxvktgl4aiWKrkt6
	V++jFf+fw0we2Lg38HXFLawdLc7OUFcGI/Pl51V6+8XDA6Ic8FOQD4rjrRZu/HrqxuSWtS/uNTuOd
	hLHF3k9eCRhiuP7xNnYNwMaLMN9QbUxvTdSqrEyJNCY/eSMuEvWGs5WgTYbcQ8U2vzEuOLjKb3TEU
	aIkTMZYEJGwzUrJaycQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dt9-0000lr-5G; Fri, 14 Feb 2020 16:32:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dVR-0007aO-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:07:55 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31445222C2;
 Fri, 14 Feb 2020 16:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696472;
 bh=tbsB6vHECRwHjZ/VQdlleAytqMHIOfGHbwngLBFASr0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=urp+jtuC4WnWTtoHHTb8XTZb/+Neun2983ESi3Cl88y05TWq02Ig3Qbva5DGQkVla
 sVNnlwwKTWWTmDGYBTNN3H94FG9Rdzd6FEJP2w6lOfJW2DrUeQWxmNTkV/3sqW04gc
 zMNSpjgpBF+jimtorse9eXJtnmuV2oLF6oj/RY0o=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 281/459] ARM: at91: pm: use SAM9X60 PMC's
 compatible
Date: Fri, 14 Feb 2020 10:58:51 -0500
Message-Id: <20200214160149.11681-281-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080753_570512_ACA53CB3 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

[ Upstream commit 6b9dfd986a81a999a27b6ed9dbe91203089c62dd ]

SAM9X60 PMC's has a different PMC. It was not integrated at the moment
commit 01c7031cfa73 ("ARM: at91: pm: initial PM support for SAM9X60")
was published.

Fixes: 01c7031cfa73 ("ARM: at91: pm: initial PM support for SAM9X60")
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Link: https://lore.kernel.org/r/1576062248-18514-2-git-send-email-claudiu.beznea@microchip.com
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-at91/pm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
index d5af6aedc02c4..03250768340e4 100644
--- a/arch/arm/mach-at91/pm.c
+++ b/arch/arm/mach-at91/pm.c
@@ -751,6 +751,7 @@ static const struct of_device_id atmel_pmc_ids[] __initconst = {
 	{ .compatible = "atmel,sama5d3-pmc", .data = &pmc_infos[1] },
 	{ .compatible = "atmel,sama5d4-pmc", .data = &pmc_infos[1] },
 	{ .compatible = "atmel,sama5d2-pmc", .data = &pmc_infos[1] },
+	{ .compatible = "microchip,sam9x60-pmc", .data = &pmc_infos[1] },
 	{ /* sentinel */ },
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
