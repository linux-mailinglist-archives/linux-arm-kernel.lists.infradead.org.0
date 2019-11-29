Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAB910D1C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 08:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w8P2RiL13RVMVVaqvDUtwfa1Zi8ARDIgz1fDgptqBlc=; b=IBmVMhQHUstJLc8Db42Z7phcw
	4k0psEKuuzsK+gKraQEb0Ooi+e7+pgJTnWTc6oH4cWSrsIWjX8gS45y30mvInj1Ewj0DgXZOEnhsz
	O5j+3zb0ym58pByAiXIG25oPfw/vu/vzAmePNPNUNtOo7RDxAjqpuJnEe7dCXvWllmm5+bTujE1H0
	hMF+YgzpHUK0vezwFOZXMzabMkXOUUEv5buFFe+cQy/p8IR/FY6gtMXKDYpsUmsqIydIYMOlVfJ3U
	/3OancKVBvwhmIcx4r2Ru+4aKCocokQUpS58PmhXvJglk3fnE9r/tUsF02dCfONl+Lq6/j8orIkKT
	L5baasXMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaabg-0006bN-DE; Fri, 29 Nov 2019 07:22:24 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaabX-0006b0-6D
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 07:22:16 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 28 Nov 2019 23:22:04 -0800
Subject: Re: [PATCH 1/1] arm64: dts: allwinner: a64: olinuxino: Add VCC-PG
 supply
To: Maxime Ripard <mripard@kernel.org>
References: <20191126110508.15264-1-stefan@olimex.com>
 <20191126162721.qi7scp3vadxn7k2i@gilmour.lan>
 <0c1d7377-7064-f509-ffc5-bd1e8f2fbaa8@olimex.com>
 <20191128103301.vjpkvjscy45ycgwg@gilmour.lan>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <1e0509cc-4afc-d46f-84a9-5e54c60c9d7b@olimex.com>
Date: Fri, 29 Nov 2019 09:22:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191128103301.vjpkvjscy45ycgwg@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_232215_230037_13FC2A39 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 <devicetree@vger.kernel.org>, Stefan Mavrodiev <stefan@olimex.com>,
 linux-sunxi@googlegroups.com, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/28/19 12:33 PM, Maxime Ripard wrote:
Hi Maxime,
> Hi Stefan,
>
> On Wed, Nov 27, 2019 at 09:07:40AM +0200, Stefan Mavrodiev wrote:
>> On 11/26/19 6:27 PM, Maxime Ripard wrote:
>>> Hi Stefan,
>>>
>>> On Tue, Nov 26, 2019 at 01:05:08PM +0200, Stefan Mavrodiev wrote:
>>>> On A64-OLinuXino boards, PG9 is used for USB1 enable/disable. The
>>>> port is supplied by DLDO4, which is disabled by default. The patch
>>>> adds the regulator as vcc-pg, which is later used by the pinctrl.
>>>>
>>>> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
>>>> ---
>>>>    arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts | 4 ++++
>>>>    1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>>>> index 01a9a52edae4..c9d8c9c4ef20 100644
>>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>>>> @@ -163,6 +163,10 @@
>>>>    	status = "okay";
>>>>    };
>>>>
>>>> +&pio {
>>>> +	vcc-pg-supply=<&reg_dldo4>;
>>> The equal sign should have spaces around it.
>>>
>>> Also, can you please list all the bank supplies while you're at it?
>> Sure. Should the supplies defined as regulators names be added also to the
>> pio node?
>> For example reg_aldo1 is named "vcc-pe".
> As far as I can tell, the A64 has regulators for PC, PD, PE, PG and
> PL, so you should list those (PL being under r_pio)

After quick check I've found a bug (maybe?). It's not possible to specify
vcc-pl-supply, because of this:

https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/sunxi/pinctrl-sunxi.c#L778

During the probe of the pmu, the pinctrl tries to get a regulator, that 
doesn't exist yet.
Because of this the system doesn't start (as expected).

I've tried to ignore -EPROBE_DEFER. This seems to work, but only because 
the regulator for
PL is defined as "regulator-always-on". The problem is that the refcount 
is not incremented.
So if you export one gpio and the unexport it, the regulator will be 
disabled. I'm not sure
how this can be resolved.

Should I skip vcc-pl-supply for now and list the other bank supplies?


Stefan

>
>> Also, since the commit message will be different for better representation
>> of the changes, should I send the next
>> patch as v2 or as a new one?
> Either way works for me as long as the commit message matches the changes.
>
> Thanks!
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
