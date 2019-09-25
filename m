Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB09BE225
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLNlBOGzO6sib8BRnoEx2wUPA7jam0jiWceWyF5Qqww=; b=VTHCoEjkWg38uR
	g/Cj6TDv/MUaUfJYTkO/lgzUz2S526aEdclB6wErICwQKfqUMqZxRHcQjZQF/Bf7akluNKxs7LJ9N
	1kZ/T3WtbYLMIu3LHmWW+o8ga1c/ywYlTCNzSGN8Jse8wmbVZfuBdvRhPg/xyr1V/m5BMchLv0Mqy
	RR2vTidMCp7tvvIgKKvITlpXEIYPinikMoZxXEw3Ewslkf4P+foJvWPgkRkoyUFRr4qphL6e9Juh3
	CUQeamf2gIlggSmNaa5ovcGF0xPSbt1aa/rQvbFgzWO3pB+uNl32nuR8USP4PH6+8xDjaMdH9ue/k
	JZqOUcvl+0uO31A88wSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9w8-000487-W3; Wed, 25 Sep 2019 16:14:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vJ-0003s1-G1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:13:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5so6425705wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ep/yuSVAFYEgAMQn7Kisz/KWJ9mfZfT3VNc1Z4+7S5k=;
 b=yL35GubiRvm7VFaewczEIvWMjzKcEJe9sy7IZqqjKdJonHFOANM6DR0tZ69NppJVNx
 QVUI5vrpRYyYFWmRIrA4WvJ5z9VgWTktuUMC0X5J8NL/IMk6X09XhE/9jn7hUQ0sxwPP
 e96BUxiU8I9rDK8zOEmjKgwqqG1WCqfPTm0pCBFwOwRJg9N0Ggp0UDQfSMXfM57CQW3Z
 81lDxBCoyRzR859OkO8ZFNmlpmb4nhx+1AbOAv0Qrf0rw95w5ZT/L/3Pr6hZOJWx1urB
 bgTMh+BXII0fOWOnjOkw83W+oiTOiA5ID+Yl+WRr8c7WtI38RVjZ/6SAouJo8C+gItRG
 V2hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ep/yuSVAFYEgAMQn7Kisz/KWJ9mfZfT3VNc1Z4+7S5k=;
 b=aAhD4TRvzLsNBdrJZfKraRaj4tNGWma3y58QmqmzsS0OLCoJHwPeS1T0a5vzp7qnpC
 L2deVNNzy36DDFdbw5YC2yVOrTeBOlAH/Mgn9MYGjDN1Odld4Tcqpdj4ClJrSwJTwbFp
 z27w7cSkW5V812pY9TlE3RedVSbfehPBEwJgla9F4bcqKXPN5xK/FOHC+0QOCt40XJMF
 Rz+UVUaH7XG2MfjsZbcf717g7OEDP37aAs46NIfihjkGKn49fVTwOW7L6nwoeUpLgXAZ
 GA8Z1U6ICt0pVRQzRc7cBk4g17EEHS85kOa/3wJ9DyfcyO+F2zf1A9IP+3Z02opkEZbp
 B1PA==
X-Gm-Message-State: APjAAAV0xlWh+XCFDc3HOSDGLK2EY9jt/8j8sSy/7zFtIZhS0bAIGu2o
 AjmzQrlA8oB7gvO3R02PhKknQQ==
X-Google-Smtp-Source: APXvYqxIvbCkyRYCrwtNGwpQSjTiroTmsCbVNp3o6Q5ayy/B6opbSf2X7M+JU6MsURH6ejUOD8a07Q==
X-Received: by 2002:a1c:2d85:: with SMTP id t127mr9040688wmt.81.1569428026587; 
 Wed, 25 Sep 2019 09:13:46 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.13.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:13:45 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Date: Wed, 25 Sep 2019 18:12:37 +0200
