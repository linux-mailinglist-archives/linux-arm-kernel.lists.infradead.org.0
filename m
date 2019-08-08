Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F229A8625A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAn0mTGzpL9cj8Jd1V5W5UeG7FQJL6iHFm7MYseN8Vs=; b=TMYgFDKHAK1fno
	4nKjz1gt0qi0jO33b+W++6AIGNg576Wbcs6I7cNT9wBn2vPijJip48Gsw0LngQVaZhY3H8z1Gbfch
	NL4tfcEefoGEX331sym5uzQGF0oXpm1od2y5xR3BZ45T9Ckw+KHVn8yex1y/mzUXXfYN3KQmd+NnL
	iHxoy+nQBgc/WIK3UPFSRh2wfCtJV8GjTZNAB0gTDyepGIJE8rw+E+Ncm0kPp7s4CiwxkyuwpmZyQ
	I4GkCvFk+Cm3T2S3gLqiZLegn97Vf8qEf33Z5y79IsEUHq1kdz2JyAMJd3JhelBcb4CNGsgKg+t+w
	bx6NrN1fg2W2YuH8tiTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhwR-0003VA-LQ; Thu, 08 Aug 2019 12:54:51 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhvn-00033x-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:54:12 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m23so62978665vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 05:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=liwJ5aBiFK+WFsWUhJbvVPIczbQXc8RXANMWyv0DLGg=;
 b=kr5FQNqrT2Rg5Alzm8XnB07yLORUhHTijvKBwfOdk8JR/91h0GkAVli3s1oqUsOubx
 Iq4v64T7GbVQoJV9exfZHUZjTRDKtlJ8kXoZPjaJoCbLPa32KzzSppNSbsrU9v0+cFfk
 erqO++npLx/NrD+3IbANNkuHP4Oi3pyzfOMhy6DBO50cX6bl4gSfi8xLnGJxL8qziMSf
 ZalqO03UMfJkLpgUBiPfoXeskZ4jFO3UUgfuQlHIYCNG370o6P8AaKemiZoeicScpKCb
 Uw1P7aBcqzrsFvHBweB1Xm2ze7AwhypMpi9SCvflABonpF8gg2BJO7rTJzqUhd7gZrwc
 Aogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=liwJ5aBiFK+WFsWUhJbvVPIczbQXc8RXANMWyv0DLGg=;
 b=lbvIYi8I4ALpsuxSWSq3p/pYxJhWqiBHam1gB4usV7FCi0S5iVDN1ED7WJ222TWV6G
 yNokQET9GUWHUFvUTvZrMVCSz+HAqXSFAG2dKU3jPyaO6Cqcx2PwG39Rtmg0TtUzzh0c
 F/3onigG//tTu6LD/7eozvdcbRdKZ9A83Icuxl3pFzIO2+LXSxqBm4/ewYyZ/sIMJYLp
 uy+P0p/rCGwlRmScjKSKqd7PYriQo/FE/CBaSmvV9y4H9AqZJc6dMZC8Cuem3KTBKSjC
 /0yrOvoSfMJU11vhy+i3v2co2lZqi8AFekxFIQRq0mKaHNGIkkPnY6fOEi2AKo0+T2rL
 ELkg==
X-Gm-Message-State: APjAAAX9VZLs8jyHP3AWTZEgrtBxan4jOi4/SHGhyN5hwMKMUge0nH06
 bijqXFAYfp4GqUcS2Isbr0AH4RlxsfY=
X-Google-Smtp-Source: APXvYqzUT4Jt9+UwYU5M6TPMDU1CqLQBhj07YUvs0GMfXEdfhpZ1/tEoercQdL79kkRiJPS4q41IZw==
X-Received: by 2002:a67:f9c1:: with SMTP id c1mr9615438vsq.22.1565268850029;
 Thu, 08 Aug 2019 05:54:10 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.21.218])
 by smtp.gmail.com with ESMTPSA id r190sm26961692vkr.8.2019.08.08.05.54.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Aug 2019 05:54:09 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: linux@armlinux.org.uk,
	michal.simek@xilinx.com
Subject: [PATCH v2 2/2] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
Date: Thu,  8 Aug 2019 08:52:43 -0400
Message-Id: <20190808125243.31046-3-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808125243.31046-1-luaraneda@gmail.com>
References: <20190808125243.31046-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_055411_259250_ED2E256B 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
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
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes a kernel panic on memcpy when
FORTIFY_SOURCE is enabled.

The initial smp implementation on commit aa7eb2bb4e4a
("arm: zynq: Add smp support")
used memcpy, which worked fine until commit ee333554fed5
("ARM: 8749/1: Kconfig: Add ARCH_HAS_FORTIFY_SOURCE")
enabled overflow checks at runtime, producing a read
overflow panic.

The computed size of memcpy args are:
- p_size (dst): 4294967295 = (size_t) -1
- q_size (src): 1
- size (len): 8

Additionally, the memory is marked as __iomem, so one of
the memcpy_* functions should be used for read/write.

Fixes: aa7eb2bb4e4a ("arm: zynq: Add smp support")
Signed-off-by: Luis Araneda <luaraneda@gmail.com>
Cc: stable@vger.kernel.org
---
Changes:
v1 -> v2:
- Reword commit message to include related commits
- Add Fixes tag
- Add Cc to stable
---
 arch/arm/mach-zynq/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
index 38728badabd4..a10085be9073 100644
--- a/arch/arm/mach-zynq/platsmp.c
+++ b/arch/arm/mach-zynq/platsmp.c
@@ -57,7 +57,7 @@ int zynq_cpun_start(u32 address, int cpu)
 			* 0x4: Jump by mov instruction
 			* 0x8: Jumping address
 			*/
-			memcpy((__force void *)zero, &zynq_secondary_trampoline,
+			memcpy_toio(zero, &zynq_secondary_trampoline,
 							trampoline_size);
 			writel(address, zero + trampoline_size);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
