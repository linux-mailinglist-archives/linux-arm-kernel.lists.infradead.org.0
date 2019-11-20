Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7607C103C4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cT/WvmyGN+TeZc2xvw9DBwNBZCV4+7IOAKs9okJ14v8=; b=qor
	6NsE1wHgGmhPGV+QCPdHDQxB8mDKFDo2ZFpr3DFDjR63o5tZVABeEDPsQ9kgdIhB1BxlldKzZPpKb
	ARmZkLkmKq8lzAUoQwK+4XtKXC3zVWt9TaNKUeTfYpFh3C8KFVeLJXMxpURvXmkWS7n3YH95I35ef
	GS73rRYqyd0WfQ+Y+O+c3sgBbdQlDWhVLVuEsxmUOCYg2mQjUsgW023Rk9ilQ8GHTZstoO724S/mM
	jjc1YUOuvNXMx8fttC94kyBv6tibrbWsda+Jq6tG103Lxaur6uG4mJdvFT6WZHvTTEFMf1cNN8T9h
	vQpEXp+v8YACD0ssTEcfcGVGMZus1rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQFg-0006LH-Gw; Wed, 20 Nov 2019 13:42:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQFX-0006Ki-Mc
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 13:42:29 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50670224FA;
 Wed, 20 Nov 2019 13:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257347;
 bh=4eCLfgC28qakH7dppaeyPKULnqHRTTytQprs89UT4h0=;
 h=From:To:Cc:Subject:Date:From;
 b=KsiQcMPeCMJBqrz39phld9DGOKriGjNxugptomUEeuNvnK9yqJHb4thPICgnZEPGx
 Srv4EjljAt5ran4rAWCg982THMZtLtVeTH7o5g3tRgS9RFTBwsqe9ZZ6u5qLWWMklA
 DBdo9C5icjrQdbNhQg7TdoDz+msSeazcJAodc/ec=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] crypto: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:42:21 +0800
Message-Id: <20191120134221.15774-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054227_784059_F2229F23 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Krzysztof Kozlowski <krzk@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-crypto@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Atul Gupta <atul.gupta@chelsio.com>, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/crypto/Kconfig         |  4 ++--
 drivers/crypto/caam/Kconfig    | 14 +++++++-------
 drivers/crypto/chelsio/Kconfig | 30 +++++++++++++++---------------
 drivers/crypto/stm32/Kconfig   |  6 +++---
 drivers/crypto/ux500/Kconfig   | 16 ++++++++--------
 5 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 581021fab462..a60f1c5a702b 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -356,7 +356,7 @@ config CRYPTO_DEV_OMAP
 	depends on ARCH_OMAP2PLUS
 	help
 	  OMAP processors have various crypto HW accelerators. Select this if
-          you want to use the OMAP modules for any of the crypto algorithms.
+	  you want to use the OMAP modules for any of the crypto algorithms.
 
 if CRYPTO_DEV_OMAP
 
@@ -638,7 +638,7 @@ config CRYPTO_DEV_QCOM_RNG
 	  Generator hardware found on Qualcomm SoCs.
 
 	  To compile this driver as a module, choose M here. The
-          module will be called qcom-rng. If unsure, say N.
+	  module will be called qcom-rng. If unsure, say N.
 
 config CRYPTO_DEV_VMX
 	bool "Support for VMX cryptographic acceleration instructions"
diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
index 87053e46c788..fac5b2e26610 100644
--- a/drivers/crypto/caam/Kconfig
+++ b/drivers/crypto/caam/Kconfig
@@ -130,13 +130,13 @@ config CRYPTO_DEV_FSL_CAAM_AHASH_API
 	  scatterlist crypto API to the SEC4 via job ring.
 
 config CRYPTO_DEV_FSL_CAAM_PKC_API
-        bool "Register public key cryptography implementations with Crypto API"
-        default y
-        select CRYPTO_RSA
-        help
-          Selecting this will allow SEC Public key support for RSA.
-          Supported cryptographic primitives: encryption, decryption,
-          signature and verification.
+	bool "Register public key cryptography implementations with Crypto API"
+	default y
+	select CRYPTO_RSA
+	help
+	  Selecting this will allow SEC Public key support for RSA.
+	  Supported cryptographic primitives: encryption, decryption,
+	  signature and verification.
 
 config CRYPTO_DEV_FSL_CAAM_RNG_API
 	bool "Register caam device for hwrng API"
diff --git a/drivers/crypto/chelsio/Kconfig b/drivers/crypto/chelsio/Kconfig
index 91e424378217..f078b2686418 100644
--- a/drivers/crypto/chelsio/Kconfig
+++ b/drivers/crypto/chelsio/Kconfig
@@ -23,22 +23,22 @@ config CRYPTO_DEV_CHELSIO
 	  will be called chcr.
 
 config CHELSIO_IPSEC_INLINE
