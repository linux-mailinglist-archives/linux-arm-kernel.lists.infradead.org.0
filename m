Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61688CE55B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bL25KWxLX7mXjFc8CC67nQnWnIhCJKULPoZaCU7Lpg=; b=W6V5TnEVZCCpVn
	uuIwBHWyK2OEGBza+Lsl8xB/DQ7tjBqMgQlFxEOvqmiS+SQx/S7e1ossD35e7+Mm9yULPaUAuDtpe
	dHlRdLNcnhfwO6tV3ZRq6Qp8fA9eLyvs3lRpNHfcPF2WIEFtfdZzTWqqKE1BkFOgRtgH0/TW5LmWZ
	i4oo/WVb/0jeAXaAPhNwCEig3srFy4hQ0cbSyp0Gu7jT+ExA6fGvUYSIOwajTS1u78PtoQB2KgEEk
	B1PX0PzeqYvZh1EgLW3isQElG0dfHHJjkmT1ccrk5xloNJbH6tGIas1SFZHHhmEKrpDmtLaTKD2mP
	PQ3Me6EYw3wrOs1kfhlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHU5f-0006WK-MO; Mon, 07 Oct 2019 14:34:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHU5V-0006Uc-RI
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:34:15 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97EVYlU021655; Mon, 7 Oct 2019 16:34:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=nv1TCeEQ/O9vBQCY+dZl79SaUra+CXgFAkJJgkjP1yE=;
 b=q0TPlvDo9zcqZmQtHJ2/Fk+ye+QckQfiWXRNbD4aAAjgZKcREHxkWU3fScfZ8uPfIVaX
 KzTwIJIBkb3GCuvyTH1C5Cwa5XRz7RCfi0aozmUF+Nrawhd0enzU1jmAgljyfcH1dpi5
 6pDqeZ3BVwoOPDtfdaJ2N2mp31CtzbMST0pabC93xjikUq3A8azoOlCfmiECbBBAAdl9
 iys1vrqveq6J4zE2I+uhSJpDZvb+i0Bxi+aoj8VfJKu4Pm5os6CjHe+YB2MOX4KrtLLe
 3Nvr+ZE9wu9p21mzw/AlicqC+Ueh5P8a+CSMEFFxyi1Dfc7aPXEPTM/6NgemHia+C18U kw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn0jw3w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:34:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4BDE1100038;
 Mon,  7 Oct 2019 16:34:06 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 409E22AC883;
 Mon,  7 Oct 2019 16:34:06 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 16:34:05
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 2/4] ARM: dts: stm32: fix joystick node on stm32f746 and
 stm32mp157c eval boards
Date: Mon, 7 Oct 2019 16:34:00 +0200
Message-ID: <20191007143402.13266-3-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007143402.13266-1-alexandre.torgue@st.com>
References: <20191007143402.13266-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_073414_242882_999DDD7D 
X-CRM114-Status: GOOD (  10.55  )
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

"#size-cells" entry is not needed for "gpio-keys" driver. Indeed "reg"
entry is not used. This commit will fix a warnings seen by DT validation
tool.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/arch/arm/boot/dts/stm32746g-eval.dts b/arch/arm/boot/dts/stm32746g-eval.dts
index d7bb2027cfaa..fcc804e3c158 100644
--- a/arch/arm/boot/dts/stm32746g-eval.dts
+++ b/arch/arm/boot/dts/stm32746g-eval.dts
@@ -95,7 +95,6 @@
 
 	joystick {
 		compatible = "gpio-keys";
-		#size-cells = <0>;
 		pinctrl-0 = <&joystick_pins>;
 		pinctrl-names = "default";
 		button-0 {
diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 89d29b50c3f4..6287db532e7d 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -32,7 +32,6 @@
 
 	joystick {
 		compatible = "gpio-keys";
-		#size-cells = <0>;
 		pinctrl-0 = <&joystick_pins>;
 		pinctrl-names = "default";
 		button-0 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
