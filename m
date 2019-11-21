Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F8E1055DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 16:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFwKDtZkkOEWa4tSH4QEHLHDLARhKpNKPjpG/I9ieJI=; b=SURo1ExnT3uvfB
	rh6qOziAm5paDWo9wR6xMBCJloRufdct60W0H8jvzz6EHlJqA+YbfgCrhyf54XcFXAPvICZjQakyF
	3jY78rgcKy3uWfyF3ZLCJqY75G9gAGOUkB4IOVm82T9se2xd02lL8yFyXZ0JAk9F1PIlKcnyyUZPB
	Lvtdo0j0cTR6RBJsUCOjTVV8+iasa+vSRZKKk6oQXTOpAGSwN3N6p00dwIscu1EYcifoACZ/BLuRL
	pFQv+tTYe/7uppkMDT47tohFCp9tUhsQs8VkYOt7daefRlY4mRlI0oIAJQLMQfolnaFJvNvOf71FP
	ID4bCMr95PGAapMsIwrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXobb-0003rs-Tf; Thu, 21 Nov 2019 15:42:51 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXobR-0003r0-HW
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 15:42:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xALFXDfl028623; Thu, 21 Nov 2019 16:42:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=6K6SA6MxWiPmIb8PZSMO4AouSBUXf9ocbVHakGWmeeY=;
 b=wacSu0WQFKqxN6GiTws8aia0fMfgsNAN5eqHz7JV4imk1QaIph+NOaHYU6xkQZIrfwdp
 avzBuxD+lEUkTR8FkLqM9DgAtlMPioWpPRSN/IYTMU2Nk7RMU3g0eI2Sli78BNegVQue
 k4JqxH9wBoB/8fyLhBrms5IqiM+UUcY5D5I3IYj3RTmHF9eTWmxAYEPhQ8V4Nqx5QeWo
 d3DlpTh2P4pNWFxK2dTl7zcymtSNNauNA8WImglM5o79GL9EqVTN00RhQeAYsuadwiQp
 AF+NNG3BNnKjHqKC/M5X3EkSwsNRM0R/GYAyHu5Akqv1aeU2fXPTlQACs4KWOfvuYMKW fA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9upcmgs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 16:42:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A23D1100034;
 Thu, 21 Nov 2019 16:42:18 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8DC422C8478;
 Thu, 21 Nov 2019 16:42:18 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 21 Nov
 2019 16:42:18 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Thu, 21 Nov 2019 16:42:18 +0100
From: Pascal PAILLET-LME <p.paillet@st.com>
To: "rui.zhang@intel.com" <rui.zhang@intel.com>, "edubezval@gmail.com"
 <edubezval@gmail.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 David HERNANDEZ SANCHEZ <david.hernandezsanchez@st.com>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/5] thermal: stm32: driver improvements
Thread-Topic: [PATCH v2 0/5] thermal: stm32: driver improvements
Thread-Index: AQHVkxQC8UWFfFfMGEiVMCDWvdxpCaeVzZWA
Date: Thu, 21 Nov 2019 15:42:18 +0000
Message-ID: <6e2eeae4-1f2c-c232-73b0-6d1f16f586d6@st.com>
References: <20191104133020.8820-1-p.paillet@st.com>
In-Reply-To: <20191104133020.8820-1-p.paillet@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <FE2D4140B818E344A5C59FF89DA5E9B8@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-21_03:2019-11-21,2019-11-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_074241_938283_1AAB170E 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> The goal of this patchset is to improve and simplify the stm32 thermal
> driver:
> * remove hardware interrupt handler that is useless
> * let the framewwork handle the trip points
> * fix interrupt management to avoid receiving hundreds of
> interrupts when the temperature is close to the low threshold.
> * improve temperature reading resolution
gentle reminder !
> Pascal Paillet (5):
>    thermal: stm32: remove hardware irq handler
>    thermal: stm32: fix icifr register name
>    thermal: stm32: handle multiple trip points
>    thermal: stm32: improve temperature resolution
>    thermal: stm32: fix low threshold interrupt flood
>
>   drivers/thermal/st/stm_thermal.c | 367 ++++++++++---------------------
>   1 file changed, 111 insertions(+), 256 deletions(-)
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
