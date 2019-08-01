Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEE27D71F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omxFKkPj3yeX66G+BQ9myurZnQJtPMEODMip6b24S9U=; b=fSDHWaNFB1W7UX
	6bPi7omHvRi2h32sHhcv+v+MbnDATf6CanR6GyyJU37B3gnKfrVLtDogcOJ8D8Cf4KjeBgfnm8Vkm
	o0Inz3kiYXGjw6A1CgUY6/U7WH/xxgbndZ3Ynk8GaATdP/eAmjXHH8u5w0/9ePiSMpOH/H9AuL3g3
	yq1ciweubY5tiSrLZMwJ9xyIxdYB1f6I3snzSBwGB0eRxWuxfBPac9tu3i9vC9XYHfX9CsSkJcHHM
	kpE6ar+XC4TSESole4GnSFSGda8wyUELhTHMXXWEcgZf6IaTkN3DHHnMT9VLmWnXjN+4fcJL3gjN7
	Mz+PuoPvhvOW7SaMi4AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Jv-0000dN-B5; Thu, 01 Aug 2019 08:20:19 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6JK-0000Ai-6Q
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:19:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so33715234pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FDb8snX7fHtHRXPBtLwcic7/q7BlhqslXapsBvvT9m4=;
 b=lj9Gf1glakTXRPzaABcp+dSTirE8tmaZ6Td74cA3BogQQOFnDfrZx9oEj0Hnu8zmf7
 I54TfGtBNyKO+fzt/7SB7xyYp1p4K8QLFUWbHq2Go+7iSwTcEIBwjplWtA/b6ot5RZGD
 7Ejsf7yCr1FZcsZOTEXCXfaLdFA2Ee/138F9K3VmN6GopU0+0ZREjPK+4GNwcUa4QIpo
 n0qcmsR2ExwcIsWajm8cidxMF4XetBAN/apkVA+G1DBoLILahesp6c9blZQkIM3Azh4S
 2LRU0HSJJAZfiApfsG1OijZOdJzf2a4NKzlEumfazVW8XkjdyZFVaHxoXrZvSRpZ3mvp
 eSlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FDb8snX7fHtHRXPBtLwcic7/q7BlhqslXapsBvvT9m4=;
 b=EgAI2OOVYP+RQ5xMm5ENmgwAJ4B91qBShbkvv6Xpc7QgLejiXSR4hKB8eKhFE7H6q8
 ifpYc8XATL4HXvn75NbgVxIDmdlnrDl8vfRvidO6QKm05ygbqztZ4FmhPUwwkx7IQyF/
 9dOyTxS6ywISjo+LcDrRYJkHYVxOuJLTowKeQtUsfrykmVwRPq7HWkj4OutwMWdt5Y7i
 hF4HaGAYJLwUUhmMo4wyxqH8GY5EsiOjrZht22fry81tKIIevfuIiRaKlMGreDW+n5NX
 c4xR/dsAScH5J6qcwV6UOLyY1qRCb7HUGWOOs/fsMpqMFO0AZnhYMu103Z1DAa6kjtGI
 vv+A==
X-Gm-Message-State: APjAAAXRDfXJ1JsvYrBpnxtiY00+S7wHW2FZkUSDP5fXi94L79oqbA9L
 ZqUMo3qWOVDYKB+KFnBtpfQR3w==
X-Google-Smtp-Source: APXvYqz75WheTZoQVD/460prqttSQRePB4YDUm2PEp53etTwQK58Z/AF5zDWQURXBRL/9/WSyqVsVg==
X-Received: by 2002:a62:750c:: with SMTP id q12mr53419702pfc.59.1564647581009; 
 Thu, 01 Aug 2019 01:19:41 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u1sm67243723pgi.28.2019.08.01.01.19.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:40 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 02/47] arm/arm64: KVM: Advertise SMCCC v1.1
Date: Thu,  1 Aug 2019 13:45:46 +0530
Message-Id: <9f53c355f58717a810f74b72ab6982d723fb621c.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011942_291751_F70A55D6 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit 09e6be12effdb33bf7210c8867bbd213b66a499e upstream.

The new SMC Calling Convention (v1.1) allows for a reduced overhead
when calling into the firmware, and provides a new feature discovery
mechanism.

Make it visible to KVM guests.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Viresh: Picked only arm-smccc.h changes ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 611d10580340..da9f3916f9a9 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -60,6 +60,19 @@
 #define ARM_SMCCC_OWNER_TRUSTED_OS	50
 #define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
 
+#define ARM_SMCCC_VERSION_1_0		0x10000
+#define ARM_SMCCC_VERSION_1_1		0x10001
+
+#define ARM_SMCCC_VERSION_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0)
+
+#define ARM_SMCCC_ARCH_FEATURES_FUNC_ID					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 1)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
