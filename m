Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F65D10D377
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 10:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7iz8YbUDvZBICke83Wf9MEsGlo2ekhR0nNpnw8zlD08=; b=GSOrH9Yb7ySuekOxeHWwUUayr
	nBQE62C25+lZcBuP9d1yYi1EMbfj5/AsqukBN5TRFrIgoC3XMT3uX14hnxvemeN+wXMtvb6l6oSZ7
	KIe3n/sBt44gR2WeTd+cHueb/tUS4/oAKEcQJ9XaeAdDWpWeSP4tbwKLEU0+M/q6s80+fnWi8xtTh
	F8RjUVfZkytgHf07ZLLphfCw3K4wG9woM3O5j2Zzhn5+tTnExsQ5COlzrg35rrS172nrQoCRHbWSm
	zbBoDYcN1kXEzNd3gwtfisnUfE7wPj2URQBvCoDK7WpZorEnB8bf+8HdoLnprWNQR0Ip9y5aJmkFP
	SplZClc6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacun-00029n-NM; Fri, 29 Nov 2019 09:50:17 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacub-0001dZ-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 09:50:06 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 29 Nov 2019 01:49:55 -0800
Subject: Re: [linux-sunxi] [PATCH 1/3] arm64: dts: allwinner: a64: olinuxino:
 Fix eMMC supply regulator
To: wens@kernel.org, Stefan Mavrodiev <stefan@olimex.com>
References: <20191129091336.13104-1-stefan@olimex.com>
 <20191129091336.13104-2-stefan@olimex.com>
 <CAGb2v64oCx90LQScKTiHVyHLd6c7Rgs_g5L79Yr1J8kgS8-Kyg@mail.gmail.com>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <d2417767-cad0-e7d5-3f34-af07bb143e10@olimex.com>
Date: Fri, 29 Nov 2019 11:49:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v64oCx90LQScKTiHVyHLd6c7Rgs_g5L79Yr1J8kgS8-Kyg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_015005_336358_2DA26B68 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/29/19 11:26 AM, Chen-Yu Tsai wrote:
> On Fri, Nov 29, 2019 at 5:14 PM Stefan Mavrodiev <stefan@olimex.com> wrote:
>> A64-OLinuXino-eMMC uses 1.8V for eMMC supply. This is done via a triple
>> jumper, which sets VCC-PL to either 1.8V or 3.3V. This setting is different
>> for boards with and without eMMC.
>>
>> This is not a big issue for DDR52 mode, however the eMMC will not work in
>> HS200/HS400, since these modes explicitly requires 1.8V.
>>
>> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
>> ---
>>   arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
>> index 96ab0227e82d..7d135decbd53 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
>> @@ -14,8 +14,8 @@
>>   &mmc2 {
>>          pinctrl-names = "default";
>>          pinctrl-0 = <&mmc2_pins>;
>> -       vmmc-supply = <&reg_dcdc1>;
>> -       vqmmc-supply = <&reg_dcdc1>;
>> +       vmmc-supply = <&reg_eldo1>;
> If I'm reading the schematics correctly, VCC on the eMMC is from 3.3V.
> This corresponds to the vmmc-supply property. So you shouldn't change it.

My bad. Don't know how I've missed that.

Stefan

>
>> +       vqmmc-supply = <&reg_eldo1>;
> vqmmc-supply is from the VCC-PC rail, which is the one you say is triple-
> jumpered. So this change makes sense.
>
> ChenYu
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
