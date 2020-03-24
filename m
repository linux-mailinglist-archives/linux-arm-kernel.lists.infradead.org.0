Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1F9191B0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reWOJIvKxexJOEjV2NCXcwGR6DBw/qMcwrQC3DIrRZ8=; b=Y/89HkBHkVXJeK
	xeW4b+kGW8UTILH8DiKXnqTxD52nb0cY1itrYxSZ5uJJLUOVw51Nuyoi/dxD80CXXjXb5dgT1LRQD
	ME941yG5HFaGWW3IPPJ1/5Z0eFZEs1S8q5E0KcUOIpi5lp0Ck1VEr4jP+co4iYQUFjV6p9aqp5Ex8
	2HF6vnxG1neoebWkzyt3lRG52rfnk3m4ruHcyroNSersuxrJWF+AFkVed4qD0HoWRnMDB6nHG5c5v
	f5+IfZICwKNNZL3qsG05Rfkqdu4aRuW/BqAmXi3tGRIEnNClIvURPyINg1/ddaJIQjW8Xj1f8Dhvg
	lBOO4O6WyhNpa/BcAWdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGqEF-0001xX-3I; Tue, 24 Mar 2020 20:32:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGqE4-0001vd-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:32:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id h11so7886724plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 13:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QtcXhojXdvVAaDeWfB/KlcDfMVh9eKi/T1lC0sMYq8g=;
 b=Vpxmpa7ys0bod0SNGpU9HyY796q3xE/M3orNp8yw116/0ZyHjlZKj+WNR92bTLQ7N7
 mX5GB7DrOSUiWFgL9zFZ9VSSzsyJoLgWbC4sD0apXV2JjP55GWJ/SQRkk+tLe9BdjdAA
 RdWbcxQUkap+TOsmpSxq5+j6/AOKEweKlqbt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QtcXhojXdvVAaDeWfB/KlcDfMVh9eKi/T1lC0sMYq8g=;
 b=nf0EwuD1lKr9CS4FK4LXuEowuBI+NueXWElwWtI6UVZjmjRD6+kcdQ0BxrH4OZfVB+
 rZEc4hQrAvlrrvCFTlvyFMhjUCZSDeXUeRVDjlmzasyjo75DVeDqJEpjzI+DT1WXD2e5
 xqp3tBaTbYLU3iNCgW+kdhgoOPTPn/+BRMLkkTtpCgDQNuNKD6spDa/HIw/uPI9yFy22
 FCwtKWNYq8qTUNrO1Itl/OiHA2kjk5ungFmdjJzTzNuALt2C2eGPGGpPYQuvtdWBDas1
 A5Y6d2Vbb4q/yWr8v9bYgn+UgToGQpwtDzTymoVmF7sALiexWxjh3sBneZ9Y9MkzEl9a
 Lk7w==
X-Gm-Message-State: ANhLgQ23J5N46IHkqHeuPJLr+G9/dpzyBEK6YrkP4erm+Nb11qDVtVTQ
 vTZiUyNvWXp4IBwAr9Lvl/HGoA==
X-Google-Smtp-Source: ADFU+vtPSvkZ9yb3NUUQBsFHC9q7zD81H0YjIqBGW1aGNMgqBP877n5HImnbQzQDRnrTS9OMqHYFgg==
X-Received: by 2002:a17:90b:124a:: with SMTP id
 gx10mr7434930pjb.117.1585081958466; 
 Tue, 24 Mar 2020 13:32:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y17sm10418685pfl.104.2020.03.24.13.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 13:32:37 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v2 2/5] init_on_alloc: Unpessimize default-on builds
Date: Tue, 24 Mar 2020 13:32:28 -0700
Message-Id: <20200324203231.64324-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324203231.64324-1-keescook@chromium.org>
References: <20200324203231.64324-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_133240_490720_D1AE2491 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Will Deacon <will@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now, the state of CONFIG_INIT_ON_ALLOC_DEFAULT_ON (and
...ON_FREE...) did not change the assembly ordering of the static branch
tests. Use the new jump_label macro to check CONFIG settings to default
to the "expected" state, unpessimizes the resulting assembly code.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/mm.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 059658604dd6..64e911159ffa 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2665,7 +2665,8 @@ static inline void kernel_poison_pages(struct page *page, int numpages,
 DECLARE_STATIC_KEY_MAYBE(CONFIG_INIT_ON_ALLOC_DEFAULT_ON, init_on_alloc);
 static inline bool want_init_on_alloc(gfp_t flags)
 {
-	if (static_branch_unlikely(&init_on_alloc) &&
+	if (static_branch_maybe(CONFIG_INIT_ON_ALLOC_DEFAULT_ON,
+				&init_on_alloc) &&
 	    !page_poisoning_enabled())
 		return true;
 	return flags & __GFP_ZERO;
@@ -2674,7 +2675,8 @@ static inline bool want_init_on_alloc(gfp_t flags)
 DECLARE_STATIC_KEY_MAYBE(CONFIG_INIT_ON_FREE_DEFAULT_ON, init_on_free);
 static inline bool want_init_on_free(void)
 {
-	return static_branch_unlikely(&init_on_free) &&
+	return static_branch_maybe(CONFIG_INIT_ON_FREE_DEFAULT_ON,
+				   &init_on_free) &&
 	       !page_poisoning_enabled();
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
