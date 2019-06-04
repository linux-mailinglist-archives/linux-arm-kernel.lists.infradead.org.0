Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD2C348ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lix5rcRGRd0UZ0U5qadqIHLfX6e6iSQ1jedJYC6Fn9c=; b=CU7KtTuj8YLJu6
	p4aSKvtcuEje1XQdNoa9PRubGugSmQacU2G2IkeCFkxgy8Gx9GQZZjVHxoSSsBSauLqQN1mO7iWR1
	NgaAkZKYzbKrGz5FsF7rBnEcHrhAzAD3ta5TsECvqoIo3JW/+1ZxZSwRu8gvtiArYgzbhtHJVSd8d
	DsobXMFnW9cOSHl22eIzaNtOV3CAN3WIUp5xXwJE3stqEgjvMbwYcLePw5f7j6nhLXSoiKuaEKXIP
	xrfq6CZ8FYxzOD/pl7jSKv/dwOs8hADvNCaW17EUx2pjSVMXeWS/v4lmSZ37Sm9ymyBP/0wjj7tcS
	16NpL1GNVm1R96nAaqWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9aW-0007qC-U9; Tue, 04 Jun 2019 13:34:52 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9aH-0007ls-Se
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:34:44 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x54DM2T2031387; Tue, 4 Jun 2019 15:34:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=JYRJ+q63Fhy7zqvNhQoupVuURIhtdf05RxS1XTNxJFc=;
 b=IbA//KFhtlwxSBdLo4g0/XuBdFuYQWXdReWU3Hc1ef4QyT7ZWrxo/wPObdJ0fENY2ICU
 ypxi6Hh+/fL6YbfcB7n82uH4qeylBqKW/A27k0bORE/PAuzs4cUnd9CGcty1/yDyv/lc
 UhQ0Ru6EfddKYLae17r/RYB8XsMKWy3v3EeQ8ybjUcMN8SHrLctLiDLOZu3UdbELEQz6
 v4bnogFOOEeDMQQN1wh+qjsQCjISrVsHB0WVG/B3ZeMZm+cuL1vZTbZlI51dOH2VvLMY
 oM4UKvuA1NaEv6b6U9ZckFvOuiUw0ygUlrZt4VdudSM50YEKCmitILn6xhwtgSYDRc2h yw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sunmc8q5h-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 04 Jun 2019 15:34:31 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5413A31;
 Tue,  4 Jun 2019 13:34:30 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 23D192AB6;
 Tue,  4 Jun 2019 13:34:30 +0000 (GMT)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 4 Jun 2019 15:34:29 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: i2c-stm32: document optional dmas
Date: Tue, 4 Jun 2019 15:34:13 +0200
Message-ID: <1559655253-27008-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-04_09:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_063438_363656_6EC4E473 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing documentation for "dmas" and "dma-names" properties that can be
used on i2c-stm32.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 Documentation/devicetree/bindings/i2c/i2c-stm32.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt b/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
index f334738..ce3df2ff 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
@@ -21,6 +21,8 @@ Optional properties:
   100000 and 400000.
   For STM32F7, STM32H7 and STM32MP1 SoCs, Standard-mode, Fast-mode and Fast-mode
   Plus are supported, possible values are 100000, 400000 and 1000000.
+- dmas: List of phandles to rx and tx DMA channels. Refer to stm32-dma.txt.
+- dma-names: List of dma names. Valid names are: "rx" and "tx".
 - i2c-scl-rising-time-ns: I2C SCL Rising time for the board (default: 25)
   For STM32F7, STM32H7 and STM32MP1 only.
 - i2c-scl-falling-time-ns: I2C SCL Falling time for the board (default: 10)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
