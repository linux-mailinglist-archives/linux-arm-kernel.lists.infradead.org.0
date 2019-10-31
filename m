Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE709EB944
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6EBPyRs+CEtNndFczT0oLoFLhSARKH7taeZLOCJutuE=; b=t+tU1vrewoxxoP2oNFkgJ6qb9M
	8i4K3oAFHHZgzBM5TRfi9LOaY2ibTqe8dJlfre83HznOHs648NsT+1rwi7NJ7oWayPQIahqbUxuWU
	JVu+iznmd2NuXho3/DTfcgMN5JqIduAe49IYS45qbysXg7zEVqFG1A8iEbuQc0k+xI3I+mCiUkVqo
	KW9WzPPm0hO+x/UxeUTgSsW6wSieXMGq5Rv9mLQuPt76rxdTjbguHdKIkZXcoGG+zIKHMCN21QjQX
	D+kZnrr4Gh02AqqecFNoWAXHaUMGi3KQYr3nPV0rToTfBGHa/QmyaxeBmK3DKLQbHXPgZgmKF/Y3Y
	MCraaz+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIJY-0003NG-9X; Thu, 31 Oct 2019 21:49:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIIs-0002zP-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:48:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id v9so7877509wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 14:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5uFgNaQscOS3J7biXheGbSey4ELRTdn8KbZYbK8731c=;
 b=rnAhf9IcenrlT0/sCny2Wmq3Q1I6xcfKIik4VJKor84zfXkeZjV0i2cQzbgX9xp/lX
 CE64cnZZ6V8n727mevZS5B6H2sRRXpDnpmJu5LPMbrE35VJF+HM+NutngIBYea/EJI8y
 eGlaWecSbuylY0J6MuCeW6MJTuXWcCnzFkfbpm/pktfBZWtTbGLQmtaFu/jQANr1iwW2
 i7TIVQuudGtoPIhsoDNTcZb507LWTsjkmZyLBkFGVe+je3F9Es9usI7PUo/Zm8a3flmE
 KoZux/Pla/dAoI73HB6I9g/mlBrJbBBYOawUenvcbgWYV+2MIQ9aIq6+xQFS9KVFUit6
 yE+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5uFgNaQscOS3J7biXheGbSey4ELRTdn8KbZYbK8731c=;
 b=uJ/jmcpW6/1S9m30w8yD4ThyILs8cglM0McDHfSDZwe24yXnOiS9cxwisgXyuMMhpu
 yqOi7R1CIA+7B2eL7Inr/BN6SsfQ1VcgbcaZB9TVS4vFs7nNIaWr+FaQOPu4u0uSiJLF
 7hqn92DhExK2425QjzNcQ0Lkcl8YSREgoLu1ld9GpVpbf5zi0Bx1fFiJ/oeA6oE7JEmw
 b8/cdget94vTIko524Nt1e6btCEtgEASiWGeO3O0Zg3kJ4nfTNeIa4KHsiBRurCmBNGr
 ST6MSSWIFRzg4FtV1WCj93aZRLd3rI4VILQ3JRcRJ/985ECmHCX9fLMVvJAMmIvym/vy
 qZYg==
X-Gm-Message-State: APjAAAVVAIXcBocmoR61SEJnANWIOtk6FtkGdYy/ymMacwvsAEQGuiPI
 EC+5+4HOPYEgTNa0Fnt6x/0yLCvS
X-Google-Smtp-Source: APXvYqzWe3btYgsNeCFwdVrMe+UNfJD/nil/R+ovtC1wJ4uWr3FiXtG/rUUVnAmwO3Nl76ZJ/Gx24w==
X-Received: by 2002:adf:e64f:: with SMTP id b15mr7212951wrn.372.1572558504419; 
 Thu, 31 Oct 2019 14:48:24 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g184sm5813674wma.8.2019.10.31.14.48.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 14:48:23 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] arm64: Brahma-B53 is SSB and spectre v2 safe
Date: Thu, 31 Oct 2019 14:47:24 -0700
Message-Id: <20191031214725.1491-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031214725.1491-1-f.fainelli@gmail.com>
References: <20191031214725.1491-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_144826_649358_3966FB89 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Qian Cai <cai@lca.pw>,
 Hanjun Guo <guohanjun@huawei.com>, Doug Berger <opendmb@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Brahma-B53 CPU (all versions) to the whitelists of CPUs for the
SSB and spectre v2 mitigations.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/kernel/cpu_errata.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index c065dd48d661..9b1ba1f489ac 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -489,6 +489,7 @@ static const struct midr_range arm64_ssb_cpus[] = {
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
+	MIDR_ALL_VERSIONS(MIDR_BRAHMA_B53),
 	{},
 };
 
@@ -573,6 +574,7 @@ static const struct midr_range spectre_v2_safe_list[] = {
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
+	MIDR_ALL_VERSIONS(MIDR_BRAHMA_B53),
 	{ /* sentinel */ }
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
