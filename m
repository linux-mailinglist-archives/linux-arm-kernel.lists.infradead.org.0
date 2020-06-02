Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8481EBE00
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=et8uVZyax0ZwNd+QFI+SlN/4muPo4AUCxKoJtGpWdMo=; b=aYM9Rke0XT8X+Tf5uO4Kem2fKA
	4h9EhUBB+8aSTbF4u/YD4eh+OOKcb06wpABsSIGBFkI/T+4s7WIw7cuO/P3+cSqduzSVQqWg0m8XL
	mLHfWgpb5bEkblv2bDpyEfYXy8KnFzx8zyG9J+dzYDIgl4ajZ/FxseSFvrOEcvV7xj3Z+3nPPwm5E
	3XXUYsvZSRrxFb2UAU3oxgjQWJqIRzFZjGZ5s9gr+edj/QGuJh5YGoDJ+hMPm4rbcsWTjGdVyiowk
	Mz6WpJ6gx9g9oUlX1M/DPAOct2OhO9odNTAoB0f2ZBLcAzWGrr71VYrqccPuDGOHsJ1fh4IfuG8JD
	Z4AUhIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7lY-0000EG-Ea; Tue, 02 Jun 2020 14:19:44 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7l5-0008VS-Me
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 14:19:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh7so1387536plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 07:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=35Pkqp8XmHYtG77xmdc/rRwZ+Fhbnl13O+ZdPgA6u+8=;
 b=rJYlqHQGFvFNJpScMfhQjIw+lUfu18645UiEPnApUuKfHZRjvriaS+V8gtJQUxmC3Y
 /kkexdDLostWxb2LFSWd1LlLLNWvL7Krel5UMOVWKXsJu+d+6PrwvUTNwiOdN5G8P5MM
 V1F26HgCluau9sQszuR/lSEB+b/9ftEb8zlOBSz7fArv0/h9KNVNlZmJJDnGzFIQY+nM
 RKWV9gdl8h4qISlF9vy3HCZLoZwjiFEs9Fl8AR8U63A7C9psohityHiYT+4AHpjdVDZI
 BHkpOWTizOPUDwWN53CMwjNy6vrs3BO5dYrE1VH06tI8hbKd/D4Y5P6nh6vKXQthV/OJ
 KLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=35Pkqp8XmHYtG77xmdc/rRwZ+Fhbnl13O+ZdPgA6u+8=;
 b=CTcsHHNiD4sB/jTVfbmnP4PI2lR9sKiYUkN4HlArl4O7JCPgBSKsDX7T1czV/FX+N8
 cuyUJmvzpn+8sGIiVXOFBTCDofaxAc2sOsPDLyMJL1ax1RXkwN7nbNCDF4urfBgRdHqz
 IKzAwAcRQ8kjKcECv5pejairYfLYeSOsChJcWWvovV52E6ESvPfue7XQGyEDFltXPVNl
 dz66lI1DESzXq4zNf9rm8rWxwG0DkZYdigcrTipSpJ+m1X1AB/TYQtiQvrWczt6tEgbh
 Ode/RNGYHSLVZ5OJQ3XB1emCucB71Jk24lnw512woBeOkxDxUffcP9owNZm7oUhRLnBb
 niBg==
X-Gm-Message-State: AOAM533BwnLS0TptpluQIxB1jMSf95snHHAW3/0sopqDMrEZZV8IpC1f
 BhM1lBUqySb1CKgNjyQ0hqqTbVZiMaI=
X-Google-Smtp-Source: ABdhPJx3UkAIMicn0KzPrEzlhm6WMMM0eaU2pp8I1PcYK4CFaChzAu9/kZ+Zek7+T7Jsl17l7CRngw==
X-Received: by 2002:a17:90b:344d:: with SMTP id
 lj13mr6047572pjb.160.1591107554264; 
 Tue, 02 Jun 2020 07:19:14 -0700 (PDT)
Received: from localhost.localdomain ([117.252.66.248])
 by smtp.gmail.com with ESMTPSA id 141sm2529670pfz.171.2020.06.02.07.19.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 07:19:13 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jarkko.sakkinen@linux.intel.com, zohar@linux.ibm.com, jejb@linux.ibm.com
