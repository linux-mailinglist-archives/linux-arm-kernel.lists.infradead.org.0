Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB7010B550
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KIHgu5N6JFrfxDz+d3oo88jUPqUE6dAWgRa6jofmNAw=; b=rXD
	auGzkQKuQpYADtp4u6MP6W01bJZDJC1mHWT3+dj0zWEzo9n5gqv2prt/a6+sBfVIPg4A/HJnFiJB+
	rE6T54O1eV9XwNQuOuBzaw43rGG+1u5clTjVH4psqJ3cOjW2VqdETexDxX66LYOULnbOHKLja8GRr
	4UyjlbBV+I0a+x1KgT290oKt2gdadae1FIiaJoBvZQCzwr/0yUGsNiN6Bu1VgayuEtF2S2LgpJctv
	Pt3Ea2TqF65cnzSz1goOh+Ic0ayki6ksLBRmrhQYwv9muOILG2Hb6jDzEz0AsurQhiy9QpuChAKwc
	6ZTJ4JTOmXqg1waX77CMVjS/xqRjHYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1mO-0005JJ-13; Wed, 27 Nov 2019 18:11:08 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1m6-0005Bx-4D
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:10:53 +0000
Received: by mail-oi1-x244.google.com with SMTP id d22so20923914oic.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 10:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=uxEj17EH5QDpY8K7ZHM7212FFpoAkQlxU7CFuDOGP+Y=;
 b=rUpl9QYmegwYqCdnbUVyixbewmxfJT1zOxnT5af36XES30mvqACGz5wpOUYuF1fxhS
 E/FNymtgdtEDOAyBMSHlLzdSDOEYhO1vn4oYDmbOpTqlXWsQSO7g26S4Tw3swqCIoGN2
 xDHjnc+oXgPFw5hrvi8YefHvT8aXs3HbsMtC3IBQszhL+A0M5K7F42jNC890p+hHhixZ
 ZWZ9wRaMcCJSqiEx7CF8BaRyU/HpaxVkrYgY3o+p0UzLYo8hwNMDJ2R32NB3GYNanEb9
 LS36OnFBi69j5cblsw8Ull2HUmXmvJLYU4jOCoo9GWWuVz6aYGmygh8if1++215ofyiN
 ATPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=uxEj17EH5QDpY8K7ZHM7212FFpoAkQlxU7CFuDOGP+Y=;
 b=hbqhoka4LcfZHm1I/ia4JFF0xs9Fw95JSAWbGhjFuxm+u71gLybC4C92UMBtgDNGYN
 d5WmDGWW9jsYfW88Eq17aAhWV8ditKzE62SoJIu14nN9CTV2Q4X9ApEiwum7T/XTuseh
 htYrUDnCoaOEA854iqO2YUAhtU8bUc0CNf8e3i8BQuNwi8d53rEZtmTCgMuaRwzt82zo
 ctHj5MYSvP3zBpi2nrNUjZPpWBoPKHD/+DvPWPQu+FNholaATLke2D9abmKuRoyTQUjB
 krEGWlEmVSkj7NsspzndonA02qDY5TI5A9IBqzRAM0oR/GVeOvxinfJYQPWtHtp1L59V
 0z3A==
X-Gm-Message-State: APjAAAU6Ce5D+jM63cjL3ja7qD4JaD0P/GoHQBVA12ELwd+o6PN6ftsf
 QMgqi0BLqqRyQZlh3GS7Eg==
X-Google-Smtp-Source: APXvYqxteMLih00Yd5/isxRTuteps1PyGruEVoLHwBSMJ8pX9NyVFAVfwKnOws5vahq/ZlcTg/XTpw==
X-Received: by 2002:a05:6808:d8:: with SMTP id
 t24mr5244728oic.36.1574878248504; 
 Wed, 27 Nov 2019 10:10:48 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id r13sm5114421otp.54.2019.11.27.10.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:10:47 -0800 (PST)
Received: from t560.minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPA id 15733180046;
 Wed, 27 Nov 2019 18:10:47 +0000 (UTC)
From: minyard@acm.org
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Fix compile error with KVM and !HARDEN_BRANCH_PREDICTOR
Date: Wed, 27 Nov 2019 12:10:40 -0600
Message-Id: <20191127181040.20012-1-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_101050_190552_4AE897A8 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tcminyard[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Corey Minyard <cminyard@mvista.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andre Przywara <andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Corey Minyard <cminyard@mvista.com>

When compiling with KVM enabled and without HARDEN_BRANCH_PREDICTOR,
the following compile error happens:

arch/arm64/kernel/cpu_errata.c:92:23:
error: '__bp_harden_hyp_vecs_start' undeclared (first use in this function);
did you mean 'hyp_vecs_start'?
  void *dst = lm_alias(__bp_harden_hyp_vecs_start + slot * SZ_2K);

Some ifdefs were removed by 3e91f3eacc91d9 "arm64: Always enable
spectre-v2 vulnerability detection" for CONFIG_HARDEN_BRANCH_PREDICTOR,
but __bp_harden_hyp_vecs_start is only defined if that config is
enabled.

Add CONFIG_HARDEN_BRANCH_PREDICTOR to the #if that has CONFIG_KVM,
It looks like you need both of those for that code to be valid.

Fixes: 3e91f3eacc91d9 "arm64: Always enable spectre-v2 vulnerability detection"
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
This is for 4.14, I'm not sure if it is needed for other kernels.

It is not needed in master because a new config item was added,
CONFIG_KVM_INDIRECT_VECTORS, that depends on KVM and
HARDEN_BRANCH_PREDICTOR being configured.  I looked at pulling the
patches that add the required changes, and they make a lot of
changes.  This change is the simple fix, but I'm not sure if we want to
pull all those other changes into 4.14 and whatever other kernels
are required.

 arch/arm64/kernel/cpu_errata.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 7d15f4cb6393..e565ec5e072f 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -82,7 +82,7 @@ cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *__unused)
 
 DEFINE_PER_CPU_READ_MOSTLY(struct bp_hardening_data, bp_hardening_data);
 
-#ifdef CONFIG_KVM
+#if defined(CONFIG_KVM) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
 extern char __smccc_workaround_1_smc_start[];
 extern char __smccc_workaround_1_smc_end[];
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
