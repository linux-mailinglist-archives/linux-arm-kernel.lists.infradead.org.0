Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796A7E33FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IddpqQXwR30p7JVN4hxckHSTabqTgCb6KqXcFd4evvo=; b=PoM8XdpuYB45nZ
	azwZDLyFVi8DfBO59MTI74oI4fb1vMg29zaujudxJzDbZj5ouBx4aV+V0Y3sO7UsyHJk7AKc5OGlh
	Iv69O/lp2FKE6O7bAt0X/WcTnLZgSZmxbk7cIy+Cl4LSfWrAvw/fRJV48Ijcjs2NNCawYt20IHpHk
	gcYMlpZbxwhap9gmllLIR1k8Y5yqzWFh9XbiQkw6rkbvgeqiJhKDxt6mMHwV/w4meZpAFc/Yr0CH7
	GJGGXIZQI+Mq0jX3pfg/7V+HqBeR9Azek1UwJz0HtJRhUhOInMk9tQiocjmGlBP0W1NDWWB1qDaDG
	zpq4KD0/bhA8ujjbxovQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNd6C-0000Qe-6K; Thu, 24 Oct 2019 13:24:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd5o-0000PS-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:23:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id q130so2428602wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DoNY5nhcqsMX/VQdm/2dcVh9uYGHVkxgyi2II9TO5gA=;
 b=Nwg9+/NhdSEA6IEeKNiYDBZDjsX3VE5Ct0kBDiFDIVw6kdN2IX29d3JRNVeH4liTbB
 9Fp375ux6S8PS0l5OxAt4qY6kS9+p9PAuzeGdPN/1y3V+Uv/7MWVoR+lbLVX+u8BOl6x
 Xv8QJrYzwGmb2ZjNuCPDWEiAA7IWrOAL1d0K0nsb9XYn/eVULEMWn+oPM91HlG0Dqvho
 q+HG5yraQqN+hrPmdyzs1XknB4rM6z2Jfe7kcqJ4OR9rH76nMSzvznwcd/QVQW2QOxEZ
 d4Y+OIRyNnsv3AIhhfRqUiWWtS0SalqsmpJC92Hb7a7k/byQMF23jNXFV3x7VleDOImm
 Ay/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DoNY5nhcqsMX/VQdm/2dcVh9uYGHVkxgyi2II9TO5gA=;
 b=dT6rpoSxQo3cqJGEDWlijMsL1cVsdU3ZEK2CzeaUN/JmsuU5cVx7Q6afr4ztjlTsUG
 FRqzTntjN6407ltOwGclt75JbYD4fnOQYITYcXBJB9RRM4qWuqys0+17j3kMkBCrKKuO
 h6mgbmRSD1JQG7OslAxYgub2LNU3BC3f2vt5zvtPji1ksKgIfGmw6whYc92sFbU8ZllH
 gp0UUR0v9hyWeEGymOEDZ1S8AcjWmoN+m0PHrL0evE8Gi2W48BZKyRsHInTZNbU2WqCt
 hU1bKisP6c1U4pal6segT0sd8T65YEezCx30DbCEKDlbCOSXmkhITMdIP8JWfFaQQnFy
 02Qw==
X-Gm-Message-State: APjAAAUwSpmsgxjiIcrnJ4wWlIXXmAdV61oAEo6CCoKU3b6eU4tXoIgB
 taYaNlVMTXWKKs+Ox+WT1ubW3w==
X-Google-Smtp-Source: APXvYqz6lRExPxrZzq/HzNoGfVZ8/pwXegBhHlmrc4aa8vUCi3bYeW4zFsBDvQowv77K8bpN8RpCGQ==
X-Received: by 2002:a7b:c049:: with SMTP id u9mr4873589wmc.12.1571923434148;
 Thu, 24 Oct 2019 06:23:54 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:23:53 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 00/27] crypto: convert h/w accelerator drivers to skcipher
 API
Date: Thu, 24 Oct 2019 15:23:18 +0200
Message-Id: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062356_288530_E358C4BD 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series converts all drivers for h/w accelerators that produce the
ablkcipher API to the skcipher API, so that we can finally retire the
long deprecated [a]blkcipher code.

