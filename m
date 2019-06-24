Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E189F503BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8REggVZj/7K1FyzCFJX31HMYQsZ/M5F3SKS28aciYI0=; b=CZfGfA29pU+50V
	3UgV3tD1dfLZHjmNedClzfgRX60+xuSQwa5dQjt5AXxoLVmoaJBs6uiXsOI0qf0kCe3x4JG+lXsID
	SbzWg/tVk+iDCfSnJaeLlGAoHYlgj0rT+pprvGyXY/vPtHkfTS8MX++tl3xSiKriNQT0/zchScugg
	9WdTs+fDUQu+G76/dUp66bKcq9GqgO1rq4Teo3ooeVgb6+jkp7SliiutNFjV0MwhsvBW8ZeQFESFO
	2XDXXFj0zookuXDbnL/0lkJiy737Q/PBeyUBF4a+2hFqa+N/XCLVa6+lcqjLyoTx0C1u2i9sOx5Ua
	g4eoEPDjrdooVifW4VLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJZ1-0007Gh-FT; Mon, 24 Jun 2019 07:38:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJYc-0007C3-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:38:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id f15so2825215wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mXpydhn3h8+bwzi+XRJ+smOVOxIlaYlB/CCvwP4+MC0=;
 b=EFUddc5ZhmYskuZkgdXO8fVeBRbsHkwxsuCWTy9nTMFiqHeoeKYmQ8UKTeARs/Ufi0
 AGSAGAyxxey9pENHwuPySrCsOagS0TuUhMdPRGkpbum/kNByuTEOIPnGvLn7MylZ8XQY
 zIMjaMmbzwtPwHqZF5VbI6y+sOSVj6g92/Ihem13G6RH/z/RcABIPO+vK1nLUIoWbIXG
 w5WcIGGvh0yfhxM/QY/kHR0ZHNg5R6QLYs0kcR1cLqFb2uc9kKTFc1Q9bvbX8jmNLiID
 YwQg++0PAd0hxvoklpata8ZfVeTv98YqXEOE5brwnTEzTKtVo/7RFSxFKfrOf46mdvep
 xQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mXpydhn3h8+bwzi+XRJ+smOVOxIlaYlB/CCvwP4+MC0=;
 b=o5NtZ1HODbc5qsPmiVkBNYpPZQN1anO7PX1MYh5oyTiaSkbb7OH9pHKjFa1vZH/zc3
 /EZcFzP9wifrqc57sb8L/ROOaUnJ7dSRReQzFPKj1w5Tw2LSvxI5KXt6y0U1wD8nFShw
 s6/O1vjSIBvqWI9daAlRpb+nO5E/UBBewgAxteps/+x6pLHESLT56YLIQgO4Yau/s+8t
 LQt83AreRbCaZGOCAM3eXVqXDPJOBSq+R3QXxcUwndqnjJ6nCLZZQXB8nijDKGBTIOhT
 S/k/4wKyfydhJJO20AMfszeXGeFlC33Myk4RIb7xdu/vsNtYxqyc4jvcmM/j4+5N7d96
 zLEg==
X-Gm-Message-State: APjAAAUi7ulEJxSHgLk7gWQh8yIMzqdOYLyqOj9x8vBREa7mzKaibVdn
 e46RJ0UgxGX+VPBScTeH2ZXidg==
X-Google-Smtp-Source: APXvYqyHU+wrAL3tzmfsUcOkdJGCukuctwZR1VG5OIO/Y8RTnTMwtaL77LTKb4zuZzvqFyI6M5WWjQ==
X-Received: by 2002:adf:fbd0:: with SMTP id d16mr23209832wrs.341.1561361908966; 
 Mon, 24 Jun 2019 00:38:28 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:4866:7cdc:a930:8455])
 by smtp.gmail.com with ESMTPSA id 203sm7419280wmc.30.2019.06.24.00.38.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:38:28 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 0/6] crypto: aegis128 - add NEON intrinsics version for
 ARM/arm64
Date: Mon, 24 Jun 2019 09:38:12 +0200
Message-Id: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003830_948062_E5687F05 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that aegis128 has been announced as one of the winners of the CAESAR
competition, it's time to provide some better support for it on arm64 (and
32-bit ARM *)

This time, instead of cloning the generic driver twice and rewriting half
of it in arm64 and ARM assembly, add hooks for an accelerated SIMD path to
the generic driver, and populate it with a C version using NEON intrinsics
that can be built for both ARM and arm64. This results in a speedup of ~11x,
resulting in a performance of 2.2 cycles per byte on Cortex-A53.

Patches #1 .. #3 are some fixes/improvements for the generic code. Patch #4
adds the plumbing for using a SIMD accelerated implementation. Patch #5
adds the ARM and arm64 code, and patch #6 adds a speed test.

Note that aegis128l and aegis256 were not selected, and nor where any of the
morus contestants, and so we should probably consider dropping those drivers
again.

* 32-bit ARM today rarely provides the special AES instruction that the
  implementation in this series relies on, but this may change in the future,
  and the NEON intrinsics code can be compiled for both ISAs.

Cc: Eric Biggers <ebiggers@google.com>
Cc: Ondrej Mosnacek <omosnace@redhat.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Steve Capper <steve.capper@arm.com>

Ard Biesheuvel (6):
  crypto: aegis128 - use unaliged helper in unaligned decrypt path
  crypto: aegis - drop empty TFM init/exit routines
  crypto: aegis - avoid prerotated AES tables
  crypto: aegis128 - add support for SIMD acceleration
  crypto: aegis128 - provide a SIMD implementation based on NEON
    intrinsics
  crypto: tcrypt - add a speed test for AEGIS128

 crypto/Kconfig               |   5 +
 crypto/Makefile              |  12 ++
 crypto/aegis.h               |  28 ++--
 crypto/aegis128-neon-inner.c | 142 ++++++++++++++++++++
 crypto/aegis128-neon.c       |  43 ++++++
 crypto/aegis128.c            |  55 +++++---
 crypto/aegis128l.c           |  11 --
 crypto/aegis256.c            |  11 --
 crypto/tcrypt.c              |   7 +
 9 files changed, 261 insertions(+), 53 deletions(-)
 create mode 100644 crypto/aegis128-neon-inner.c
 create mode 100644 crypto/aegis128-neon.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
