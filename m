Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A0E1C4DDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WWKuSQ7ZaWvV+Bq3EPG2Q7k/Kjbb5ryCINhEcLjWTs=; b=qrbKUfh1bnFrhQ
	eK9SQpHqnEGV1HVWgVlDMLl74+Bxtz9xRctw8HURcXL12TyIL02i6mjlqcXMkzNBAhbpazaYpHaH2
	2X7bY2JqYIvRQqwCF0Iw47fa4B6RrYFqtmqLWgIMNcgrs/ANMtrKOg0R7MVwTpxjlNxajVnFhCuoG
	whDtrcqihuJJUi9f1ol7MXvd0CsZczJbwkPmn2r8IzcJnNuP/ZuZB4Nwgx6V7ZK9VOQ9MuXTbyBpM
	gmHtiL8zhCQAyO6M0YxxC9cxUiLu2nsZlcBThclSE0oAC4C3tceULA+ZyEJU8/tAXGpPBO6xtkUUj
	BhFZz8IFnij9DfjtH1xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqVk-0007bJ-S1; Tue, 05 May 2020 05:52:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqVK-0007Rz-JB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 05:52:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0455l5f1027091; Tue, 5 May 2020 07:52:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=GopKOZPzu+8i/oUoqkNnJs4tklyiulsTc+pEfuMGGk8=;
 b=QHNuk5ZVdOMBd9RvPTw24x7ky1r6ZeUp2u6qCEDCZduimczmozXcQKCQVZnHOxeBVsrh
 aWmKI7ULZMFPvN+e66DYgdIg7rP5ERVFkobb1uE4c8twWy4FMAJBVo313r7EEvrO2qCr
 2aFj6CIG+/lrFsWn/kmyYCpvw0QTBLjmUxDd5xBk0DhcO8Z5SDZUS6/MQb95zNDr36Ce
 UhkPwla4miEe3eckeSRdxvhKuwgub7vUfFBb49SAje9IfeSVkRdAHzWxC97h+aW1AA7f
 Ng7e+eZvjEqFDQeaErDS6rOaNmMzQtQjf9EDqnCJ674lc3j4F/itODP1YEXKv7AvBoaR ew== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxb1wy0n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 07:52:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7A35F100034;
 Tue,  5 May 2020 07:52:20 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6948021CA80;
 Tue,  5 May 2020 07:52:20 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May 2020 07:52:20
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 1/4] i2c: smbus: add core function handling SMBus host-notify
Date: Tue, 5 May 2020 07:51:08 +0200
Message-ID: <1588657871-14747-2-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_02:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_225231_121872_305DACA1 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SMBus Host-Notify protocol, from the adapter point of view
consist of receiving a message from a client, including the
client address and some other data.

It can be simply handled by creating a new slave device
and registering a callback performing the parsing of the
message received from the client.

This commit introduces two new core functions
  * i2c_new_smbus_host_notify_device
  * i2c_free_smbus_host_notify_device
that take care of registration of the new slave device and
callback and will call i2c_handle_smbus_host_notify once a
Host-Notify event is received.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/i2c-core-smbus.c | 105 +++++++++++++++++++++++++++++++++++
 include/linux/i2c-smbus.h    |   2 +
 2 files changed, 107 insertions(+)

diff --git a/drivers/i2c/i2c-core-smbus.c b/drivers/i2c/i2c-core-smbus.c
index b34d2ff06931..0c7e135c73e1 100644
--- a/drivers/i2c/i2c-core-smbus.c
+++ b/drivers/i2c/i2c-core-smbus.c
@@ -708,3 +708,108 @@ int of_i2c_setup_smbus_alert(struct i2c_adapter *adapter)
 }
 EXPORT_SYMBOL_GPL(of_i2c_setup_smbus_alert);
 #endif
