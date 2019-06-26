Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B94572C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 22:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/HyDC9dZtpUMcRg3n76qKNzrYbOkdBFuMWtXXMk52rA=; b=ZCs/V8FtUMuyYf
	vnddn+vEPqS7g+iyEG2YG2fyIMU1gW6sggO2Cyre5I6OriO2W3fMBS/JIp8YKvXoebLgMtXLnA10p
	ufOfyoyp4SsjNj1p5mt1Ipi0KZghxSZaJFl/mwsDK8UU0uUJt2QUAUBksFxcyS6vjRu5m5dfHX5a0
	ChZ/oBZgzTrtAIHPVJgypLEAL4KGZVrf5X+305ty20dA/I8svMsBhSSQti8kDl5DXuDs3B9lTpprt
	GVefJeGQqV8pU9GBx+0xilbKm/OXlqsYgVJrGubm0nU9wCwBDcu9MUFwhQv0VDYMtF2YtiHP1+11U
	eNYKxDCaTkSllk3RZDbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEjO-0003Nl-9k; Wed, 26 Jun 2019 20:41:26 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEis-0003MF-Hk
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 20:40:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so4266023wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 13:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NPjxqtyjQpYCgybS5zN78zffB956dgNyXrI9VH1y9Hc=;
 b=IIHfq8mCVktitxkEaThPZUfzgKbkr3QTYmX2SgJ6H0We5g1vtQscSIvE2OTtjaDQ3C
 +4+TjStEWDjMKdKm/SyAA12jVhu2yYFeSBuM58Ir1x0bsp/e9NJjODm2Ym6B4N7ZsTjD
 00GSJbQNyCvojnjTVMzq31XyKvzY4yUW7+XH3CVNURSYmQ01eNF2ukHpukfVQeiOYEsj
 2lOpFgA8UwWZ44zGgHx8ksc+gLrG8zfF5+p2cWP7oSzotuZ6S0ydvQwHL4G07DZKO302
 Miyt4b5mFXqFHGCyqD8VILdjvAlnF87KAp9rNGb7HW3qaaDvvfjcSOPcJw0bcpA+OQqU
 ivjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NPjxqtyjQpYCgybS5zN78zffB956dgNyXrI9VH1y9Hc=;
 b=R4aBuwHcag1QG30LT91/N4fw9xShhRhCeRVzJcQ2xkR9eZ0pRbBUJGqh+WT38rh0Uc
 vYcx/QfPN3WnKWjgAG5gD29W3B9dhOZCnzZxaA/re8tPXkTkBFsIu90ARd/gFYnZUOlh
 KbK0aJcmFMsuEEfKIIzg4wIrld4eaGHlccTzfZTGwDEy9C31l7Ab+rbvm6Q4E0KuUFg9
 IaNDEH03nmKdftyfzlhPHZNYHrIM4k99dLdZLTDaBvNfAY19GmGljd8Krx3cU9WSVtNg
 rSWd47KqflSGDwjwYtGQlbZRYa6rbtiKYj3SWNVxOAcYIRFN/8QY5ePFgmqiE2jIF2Yu
 WCGQ==
X-Gm-Message-State: APjAAAVDLvCf8iknE/5ahqmJamOaZfzvpRTrxpfY+CmEgkUbC17D0QHT
 vCgLSeE/lWpu+YeME5q9qpyloA==
X-Google-Smtp-Source: APXvYqzyPP2kqpROYclJaOZTSu+oBTttt7ijJE2qrnLMB35rJqOYfqlpYR3U9Q9USBzOTxHA6dZ5xA==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr5328474wrv.89.1561581651363;
 Wed, 26 Jun 2019 13:40:51 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:9c7f:f574:ee94:7dec])
 by smtp.gmail.com with ESMTPSA id 32sm35164587wra.35.2019.06.26.13.40.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 13:40:50 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v5 0/7] crypto: switch to crypto API for ESSIV generation
Date: Wed, 26 Jun 2019 22:40:40 +0200
Message-Id: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_134054_931269_9F1DDAE8 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-fscrypt@vger.kernel.org, Gilad Ben-Yossef <gilad@benyossef.com>,
 dm-devel@redhat.com, Milan Broz <gmazyland@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series creates an ESSIV template that produces a skcipher or AEAD
