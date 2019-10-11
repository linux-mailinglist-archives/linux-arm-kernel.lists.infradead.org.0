Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1842D4250
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXUUFZcWFjKAd14oYv5WNtRvTwCMkepFEBXvukjMoCE=; b=W4yLJSN4hmXM2b
	JeBQW/eUpOO900bTJdLAYsKHYnjmRNFvAW0BLP0McSAMOKwXmWfwEKni0s077OdGfh8YxxnXoOk5I
	G0lzA5bt3NSFw6dETYmqhoOtXDWxvoccuPmm0ExCeQ56kCCdNyitpQZ3iETSYnL7lMNQ5dWCf9eoV
	6yKpKKL2DDQV++NxT3QXj4CsW7dtVYl0xU/94o9SsTWQ9AAV+hmY6v6/64ZK5qaDQXLu1FRyeBczf
	MZk4vwD26oPs3+5q746jeruktMZzapRsmRji9WrKON6FV9xtM2vjmyWGerQK06IOLn5j87xB0yJ0G
	cxD/OqMUdqV4sAYWkxTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvZw-0004rR-Pv; Fri, 11 Oct 2019 14:07:36 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvYY-0003g8-Rk
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:06:12 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BDuP5F008342; Fri, 11 Oct 2019 16:05:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=X2MS2dG8XiA3LBnlrQGs02rZISjkvk2yFLJA4idPnL4=;
 b=Munmuilwc1UmIcseIEJAD8efaUj9y6slZeTesd7CZgqCl+PiswJ2JcsHR/1DgKPJM0mW
 IBqBOzedqFx2MkLPt+eIzYtDy8FWjcG3u27nDmdbFNbQ9Lmmb1Uqa8M2abtS0LZcpovV
 UhXsdcLvSx37jpaNp8d64S+9JVh9ODsRKOOl1dubfGJemORltTc+GwqrKkr+0FlRgrJS
 6jG5zMFegf2z4vnnKkZGEdRgxesoFNhp2eYH6n80O98wEoyJ9WVW5BXRe8U86lSh+dak
 CUiq8xt+J1xYlaJir//H28W5VGMhAnXp3v6zoKr+zjWBCrEz9b1+PdDMz/KBE4HiLpo9 pA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn1a8r1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 16:05:41 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3FA0C10002A;
 Fri, 11 Oct 2019 16:05:41 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 329A82AD739;
 Fri, 11 Oct 2019 16:05:41 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 11 Oct 2019 16:05:40 +0200
From: Pascal Paillet <p.paillet@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 4/4] ARM: dts: stm32: disable active-discharge for vbus_otg on
 stm32mp157a-avenger96
Date: Fri, 11 Oct 2019 16:05:33 +0200
Message-ID: <20191011140533.32619-5-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011140533.32619-1-p.paillet@st.com>
References: <20191011140533.32619-1-p.paillet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070611_213648_D4F32CD1 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: p.paillet@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Active discharge is not needed on vbus_otg and generate unneeded current
consumption.

Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index d1cc42a92d3f..628c74a45a25 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -252,7 +252,6 @@
 				regulator-name = "vbus_otg";
 				interrupts = <IT_OCP_OTG 0>;
 				interrupt-parent = <&pmic>;
-				regulator-active-discharge = <1>;
 			};
 
 			vbus_sw: pwr_sw2 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
