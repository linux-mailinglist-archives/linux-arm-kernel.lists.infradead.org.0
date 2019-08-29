Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0050EA11BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 08:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dMtIXJQUhb3Ne4tsGwLKVXpX06kr8ULfio/dg6HniCE=; b=bxoUx7DWkT1H4d
	P/Y6wfMGyITS+uHEXyu+pvJXvi2wv/dqmfJhio5WJu3COOEzvcCfipBhqkdsnnFPq7yI1e+0NWJor
	/D6QN0+Rys2Oi914Tt70KvHZIQzDsa82Rk4OjrsM3injC/NUxM4TSHUg+R9EDVjWLzMa7SnYvZznW
	4kOmyiPbmHCgX+jsJAIeep0ue2FxzL0xtNSwjFGuDNwhRaAjbEZH7kWGDehx1Unx1SuPL9phOU6oz
	BKXRkFRt31N5Ehm8Ymym7vffEDsfv7DYT6sESU5RYBw9JFhZpxjDEp1s7zxm8Omj6ZmpFeqG5d+rq
	aC/JW4im+TVqWFQ2ettQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Dtn-0004Kt-I2; Thu, 29 Aug 2019 06:27:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Dte-0004Js-9A
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 06:27:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so2117488wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 23:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KytG/7ymtFjDfAwGsiRAdcQCUZ/+jD07+aAcotArQAM=;
 b=F/6PpjySuPHO3Vr9pJbSHRO8eFA76qOZDoN+BIsD25VHDwsqT4l7APHSnI+ns0V1mt
 xb+V0irdZafTDreUDZrgDPZJViG0japf/Tq1/yL1BsK5KwXZP4gDzMhyWmumnbKHUesu
 n+CsBpVJA2gjEhkDVC4nSckyeJSZTujLCYRMb7RtrbLqCi1KKmoFplhR6wgScRiLeNm5
 OLZdGwtvOsQY9/Ar6SP0dWSYeM7eFlJhi2f5n5G2F2SVQtaurQx8g5dCt9djeGbVRoGe
 mJQ3sHflXbMd55+/rH+/aYPKyOw/wAqLx0J5o8LC2ogC1Puc9ZDzfC7uPC7NQjr7DAip
 wJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KytG/7ymtFjDfAwGsiRAdcQCUZ/+jD07+aAcotArQAM=;
 b=QJCa8EypYV5EhIvVk189LdA3K7Gh9hs9WCyRaGhiOUm8Iu2PU6ksFfcfXopfH/yeOx
 aC5VIhbQ0/CTYChxxV3ka0bYE8Son4hiamJIxUSLhwZLUhiJuP0CqmKEZH4M66Y3ExZs
 mnAXnAqntngawuqPOoMgF3PZjMaVrnv2pKmkd1dxjxjfxtSEdibFuFPbPriiqzJDsy44
 qQaQRYEPWnGL1NC9GRnVZKEWi1odhT2h/0UrMopOynYynxgzanIbjAjIsyP8Nwbl1Igp
 brx/rhux5/eL0CwIkyVVmALFzmTB9DFFX6MdoDOdiYzbf7b7hcwKjS+vpdwCBgjkcTv9
 b9sA==
X-Gm-Message-State: APjAAAX4ckn5fgJEogML6XKNkIDK11uE7ORv5l4N/uyi7rNPBIMN2ypO
 7xmqeaTxhADU1ojnbRv2IaA=
X-Google-Smtp-Source: APXvYqzv88pWkKrssjgISe1F1+aut5Zg+6TquaOWUXCZ2Bm7vgCSCNnrgxZhLfuIfdh0BkswyrsoSA==
X-Received: by 2002:adf:f801:: with SMTP id s1mr9347320wrp.320.1567060020018; 
 Wed, 28 Aug 2019 23:27:00 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id c201sm3095530wmd.33.2019.08.28.23.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 23:26:59 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Date: Wed, 28 Aug 2019 23:26:35 -0700
Message-Id: <20190829062635.45609-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_232702_349670_8BFDA9BA 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 clang-built-linux@googlegroups.com, Matthias Kaehlcke <mka@chromium.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
with clang:

arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
softirq.c:(.text+0x504): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
softirq.c:(.text+0x58c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
softirq.c:(.text+0x6c8): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
softirq.c:(.text+0x75c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
softirq.c:(.text+0x840): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow

clang can emit a working mcount symbol, __gnu_mcount_nc, when
'-meabi gnu' is passed to it. Until r369147 in LLVM, this was
broken and caused the kernel not to boot because the calling
convention was not correct. Now that it is fixed, add this to
the command line when clang is 10.0.0 or newer so everything
works properly.

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Link: https://bugs.llvm.org/show_bug.cgi?id=33845
Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..7b5a26a866fc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
+CFLAGS_ABI	+=-meabi gnu
+endif
+endif
+
 # Accept old syntax despite ".syntax unified"
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