Message-Id: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091349_561809_DFD426C8 
X-CRM114-Status: GOOD (  23.98  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series proposes a way to incorporate WireGuard into the kernel
without relying on a wholesale replacement of the existing crypto
stack. It addresses two issues with the existing crypto API, i.e.,
the need to do a kmalloc() allocation for each request, and the fact
that it can only operate on scatterlists, which limits the user to
data that is already accessible via an address in the linear map.

In the implementation of WireGuard, there are a number of dependencies
on cryptographic transformations:
- curve25519, blake2s, and [x]chach20poy1305 are all being used in the
  protocol handling, handshakes etc, mostly using inputs of a fixed, short
  length, mostly allocated on the stack
- chach20poy1305 is used for en/decrypting the actual packet data, using
  scatterlists to describe where the packet data is stored in memory.

The latter transformation is 99% compatible with the existing RFC7539
IPsec template in the crypto API, which means we already have the
plumbing to instantiate the correct transforms based on implementations
of ChaCha20 and Poly1305 that are provided per-architecture. Patch #18
shows the changes that need to be made to WireGuard to switch to the
crypto API for handling the packets. 

The remaining uses of [x]chacha20poly1305 operate on stack buffers, and
so switching to the crypto AEAD API is not as straight forward. However,
for these cases, as well as the uses of blake2s and curve25519, the fact
that they operate on small, fixed size buffers means that there is
really no point in providing alternative, SIMD based implementations of
these, and we can limit ourselves to generic C library version. 

Patches #1 .. #8 make some changes to the existing RFC7539 template and
the underlying ChaCha and Poly1305 drivers to reduce the number of times
that the template calls into the drivers, and to permit users of the
template to allocate the request structure on the stack instead of on
the heap, which removes the need for doing per-packet heap allocations
on the hot path.

Patches #9 and #10 refactor the existing Poly1305 code so we can easily
layer the Chacha20Poly1305 construction library on top in patch #14.

Patches #12 and #13 import the C implementations of blake2s and Curev25519
from the Zinc patch set, but moves them into lib/crypto, which is where
we keep generic crypto library C code. (Patch #11 is a preparatory patch for
patch #13.) The selftests are included as well.

Patch #14 incorporates the [x]chach20poly1305 library interface from Zinc,
but instead of providing numerous new implementation of Chacha20 and Poly1305,
it is built on top of the existing Chacha and Poly1305 library code that we
already have in the kernel. The original selftests that operate on 64-bit
nonces are included as well. (The ones using 96-bit nonces were dropped,
since the library interface [as it was defined originally] only supports
64-bit nonces in the first place)

Patch #15 is the original patch that adds WireGuard itself, and was taken
from the last series that Jason sent to the list ~6 months ago. It is
included verbatim to better illustrate the nature of the changes being
applied in the move to the crypto API.

Patch #16 is a followup fix for WireGuard that was taken from Jason's
repository, and is required to run WireGuard on recent kernels.

Patch #17 moves wireguard over to the crypto library headers in crypto/
rather than in zinc/

Patch #18 switches wireguard from the chach20poly1305 library API to
the crypto API. Note that RFC7539 defines a 96-bit nonce whereas WireGuard
only uses 64-bits, so some of the changes in this patch were needed just to
account for that.

Note that support for the rfc7539(chacha20,poly1305) algorithm has already
been implemented by at least two drivers for asynchronous accelerators, and
it seems relatively straight-forward to modify WireGuard further to support
asynchronous completions, and offload all the per-packet crypto to a separate
IP block. (People have argued in the past that accelerators are irrelevant
since CPUs perform better, but 'speed' is not the only performance metric
that people care about - 'battery life' is another one that comes to mind)

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

Ard Biesheuvel (15):
  crypto: shash - add plumbing for operating on scatterlists
  crypto: x86/poly1305 - implement .update_from_sg method
  crypto: arm/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON
    implementation
  crypto: arm64/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON
    implementation
  crypto: chacha - move existing library code into lib/crypto
  crypto: rfc7539 - switch to shash for Poly1305
  crypto: rfc7539 - use zero reqsize for sync instantiations without
    alignmask
  crypto: testmgr - add a chacha20poly1305 test case
  crypto: poly1305 - move core algorithm into lib/crypto
  crypto: poly1305 - add init/update/final library routines
  int128: move __uint128_t compiler test to Kconfig
  crypto: chacha20poly1305 - import construction and selftest from Zinc
  netlink: use new strict length types in policy for 5.2
  wg switch to lib/crypto algos
  net: wireguard - switch to crypto API for packet encryption

Jason A. Donenfeld (3):
  crypto: BLAKE2s - generic C library implementation and selftest
  crypto: Curve25519 - generic C library implementations and selftest
  net: WireGuard secure network tunnel

 MAINTAINERS                                  |    8 +
 arch/arm/crypto/Kconfig                      |    3 +
 arch/arm/crypto/Makefile                     |    7 +-
 arch/arm/crypto/chacha-neon-glue.c           |    2 +-
 arch/arm/crypto/poly1305-armv4.pl            | 1236 ++++
 arch/arm/crypto/poly1305-core.S_shipped      | 1158 +++
 arch/arm/crypto/poly1305-glue.c              |  253 +
 arch/arm64/crypto/Kconfig                    |    4 +
 arch/arm64/crypto/Makefile                   |    9 +-
 arch/arm64/crypto/chacha-neon-glue.c         |    2 +-
 arch/arm64/crypto/poly1305-armv8.pl          |  913 +++
 arch/arm64/crypto/poly1305-core.S_shipped    |  835 +++
 arch/arm64/crypto/poly1305-glue.c            |  215 +
 arch/x86/crypto/chacha_glue.c                |    2 +-
 arch/x86/crypto/poly1305_glue.c              |   56 +-
 crypto/Kconfig                               |   14 +
 crypto/adiantum.c                            |    5 +-
 crypto/ahash.c                               |   18 +
 crypto/chacha20poly1305.c                    |  540 +-
 crypto/chacha_generic.c                      |   42 +-
 crypto/ecc.c                                 |    2 +-
 crypto/nhpoly1305.c                          |    3 +-
 crypto/poly1305_generic.c                    |  218 +-
 crypto/shash.c                               |   24 +
 crypto/testmgr.h                             |   45 +
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
 drivers/net/wireguard/noise.c                |  837 +++
 drivers/net/wireguard/noise.h                |  132 +
 drivers/net/wireguard/peer.c                 |  239 +
 drivers/net/wireguard/peer.h                 |   83 +
 drivers/net/wireguard/peerlookup.c           |  221 +
 drivers/net/wireguard/peerlookup.h           |   64 +
 drivers/net/wireguard/queueing.c             |   53 +
 drivers/net/wireguard/queueing.h             |  199 +
 drivers/net/wireguard/ratelimiter.c          |  223 +
 drivers/net/wireguard/ratelimiter.h          |   19 +
 drivers/net/wireguard/receive.c              |  617 ++
 drivers/net/wireguard/selftest/allowedips.c  |  682 ++
 drivers/net/wireguard/selftest/counter.c     |  104 +
 drivers/net/wireguard/selftest/ratelimiter.c |  226 +
 drivers/net/wireguard/send.c                 |  442 ++
 drivers/net/wireguard/socket.c               |  433 ++
 drivers/net/wireguard/socket.h               |   44 +
 drivers/net/wireguard/timers.c               |  241 +
 drivers/net/wireguard/timers.h               |   31 +
 drivers/net/wireguard/version.h              |    1 +
 include/crypto/blake2s.h                     |   56 +
 include/crypto/chacha.h                      |   37 +-
 include/crypto/chacha20poly1305.h            |   37 +
 include/crypto/curve25519.h                  |   28 +
 include/crypto/hash.h                        |    3 +
 include/crypto/internal/chacha.h             |   25 +
 include/crypto/internal/hash.h               |   19 +
 include/crypto/internal/poly1305.h           |   33 +
 include/crypto/poly1305.h                    |   34 +-
 include/uapi/linux/wireguard.h               |  190 +
 init/Kconfig                                 |    1 +
 lib/Makefile                                 |    3 +-
 lib/crypto/Makefile                          |   39 +-
 lib/crypto/blake2s-selftest.c                | 2093 ++++++
 lib/crypto/blake2s.c                         |  274 +
 lib/{ => crypto}/chacha.c                    |   23 +
 lib/crypto/chacha20poly1305-selftest.c       | 7349 ++++++++++++++++++++
 lib/crypto/chacha20poly1305.c                |  216 +
 lib/crypto/curve25519-fiat32.c               |  864 +++
 lib/crypto/curve25519-hacl64.c               |  788 +++
 lib/crypto/curve25519-selftest.c             | 1321 ++++
 lib/crypto/curve25519.c                      |   73 +
 lib/crypto/poly1305.c                        |  216 +
 lib/ubsan.c                                  |    2 +-
 lib/ubsan.h                                  |    2 +-
 tools/testing/selftests/wireguard/netns.sh   |  503 ++
 84 files changed, 26192 insertions(+), 672 deletions(-)
 create mode 100644 arch/arm/crypto/poly1305-armv4.pl
 create mode 100644 arch/arm/crypto/poly1305-core.S_shipped
 create mode 100644 arch/arm/crypto/poly1305-glue.c
 create mode 100644 arch/arm64/crypto/poly1305-armv8.pl
 create mode 100644 arch/arm64/crypto/poly1305-core.S_shipped
 create mode 100644 arch/arm64/crypto/poly1305-glue.c
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
 rename lib/{ => crypto}/chacha.c (85%)
 create mode 100644 lib/crypto/chacha20poly1305-selftest.c
 create mode 100644 lib/crypto/chacha20poly1305.c
 create mode 100644 lib/crypto/curve25519-fiat32.c
 create mode 100644 lib/crypto/curve25519-hacl64.c
 create mode 100644 lib/crypto/curve25519-selftest.c
 create mode 100644 lib/crypto/curve25519.c
 create mode 100644 lib/crypto/poly1305.c
 create mode 100755 tools/testing/selftests/wireguard/netns.sh

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
