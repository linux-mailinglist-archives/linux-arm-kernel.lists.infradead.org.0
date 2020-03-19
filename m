Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FDB18BF48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JtRLvoLFjPxwC2YbOsH28qa8sUsi5QBCkdR8lkQytVo=; b=gIC27zuttGbmNi
	ie8ceeUv8BI5/XCelILMfeV3ttFAMlaSIZpzdZNqYvjwOQKXyrFnQ1XllhiUSeeFGW513fXt+dU2U
	YOnO8rAob1f+Xh9yMd+CMephk6rBAp36aWxDzuaoUR/XvJESA/2soO5PnSmnpsXojW8UNxVC/W4MT
	kuM/R6x5yFr1w62M6kx/NihgzN0AOCddtCCaEu2z+2bevinW1g7ffVGS1yB0dtSmeqmOtdWipibE3
	/rqlalVtyPbtISal45u4pXlBWrv1/0SGTSj3Sy7/+mcyaZDB7mGIHLuI+p/8w3YJ1k4RjSyVsNWav
	lx0VwSZtO1kPffH61cIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzo7-0007tz-3B; Thu, 19 Mar 2020 18:22:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEznv-0007tM-VU
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:22:05 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02JID3dP016634; Thu, 19 Mar 2020 19:22:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=G+/E9/Q9sLbpBhTh4T0w7AaQd0y57u80iKpFj5VnKPA=;
 b=RE7PHEwNRdJyshNH4hQX/2coCEg5//W3GTf9pzPbMZgs64CW+02LOCS242X/YHsuTvUa
 muuZBZ6ukbpvD4yWINz7B/Y3IQbeqprqTFgL/3IjOqgUEmeYASt29rs2yJEKErq/Vp9e
 PuujjVPtjSbpBpdS/99LqzCC9HXaePgMA9/vr2SkxBRAMhSIh6EaWAjGou9WNkN5qZw8
 X5NzlEzXoXibXXX6Valn5X4LCCYvDNxpyl0uAOnXHlfZAMLlyrIknz/K4GBxjqXuuFhc
 lD4u2fk2ojKxlctogJ1QElDm9eKk+xMzRL+t2tXvhIaYs2DV4GS6i7oWj3kLp94mAnjQ aQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu95uu59b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 19:22:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A8CC710002A;
 Thu, 19 Mar 2020 19:21:55 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9B10522190E;
 Thu, 19 Mar 2020 19:21:55 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Mar 2020 19:21:55
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH] i2c: i2c-stm32f7: improve nack debug message
Date: Thu, 19 Mar 2020 19:21:55 +0100
Message-ID: <1584642115-15378-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-19_07:2020-03-19,
 2020-03-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_112204_308636_228A1E72 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabrice Gasnier <fabrice.gasnier@st.com>

Add information on slave addr in the nack debug message.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 378956ac6d1d..78d40a4cc282 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1431,7 +1431,8 @@ static irqreturn_t stm32f7_i2c_isr_event(int irq, void *data)
 
 	/* NACK received */
 	if (status & STM32F7_I2C_ISR_NACKF) {
-		dev_dbg(i2c_dev->dev, "<%s>: Receive NACK\n", __func__);
+		dev_dbg(i2c_dev->dev, "<%s>: Receive NACK (addr %x)\n",
+			__func__, f7_msg->addr);
 		writel_relaxed(STM32F7_I2C_ICR_NACKCF, base + STM32F7_I2C_ICR);
 		f7_msg->result = -ENXIO;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
