Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B521BB84D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAtDc2WDt1beRNY4K5CENZiDjU9djEtXyrv/mVyaXH0=; b=UPL3QXtVVxv34A
	Z2IfFu6Bdr4u1l8ngC9vvfiKFcERyi32uhhFAuLeYGTxDioJotJsYtkD/hoIXn2X7Liw59zsWRI60
	jpMXxZi9PrjBrN+KLmZQKJCcKZW/wPhyvjd/muxvFbXOfqVTbs8BnSC1EZPOJc2pKGOir+B0iP4vu
	pxr5YzfeB7W0zoSUhHMFgIqZ1jmfDVmF/wjrYMY3OM5Uk46/hAWS8VEHPGK6yQdYb7Mox69F2YRf+
	F9162SzMO7xM4l7JLhTNbMaqtnxVKTHXcqNVykp+CxVf6yS2pae/XKJK8mbuOEJwLuHCCkMGTkRDH
	Y29LYw1W6E0MtjiRe50Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLAC-0008IA-I3; Tue, 28 Apr 2020 08:00:20 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLA1-0005lo-6S
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1588060797;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=K6NDm2J1xaVXm6jF6KgArlrb/oodSBZNUiS/2yF1Wro=;
 b=f7BnZ/4DqZywZCYNAQ6TXwu2AObFCPYLUu93zUPN8n4EMH7/PevILmouH1laBDaMTg
 yKNR3+Nzo/36Oj7x9s3DvFtnPMaDEOFpQ/VtPPXY9dtZh1UL2NrcU7zd+7Zy6+/Twkf6
 aCcMU4C4mWA0Wod4/ehSyCf9pki1FEDH8lT3e7VcDY1X9/cxhhV+Oz/oVxadjKKMuo5q
 a6mWxIzrVnmBXXVxoOiv28X9qYKcxPBXXPbkColBKA0hbhfJEEr6CvcTxc/CU9JfBkmZ
 YQ8zz75s31y3CTpjdhiDQiaXt9MYyZ80lDikQ1IpU2J9x0oEz0tqTEWfGhunZUfUxhDA
 glNA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PuwDas9g=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3S7xnNsG
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Tue, 28 Apr 2020 09:59:49 +0200 (CEST)
Subject: Re: [PATCH v7 06/12] ARM: DTS: omap4: add sgx gpu child node
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <DOBE9Q.00IRKFIW0JMG@crapouillou.net>
Date: Tue, 28 Apr 2020 09:59:22 +0200
Message-Id: <98FA6E7D-0DC7-4C70-A228-038BB9799290@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <5f493a50fedef45c3cacd91cbf999092d9c05164.1587760454.git.hns@goldelico.com>
 <DOBE9Q.00IRKFIW0JMG@crapouillou.net>
To: Paul Cercueil <paul@crapouillou.net>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_010009_866899_CCC4317E 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:4 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?iso-8859-1?Q?Beno=EEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

> Am 26.04.2020 um 14:50 schrieb Paul Cercueil <paul@crapouillou.net>:
> =

> Hi Nikolaus,
> =

> Le ven. 24 avril 2020 =E0 22:34, H. Nikolaus Schaller <hns@goldelico.com>=
 a =E9crit :
>> Add SGX GPU node with interrupt. Tested on PandaBoard ES.
>> Since omap4420/30/60 and omap4470 come with different SGX variants
>> we need to introduce a new omap4470.dtsi. If an omap4470 board
>> does not want to use SGX it is no problem to still include
>> omap4460.dtsi.
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>> arch/arm/boot/dts/omap4.dtsi   | 11 ++++++-----
>> arch/arm/boot/dts/omap4470.dts | 15 +++++++++++++++
>> 2 files changed, 21 insertions(+), 5 deletions(-)
>> create mode 100644 arch/arm/boot/dts/omap4470.dts
>> diff --git a/arch/arm/boot/dts/omap4.dtsi b/arch/arm/boot/dts/omap4.dtsi
>> index 763bdea8c829..15ff3d7146af 100644
>> --- a/arch/arm/boot/dts/omap4.dtsi
>> +++ b/arch/arm/boot/dts/omap4.dtsi
>> @@ -389,7 +389,7 @@ abb_iva: regulator-abb-iva {
>> 			status =3D "disabled";
>> 		};
>> -		target-module@56000000 {
>> +		sgx_module: target-module@56000000 {
>> 			compatible =3D "ti,sysc-omap4", "ti,sysc";
>> 			reg =3D <0x5600fe00 0x4>,
>> 			      <0x5600fe10 0x4>;
>> @@ -408,10 +408,11 @@ target-module@56000000 {
>> 			#size-cells =3D <1>;
>> 			ranges =3D <0 0x56000000 0x2000000>;
>> -			/*
>> -			 * Closed source PowerVR driver, no child device
>> -			 * binding or driver in mainline
>> -			 */
>> +			gpu: gpu@0 {
>> +				compatible =3D "ti,omap4-sgx540-120", "img,sgx540-120", "img,sgx540=
";
>> +				reg =3D <0x0 0x2000000>;	/* 32MB */
>> +				interrupts =3D <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
>> +			};
>> 		};
>> 		/*
>> diff --git a/arch/arm/boot/dts/omap4470.dts b/arch/arm/boot/dts/omap4470=
.dts
>> new file mode 100644
>> index 000000000000..f29c581300bf
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/omap4470.dts

^^^ there is also a missing "i" in the file name

>> @@ -0,0 +1,15 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Device Tree Source for OMAP4470 SoC
>> + *
>> + * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.co=
m/
>> + *
>> + * This file is licensed under the terms of the GNU General Public Lice=
nse
>> + * version 2.  This program is licensed "as is" without any warranty of=
 any
>> + * kind, whether express or implied.
>> + */
>> +#include "omap4460.dtsi"
>> +
>> +&sgx {
> =

> Does this even compile?

Good question.

So far there is no well known eval board in mainline that #includes this .d=
tsi (because it is new) and therefore it passes any compile tests.

  DTC     arch/arm/boot/dts/omap4470-test.dtb - due to target missing
Error: arch/arm/boot/dts/omap4470.dtsi:13.1-5 Label or path sgx not found

I have now added a dummy board (not to be mainlined) for my own compile tes=
t...

> =

> The node's handle is named sgx_module, not sgx.

Indeed. A fix is queued for v8.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
