Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BECAD6252
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zfeLnP86IgI9xZiG3o0bWYnF/EM8BkH5IyN7TWV45Vc=; b=TRtsjm4g7QvL/u
	ze6dg/0IjPmkC8Iqe1oHcgOMdFl09kYv6XgtSmlngur1YabyXv8q4og7bA+8ENjJVo7DdJN6l1JWa
	oq0hR3AcYJ4dBLjwM8vQujS6MQmiiL1QU+xMANg9OIT+EHy6sOj1gTUFWKyICD7lV0tBzY/R9QbNt
	NO03saG/yAeA4lHuVJD4WUiBTFr8HyrtkRIBQtMSUNDTUU+q1y1gL56Bg64M6b8qaWzWDg7mR3VOQ
	812TFExQDkWowomQGwuzImoGYYsQGx+kGIKXMuwp4Cnw+5BtFIZ0lUwpTKvIXkVeIQluYVY2disae
	qC/XIDVWbIw4J6LSlLZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzLW-0004NG-HA; Mon, 14 Oct 2019 12:21:06 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzK7-0002aH-Uu
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:19:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so17057837wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YUyn6zjh6Xqdpf9taLeqUappHYvg4kIVAoZYT0lQFl8=;
 b=kyVXH2fCO5ekUqRJUZ6N9lLM4+cZai5N+ix8JipblthEivAEOZ00/eWvHfb0CbFFdM
 tb3tRAqM60GdU58DS1Xg0fuW4ymx2tyFVsSuM8KMgAxt/hhTGKDU+kkU6v8RVcqRiiU3
 yYM4Eim2yVIhvJ5EiuqmQMHeWb+TxAkenXqVJK0IDqt1CAEn4RBaB93xbnr+yj2oKVFj
 uJbyUX17EtllxxhPEMIcWu4sUaqOGitHcAzHwoFOXxquNHDr9U0LnLwmtoYP6n5kN3Op
 gQQxw7sOIs0hv8/fs3hl7Luq17JJxO+1gXhoQw6CtIvPpPeuTKrUL3+Xa+nd9dyC3eO3
 ts9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YUyn6zjh6Xqdpf9taLeqUappHYvg4kIVAoZYT0lQFl8=;
 b=SjVzlcwZCLW16iLiWtkKu+4QeDBki0Uha6TsvnGvv+uavhRfs4JuKlyny7myFBE8Ol
 KbOFCitnELf6boU9X+xo9nuxPp9K1UmICgyC1sGwMSPeVzdS0VrrITqW/UaJVtfux6CL
 Y9CUIzJl2i4xIU0ahTL7hnQw0ba9P4W8phrzRGLQpYSDutct7sXWAQonQ6werfm2FvsF
 8yOylchXJHsSm9HPHyv7jGMD+p+LNWQy42Y4xjB5j95iSmTFxpnL9QGOBQhn/odlurg6
 mjCznZ6bjryTq/u+PyJ3g4vfE0zM3+OxWasVuZ0t2l1oG94E2kD2zyJAZj3132tQmJQ4
 lWmA==
X-Gm-Message-State: APjAAAXl02slRIWh+3j6b/W7qPAdFNGoUx7YdRAdewejJ1wlH7BIoIGT
 F3xNIeviYMOPAy7FNt7YYVsSuA==
X-Google-Smtp-Source: APXvYqyfXx2pfaQ6thJnzfvHgdHIMj+8IIlg1HK0CAzPY/fQA5wHodw2KYV3h5W5ZMVlDdY58ySmfA==
X-Received: by 2002:a7b:caa9:: with SMTP id r9mr14433069wml.58.1571055577120; 
 Mon, 14 Oct 2019 05:19:37 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:36 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 00/25] crypto: convert h/w accelerator driver to skcipher API
Date: Mon, 14 Oct 2019 14:18:45 +0200
Message-Id: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051940_386758_4F4324A8 
X-CRM114-Status: GOOD (  11.42  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
long deprecated blkcipher code.

Patches #1, #2 are fixes for the virtio driver, which need to be applied
first so that they can be backported

Patches #3 and #4 have been tested on actual 'hardware' (given the virtual
nature of the virtio driver). Patch #7 was tested successfully in kernelci.

All other patches have been build tested *only*, and should be tested on
actual hardware before being merged.

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Biggers <ebiggers@google.com> 
Cc: linux-arm-kernel@lists.infradead.org

Ard Biesheuvel (25):
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
  crypto: picoxcell - switch to skcipher API
  crypto: sahara - switch to skcipher API
  crypto: stm32 - switch to skcipher API
  crypto: rockchip - switch to skcipher API
  crypto: qce - switch to skcipher API
  crypto: niagara2 - switch to skcipher API
  crypto: talitos - switch to skcipher API
  crypto: qat - switch to skcipher API

 drivers/crypto/Kconfig                             |   2 +-
 drivers/crypto/atmel-aes.c                         | 507 +++++++++---------
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
 drivers/crypto/chelsio/chcr_algo.c                 | 332 ++++++------
 drivers/crypto/chelsio/chcr_algo.h                 |   2 +-
 drivers/crypto/chelsio/chcr_crypto.h               |  14 +-
 drivers/crypto/hifn_795x.c                         | 183 +++----
 drivers/crypto/ixp4xx_crypto.c                     | 228 ++++----
 drivers/crypto/mediatek/mtk-aes.c                  | 248 ++++-----
 drivers/crypto/mxs-dcp.c                           | 140 +++--
 drivers/crypto/n2_core.c                           | 194 ++++---
 drivers/crypto/omap-aes.c                          | 208 ++++----
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
 drivers/crypto/s5p-sss.c                           | 191 ++++---
 drivers/crypto/sahara.c                            | 156 +++---
 drivers/crypto/stm32/stm32-cryp.c                  | 338 ++++++------
 drivers/crypto/talitos.c                           | 306 +++++------
 drivers/crypto/ux500/cryp/cryp_core.c              | 371 ++++++-------
 drivers/crypto/virtio/virtio_crypto_algs.c         | 192 +++----
 drivers/crypto/virtio/virtio_crypto_common.h       |   2 +-
 46 files changed, 3487 insertions(+), 3826 deletions(-)
 rename drivers/crypto/qce/{ablkcipher.c => skcipher.c} (61%)
 delete mode 100644 drivers/crypto/rockchip/rk3288_crypto_ablkcipher.c
 create mode 100644 drivers/crypto/rockchip/rk3288_crypto_skcipher.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
