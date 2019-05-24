Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1E929C3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Azwn8U1As0I1tXV4fn+VnBjR0g9EuHenxRILBHrAquY=; b=PRpVkuRiZNzDf1
	9ge0gNBT/5eBKH9G/gQhWRTSmwOkoL+FbtHuemu7GUs/CkpBKWYeEINPMQtLn/JWjG5+WM4Q4ASyG
	wb2jlWVr8VF3IRQVSnAk9xN9WGyS6IxKfY3DcwItJse+pTDsJGLlSlb914TtdlJZMl3ZRnVk8nk2G
	3jckkipZHmdSwZpxe0MyxT8YSN7SLk0VKvlefuYakHjZAGn2I2pSvVtE+odfY9Qks7b5jovbeuUkr
	hiT/2D6AYR5DSOV9Th7n4j22IYygSnO50eoEBkxgFZoouMllqg0B7jb8XbSjJajeXdvwfzAplRXBp
	5ZP1LgRRSEsTC54AAb3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD3Z-0001uq-Ty; Fri, 24 May 2019 16:28:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD2l-00012w-2C
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:27:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id d9so10645594wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o9AkQkRTyfMF48RGZO6XDYSB7I9U5iZYwHLrvW29JTc=;
 b=O+6Yr7OM7Pc0mZ+//HKVZHjBGXIZQvOYrswpEkp78/Q+As/E2rBJ/yv/xlzDC7H8x9
 DSBeIaaMRELLs7uHFcK6WNM35tW6LXRKISTqfDkG0GZ5gQpZOUzKc+7kur0C9R4Sykpd
 pf6WwHNWCEgscnown4RhCD0943qChbet1hheO927MWTqym2A1FL8flF4xbQ9aMeBMygx
 inWUknPcmxNSf00bJfvFUR73EgfBv/u/QhHNCahdG01VvkMjtZXWOEXPtSoMrDfFFHFC
 3fXqt1W2ofEvNk65F3zqNBjqmXd8kzddPuQwezhwPKHAxSfcFzIJIPrdAQvRahP+0vU+
 VSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o9AkQkRTyfMF48RGZO6XDYSB7I9U5iZYwHLrvW29JTc=;
 b=oklgGj2wSSmCC9JKpes/upS7NEIIcWsTm/uwmbuhqy2YBTQ3dAo5s5mQ8zsQuRZ86i
 CVRSWbLFFT7zUh2HGsgBUJ6QotcjdWclyakEcGbnkJyEpRQi0rul0dw4xA9nnt5V/398
 J/qSOMiUqKF/owROTvWbutQMj2Nv7rHAXxGziFnVkQa5nIa/N1nSh7k3mg/gsJ9j9wt+
 NAAKBhxmFSwAgetej5l43PIeR86ZTX0iHAYJv0I2BQ/xXHFf++BuA8vnuHrnHWftfvbE
 my6991lsIyA6WaCCN1ggR1Q7hjGvcVYteVl6u+nQCFk6v0ZLHo+mfSd9TkhqZr0OhhtO
 Wlfw==
X-Gm-Message-State: APjAAAXD8MET2pq18Xx1A/zyEpAGIkB/M1P/itxcnIfmecrUOfR9F7nH
 EljIfem17rrEiEX+ohxpO9nKZA==
X-Google-Smtp-Source: APXvYqwtw/69kf4MBHWNy7HH+T/94A73e5cNLKrL/oT0ADPLoJI35A8wuRQRmmuTstFRx3Eetf/mkg==
X-Received: by 2002:a5d:4692:: with SMTP id u18mr52536614wrq.285.1558715260788; 
 Fri, 24 May 2019 09:27:40 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
 by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:27:40 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 3/6] crypto: atmel-ecc: factor out code that can be shared
Date: Fri, 24 May 2019 18:26:48 +0200
Message-Id: <20190524162651.28189-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_092743_366135_EA82638E 
X-CRM114-Status: GOOD (  24.83  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation of adding support for the random number generator in
Atmel atsha204a devices, refactor the existing atmel-ecc driver (which
drives hardware that is closely related) so we can share the basic
I2C and command queuing routines.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/Kconfig                      |   4 +
 drivers/crypto/Makefile                     |   1 +
 drivers/crypto/atmel-ecc.c                  | 406 ++------------------
 drivers/crypto/atmel-i2c.c                  | 349 +++++++++++++++++
 drivers/crypto/{atmel-ecc.h => atmel-i2c.h} |  80 +++-
 5 files changed, 451 insertions(+), 389 deletions(-)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 97ec8107eeef..ca7a5564e9ce 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -520,9 +520,13 @@ config CRYPTO_DEV_ATMEL_SHA
 	  To compile this driver as a module, choose M here: the module
 	  will be called atmel-sha.
 
+config CRYPTO_DEV_ATMEL_I2C
+	tristate
+
 config CRYPTO_DEV_ATMEL_ECC
 	tristate "Support for Microchip / Atmel ECC hw accelerator"
 	depends on I2C
+	select CRYPTO_DEV_ATMEL_I2C
 	select CRYPTO_ECDH
 	select CRC16
 	help
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index a23a7197fcd7..394e84089924 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_AES) += atmel-aes.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_SHA) += atmel-sha.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_TDES) += atmel-tdes.o
+obj-$(CONFIG_CRYPTO_DEV_ATMEL_I2C) += atmel-i2c.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_ECC) += atmel-ecc.o
 obj-$(CONFIG_CRYPTO_DEV_CAVIUM_ZIP) += cavium/
 obj-$(CONFIG_CRYPTO_DEV_CCP) += ccp/
