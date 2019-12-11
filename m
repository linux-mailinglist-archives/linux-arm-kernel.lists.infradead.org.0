Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8915A11AD9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoR2WkClfzVRXIollTvVC3r4dVlx/DAsYE8mIKK+feE=; b=CDpxEABZygXN2F
	UgQ7/cTVlTubypWxsO0y++AXqudz0dofGZD7EiHi/xxQ0CQZW0i5MTyrVgsaddcHpo5U4hNU97Plq
	gDjICST9VDZVml/ZbkYVHJnbPg0gBKI/pi73mR+62dxDJ3/FhO8jElQxuKHsiIZTQVKDAoR9btBER
	7G/iwaHrV8Q5yPvozj+lD2cMoz3Ho/hrXHkf4qz6TwZghwxiMblsOOOLOJXAF0QDItfelfNKOV1Tl
	ZQ1jpn+zdQ4SjFHMnh3rMrmPvQOJjhjaj80h9FAK46lDr+hY99NSMrO4dJwPyehuJv2TYX8sm9+1h
	Z+lNEi0UhjZBq3/QuEXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if36V-0005WD-Of; Wed, 11 Dec 2019 14:36:39 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if36O-0005VD-78
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:36:34 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 51D1D6285B9;
 Wed, 11 Dec 2019 15:36:25 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 11 Dec
 2019 15:36:24 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Wed, 11 Dec 2019 15:36:24 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>, Horia Geanta <horia.geanta@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Add Crypto CAAM support
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Add Crypto CAAM support
Thread-Index: AQHVp9OTS5mnZfHbzke4GpMb7fpZMqeyADMAgAMAHAA=
Date: Wed, 11 Dec 2019 14:36:24 +0000
Message-ID: <fd146818-98c9-7092-5d49-a985db5900c7@kontron.de>
References: <20191130225153.30111-1-aford173@gmail.com>
 <20191130225153.30111-2-aford173@gmail.com>
 <VI1PR0402MB348586BEDA9BE13CEB10C75698580@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <CAHCN7x+roEAmteNLT9KkLxPvL6AFFHMUW=J_cLcSdE50kODZQQ@mail.gmail.com>
In-Reply-To: <CAHCN7x+roEAmteNLT9KkLxPvL6AFFHMUW=J_cLcSdE50kODZQQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <ACEAAA732C76144993E26E2C6A1682CB@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 51D1D6285B9.A01DE
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, aymen.sghaier@nxp.com,
 davem@davemloft.net, devicetree@vger.kernel.org, festevam@gmail.com,
 herbert@gondor.apana.org.au, horia.geanta@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_063632_588863_D6FABF2D 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>, Herbert
 Xu <herbert@gondor.apana.org.au>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, "David
 S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On 09.12.19 17:47, Adam Ford wrote:
> On Mon, Dec 9, 2019 at 10:23 AM Horia Geanta <horia.geanta@nxp.com> wrote:
>>
>> On 12/1/2019 12:52 AM, Adam Ford wrote:
>>> The i.MX8M Mini supports the same crypto engine as what is in
>>> the i.MX8MQ, but it is not currently present in the device tree,
>>> because it may be resricted by security features.
>>>
>> What exactly are you referring to?
> 
> I don't know this hardware very well, but on a different platform, we
> needed to make the crypto engines as disabled if they were being
> accessed through secure operations which made it unavailable to Linux
> without using some special barriers. I didn't have the special
> hardware on the other platform that required it that way, so I can't
> really explain it well.  I know on those special cases, because some
> people were accessing these registers through other means, the devices
> had to be marked as 'disabled' so to avoid breaking something.  Since
> I wasn't sure if this was left out of the i.MX8M Mini on purpose, I
> let this disabled just in case this hardware platform was also
> affected in a similar and people wanting to use it could mark it as
> 'okay'

I don't know enough about this to understand the problem you're 
describing. It seems like most SoCs have the CAAM enabled by default in 
the devicetree. On first glance I could only find fsl-lx2160a.dtsi that 
has it disabled.

> 
> adam
> 
>>
>>> This patch places in into the device tree and marks it as disabled,
>>> but anyone not restricting the CAAM with secure mode functions
>>> can mark it as enabled.
>>>
>> Even if - due to export control regulations - CAAM is "trimmed down",
>> it loses only the encryption capabilities (hashing etc. still working).

I don't know much about this, but as Horia said the CAAM might have 
limited capabilities in some cases but would still work.

Therefore I think the CAAM should be enabled by default as it already is 
done for most other SoCs.

Regards,
Frieder

>>
>> Again, please clarify what you mean by "secure mode functions",
>> "security features" etc.
>>
>> Horia
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
