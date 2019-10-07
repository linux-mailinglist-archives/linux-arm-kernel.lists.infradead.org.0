Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A181CE3FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkxfLWc0SovI7mQEH1eyOmZFv6RQmQxOsh+iSKPcAIM=; b=RrTYuNTB2FNdmf
	FjOHVPTxu62bxqLmrWE0Shb50ZZrnBlDOt0DgyfDXyrQGyHJyyShd+fFS46trZPN4SBK2YFNGc0kB
	jFlWBPuN9dP784d9n2FZwzuK3ayIZbDxENEfm9n0qSSH0iu6USQ06DhGthLP6Oe+CYem8zF6OqA6v
	jfdR5K2XGEcrkxT3niOVjMHTLHEotnLB2VI2g5nZFhPcvUeXY69MZVdNjbdwlJpTWT1jiuOog8q8s
	fEkqw1HmMsdfH1KwMLoRsKY1KSE0k9soXcguWBjez+A18UK3wa7chkUMJ/Uw0Xzriii/kgBALdIkt
	Nnefnw/xwU1UXqt0xXAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTJS-0008PO-1S; Mon, 07 Oct 2019 13:44:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTJJ-0008O2-Oi
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:44:27 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97DaVte022434; Mon, 7 Oct 2019 15:44:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=az9dy2ktIqgkk5jYrhMqsSlUq7PYeTVraawDvBq1iLs=;
 b=CnGVHQae22DWj2D5/tu8rSKxqi4JNXRIxWp0XLbbq5xjzm2RXXSbZ4iIvwplKPNrv230
 fKI78F6XCb+wQyH1F6e4hg+6k2ZdIkscyK8AeZAW9gMDXMKEpKFAeBFihXQN8VI5lJvk
 oh2nw0YlWlj3EPpOanF76JOjN5I3a8EZY7BMl/Jzvh8ZzRTI/y5OQrs5U9qEcsLcWqmn
 zQjhNcws1CySwI2zYgpWe9jpmppa41dsYguiBmAXosTwXqV0B+VxzsOuFsYEHM4SLbmz
 boVgsDQATUufm+/VX4p7ojXZcahoEOYjf6IAluuhirtEfpP+qf6FtguBxt4xWaSc78e2 yw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn0jns0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 15:44:13 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C652D100038;
 Mon,  7 Oct 2019 15:44:12 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BA4502B8A5E;
 Mon,  7 Oct 2019 15:44:12 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 15:44:12
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] dt-bindings: arm: stm32: Add missing STM32 boards
Date: Mon, 7 Oct 2019 15:44:08 +0200
Message-ID: <20191007134410.10337-2-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007134410.10337-1-alexandre.torgue@st.com>
References: <20191007134410.10337-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_064426_161550_045E33AD 
X-CRM114-Status: GOOD (  11.18  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit documents missing STM32 boards:

-STM32MCU: F429 disco/eval, F469-disco, F746 disco/eval, F769 disco,
H743 disco/eval.

-STM32MPU: MP157 dk1/dk2/ed1/ev1.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 4d194f1eb03a..1fcf306bd2d1 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -13,19 +13,38 @@ properties:
   compatible:
     oneOf:
       - items:
+          - enum:
+              - st,stm32f429i-disco
+              - st,stm32429i-eval
           - const: st,stm32f429
-
       - items:
+          - enum:
+              - st,stm32f469i-disco
           - const: st,stm32f469
-
       - items:
+          - enum:
+              - st,stm32f746-disco
+              - st,stm32746g-eval
           - const: st,stm32f746
-
       - items:
+          - enum:
+              - st,stm32f769-disco
+          - const: st,stm32f769
+      - items:
+          - enum:
+              - st,stm32h743i-disco
+              - st,stm32h743i-eval
           - const: st,stm32h743
-
       - items:
           - enum:
               - arrow,stm32mp157a-avenger96 # Avenger96
+              - st,stm32mp157c-ed1
+              - st,stm32mp157a-dk1
+              - st,stm32mp157c-dk2
+
+          - const: st,stm32mp157
+      - items:
+          - const: st,stm32mp157c-ev1
+          - const: st,stm32mp157c-ed1
           - const: st,stm32mp157
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
