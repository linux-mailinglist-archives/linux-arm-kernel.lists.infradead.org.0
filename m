Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28567A1912
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmfYE9sZafOjZrnyAxGG7S4F1OC3FydkSMq2nG9Q6c4=; b=SpC6LUpS3/vnmf
	UbZ2OjZ3LOFzYMea/z3EfPzx0EzFmAYMQptIZt9pCirFpxSEMdM8gR7BZb7QsEGf1E4LvLWLIMW6H
	sc1iZuUBpeWpOy0pp5s5qgJZ4Ipa/8z+g0rzMQe2R5bj8TCCWc6QnFhXNPFox6sBJT+BTBo/y8KGx
	BaFXEqB+0gz3dfAa92E+FPD4IJjR5JDudcs9/6xTunwkKuz2TG8ViGwEBkZFLifZ0rxvSQYGAKWMp
	RMLQMaI8k8CB8wh/t165qDUA5HZO01ZYrXdA+nERegl6q1OxdIErO+pO+zm+TMnmkS6UaclYBFaFG
	4K7kDgatExxyswPERTRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Inx-0003kX-5N; Thu, 29 Aug 2019 11:41:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiQ-0006bC-Pg
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id o3so1428685plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j1PYP8TRl6+XUUI1RLnfOfH8okdoaEeO+GZk5UMu4vo=;
 b=ip6B9wM3ozT5CT1rKsg2Sx1YA1l7zbcAgXEfTHR261lT39mZNG5TpiKTz9bDHVjWF/
 MhPxnm5U803S8RYlcg+msMGad2IdyLt5YMVzPJ289jnrjReXJym3hbxs3Q0WhVuK/qtm
 /DwZ4q8yg+0JBX18qJEvbeaM40xU4/tbRRruNn7a7pLOcd8TEP2pZ9DdfE5rwE7u9CI2
 CBVPFXZAPY9xmM13w3m6rRpK0LlCV0OBWY2x4d0MsCYxX3gK13I52wFCfVKnnllBRB8R
 bV1M+7Sn8TJmVTh920gC5luu4Ixg8dZJjKZaEYg5xbQ2FB4N3QmIuViy85Jy8FYMpCzW
 Frkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j1PYP8TRl6+XUUI1RLnfOfH8okdoaEeO+GZk5UMu4vo=;
 b=lt7LPLxJpfJP2rrzVVwEzyNug4gX5BZlrXb5hZklHySOzLB+o24ow0Q31pbgRb5U7w
 i1TPGv4KDXvxEYGO1SlAS1Fok74Ivc6TD5NSHNlGPW0cDhM0LqKAK8haLKYnJTTSp6R0
 BwmzWJr3Q3ZK9gao/A1j3Y0dWt0lckp/+3d6yXxU3EN3Gzxq9xMfGe0jl6BMJsTLAKzk
 W4TWB/RAk5SKIcby+EtUYd9xyr7GJ9PwYwR1q4qL87mHSaSvzyUcTca5iFceOsitMowA
 OtWDItjavFInpQyp/15aoWfA8yNjkGH5bQgLeKO/jaMBoHJsK1vZWbPict5GHc3lkZhn
 BDpg==
X-Gm-Message-State: APjAAAUN8s/zhYfwUeCGb7ZsKe+FGHp7udhWSXaPcJI9B76IRqQBOcB7
 /Rb3K2qUHa1LKf1OBw8OzEQ9wQ==
X-Google-Smtp-Source: APXvYqwuPHsKKVQRD+tHwC8rwaqwFTzSbBajVIUNajXxIz6vJIkjabi8x87nDdU3W5m8zTUhPNz7fg==
X-Received: by 2002:a17:902:2bc7:: with SMTP id
 l65mr8972172plb.119.1567078546059; 
 Thu, 29 Aug 2019 04:35:46 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id j11sm2356521pjb.11.2019.08.29.04.35.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:45 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 20/44] arm64: Run enable method for errata work
 arounds on late CPUs
Date: Thu, 29 Aug 2019 17:04:05 +0530
Message-Id: <0022a5059adb91ea87175fb215ddd19440bed555.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043546_928267_63C83B29 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

commit 55b35d070c2534dfb714b883f3c3ae05d02032da upstream.

When a CPU is brought up after we have finalised the system
wide capabilities (i.e, features and errata), we make sure the
new CPU doesn't need a new errata work around which has not been
detected already. However we don't run enable() method on the new
CPU for the errata work arounds already detected. This could
cause the new CPU running without potential work arounds.
It is upto the "enable()" method to decide if this CPU should
do something about the errata.

Fixes: commit 6a6efbb45b7d95c84 ("arm64: Verify CPU errata work arounds on hotplugged CPU")
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Dave Martin <dave.martin@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index d9f095439011..047f1da59cb1 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -125,15 +125,18 @@ void verify_local_cpu_errata(void)
 {
 	const struct arm64_cpu_capabilities *caps = arm64_errata;
 
-	for (; caps->matches; caps++)
-		if (!cpus_have_cap(caps->capability) &&
-			caps->matches(caps, SCOPE_LOCAL_CPU)) {
+	for (; caps->matches; caps++) {
+		if (cpus_have_cap(caps->capability)) {
+			if (caps->enable)
+				caps->enable((void *)caps);
+		} else if (caps->matches(caps, SCOPE_LOCAL_CPU)) {
 			pr_crit("CPU%d: Requires work around for %s, not detected"
 					" at boot time\n",
 				smp_processor_id(),
 				caps->desc ? : "an erratum");
 			cpu_die_early();
 		}
+	}
 }
 
 void check_local_cpu_errata(void)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
