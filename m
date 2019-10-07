Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB78CE569
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzf0ue2Rll5sWkzZ6CebZJkl9VXdlMGWvWCKXJPKfQI=; b=u3irm6wduGMKjI
	0PdlrxBLV0oePiPhAKnP8xI11GsyBiwRzpkrfmFVtZts5VeU75PpA2v2d28KL8wjqiXUjvwfE5wXQ
	bjVd7b5WsgpKKIK9Rtx2xz6+G/NjtrcnqR5Lp3vUDYQJeDYZQhHj23TAYj3UC23MywaI71OLua3wX
	g1QkAsBISbLRKMSbsLwfS1GHz4Kcku9MrnJQyYClke0BgDvplLxQow62uXW7+CCyr1qXkAZfIdVIM
	JBdTgXFqWwyRWR8X5iaeaox8l6Gvk/5sjLSDBoJL9btjKGmYfGdI+scyMCf5dyG4C4TrCLIwXQYNs
	sikVau+qSf6tD/i0lXgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHU6Y-0007qh-VG; Mon, 07 Oct 2019 14:35:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHU5Y-0006Vp-Dy
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:34:18 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97EVf8O022005; Mon, 7 Oct 2019 16:34:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Zh2dMsrr5p5iHfSIvb+HPhylnIwxzh9ThANxonYp9Ew=;
 b=bVMn4hxERWmfUuOCQk9yZOGkCTZKyyVT1Cbmkdih64yxAa1+Z163zBdSQyMwZywQ4VHU
 4ddvXeMOSZ70t3DDw/Jjkydae+DBlZH6gTZ84I7LKtvMva7muRIHOj0XcsKUUok+3CCB
 LCBb/jgGr2w4SeTiqX4PRbzBLEq7L8Jzg1XO2N7U8aPXaSR1zY834mXMoeQZ3ra07E6W
 Nmma2rMtJCvTqCEmGkFe5tm7W3Cp7yDMbiaCg1Cui/6ZvAzytzeT3NDTm4lz5w+QcjXv
 xEJthJDl5FyWAaMWwpWsX4fjCZebcGRUh7+SsgDvBwxJ4sQ1NTmgz+Sa1ScQi5wjlbNU bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvjtj7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:34:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ECB4E10002A;
 Mon,  7 Oct 2019 16:34:06 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E03B92AC883;
 Mon,  7 Oct 2019 16:34:06 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 16:34:06
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 3/4] ARM: dts: stm32: remove usb phy-names entries on
 stm32mp157c-ev1
Date: Mon, 7 Oct 2019 16:34:01 +0200
Message-ID: <20191007143402.13266-4-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007143402.13266-1-alexandre.torgue@st.com>
References: <20191007143402.13266-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_073416_763771_54145B04 
X-CRM114-Status: GOOD (  10.38  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"phy-names" entries are not used. To be compliant with DT validation
tool, those entries have to be remove.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 6287db532e7d..2baae5f25e2c 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -343,14 +343,12 @@
 
 &usbh_ehci {
 	phys = <&usbphyc_port0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
 &usbotg_hs {
 	dr_mode = "peripheral";
 	phys = <&usbphyc_port1 0>;
-	phy-names = "usb2-phy";
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
