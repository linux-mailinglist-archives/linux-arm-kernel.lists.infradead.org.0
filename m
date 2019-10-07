Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5028BCE40E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9c49YPhIUYZ/NpHTxJjhJCMP6TRUkuAq0+cHvSBfeyQ=; b=VaWHXI9ji5zXug
	z2dGn5Wyhh6l7TqakqaytjuIEjqer0RvOOhujRGEw3egIbcQXbIavdfPOUa4n25teoBVUhbVk+8ZJ
	xRUUCJKAJaGvU3TX4PR6I0HGnVkdQQAEg/yUhAL6QTA1qyNbOgLW5RGLSFfFk9U/6hb3anozSJyFv
	xaGRZv0yswpv/x7ym+omGkJA8Ots56cgmileGySELo+eb4trV2//fbaxNK7zxGj6BG8tXpiFQ//fI
	UAbfWGiXBNycutSyvIpqFnFylhQAxkUi0B2g7YMhp1T85pltTj419lWr10CQrzkxt1gC48srS9rqJ
	IwMeK58e1VE7T8rX/QuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTJg-00005m-LZ; Mon, 07 Oct 2019 13:44:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTJJ-0008O1-OD
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:44:27 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97DaVoh022431; Mon, 7 Oct 2019 15:44:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ommXzVZDdDLmTcqjfffVTpYKbCoE51X3qzTVTHyEIOE=;
 b=fVAZRd1JuL2hng/tkR3VuQi7SZve5FiHkxnog+GRlTDojjznfGzUUhaDdzpyVO9F+Ts8
 cfdsuvOgth1lhpryfxq9bHf9TRL71Tu2YIFlIvtnoOINjM3h8u/Vhv/Qkl3ZEYp/N3sS
 v+ZMcOQmZ5NV4ztb4AnOHDGTmswawn/7TVXtCeyioq3IeBqZWuBtHmg+xawY05Uq+Q+z
 xlHsb0UbqFgL9CheHQC1L5QjXJtc5e3iee4ZxWyrUiUGa3JJUmDCGS1MsU02SBF0/Qdo
 rmgwAsG9MFtfn04dO7mm/iOf6+ydmQUNgI1tzCS/Kg64gCw84PqKxqOEZeNtFjwJ6xHt IA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn0jns4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 15:44:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6E920100034;
 Mon,  7 Oct 2019 15:44:13 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 628942B8A5E;
 Mon,  7 Oct 2019 15:44:13 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 15:44:13
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] dt-bindings: pinctrl: stm32: Fix 'st,
 syscfg' description field
Date: Mon, 7 Oct 2019 15:44:09 +0200
Message-ID: <20191007134410.10337-3-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007134410.10337-1-alexandre.torgue@st.com>
References: <20191007134410.10337-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_064426_161562_54A06F6E 
X-CRM114-Status: GOOD (  10.65  )
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

As there is only one item "st,syscfg" this commit moves phandle description
fields under "description" tag. It'll fix a validation issue seen  during
stm32 DT check.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index 400df2da018a..754ea7ab040a 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -40,10 +40,9 @@ properties:
     allOf:
       - $ref: "/schemas/types.yaml#/definitions/phandle-array"
     description: Should be phandle/offset/mask
-    items:
-      - description: Phandle to the syscon node which includes IRQ mux selection.
-      - description: The offset of the IRQ mux selection register.
-      - description: The field mask of IRQ mux, needed if different of 0xf.
+      - Phandle to the syscon node which includes IRQ mux selection.
+      - The offset of the IRQ mux selection register.
+      - The field mask of IRQ mux, needed if different of 0xf.
 
   st,package:
     allOf:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
