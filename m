Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1266556139
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 06:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=arPWv3+laR/qi5IOGn+oqmi9AYwwd1QQhlQpZaDpLz4=; b=tnREHmdYJbncjd
	dsRyPo0CPqV4IN27twVUwx+RYyv6Thh2vwOHqHjUBJUuQhBGDPs60oNi8RGWmRPoDu+5tWD3GuPd1
	rNyOSS/ha+VHVLwdK+4fD8SaUH3yhmF4bL7Lhy329d6/cWZdU8UHPDm6n7pSlliCro4DQb2ZDxW8r
	9qCEICJnVLd/ysyfOcXttQpGTQGJGmpc0HZPdsEwfdaFLTFbttXAZZqrIjEwBuduCv2NdvNRRCwKT
	e3o196/QjBCMWJ+Mrv7SAuo4Ti3pQBmlwEPO5iF9L+5oHK/LC/156qRySUtJ0zWe0r4w+NC7cQDzy
	BJUxIKuva7sEwkECu2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfzQR-0002BP-Hs; Wed, 26 Jun 2019 04:20:51 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfzQC-0002AV-9b
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 04:20:37 +0000
Received: by mail-ed1-x542.google.com with SMTP id p15so1170048eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 21:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Cl6yVigkJvzoVrHwes9kSjc7pM4VSMZ/+3LWRXp8II=;
 b=P1VTP7Pj84OsQis7x1uKS38d7izOAewPCuxClFsIh3Q8xGkm2w4RgYFl/ekzoDot/d
 RTQkeWGv2/mJmfDBEZycoPXx/VnVCV+bKYezE/Jp05k1ZV98lV/XSNH1ReTqSAqkI20x
 0fZ34XTKKdzC7dzKT/7nFE2cFuOfUyyMGoR/Um+LfVodvd3Gp63yidTSlEfLjrzHsbPd
 /UQ/WYvvB6r1cqCXUZ3bdQ3qTR7MZW+0EpeXUfSuzT0BfIQoQOPN+zazD0Wed/sVNy1Y
 ISzB4OmUR8YRywE4m0HoB4hYbglqSbD24bv6xGQtupOSojegFam/ztLkKtRyy/84s5l1
 pwnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Cl6yVigkJvzoVrHwes9kSjc7pM4VSMZ/+3LWRXp8II=;
 b=NcX7K3r6gG/65RepzFsefy5sJJwM3pPZl8KneIdcOeAGjXpsKvb94YWBKvjGXEvD6f
 xZr9B0nEShWKJRJ3DV4wKjxYJghiovxtmVj6G9NUAAwLTWzwHvTAU5OkoEy/4HV29mkQ
 UD0UeqAVTSAZ2U7qsUdWxb63klV6PmDXMXUStrOYiuHgkJlLg0M/YgnCezPCAJtdhq8y
 ZskBBtBfzodcZDmTd0wHf30zLA10Y8BITLkRilcdPKTgPoqRvsRo1Jos6Dkz/S7PILi5
 xn1WfQNDC1+cKxirx6bJh5T5HeRTOFhb7Xyln943wxkQYa0KaVaf1Fqqv5XIAiOYBSCO
 Zgsg==
X-Gm-Message-State: APjAAAUSpOiUYgIAjo3XXNMq+2CwY2Ht6eEUE/8uq308T7OwyQMw3NId
 SDB9N/FHy/3Zwaw1+UmevRA=
X-Google-Smtp-Source: APXvYqwXqs1HEBueWWQka/6CMFwu/lhK03HSxnd+VHGfUzx+yhV/PAHnMwGpK/7LqQHSt0mldLz/Og==
X-Received: by 2002:a50:b6c7:: with SMTP id f7mr2392320ede.275.1561522834286; 
 Tue, 25 Jun 2019 21:20:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id a3sm5180717edr.48.2019.06.25.21.20.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 21:20:33 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: [PATCH] arm64/efi: Mark __efistub_stext_offset as an absolute symbol
 explicitly
Date: Tue, 25 Jun 2019 21:20:17 -0700
Message-Id: <20190626042017.54773-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_212036_363741_D1C4FBA2 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fangrui Song <maskray@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Peter Smith <peter.smith@linaro.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After r363059 and r363928 in LLVM, a build using ld.lld as the linker
with CONFIG_RANDOMIZE_BASE enabled fails like so:

ld.lld: error: relocation R_AARCH64_ABS32 cannot be used against symbol
__efistub_stext_offset; recompile with -fPIC

Fangrui and Peter figured out that ld.lld is incorrectly considering
__efistub_stext_offset as a relative symbol because of the order in
which symbols are evaluated. _text is treated as an absolute symbol
and stext is a relative symbol, making __efistub_stext_offset a
relative symbol.

Adding ABSOLUTE will force ld.lld to evalute this expression in the
right context and does not change ld.bfd's behavior. ld.lld will
need to be fixed but the developers do not see a quick or simple fix
without some research (see the linked issue for further explanation).
Add this simple workaround so that ld.lld can continue to link kernels.

Link: https://github.com/ClangBuiltLinux/linux/issues/561
Link: https://github.com/llvm/llvm-project/commit/025a815d75d2356f2944136269aa5874721ec236
Link: https://github.com/llvm/llvm-project/commit/249fde85832c33f8b06c6b4ac65d1c4b96d23b83
Debugged-by: Fangrui Song <maskray@google.com>
Debugged-by: Peter Smith <peter.smith@linaro.org>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/kernel/image.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/image.h b/arch/arm64/kernel/image.h
index 04ca08086d35..9a2d2227907c 100644
--- a/arch/arm64/kernel/image.h
+++ b/arch/arm64/kernel/image.h
@@ -67,7 +67,7 @@
 
 #ifdef CONFIG_EFI
 
-__efistub_stext_offset = stext - _text;
+__efistub_stext_offset = ABSOLUTE(stext - _text);
 
 /*
  * The EFI stub has its own symbol namespace prefixed by __efistub_, to
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
