Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998AF14C19A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 21:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpJ4iyntd987qOSAJWI4q1X87kYMBZ3BFQIyi8QPx2U=; b=GfXBeqOAedzK9D
	sgqh0QyO7VbH/9Qc/10DebqHA2lORRdbZu8LAnVV5+F5l1lM+9gtOwX8Otcx0YX9J9jvyJ/Nz3G4n
	ZCWfgZWGZB4SXikQXQ+EzLabbseWreKFNE2B5/mZxp107n1wbOArpT3PBlBThacDaMbJtWFwest2L
	6E/q2YiO+AsGq1cVFb6c+PVW6wXDBIj4UvMU6gPUy9MgBIQLqzlrC2lgla33oPBJLA+26AnF7RyhO
	dGI0Zpj3Phoa3qzvfUMosHm5/6h/ST+dSU5yRSZVpaaS/9vUDghRxyf+Wa1DKQcIjK8q2AEAVJ6Vh
	EIIuYTXptiGlX3jBrUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwXUz-0004hg-Rk; Tue, 28 Jan 2020 20:30:13 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwXUi-0004h8-Tj
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 20:29:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SKSfSF032459; Tue, 28 Jan 2020 21:29:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=dZMb6Jsfq4sPYbLiWw1LM0ambnif8LS+pRCn5Rru/bE=;
 b=QueoJBd+JJ/vIOhgWsY4z2bZSurXJhS8ysLSo93SnIJlJHaaAh4C0wTN6sOg5vnbhskr
 q5nSjpeIexfK5aWdUXGEksKPRkod9hmXV72cZUAkqZ/31HZBrItlQgYVGl+PzddP7qSO
 Id5rQrpkFlQj87DCZqKrjIItJJfNYP94HcEyuCVtPVFr+xSeK11z6JdbkZ+qjr4Un2Mr
 is4Z/VdSsKGoFKGDvqTHd5ID9TzWTCcV8asDAuclHyNA3nKS5+Z0QllwzD9F3/ulB3qq
 7+IiFp1V8O6lVqBZvhiiOesIsuSwErtK/7VtheNmw/cno9sirtB0p6jwCAgk4y3Wf8H5 lg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrdekfqe8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 21:29:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ECE2810002A;
 Tue, 28 Jan 2020 21:29:45 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag7node3.st.com [10.75.127.21])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B70702A4D7F;
 Tue, 28 Jan 2020 21:29:45 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE3.st.com
 (10.75.127.21) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 28 Jan
 2020 21:29:45 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 28 Jan 2020 21:29:45 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Topic: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Index: AQHV1fD3WqS5xyjWNkazyajQl95bjqgAKU6AgAANnwCAAARlAIAAO2IA
Date: Tue, 28 Jan 2020 20:29:45 +0000
Message-ID: <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
In-Reply-To: <20200128165712.GA3667596@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <E760C473F999D14C87C2BB3A9D1F67E5@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_07:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_122957_324573_32DC3899 
X-CRM114-Status: GOOD (  25.61  )
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


On 1/28/20 5:57 PM, Greg KH wrote:
> On Tue, Jan 28, 2020 at 04:41:29PM +0000, Benjamin GAIGNARD wrote:
>> On 1/28/20 4:52 PM, Greg KH wrote:
>>> On Tue, Jan 28, 2020 at 04:38:01PM +0100, Benjamin Gaignard wrote:
>>>> The goal of this framework is to offer an interface for the
>>>> hardware blocks controlling bus accesses rights.
>>>>
>>>> Bus firewall controllers are typically used to control if a
>>>> hardware block can perform read or write operations on bus.
>>> So put this in the bus-specific code that controls the bus that these
>>> devices live on.  Why put it in the driver core when this is only on one
>>> "bus" (i.e. the catch-all-and-a-bag-of-chips platform bus)?
>> It is really similar to what pin controller does, configuring an
>> hardware block given DT information.
> Great, then use that instead :)
I think that Linus W. will complain if I do that :)
>
>> I could argue that firewalls are not bus themselves they only interact
>> with it.
> They live on a bus, and do so in bus-specific ways, right?
>
>> Bus firewalls exist on other SoC, I hope some others could be added in
>> this framework. ETZPC is only the first.
> Then put it on the bus it lives on, and the bus that the drivers for
> that device are being controlled with.  That sounds like the sane place
> to do so, right?

If that means that all drivers have to be modified it will be 
problematic because not all

are specifics to the SoC.

>
>>> And really, this should just be a totally new bus type, right?  And any
>>> devices on this bus should be changed to be on this new bus, and the
>>> drivers changed to support them, instead of trying to overload the
>>> platform bus with more stuff.
>> I have tried to use the bus notifier to avoid to add this code at probe
>> time but without success:
>>
>> https://lkml.org/lkml/2018/2/27/300
> Almost 2 years ago?  I can't remember something written 1 week ago...
>
> Yes, don't abuse the notifier chain.  I hate that thing as it is.
>
>> I have also tried to disable the nodes at runtime and Mark Rutland
>> explain me why it was wrong.
> The bus controller should do this, right?  Why not just do it there?

The bus controller is a different hardware block.


>
> thanks,
>
> greg k-h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
