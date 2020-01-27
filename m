Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFE914A4BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 14:18:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9wCN//oTY0Yyt3lAx1c2BNKiRXmaYks9km2Vekk1EI=; b=If4oAfAVJnH4TZ
	vs1GrUmflfs9R1XiISMHL+1NyzimYVSf6VQseHkJjqjaSk1aytXX66kWeJwZSzZJA2ZmwPJT40VJj
	7VRcOgS5oEgvLLNwckSGAMrLgA+F5RRQ1mcRcRzdY8NYpT7aLFaxxURRrWv/rzOG/wdJJi5xHNYiI
	wflqex8SZ8GmQ2QkkGkfyBXQLXmJYIn0W1lc6n509VWJqIiPd6YsQL/vRh1cWmg3u4bIkXDjpoVfo
	NZaEy142YIw1rF93pQcRThUDITuFlh2ffm8F0/kMlh8tuTDbGIWnr8aGGfZHZUF6ORuuCBlu9BsQJ
	DSwWHqxVzy4fDv89dBxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4HM-0005uI-6L; Mon, 27 Jan 2020 13:18:12 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4HD-0005td-NI
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 13:18:05 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00RDCPuc010457; Mon, 27 Jan 2020 14:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=c+hFzAdIS/ZnJvsdSSsIUfuzk1mAp/1PFd89s5h3LUs=;
 b=OZuaUBMTUdGI7IbENiN6ix0An7f95cN1yX6VPzF/5H71q6NR0vgNn46CX122o8lu1dIT
 o9EL3Zu+aZ1LHcyrOP2e+sPqr91A+z24To2NrXL8PYTVpED06cmJZ10h1HwTc4JKTQs8
 4u2uBkZEbjxdFK/w/aq1njYx0RdBgnWNFUSPULviAQq3PO+kAZkAAuLKD18VIXTS32Aw
 Vwf2VBWDPCTW1DxT1VYpar2grQ9O4kP3vJ2IUrGQnTx7HM5z9ts7hTAiESfZQPD0mmD3
 yruC1jf+w8wbzvGob+gD88iUd22IIhsOH/J1cSyimK1roXxMsWErv98AVTxXhF9dqOcl UA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrdek8vsm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 14:17:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 24EBE10002A;
 Mon, 27 Jan 2020 14:17:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0F4192AD9F5;
 Mon, 27 Jan 2020 14:17:51 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 Jan
 2020 14:17:50 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Mon, 27 Jan 2020 14:17:50 +0100
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
Subject: Re: [PATCH_V3 0/6] thermal: stm32: driver improvements
Thread-Topic: [PATCH_V3 0/6] thermal: stm32: driver improvements
Thread-Index: AQHVx575+Q0vFMQB1USceV4qSXzFT6f+iFaA
Date: Mon, 27 Jan 2020 13:17:50 +0000
Message-ID: <a400d4e2-4abb-aad8-73f0-57c9300ca351@st.com>
References: <20200110101605.24984-1-p.paillet@st.com>
In-Reply-To: <20200110101605.24984-1-p.paillet@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <F142B21D02B60D49A091256E0AAA3F53@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_051804_115081_75412B89 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The goal of this patchset is to improve and simplify the stm32 thermal
> driver:
> * let the framework handle the trip points: it very is hard to split this patch
> into smaller ones and keep each individual patch functional.
> * fix interrupt management to avoid receiving hundreds of
> interrupts when the temperature is close to the low threshold.
> * improve temperature reading resolution
> * the dirver is backawrd compatible.
>
> Pascal Paillet (6):
> changes in v2:
> * Split "handle multiple trip points" patch to make ones:
> *   rework sensor mode management
> *   disable interrupts at probe
> * "remove hardware irq handler" is squashed in "handle multiple trip points"
kind reminder for review
>    thermal: stm32: fix icifr register name
>    thermal: stm32: rework sensor mode management
>    thermal: stm32: disable interrupts at probe
>    thermal: stm32: handle multiple trip points
>    thermal: stm32: improve temperature computing
>    thermal: stm32: fix low threshold interrupt flood
>
>   drivers/thermal/st/stm_thermal.c | 388 ++++++++++---------------------
>   1 file changed, 120 insertions(+), 268 deletions(-)
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
