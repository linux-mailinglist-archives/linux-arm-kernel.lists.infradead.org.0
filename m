Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67020C3351
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ydq0GHNiJ+tv41N9yCm0O2YYevZLyIscP7rOviHWKbI=; b=Xxs4ozuR7rpC8W
	fGwFFUThmFLsw6mOGFYHhAMFvQJv4vH20rGkwF1y9MxEgTNKfGkzxXhJmaX3cCrA0Fp+2e8P33Keb
	yYX4yr89Y7YkBLXo9JR2uWZchBTbT7xtqL8+hT/bKdvwYCjQ0d3vzcWAkhMFIPxPB2MxyURRqzsvE
	8a0Bp7A5Kq7J0rretHFAWaOMg2Ezhqv+o5TZ/T0fgdbo7UKvIEWEYhqElAxXTBTyUduQCd1065Lo9
	iWN6gocmZ8Hnmx1G0QNPuAee4hnYVVPJ/zbKuKMOwwalPzKaE+wLk9rEpYR88XcUG2SoKth/mGprd
	5xG3yYMTv41OhpRRXD6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGe7-0003ds-2L; Tue, 01 Oct 2019 11:48:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGdu-0003a2-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:48:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so2879659wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 04:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B6CrRdrsEtKyU90lmh1sN2x0rTtjsQMj1DEFBb5XXtg=;
 b=HjpPidoFe4pnFmZF/dYZhtHODIvto6KyeDN859wi3xglgE5+PqnQw0SQfISuoM9g7W
 qbFWZ485bAVlJ7kcgKdKKBd6vbc6wk6egckzJwMrcIp6hxzLf3dcaYN1UnWCOWKXEZSd
 vNB2iy/CvMayOPlfNsnRF+xo4/pTZQgTRsKcUspdsDci7McgnsKuGUv+ADYILRGwvmNA
 LoIwFvDmMtZtkXxyHl0cOMs68jQM0oJhV4UWQCJJzxunt0cLA0X4X+1G2uYHS0h7p66J
 T1/T8/A9ZF4umEWLOvuRVz7ncWEHn83h7Fhz0DrcQkbSwuDsiyG46UB43Eoi3MXNKAlc
 Gcdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B6CrRdrsEtKyU90lmh1sN2x0rTtjsQMj1DEFBb5XXtg=;
 b=INa1kt0WbujDA92djLJAtOLYl8VGZmHfxfg+62jQZ4bzrrlJFuv9FtWUzavHNZOzpq
 jpFcq6exKQDgxC7Oo3bU9+PNe+M7mHHLirgPGFAii5Rk4ERdhF9LTBm2c2azqKhpZ1dm
 1KnZxfxNm9rI37pzBUVbbTpsyDYXSW8BQD3azU3rl5k0nC444KEAdvpSzHS5lnwoR/oy
 Ng5IYtNuszkCkruXozsnoiACgBsA3NcgLbRTxrm/p/TK/yLK3o9kKMXvxWN8p88CCGPV
 ot/I6FTvqAMYd2p9nUmy5kSMXTbXlrjlfp0FzRP0R47GY1cpDLmBwcPelfFZfuDs7GCn
 ktkw==
X-Gm-Message-State: APjAAAUEftShWSa8HZsBaMm2zMtSTJ5f+dGhCGju17p581TDQ6r2zJnl
 jdOCBiEQe735uUAE2PU4EPAwjYeG
X-Google-Smtp-Source: APXvYqwejExR6A8VZNp+/3+Y9hfgJQhtwfm/JBKW9xwPgPbVnubkpt8AUt2mVwB3RUpXwLLRF0+xXg==
X-Received: by 2002:a1c:7418:: with SMTP id p24mr3203570wmc.132.1569930511937; 
 Tue, 01 Oct 2019 04:48:31 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id t6sm4595435wmf.8.2019.10.01.04.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 04:48:30 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] soc/tegra: pmc: Fix crashes for hierarchical interrupts
Date: Tue,  1 Oct 2019 13:48:29 +0200
Message-Id: <20191001114829.3385196-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044834_128957_956F0FAB 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: linux-tegra@vger.kernel.org, Bitan Biswas <bbiswas@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Interrupts that don't have an associated wake event or GPIO wake events
end up with an associate IRQ chip that is NULL and which causes IRQ code
to crash. This is because we don't implicitly set the parent IRQ chip by
allocating the interrupt at the parent. However, there really isn't a
corresponding interrupt at the parent, so we need to work around this by
setting the special no_irq_chip as the IRQ chip for these interrupts.

Fixes: 19906e6b1667 ("soc/tegra: pmc: Add wake event support")
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 9f9c1c677cf4..0447afa970f5 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -1899,6 +1899,20 @@ static int tegra_pmc_irq_alloc(struct irq_domain *domain, unsigned int virq,
 							    event->id,
 							    &pmc->irq, pmc);
 
+			/*
+			 * GPIOs don't have an equivalent interrupt in the
+			 * parent controller (GIC). However some code, such
+			 * as the one in irq_get_irqchip_state(), require a
+			 * valid IRQ chip to be set. Make sure that's the
+			 * case by passing NULL here, which will install a
+			 * dummy IRQ chip for the interrupt in the parent
+			 * domain.
+			 */
+			if (domain->parent)
+				irq_domain_set_hwirq_and_chip(domain->parent,
+							      virq, 0, NULL,
+							      NULL);
+
 			break;
 		}
 	}
@@ -1908,10 +1922,22 @@ static int tegra_pmc_irq_alloc(struct irq_domain *domain, unsigned int virq,
 	 * dummy hardware IRQ number. This is used in the ->irq_set_type()
 	 * and ->irq_set_wake() callbacks to return early for these IRQs.
 	 */
-	if (i == soc->num_wake_events)
+	if (i == soc->num_wake_events) {
 		err = irq_domain_set_hwirq_and_chip(domain, virq, ULONG_MAX,
 						    &pmc->irq, pmc);
 
+		/*
+		 * Interrupts without a wake event don't have a corresponding
+		 * interrupt in the parent controller (GIC). Pass NULL for the
+		 * chip here, which causes a dummy IRQ chip to be installed
+		 * for the interrupt in the parent domain, to make this
+		 * explicit.
+		 */
+		if (domain->parent)
+			irq_domain_set_hwirq_and_chip(domain->parent, virq, 0,
+						      NULL, NULL);
+	}
+
 	return err;
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
