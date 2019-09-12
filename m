Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7D3B0881
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 08:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZGXS+n83oarWNReJABAOOy+gEVoTDsYcKtTYMitgv0=; b=HUXUo4eBomnNi9
	WzNkuxPmHcx6yARHIFWLV0wNRuk3nv2FgcH87uU8cioy/Gd0MwCKLp4VdFRawivlPjI9M0c0r6L71
	T5e3nVgjBcf6pAp6C/VXpCoVVIiY1BGf3iU9+Cz/6zt5WEgmcnNvkkB7EXo0wrq2ftuKF4J+Na47y
	AIDe42YqxtQ6SEs8AkF+y7Gb6k2dX1LFJMTPFm0Q1vMCH2PROBd91XPT4MZUds1Uoy85VqOzEPK1/
	7Z9anKOxmgo07Siocr99rKX2c/wtpRzbLBy2gt+Ii4KwGlM5Lytd818LPFWZQQKquv1z9qDaZDZhH
	0tE6/+HAUDw41ysX2GHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8I94-0001Rt-S0; Thu, 12 Sep 2019 05:59:54 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8I8q-0001Qq-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 05:59:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so15232661pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 22:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K2wlRR3w/KTNdVqCYnrEwvs7sg2WubrsMP6gUzcCK3w=;
 b=a1izBfJNPh0xpl62rBUom1TVz4AD5siG6EraiJHLvL4gUGp0cW8alx2ORZ9jzKbGFX
 xWVqVXev/nHzAR9H/cEc2LKR9JLK9zWH6tIwAT1lb2tISj+ZgqjofZOR/0iNeBECZ+BS
 ISy/kii4aozfEQv4ehzP1Rh7lrkusxFuiyJiIHyoj0SKN/QmGlgCB2U1T/hLXT+RwfrE
 OjtbsEXNz20nDjM751kbB4MqoXEIxqUq9mykMCgRPGxRnkJkL0PwVvQIHk1sCR/Sg/iX
 26r3FUpGtVGk0UXhPg5W9g5oLCXS8RwCvpYAKtspZr+l8KYQFGoiKt+yEy4nJVAuVrfd
 UMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K2wlRR3w/KTNdVqCYnrEwvs7sg2WubrsMP6gUzcCK3w=;
 b=qHUJ8mTMGftbUWdVuTIoCkNLgZmDbrJxo/tvlv1XKLNTJK0f/TivvWa/s1Iq0LtlmK
 BaftjGZXsV6i6Zzf55ZPQ7vUHS2BRo67rYUGSVDx3y9q7hiHuvyezKpUBTPyKCO98t2W
 7+6yhApGqp2ef4ehHk4aOMEO1DrQB0hCUvJxGUQMsUhe3lU8lHYZKQBhuTx4JB0S4vmJ
 e6ozvrr43WCP+fYQkqFNAvhwxvQOEt28ONPKulrfLRFVchAO3wdGyqiZa5e2w5Fu0f/R
 vI96YG/mfxOsEoxpSgkb3YgZDorBshvJAp8yAKtNV+BF4YjZDl5LL/sDY1Zs4t8gp6k9
 M+jg==
X-Gm-Message-State: APjAAAW8NQ1uBPxqO91aRnSfwjizu1xDZRPvI5hixXNXS2yoTdOOKP8o
 Rz0OUhn87HXvG8s8XHQQKPP9hw==
X-Google-Smtp-Source: APXvYqxhrvEMXCYdoVnQe8x2WLbfUA2cbM+KZMZ+EXo6BWAKSNzbpi4c8Q5F6ZhyyyGKEBV5ult3JQ==
X-Received: by 2002:aa7:9a48:: with SMTP id x8mr45589514pfj.201.1568267980014; 
 Wed, 11 Sep 2019 22:59:40 -0700 (PDT)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id x9sm11590512pje.27.2019.09.11.22.59.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 22:59:39 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH 1/3] libfdt: define UINT32_MAX in libfdt_env.h
Date: Thu, 12 Sep 2019 15:01:48 +0900
Message-Id: <20190912060150.10818-2-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912060150.10818-1-takahiro.akashi@linaro.org>
References: <20190912060150.10818-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225940_625672_4CCC3251 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of kexec_file_load-based kdump for arm64,
fdt_appendprop_addrrange() will be used, but fdt_addresses.c
will fail to compile due to missing UINT32_MAX.

So just define it in libfdt_env.h.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
---
 include/linux/libfdt_env.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index edb0f0c30904..9ca00f11d9b1 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -3,6 +3,7 @@
 #define LIBFDT_ENV_H
 
 #include <linux/kernel.h>	/* For INT_MAX */
+#include <linux/limits.h>	/* For UINT32_MAX */
 #include <linux/string.h>
 
 #include <asm/byteorder.h>
@@ -11,6 +12,8 @@ typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
 
+#define UINT32_MAX U32_MAX
+
 #define fdt32_to_cpu(x) be32_to_cpu(x)
 #define cpu_to_fdt32(x) cpu_to_be32(x)
 #define fdt64_to_cpu(x) be64_to_cpu(x)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
