Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597B14E99D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:38:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AeSUEeNMZOr2xNlQwWH19fgGy3WdE3meM/uOPaVDIhs=; b=hoq+eh1Z6Z2PZj
	QlkelfGAFZgJ5UlanVw+40CJMv0ao1FinAjFStzJT7ui51A2Ys2oZFe3cbzOBn0lZSeFFwD0Z68yp
	bBT7T7ENa0KlKTzAGGBvIW+qkJPwOI/fEKl/E5Wh67Cge4SlZSpD1hIpvLvEb1dxrQ1slhTRO3PwW
	EI8N04JCo3JII+OlQQd3eoqJtF9yPOZlgehppSgffB5IJhEfXv2LtgR21Ym5Cj7QBNfYr3hObgk0C
	Q5VhdmXYdjSf64eEeImPr8Bsuokw7kV7pQyuynWaeQ0ubKxIO00RGQThKojsQgkVdpX/jioEiPxTy
	Cg+xHf3MAKOCuM01JMGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRoM-0004Qx-GG; Fri, 31 Jan 2020 08:37:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRoA-0004QU-Ca
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:37:48 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00V8WWYv021065; Fri, 31 Jan 2020 09:37:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=RvByVWKDnR1khDO+OZk/bWtvJxxsg3zo5oWTGlVFTCI=;
 b=cW7pJggbx3yrKAIItVkeJdJz8XFnekW5VBKJ9+R15zPyciyniAlMLSVdQRu/O5Orr219
 PyXaMkzgz7N0xEON0xL6FkfbNArnfv0lm3+kBIxEo4FRQvEdCcJqibbjE6/JmFS5eH96
 DDw5g6wKxrryDoLCklMK1UIG8HMRBWXwSOv0OJ3V/n81YSTFERFSTZ84KkkrvlXysKGq
 xv0/fU2qMMYE+kkQ+6SMkT5zAzlfjXnEgzOMsnFQLQOhEy+m/626IeY/wChEIwxLRMl+
 8d3mCNttMM79G87ZeevoOkNeNZoVzv+QNuva2+PwX3WRjY8MI6xOmBqaKsgNxr9s9VjM RQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc13mmns-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 31 Jan 2020 09:37:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4450910003B;
 Fri, 31 Jan 2020 09:37:28 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag7node3.st.com [10.75.127.21])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 03CB921FEBF;
 Fri, 31 Jan 2020 09:37:28 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE3.st.com
 (10.75.127.21) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 31 Jan
 2020 09:37:27 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Fri, 31 Jan 2020 09:37:27 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Greg KH <gregkh@linuxfoundation.org>, Linus Walleij
 <linus.walleij@linaro.org>, "robh@kernel.org" <robh@kernel.org>, "Loic
 PALLARDY" <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkml@metux.net" <lkml@metux.net>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>, "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Topic: [PATCH v2 2/7] bus: Introduce firewall controller framework
Thread-Index: AQHV1fD3WqS5xyjWNkazyajQl95bjqgAKU6AgAANnwCAAARlAIAAO2IAgADdioCAAALMAIAAF6SAgAL4AQA=
Date: Fri, 31 Jan 2020 08:37:27 +0000
Message-ID: <0b109c05-24cf-a1c4-6072-9af8a61f45b2@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
 <20200129095240.GA3852081@kroah.com> <20200129111717.GA3928@sirena.org.uk>
In-Reply-To: <20200129111717.GA3928@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <638172DDBE744F46AA57A5E08293B1A9@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-31_02:2020-01-30,
 2020-01-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_003746_796918_4EEE6FEA 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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


On 1/29/20 12:17 PM, Mark Brown wrote:
> On Wed, Jan 29, 2020 at 10:52:40AM +0100, Greg KH wrote:
>
>> It just needs to be part of the bus logic for the specific bus that this
>> "firewall" is on.  Just like we do the same thing for USB or thunderbolt
>> devices.  Put this in the bus-specific code please.
> I'd expect that this is going to affect at least platform and AMBA
> buses.

Correct me if I'm wrong but creating a new type of bus would mean

that all the drivers living on this bus must be changed to register 
themselves on this bus ?

Or does a solution exist to let them live on the platform bus and call 
firewalled bus before been probed ?

All the impacted drivers could work on the existing bus with or without 
the firewall so I don't want to break

that.

Benjamin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