Subject: [PATCH v5 2/4] KEYS: trusted: Introduce TEE based Trusted Keys
Date: Tue,  2 Jun 2020 19:48:23 +0530
Message-Id: <1591107505-6030-3-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_071915_828843_8B1B0623 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, op-tee@lists.trustedfirmware.org,
 corbet@lwn.net, janne.karhunen@gmail.com, linux-doc@vger.kernel.org,
 jmorris@namei.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for TEE based trusted keys where TEE provides the functionality
to seal and unseal trusted keys using hardware unique key.

Refer to Documentation/tee.txt for detailed information about TEE.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 include/keys/trusted-type.h               |   3 +
 include/keys/trusted_tee.h                |  66 +++++++
 security/keys/Kconfig                     |  10 ++
 security/keys/trusted-keys/Makefile       |   1 +
 security/keys/trusted-keys/trusted_core.c |   2 +
 security/keys/trusted-keys/trusted_tee.c  | 280 ++++++++++++++++++++++++++++++
 6 files changed, 362 insertions(+)
 create mode 100644 include/keys/trusted_tee.h
 create mode 100644 security/keys/trusted-keys/trusted_tee.c

diff --git a/include/keys/trusted-type.h b/include/keys/trusted-type.h
index 819a102..a1101ac 100644
--- a/include/keys/trusted-type.h
+++ b/include/keys/trusted-type.h
@@ -67,6 +67,9 @@ extern struct key_type key_type_trusted;
 #if defined(CONFIG_TRUSTED_TPM)
 extern struct trusted_key_ops tpm_trusted_key_ops;
 #endif
+#if defined(CONFIG_TRUSTED_TEE)
+extern struct trusted_key_ops tee_trusted_key_ops;
+#endif
 
 #define TRUSTED_DEBUG 0
 
diff --git a/include/keys/trusted_tee.h b/include/keys/trusted_tee.h
new file mode 100644
index 0000000..ab58ffd
--- /dev/null
+++ b/include/keys/trusted_tee.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 Linaro Ltd.
+ *
+ * Author:
+ * Sumit Garg <sumit.garg@linaro.org>
+ */
+
+#ifndef __TEE_TRUSTED_KEY_H
+#define __TEE_TRUSTED_KEY_H
+
+#include <linux/tee_drv.h>
+
+#define DRIVER_NAME "tee-trusted-key"
+
+/*
+ * Get random data for symmetric key
+ *
+ * [out]     memref[0]        Random data
+ *
+ * Result:
+ * TEE_SUCCESS - Invoke command success
+ * TEE_ERROR_BAD_PARAMETERS - Incorrect input param
+ */
+#define TA_CMD_GET_RANDOM	0x0
+
+/*
+ * Seal trusted key using hardware unique key
+ *
+ * [in]      memref[0]        Plain key
+ * [out]     memref[1]        Sealed key datablob
+ *
+ * Result:
+ * TEE_SUCCESS - Invoke command success
+ * TEE_ERROR_BAD_PARAMETERS - Incorrect input param
+ */
+#define TA_CMD_SEAL		0x1
+
+/*
+ * Unseal trusted key using hardware unique key
+ *
+ * [in]      memref[0]        Sealed key datablob
+ * [out]     memref[1]        Plain key
+ *
+ * Result:
+ * TEE_SUCCESS - Invoke command success
+ * TEE_ERROR_BAD_PARAMETERS - Incorrect input param
+ */
+#define TA_CMD_UNSEAL		0x2
+
+/**
+ * struct trusted_key_private - TEE Trusted key private data
+ * @dev:		TEE based Trusted key device.
+ * @ctx:		TEE context handler.
+ * @session_id:		Trusted key TA session identifier.
+ * @shm_pool:		Memory pool shared with TEE device.
+ */
+struct trusted_key_private {
+	struct device *dev;
+	struct tee_context *ctx;
+	u32 session_id;
+	u32 data_rate;
+	struct tee_shm *shm_pool;
+};
+
+#endif
diff --git a/security/keys/Kconfig b/security/keys/Kconfig
index 22632c6..4c374f4 100644
--- a/security/keys/Kconfig
+++ b/security/keys/Kconfig
@@ -95,6 +95,16 @@ config TRUSTED_TPM
 
 	  If you are unsure as to whether this is required, answer N.
 
