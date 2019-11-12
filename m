Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B53F8A64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=crQ2S6CHppcUaL4nUh6daS1MUVyTzeli+Jntdl2V+S4=; b=UerjMB8Osxdi8m
	EuYB5Ry6tJnlUSfVLtr4Zo1oadqt24nWCDQMY7+BxGpn3ucD4dwjS2nlPIkX9ZsE5gG1Y950AFlOs
	az8XFERY1YI1qJhlBXIOwlUdgbtJvgKleESHXIQBOjzQIrx8nnVu1KMIRcMrwps8CcgtpGzQnrE5F
	fHHT5EBxvBoa6fjvFRuywqIJv+hQabsl5fzjIlnmyB2N8yvUxjY1xkHG7JcSXnufz4/yNAdvN+734
	XwaCs2XMdQGP4ZZuYdbW6zsEhUBwvAgAO1gK6LfJH7ChrTgkteaMyL9BGCoj2vIft6DYSrTdvIrJ4
	S7hXZPJccgZMa5ZyhrOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURP5-0002vA-S9; Tue, 12 Nov 2019 08:19:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUROy-0002uK-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:19:54 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAC8HbWf001225; Tue, 12 Nov 2019 09:19:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=v4gTBAxsgJ7NKkWijREg7mahBipp4rc6jcfGG/NsFI0=;
 b=CIiJnElyeqyya4SwztKSMIIb+ShthqGBFDvSx+z2/v7kGyurVxpqNeRJm3KC22Hgmek4
 UvA7WexYTj78WTwf9+aIHPtWbneFzDGWSAdUiuSUDsZAWB/c1eRyHCZDW5gmHQDyiVQF
 V90jQl5QYrr5hYCRXvIv8pS0zpdGO/NFJQ4JJrAmjZGZko5WtsKHcM0QtyvNdAbxbT5g
 aQLPU7ymC+pFU7gKPjIgoiay9TNuXNi5vVWSKnmCCUriGuX9ctpICERweNSDM1txx8cf
 pWMrZsVL9uhaKGKXD20GGnJF0mBlv8aONdLIa0ETu4b3MaLliSncGSNqTkKsgZNCrpD1 HA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7pstrp5v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 Nov 2019 09:19:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4688510002A;
 Tue, 12 Nov 2019 09:19:45 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2C20C2AA4E5;
 Tue, 12 Nov 2019 09:19:45 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 12 Nov 2019 09:19:44
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH] i2c: i2c-stm32f7: fix 10-bits check in slave free id search
 loop
Date: Tue, 12 Nov 2019 09:19:44 +0100
Message-ID: <1573546784-28182-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-12_02:2019-11-11,2019-11-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_001953_002162_C61739BE 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a typo in the free slave id search loop. Instead of I2C_CLIENT_PEC,
it should have been I2C_CLIENT_TEN. The slave id 1 can only handle 7-bit
addresses and thus is not eligible in case of 10-bit addresses.
As a matter of fact none of the slave id support I2C_CLIENT_PEC, overall
check is performed at the beginning of the stm32f7_i2c_reg_slave function.

Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index b9a082f64d58..b2634afe066d 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1268,7 +1268,7 @@ static int stm32f7_i2c_get_free_slave_id(struct stm32f7_i2c_dev *i2c_dev,
 	 * slave[1] supports 7-bit slave address only
 	 */
 	for (i = STM32F7_I2C_MAX_SLAVE - 1; i >= 0; i--) {
-		if (i == 1 && (slave->flags & I2C_CLIENT_PEC))
+		if (i == 1 && (slave->flags & I2C_CLIENT_TEN))
 			continue;
 		if (!i2c_dev->slave[i]) {
 			*id = i;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