transform based on a tuple of the form '<skcipher>,<cipher>,<shash>'
(or '<aead>,<cipher>,<shash>' for the AEAD case). It exposes the
encapsulated sync or async skcipher/aead by passing through all operations,
while using the cipher/shash pair to transform the input IV into an ESSIV
output IV.

This matches what both users of ESSIV in the kernel do, and so it is proposed
as a replacement for those, in patches #2 and #4.

This code has been tested using the fscrypt test suggested by Eric
(generic/549), as well as the mode-test script suggested by Milan for
the dm-crypt case. I also tested the aead case in a virtual machine,
but it definitely needs some wider testing from the dm-crypt experts.

The consensus appears to be that it would be useful if the crypto API
encapsulates the handling of multiple subsequent blocks that are
encrypted using a 64-bit LE counter as IV, and makes it the duty of
the algo to increment the counter between blocks. However, this is
equally suitable for non-ESSIV transforms (or even more so), and so
this is left as a future enhancement to  be applied on top.

Changes since v4:
- make the ESSIV template IV size equal the IV size of the encapsulated
  cipher - defining it as 8 bytes was needlessly restrictive, and also
  complicated the code for no reason
- add a missing kfree() spotted by Smatch
- add additional algo length name checks when constructing the essiv()
  cipher name
- reinstate the 'essiv' IV generation implementation in dm-crypt, but
  make its generation function identical to plain64le (and drop the other
  methods)
- fix a bug in the arm64 CE/NEON code
- simplify the arm64 code by reusing more of the existing CBC implementation
  (patch #6 is new to this series and was added for this reason)

Changes since v3:
- address various review comments from Eric on patch #1
- use Kconfig's 'imply' instead of 'select' to permit CRYPTO_ESSIV to be
  enabled as a module or disabled entirely even if fscrypt is compiled in (#2)
- fix an issue in the AEAD encrypt path caused by the IV being clobbered by
  the inner skcipher before the hmac was being calculated

Changes since v2:
- fixed a couple of bugs that snuck in after I'd done the bulk of my
  testing
- some cosmetic tweaks to the ESSIV template skcipher setkey function
  to align it with the aead one
- add a test case for essiv(cbc(aes),aes,sha256)
- add an accelerated implementation for arm64 that combines the IV
  derivation and the actual en/decryption in a single asm routine

Scroll down for tcrypt speed test result comparing the essiv template
with the asm implementation. Bare cbc(aes) tests included for reference
as well. Taken on a 2GHz Cortex-A57 (AMD Seattle)

Code can be found here
https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=essiv-v5

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Eric Biggers <ebiggers@google.com>
Cc: dm-devel@redhat.com
Cc: linux-fscrypt@vger.kernel.org
Cc: Gilad Ben-Yossef <gilad@benyossef.com>
Cc: Milan Broz <gmazyland@gmail.com>

Ard Biesheuvel (7):
  crypto: essiv - create wrapper template for ESSIV generation
  fs: crypto: invoke crypto API for ESSIV handling
  md: dm-crypt: infer ESSIV block cipher from cipher string directly
  md: dm-crypt: switch to ESSIV crypto API template
  crypto: essiv - add test vector for essiv(cbc(aes),aes,sha256)
  crypto: arm64/aes-cts-cbc - factor out CBC en/decryption of a walk
  crypto: arm64/aes - implement accelerated ESSIV/CBC mode

 arch/arm64/crypto/aes-glue.c  | 205 +++++--
 arch/arm64/crypto/aes-modes.S |  29 +-
 crypto/Kconfig                |   4 +
 crypto/Makefile               |   1 +
 crypto/essiv.c                | 636 ++++++++++++++++++++
 crypto/tcrypt.c               |   9 +
 crypto/testmgr.c              |   6 +
 crypto/testmgr.h              | 213 +++++++
 drivers/md/Kconfig            |   1 +
 drivers/md/dm-crypt.c         | 229 ++-----
 fs/crypto/Kconfig             |   1 +
 fs/crypto/crypto.c            |   5 -
 fs/crypto/fscrypt_private.h   |   9 -
 fs/crypto/keyinfo.c           |  88 +--
 14 files changed, 1111 insertions(+), 325 deletions(-)
 create mode 100644 crypto/essiv.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
