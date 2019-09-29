Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8B2C17A8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mh9xZCxWPw/L85IlIgrdE1MfmLWPxhwYvkE8yGM0NJM=; b=SzVA5xdwkuJz8x
	mLkF8KiBVJoruNKsqwlr3dpVOxxrccFdozVdC5pfIgWVC/PIp2hP0bVcRba7v4LizsYCbULjvAZK/
	V11hl8qrYL5zCN6/aOKeKqCiQBBA/xpiBRkabSKPbm+4ozwh3T0lv+Gy3kIm64Y6VxPLAoYKwsXtB
	senobTdOvGRmW9ft/LBUOcjOiYOTDP0wQz6OXroyzbk9wGL03yPxeq+UX6sP4s5rWEIL5gXLtTygD
	fMI5Mn0Xd+s6NE63pPUK1Ts36kcSKMWjxvyww7BR/obpGVMaVWZLF+xxJOEsrxwww7TF+r06YcK9E
	ArfvjDSqFTqz2aE+Jf6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdA7-00010S-By; Sun, 29 Sep 2019 17:39:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEd9u-0000z8-Tk
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5so10780713wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xVmeJVcyAv5FivCJe4Ho+3eNCzy/y0ab/TB7w9rUAN0=;
 b=wq7V+9PUtOB7d/V5MmO+V3l0NMsLZxE6O1DzfPfvq/jYkzo8hRWRYna+xFrt/bMC2U
 X9VBR/cknKMYxzzdh0FsmR0Zdcsci2e1o2xoFmg6hDadLDxf/kXW/SkNumxubq0x2MuI
 ph+hLbFu6iqTzDjIsi/WWpJFidHNJ27Jhh7CVXx2ahg87kEYXiFnFdMknLPagT0m5RUV
 PRmwPy/y9l2u+0EYEJ3MEVSwRXftkTUM5hUUjUWEPjF95AJv1dV431bGGc2O/SoJUKCx
 ttYKUXca3vHq9M9QluAN7rPLJ2s6ZBeXknYzFZIr4jRKVStWL0tQ6T3wnvCnegXo8tJd
 os9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xVmeJVcyAv5FivCJe4Ho+3eNCzy/y0ab/TB7w9rUAN0=;
 b=t+FiFDOzdyFsJiMRkDfQLPf/Jmi/J6ZGp2eddr6lnLl6i9rDXFb9Mxd1XWzfC5taXi
 oaMf+6Myu033imYN3njbo6/UYdwzzVcRvjB+Bp1LBk/12J5ZCn3yOoox8CJQrMNOYMZl
 w6WFTdQ2qk5jeIfvG2VRw2QTQ8xDE5t6XfjZZavJnKt390yNxWAq/XIw26HmkaoeG8tI
 rIMKaIFJhLDDsdztHNhLffVXWj4pgWNCRpm+wbsIvijG0B627dEjdtujxLO/qySMMQDn
 +QUCjlc7kmG2ilU80oSNq/APlVXXU4VAn2F8yNntOSMoC9v6ubKFF27SrODQPKeEe3CM
 P0sQ==
X-Gm-Message-State: APjAAAXVp9yNr6kB+g6n1/ZoP8VQoLENDEH07SmCfpIIf18OSJxFA1Rh
 ZNk7JdAPlXz9fij1zy5MYsBiWg==
X-Google-Smtp-Source: APXvYqzQ7UAyHPKCcemCW5D4+H/064n2+GRcKAP8QB6AA0lA7PEFDoUodArOscNVVmf9GN5csusnQg==
X-Received: by 2002:a1c:a942:: with SMTP id s63mr14421967wme.152.1569778736774; 
 Sun, 29 Sep 2019 10:38:56 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.38.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:38:55 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 00/20] crypto: wireguard with crypto API library interface
Date: Sun, 29 Sep 2019 19:38:30 +0200
Message-Id: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103859_158827_56F41DD3 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Martin Willi <martin@strongswan.org>, Greg KH <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a follow-up to 'crypto: wireguard using the existing crypto API'.
Linus has made it abundantly clear that using the abstract AEAD interface
is not acceptable for instantiating a transformation that is known at compile
time, so I will abandon that approach for the time being. If anyone turns up
with appropriate h/w to run WireGuard in async mode, we might revisit this,
but for sync s/w algorithms, a concrete library interface is clearly preferred.

