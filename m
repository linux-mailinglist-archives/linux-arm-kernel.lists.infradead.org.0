Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88E61B7285
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 12:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=shgSGEBdET7RMqFeVNzSHnK0hQVEEN+LS/dXCCIO9c4=; b=gyw+6aSoGIQ2KA8OrMhY21zpH
	hxTkMWc3m8R2Vgh1XJTo2T2JI5x8sQ0r2hzAC2XXlQpe3pesv+gJSGu/Agvy5uc3N0j3zDxx/oyjb
	N3qoMcOZL00A1hN2lrvHY6dSIs634OU4HhyyxLDqYnWQk8fNAiO/AdV69hpLzH8ghVH3IwW+pvE2+
	Ysm6GEoVxCEG04h8VKMVQaEm7ggTVulEb8er6c4M1uHCTa87DkjkJQud2bWqaHUOGHHoY2ar9e4Jn
	2GBoTMfIDSdHg3jBtZs81kjpTUM7ICFSkmzjMVSHPD+8Rcvw7xDJPqLwMIDW20hf8YmRLdtTFEIY2
	zhQtqRDxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvxZ-00084x-IS; Fri, 24 Apr 2020 10:53:29 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvxR-00083q-2M
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 10:53:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id v2so3595666plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 03:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=R8t+7888K7kzJGE2cpI0Gewrm7h/D6gEhogwIFx31Lk=;
 b=Qcq/8rBl9g732jhNkxk/yLJfMtvESceHcAhNq8mjG1GxTvJ8IX7OsX4ULyv5aXcf6A
 XZK65r0qm0zbgUZaDhunfmvAaUraaq1Y6pUQlG4QNpejre+aIew2/3nYeZhhxpLmaImq
 Qh00PpyAIBtDR0WZAoXZWMVSkicj+a+lzCswFroD6uPU8b9ctuKg4IKn/3d9UQcjA01j
 ENSqq8/hZkrORRlXWjzHqqqvZ9p2m5rZkD6K4IF7Uh3fCXN9H36cjfmcn1gmPrrCc4n8
 Juui253ahHG/SHnntUm/R4FJExyknpHv9GAo8z7R68twYuW74qB9ihE/KeE27+xXQtbc
 yRbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=R8t+7888K7kzJGE2cpI0Gewrm7h/D6gEhogwIFx31Lk=;
 b=UkphU+bfU6flWFfb1N221Yo6S3RP5oMNH8NP+CTUGQ5xAp04ctUquvL7gpxh0HZNQy
 3+bEMx43NfDRKcnJt2HzVWN837BUF5ic1Ii92b5wABiBCFT4euq1a4WBN7wFAqPdO6sh
 i/YL40/AwK3rd0PhmwO2rucFCR7sGEadiFW4J2T+8Mc5javE7mL+o4TTUrBaQq5jcryZ
 KlX8V4fti2/8aOMDsrmTowx+WaiPU47a2BDGfo5c9A6UVKrkBtpOIxdKy7Qy9Gsu2152
 nas1U6in6wvCYfrf0Ovb3E+KTm2SN0iI50OY/rU0cam/fptZuA+vkPI0vPGer++XK0UE
 r2rg==
X-Gm-Message-State: AGi0PuYX3c59iA1tbCINfdVi3rWTykCNAA9mtajf3mHR+F78ymChkjYr
 rL10j5BL4D/apNy3XrveglA=
X-Google-Smtp-Source: APiQypK5+esVN5CdbnzPWeW2IhtsX++39F6f0uikR/CRyclafcDhXyyY7JjiOPtD6LG9xwD0kd49Ew==
X-Received: by 2002:a17:90a:328f:: with SMTP id
 l15mr5666046pjb.77.1587725599462; 
 Fri, 24 Apr 2020 03:53:19 -0700 (PDT)
Received: from [192.168.1.149] ([42.119.157.180])
 by smtp.gmail.com with ESMTPSA id 198sm5628223pfa.87.2020.04.24.03.53.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 03:53:18 -0700 (PDT)