+config TRUSTED_TEE
+	bool "TEE based TRUSTED KEYS"
+	depends on TRUSTED_KEYS && TEE
+	help
+	  This option provides support for TEE based trusted keys where TEE acts
+	  as the trust source. The keys are sealed to Hardware Unique Key (HUK)
+	  accessible to TEE only.
+
+	  If you are unsure as to whether this is required, answer N.
+
 config ENCRYPTED_KEYS
 	tristate "ENCRYPTED KEYS"
 	depends on KEYS
diff --git a/security/keys/trusted-keys/Makefile b/security/keys/trusted-keys/Makefile
index 03c3ad4..1818b7d 100644
--- a/security/keys/trusted-keys/Makefile
+++ b/security/keys/trusted-keys/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_TRUSTED_KEYS) += trusted.o
 trusted-y += trusted_core.o
 trusted-$(CONFIG_TRUSTED_TPM) += trusted_tpm1.o
 trusted-$(CONFIG_TRUSTED_TPM) += trusted_tpm2.o
+trusted-$(CONFIG_TRUSTED_TEE) += trusted_tee.o
diff --git a/security/keys/trusted-keys/trusted_core.c b/security/keys/trusted-keys/trusted_core.c
index 3d07d27..3f37dcb 100644
--- a/security/keys/trusted-keys/trusted_core.c
+++ b/security/keys/trusted-keys/trusted_core.c
@@ -25,6 +25,8 @@
 
 #if defined(CONFIG_TRUSTED_TPM)
 static struct trusted_key_ops *trusted_key_ops = &tpm_trusted_key_ops;
+#elif defined(CONFIG_TRUSTED_TEE)
+static struct trusted_key_ops *trusted_key_ops = &tee_trusted_key_ops;
 #else
 static struct trusted_key_ops *trusted_key_ops;
 #endif