Therefore, I dropped the AEAD changes, and instead, moved to a true library
interface a la Zinc, but with the warts removed:
- no extensive #ifdef'ery, no static inline stub functions in .c files, or
  inclusion of .c files in other .c files - instead, we use Kconfig constraints
  and Kbuild rules which are much more idiomatic for the kernel
- no big pile of code for all architectures in lib/zinc, but generic library
  code in lib/crypto and per-arch code in arch/*/crypto, as we are used to for
  crypto API drivers
- reuse existing implementations of ChaCha20 and Poly1305 instead of replacing
  everything wholesale without proper motivation.

This now includes all the accelerated code contributed by Jason except for
the MIPS changes, but these should be trivial to port once we agree that this
approach is acceptable.

Patches #1 .. #8 refactor the chacha and poly1305 code so we can expose the
existing accelerated implementations via the library interface, as well as
two new Poly1305 implementations for ARM and arm64 taken from the OpenSSL/
Cryptogams project.

Patches #9 .. #16 incorporate the Zinc libraries for blake2s and curve25519,
as well as the plain VA versions of the ChaCha20Poly1305 construction.

Patch #17 reimplements the scatterlist interface of ChaCha20Poly1305 without
relying on the crypto API's blkcipher walk API. (The original implementation
had a rather nasty hack to be able to call into it from non-crypto API code,
but it was ugly and it doesn't look to me like it is guaranteed to work as
expected in cases where the scatterlist is fragmented into chunks that are
not aligned to the chacha block size)

Patch #18 is the same WireGuard patch as in the previous series, with patches
#19 and #20 being the deltas that need to be applied on top to get the code
to build.

Patches can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=wireguard-crypto-library-api

Cc: Herbert Xu <herbert@gondor.apana.org.au> 
Cc: David Miller <davem@davemloft.net>
Cc: Greg KH <gregkh@linuxfoundation.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Jason A. Donenfeld <Jason@zx2c4.com>
Cc: Samuel Neves <sneves@dei.uc.pt>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Eric Biggers <ebiggers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Martin Willi <martin@strongswan.org>

[0] https://lore.kernel.org/linux-crypto/20190925161255.1871-1-ard.biesheuvel@linaro.org/

Ard Biesheuvel (13):
  crypto: chacha - move existing library code into lib/crypto
  crypto: x86/chacha - expose SIMD ChaCha routine as library function
  crypto: arm64/chacha - expose arm64 ChaCha routine as library function
  crypto: arm/chacha - expose ARM ChaCha routine as library function
  crypto: poly1305 - move into lib/crypto and refactor into library
  crypto: x86/poly1305 - expose existing driver as poly1305 library
  crypto: arm64/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON
    implementation
  crypto: arm/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON
    implementation
  int128: move __uint128_t compiler test to Kconfig
  crypto: chacha20poly1305 - import construction and selftest from Zinc
  crypto: lib/chacha20poly1305 - reimplement crypt_from_sg() routine
  netlink: use new strict length types in policy for 5.2
  wg switch to lib/crypto algos

Jason A. Donenfeld (7):
  crypto: BLAKE2s - generic C library implementation and selftest
  crypto: BLAKE2s - x86_64 implementation
  crypto: Curve25519 - generic C library implementations and selftest
  crypto: Curve25519 - x86_64 library implementation
  crypto: arm - import Bernstein and Schwabe's Curve25519 ARM
    implementation
  crypto: arm/Curve25519 - wire up NEON implementation
  net: WireGuard secure network tunnel

 MAINTAINERS                                  |    8 +
 arch/arm/crypto/Kconfig                      |   11 +
 arch/arm/crypto/Makefile                     |    9 +-
 arch/arm/crypto/chacha-neon-glue.c           |   21 +-
 arch/arm/crypto/curve25519-core.S            | 2062 +++++
 arch/arm/crypto/curve25519-glue.c            |   45 +
 arch/arm/crypto/poly1305-armv4.pl            | 1236 +++
 arch/arm/crypto/poly1305-core.S_shipped      | 1158 +++
 arch/arm/crypto/poly1305-glue.c              |  271 +
 arch/arm64/Kconfig                           |    2 +-
 arch/arm64/crypto/Kconfig                    |    6 +
 arch/arm64/crypto/Makefile                   |   10 +-
 arch/arm64/crypto/chacha-neon-glue.c         |   14 +-
 arch/arm64/crypto/poly1305-armv8.pl          |  913 +++
 arch/arm64/crypto/poly1305-core.S_shipped    |  835 ++
 arch/arm64/crypto/poly1305-glue.c            |  227 +
 arch/riscv/Kconfig                           |    2 +-
 arch/x86/Kconfig                             |    2 +-
 arch/x86/crypto/Makefile                     |    3 +
 arch/x86/crypto/blake2s-core.S               |  685 ++
 arch/x86/crypto/blake2s-glue.c               |   73 +
 arch/x86/crypto/chacha_glue.c                |   16 +-
 arch/x86/crypto/curve25519-x86_64.c          | 2379 ++++++
 arch/x86/crypto/poly1305_glue.c              |  148 +-
 crypto/Kconfig                               |   59 +
 crypto/adiantum.c                            |    5 +-
 crypto/chacha_generic.c                      |   44 +-
 crypto/ecc.c                                 |    2 +-
 crypto/nhpoly1305.c                          |    3 +-
 crypto/poly1305_generic.c                    |  196 +-
 drivers/net/Kconfig                          |   30 +
 drivers/net/Makefile                         |    1 +
 drivers/net/wireguard/Makefile               |   18 +
 drivers/net/wireguard/allowedips.c           |  377 +
 drivers/net/wireguard/allowedips.h           |   59 +
 drivers/net/wireguard/cookie.c               |  236 +
 drivers/net/wireguard/cookie.h               |   59 +
 drivers/net/wireguard/device.c               |  460 ++
 drivers/net/wireguard/device.h               |   65 +
 drivers/net/wireguard/main.c                 |   64 +
 drivers/net/wireguard/messages.h             |  128 +
 drivers/net/wireguard/netlink.c              |  621 ++
 drivers/net/wireguard/netlink.h              |   12 +
 drivers/net/wireguard/noise.c                |  807 ++
 drivers/net/wireguard/noise.h                |  131 +
 drivers/net/wireguard/peer.c                 |  239 +
 drivers/net/wireguard/peer.h                 |   83 +
 drivers/net/wireguard/peerlookup.c           |  221 +
 drivers/net/wireguard/peerlookup.h           |   64 +
 drivers/net/wireguard/queueing.c             |   53 +
 drivers/net/wireguard/queueing.h             |  198 +
 drivers/net/wireguard/ratelimiter.c          |  223 +
 drivers/net/wireguard/ratelimiter.h          |   19 +
 drivers/net/wireguard/receive.c              |  595 ++
 drivers/net/wireguard/selftest/allowedips.c  |  682 ++
 drivers/net/wireguard/selftest/counter.c     |  104 +
 drivers/net/wireguard/selftest/ratelimiter.c |  226 +
 drivers/net/wireguard/send.c                 |  424 +
 drivers/net/wireguard/socket.c               |  433 +
 drivers/net/wireguard/socket.h               |   44 +
 drivers/net/wireguard/timers.c               |  241 +
 drivers/net/wireguard/timers.h               |   31 +
 drivers/net/wireguard/version.h              |    1 +
 include/crypto/blake2s.h                     |   56 +
 include/crypto/chacha.h                      |   58 +-
 include/crypto/chacha20poly1305.h            |   48 +
 include/crypto/curve25519.h                  |   28 +
 include/crypto/internal/chacha.h             |   25 +
 include/crypto/internal/poly1305.h           |   45 +
 include/crypto/poly1305.h                    |   43 +-
 include/uapi/linux/wireguard.h               |  190 +
 init/Kconfig                                 |    4 +
 lib/Makefile                                 |    3 +-
 lib/crypto/Makefile                          |   39 +-
 lib/crypto/blake2s-selftest.c                | 2093 +++++
 lib/crypto/blake2s.c                         |  281 +
 lib/{ => crypto}/chacha.c                    |   37 +-
 lib/crypto/chacha20poly1305-selftest.c       | 7394 ++++++++++++++++++
 lib/crypto/chacha20poly1305.c                |  370 +
 lib/crypto/curve25519-fiat32.c               |  864 ++
 lib/crypto/curve25519-hacl64.c               |  788 ++
 lib/crypto/curve25519-selftest.c             | 1321 ++++
 lib/crypto/curve25519.c                      |   86 +
 lib/crypto/poly1305.c                        |  247 +
 lib/ubsan.c                                  |    2 +-
 lib/ubsan.h                                  |    2 +-
 tools/testing/selftests/wireguard/netns.sh   |  503 ++
 87 files changed, 31549 insertions(+), 372 deletions(-)
 create mode 100644 arch/arm/crypto/curve25519-core.S
 create mode 100644 arch/arm/crypto/curve25519-glue.c
 create mode 100644 arch/arm/crypto/poly1305-armv4.pl
 create mode 100644 arch/arm/crypto/poly1305-core.S_shipped
 create mode 100644 arch/arm/crypto/poly1305-glue.c
 create mode 100644 arch/arm64/crypto/poly1305-armv8.pl
 create mode 100644 arch/arm64/crypto/poly1305-core.S_shipped
 create mode 100644 arch/arm64/crypto/poly1305-glue.c
 create mode 100644 arch/x86/crypto/blake2s-core.S
 create mode 100644 arch/x86/crypto/blake2s-glue.c
 create mode 100644 arch/x86/crypto/curve25519-x86_64.c
 create mode 100644 drivers/net/wireguard/Makefile
 create mode 100644 drivers/net/wireguard/allowedips.c
 create mode 100644 drivers/net/wireguard/allowedips.h
 create mode 100644 drivers/net/wireguard/cookie.c
 create mode 100644 drivers/net/wireguard/cookie.h
 create mode 100644 drivers/net/wireguard/device.c
 create mode 100644 drivers/net/wireguard/device.h
 create mode 100644 drivers/net/wireguard/main.c
 create mode 100644 drivers/net/wireguard/messages.h
 create mode 100644 drivers/net/wireguard/netlink.c
 create mode 100644 drivers/net/wireguard/netlink.h
 create mode 100644 drivers/net/wireguard/noise.c
 create mode 100644 drivers/net/wireguard/noise.h
 create mode 100644 drivers/net/wireguard/peer.c
 create mode 100644 drivers/net/wireguard/peer.h
 create mode 100644 drivers/net/wireguard/peerlookup.c
 create mode 100644 drivers/net/wireguard/peerlookup.h
 create mode 100644 drivers/net/wireguard/queueing.c
 create mode 100644 drivers/net/wireguard/queueing.h
 create mode 100644 drivers/net/wireguard/ratelimiter.c
 create mode 100644 drivers/net/wireguard/ratelimiter.h
 create mode 100644 drivers/net/wireguard/receive.c
 create mode 100644 drivers/net/wireguard/selftest/allowedips.c
 create mode 100644 drivers/net/wireguard/selftest/counter.c
 create mode 100644 drivers/net/wireguard/selftest/ratelimiter.c
 create mode 100644 drivers/net/wireguard/send.c
 create mode 100644 drivers/net/wireguard/socket.c
 create mode 100644 drivers/net/wireguard/socket.h
 create mode 100644 drivers/net/wireguard/timers.c
 create mode 100644 drivers/net/wireguard/timers.h
 create mode 100644 drivers/net/wireguard/version.h
 create mode 100644 include/crypto/blake2s.h
 create mode 100644 include/crypto/chacha20poly1305.h
 create mode 100644 include/crypto/curve25519.h
 create mode 100644 include/crypto/internal/chacha.h
 create mode 100644 include/crypto/internal/poly1305.h
 create mode 100644 include/uapi/linux/wireguard.h
 create mode 100644 lib/crypto/blake2s-selftest.c
 create mode 100644 lib/crypto/blake2s.c
 rename lib/{ => crypto}/chacha.c (76%)
 create mode 100644 lib/crypto/chacha20poly1305-selftest.c
 create mode 100644 lib/crypto/chacha20poly1305.c
 create mode 100644 lib/crypto/curve25519-fiat32.c
 create mode 100644 lib/crypto/curve25519-hacl64.c
 create mode 100644 lib/crypto/curve25519-selftest.c
 create mode 100644 lib/crypto/curve25519.c
 create mode 100644 lib/crypto/poly1305.c
 create mode 100755 tools/testing/selftests/wireguard/netns.sh

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