Changes since v1:
- remove some more [cosmetic] references to [a]blkcipher (#26-#27)
- add back missing IV for cbc(aes) in the omap driver, fixing a crash
- add Gary's ack to #4
- add Linus's ack to #6 and #15
- add Kamil's and Krzysztof's acks to #7
- fixed a bug in the Atmel patch (#8)
- add Horia's tested-by to #16
- add Dave's ack to #22

Patches #1, #2 are fixes for the virtio driver, which need to be applied
first so that they can be backported

Patches #3 and #4 have been tested on actual 'hardware' (given the virtual
nature of the virtio driver). Patch #7 was tested successfully in kernelci.
Patch #16 was tested by Horia.

All other patches have been build tested *only*, and should be tested on
actual hardware before being merged. Note that patches can be merged
piecemeal (with the exception of #1 .. #3) since there are no dependencies
between them.

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Biggers <ebiggers@google.com>
Cc: linux-arm-kernel@lists.infradead.org

Ard Biesheuvel (27):
  crypto: virtio - implement missing support for output IVs
  crypto: virtio - deal with unsupported input sizes
  crypto: virtio - switch to skcipher API
  crypto: ccp - switch from ablkcipher to skcipher
  crypto: omap - switch to skcipher API
  crypto: ux500 - switch to skcipher API
  crypto: s5p - switch to skcipher API
  crypto: atmel-aes - switch to skcipher API
  crypto: atmel-tdes - switch to skcipher API
  crypto: bcm-spu - switch to skcipher API
  crypto: nitrox - remove cra_type reference to ablkcipher
  crypto: cavium/cpt - switch to skcipher API
  crypto: chelsio - switch to skcipher API
  crypto: hifn - switch to skcipher API
  crypto: ixp4xx - switch to skcipher API
  crypto: mxs - switch to skcipher API
  crypto: mediatek - switch to skcipher API
  crypto: sahara - switch to skcipher API
  crypto: picoxcell - switch to skcipher API
  crypto: qce - switch to skcipher API
  crypto: stm32 - switch to skcipher API
  crypto: niagara2 - switch to skcipher API
  crypto: rockchip - switch to skcipher API
  crypto: talitos - switch to skcipher API
  crypto: qat - switch to skcipher API
  crypto: marvell/cesa - rename blkcipher to skcipher
  crypto: nx - remove stale comment referring to the blkcipher walk API

 drivers/crypto/Kconfig                             |   2 +-
 drivers/crypto/atmel-aes.c                         | 509 +++++++++---------
 drivers/crypto/atmel-tdes.c                        | 433 ++++++++-------
 drivers/crypto/bcm/cipher.c                        | 373 +++++++------
 drivers/crypto/bcm/cipher.h                        |  10 +-
 drivers/crypto/bcm/spu2.c                          |   6 +-
 drivers/crypto/cavium/cpt/cptvf_algs.c             | 292 +++++-----
 drivers/crypto/cavium/nitrox/nitrox_skcipher.c     |   1 -
 drivers/crypto/ccp/ccp-crypto-aes-galois.c         |   7 +-
 drivers/crypto/ccp/ccp-crypto-aes-xts.c            |  94 ++--
 drivers/crypto/ccp/ccp-crypto-aes.c                | 169 +++---
 drivers/crypto/ccp/ccp-crypto-des3.c               | 100 ++--
 drivers/crypto/ccp/ccp-crypto-main.c               |  14 +-
 drivers/crypto/ccp/ccp-crypto.h                    |  13 +-
 drivers/crypto/chelsio/chcr_algo.c                 | 334 ++++++------
 drivers/crypto/chelsio/chcr_algo.h                 |   2 +-
 drivers/crypto/chelsio/chcr_crypto.h               |  16 +-
 drivers/crypto/hifn_795x.c                         | 183 +++----
 drivers/crypto/ixp4xx_crypto.c                     | 228 ++++----
 drivers/crypto/marvell/cesa.h                      |   6 +-
 drivers/crypto/marvell/cipher.c                    |  14 +-
 drivers/crypto/mediatek/mtk-aes.c                  | 248 ++++-----
 drivers/crypto/mxs-dcp.c                           | 140 +++--
 drivers/crypto/n2_core.c                           | 194 ++++---
 drivers/crypto/nx/nx-aes-ccm.c                     |   5 -
 drivers/crypto/nx/nx-aes-gcm.c                     |   5 -
 drivers/crypto/omap-aes.c                          | 209 ++++----
 drivers/crypto/omap-aes.h                          |   4 +-
 drivers/crypto/omap-des.c                          | 232 ++++----
 drivers/crypto/picoxcell_crypto.c                  | 386 +++++++-------
 drivers/crypto/qat/qat_common/qat_algs.c           | 255 +++++----
 drivers/crypto/qat/qat_common/qat_crypto.h         |   4 +-
 drivers/crypto/qce/Makefile                        |   2 +-
 drivers/crypto/qce/cipher.h                        |   8 +-
 drivers/crypto/qce/common.c                        |  12 +-
 drivers/crypto/qce/common.h                        |   3 +-
 drivers/crypto/qce/core.c                          |   2 +-
 drivers/crypto/qce/{ablkcipher.c => skcipher.c}    | 172 +++---
 drivers/crypto/rockchip/Makefile                   |   2 +-
 drivers/crypto/rockchip/rk3288_crypto.c            |   8 +-
 drivers/crypto/rockchip/rk3288_crypto.h            |   3 +-
 drivers/crypto/rockchip/rk3288_crypto_ablkcipher.c | 556 --------------------
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c   | 538 +++++++++++++++++++
 drivers/crypto/s5p-sss.c                           | 187 ++++---
 drivers/crypto/sahara.c                            | 156 +++---
 drivers/crypto/stm32/stm32-cryp.c                  | 338 ++++++------
 drivers/crypto/talitos.c                           | 306 +++++------
 drivers/crypto/ux500/cryp/cryp_core.c              | 371 ++++++-------
 drivers/crypto/virtio/virtio_crypto_algs.c         | 192 +++----
 drivers/crypto/virtio/virtio_crypto_common.h       |   2 +-
 50 files changed, 3499 insertions(+), 3847 deletions(-)
 rename drivers/crypto/qce/{ablkcipher.c => skcipher.c} (61%)
 delete mode 100644 drivers/crypto/rockchip/rk3288_crypto_ablkcipher.c
 create mode 100644 drivers/crypto/rockchip/rk3288_crypto_skcipher.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
