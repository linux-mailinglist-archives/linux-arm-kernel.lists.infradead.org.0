Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4988AA00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7sKbfbQqyFjgDHOwk+Iu4vHCPKGQuiNVws59Q4zxbk=; b=sQkKtsmzo/T/l1
	tYlgNGIbvzcUJkAGYc3b088S/yGoV5ICRjjYFtBmhvxvWZR5/6Emj93DBRcVV/Cg0FPcSMkKOX7ZX
	QwA+K036SFiYwT295QRITSpCJfyObQFgnwPLMM7xloEVh8xEpbzD25aFsodE1e59pr2RamwJblxAH
	yj3tzPX39Rw55khFMyD4orw5v3Y9vANe4b0tuKB1HfGeesCpbWm9e4U8O1SvD91GrCC0PTmYwCj5C
	YS2ZJl6zZWZREerAI8DF9kPbXrON8KrnrD5D4NOnUwT9ia/2775ZAUrQO+OK3NdjvsHfv41Fy5M10
	A0H8BQYDMq/T0OB6h81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIFP-0004gj-I1; Mon, 12 Aug 2019 21:52:59 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIFB-0004fx-BU
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:52:46 +0000
Received: by mail-pf1-x449.google.com with SMTP id w30so3245004pfj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 14:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=G35OOE0sSfMuupCpgKQ0U4p9HFNylMt7P/lVbiGjqC0=;
 b=qCcbdR00iqgqZ/gG+jyOtF9Vncm844UkTWidc/xDIrreYwf0T8fY8OG5dIQRuiIxUe
 FzmJOT/4MTg94OWbw0D9mWByCs1880fYzbD8pk0R6AkDeFsG731eVhxBT+J45lFhFbwf
 mlOlBZtSLGRqW7vKpUirVuKzaLN7Rjm4AfAx434gpgHK8OnXp1izWDswYuMTZaX7/v+k
 E5rmfQINbPC0sfjRL04ILiNYMQYE/0nCRU4hiRjda6N7E6/6+GyHD0Ng7d2h3RK1UWj6
 dgszycG/x5ZESFf+qAorMsQgsHnfLzNx5F9k2KWcorwNp2pin4MzhBg34i9DY6K23R8/
 UIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=G35OOE0sSfMuupCpgKQ0U4p9HFNylMt7P/lVbiGjqC0=;
 b=OSkH0k6CbPB/FUo0Z/t6j4vmLVj5wa9YREzIw3q0ISYKLpT6v9FOqCHdiECWCEP2RS
 tW1bwN5c/bWD/oGAFoBOyikLUWYtINnsqMMp1ZCd9ZLZtFmpbdvXQXmgFhyF0Gurn3/I
 DDzDsUSbUx7uzvh/vLyMWirnU4LbeZIuPFkMcE91ZSz36MAYuLgqWeW3aqLrOQ1zIjVK
 oleA3/IsIdLKzooq1770dSruWceGUP+5E0VFBBoI7DIxgaKub6ZXqxwSml9N6PkjjbVN
 AkDk8sAac/7WzjCD/Z5G9nbxO+g9u4pn301XqUGoG/Y9ihWKhQPpjH4mvc6/oYugEpAy
 jexw==
X-Gm-Message-State: APjAAAWNp42/Asyoshc/k88KAo3/vN6FXzfwMDUYnG/fqnqBTHj9Vd4m
 6GjrcbC2RcFp/WgtWiUc0eFvf9QG8k4VcagYMUI=
X-Google-Smtp-Source: APXvYqxLWMFYSVfr9/WeBe4JYuK0mMWVB3QFQmdMAe16b4tQpW2+ajfgokDvaDbjaNDG0XIPT7kh9+HxxjG7h46tDzs=
X-Received: by 2002:a65:6114:: with SMTP id z20mr32341554pgu.141.1565646764247; 
 Mon, 12 Aug 2019 14:52:44 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:45 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-12-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
From: Nick Desaulniers <ndesaulniers@google.com>
To: akpm@linux-foundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_145245_394167_5FC0A345 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, clang-built-linux@googlegroups.com,
 Allison Randal <allison@lohutok.net>, yhs@fb.com,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Alexios Zavras <alexios.zavras@intel.com>, jpoimboe@redhat.com,
 sedat.dilek@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 miguel.ojeda.sandonis@gmail.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/include/asm/cache.h     | 2 +-
 arch/arm64/kernel/smp_spin_table.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 64eeaa41e7ca..43da6dd29592 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -78,7 +78,7 @@ static inline u32 cache_type_cwg(void)
 	return (read_cpuid_cachetype() >> CTR_CWG_SHIFT) & CTR_CWG_MASK;
 }
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 static inline int cache_line_size_of_cpu(void)
 {
diff --git a/arch/arm64/kernel/smp_spin_table.c b/arch/arm64/kernel/smp_spin_table.c
index 76c2739ba8a4..c8a3fee00c11 100644
--- a/arch/arm64/kernel/smp_spin_table.c
+++ b/arch/arm64/kernel/smp_spin_table.c
@@ -19,7 +19,7 @@
 #include <asm/smp_plat.h>
 
 extern void secondary_holding_pen(void);
-volatile unsigned long __section(".mmuoff.data.read")
+volatile unsigned long __section(.mmuoff.data.read)
 secondary_holding_pen_release = INVALID_HWID;
 
 static phys_addr_t cpu_release_addr[NR_CPUS];
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