+
+struct i2c_smbus_host_notify_status {
+	bool notify_start;
+	u8 addr;
+};
+
+static int i2c_smbus_host_notify_cb(struct i2c_client *client,
+				    enum i2c_slave_event event, u8 *val)
+{
+	struct i2c_smbus_host_notify_status *status = client->dev.platform_data;
+	int ret;
+
+	switch (event) {
+	case I2C_SLAVE_WRITE_REQUESTED:
+		status->notify_start = true;
+		break;
+	case I2C_SLAVE_WRITE_RECEIVED:
+		/* We only retrieve the first byte received (addr)
+		 * since there is currently no way to retrieve the data
+		 * parameter from the client.
+		 */
+		if (!status->notify_start)
+			break;
+		status->addr = *val;
+		status->notify_start = false;
+		break;
+	case I2C_SLAVE_STOP:
+		ret = i2c_handle_smbus_host_notify(client->adapter,
+						   status->addr);
+		if (ret < 0) {
+			dev_warn(&client->adapter->dev, "failed to handle host_notify (%d)\n",
+				ret);
+			return ret;
+		}
+		break;
+	default:
+		/* Only handle necessary events */
+		break;
+	}
+
+	return 0;
+}
+
+/**
+ * i2c_new_smbus_host_notify_device - get a client for SMBus host-notify support
+ * @adapter: the target adapter
+ * Context: can sleep
+ *
+ * Setup handling of the SMBus host-notify protocol on a given I2C bus segment.
+ *
+ * Handling is done by creating a device and its callback and handling data
+ * received via the SMBus host-notify address (0x8)
+ *
+ * This returns the client, which should be ultimately freed using
+ * i2c_free_smbus_host_notify_device(); or an ERRPTR to indicate an error.
+ */
+struct i2c_client *i2c_new_smbus_host_notify_device(struct i2c_adapter *adapter)
+{
+	struct i2c_board_info host_notify_board_info = {
+		I2C_BOARD_INFO("smbus_host_notify", 0x08),
+		.flags  = I2C_CLIENT_SLAVE,
+	};
+	struct i2c_smbus_host_notify_status *status;
+	struct i2c_client *client;
+	int ret;
+
+	status = kzalloc(sizeof(struct i2c_smbus_host_notify_status),
+			 GFP_KERNEL);
+	if (!status)
+		return ERR_PTR(-ENOMEM);
+
+	host_notify_board_info.platform_data = status;
+
+	client = i2c_new_client_device(adapter, &host_notify_board_info);
+	if (IS_ERR(client)) {
+		kfree(status);
+		return client;
+	}
+
+	ret = i2c_slave_register(client, i2c_smbus_host_notify_cb);
+	if (ret) {
+		i2c_unregister_device(client);
+		kfree(status);
+		return ERR_PTR(ret);
+	}
+
+	return client;
+}
+EXPORT_SYMBOL_GPL(i2c_new_smbus_host_notify_device);
+
+/**
+ * i2c_free_smbus_host_notify_device - free the client for SMBus host-notify
+ * support
+ * @client: the client to free
+ * Context: can sleep
+ *
+ * Free the i2c_client allocated via i2c_new_smbus_host_notify_device
+ */
+void i2c_free_smbus_host_notify_device(struct i2c_client *client)
+{
+	i2c_slave_unregister(client);
+	kfree(client->dev.platform_data);
+	i2c_unregister_device(client);
+}
+EXPORT_SYMBOL_GPL(i2c_free_smbus_host_notify_device);
diff --git a/include/linux/i2c-smbus.h b/include/linux/i2c-smbus.h
index 8c5459034f92..926f6d8ae30d 100644
--- a/include/linux/i2c-smbus.h
+++ b/include/linux/i2c-smbus.h
@@ -38,5 +38,7 @@ static inline int of_i2c_setup_smbus_alert(struct i2c_adapter *adap)
 	return 0;
 }
 #endif
+struct i2c_client *i2c_new_smbus_host_notify_device(struct i2c_adapter *adapter);
+void i2c_free_smbus_host_notify_device(struct i2c_client *client);
 
 #endif /* _LINUX_I2C_SMBUS_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
