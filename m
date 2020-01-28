Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1E914BDF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwfO1VWiYqYpK+60wTz0Jhspy9GycJwhDJNFwX1WW6w=; b=E7Xi1ka3f3Dd6/
	E2RcPNzm0nLHFrmZAJIq5bGAfK9Sv8t/mKfM7qNAl1zJzNU+3d0dWaeKdXqP1DHeWvHhbT0pwBMFL
	UBkn2ZwsRfSIABc/6nGeHfkIwoyc9czBmzlSnAedCmuskr6r3d5wU0gWPbljFg84NLZCRTfAJeuvs
	cUPO2cjMNNkLM2cr9PcSN8gvVyHxQBakGjUoVMQb3g+2knbXNxYiii2uR6SiD36TlRuO/pwxuiYG0
	IjtFaholSRuDqNdcvpie3NH9fLhktdMv/85e1JxVHMNujsxvIWsGppbWs2HLM7RiN7laAmlfvx9/i
	Ak+7Wr/2dEkRAUgBc7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTvy-0005td-VB; Tue, 28 Jan 2020 16:41:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTvo-0005pa-L8
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 16:41:42 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SGWbJd004416; Tue, 28 Jan 2020 17:41:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=X6unbUqYU6R+TSthYBHa+4O1CSkYj4znlr55hHsVQV8=;
 b=wJaerqNHP+JqtLXcMJpzcCM4s0C2tAyEdrX1+ACeGQ6wY/iljHyc7xnerXaACfVp1L35
 ID0nEdDN5DxOvNzq9as2e7+BHYii6Xih+qV+eNYCdU1xf8u5LSR6l7ABA4Hnwgisr8Fj
 NfNVEFhwmLaVzyPrHdAKJAKNJKCiFiL2Epm6Zl/Yz2SjRkqTmsIX9fljyD6CKI/Pvr6w
 byJZzNyEZS+djW3p8IUKVR3mfgOg5qnPyhku6ooLOfxyByG7s6+Ggpy+2LKq5mquwWEh
 QAZZ5I21dmmMZdpElPbuPXI9VhV1xRGD7LhPJANmiGi/PZbJbxxZx+IRVjmSOIdZtEnA tQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrdekeutu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 17:41:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BB283100038;
 Tue, 28 Jan 2020 17:41:29 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag7node3.st.com [10.75.127.21])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9A1D52FF5FB;
 Tue, 28 Jan 2020 17:41:29 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE3.st.com
 (10.75.127.21) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 28 Jan
 2020 17:41:29 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 28 Jan 2020 17:41:29 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Topic: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Index: AQHV1fD3WqS5xyjWNkazyajQl95bjqgAKU6AgAANnwA=
Date: Tue, 28 Jan 2020 16:41:29 +0000
Message-ID: <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
In-Reply-To: <20200128155243.GC3438643@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <BDCF163FFEDC9E4EA7E20A7087EB997E@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_084141_166260_E5F77447 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "robh@kernel.org" <robh@kernel.org>, Loic PALLARDY <loic.pallardy@st.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/28/20 4:52 PM, Greg KH wrote:
> On Tue, Jan 28, 2020 at 04:38:01PM +0100, Benjamin Gaignard wrote:
>> The goal of this framework is to offer an interface for the
>> hardware blocks controlling bus accesses rights.
>>
>> Bus firewall controllers are typically used to control if a
>> hardware block can perform read or write operations on bus.
> So put this in the bus-specific code that controls the bus that these
> devices live on.  Why put it in the driver core when this is only on one
> "bus" (i.e. the catch-all-and-a-bag-of-chips platform bus)?

It is really similar to what pin controller does, configuring an 
hardware block given DT information.

I could argue that firewalls are not bus themselves they only interact 
with it.

Bus firewalls exist on other SoC, I hope some others could be added in 
this framework. ETZPC is only the first.

>
> And really, this should just be a totally new bus type, right?  And any
> devices on this bus should be changed to be on this new bus, and the
> drivers changed to support them, instead of trying to overload the
> platform bus with more stuff.

I have tried to use the bus notifier to avoid to add this code at probe 
time but without success:

https://lkml.org/lkml/2018/2/27/300

I have also tried to disable the nodes at runtime and Mark Rutland 
explain me why it was wrong.

Benjamin

>
> thanks,
>
> greg k-h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