diff --git a/security/keys/trusted-keys/trusted_tee.c b/security/keys/trusted-keys/trusted_tee.c
new file mode 100644
index 0000000..91075b1
--- /dev/null
+++ b/security/keys/trusted-keys/trusted_tee.c
@@ -0,0 +1,280 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Linaro Ltd.
+ *
+ * Author:
+ * Sumit Garg <sumit.garg@linaro.org>
+ */
+
+#include <linux/err.h>
+#include <linux/key-type.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+#include <linux/uuid.h>
+
+#include <keys/trusted-type.h>
+#include <keys/trusted_tee.h>
+
+static struct trusted_key_private pvt_data;
+
+/*
+ * Have the TEE seal(encrypt) the symmetric key
+ */
+static int tee_trusted_seal(struct trusted_key_payload *p, char *datablob)
+{
+	int ret = 0;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[4];
+	struct tee_shm *reg_shm_in = NULL, *reg_shm_out = NULL;
+
+	memset(&inv_arg, 0, sizeof(inv_arg));
+	memset(&param, 0, sizeof(param));
+
+	reg_shm_in = tee_shm_register(pvt_data.ctx, (unsigned long)p->key,
+				      p->key_len, TEE_SHM_DMA_BUF |
+				      TEE_SHM_KERNEL_MAPPED);
+	if (IS_ERR(reg_shm_in)) {
+		dev_err(pvt_data.dev, "key shm register failed\n");
+		return PTR_ERR(reg_shm_in);
+	}
+
+	reg_shm_out = tee_shm_register(pvt_data.ctx, (unsigned long)p->blob,
+				       sizeof(p->blob), TEE_SHM_DMA_BUF |
+				       TEE_SHM_KERNEL_MAPPED);
+	if (IS_ERR(reg_shm_out)) {
+		dev_err(pvt_data.dev, "blob shm register failed\n");
+		ret = PTR_ERR(reg_shm_out);
+		goto out;
+	}
+
+	inv_arg.func = TA_CMD_SEAL;
+	inv_arg.session = pvt_data.session_id;
+	inv_arg.num_params = 4;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[0].u.memref.shm = reg_shm_in;
+	param[0].u.memref.size = p->key_len;
+	param[0].u.memref.shm_offs = 0;
+	param[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT;
+	param[1].u.memref.shm = reg_shm_out;
+	param[1].u.memref.size = sizeof(p->blob);
+	param[1].u.memref.shm_offs = 0;
+
+	ret = tee_client_invoke_func(pvt_data.ctx, &inv_arg, param);
+	if ((ret < 0) || (inv_arg.ret != 0)) {
+		dev_err(pvt_data.dev, "TA_CMD_SEAL invoke err: %x\n",
+			inv_arg.ret);
+		ret = -EFAULT;
+	} else {
+		p->blob_len = param[1].u.memref.size;
+	}
+
+out:
+	if (reg_shm_out)
+		tee_shm_free(reg_shm_out);
+	if (reg_shm_in)
+		tee_shm_free(reg_shm_in);
+
+	return ret;
+}
+
+/*
+ * Have the TEE unseal(decrypt) the symmetric key
+ */
+static int tee_trusted_unseal(struct trusted_key_payload *p, char *datablob)
+{
+	int ret = 0;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[4];
+	struct tee_shm *reg_shm_in = NULL, *reg_shm_out = NULL;
+
+	memset(&inv_arg, 0, sizeof(inv_arg));
+	memset(&param, 0, sizeof(param));
+
+	reg_shm_in = tee_shm_register(pvt_data.ctx, (unsigned long)p->blob,
+				      p->blob_len, TEE_SHM_DMA_BUF |
+				      TEE_SHM_KERNEL_MAPPED);
+	if (IS_ERR(reg_shm_in)) {
+		dev_err(pvt_data.dev, "blob shm register failed\n");
+		return PTR_ERR(reg_shm_in);
+	}
+
+	reg_shm_out = tee_shm_register(pvt_data.ctx, (unsigned long)p->key,
+				       sizeof(p->key), TEE_SHM_DMA_BUF |
+				       TEE_SHM_KERNEL_MAPPED);
+	if (IS_ERR(reg_shm_out)) {
+		dev_err(pvt_data.dev, "key shm register failed\n");
+		ret = PTR_ERR(reg_shm_out);
+		goto out;
+	}
+
+	inv_arg.func = TA_CMD_UNSEAL;
+	inv_arg.session = pvt_data.session_id;
+	inv_arg.num_params = 4;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[0].u.memref.shm = reg_shm_in;
+	param[0].u.memref.size = p->blob_len;
+	param[0].u.memref.shm_offs = 0;
+	param[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT;
+	param[1].u.memref.shm = reg_shm_out;
+	param[1].u.memref.size = sizeof(p->key);
+	param[1].u.memref.shm_offs = 0;
+
+	ret = tee_client_invoke_func(pvt_data.ctx, &inv_arg, param);
+	if ((ret < 0) || (inv_arg.ret != 0)) {
+		dev_err(pvt_data.dev, "TA_CMD_UNSEAL invoke err: %x\n",
+			inv_arg.ret);
+		ret = -EFAULT;
+	} else {
+		p->key_len = param[1].u.memref.size;
+	}
+
+out:
+	if (reg_shm_out)
+		tee_shm_free(reg_shm_out);
+	if (reg_shm_in)
+		tee_shm_free(reg_shm_in);
+
+	return ret;
+}
+
+/*
+ * Have the TEE generate random symmetric key
+ */
+static int tee_trusted_get_random(unsigned char *key, size_t key_len)
+{
+	int ret = 0;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[4];
+	struct tee_shm *reg_shm = NULL;
+
+	memset(&inv_arg, 0, sizeof(inv_arg));
+	memset(&param, 0, sizeof(param));
+
+	reg_shm = tee_shm_register(pvt_data.ctx, (unsigned long)key, key_len,
+				   TEE_SHM_DMA_BUF | TEE_SHM_KERNEL_MAPPED);
+	if (IS_ERR(reg_shm)) {
+		dev_err(pvt_data.dev, "random key shm register failed\n");
+		return PTR_ERR(reg_shm);
+	}
+
+	inv_arg.func = TA_CMD_GET_RANDOM;
+	inv_arg.session = pvt_data.session_id;
+	inv_arg.num_params = 4;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT;
+	param[0].u.memref.shm = reg_shm;
+	param[0].u.memref.size = key_len;
+	param[0].u.memref.shm_offs = 0;
+
+	ret = tee_client_invoke_func(pvt_data.ctx, &inv_arg, param);
+	if ((ret < 0) || (inv_arg.ret != 0)) {
+		dev_err(pvt_data.dev, "TA_CMD_GET_RANDOM invoke err: %x\n",
+			inv_arg.ret);
+		ret = -EFAULT;
+	} else {
+		ret = param[0].u.memref.size;
+	}
+
+	tee_shm_free(reg_shm);
+
+	return ret;
+}
+
+static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	if (ver->impl_id == TEE_IMPL_ID_OPTEE)
+		return 1;
+	else
+		return 0;
+}
+
+static int trusted_key_probe(struct device *dev)
+{
+	struct tee_client_device *rng_device = to_tee_client_device(dev);
+	int ret = 0, err = -ENODEV;
+	struct tee_ioctl_open_session_arg sess_arg;
+
+	memset(&sess_arg, 0, sizeof(sess_arg));
+
+	pvt_data.ctx = tee_client_open_context(NULL, optee_ctx_match, NULL,
+					       NULL);
+	if (IS_ERR(pvt_data.ctx))
+		return -ENODEV;
+
+	memcpy(sess_arg.uuid, rng_device->id.uuid.b, TEE_IOCTL_UUID_LEN);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_REE_KERNEL;
+	sess_arg.num_params = 0;
+
+	ret = tee_client_open_session(pvt_data.ctx, &sess_arg, NULL);
+	if ((ret < 0) || (sess_arg.ret != 0)) {
+		dev_err(dev, "tee_client_open_session failed, err: %x\n",
+			sess_arg.ret);
+		err = -EINVAL;
+		goto out_ctx;
+	}
+	pvt_data.session_id = sess_arg.session;
+
+	ret = register_key_type(&key_type_trusted);
+	if (ret < 0)
+		goto out_sess;
+
+	pvt_data.dev = dev;
+
+	return 0;
+
+out_sess:
+	tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
+out_ctx:
+	tee_client_close_context(pvt_data.ctx);
+
+	return err;
+}
+
+static int trusted_key_remove(struct device *dev)
+{
+	unregister_key_type(&key_type_trusted);
+	tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
+	tee_client_close_context(pvt_data.ctx);
+
+	return 0;
+}
+
+static const struct tee_client_device_id trusted_key_id_table[] = {
+	{UUID_INIT(0xf04a0fe7, 0x1f5d, 0x4b9b,
+		   0xab, 0xf7, 0x61, 0x9b, 0x85, 0xb4, 0xce, 0x8c)},
+	{}
+};
+
+MODULE_DEVICE_TABLE(tee, trusted_key_id_table);
+
+static struct tee_client_driver trusted_key_driver = {
+	.id_table	= trusted_key_id_table,
+	.driver		= {
+		.name		= DRIVER_NAME,
+		.bus		= &tee_bus_type,
+		.probe		= trusted_key_probe,
+		.remove		= trusted_key_remove,
+	},
+};
+
+static int __init init_tee_trusted(void)
+{
+	return driver_register(&trusted_key_driver.driver);
+}
+
+static void __exit exit_tee_trusted(void)
+{
+	driver_unregister(&trusted_key_driver.driver);
+}
+
+struct trusted_key_ops tee_trusted_key_ops = {
+	.migratable = 0, /* non-migratable */
+	.init = init_tee_trusted,
+	.seal = tee_trusted_seal,
+	.unseal = tee_trusted_unseal,
+	.get_random = tee_trusted_get_random,
+	.exit = exit_tee_trusted,
+};
+EXPORT_SYMBOL_GPL(tee_trusted_key_ops);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