-        bool "Chelsio IPSec XFRM Tx crypto offload"
-        depends on CHELSIO_T4
+	bool "Chelsio IPSec XFRM Tx crypto offload"
+	depends on CHELSIO_T4
 	depends on CRYPTO_DEV_CHELSIO
-        depends on XFRM_OFFLOAD
-        depends on INET_ESP_OFFLOAD || INET6_ESP_OFFLOAD
-        default n
-        ---help---
-          Enable support for IPSec Tx Inline.
+	depends on XFRM_OFFLOAD
+	depends on INET_ESP_OFFLOAD || INET6_ESP_OFFLOAD
+	default n
+	---help---
+	  Enable support for IPSec Tx Inline.
 
 config CRYPTO_DEV_CHELSIO_TLS
-        tristate "Chelsio Crypto Inline TLS Driver"
-        depends on CHELSIO_T4
-        depends on TLS_TOE
-        select CRYPTO_DEV_CHELSIO
-        ---help---
-          Support Chelsio Inline TLS with Chelsio crypto accelerator.
+	tristate "Chelsio Crypto Inline TLS Driver"
+	depends on CHELSIO_T4
+	depends on TLS_TOE
+	select CRYPTO_DEV_CHELSIO
+	---help---
+	  Support Chelsio Inline TLS with Chelsio crypto accelerator.
 
-          To compile this driver as a module, choose M here: the module
-          will be called chtls.
+	  To compile this driver as a module, choose M here: the module
+	  will be called chtls.
diff --git a/drivers/crypto/stm32/Kconfig b/drivers/crypto/stm32/Kconfig
index 1aba9372cd23..4ef3eb11361c 100644
--- a/drivers/crypto/stm32/Kconfig
+++ b/drivers/crypto/stm32/Kconfig
@@ -4,7 +4,7 @@ config CRYPTO_DEV_STM32_CRC
 	depends on ARCH_STM32
 	select CRYPTO_HASH
 	help
-          This enables support for the CRC32 hw accelerator which can be found
+	  This enables support for the CRC32 hw accelerator which can be found
 	  on STMicroelectronics STM32 SOC.
 
 config CRYPTO_DEV_STM32_HASH
@@ -17,7 +17,7 @@ config CRYPTO_DEV_STM32_HASH
 	select CRYPTO_SHA256
 	select CRYPTO_ENGINE
 	help
-          This enables support for the HASH hw accelerator which can be found
+	  This enables support for the HASH hw accelerator which can be found
 	  on STMicroelectronics STM32 SOC.
 
 config CRYPTO_DEV_STM32_CRYP
@@ -27,5 +27,5 @@ config CRYPTO_DEV_STM32_CRYP
 	select CRYPTO_ENGINE
 	select CRYPTO_LIB_DES
 	help
-          This enables support for the CRYP (AES/DES/TDES) hw accelerator which
+	  This enables support for the CRYP (AES/DES/TDES) hw accelerator which
 	  can be found on STMicroelectronics STM32 SOC.
diff --git a/drivers/crypto/ux500/Kconfig b/drivers/crypto/ux500/Kconfig
index b731895aa241..f56d65c56ccf 100644
--- a/drivers/crypto/ux500/Kconfig
+++ b/drivers/crypto/ux500/Kconfig
@@ -11,18 +11,18 @@ config CRYPTO_DEV_UX500_CRYP
 	select CRYPTO_SKCIPHER
 	select CRYPTO_LIB_DES
 	help
-        This selects the crypto driver for the UX500_CRYP hardware. It supports
-        AES-ECB, CBC and CTR with keys sizes of 128, 192 and 256 bit sizes.
+	This selects the crypto driver for the UX500_CRYP hardware. It supports
+	AES-ECB, CBC and CTR with keys sizes of 128, 192 and 256 bit sizes.
 
 config CRYPTO_DEV_UX500_HASH
-        tristate "UX500 crypto driver for HASH block"
-        depends on CRYPTO_DEV_UX500
-        select CRYPTO_HASH
+	tristate "UX500 crypto driver for HASH block"
+	depends on CRYPTO_DEV_UX500
+	select CRYPTO_HASH
 	select CRYPTO_SHA1
 	select CRYPTO_SHA256
-        help
-          This selects the hash driver for the UX500_HASH hardware.
-          Depends on UX500/STM DMA if running in DMA mode.
+	help
+	  This selects the hash driver for the UX500_HASH hardware.
+	  Depends on UX500/STM DMA if running in DMA mode.
 
 config CRYPTO_DEV_UX500_DEBUG
 	bool "Activate ux500 platform debug-mode for crypto and hash block"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