Subject: Re: Re: [PATCH v2] arm64: add check_wx_pages debugfs for CHECK_WX
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 ruscur@russell.cc
References: <20200307093926.27145-1-tranmanphong@gmail.com>
 <20200421173557.10817-1-tranmanphong@gmail.com>
 <20200422143526.GD54796@lakrids.cambridge.arm.com>
 <20200422152656.GF676@willie-the-truck>
From: Phong Tran <tranmanphong@gmail.com>
Message-ID: <e06b1ad1-08ca-ec50-7ca1-7d08bbea81b3@gmail.com>
Date: Fri, 24 Apr 2020 17:52:41 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200422152656.GF676@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_035321_110096_0CBE7E7A 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tranmanphong[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: keescook@chromium.org, steve.capper@arm.com, tranmanphong@gmail.com,
 greg@kroah.com, kernel-hardening@lists.openwall.com,
 linux-kernel@vger.kernel.org, steven.price@arm.com, alexios.zavras@intel.com,
 broonie@kernel.org, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/22/20 10:26 PM, Will Deacon wrote:
> On Wed, Apr 22, 2020 at 03:35:27PM +0100, Mark Rutland wrote:
>> On Wed, Apr 22, 2020 at 12:35:58AM +0700, Phong Tran wrote:
>>> follow the suggestion from
>>> https://github.com/KSPP/linux/issues/35
>>>
>>> Signed-off-by: Phong Tran <tranmanphong@gmail.com>
>>> ---
>>> Change since v1:
>>> - Update the Kconfig help text
>>> - Don't check the return value of debugfs_create_file()
>>> - Tested on QEMU aarch64
>>
>> As on v1, I think that this should be generic across all architectures
>> with CONFIG_DEBUG_WX. Adding this only on arm64 under
>> CONFIG_PTDUMP_DEBUGFS (which does not generally imply a WX check)
>> doesn't seem right.
>>
>> Maybe we need a new ARCH_HAS_CHECK_WX config to make that simpler, but
>> that seems simple to me.
> 
> Agreed. When I asked about respinning, I assumed this would be done in
> generic code as you requested on the first version. Phong -- do you think
> you can take a look at that, please?
> 

sure, plan to make change in mm/ptdump.c with KConfig 
"ARCH_HAS_CHECK_WX" as suggestion.

Then need align with this patch in PowerPC arch also

https://lore.kernel.org/kernel-hardening/20200402084053.188537-3-ruscur@russell.cc/

diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index a1efa246c9ed..50f18e7ff2ae 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -25,6 +25,7 @@ config ARM64_RANDOMIZE_TEXT_OFFSET

  config DEBUG_WX
         bool "Warn on W+X mappings at boot"
+       select ARCH_HAS_CHECK_WX
         select PTDUMP_CORE
         ---help---
           Generate a warning if any W+X mappings are found at boot.
diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
index 0271b22e063f..40c9ac5a4db2 100644
--- a/mm/Kconfig.debug
+++ b/mm/Kconfig.debug
@@ -138,3 +138,6 @@ config PTDUMP_DEBUGFS
           kernel.

           If in doubt, say N.
+
+config ARCH_HAS_CHECK_WX
+       bool
diff --git a/mm/ptdump.c b/mm/ptdump.c
index 26208d0d03b7..8f54db007aaa 100644
--- a/mm/ptdump.c
+++ b/mm/ptdump.c
@@ -137,3 +137,29 @@ void ptdump_walk_pgd(struct ptdump_state *st, 
struct mm_struct *mm, pgd_t *pgd)
         /* Flush out the last page */
         st->note_page(st, 0, -1, 0);
  }
+
+#ifdef CONFIG_ARCH_HAS_CHECK_WX
+#include <linux/debugfs.h>
+#include <asm/ptdump.h>
+
+static int check_wx_debugfs_set(void *data, u64 val)
+{
+       if (val != 1ULL)
+               return -EINVAL;
+
+       ptdump_check_wx();
+
+       return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(check_wx_fops, NULL, check_wx_debugfs_set, 
"%llu\n");
+
+static int ptdump_debugfs_check_wx_init(void)
+{
+       debugfs_create_file("check_wx_pages", 0200, NULL,
+                       NULL, &check_wx_fops) ? 0 : -ENOMEM;
+       return 0;
+}
+
+device_initcall(ptdump_debugfs_check_wx_init);
+#endif


Regards,
Phong.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
