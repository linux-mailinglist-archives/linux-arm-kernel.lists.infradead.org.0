Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497ECEB03B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YhQcFiYErSEc5hRIF9n8CEL2LDUy8DQz31CmujDmKUc=; b=CbysBSkIRyS+co
	lZjvuz5CAU0EMeJJQNZFHp50MWEc6n9JTGO4oGhimcYcpFMUHto4wp1N6mYUc1GfMuaVV+xP58VCJ
	TTcq7hB/L4DRDncZs0MAypfw7drlPPJ8XKRQ5jIL4AOaT15GFehXLCXlCpDURYlX2CcZwujEBSnU7
	TIgtmGw9/3xOO8NCBxC+x1ziWRGTRfnAbpilTCiHCy9m2DgtxrizEZdQYVzpclVWQZSCt+Erccemn
	DiEeRl05Po72Bd7MOju1E/V/sHFUocIwJxIYmT/NMwaowlc6mQDqZ1W/EkAqT1vrDdy7UGmMX+YiS
	O75E5o/N2QkZQe8DUyNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9bY-0006wx-9g; Thu, 31 Oct 2019 12:31:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9bN-0006w0-UW
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:30:59 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9VCQaIl028820; Thu, 31 Oct 2019 13:30:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=L36yhhdynvYVY+TShwfA0Bhl1r4mffURb+EBrQF9gKk=;
 b=hZwNCeV0xEvhrGeulpsouJPO18vN4wZjzkNBh2T0NPOiJrfZJSXxflA/SpZVj8QjZTrp
 6ll8NBUTTZtsi6cCL2RFUN4M/tMFU9hBxf8Sg76ZsvbB/cf5QJHnTZ84EJD/1reV24Au
 kToKzeMtDgAfdV5iMrvyV/hXCmx8kTfkOA1G6trbZ75TeLNtTXTBTenqIk0oPuNC1GXb
 SkZTjuSDvD9vCFuc0zoXr4SnxiyAi3Vvz9jIbMLOvOfJw6A+9hepDA7tTKxnkBxrLOi4
 X0zTv7LHQk8uWTPL3x/1nRlRVI4FnGG6DIhJ+En2Ba9BD4opWcvdFQ6c0DgjIaTEgdcw wg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vxwhusser-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 31 Oct 2019 13:30:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7F52D10002A;
 Thu, 31 Oct 2019 13:30:49 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5EFBD2B7837;
 Thu, 31 Oct 2019 13:30:49 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 31 Oct
 2019 13:30:49 +0100
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 31 Oct 2019 13:30:48
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <alexandre.torgue@st.com>,
 <fabrice.gasnier@st.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>, <lee.jones@linaro.org>,
 <thierry.reding@gmail.com>, <u.kleine-koenig@pengutronix.de>,
 <benjamin.gaignard@st.com>
Subject: [PATCH 0/4] Convert STM32 Timer mdf bindings to yaml
Date: Thu, 31 Oct 2019 13:30:36 +0100
Message-ID: <20191031123040.26316-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-31_05:2019-10-30,2019-10-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_053058_348157_2FC79B17 
X-CRM114-Status: GOOD (  10.82  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series converts STM32 Timer mfd bindings to json-schema.
The original binding split between all the subnode remains the same
that why subnode bindings are converted first and then included in
the mfd binding.

Benjamin Gaignard (4):
  dt-bindings: counter: Convert stm32 counter bindings to json-schema
  dt-bindings: iio: timer: Convert stm32 IIO trigger bindings to
    json-schema
  dt-bindings: pwm: Convert stm32 pwm bindings to json-schema
  dt-bindings: mfd: Convert stm32 timers bindings to json-schema

 .../bindings/counter/st,stm32-timer-cnt.yaml       | 38 +++++++++
 .../bindings/counter/stm32-timer-cnt.txt           | 31 --------
 .../bindings/iio/timer/st,stm32-timer-trigger.yaml | 44 +++++++++++
 .../bindings/iio/timer/stm32-timer-trigger.txt     | 25 ------
 .../devicetree/bindings/mfd/st,stm32-timers.yaml   | 91 ++++++++++++++++++++++
 .../devicetree/bindings/mfd/stm32-timers.txt       | 73 -----------------
 .../devicetree/bindings/pwm/pwm-stm32.txt          | 38 ---------
 .../devicetree/bindings/pwm/st,stm32-pwm.yaml      | 51 ++++++++++++
 8 files changed, 224 insertions(+), 167 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/counter/st,stm32-timer-cnt.yaml
 delete mode 100644 Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
 create mode 100644 Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-timers.txt
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-stm32.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/st,stm32-pwm.yaml

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
