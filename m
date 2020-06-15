Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26E61F8F34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGRgdb2o+A0kmPFqg55S6W+ewHcHLhclxNaDleojnD4=; b=dS1Z8/nnyxbHFu
	VBs0WWa4jiJs/lye9YK18C8uH1xY9OvSFOrnPJ9GyJN654YdXHV0h9GQNrMlz68LI64ANfmYWqyME
	6WUQQPZnd+nxTmsm1kK7diqS2Jobui7Ow6eRFt+1j133zPklNiuPYNz7T3yEcDNb3mCwDto4+MgjX
	FIznCwF809h6u33/ywJy78d+xPffWwEintFWm2hwvRLkb/9a64WYv5lQUzK5z96rPhpE6V8douduj
	04ZVA9jbA3hP1yr8EoKKwFyFFTQoUqo8jqVOTtzpWHO//5VaBdPRfRP4YU3W6iP9JYI2sXtIPOB2D
	GVfASJfEcXUFbiJhrWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjMh-0008PY-IH; Mon, 15 Jun 2020 07:17:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjKq-0005Xs-Hd
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:15:22 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05F7F5cd013924;
 Mon, 15 Jun 2020 02:15:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592205305;
 bh=mXPp/TSHz/XeEt4f0aP6IlBlO6uiYe45QJNHO7BU9hs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=jo2FcZx4cA0D0pxk9KyNZ0ir5nocmzWL6MEaR4T0jclZrSay3LIzqCab6D3Fb3M9g
 z0vI/E99a2cLEl2eFa38xDo/oOLdL/g3IofpC1hwA5l0DSklgNZ34qxEhEgeC25elo
 PSVbiAjhjhW+OP9ad0CxccRwBb9IKbsfg/He2R04=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05F7F5gQ070901;
 Mon, 15 Jun 2020 02:15:05 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 02:15:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 02:15:04 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05F7Exr8062159;
 Mon, 15 Jun 2020 02:15:03 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <linux-crypto@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCHv4 2/7] crypto: sa2ul: Add crypto driver
Date: Mon, 15 Jun 2020 10:14:47 +0300
Message-ID: <20200615071452.25141-3-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200615071452.25141-1-t-kristo@ti.com>
References: <20200615071452.25141-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_001512_786041_D2315D7A 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: j-keerthy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Keerthy <j-keerthy@ti.com>

Adds a basic crypto driver and currently supports AES/3DES
in cbc mode for both encryption and decryption.

Signed-off-by: Keerthy <j-keerthy@ti.com>
[t-kristo@ti.com: major re-work to fix various bugs in the driver and to
 cleanup the code]
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/crypto/Kconfig  |   14 +
 drivers/crypto/Makefile |    1 +
 drivers/crypto/sa2ul.c  | 1391 +++++++++++++++++++++++++++++++++++++++
 drivers/crypto/sa2ul.h  |  380 +++++++++++
 4 files changed, 1786 insertions(+)
 create mode 100644 drivers/crypto/sa2ul.c
 create mode 100644 drivers/crypto/sa2ul.h

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 802b9ada4e9e..152a7ed538a4 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -865,4 +865,18 @@ source "drivers/crypto/hisilicon/Kconfig"
 
 source "drivers/crypto/amlogic/Kconfig"
 
+config CRYPTO_DEV_SA2UL
+	tristate "Support for TI security accelerator"
+	depends on ARCH_K3 || COMPILE_TEST
+	select ARM64_CRYPTO
+	select CRYPTO_AES
+	select CRYPTO_AES_ARM64
+	select CRYPTO_ALGAPI
+	select HW_RANDOM
+	select SG_SPLIT
+	help
+	  K3 devices include a security accelerator engine that may be
+	  used for crypto offload.  Select this if you want to use hardware
+	  acceleration for cryptographic algorithms on these devices.
+
 endif # CRYPTO_HW
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 944ed7226e37..53fc115cf459 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -38,6 +38,7 @@ obj-$(CONFIG_CRYPTO_DEV_QCE) += qce/
 obj-$(CONFIG_CRYPTO_DEV_QCOM_RNG) += qcom-rng.o
 obj-$(CONFIG_CRYPTO_DEV_ROCKCHIP) += rockchip/
 obj-$(CONFIG_CRYPTO_DEV_S5P) += s5p-sss.o
+obj-$(CONFIG_CRYPTO_DEV_SA2UL) += sa2ul.o
 obj-$(CONFIG_CRYPTO_DEV_SAHARA) += sahara.o
 obj-$(CONFIG_ARCH_STM32) += stm32/
 obj-$(CONFIG_CRYPTO_DEV_TALITOS) += talitos.o
diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
new file mode 100644
index 000000000000..67f3189d8e2c
--- /dev/null
+++ b/drivers/crypto/sa2ul.c
@@ -0,0 +1,1391 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * K3 SA2UL crypto accelerator driver
+ *
+ * Copyright (C) 2018-2020 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors:	Keerthy
+ *		Vitaly Andrianov
+ *		Tero Kristo
+ */
+#include <linux/clk.h>
+#include <linux/dmaengine.h>
+#include <linux/dmapool.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+
+#include <crypto/aes.h>
+#include <crypto/des.h>
+#include <crypto/internal/skcipher.h>
+#include <crypto/scatterwalk.h>
+
+#include "sa2ul.h"
+
+/* Byte offset for key in encryption security context */
+#define SC_ENC_KEY_OFFSET (1 + 27 + 4)
+/* Byte offset for Aux-1 in encryption security context */
+#define SC_ENC_AUX1_OFFSET (1 + 27 + 4 + 32)
+
+#define SA_CMDL_UPD_ENC         0x0001
+#define SA_CMDL_UPD_AUTH        0x0002
+#define SA_CMDL_UPD_ENC_IV      0x0004
+#define SA_CMDL_UPD_AUTH_IV     0x0008
+#define SA_CMDL_UPD_AUX_KEY     0x0010
+
+#define SA_AUTH_SUBKEY_LEN	16
+#define SA_CMDL_PAYLOAD_LENGTH_MASK	0xFFFF
+#define SA_CMDL_SOP_BYPASS_LEN_MASK	0xFF000000
+
+#define MODE_CONTROL_BYTES	27
+#define SA_HASH_PROCESSING	0
+#define SA_CRYPTO_PROCESSING	0
+#define SA_UPLOAD_HASH_TO_TLR	BIT(6)
+
+#define SA_SW0_FLAGS_MASK	0xF0000
+#define SA_SW0_CMDL_INFO_MASK	0x1F00000
+#define SA_SW0_CMDL_PRESENT	BIT(4)
+#define SA_SW0_ENG_ID_MASK	0x3E000000
+#define SA_SW0_DEST_INFO_PRESENT	BIT(30)
+#define SA_SW2_EGRESS_LENGTH		0xFF000000
+#define SA_BASIC_HASH		0x10
+
+#define SHA256_DIGEST_WORDS    8
+/* Make 32-bit word from 4 bytes */
+#define SA_MK_U32(b0, b1, b2, b3) (((b0) << 24) | ((b1) << 16) | \
+				   ((b2) << 8) | (b3))
+
+/* size of SCCTL structure in bytes */
+#define SA_SCCTL_SZ 16
+
+/* Max Authentication tag size */
+#define SA_MAX_AUTH_TAG_SZ 64
+
+#define PRIV_ID	0x1
+#define PRIV	0x1
+
+static struct device *sa_k3_dev;
+
+/**
+ * struct sa_cmdl_cfg - Command label configuration descriptor
+ * @enc_eng_id: Encryption Engine ID supported by the SA hardware
+ * @iv_size: Initialization Vector size
+ */
+struct sa_cmdl_cfg {
+	u8 enc_eng_id;
+	u8 iv_size;
+};
+
+/**
+ * struct algo_data - Crypto algorithm specific data
+ * @enc_eng: Encryption engine info structure
+ * @iv_idx: iv index in psdata
+ * @iv_out_size: iv out size
+ * @ealg_id: Encryption Algorithm ID
+ * @mci_enc: Mode Control Instruction for Encryption algorithm
+ * @mci_dec: Mode Control Instruction for Decryption
+ * @inv_key: Whether the encryption algorithm demands key inversion
+ * @ctx: Pointer to the algorithm context
+ */
+struct algo_data {
+	struct sa_eng_info enc_eng;
+	u8 iv_idx;
+	u8 iv_out_size;
+	u8 ealg_id;
+	u8 *mci_enc;
+	u8 *mci_dec;
+	bool inv_key;
+	struct sa_tfm_ctx *ctx;
+};
+
+/**
+ * struct sa_alg_tmpl: A generic template encompassing crypto/aead algorithms
+ * @type: Type of the crypto algorithm.
+ * @alg: Union of crypto algorithm definitions.
+ * @registered: Flag indicating if the crypto algorithm is already registered
+ */
+struct sa_alg_tmpl {
+	u32 type;		/* CRYPTO_ALG_TYPE from <linux/crypto.h> */
+	union {
+		struct skcipher_alg skcipher;
+	} alg;
+	bool registered;
+};
+
+/**
+ * struct sa_rx_data: RX Packet miscellaneous data place holder
+ * @req: crypto request data pointer
+ * @ddev: pointer to the DMA device
+ * @tx_in: dma_async_tx_descriptor pointer for rx channel
+ * @split_src_sg: Set if the src sg is split and needs to be freed up
+ * @split_dst_sg: Set if the dst sg is split and needs to be freed up
+ * @enc: Flag indicating either encryption or decryption
+ * @enc_iv_size: Initialisation vector size
+ * @iv_idx: Initialisation vector index
+ * @rx_sg: Static scatterlist entry for overriding RX data
+ * @tx_sg: Static scatterlist entry for overriding TX data
+ * @src: Source data pointer
+ * @dst: Destination data pointer
+ */
+struct sa_rx_data {
+	void *req;
+	struct device *ddev;
+	struct dma_async_tx_descriptor *tx_in;
+	struct scatterlist *split_src_sg;
+	struct scatterlist *split_dst_sg;
+	u8 enc;
+	u8 enc_iv_size;
+	u8 iv_idx;
+	struct scatterlist rx_sg;
+	struct scatterlist tx_sg;
+	struct scatterlist *src;
+	struct scatterlist *dst;
+};
+
+/**
+ * struct sa_req: SA request definition
+ * @dev: device for the request
+ * @size: total data to the xmitted via DMA
+ * @enc_offset: offset of cipher data
+ * @enc_size: data to be passed to cipher engine
+ * @env_iv: cipher IV
+ * @type: algorithm type for the request
+ * @cmdl: command label pointer
+ * @base: pointer to the base request
+ * @ctx: pointer to the algorithm context data
+ * @enc: true if this is an encode request
+ * @src: source data
+ * @dst: destination data
+ * @callback: DMA callback for the request
+ * @mdata_size: metadata size passed to DMA
+ */
+struct sa_req {
+	struct device *dev;
+	u16 size;
+	u8 enc_offset;
+	u16 enc_size;
+	u8 *enc_iv;
+	u32 type;
+	u32 *cmdl;
+	struct crypto_async_request *base;
+	struct sa_tfm_ctx *ctx;
+	bool enc;
+	struct scatterlist *src;
+	struct scatterlist *dst;
+	dma_async_tx_callback callback;
+	u16 mdata_size;
+};
+
+/*
+ * Mode Control Instructions for various Key lengths 128, 192, 256
+ * For CBC (Cipher Block Chaining) mode for encryption
+ */
+static u8 mci_cbc_enc_array[3][MODE_CONTROL_BYTES] = {
+	{	0x61, 0x00, 0x00, 0x18, 0x88, 0x0a, 0xaa, 0x4b, 0x7e, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x61, 0x00, 0x00, 0x18, 0x88, 0x4a, 0xaa, 0x4b, 0x7e, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x61, 0x00, 0x00, 0x18, 0x88, 0x8a, 0xaa, 0x4b, 0x7e, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+};
+
+/*
+ * Mode Control Instructions for various Key lengths 128, 192, 256
+ * For CBC (Cipher Block Chaining) mode for decryption
+ */
+static u8 mci_cbc_dec_array[3][MODE_CONTROL_BYTES] = {
+	{	0x71, 0x00, 0x00, 0x80, 0x8a, 0xca, 0x98, 0xf4, 0x40, 0xc0,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x71, 0x00, 0x00, 0x84, 0x8a, 0xca, 0x98, 0xf4, 0x40, 0xc0,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x71, 0x00, 0x00, 0x88, 0x8a, 0xca, 0x98, 0xf4, 0x40, 0xc0,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+};
+
+/*
+ * Mode Control Instructions for various Key lengths 128, 192, 256
+ * For ECB (Electronic Code Book) mode for encryption
+ */
+static u8 mci_ecb_enc_array[3][27] = {
+	{	0x21, 0x00, 0x00, 0x80, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x21, 0x00, 0x00, 0x84, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x21, 0x00, 0x00, 0x88, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+};
+
+/*
+ * Mode Control Instructions for various Key lengths 128, 192, 256
+ * For ECB (Electronic Code Book) mode for decryption
+ */
+static u8 mci_ecb_dec_array[3][27] = {
+	{	0x31, 0x00, 0x00, 0x80, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x31, 0x00, 0x00, 0x84, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+	{	0x31, 0x00, 0x00, 0x88, 0x8a, 0x04, 0xb7, 0x90, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	},
+};
+
+/*
+ * Mode Control Instructions for DES algorithm
+ * For CBC (Cipher Block Chaining) mode and ECB mode
+ * encryption and for decryption respectively
+ */
+static u8 mci_cbc_3des_enc_array[MODE_CONTROL_BYTES] = {
+	0x60, 0x00, 0x00, 0x18, 0x88, 0x52, 0xaa, 0x4b, 0x7e, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
+static u8 mci_cbc_3des_dec_array[MODE_CONTROL_BYTES] = {
+	0x70, 0x00, 0x00, 0x85, 0x0a, 0xca, 0x98, 0xf4, 0x40, 0xc0, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
+static u8 mci_ecb_3des_enc_array[MODE_CONTROL_BYTES] = {
+	0x20, 0x00, 0x00, 0x85, 0x0a, 0x04, 0xb7, 0x90, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
+static u8 mci_ecb_3des_dec_array[MODE_CONTROL_BYTES] = {
+	0x30, 0x00, 0x00, 0x85, 0x0a, 0x04, 0xb7, 0x90, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00,
+};
+
+/*
+ * Perform 16 byte or 128 bit swizzling
+ * The SA2UL Expects the security context to
+ * be in little Endian and the bus width is 128 bits or 16 bytes
+ * Hence swap 16 bytes at a time from higher to lower address
+ */
+static void sa_swiz_128(u8 *in, u16 len)
+{
+	u8 data[16];
+	int i, j;
+
+	for (i = 0; i < len; i += 16) {
+		memcpy(data, &in[i], 16);
+		for (j = 0; j < 16; j++)
+			in[i + j] = data[15 - j];
+	}
+}
+
+/* Derive the inverse key used in AES-CBC decryption operation */
+static inline int sa_aes_inv_key(u8 *inv_key, const u8 *key, u16 key_sz)
+{
+	struct crypto_aes_ctx ctx;
+	int key_pos;
+
+	if (aes_expandkey(&ctx, key, key_sz)) {
+		dev_err(sa_k3_dev, "%s: bad key len(%d)\n", __func__, key_sz);
+		return -EINVAL;
+	}
+
+	/* work around to get the right inverse for AES_KEYSIZE_192 size keys */
+	if (key_sz == AES_KEYSIZE_192) {
+		ctx.key_enc[52] = ctx.key_enc[51] ^ ctx.key_enc[46];
+		ctx.key_enc[53] = ctx.key_enc[52] ^ ctx.key_enc[47];
+	}
+
+	/* Based crypto_aes_expand_key logic */
+	switch (key_sz) {
+	case AES_KEYSIZE_128:
+	case AES_KEYSIZE_192:
+		key_pos = key_sz + 24;
+		break;
+
+	case AES_KEYSIZE_256:
+		key_pos = key_sz + 24 - 4;
+		break;
+
+	default:
+		dev_err(sa_k3_dev, "%s: bad key len(%d)\n", __func__, key_sz);
+		return -EINVAL;
+	}
+
+	memcpy(inv_key, &ctx.key_enc[key_pos], key_sz);
+	return 0;
+}
+
+/* Set Security context for the encryption engine */
+static int sa_set_sc_enc(struct algo_data *ad, const u8 *key, u16 key_sz,
+			 u8 enc, u8 *sc_buf)
+{
+	const u8 *mci = NULL;
+
+	/* Set Encryption mode selector to crypto processing */
+	sc_buf[0] = SA_CRYPTO_PROCESSING;
+
+	if (enc)
+		mci = ad->mci_enc;
+	else
+		mci = ad->mci_dec;
+	/* Set the mode control instructions in security context */
+	if (mci)
+		memcpy(&sc_buf[1], mci, MODE_CONTROL_BYTES);
+
+	/* For AES-CBC decryption get the inverse key */
+	if (ad->inv_key && !enc) {
+		if (sa_aes_inv_key(&sc_buf[SC_ENC_KEY_OFFSET], key, key_sz))
+			return -EINVAL;
+	/* For all other cases: key is used */
+	} else {
+		memcpy(&sc_buf[SC_ENC_KEY_OFFSET], key, key_sz);
+	}
+
+	return 0;
+}
+
+static inline void sa_copy_iv(u32 *out, const u8 *iv, bool size16)
+{
+	int j;
+
+	for (j = 0; j < ((size16) ? 4 : 2); j++) {
+		*out = cpu_to_be32(*((u32 *)iv));
+		iv += 4;
+		out++;
+	}
+}
+
+/* Format general command label */
+static int sa_format_cmdl_gen(struct sa_cmdl_cfg *cfg, u8 *cmdl,
+			      struct sa_cmdl_upd_info *upd_info)
+{
+	u8 enc_offset = 0, total = 0;
+	u8 enc_next_eng = SA_ENG_ID_OUTPORT2;
+	u32 *word_ptr = (u32 *)cmdl;
+	int i;
+
+	/* Clear the command label */
+	memzero_explicit(cmdl, (SA_MAX_CMDL_WORDS * sizeof(u32)));
+
+	/* Iniialize the command update structure */
+	memzero_explicit(upd_info, sizeof(*upd_info));
+
+	if (cfg->enc_eng_id != SA_ENG_ID_NONE)
+		total = SA_CMDL_HEADER_SIZE_BYTES;
+
+	if (cfg->iv_size)
+		total += cfg->iv_size;
+
+	enc_next_eng = SA_ENG_ID_OUTPORT2;
+
+	if (cfg->enc_eng_id != SA_ENG_ID_NONE) {
+		upd_info->flags |= SA_CMDL_UPD_ENC;
+		upd_info->enc_size.index = enc_offset >> 2;
+		upd_info->enc_offset.index = upd_info->enc_size.index + 1;
+		/* Encryption command label */
+		cmdl[enc_offset + SA_CMDL_OFFSET_NESC] = enc_next_eng;
+
+		/* Encryption modes requiring IV */
+		if (cfg->iv_size) {
+			upd_info->flags |= SA_CMDL_UPD_ENC_IV;
+			upd_info->enc_iv.index =
+				(enc_offset + SA_CMDL_HEADER_SIZE_BYTES) >> 2;
+			upd_info->enc_iv.size = cfg->iv_size;
+
+			cmdl[enc_offset + SA_CMDL_OFFSET_LABEL_LEN] =
+				SA_CMDL_HEADER_SIZE_BYTES + cfg->iv_size;
+
+			cmdl[enc_offset + SA_CMDL_OFFSET_OPTION_CTRL1] =
+				(SA_CTX_ENC_AUX2_OFFSET | (cfg->iv_size >> 3));
+			enc_offset += SA_CMDL_HEADER_SIZE_BYTES + cfg->iv_size;
+		} else {
+			cmdl[enc_offset + SA_CMDL_OFFSET_LABEL_LEN] =
+						SA_CMDL_HEADER_SIZE_BYTES;
+			enc_offset += SA_CMDL_HEADER_SIZE_BYTES;
+		}
+	}
+
+	total = roundup(total, 8);
+
+	for (i = 0; i < total / 4; i++)
+		word_ptr[i] = be32_to_cpu(word_ptr[i]);
+
+	return total;
+}
+
+/* Update Command label */
+static inline void sa_update_cmdl(struct sa_req *req, u32 *cmdl,
+				  struct sa_cmdl_upd_info *upd_info)
+{
+	int i = 0, j;
+
+	if (likely(upd_info->flags & SA_CMDL_UPD_ENC)) {
+		cmdl[upd_info->enc_size.index] &= ~SA_CMDL_PAYLOAD_LENGTH_MASK;
+		cmdl[upd_info->enc_size.index] |= req->enc_size;
+		cmdl[upd_info->enc_offset.index] &=
+						~SA_CMDL_SOP_BYPASS_LEN_MASK;
+		cmdl[upd_info->enc_offset.index] |=
+			((u32)req->enc_offset <<
+			 __ffs(SA_CMDL_SOP_BYPASS_LEN_MASK));
+
+		if (likely(upd_info->flags & SA_CMDL_UPD_ENC_IV)) {
+			u32 *data = &cmdl[upd_info->enc_iv.index];
+			u32 *enc_iv = (u32 *)req->enc_iv;
+
+			for (j = 0; i < upd_info->enc_iv.size; i += 4, j++) {
+				data[j] = cpu_to_be32(*enc_iv);
+				enc_iv++;
+			}
+		}
+	}
+}
+
+/* Format SWINFO words to be sent to SA */
+static
+void sa_set_swinfo(u8 eng_id, u16 sc_id, dma_addr_t sc_phys,
+		   u8 cmdl_present, u8 cmdl_offset, u8 flags,
+		   u8 hash_size, u32 *swinfo)
+{
+	swinfo[0] = sc_id;
+	swinfo[0] |= (flags << __ffs(SA_SW0_FLAGS_MASK));
+	if (likely(cmdl_present))
+		swinfo[0] |= ((cmdl_offset | SA_SW0_CMDL_PRESENT) <<
+						__ffs(SA_SW0_CMDL_INFO_MASK));
+	swinfo[0] |= (eng_id << __ffs(SA_SW0_ENG_ID_MASK));
+
+	swinfo[0] |= SA_SW0_DEST_INFO_PRESENT;
+	swinfo[1] = (u32)(sc_phys & 0xFFFFFFFFULL);
+	swinfo[2] = (u32)((sc_phys & 0xFFFFFFFF00000000ULL) >> 32);
+	swinfo[2] |= (hash_size << __ffs(SA_SW2_EGRESS_LENGTH));
+}
+
+/* Dump the security context */
+static void sa_dump_sc(u8 *buf, dma_addr_t dma_addr)
+{
+#ifdef DEBUG
+	dev_info(sa_k3_dev, "Security context dump:: 0x%pad\n", &dma_addr);
+	print_hex_dump(KERN_CONT, "", DUMP_PREFIX_OFFSET,
+		       16, 1, buf, SA_CTX_MAX_SZ, false);
+#endif
+}
+
+static
+int sa_init_sc(struct sa_ctx_info *ctx, const u8 *enc_key,
+	       u16 enc_key_sz, struct algo_data *ad, u8 enc, u32 *swinfo)
+{
+	int enc_sc_offset = 0;
+	u8 *sc_buf = ctx->sc;
+	u16 sc_id = ctx->sc_id;
+	u8 first_engine;
+
+	memzero_explicit(sc_buf, SA_CTX_MAX_SZ);
+
+	enc_sc_offset = SA_CTX_PHP_PE_CTX_SZ;
+
+	/* SCCTL Owner info: 0=host, 1=CP_ACE */
+	sc_buf[SA_CTX_SCCTL_OWNER_OFFSET] = 0;
+	/* SCCTL F/E control */
+	sc_buf[1] = SA_SCCTL_FE_ENC;
+	memcpy(&sc_buf[2], &sc_id, 2);
+	sc_buf[4] = 0x0;
+	sc_buf[5] = PRIV_ID;
+	sc_buf[6] = PRIV;
+	sc_buf[7] = 0x0;
+
+	/* Prepare context for encryption engine */
+	if (ad->enc_eng.sc_size) {
+		if (sa_set_sc_enc(ad, enc_key, enc_key_sz, enc,
+				  &sc_buf[enc_sc_offset]))
+			return -EINVAL;
+	}
+
+	/* Set the ownership of context to CP_ACE */
+	sc_buf[SA_CTX_SCCTL_OWNER_OFFSET] = 0x80;
+
+	/* swizzle the security context */
+	sa_swiz_128(sc_buf, SA_CTX_MAX_SZ);
+	/* Setup SWINFO */
+	first_engine = ad->enc_eng.eng_id;
+
+	sa_set_swinfo(first_engine, ctx->sc_id, ctx->sc_phys, 1, 0,
+		      SA_SW_INFO_FLAG_EVICT, ad->iv_out_size, swinfo);
+
+	sa_dump_sc(sc_buf, ctx->sc_phys);
+
+	return 0;
+}
+
+/* Free the per direction context memory */
+static void sa_free_ctx_info(struct sa_ctx_info *ctx,
+			     struct sa_crypto_data *data)
+{
+	unsigned long bn;
+
+	bn = ctx->sc_id - data->sc_id_start;
+	spin_lock(&data->scid_lock);
+	__clear_bit(bn, data->ctx_bm);
+	data->sc_id--;
+	spin_unlock(&data->scid_lock);
+
+	if (ctx->sc) {
+		dma_pool_free(data->sc_pool, ctx->sc, ctx->sc_phys);
+		ctx->sc = NULL;
+	}
+}
+
+static int sa_init_ctx_info(struct sa_ctx_info *ctx,
+			    struct sa_crypto_data *data)
+{
+	unsigned long bn;
+	int err;
+
+	spin_lock(&data->scid_lock);
+	bn = find_first_zero_bit(data->ctx_bm, SA_MAX_NUM_CTX);
+	__set_bit(bn, data->ctx_bm);
+	data->sc_id++;
+	spin_unlock(&data->scid_lock);
+
+	ctx->sc_id = (u16)(data->sc_id_start + bn);
+
+	ctx->sc = dma_pool_alloc(data->sc_pool, GFP_KERNEL, &ctx->sc_phys);
+	if (!ctx->sc) {
+		dev_err(&data->pdev->dev, "Failed to allocate SC memory\n");
+		err = -ENOMEM;
+		goto scid_rollback;
+	}
+
+	return 0;
+
+scid_rollback:
+	spin_lock(&data->scid_lock);
+	__clear_bit(bn, data->ctx_bm);
+	data->sc_id--;
+	spin_unlock(&data->scid_lock);
+
+	return err;
+}
+
+static void sa_cipher_cra_exit(struct crypto_skcipher *tfm)
+{
+	struct sa_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct sa_crypto_data *data = dev_get_drvdata(sa_k3_dev);
+
+	dev_dbg(sa_k3_dev, "%s(0x%p) sc-ids(0x%x(0x%pad), 0x%x(0x%pad))\n",
+		__func__, tfm, ctx->enc.sc_id, &ctx->enc.sc_phys,
+		ctx->dec.sc_id, &ctx->dec.sc_phys);
+
+	sa_free_ctx_info(&ctx->enc, data);
+	sa_free_ctx_info(&ctx->dec, data);
+
+	crypto_free_sync_skcipher(ctx->fallback.skcipher);
+}
+
+static int sa_cipher_cra_init(struct crypto_skcipher *tfm)
+{
+	struct sa_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);
+	struct sa_crypto_data *data = dev_get_drvdata(sa_k3_dev);
+	const char *name = crypto_tfm_alg_name(&tfm->base);
+	int ret;
+
+	memzero_explicit(ctx, sizeof(*ctx));
+	ctx->dev_data = data;
+
+	ret = sa_init_ctx_info(&ctx->enc, data);
+	if (ret)
+		return ret;
+	ret = sa_init_ctx_info(&ctx->dec, data);
+	if (ret) {
+		sa_free_ctx_info(&ctx->enc, data);
+		return ret;
+	}
+
+	ctx->fallback.skcipher =
+		crypto_alloc_sync_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
+
+	if (IS_ERR(ctx->fallback.skcipher)) {
+		dev_err(sa_k3_dev, "Error allocating fallback algo %s\n", name);
+		return PTR_ERR(ctx->fallback.skcipher);
+	}
+
+	dev_dbg(sa_k3_dev, "%s(0x%p) sc-ids(0x%x(0x%pad), 0x%x(0x%pad))\n",
+		__func__, tfm, ctx->enc.sc_id, &ctx->enc.sc_phys,
+		ctx->dec.sc_id, &ctx->dec.sc_phys);
+	return 0;
+}
+
+static int sa_cipher_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			    unsigned int keylen, struct algo_data *ad)
+{
+	struct sa_tfm_ctx *ctx = crypto_skcipher_ctx(tfm);
+
+	const char *cra_name;
+	int cmdl_len;
+	struct sa_cmdl_cfg cfg;
+	int ret;
+
+	if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
+	    keylen != AES_KEYSIZE_256)
+		return -EINVAL;
+
+	ad->enc_eng.eng_id = SA_ENG_ID_EM1;
+	ad->enc_eng.sc_size = SA_CTX_ENC_TYPE1_SZ;
+
+	cra_name = crypto_tfm_alg_name(&tfm->base);
+
+	memzero_explicit(&cfg, sizeof(cfg));
+	cfg.enc_eng_id = ad->enc_eng.eng_id;
+	cfg.iv_size = crypto_skcipher_ivsize(tfm);
+
+	crypto_sync_skcipher_clear_flags(ctx->fallback.skcipher,
+					 CRYPTO_TFM_REQ_MASK);
+	crypto_sync_skcipher_set_flags(ctx->fallback.skcipher,
+				       tfm->base.crt_flags &
+				       CRYPTO_TFM_REQ_MASK);
+	ret = crypto_sync_skcipher_setkey(ctx->fallback.skcipher, key, keylen);
+	if (ret)
+		return ret;
+
+	/* Setup Encryption Security Context & Command label template */
+	if (sa_init_sc(&ctx->enc, key, keylen, ad, 1, &ctx->enc.epib[1]))
+		goto badkey;
+
+	cmdl_len = sa_format_cmdl_gen(&cfg,
+				      (u8 *)ctx->enc.cmdl,
+				      &ctx->enc.cmdl_upd_info);
+	if (cmdl_len <= 0 || (cmdl_len > SA_MAX_CMDL_WORDS * sizeof(u32)))
+		goto badkey;
+
+	ctx->enc.cmdl_size = cmdl_len;
+
+	/* Setup Decryption Security Context & Command label template */
+	if (sa_init_sc(&ctx->dec, key, keylen, ad, 0, &ctx->dec.epib[1]))
+		goto badkey;
+
+	cfg.enc_eng_id = ad->enc_eng.eng_id;
+	cmdl_len = sa_format_cmdl_gen(&cfg, (u8 *)ctx->dec.cmdl,
+				      &ctx->dec.cmdl_upd_info);
+
+	if (cmdl_len <= 0 || (cmdl_len > SA_MAX_CMDL_WORDS * sizeof(u32)))
+		goto badkey;
+
+	ctx->dec.cmdl_size = cmdl_len;
+	ctx->iv_idx = ad->iv_idx;
+
+	return 0;
+
+badkey:
+	dev_err(sa_k3_dev, "%s: badkey\n", __func__);
+	return -EINVAL;
+}
+
+static int sa_aes_cbc_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			     unsigned int keylen)
+{
+	struct algo_data ad = { 0 };
+	/* Convert the key size (16/24/32) to the key size index (0/1/2) */
+	int key_idx = (keylen >> 3) - 2;
+
+	if (key_idx >= 3)
+		return -EINVAL;
+
+	ad.mci_enc = mci_cbc_enc_array[key_idx];
+	ad.mci_dec = mci_cbc_dec_array[key_idx];
+	ad.inv_key = true;
+	ad.ealg_id = SA_EALG_ID_AES_CBC;
+	ad.iv_idx = 4;
+	ad.iv_out_size = 16;
+
+	return sa_cipher_setkey(tfm, key, keylen, &ad);
+}
+
+static int sa_aes_ecb_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			     unsigned int keylen)
+{
+	struct algo_data ad = { 0 };
+	/* Convert the key size (16/24/32) to the key size index (0/1/2) */
+	int key_idx = (keylen >> 3) - 2;
+
+	if (key_idx >= 3)
+		return -EINVAL;
+
+	ad.mci_enc = mci_ecb_enc_array[key_idx];
+	ad.mci_dec = mci_ecb_dec_array[key_idx];
+	ad.inv_key = true;
+	ad.ealg_id = SA_EALG_ID_AES_ECB;
+
+	return sa_cipher_setkey(tfm, key, keylen, &ad);
+}
+
+static int sa_3des_cbc_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			      unsigned int keylen)
+{
+	struct algo_data ad = { 0 };
+
+	ad.mci_enc = mci_cbc_3des_enc_array;
+	ad.mci_dec = mci_cbc_3des_dec_array;
+	ad.ealg_id = SA_EALG_ID_3DES_CBC;
+	ad.iv_idx = 6;
+	ad.iv_out_size = 8;
+
+	return sa_cipher_setkey(tfm, key, keylen, &ad);
+}
+
+static int sa_3des_ecb_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			      unsigned int keylen)
+{
+	struct algo_data ad = { 0 };
+
+	ad.mci_enc = mci_ecb_3des_enc_array;
+	ad.mci_dec = mci_ecb_3des_dec_array;
+
+	return sa_cipher_setkey(tfm, key, keylen, &ad);
+}
+
+static void sa_aes_dma_in_callback(void *data)
+{
+	struct sa_rx_data *rxd = (struct sa_rx_data *)data;
+	struct skcipher_request *req;
+	int sglen;
+	u32 *mdptr, *result;
+	size_t ml, pl;
+	int i;
+	enum dma_data_direction dir_src;
+	bool diff_dst;
+
+	req = container_of(rxd->req, struct skcipher_request, base);
+	sglen = sg_nents_for_len(req->src, req->cryptlen);
+
+	diff_dst = (req->src != req->dst) ? true : false;
+	dir_src = diff_dst ? DMA_TO_DEVICE : DMA_BIDIRECTIONAL;
+
+	if (req->iv) {
+		mdptr = (u32 *)dmaengine_desc_get_metadata_ptr(rxd->tx_in, &pl,
+							       &ml);
+		result = (u32 *)req->iv;
+
+		for (i = 0; i < (rxd->enc_iv_size / 4); i++)
+			result[i] = htonl(mdptr[i + rxd->iv_idx]);
+	}
+
+	dma_unmap_sg(rxd->ddev, req->src, sglen, dir_src);
+	kfree(rxd->split_src_sg);
+
+	if (diff_dst) {
+		sglen = sg_nents_for_len(req->dst, req->cryptlen);
+
+		dma_unmap_sg(rxd->ddev, req->dst, sglen,
+			     DMA_FROM_DEVICE);
+		kfree(rxd->split_dst_sg);
+	}
+
+	kfree(rxd);
+
+	skcipher_request_complete(req, 0);
+}
+
+static void
+sa_prepare_tx_desc(u32 *mdptr, u32 pslen, u32 *psdata, u32 epiblen, u32 *epib)
+{
+	u32 *out, *in;
+	int i;
+
+	for (out = mdptr, in = epib, i = 0; i < epiblen / sizeof(u32); i++)
+		*out++ = *in++;
+
+	mdptr[4] = (0xFFFF << 16);
+	for (out = &mdptr[5], in = psdata, i = 0;
+	     i < pslen / sizeof(u32); i++)
+		*out++ = *in++;
+}
+
+static int sa_run(struct sa_req *req)
+{
+	struct sa_rx_data *rxd;
+	gfp_t gfp_flags;
+	u32 cmdl[SA_MAX_CMDL_WORDS];
+	struct sa_crypto_data *pdata = dev_get_drvdata(sa_k3_dev);
+	struct device *ddev;
+	struct dma_chan *dma_rx;
+	int sg_nents, src_nents, dst_nents;
+	int mapped_src_nents, mapped_dst_nents;
+	struct scatterlist *src, *dst;
+	size_t pl, ml, split_size;
+	struct sa_ctx_info *sa_ctx = req->enc ? &req->ctx->enc : &req->ctx->dec;
+	int ret;
+	struct dma_async_tx_descriptor *tx_out;
+	u32 *mdptr;
+	bool diff_dst;
+	enum dma_data_direction dir_src;
+
+	gfp_flags = req->base->flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
+		GFP_KERNEL : GFP_ATOMIC;
+
+	rxd = kzalloc(sizeof(*rxd), gfp_flags);
+	if (!rxd)
+		return -ENOMEM;
+
+	if (req->src != req->dst) {
+		diff_dst = true;
+		dir_src = DMA_TO_DEVICE;
+	} else {
+		diff_dst = false;
+		dir_src = DMA_BIDIRECTIONAL;
+	}
+
+	/*
+	 * SA2UL has an interesting feature where the receive DMA channel
+	 * is selected based on the data passed to the engine. Within the
+	 * transition range, there is also a space where it is impossible
+	 * to determine where the data will end up, and this should be
+	 * avoided. This will be handled by the SW fallback mechanism by
+	 * the individual algorithm implementations.
+	 */
+	if (req->size >= 256)
+		dma_rx = pdata->dma_rx2;
+	else
+		dma_rx = pdata->dma_rx1;
+
+	ddev = dma_rx->device->dev;
+
+	memcpy(cmdl, sa_ctx->cmdl, sa_ctx->cmdl_size);
+
+	sa_update_cmdl(req, cmdl, &sa_ctx->cmdl_upd_info);
+
+	if (req->type != CRYPTO_ALG_TYPE_AHASH) {
+		if (req->enc)
+			req->type |=
+				(SA_REQ_SUBTYPE_ENC << SA_REQ_SUBTYPE_SHIFT);
+		else
+			req->type |=
+				(SA_REQ_SUBTYPE_DEC << SA_REQ_SUBTYPE_SHIFT);
+	}
+
+	cmdl[sa_ctx->cmdl_size / sizeof(u32)] = req->type;
+
+	/*
+	 * Map the packets, first we check if the data fits into a single
+	 * sg entry and use that if possible. If it does not fit, we check
+	 * if we need to do sg_split to align the scatterlist data on the
+	 * actual data size being processed by the crypto engine.
+	 */
+	src = req->src;
+	sg_nents = sg_nents_for_len(src, req->size);
+
+	split_size = req->size;
+
+	if (sg_nents == 1 && split_size <= req->src->length) {
+		src = &rxd->rx_sg;
+		sg_init_table(src, 1);
+		sg_set_page(src, sg_page(req->src), split_size,
+			    req->src->offset);
+		src_nents = 1;
+		dma_map_sg(ddev, src, sg_nents, dir_src);
+	} else {
+		mapped_src_nents = dma_map_sg(ddev, req->src, sg_nents,
+					      dir_src);
+		ret = sg_split(req->src, mapped_src_nents, 0, 1, &split_size,
+			       &src, &src_nents, gfp_flags);
+		if (ret) {
+			src_nents = sg_nents;
+			src = req->src;
+		} else {
+			rxd->split_src_sg = src;
+		}
+	}
+
+	if (!diff_dst) {
+		dst_nents = src_nents;
+		dst = src;
+	} else {
+		dst_nents = sg_nents_for_len(req->dst, req->size);
+
+		if (dst_nents == 1 && split_size <= req->dst->length) {
+			dst = &rxd->tx_sg;
+			sg_init_table(dst, 1);
+			sg_set_page(dst, sg_page(req->dst), split_size,
+				    req->dst->offset);
+			dst_nents = 1;
+			dma_map_sg(ddev, dst, dst_nents, DMA_FROM_DEVICE);
+		} else {
+			mapped_dst_nents = dma_map_sg(ddev, req->dst, dst_nents,
+						      DMA_FROM_DEVICE);
+			ret = sg_split(req->dst, mapped_dst_nents, 0, 1,
+				       &split_size, &dst, &dst_nents,
+				       gfp_flags);
+			if (ret) {
+				dst_nents = dst_nents;
+				dst = req->dst;
+			} else {
+				rxd->split_dst_sg = dst;
+			}
+		}
+	}
+
+	if (unlikely(src_nents != sg_nents)) {
+		dev_warn_ratelimited(sa_k3_dev, "failed to map tx pkt\n");
+		ret = -EIO;
+		goto err_cleanup;
+	}
+
+	rxd->tx_in = dmaengine_prep_slave_sg(dma_rx, dst, dst_nents,
+					     DMA_DEV_TO_MEM,
+					     DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+	if (!rxd->tx_in) {
+		dev_err(pdata->dev, "IN prep_slave_sg() failed\n");
+		ret = -EINVAL;
+		goto err_cleanup;
+	}
+
+	rxd->req = (void *)req->base;
+	rxd->enc = req->enc;
+	rxd->ddev = ddev;
+	rxd->src = src;
+	rxd->dst = dst;
+	rxd->iv_idx = req->ctx->iv_idx;
+	rxd->enc_iv_size = sa_ctx->cmdl_upd_info.enc_iv.size;
+	rxd->tx_in->callback = req->callback;
+	rxd->tx_in->callback_param = rxd;
+
+	tx_out = dmaengine_prep_slave_sg(pdata->dma_tx, src,
+					 src_nents, DMA_MEM_TO_DEV,
+					 DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+
+	if (!tx_out) {
+		dev_err(pdata->dev, "OUT prep_slave_sg() failed\n");
+		ret = -EINVAL;
+		goto err_cleanup;
+	}
+
+	/*
+	 * Prepare metadata for DMA engine. This essentially describes the
+	 * crypto algorithm to be used, data sizes, different keys etc.
+	 */
+	mdptr = (u32 *)dmaengine_desc_get_metadata_ptr(tx_out, &pl, &ml);
+
+	sa_prepare_tx_desc(mdptr, (sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS *
+				   sizeof(u32))), cmdl, sizeof(sa_ctx->epib),
+			   sa_ctx->epib);
+
+	ml = sa_ctx->cmdl_size + (SA_PSDATA_CTX_WORDS * sizeof(u32));
+	dmaengine_desc_set_metadata_len(tx_out, req->mdata_size);
+
+	dmaengine_submit(tx_out);
+	dmaengine_submit(rxd->tx_in);
+
+	dma_async_issue_pending(dma_rx);
+	dma_async_issue_pending(pdata->dma_tx);
+
+	return -EINPROGRESS;
+
+err_cleanup:
+	dma_unmap_sg(ddev, req->src, sg_nents, DMA_TO_DEVICE);
+	kfree(rxd->split_src_sg);
+
+	if (req->src != req->dst) {
+		dst_nents = sg_nents_for_len(req->dst, req->size);
+		dma_unmap_sg(ddev, req->dst, dst_nents, DMA_FROM_DEVICE);
+		kfree(rxd->split_dst_sg);
+	}
+
+	kfree(rxd);
+
+	return ret;
+}
+
+static int sa_cipher_run(struct skcipher_request *req, u8 *iv, int enc)
+{
+	struct sa_tfm_ctx *ctx =
+	    crypto_skcipher_ctx(crypto_skcipher_reqtfm(req));
+	struct crypto_alg *alg = req->base.tfm->__crt_alg;
+	struct sa_req sa_req = { 0 };
+	int ret;
+
+	if (!req->cryptlen)
+		return 0;
+
+	if (req->cryptlen % alg->cra_blocksize)
+		return -EINVAL;
+
+	/* Use SW fallback if the data size is not supported */
+	if (req->cryptlen > SA_MAX_DATA_SZ ||
+	    (req->cryptlen >= SA_UNSAFE_DATA_SZ_MIN &&
+	     req->cryptlen <= SA_UNSAFE_DATA_SZ_MAX)) {
+		SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->fallback.skcipher);
+
+		skcipher_request_set_sync_tfm(subreq, ctx->fallback.skcipher);
+		skcipher_request_set_callback(subreq, req->base.flags,
+					      NULL, NULL);
+		skcipher_request_set_crypt(subreq, req->src, req->dst,
+					   req->cryptlen, req->iv);
+		if (enc)
+			ret = crypto_skcipher_encrypt(subreq);
+		else
+			ret = crypto_skcipher_decrypt(subreq);
+
+		skcipher_request_zero(subreq);
+		return ret;
+	}
+
+	sa_req.size = req->cryptlen;
+	sa_req.enc_size = req->cryptlen;
+	sa_req.src = req->src;
+	sa_req.dst = req->dst;
+	sa_req.enc_iv = iv;
+	sa_req.type = CRYPTO_ALG_TYPE_SKCIPHER;
+	sa_req.enc = enc;
+	sa_req.callback = sa_aes_dma_in_callback;
+	sa_req.mdata_size = 44;
+	sa_req.base = &req->base;
+	sa_req.ctx = ctx;
+
+	return sa_run(&sa_req);
+}
+
+static int sa_encrypt(struct skcipher_request *req)
+{
+	return sa_cipher_run(req, req->iv, 1);
+}
+
+static int sa_decrypt(struct skcipher_request *req)
+{
+	return sa_cipher_run(req, req->iv, 0);
+}
+
+static struct sa_alg_tmpl sa_algs[] = {
+	{
+		.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name		= "cbc(aes)",
+			.base.cra_driver_name	= "cbc-aes-sa2ul",
+			.base.cra_priority	= 30000,
+			.base.cra_flags		= CRYPTO_ALG_TYPE_SKCIPHER |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_NEED_FALLBACK,
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct sa_tfm_ctx),
+			.base.cra_module	= THIS_MODULE,
+			.init			= sa_cipher_cra_init,
+			.exit			= sa_cipher_cra_exit,
+			.min_keysize		= AES_MIN_KEY_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE,
+			.ivsize			= AES_BLOCK_SIZE,
+			.setkey			= sa_aes_cbc_setkey,
+			.encrypt		= sa_encrypt,
+			.decrypt		= sa_decrypt,
+		}
+	},
+	{
+		.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name		= "ecb(aes)",
+			.base.cra_driver_name	= "ecb-aes-sa2ul",
+			.base.cra_priority	= 30000,
+			.base.cra_flags		= CRYPTO_ALG_TYPE_SKCIPHER |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_NEED_FALLBACK,
+			.base.cra_blocksize	= AES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct sa_tfm_ctx),
+			.base.cra_module	= THIS_MODULE,
+			.init			= sa_cipher_cra_init,
+			.exit			= sa_cipher_cra_exit,
+			.min_keysize		= AES_MIN_KEY_SIZE,
+			.max_keysize		= AES_MAX_KEY_SIZE,
+			.setkey			= sa_aes_ecb_setkey,
+			.encrypt		= sa_encrypt,
+			.decrypt		= sa_decrypt,
+		}
+	},
+	{
+		.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name		= "cbc(des3_ede)",
+			.base.cra_driver_name	= "cbc-des3-sa2ul",
+			.base.cra_priority	= 30000,
+			.base.cra_flags		= CRYPTO_ALG_TYPE_SKCIPHER |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_NEED_FALLBACK,
+			.base.cra_blocksize	= DES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct sa_tfm_ctx),
+			.base.cra_module	= THIS_MODULE,
+			.init			= sa_cipher_cra_init,
+			.exit			= sa_cipher_cra_exit,
+			.min_keysize		= 3 * DES_KEY_SIZE,
+			.max_keysize		= 3 * DES_KEY_SIZE,
+			.ivsize			= DES_BLOCK_SIZE,
+			.setkey			= sa_3des_cbc_setkey,
+			.encrypt		= sa_encrypt,
+			.decrypt		= sa_decrypt,
+		}
+	},
+	{
+		.type = CRYPTO_ALG_TYPE_SKCIPHER,
+		.alg.skcipher = {
+			.base.cra_name		= "ecb(des3_ede)",
+			.base.cra_driver_name	= "ecb-des3-sa2ul",
+			.base.cra_priority	= 30000,
+			.base.cra_flags		= CRYPTO_ALG_TYPE_SKCIPHER |
+						  CRYPTO_ALG_KERN_DRIVER_ONLY |
+						  CRYPTO_ALG_ASYNC |
+						  CRYPTO_ALG_NEED_FALLBACK,
+			.base.cra_blocksize	= DES_BLOCK_SIZE,
+			.base.cra_ctxsize	= sizeof(struct sa_tfm_ctx),
+			.base.cra_module	= THIS_MODULE,
+			.init			= sa_cipher_cra_init,
+			.exit			= sa_cipher_cra_exit,
+			.min_keysize		= 3 * DES_KEY_SIZE,
+			.max_keysize		= 3 * DES_KEY_SIZE,
+			.setkey			= sa_3des_ecb_setkey,
+			.encrypt		= sa_encrypt,
+			.decrypt		= sa_decrypt,
+		}
+	},
+};
+
+/* Register the algorithms in crypto framework */
+void sa_register_algos(const struct device *dev)
+{
+	char *alg_name;
+	u32 type;
+	int i, err;
+
+	for (i = 0; i < ARRAY_SIZE(sa_algs); i++) {
+		type = sa_algs[i].type;
+		if (type == CRYPTO_ALG_TYPE_SKCIPHER) {
+			alg_name = sa_algs[i].alg.skcipher.base.cra_name;
+			err = crypto_register_skcipher(&sa_algs[i].alg.skcipher);
+		} else {
+			dev_err(dev,
+				"un-supported crypto algorithm (%d)",
+				sa_algs[i].type);
+			continue;
+		}
+
+		if (err)
+			dev_err(dev, "Failed to register '%s'\n", alg_name);
+		else
+			sa_algs[i].registered = true;
+	}
+}
+
+/* Unregister the algorithms in crypto framework */
+void sa_unregister_algos(const struct device *dev)
+{
+	u32 type;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(sa_algs); i++) {
+		type = sa_algs[i].type;
+		if (!sa_algs[i].registered)
+			continue;
+		if (type == CRYPTO_ALG_TYPE_SKCIPHER)
+			crypto_unregister_skcipher(&sa_algs[i].alg.skcipher);
+
+		sa_algs[i].registered = false;
+	}
+}
+
+static int sa_init_mem(struct sa_crypto_data *dev_data)
+{
+	struct device *dev = &dev_data->pdev->dev;
+	/* Setup dma pool for security context buffers */
+	dev_data->sc_pool = dma_pool_create("keystone-sc", dev,
+					    SA_CTX_MAX_SZ, 64, 0);
+	if (!dev_data->sc_pool) {
+		dev_err(dev, "Failed to create dma pool");
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static int sa_dma_init(struct sa_crypto_data *dd)
+{
+	int ret;
+	struct dma_slave_config cfg;
+
+	dd->dma_rx1 = NULL;
+	dd->dma_tx = NULL;
+	dd->dma_rx2 = NULL;
+
+	ret = dma_coerce_mask_and_coherent(dd->dev, DMA_BIT_MASK(48));
+	if (ret)
+		return ret;
+
+	dd->dma_rx1 = dma_request_chan(dd->dev, "rx1");
+	if (IS_ERR(dd->dma_rx1)) {
+		if (PTR_ERR(dd->dma_rx1) != -EPROBE_DEFER)
+			dev_err(dd->dev, "Unable to request rx1 DMA channel\n");
+		return PTR_ERR(dd->dma_rx1);
+	}
+
+	dd->dma_rx2 = dma_request_chan(dd->dev, "rx2");
+	if (IS_ERR(dd->dma_rx2)) {
+		dma_release_channel(dd->dma_rx1);
+		if (PTR_ERR(dd->dma_rx2) != -EPROBE_DEFER)
+			dev_err(dd->dev, "Unable to request rx2 DMA channel\n");
+		return PTR_ERR(dd->dma_rx2);
+	}
+
+	dd->dma_tx = dma_request_chan(dd->dev, "tx");
+	if (IS_ERR(dd->dma_tx)) {
+		if (PTR_ERR(dd->dma_rx1) != -EPROBE_DEFER)
+			dev_err(dd->dev, "Unable to request tx DMA channel\n");
+		ret = PTR_ERR(dd->dma_tx);
+		goto err_dma_tx;
+	}
+
+	memzero_explicit(&cfg, sizeof(cfg));
+
+	cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	cfg.src_maxburst = 4;
+	cfg.dst_maxburst = 4;
+
+	ret = dmaengine_slave_config(dd->dma_rx1, &cfg);
+	if (ret) {
+		dev_err(dd->dev, "can't configure IN dmaengine slave: %d\n",
+			ret);
+		return ret;
+	}
+
+	ret = dmaengine_slave_config(dd->dma_rx2, &cfg);
+	if (ret) {
+		dev_err(dd->dev, "can't configure IN dmaengine slave: %d\n",
+			ret);
+		return ret;
+	}
+
+	ret = dmaengine_slave_config(dd->dma_tx, &cfg);
+	if (ret) {
+		dev_err(dd->dev, "can't configure OUT dmaengine slave: %d\n",
+			ret);
+		return ret;
+	}
+
+	return 0;
+
+err_dma_tx:
+	dma_release_channel(dd->dma_rx1);
+	dma_release_channel(dd->dma_rx2);
+
+	return ret;
+}
+
+static int sa_ul_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct resource *res;
+	static void __iomem *saul_base;
+	struct sa_crypto_data *dev_data;
+	u32 val;
+	int ret;
+
+	dev_data = devm_kzalloc(dev, sizeof(*dev_data), GFP_KERNEL);
+	if (!dev_data)
+		return -ENOMEM;
+
+	sa_k3_dev = dev;
+	dev_data->dev = dev;
+	dev_data->pdev = pdev;
+	platform_set_drvdata(pdev, dev_data);
+	dev_set_drvdata(sa_k3_dev, dev_data);
+
+	pm_runtime_enable(dev);
+	ret = pm_runtime_get_sync(dev);
+	if (ret) {
+		dev_err(&pdev->dev, "%s: failed to get sync: %d\n", __func__,
+			ret);
+		return ret;
+	}
+
+	sa_init_mem(dev_data);
+	ret = sa_dma_init(dev_data);
+	if (ret)
+		goto disable_pm_runtime;
+
+	spin_lock_init(&dev_data->scid_lock);
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	saul_base = devm_ioremap_resource(dev, res);
+
+	dev_data->base = saul_base;
+	val = SA_EEC_ENCSS_EN | SA_EEC_AUTHSS_EN | SA_EEC_CTXCACH_EN |
+	    SA_EEC_CPPI_PORT_IN_EN | SA_EEC_CPPI_PORT_OUT_EN |
+	    SA_EEC_TRNG_EN;
+
+	writel_relaxed(val, saul_base + SA_ENGINE_ENABLE_CONTROL);
+
+	sa_register_algos(dev);
+
+	ret = of_platform_populate(node, NULL, NULL, &pdev->dev);
+	if (ret)
+		goto release_dma;
+
+	return 0;
+
+release_dma:
+	sa_unregister_algos(&pdev->dev);
+
+	dma_release_channel(dev_data->dma_rx2);
+	dma_release_channel(dev_data->dma_rx1);
+	dma_release_channel(dev_data->dma_tx);
+
+	dma_pool_destroy(dev_data->sc_pool);
+
+disable_pm_runtime:
+	pm_runtime_put_sync(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+
+	return ret;
+}
+
+static int sa_ul_remove(struct platform_device *pdev)
+{
+	struct sa_crypto_data *dev_data = platform_get_drvdata(pdev);
+
+	sa_unregister_algos(&pdev->dev);
+
+	dma_release_channel(dev_data->dma_rx2);
+	dma_release_channel(dev_data->dma_rx1);
+	dma_release_channel(dev_data->dma_tx);
+
+	dma_pool_destroy(dev_data->sc_pool);
+
+	platform_set_drvdata(pdev, NULL);
+
+	pm_runtime_put_sync(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+
+	return 0;
+}
+
+static const struct of_device_id of_match[] = {
+	{.compatible = "ti,j721e-sa2ul",},
+	{.compatible = "ti,am654-sa2ul",},
+	{},
+};
+MODULE_DEVICE_TABLE(of, of_match);
+
+static struct platform_driver sa_ul_driver = {
+	.probe = sa_ul_probe,
+	.remove = sa_ul_remove,
+	.driver = {
+		   .name = "saul-crypto",
+		   .of_match_table = of_match,
+		   },
+};
+module_platform_driver(sa_ul_driver);
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/crypto/sa2ul.h b/drivers/crypto/sa2ul.h
new file mode 100644
index 000000000000..45ba86cb5d11
--- /dev/null
+++ b/drivers/crypto/sa2ul.h
@@ -0,0 +1,380 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * K3 SA2UL crypto accelerator driver
+ *
+ * Copyright (C) 2018-2020 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Authors:	Keerthy
+ *		Vitaly Andrianov
+ *		Tero Kristo
+ */
+
+#ifndef _K3_SA2UL_
+#define _K3_SA2UL_
+
+#include <linux/interrupt.h>
+#include <linux/skbuff.h>
+#include <linux/hw_random.h>
+#include <crypto/aes.h>
+
+#define SA_ENGINE_ENABLE_CONTROL	0x1000
+
+struct sa_tfm_ctx;
+/*
+ * SA_ENGINE_ENABLE_CONTROL register bits
+ */
+#define SA_EEC_ENCSS_EN			0x00000001
+#define SA_EEC_AUTHSS_EN		0x00000002
+#define SA_EEC_TRNG_EN			0x00000008
+#define SA_EEC_PKA_EN			0x00000010
+#define SA_EEC_CTXCACH_EN		0x00000080
+#define SA_EEC_CPPI_PORT_IN_EN		0x00000200
+#define SA_EEC_CPPI_PORT_OUT_EN		0x00000800
+
+/*
+ * Encoding used to identify the typo of crypto operation
+ * performed on the packet when the packet is returned
+ * by SA
+ */
+#define SA_REQ_SUBTYPE_ENC	0x0001
+#define SA_REQ_SUBTYPE_DEC	0x0002
+#define SA_REQ_SUBTYPE_SHIFT	16
+#define SA_REQ_SUBTYPE_MASK	0xffff
+
+/* Number of 32 bit words in EPIB  */
+#define SA_DMA_NUM_EPIB_WORDS   4
+
+/* Number of 32 bit words in PS data  */
+#define SA_DMA_NUM_PS_WORDS     16
+#define NKEY_SZ			3
+#define MCI_SZ			27
+
+/*
+ * Maximum number of simultaeneous security contexts
+ * supported by the driver
+ */
+#define SA_MAX_NUM_CTX	512
+
+/*
+ * Assumption: CTX size is multiple of 32
+ */
+#define SA_CTX_SIZE_TO_DMA_SIZE(ctx_sz) \
+		((ctx_sz) ? ((ctx_sz) / 32 - 1) : 0)
+
+#define SA_CTX_ENC_KEY_OFFSET   32
+#define SA_CTX_ENC_AUX1_OFFSET  64
+#define SA_CTX_ENC_AUX2_OFFSET  96
+#define SA_CTX_ENC_AUX3_OFFSET  112
+#define SA_CTX_ENC_AUX4_OFFSET  128
+
+/* Next Engine Select code in CP_ACE */
+#define SA_ENG_ID_EM1   2       /* Enc/Dec engine with AES/DEC core */
+#define SA_ENG_ID_EM2   3       /* Encryption/Decryption enginefor pass 2 */
+#define SA_ENG_ID_AM1   4       /* Auth. engine with SHA1/MD5/SHA2 core */
+#define SA_ENG_ID_AM2   5       /*  Authentication engine for pass 2 */
+#define SA_ENG_ID_OUTPORT2 20   /*  Egress module 2  */
+#define SA_ENG_ID_NONE  0xff
+
+/*
+ * Command Label Definitions
+ */
+#define SA_CMDL_OFFSET_NESC           0      /* Next Engine Select Code */
+#define SA_CMDL_OFFSET_LABEL_LEN      1      /* Engine Command Label Length */
+/* 16-bit Length of Data to be processed */
+#define SA_CMDL_OFFSET_DATA_LEN       2
+#define SA_CMDL_OFFSET_DATA_OFFSET    4      /* Stat Data Offset */
+#define SA_CMDL_OFFSET_OPTION_CTRL1   5      /* Option Control Byte 1 */
+#define SA_CMDL_OFFSET_OPTION_CTRL2   6      /* Option Control Byte 2 */
+#define SA_CMDL_OFFSET_OPTION_CTRL3   7      /* Option Control Byte 3 */
+#define SA_CMDL_OFFSET_OPTION_BYTE    8
+
+#define SA_CMDL_HEADER_SIZE_BYTES	8
+
+#define SA_CMDL_OPTION_BYTES_MAX_SIZE     72
+#define SA_CMDL_MAX_SIZE_BYTES (SA_CMDL_HEADER_SIZE_BYTES + \
+				SA_CMDL_OPTION_BYTES_MAX_SIZE)
+
+/* SWINFO word-0 flags */
+#define SA_SW_INFO_FLAG_EVICT   0x0001
+#define SA_SW_INFO_FLAG_TEAR    0x0002
+#define SA_SW_INFO_FLAG_NOPD    0x0004
+
+/*
+ * This type represents the various packet types to be processed
+ * by the PHP engine in SA.
+ * It is used to identify the corresponding PHP processing function.
+ */
+#define SA_CTX_PE_PKT_TYPE_3GPP_AIR    0    /* 3GPP Air Cipher */
+#define SA_CTX_PE_PKT_TYPE_SRTP        1    /* SRTP */
+#define SA_CTX_PE_PKT_TYPE_IPSEC_AH    2    /* IPSec Authentication Header */
+/* IPSec Encapsulating Security Payload */
+#define SA_CTX_PE_PKT_TYPE_IPSEC_ESP   3
+/* Indicates that it is in data mode, It may not be used by PHP */
+#define SA_CTX_PE_PKT_TYPE_NONE        4
+#define SA_CTX_ENC_TYPE1_SZ     64      /* Encryption SC with Key only */
+#define SA_CTX_ENC_TYPE2_SZ     96      /* Encryption SC with Key and Aux1 */
+
+#define SA_CTX_AUTH_TYPE1_SZ    64      /* Auth SC with Key only */
+#define SA_CTX_AUTH_TYPE2_SZ    96      /* Auth SC with Key and Aux1 */
+/* Size of security context for PHP engine */
+#define SA_CTX_PHP_PE_CTX_SZ    64
+
+#define SA_CTX_MAX_SZ (64 + SA_CTX_ENC_TYPE2_SZ + SA_CTX_AUTH_TYPE2_SZ)
+
+/*
+ * Encoding of F/E control in SCCTL
+ *  Bit 0-1: Fetch PHP Bytes
+ *  Bit 2-3: Fetch Encryption/Air Ciphering Bytes
+ *  Bit 4-5: Fetch Authentication Bytes or Encr pass 2
+ *  Bit 6-7: Evict PHP Bytes
+ *
+ *  where   00 = 0 bytes
+ *          01 = 64 bytes
+ *          10 = 96 bytes
+ *          11 = 128 bytes
+ */
+#define SA_CTX_DMA_SIZE_0       0
+#define SA_CTX_DMA_SIZE_64      1
+#define SA_CTX_DMA_SIZE_96      2
+#define SA_CTX_DMA_SIZE_128     3
+
+/*
+ * Byte offset of the owner word in SCCTL
+ * in the security context
+ */
+#define SA_CTX_SCCTL_OWNER_OFFSET 0
+
+#define SA_CTX_ENC_KEY_OFFSET   32
+#define SA_CTX_ENC_AUX1_OFFSET  64
+#define SA_CTX_ENC_AUX2_OFFSET  96
+#define SA_CTX_ENC_AUX3_OFFSET  112
+#define SA_CTX_ENC_AUX4_OFFSET  128
+
+#define SA_SCCTL_FE_AUTH_ENC	0x65
+#define SA_SCCTL_FE_ENC		0x8D
+
+#define SA_ALIGN_MASK		(sizeof(u32) - 1)
+#define SA_ALIGNED		__aligned(32)
+
+/* SA2UL can only handle maximum data size of 64KB */
+#define SA_MAX_DATA_SZ		U16_MAX
+
+/*
+ * SA2UL can provide unpredictable results with packet sizes that fall
+ * the following range, so avoid using it.
+ */
+#define SA_UNSAFE_DATA_SZ_MIN	240
+#define SA_UNSAFE_DATA_SZ_MAX	256
+
+/**
+ * struct sa_crypto_data - Crypto driver instance data
+ * @base: Base address of the register space
+ * @pdev: Platform device pointer
+ * @sc_pool: security context pool
+ * @dev: Device pointer
+ * @scid_lock: secure context ID lock
+ * @sc_id_start: starting index for SC ID
+ * @sc_id_end: Ending index for SC ID
+ * @sc_id: Security Context ID
+ * @ctx_bm: Bitmap to keep track of Security context ID's
+ * @ctx: SA tfm context pointer
+ * @dma_rx1: Pointer to DMA rx channel for sizes < 256 Bytes
+ * @dma_rx2: Pointer to DMA rx channel for sizes > 256 Bytes
+ * @dma_tx: Pointer to DMA TX channel
+ */
+struct sa_crypto_data {
+	void __iomem *base;
+	struct platform_device	*pdev;
+	struct dma_pool		*sc_pool;
+	struct device *dev;
+	spinlock_t	scid_lock; /* lock for SC-ID allocation */
+	/* Security context data */
+	u16		sc_id_start;
+	u16		sc_id_end;
+	u16		sc_id;
+	unsigned long	ctx_bm[DIV_ROUND_UP(SA_MAX_NUM_CTX,
+				BITS_PER_LONG)];
+	struct sa_tfm_ctx	*ctx;
+	struct dma_chan		*dma_rx1;
+	struct dma_chan		*dma_rx2;
+	struct dma_chan		*dma_tx;
+};
+
+/**
+ * struct sa_cmdl_param_info: Command label parameters info
+ * @index: Index of the parameter in the command label format
+ * @offset: the offset of the parameter
+ * @size: Size of the parameter
+ */
+struct sa_cmdl_param_info {
+	u16	index;
+	u16	offset;
+	u16	size;
+};
+
+/* Maximum length of Auxiliary data in 32bit words */
+#define SA_MAX_AUX_DATA_WORDS	8
+
+/**
+ * struct sa_cmdl_upd_info: Command label updation info
+ * @flags: flags in command label
+ * @submode: Encryption submodes
+ * @enc_size: Size of first pass encryption size
+ * @enc_size2: Size of second pass encryption size
+ * @enc_offset: Encryption payload offset in the packet
+ * @enc_iv: Encryption initialization vector for pass2
+ * @enc_iv2: Encryption initialization vector for pass2
+ * @aad: Associated data
+ * @payload: Payload info
+ * @auth_size: Authentication size for pass 1
+ * @auth_size2: Authentication size for pass 2
+ * @auth_offset: Authentication payload offset
+ * @auth_iv: Authentication initialization vector
+ * @aux_key_info: Authentication aux key information
+ * @aux_key: Aux key for authentication
+ */
+struct sa_cmdl_upd_info {
+	u16	flags;
+	u16	submode;
+	struct sa_cmdl_param_info	enc_size;
+	struct sa_cmdl_param_info	enc_size2;
+	struct sa_cmdl_param_info	enc_offset;
+	struct sa_cmdl_param_info	enc_iv;
+	struct sa_cmdl_param_info	enc_iv2;
+	struct sa_cmdl_param_info	aad;
+	struct sa_cmdl_param_info	payload;
+	struct sa_cmdl_param_info	auth_size;
+	struct sa_cmdl_param_info	auth_size2;
+	struct sa_cmdl_param_info	auth_offset;
+	struct sa_cmdl_param_info	auth_iv;
+	struct sa_cmdl_param_info	aux_key_info;
+	u32				aux_key[SA_MAX_AUX_DATA_WORDS];
+};
+
+/*
+ * Number of 32bit words appended after the command label
+ * in PSDATA to identify the crypto request context.
+ * word-0: Request type
+ * word-1: pointer to request
+ */
+#define SA_PSDATA_CTX_WORDS 4
+
+/* Maximum size of Command label in 32 words */
+#define SA_MAX_CMDL_WORDS (SA_DMA_NUM_PS_WORDS - SA_PSDATA_CTX_WORDS)
+
+/**
+ * struct sa_ctx_info: SA context information
+ * @sc: Pointer to security context
+ * @sc_phys: Security context physical address that is passed on to SA2UL
+ * @sc_id: Security context ID
+ * @cmdl_size: Command label size
+ * @cmdl: Command label for a particular iteration
+ * @cmdl_upd_info: structure holding command label updation info
+ * @epib: Extended protocol information block words
+ */
+struct sa_ctx_info {
+	u8		*sc;
+	dma_addr_t	sc_phys;
+	u16		sc_id;
+	u16		cmdl_size;
+	u32		cmdl[SA_MAX_CMDL_WORDS];
+	struct sa_cmdl_upd_info cmdl_upd_info;
+	/* Store Auxiliary data such as K2/K3 subkeys in AES-XCBC */
+	u32		epib[SA_DMA_NUM_EPIB_WORDS];
+};
+
+/**
+ * struct sa_tfm_ctx: TFM context structure
+ * @dev_data: struct sa_crypto_data pointer
+ * @enc: struct sa_ctx_info for encryption
+ * @dec: struct sa_ctx_info for decryption
+ * @keylen: encrption/decryption keylength
+ * @iv_idx: Initialization vector index
+ * @key: encryption key
+ * @fallback: SW fallback algorithm
+ */
+struct sa_tfm_ctx {
+	struct sa_crypto_data *dev_data;
+	struct sa_ctx_info enc;
+	struct sa_ctx_info dec;
+	int keylen;
+	int iv_idx;
+	u32 key[AES_KEYSIZE_256 / sizeof(u32)];
+	/* for fallback */
+	union {
+		struct crypto_sync_skcipher	*skcipher;
+	} fallback;
+};
+
+enum sa_submode {
+	SA_MODE_GEN = 0,
+	SA_MODE_CCM,
+	SA_MODE_GCM,
+	SA_MODE_GMAC
+};
+
+/* Encryption algorithms */
+enum sa_ealg_id {
+	SA_EALG_ID_NONE = 0,        /* No encryption */
+	SA_EALG_ID_NULL,            /* NULL encryption */
+	SA_EALG_ID_AES_CTR,         /* AES Counter mode */
+	SA_EALG_ID_AES_F8,          /* AES F8 mode */
+	SA_EALG_ID_AES_CBC,         /* AES CBC mode */
+	SA_EALG_ID_DES_CBC,         /* DES CBC mode */
+	SA_EALG_ID_3DES_CBC,        /* 3DES CBC mode */
+	SA_EALG_ID_CCM,             /* Counter with CBC-MAC mode */
+	SA_EALG_ID_GCM,             /* Galois Counter mode */
+	SA_EALG_ID_AES_ECB,
+	SA_EALG_ID_LAST
+};
+
+/* Authentication algorithms */
+enum sa_aalg_id {
+	SA_AALG_ID_NONE = 0,      /* No Authentication  */
+	SA_AALG_ID_NULL = SA_EALG_ID_LAST, /* NULL Authentication  */
+	SA_AALG_ID_MD5,           /* MD5 mode */
+	SA_AALG_ID_SHA1,          /* SHA1 mode */
+	SA_AALG_ID_SHA2_224,      /* 224-bit SHA2 mode */
+	SA_AALG_ID_SHA2_256,      /* 256-bit SHA2 mode */
+	SA_AALG_ID_SHA2_512,      /* 512-bit SHA2 mode */
+	SA_AALG_ID_HMAC_MD5,      /* HMAC with MD5 mode */
+	SA_AALG_ID_HMAC_SHA1,     /* HMAC with SHA1 mode */
+	SA_AALG_ID_HMAC_SHA2_224, /* HMAC with 224-bit SHA2 mode */
+	SA_AALG_ID_HMAC_SHA2_256, /* HMAC with 256-bit SHA2 mode */
+	SA_AALG_ID_GMAC,          /* Galois Message Auth. Code mode */
+	SA_AALG_ID_CMAC,          /* Cipher-based Mes. Auth. Code mode */
+	SA_AALG_ID_CBC_MAC,       /* Cipher Block Chaining */
+	SA_AALG_ID_AES_XCBC       /* AES Extended Cipher Block Chaining */
+};
+
+/*
+ * Mode control engine algorithms used to index the
+ * mode control instruction tables
+ */
+enum sa_eng_algo_id {
+	SA_ENG_ALGO_ECB = 0,
+	SA_ENG_ALGO_CBC,
+	SA_ENG_ALGO_CFB,
+	SA_ENG_ALGO_OFB,
+	SA_ENG_ALGO_CTR,
+	SA_ENG_ALGO_F8,
+	SA_ENG_ALGO_F8F9,
+	SA_ENG_ALGO_GCM,
+	SA_ENG_ALGO_GMAC,
+	SA_ENG_ALGO_CCM,
+	SA_ENG_ALGO_CMAC,
+	SA_ENG_ALGO_CBCMAC,
+	SA_NUM_ENG_ALGOS
+};
+
+/**
+ * struct sa_eng_info: Security accelerator engine info
+ * @eng_id: Engine ID
+ * @sc_size: security context size
+ */
+struct sa_eng_info {
+	u8	eng_id;
+	u16	sc_size;
+};
+
+#endif /* _K3_SA2UL_ */
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
