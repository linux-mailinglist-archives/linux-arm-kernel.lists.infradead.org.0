Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9BC156384
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 10:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NlVblGMHmSofn84Guy9JNufV36q8ZxL0tMCpt/IpRgw=; b=JlOtMiyjsK3hBK
	JVr8ngMLCELOu6dXwnblUolU/i5ncsBnuPijbuXK2wRZg0zuMcix2FIjDTfijMu7wFpnjsWMvd9PV
	Jjls9Y7XT1d6oJJhKzUwDVyDb1xzruPOKbmoqlipvwaJfNbCVgwNQ0lIVBZiSdopC0YmDtY7ILVo5
	QmqB+wthH4kzW35bCXZfzLznz6snrM4vPqbWdOerCcwTvAkV0IYC7wsEQGHJqk1M2SUKVMOiMm4cA
	IVjcfLIfnOtd4wZzMCR3/T7ifattIlbXyPuRKUJc0Td85NZCfNdR7A67LC6DFdPQ1rs6fVPaiEl73
	frulwOwG13kvabfmpdiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0M2P-0000QR-O4; Sat, 08 Feb 2020 09:04:29 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0M2H-0000Q0-VM
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 09:04:23 +0000
Received: by mail-ot1-x342.google.com with SMTP id i6so1665347otr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 01:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=KuIxnvjt6h0/H52RMaBXWo+aQbQdJji5KOSpX8NKI8A=;
 b=IJpJ5/bs4Rt3W7H4kqEUY/PUKkd1zUaZ//UF0L74xfFF+6fnVpx/pzld0njI9CDTOU
 OXexv9wL6SKoLBjJBIe46l9zrM6VuVLgo+fHCBjCEzZZh6M2uX6yWUfmbIOMxCrthQFh
 nsTUw0ooF8TXkEpKg1Joj8kRUOJyZ+LmZ5SJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=KuIxnvjt6h0/H52RMaBXWo+aQbQdJji5KOSpX8NKI8A=;
 b=mzFxUjsGx8ucJhPHBp6bKb4ZqYiaHK7fuUCYx52pr5Cc7eYgNYH8kz2Vz5nMdZ8Z1u
 l+GkCo/XLOKQEI643T2dge9qfb6nwyELci89km0D38qOBPFhffgN4F6SrCvq+y7JH4uE
 zfwX/NhVZsELYUFIC0rA/LJLDqoMonMX+LPAd1lx92h5Cn5pwkFP8Lna53W6uioZcE15
 Y9UYaFSUUM0Y0QiJ4F26uzgWxEwPQgnf53kRx3s50QANKvO2NL5dmr9gWx2InAW0JEj0
 6G9j6Dm8sLqfMErvMVAAP+1rEwr4SfiY+WbpJ/rg7MFwvGirTW8iqZO6OOmvuwUlpLqS
 7TzQ==
X-Gm-Message-State: APjAAAVywXadd/slwmgwJ/nyZpIbrGveTWR1q8TnIzoyjBups0GI3e6h
 fDqmd8Su3E8LVwTnn9aD+WbFsw==
X-Google-Smtp-Source: APXvYqxRR97Ajif5f660+DpaiHeBGdc2vP78nseFCsG8QHbGHFtYcvZLw67BGJrVLuScBxugs3/LWg==
X-Received: by 2002:a9d:12a8:: with SMTP id g37mr2785428otg.261.1581152660852; 
 Sat, 08 Feb 2020 01:04:20 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a1sm2094085oti.2.2020.02.08.01.04.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 01:04:20 -0800 (PST)
Date: Sat, 8 Feb 2020 01:04:18 -0800
From: Kees Cook <keescook@chromium.org>
To: Nicolas Pitre <nico@fluxnic.net>
Subject: [PATCH] ARM: Remove unused .fixup section in boot stub
Message-ID: <202002080058.FD1DDB1@keescook>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_010422_034206_16DB7D1D 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The boot stub does not emit a .fixup section at all anymore, so remove
it.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/lkml/CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/vmlinux.lds.S | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index fc7ed03d8b93..b247f399de71 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -36,7 +36,6 @@ SECTIONS
     *(.start)
     *(.text)
     *(.text.*)
-    *(.fixup)
     *(.gnu.warning)
     *(.glue_7t)
     *(.glue_7)
-- 
2.20.1


-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