diff --git a/drivers/crypto/atmel-ecc.c b/drivers/crypto/atmel-ecc.c
index 5705348f540f..ff02cc05affb 100644
--- a/drivers/crypto/atmel-ecc.c
+++ b/drivers/crypto/atmel-ecc.c
@@ -6,8 +6,6 @@
  * Author: Tudor Ambarus <tudor.ambarus@microchip.com>
  */
 
-#include <linux/bitrev.h>
-#include <linux/crc16.h>
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/err.h>
@@ -23,41 +21,10 @@
 #include <crypto/internal/kpp.h>
 #include <crypto/ecdh.h>
 #include <crypto/kpp.h>
-#include "atmel-ecc.h"
-
-/* Used for binding tfm objects to i2c clients. */
-struct atmel_ecc_driver_data {
-	struct list_head i2c_client_list;
-	spinlock_t i2c_list_lock;
-} ____cacheline_aligned;
+#include "atmel-i2c.h"
 
 static struct atmel_ecc_driver_data driver_data;
 
-/**
- * atmel_ecc_i2c_client_priv - i2c_client private data
- * @client              : pointer to i2c client device
- * @i2c_client_list_node: part of i2c_client_list
- * @lock                : lock for sending i2c commands
- * @wake_token          : wake token array of zeros
- * @wake_token_sz       : size in bytes of the wake_token
- * @tfm_count           : number of active crypto transformations on i2c client
- *
- * Reads and writes from/to the i2c client are sequential. The first byte
- * transmitted to the device is treated as the byte size. Any attempt to send
- * more than this number of bytes will cause the device to not ACK those bytes.
- * After the host writes a single command byte to the input buffer, reads are
- * prohibited until after the device completes command execution. Use a mutex
- * when sending i2c commands.
- */
-struct atmel_ecc_i2c_client_priv {
-	struct i2c_client *client;
-	struct list_head i2c_client_list_node;
-	struct mutex lock;
-	u8 wake_token[WAKE_TOKEN_MAX_SIZE];
-	size_t wake_token_sz;
-	atomic_t tfm_count ____cacheline_aligned;
-};
-
 /**
  * atmel_ecdh_ctx - transformation context
  * @client     : pointer to i2c client device
@@ -80,188 +47,12 @@ struct atmel_ecdh_ctx {
 	bool do_fallback;
 };
 
-/**
- * atmel_ecc_work_data - data structure representing the work
- * @ctx : transformation context.
- * @cbk : pointer to a callback function to be invoked upon completion of this
- *        request. This has the form:
- *        callback(struct atmel_ecc_work_data *work_data, void *areq, u8 status)
- *        where:
- *        @work_data: data structure representing the work
- *        @areq     : optional pointer to an argument passed with the original
- *                    request.
- *        @status   : status returned from the i2c client device or i2c error.
- * @areq: optional pointer to a user argument for use at callback time.
- * @work: describes the task to be executed.
- * @cmd : structure used for communicating with the device.
- */
-struct atmel_ecc_work_data {
-	struct atmel_ecdh_ctx *ctx;
-	void (*cbk)(struct atmel_ecc_work_data *work_data, void *areq,
-		    int status);
-	void *areq;
-	struct work_struct work;
-	struct atmel_ecc_cmd cmd;
-};
-
-static u16 atmel_ecc_crc16(u16 crc, const u8 *buffer, size_t len)
-{
-	return cpu_to_le16(bitrev16(crc16(crc, buffer, len)));
-}
-
-/**
- * atmel_ecc_checksum() - Generate 16-bit CRC as required by ATMEL ECC.
- * CRC16 verification of the count, opcode, param1, param2 and data bytes.
- * The checksum is saved in little-endian format in the least significant
- * two bytes of the command. CRC polynomial is 0x8005 and the initial register
- * value should be zero.
- *
- * @cmd : structure used for communicating with the device.
- */
-static void atmel_ecc_checksum(struct atmel_ecc_cmd *cmd)
-{
-	u8 *data = &cmd->count;
-	size_t len = cmd->count - CRC_SIZE;
-	u16 *crc16 = (u16 *)(data + len);
-
-	*crc16 = atmel_ecc_crc16(0, data, len);
-}
-
-static void atmel_ecc_init_read_cmd(struct atmel_ecc_cmd *cmd)
-{
-	cmd->word_addr = COMMAND;
-	cmd->opcode = OPCODE_READ;
-	/*
-	 * Read the word from Configuration zone that contains the lock bytes
-	 * (UserExtra, Selector, LockValue, LockConfig).
-	 */
-	cmd->param1 = CONFIG_ZONE;
-	cmd->param2 = DEVICE_LOCK_ADDR;
-	cmd->count = READ_COUNT;
-
-	atmel_ecc_checksum(cmd);
-
-	cmd->msecs = MAX_EXEC_TIME_READ;
-	cmd->rxsize = READ_RSP_SIZE;
-}
-
-static void atmel_ecc_init_genkey_cmd(struct atmel_ecc_cmd *cmd, u16 keyid)
-{
-	cmd->word_addr = COMMAND;
-	cmd->count = GENKEY_COUNT;
-	cmd->opcode = OPCODE_GENKEY;
-	cmd->param1 = GENKEY_MODE_PRIVATE;
-	/* a random private key will be generated and stored in slot keyID */
-	cmd->param2 = cpu_to_le16(keyid);
-
-	atmel_ecc_checksum(cmd);
-
-	cmd->msecs = MAX_EXEC_TIME_GENKEY;
-	cmd->rxsize = GENKEY_RSP_SIZE;
-}
-
-static int atmel_ecc_init_ecdh_cmd(struct atmel_ecc_cmd *cmd,
-				   struct scatterlist *pubkey)
-{
-	size_t copied;
-
-	cmd->word_addr = COMMAND;
-	cmd->count = ECDH_COUNT;
-	cmd->opcode = OPCODE_ECDH;
-	cmd->param1 = ECDH_PREFIX_MODE;
-	/* private key slot */
-	cmd->param2 = cpu_to_le16(DATA_SLOT_2);
-
-	/*
-	 * The device only supports NIST P256 ECC keys. The public key size will
-	 * always be the same. Use a macro for the key size to avoid unnecessary
-	 * computations.
-	 */
-	copied = sg_copy_to_buffer(pubkey,
-				   sg_nents_for_len(pubkey,
-						    ATMEL_ECC_PUBKEY_SIZE),
-				   cmd->data, ATMEL_ECC_PUBKEY_SIZE);
-	if (copied != ATMEL_ECC_PUBKEY_SIZE)
-		return -EINVAL;
-
-	atmel_ecc_checksum(cmd);
-
-	cmd->msecs = MAX_EXEC_TIME_ECDH;
-	cmd->rxsize = ECDH_RSP_SIZE;
-
-	return 0;
-}
-
-/*
- * After wake and after execution of a command, there will be error, status, or
- * result bytes in the device's output register that can be retrieved by the
- * system. When the length of that group is four bytes, the codes returned are
- * detailed in error_list.
- */
-static int atmel_ecc_status(struct device *dev, u8 *status)
-{
-	size_t err_list_len = ARRAY_SIZE(error_list);
-	int i;
-	u8 err_id = status[1];
-
-	if (*status != STATUS_SIZE)
-		return 0;
-
-	if (err_id == STATUS_WAKE_SUCCESSFUL || err_id == STATUS_NOERR)
-		return 0;
-
-	for (i = 0; i < err_list_len; i++)
-		if (error_list[i].value == err_id)
-			break;
-
-	/* if err_id is not in the error_list then ignore it */
-	if (i != err_list_len) {
-		dev_err(dev, "%02x: %s:\n", err_id, error_list[i].error_text);
-		return err_id;
-	}
-
-	return 0;
-}
-
-static int atmel_ecc_wakeup(struct i2c_client *client)
-{
-	struct atmel_ecc_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
-	u8 status[STATUS_RSP_SIZE];
-	int ret;
-
-	/*
-	 * The device ignores any levels or transitions on the SCL pin when the
-	 * device is idle, asleep or during waking up. Don't check for error
-	 * when waking up the device.
-	 */
-	i2c_master_send(client, i2c_priv->wake_token, i2c_priv->wake_token_sz);
-
-	/*
-	 * Wait to wake the device. Typical execution times for ecdh and genkey
-	 * are around tens of milliseconds. Delta is chosen to 50 microseconds.
-	 */
-	usleep_range(TWHI_MIN, TWHI_MAX);
-
-	ret = i2c_master_recv(client, status, STATUS_SIZE);
-	if (ret < 0)
-		return ret;
-
-	return atmel_ecc_status(&client->dev, status);
-}
-
-static int atmel_ecc_sleep(struct i2c_client *client)
-{
-	u8 sleep = SLEEP_TOKEN;
-
-	return i2c_master_send(client, &sleep, 1);
-}
-
-static void atmel_ecdh_done(struct atmel_ecc_work_data *work_data, void *areq,
+static void atmel_ecdh_done(struct atmel_i2c_work_data *work_data, void *areq,
 			    int status)
 {
 	struct kpp_request *req = areq;
 	struct atmel_ecdh_ctx *ctx = work_data->ctx;
-	struct atmel_ecc_cmd *cmd = &work_data->cmd;
+	struct atmel_i2c_cmd *cmd = &work_data->cmd;
 	size_t copied, n_sz;
 
 	if (status)
@@ -282,82 +73,6 @@ static void atmel_ecdh_done(struct atmel_ecc_work_data *work_data, void *areq,
 	kpp_request_complete(req, status);
 }
 
-/*
- * atmel_ecc_send_receive() - send a command to the device and receive its
- *                            response.
- * @client: i2c client device
- * @cmd   : structure used to communicate with the device
- *
- * After the device receives a Wake token, a watchdog counter starts within the
- * device. After the watchdog timer expires, the device enters sleep mode
- * regardless of whether some I/O transmission or command execution is in
- * progress. If a command is attempted when insufficient time remains prior to
- * watchdog timer execution, the device will return the watchdog timeout error
- * code without attempting to execute the command. There is no way to reset the
- * counter other than to put the device into sleep or idle mode and then
- * wake it up again.
- */
-static int atmel_ecc_send_receive(struct i2c_client *client,
-				  struct atmel_ecc_cmd *cmd)
-{
-	struct atmel_ecc_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
-	int ret;
-
-	mutex_lock(&i2c_priv->lock);
-
-	ret = atmel_ecc_wakeup(client);
-	if (ret)
-		goto err;
-
-	/* send the command */
-	ret = i2c_master_send(client, (u8 *)cmd, cmd->count + WORD_ADDR_SIZE);
-	if (ret < 0)
-		goto err;
-
-	/* delay the appropriate amount of time for command to execute */
-	msleep(cmd->msecs);
-
-	/* receive the response */
-	ret = i2c_master_recv(client, cmd->data, cmd->rxsize);
-	if (ret < 0)
-		goto err;
-
-	/* put the device into low-power mode */
-	ret = atmel_ecc_sleep(client);
-	if (ret < 0)
-		goto err;
-
-	mutex_unlock(&i2c_priv->lock);
-	return atmel_ecc_status(&client->dev, cmd->data);
-err:
-	mutex_unlock(&i2c_priv->lock);
-	return ret;
-}
-
-static void atmel_ecc_work_handler(struct work_struct *work)
-{
-	struct atmel_ecc_work_data *work_data =
-			container_of(work, struct atmel_ecc_work_data, work);
-	struct atmel_ecc_cmd *cmd = &work_data->cmd;
-	struct i2c_client *client = work_data->ctx->client;
-	int status;
-
-	status = atmel_ecc_send_receive(client, cmd);
-	work_data->cbk(work_data, work_data->areq, status);
-}
-
-static void atmel_ecc_enqueue(struct atmel_ecc_work_data *work_data,
-			      void (*cbk)(struct atmel_ecc_work_data *work_data,
-					  void *areq, int status),
-			      void *areq)
-{
-	work_data->cbk = (void *)cbk;
-	work_data->areq = areq;
-
-	INIT_WORK(&work_data->work, atmel_ecc_work_handler);
-	schedule_work(&work_data->work);
-}
-
 static unsigned int atmel_ecdh_supported_curve(unsigned int curve_id)
 {
 	if (curve_id == ECC_CURVE_NIST_P256)
@@ -374,7 +89,7 @@ static int atmel_ecdh_set_secret(struct crypto_kpp *tfm, const void *buf,
 				 unsigned int len)
 {
 	struct atmel_ecdh_ctx *ctx = kpp_tfm_ctx(tfm);
-	struct atmel_ecc_cmd *cmd;
+	struct atmel_i2c_cmd *cmd;
 	void *public_key;
 	struct ecdh params;
 	int ret = -ENOMEM;
@@ -412,9 +127,9 @@ static int atmel_ecdh_set_secret(struct crypto_kpp *tfm, const void *buf,
 	ctx->do_fallback = false;
 	ctx->curve_id = params.curve_id;
 
-	atmel_ecc_init_genkey_cmd(cmd, DATA_SLOT_2);
+	atmel_i2c_init_genkey_cmd(cmd, DATA_SLOT_2);
 
-	ret = atmel_ecc_send_receive(ctx->client, cmd);
+	ret = atmel_i2c_send_receive(ctx->client, cmd);
 	if (ret)
 		goto free_public_key;
 
@@ -444,6 +159,9 @@ static int atmel_ecdh_generate_public_key(struct kpp_request *req)
 		return crypto_kpp_generate_public_key(req);
 	}
 
+	if (!ctx->public_key)
+		return -EINVAL;
+
 	/* might want less than we've got */
 	nbytes = min_t(size_t, ATMEL_ECC_PUBKEY_SIZE, req->dst_len);
 
@@ -461,7 +179,7 @@ static int atmel_ecdh_compute_shared_secret(struct kpp_request *req)
 {
 	struct crypto_kpp *tfm = crypto_kpp_reqtfm(req);
 	struct atmel_ecdh_ctx *ctx = kpp_tfm_ctx(tfm);
-	struct atmel_ecc_work_data *work_data;
+	struct atmel_i2c_work_data *work_data;
 	gfp_t gfp;
 	int ret;
 
@@ -482,12 +200,13 @@ static int atmel_ecdh_compute_shared_secret(struct kpp_request *req)
 		return -ENOMEM;
 
 	work_data->ctx = ctx;
+	work_data->client = ctx->client;
 
-	ret = atmel_ecc_init_ecdh_cmd(&work_data->cmd, req->src);
+	ret = atmel_i2c_init_ecdh_cmd(&work_data->cmd, req->src);
 	if (ret)
 		goto free_work_data;
 
-	atmel_ecc_enqueue(work_data, atmel_ecdh_done, req);
+	atmel_i2c_enqueue(work_data, atmel_ecdh_done, req);
 
 	return -EINPROGRESS;
 
@@ -498,7 +217,7 @@ static int atmel_ecdh_compute_shared_secret(struct kpp_request *req)
 
 static struct i2c_client *atmel_ecc_i2c_client_alloc(void)
 {
-	struct atmel_ecc_i2c_client_priv *i2c_priv, *min_i2c_priv = NULL;
+	struct atmel_i2c_client_priv *i2c_priv, *min_i2c_priv = NULL;
 	struct i2c_client *client = ERR_PTR(-ENODEV);
 	int min_tfm_cnt = INT_MAX;
 	int tfm_cnt;
@@ -533,7 +252,7 @@ static struct i2c_client *atmel_ecc_i2c_client_alloc(void)
 
 static void atmel_ecc_i2c_client_free(struct i2c_client *client)
 {
-	struct atmel_ecc_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
+	struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
 
 	atomic_dec(&i2c_priv->tfm_count);
 }
@@ -604,99 +323,18 @@ static struct kpp_alg atmel_ecdh = {
 	},
 };
 
-static inline size_t atmel_ecc_wake_token_sz(u32 bus_clk_rate)
-{
-	u32 no_of_bits = DIV_ROUND_UP(TWLO_USEC * bus_clk_rate, USEC_PER_SEC);
-
-	/* return the size of the wake_token in bytes */
-	return DIV_ROUND_UP(no_of_bits, 8);
-}
-
-static int device_sanity_check(struct i2c_client *client)
-{
-	struct atmel_ecc_cmd *cmd;
-	int ret;
-
-	cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
-	if (!cmd)
-		return -ENOMEM;
-
-	atmel_ecc_init_read_cmd(cmd);
-
-	ret = atmel_ecc_send_receive(client, cmd);
-	if (ret)
-		goto free_cmd;
-
-	/*
-	 * It is vital that the Configuration, Data and OTP zones be locked
-	 * prior to release into the field of the system containing the device.
-	 * Failure to lock these zones may permit modification of any secret
-	 * keys and may lead to other security problems.
-	 */
-	if (cmd->data[LOCK_CONFIG_IDX] || cmd->data[LOCK_VALUE_IDX]) {
-		dev_err(&client->dev, "Configuration or Data and OTP zones are unlocked!\n");
-		ret = -ENOTSUPP;
-	}
-
-	/* fall through */
-free_cmd:
-	kfree(cmd);
-	return ret;
-}
-
 static int atmel_ecc_probe(struct i2c_client *client,
 			   const struct i2c_device_id *id)
 {
-	struct atmel_ecc_i2c_client_priv *i2c_priv;
-	struct device *dev = &client->dev;
+	struct atmel_i2c_client_priv *i2c_priv;
 	int ret;
-	u32 bus_clk_rate;
 
-	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
-		dev_err(dev, "I2C_FUNC_I2C not supported\n");
-		return -ENODEV;
-	}
-
-	clk_rate = i2c_acpi_find_bus_speed(&client->adapter->dev);
-	if (!clk_rate) {
-		ret = device_property_read_u32(&client->adapter->dev,
-					       "clock-frequency", &bus_clk_rate);
-		if (ret) {
-			dev_err(dev, "failed to read clock-frequency property\n");
-			return ret;
-		}
-	}
-
-	if (bus_clk_rate > 1000000L) {
-		dev_err(dev, "%d exceeds maximum supported clock frequency (1MHz)\n",
-			bus_clk_rate);
-		return -EINVAL;
-	}
-
-	i2c_priv = devm_kmalloc(dev, sizeof(*i2c_priv), GFP_KERNEL);
-	if (!i2c_priv)
-		return -ENOMEM;
-
-	i2c_priv->client = client;
-	mutex_init(&i2c_priv->lock);
-
-	/*
-	 * WAKE_TOKEN_MAX_SIZE was calculated for the maximum bus_clk_rate -
-	 * 1MHz. The previous bus_clk_rate check ensures us that wake_token_sz
-	 * will always be smaller than or equal to WAKE_TOKEN_MAX_SIZE.
-	 */
-	i2c_priv->wake_token_sz = atmel_ecc_wake_token_sz(bus_clk_rate);
-
-	memset(i2c_priv->wake_token, 0, sizeof(i2c_priv->wake_token));
-
-	atomic_set(&i2c_priv->tfm_count, 0);
-
-	i2c_set_clientdata(client, i2c_priv);
-
-	ret = device_sanity_check(client);
+	ret = atmel_i2c_probe(client, id);
 	if (ret)
 		return ret;
 
+	i2c_priv = i2c_get_clientdata(client);
+
 	spin_lock(&driver_data.i2c_list_lock);
 	list_add_tail(&i2c_priv->i2c_client_list_node,
 		      &driver_data.i2c_client_list);
@@ -708,10 +346,10 @@ static int atmel_ecc_probe(struct i2c_client *client,
 		list_del(&i2c_priv->i2c_client_list_node);
 		spin_unlock(&driver_data.i2c_list_lock);
 
-		dev_err(dev, "%s alg registration failed\n",
+		dev_err(&client->dev, "%s alg registration failed\n",
 			atmel_ecdh.base.cra_driver_name);
 	} else {
-		dev_info(dev, "atmel ecc algorithms registered in /proc/crypto\n");
+		dev_info(&client->dev, "atmel ecc algorithms registered in /proc/crypto\n");
 	}
 
 	return ret;
@@ -719,7 +357,7 @@ static int atmel_ecc_probe(struct i2c_client *client,
 
 static int atmel_ecc_remove(struct i2c_client *client)
 {
-	struct atmel_ecc_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
+	struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
 
 	/* Return EBUSY if i2c client already allocated. */
 	if (atomic_read(&i2c_priv->tfm_count)) {
diff --git a/drivers/crypto/atmel-i2c.c b/drivers/crypto/atmel-i2c.c
new file mode 100644
index 000000000000..5e099368d120
--- /dev/null
+++ b/drivers/crypto/atmel-i2c.c
@@ -0,0 +1,349 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip / Atmel ECC (I2C) driver.
+ *
+ * Copyright (c) 2017, Microchip Technology Inc.
+ * Author: Tudor Ambarus <tudor.ambarus@microchip.com>
+ */
+
+#include <linux/bitrev.h>
+#include <linux/crc16.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/i2c.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/scatterlist.h>
+#include <linux/slab.h>
+#include <linux/workqueue.h>
+#include "atmel-i2c.h"
+
+/**
+ * atmel_i2c_checksum() - Generate 16-bit CRC as required by ATMEL ECC.
+ * CRC16 verification of the count, opcode, param1, param2 and data bytes.
+ * The checksum is saved in little-endian format in the least significant
+ * two bytes of the command. CRC polynomial is 0x8005 and the initial register
+ * value should be zero.
+ *
+ * @cmd : structure used for communicating with the device.
+ */
+static void atmel_i2c_checksum(struct atmel_i2c_cmd *cmd)
+{
+	u8 *data = &cmd->count;
+	size_t len = cmd->count - CRC_SIZE;
+	u16 *__crc16 = (u16 *)(data + len);
+
+	*__crc16 = cpu_to_le16(bitrev16(crc16(0, data, len)));
+}
+
+void atmel_i2c_init_read_cmd(struct atmel_i2c_cmd *cmd)
+{
+	cmd->word_addr = COMMAND;
+	cmd->opcode = OPCODE_READ;
+	/*
+	 * Read the word from Configuration zone that contains the lock bytes
+	 * (UserExtra, Selector, LockValue, LockConfig).
+	 */
+	cmd->param1 = CONFIG_ZONE;
+	cmd->param2 = DEVICE_LOCK_ADDR;
+	cmd->count = READ_COUNT;
+
+	atmel_i2c_checksum(cmd);
+
+	cmd->msecs = MAX_EXEC_TIME_READ;
+	cmd->rxsize = READ_RSP_SIZE;
+}
+EXPORT_SYMBOL(atmel_i2c_init_read_cmd);
+
+void atmel_i2c_init_genkey_cmd(struct atmel_i2c_cmd *cmd, u16 keyid)
+{
+	cmd->word_addr = COMMAND;
+	cmd->count = GENKEY_COUNT;
+	cmd->opcode = OPCODE_GENKEY;
+	cmd->param1 = GENKEY_MODE_PRIVATE;
+	/* a random private key will be generated and stored in slot keyID */
+	cmd->param2 = cpu_to_le16(keyid);
+
+	atmel_i2c_checksum(cmd);
+
+	cmd->msecs = MAX_EXEC_TIME_GENKEY;
+	cmd->rxsize = GENKEY_RSP_SIZE;
+}
+EXPORT_SYMBOL(atmel_i2c_init_genkey_cmd);
+
+int atmel_i2c_init_ecdh_cmd(struct atmel_i2c_cmd *cmd,
+			    struct scatterlist *pubkey)
+{
+	size_t copied;
+
+	cmd->word_addr = COMMAND;
+	cmd->count = ECDH_COUNT;
+	cmd->opcode = OPCODE_ECDH;
+	cmd->param1 = ECDH_PREFIX_MODE;
+	/* private key slot */
+	cmd->param2 = cpu_to_le16(DATA_SLOT_2);
+
+	/*
+	 * The device only supports NIST P256 ECC keys. The public key size will
+	 * always be the same. Use a macro for the key size to avoid unnecessary
+	 * computations.
+	 */
+	copied = sg_copy_to_buffer(pubkey,
+				   sg_nents_for_len(pubkey,
+						    ATMEL_ECC_PUBKEY_SIZE),
+				   cmd->data, ATMEL_ECC_PUBKEY_SIZE);
+	if (copied != ATMEL_ECC_PUBKEY_SIZE)
+		return -EINVAL;
+
+	atmel_i2c_checksum(cmd);
+
+	cmd->msecs = MAX_EXEC_TIME_ECDH;
+	cmd->rxsize = ECDH_RSP_SIZE;
+
+	return 0;
+}
+EXPORT_SYMBOL(atmel_i2c_init_ecdh_cmd);
+
+/*
+ * After wake and after execution of a command, there will be error, status, or
+ * result bytes in the device's output register that can be retrieved by the
+ * system. When the length of that group is four bytes, the codes returned are
+ * detailed in error_list.
+ */
+static int atmel_i2c_status(struct device *dev, u8 *status)
+{
+	size_t err_list_len = ARRAY_SIZE(error_list);
+	int i;
+	u8 err_id = status[1];
+
+	if (*status != STATUS_SIZE)
+		return 0;
+
+	if (err_id == STATUS_WAKE_SUCCESSFUL || err_id == STATUS_NOERR)
+		return 0;
+
+	for (i = 0; i < err_list_len; i++)
+		if (error_list[i].value == err_id)
+			break;
+
+	/* if err_id is not in the error_list then ignore it */
+	if (i != err_list_len) {
+		dev_err(dev, "%02x: %s:\n", err_id, error_list[i].error_text);
+		return err_id;
+	}
+
+	return 0;
+}
+
+static int atmel_i2c_wakeup(struct i2c_client *client)
+{
+	struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
+	u8 status[STATUS_RSP_SIZE];
+	int ret;
+
+	/*
+	 * The device ignores any levels or transitions on the SCL pin when the
+	 * device is idle, asleep or during waking up. Don't check for error
+	 * when waking up the device.
+	 */
+	i2c_master_send(client, i2c_priv->wake_token, i2c_priv->wake_token_sz);
+
+	/*
+	 * Wait to wake the device. Typical execution times for ecdh and genkey
+	 * are around tens of milliseconds. Delta is chosen to 50 microseconds.
+	 */
+	usleep_range(TWHI_MIN, TWHI_MAX);
+
+	ret = i2c_master_recv(client, status, STATUS_SIZE);
+	if (ret < 0)
+		return ret;
+
+	return atmel_i2c_status(&client->dev, status);
+}
+
+static int atmel_i2c_sleep(struct i2c_client *client)
+{
+	u8 sleep = SLEEP_TOKEN;
+
+	return i2c_master_send(client, &sleep, 1);
+}
+
+/*
+ * atmel_i2c_send_receive() - send a command to the device and receive its
+ *                            response.
+ * @client: i2c client device
+ * @cmd   : structure used to communicate with the device
+ *
+ * After the device receives a Wake token, a watchdog counter starts within the
+ * device. After the watchdog timer expires, the device enters sleep mode
+ * regardless of whether some I/O transmission or command execution is in
+ * progress. If a command is attempted when insufficient time remains prior to
+ * watchdog timer execution, the device will return the watchdog timeout error
+ * code without attempting to execute the command. There is no way to reset the
+ * counter other than to put the device into sleep or idle mode and then
+ * wake it up again.
+ */
+int atmel_i2c_send_receive(struct i2c_client *client, struct atmel_i2c_cmd *cmd)
+{
+	struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
+	int ret;
+
+	mutex_lock(&i2c_priv->lock);
+
+	ret = atmel_i2c_wakeup(client);
+	if (ret)
+		goto err;
+
+	/* send the command */
+	ret = i2c_master_send(client, (u8 *)cmd, cmd->count + WORD_ADDR_SIZE);
+	if (ret < 0)
+		goto err;
+
+	/* delay the appropriate amount of time for command to execute */
+	msleep(cmd->msecs);
+
+	/* receive the response */
+	ret = i2c_master_recv(client, cmd->data, cmd->rxsize);
+	if (ret < 0)
+		goto err;
+
+	/* put the device into low-power mode */
+	ret = atmel_i2c_sleep(client);
+	if (ret < 0)
+		goto err;
+
+	mutex_unlock(&i2c_priv->lock);
+	return atmel_i2c_status(&client->dev, cmd->data);
+err:
+	mutex_unlock(&i2c_priv->lock);
+	return ret;
+}
+EXPORT_SYMBOL(atmel_i2c_send_receive);
+
+static void atmel_i2c_work_handler(struct work_struct *work)
+{
+	struct atmel_i2c_work_data *work_data =
+			container_of(work, struct atmel_i2c_work_data, work);
+	struct atmel_i2c_cmd *cmd = &work_data->cmd;
+	struct i2c_client *client = work_data->client;
+	int status;
+
+	status = atmel_i2c_send_receive(client, cmd);
+	work_data->cbk(work_data, work_data->areq, status);
+}
+
+void atmel_i2c_enqueue(struct atmel_i2c_work_data *work_data,
+		       void (*cbk)(struct atmel_i2c_work_data *work_data,
+				   void *areq, int status),
+		       void *areq)
+{
+	work_data->cbk = (void *)cbk;
+	work_data->areq = areq;
+
+	INIT_WORK(&work_data->work, atmel_i2c_work_handler);
+	schedule_work(&work_data->work);
+}
+EXPORT_SYMBOL(atmel_i2c_enqueue);
+
+static inline size_t atmel_i2c_wake_token_sz(u32 bus_clk_rate)
+{
+	u32 no_of_bits = DIV_ROUND_UP(TWLO_USEC * bus_clk_rate, USEC_PER_SEC);
+
+	/* return the size of the wake_token in bytes */
+	return DIV_ROUND_UP(no_of_bits, 8);
+}
+
+static int device_sanity_check(struct i2c_client *client)
+{
+	struct atmel_i2c_cmd *cmd;
+	int ret;
+
+	cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
+	if (!cmd)
+		return -ENOMEM;
+
+	atmel_i2c_init_read_cmd(cmd);
+
+	ret = atmel_i2c_send_receive(client, cmd);
+	if (ret)
+		goto free_cmd;
+
+	/*
+	 * It is vital that the Configuration, Data and OTP zones be locked
+	 * prior to release into the field of the system containing the device.
+	 * Failure to lock these zones may permit modification of any secret
+	 * keys and may lead to other security problems.
+	 */
+	if (cmd->data[LOCK_CONFIG_IDX] || cmd->data[LOCK_VALUE_IDX]) {
+		dev_err(&client->dev, "Configuration or Data and OTP zones are unlocked!\n");
+		ret = -ENOTSUPP;
+	}
+
+	/* fall through */
+free_cmd:
+	kfree(cmd);
+	return ret;
+}
+
+int atmel_i2c_probe(struct i2c_client *client, const struct i2c_device_id *id)
+{
+	struct atmel_i2c_client_priv *i2c_priv;
+	struct device *dev = &client->dev;
+	int ret;
+	u32 bus_clk_rate;
+
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
+		dev_err(dev, "I2C_FUNC_I2C not supported\n");
+		return -ENODEV;
+	}
+
+	bus_clk_rate = i2c_acpi_find_bus_speed(&client->adapter->dev);
+	if (!bus_clk_rate) {
+		ret = device_property_read_u32(&client->adapter->dev,
+					       "clock-frequency", &bus_clk_rate);
+		if (ret) {
+			dev_err(dev, "failed to read clock-frequency property\n");
+			return ret;
+		}
+	}
+
+	if (bus_clk_rate > 1000000L) {
+		dev_err(dev, "%d exceeds maximum supported clock frequency (1MHz)\n",
+			bus_clk_rate);
+		return -EINVAL;
+	}
+
+	i2c_priv = devm_kmalloc(dev, sizeof(*i2c_priv), GFP_KERNEL);
+	if (!i2c_priv)
+		return -ENOMEM;
+
+	i2c_priv->client = client;
+	mutex_init(&i2c_priv->lock);
+
+	/*
+	 * WAKE_TOKEN_MAX_SIZE was calculated for the maximum bus_clk_rate -
+	 * 1MHz. The previous bus_clk_rate check ensures us that wake_token_sz
+	 * will always be smaller than or equal to WAKE_TOKEN_MAX_SIZE.
+	 */
+	i2c_priv->wake_token_sz = atmel_i2c_wake_token_sz(bus_clk_rate);
+
+	memset(i2c_priv->wake_token, 0, sizeof(i2c_priv->wake_token));
+
+	atomic_set(&i2c_priv->tfm_count, 0);
+
+	i2c_set_clientdata(client, i2c_priv);
+
+	ret = device_sanity_check(client);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(atmel_i2c_probe);
+
+MODULE_AUTHOR("Tudor Ambarus <tudor.ambarus@microchip.com>");
+MODULE_DESCRIPTION("Microchip / Atmel ECC (I2C) driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/crypto/atmel-ecc.h b/drivers/crypto/atmel-i2c.h
similarity index 51%
rename from drivers/crypto/atmel-ecc.h
rename to drivers/crypto/atmel-i2c.h
index 643a3b947338..82de5166acfa 100644
--- a/drivers/crypto/atmel-ecc.h
+++ b/drivers/crypto/atmel-i2c.h
@@ -4,8 +4,8 @@
  * Author: Tudor Ambarus <tudor.ambarus@microchip.com>
  */
 
-#ifndef __ATMEL_ECC_H__
-#define __ATMEL_ECC_H__
+#ifndef __ATMEL_I2C_H__
+#define __ATMEL_I2C_H__
 
 #define ATMEL_ECC_PRIORITY		300
 
@@ -31,7 +31,7 @@
 #define MAX_RSP_SIZE			GENKEY_RSP_SIZE
 
 /**
- * atmel_ecc_cmd - structure used for communicating with the device.
+ * atmel_i2c_cmd - structure used for communicating with the device.
  * @word_addr: indicates the function of the packet sent to the device. This
  *             byte should have a value of COMMAND for normal operation.
  * @count    : number of bytes to be transferred to (or from) the device.
@@ -42,7 +42,7 @@
  * @rxsize   : size of the data received from i2c client.
  * @msecs    : command execution time in milliseconds
  */
-struct atmel_ecc_cmd {
+struct atmel_i2c_cmd {
 	u8 word_addr;
 	u8 count;
 	u8 opcode;
@@ -113,4 +113,74 @@ static const struct {
 #define ECDH_COUNT			71
 #define ECDH_PREFIX_MODE		0x00
 
-#endif /* __ATMEL_ECC_H__ */
+/* Used for binding tfm objects to i2c clients. */
+struct atmel_ecc_driver_data {
+	struct list_head i2c_client_list;
+	spinlock_t i2c_list_lock;
+} ____cacheline_aligned;
+
+/**
+ * atmel_i2c_client_priv - i2c_client private data
+ * @client              : pointer to i2c client device
+ * @i2c_client_list_node: part of i2c_client_list
+ * @lock                : lock for sending i2c commands
+ * @wake_token          : wake token array of zeros
+ * @wake_token_sz       : size in bytes of the wake_token
+ * @tfm_count           : number of active crypto transformations on i2c client
+ *
+ * Reads and writes from/to the i2c client are sequential. The first byte
+ * transmitted to the device is treated as the byte size. Any attempt to send
+ * more than this number of bytes will cause the device to not ACK those bytes.
+ * After the host writes a single command byte to the input buffer, reads are
+ * prohibited until after the device completes command execution. Use a mutex
+ * when sending i2c commands.
+ */
+struct atmel_i2c_client_priv {
+	struct i2c_client *client;
+	struct list_head i2c_client_list_node;
+	struct mutex lock;
+	u8 wake_token[WAKE_TOKEN_MAX_SIZE];
+	size_t wake_token_sz;
+	atomic_t tfm_count ____cacheline_aligned;
+};
+
+/**
+ * atmel_i2c_work_data - data structure representing the work
+ * @ctx : transformation context.
+ * @cbk : pointer to a callback function to be invoked upon completion of this
+ *        request. This has the form:
+ *        callback(struct atmel_i2c_work_data *work_data, void *areq, u8 status)
+ *        where:
+ *        @work_data: data structure representing the work
+ *        @areq     : optional pointer to an argument passed with the original
+ *                    request.
+ *        @status   : status returned from the i2c client device or i2c error.
+ * @areq: optional pointer to a user argument for use at callback time.
+ * @work: describes the task to be executed.
+ * @cmd : structure used for communicating with the device.
+ */
+struct atmel_i2c_work_data {
+	void *ctx;
+	struct i2c_client *client;
+	void (*cbk)(struct atmel_i2c_work_data *work_data, void *areq,
+		    int status);
+	void *areq;
+	struct work_struct work;
+	struct atmel_i2c_cmd cmd;
+};
+
+int atmel_i2c_probe(struct i2c_client *client, const struct i2c_device_id *id);
+
+void atmel_i2c_enqueue(struct atmel_i2c_work_data *work_data,
+		       void (*cbk)(struct atmel_i2c_work_data *work_data,
+				   void *areq, int status),
+		       void *areq);
+
+int atmel_i2c_send_receive(struct i2c_client *client, struct atmel_i2c_cmd *cmd);
+
+void atmel_i2c_init_read_cmd(struct atmel_i2c_cmd *cmd);
+void atmel_i2c_init_genkey_cmd(struct atmel_i2c_cmd *cmd, u16 keyid);
+int atmel_i2c_init_ecdh_cmd(struct atmel_i2c_cmd *cmd,
+			    struct scatterlist *pubkey);
+
+#endif /* __ATMEL_I2C_H__ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
