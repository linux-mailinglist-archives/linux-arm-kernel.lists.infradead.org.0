Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0445B1C4DE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3RCwmui291ebrpg/zsh5MqKhTqQfWPxESPG5CeWoOs=; b=BxkF5ayESBIbsL
	KiiNEks4qR+yHz7dnIl4ydB0DDm80pgnFc4D5N0xd9XGdb4Lmtw6u9NRGeGgXoYntg8meQN6En34T
	FWPJwHqCyU8prLDjj62ikTFdzlJDujgVbQ7ZGKhZhyG0L8Qk88Sdw1muSlj3DpFCEN2OcxfgbcJKh
	7SpLkP9B3wyX/5TthNaJP4Ux5F/1PoBxeHj5Emcw2XCyVeNgAxl7f/DrbF+iz3HjLQRI/rK8GWvZX
	SX36BYEjOIMd7Ay6zop22YmcWbphM8KiJwki3jEK+tC1Z2myUsLrhfXt0cjD2LFXiOGf6b7vIiwHs
	0V3N7BhiACt5bJHCXppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqVv-0007vB-9b; Tue, 05 May 2020 05:53:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqVK-0007Rx-P0
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 05:52:33 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0455l5X6027087; Tue, 5 May 2020 07:52:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Tkcg9s1uDu/OOadkPkeZF9B5T6AZFP5XkTZX0ihRw8k=;
 b=CI9ezifyJBfwqbQsaqh8o4ZvjtLehvt6i+UNxWZruakeg+8UXPU8iIljCfAl2KVQJ1/I
 b7KdHpzD+ozDtarb4Ou6q1PF0xZwyYg6pZ44B4FGtb7Y+FcvtXgHsTeBYkpWqCO9xvwn
 uhqvf3cOHrc9JjHnOvbrbUocT261I/IjtHTNis2kjzCbjRCyS0A41bAUs2Fl5w72Q7zD
 4bbzJ+We2jRW6vq99a977sOBtW2x4rrvzBlioYSo68LpaATZ9ifQW3M0whIjxxOpGbGn
 aUksql+sktcTaYKQYzYFh62CrDq/eb1PzSCT3OK74teuej2K11aEqZdIxA5dVrwuftU2 yQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxb1wy0p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 07:52:21 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D1E57100039;
 Tue,  5 May 2020 07:52:20 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C3EA721CA81;
 Tue,  5 May 2020 07:52:20 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May 2020 07:52:20
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 2/4] i2c: addition of client reg/unreg callbacks
Date: Tue, 5 May 2020 07:51:09 +0200
Message-ID: <1588657871-14747-3-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_02:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_225231_124092_6E131958 
X-CRM114-Status: GOOD (  15.86  )
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

Addition of two callbacks reg_client and unreg_client that can be
implemented by adapter drivers in order to take action whenever a
client is being registered to it.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/i2c-core-base.c | 11 +++++++++++
 include/linux/i2c.h         |  6 ++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index 2e4560671183..4c84c6264314 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -319,6 +319,12 @@ static int i2c_device_probe(struct device *dev)
 	if (!client)
 		return 0;
 
+	if (client->adapter->algo->reg_client) {
+		status = client->adapter->algo->reg_client(client);
+		if (status)
+			return status;
+	}
+
 	driver = to_i2c_driver(dev->driver);
 
 	client->irq = client->init_irq;
@@ -417,6 +423,8 @@ static int i2c_device_probe(struct device *dev)
 put_sync_adapter:
 	if (client->flags & I2C_CLIENT_HOST_NOTIFY)
 		pm_runtime_put_sync(&client->adapter->dev);
+	if (client->adapter->algo->reg_client)
+		client->adapter->algo->unreg_client(client);
 
 	return status;
 }
@@ -445,6 +453,9 @@ static int i2c_device_remove(struct device *dev)
 	if (client->flags & I2C_CLIENT_HOST_NOTIFY)
 		pm_runtime_put(&client->adapter->dev);
 
+	if (client->adapter->algo->unreg_client)
+		client->adapter->algo->unreg_client(client);
+
 	return status;
 }
 
diff --git a/include/linux/i2c.h b/include/linux/i2c.h
index 45d36ba4826b..61b838caf454 100644
--- a/include/linux/i2c.h
+++ b/include/linux/i2c.h
@@ -509,6 +509,8 @@ i2c_register_board_info(int busnum, struct i2c_board_info const *info,
  *   so e.g. PMICs can be accessed very late before shutdown. Optional.
  * @functionality: Return the flags that this algorithm/adapter pair supports
  *   from the ``I2C_FUNC_*`` flags.
+ * @reg_client: Callback informing that a new client is being registered
+ * @unreg_client: Callback informing that a client is being removed
  * @reg_slave: Register given client to I2C slave mode of this adapter
  * @unreg_slave: Unregister given client from I2C slave mode of this adapter
  *
@@ -545,6 +547,10 @@ struct i2c_algorithm {
 	/* To determine what the adapter supports */
 	u32 (*functionality)(struct i2c_adapter *adap);
 
+	/* To inform the adapter of the probe/remove of a client */
+	int (*reg_client)(struct i2c_client *client);
+	void (*unreg_client)(struct i2c_client *client);
+
 #if IS_ENABLED(CONFIG_I2C_SLAVE)
 	int (*reg_slave)(struct i2c_client *client);
 	int (*unreg_slave)(struct i2c_client *client);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
