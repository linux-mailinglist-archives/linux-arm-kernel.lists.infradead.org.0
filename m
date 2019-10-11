Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7285AD406C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8NcWFOpFZrbzbR6SIaw/ksCg21C6wmBUJRwoO9/93ac=; b=MZ5JTy+Y3w8NiL
	YY7AUfkf3DM479ZY01ybPGk6PnDrR8UYvBziNpG4FElcBmAEbLmSfOKW/1WN1OwWG8wHf79SdrnzE
	5n5uu6MZ7aK52jTpT0V/tI6YVn+XrL0/1+mmfC0E2lLV3kPw7aRyHT3C1VnYha4oo2YCIdrsQVhgr
	7+f7KZ74QQt+uAJFyv+sBLbdK9B6i29IkSz8x60cHITuBMY15qMOYWSWH1fUW6B9A0gPvTeyQBsl3
	T9+Aq8fqyymAQFkTMLGhCpVAbO6Cg7F1rH4oF4eRzu2x9vT3JojIZqQu5TK9/8tI1OSjDTX/bilmk
	F8oXt0M/85wo/T5c5B7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuda-0000U7-ED; Fri, 11 Oct 2019 13:07:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIudS-0000TQ-W5
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:07:12 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BD6lwL021879; Fri, 11 Oct 2019 15:07:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=klfGUH5dxwRvx6PXzWgeW52/ZQWuSqdDdFx4SGnAlS4=;
 b=RZB1+1VtH8UvSPqj7nDzvpZlumAZiVIzoig/VFcxT54qxXkZWDZON8vjwBaTLhl5PlGJ
 WDWaMKcgESwxdVae5WLci4JjHy5lB8wUTumrgkEHc1xRJ3PWE+r4tmjPxckHkIUuhYf9
 5TK0GxjGBS912OgSj9qSUli+xSB2IyM5KMpRghBRfIkNw5XRDJBuBciZzdjbe3TNUspc
 GUKxKsMMGusLEhzzc8obDfM6Gz7l0Qr3pA612YQ24qYXwo9JFTxJwc4ktPl53anyEyLw
 BouNE3Oxaiq/wF87KVUr3WZOonHy5YInEJVYit9LFLJe7C+tepsJtPs07FwqgjPxgTaI WQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxw9x0p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 15:07:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8B3D7100034;
 Fri, 11 Oct 2019 15:07:01 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 781192BE25F;
 Fri, 11 Oct 2019 15:07:01 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 15:07:01 +0200
Received: from localhost (10.201.20.122) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct 2019 15:07:00
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32f469: remove useless interrupt from dsi node
Date: Fri, 11 Oct 2019 15:06:58 +0200
Message-ID: <20191011130658.23670-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_060711_391767_66E62E17 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DSI driver doesn't use interrupt, remove it from the node since it
breaks yaml check.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f469.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32f469.dtsi b/arch/arm/boot/dts/stm32f469.dtsi
index 5ae5213f68cb..be002e8a78ac 100644
--- a/arch/arm/boot/dts/stm32f469.dtsi
+++ b/arch/arm/boot/dts/stm32f469.dtsi
@@ -8,7 +8,6 @@
 		dsi: dsi@40016c00 {
 			compatible = "st,stm32-dsi";
 			reg = <0x40016c00 0x800>;
-			interrupts = <92>;
 			resets = <&rcc STM32F4_APB2_RESET(DSI)>;
 			reset-names = "apb";
 			clocks = <&rcc 1 CLK_F469_DSI>, <&clk_hse>;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
