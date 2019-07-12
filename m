Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1FB66693
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbGw2Z0SAnNn5mN3/FzeLpCQGz32aKJ/L+1xY+rI7a4=; b=NnMNOiCU/2fACf
	DualsP1yKrSByfImIDsdpxGIyO0arGELV66pLV6/CyOs+9JK6YouNPhr3B4q9658x6ojMoxBN/V0g
	Jx/SWcVV/4qnwmYAQl8eA3jwOWgZJ6B4DVM6e/FB4A8djr1Iv+aGnPei1wG0HOLe3d9cVB23ccwS/
	D3NwWnjwRyoyg42ukvkp3Q0nzAGOWdgYV7RzFMDdo066BCmgnnYIibjE3y6KJc/NUkP1hrFyqdnTX
	hPpz7KQOV6q2VHidKKGX3/7JTG3dg/rBsRMWlsWPQM+0Brwl/9tQQxJgxmMVsGXTbjfa6khcGahNz
	68wD1NCU94ci07cO2BSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloNS-0006Ms-M3; Fri, 12 Jul 2019 05:45:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8k-0002gA-EB
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so4003768pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z7GSqiJ6aBNFVvBBcZiH2v3S1Pbs9vo106t8SFNGIe4=;
 b=tcAbB1XCe4vsg0irqnOIM6f7OdPoVlA+nE9DQ3iCELNXazxdKNTX7JqL6YIuNOyzqp
 1gZ0aRWd5itgdDqxNwelzN/3pYqDQ3wm++Lq+c/1GsBgxY+xL97+7R3Dv60KKat1CnmZ
 w+TDTAUdJrCwdEvHHImQh8zsvtQKROHmkviw4P8RSxG8EEK/gtU6buhHkmAvFpf0feFs
 tYltMKt7PUWT3FXC4X0+Ax7SMaZeuaVfPBXvw3yaXl4A/t6jzB/68xxT9lBHbRBWPKWS
 wqnaBGkmWANvWl1F2Jrd5SBRnzP5sywS35J9ObCnqvFWnZDPNVVbvFUyUdKONubvfb8s
 HPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z7GSqiJ6aBNFVvBBcZiH2v3S1Pbs9vo106t8SFNGIe4=;
 b=I2kZO1ayVln1Z9beW+6papuJgrxT27ZlPV5eHdI1zWiTOHgKq1H73HAS7ZO1jwVh5I
 52fveQuvU7uWtUBNXK0LgRwO92x2PJXQv2dpCHQdTgKTsMc1Ge/PYlAig+WhCK5YsX+p
 KfW/Dn0xAVArIW5mjTn3oywVGiQmAKTBDcm9xmg8JuUdmjXPBc+bFWPmq8R/unUw5gcC
 Hxm/rZYDZqhmGON0HN/DzkcVmc6ZhQVQAVysA7IF+DjEw/Zb59eVSpmD9k1AwbTY41hF
 H1okGvkSbbcfLh8frCuhQnhamt7xjeppT55kpEOJiYdsGvL7stz6f27PDll0DsL5u7pB
 FjXQ==
X-Gm-Message-State: APjAAAVAyWcOM20Mpj7pABUW4/c63dXGFIxqFjrp9TSZ7rk/hogUk42G
 jL621STPeno+2898vYHibdrpfg==
X-Google-Smtp-Source: APXvYqzfua/WaSi2v/9NaYC4vsYdyiPDgu+cEIj0uEmriPTMu+vUpayzFNtV/AvRJG2dFnn9SZy1yA==
X-Received: by 2002:a65:55c9:: with SMTP id k9mr8788259pgs.142.1562909437702; 
 Thu, 11 Jul 2019 22:30:37 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id m4sm9840773pgs.71.2019.07.11.22.30.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:37 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 36/43] arm64: KVM: Report SMCCC_ARCH_WORKAROUND_1 BP
 hardening support
Date: Fri, 12 Jul 2019 10:58:24 +0530
Message-Id: <7dd90325604da1ca7d424aeff0cd86ee3c18fdff.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223038_788262_C06D9B62 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit 6167ec5c9145cdf493722dfd80a5d48bafc4a18a upstream.

A new feature of SMCCC 1.1 is that it offers firmware-based CPU
workarounds. In particular, SMCCC_ARCH_WORKAROUND_1 provides
BP hardening for CVE-2017-5715.

If the host has some mitigation for this issue, report that
we deal with it using SMCCC_ARCH_WORKAROUND_1, as we apply the
host workaround on every guest exit.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Viresh: Picked on only arm-smccc.h changes ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index da9f3916f9a9..1f02e4045a9e 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -73,6 +73,11 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 1)
 
+#define ARM_SMCCC_ARCH_WORKAROUND_1					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0x8000)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
