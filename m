Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE5BB2AD6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 11:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d+edRRymnzFN9+gd1mCbmDY2sE7pltjBRqB/ww0V3g=; b=CcxeeTB2UcwB4o
	8DU/4tc5czQzuYbehLBYMmaF84L+0Iw9QjRL+E6joDjjPSU4h5K+C4ZL54Iagyp9pYMdafMsEaA7z
	yp35PvaVUelI07oWjXLFeyUxljg/2gnt3fWkbLCprilD6BXFrKVRGK+tUYJuDO9rznaQHk00TkoeT
	xZbrf9RSP/YB3g55gE+QKQ9FS/5g4tPgVfKBJ+Qod1alkPjrBWBV34wAJ60nCIuzrA0G/hY9CMhNc
	K5c4lu4ohsevGOHNuiXtbJPVYT5pdI3MtxqcZUoWOP9HXT7B1sAVULRl9yeijdOyXViAPE2NbHyW3
	3jFzewDNF907i4HssVdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i94OP-0008Rq-DT; Sat, 14 Sep 2019 09:30:57 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i94Nw-0008QW-OK
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 09:30:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1568453412;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=nfPo6P6nRIYi5GgXmILaC3b6iwezpOX9AtXtSXYwkdo=;
 b=FeXZpkEewM17QUIV7PB6DwAjYKW+j36puzHdCgs9vN7tqPUeh+ktjBKy+EbbgqplNY
 m8MM+shnYm3fsZsqY/SStkZ/yyqNZahmXFZ1jVwSo49yBXOKTW9whRmQhMnR62uDiScJ
 Oh48dvKa9V1vID38QhCZSUE//rH+ntdAnQF6jrODO9OCyy6FuZi6phslUcWqesaXkL9k
 w0J+qaaWeU/S6yH5O4/5VCwK63lfll+GTeSKP2aKI2uuVdxMPk0THYOI0XhQUTGeyABY
 UwELv9O1ibYdzWRsm9Vc1LslnKqu4old9FXv67NslV6+MMg0h9uxCjIHKe2Kj7QXzXOy
 H9bA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PhwDWtpw=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v8E9UBKDR
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Sat, 14 Sep 2019 11:30:11 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v3 6/8] ARM: dts: omap36xx: using OPP1G needs to control
 the abb_ldo
From: H. Nikolaus Schaller <hns@goldelico.com>
In-Reply-To: <CAHCN7x+RTSHg7jKys=Jv6Urz0PsHNTM8EnFT1dwAZOtsjxpEAw@mail.gmail.com>
Date: Sat, 14 Sep 2019 11:30:10 +0200
Message-Id: <F05A8A00-9B2A-4159-BE5B-C93DF139F73E@goldelico.com>
References: <cover.1568224032.git.hns@goldelico.com>
 <59a0f6267c75859c25665548db2e8a9c4229d3b4.1568224033.git.hns@goldelico.com>
 <CAHCN7x+RTSHg7jKys=Jv6Urz0PsHNTM8EnFT1dwAZOtsjxpEAw@mail.gmail.com>
To: Adam Ford <aford173@gmail.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_023029_574415_12F9A5EF 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-pm@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 13.09.2019 um 23:13 schrieb Adam Ford <aford173@gmail.com>:
> 
> On Wed, Sep 11, 2019 at 12:47 PM H. Nikolaus Schaller <hns@goldelico.com> wrote:
>> 
>> See DM3730,DM275 data sheet (SPRS685B) footnote (6) in Table 4-19
>> which says that ABB must be switched to FBB mode when using the
>> OPP1G.
>> 
>> The LOD definition abb_mpu_iva already exists so that we need
>> to add plumbing for vbb-supply = <&abb_mpu_iva>
>> and define two voltage vectors for each OPP so that the abb LDO
>> is also updated by the ti-cpufreq driver.
>> 
>> We also must switch the ti_cpufreq_soc_data to multi_regulator.
>> 
>> Note: reading out the abb reglator voltage to verify that
>> it does do transitions can be done by
>> 
>> cat /sys/devices/platform/68000000.ocp/483072f0.regulator-abb-mpu/regulator/regulator.*/microvolts
>> 
>> Likewise, read the twl4030 provided VDD voltage by
>> 
>> cat /sys/devices/platform/68000000.ocp/48070000.i2c/i2c-0/0-0048/48070000.i2c:twl@48:regulator-vdd1/regulator/regulator.*/microvolts
>> 
>> Note: to check if the ABB FBB is enabled/disabled, check
>> registers
>> 
>> PRM_LDO_ABB_CTRL 0x483072F4 bit 3:0 1=bypass 5=FBB
>> PRM_LDO_ABB_SETUP 0x483072F0 0x00=bypass 0x11=FBB
>> 
>> e.g.
>> 
>> /dev/mem opened.
>> Memory mapped at address 0xb6fe4000.
>> Value at address 0x483072F4 (0xb6fe42f4): 0x3205
>> /dev/mem opened.
>> Memory mapped at address 0xb6f89000.
>> Value at address 0x483072F4 (0xb6f892f4): 0x3201
>> 
>> Note: omap34xx and am3517 have/need no comparable LDO
>> or mechanism.
>> 
>> Suggested-by: Adam Ford <aford173@gmail.com>
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>> arch/arm/boot/dts/omap36xx.dtsi | 21 ++++++++++++++++-----
>> drivers/cpufreq/ti-cpufreq.c    |  2 +-
>> 2 files changed, 17 insertions(+), 6 deletions(-)
>> 
>> diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
>> index cb5bd0969124..4bb4f534afe2 100644
>> --- a/arch/arm/boot/dts/omap36xx.dtsi
>> +++ b/arch/arm/boot/dts/omap36xx.dtsi
>> @@ -23,6 +23,7 @@
>>                cpu: cpu@0 {
>>                        operating-points-v2 = <&cpu0_opp_table>;
>> 
>> +                       vbb-supply = <&abb_mpu_iva>;
>>                        clock-latency = <300000>; /* From omap-cpufreq driver */
>>                };
>>        };
>> @@ -37,9 +38,11 @@
>>                        /*
>>                         * we currently only select the max voltage from table
>>                         * Table 4-19 of the DM3730 Data sheet (SPRS685B)
>> -                        * Format is: <target min max>
>> +                        * Format is:   cpu0-supply:    <target min max>
>> +                        *              vbb-supply:     <target min max>
>>                         */
>> -                       opp-microvolt = <1012500 1012500 1012500>;
>> +                       opp-microvolt = <1012500 1012500 1012500>,
>> +                                        <1012500 1012500 1012500>;
>>                        /*
>>                         * first value is silicon revision bit mask
>>                         * second one is "speed binned" bit mask
>> @@ -50,25 +53,33 @@
>> 
>>                opp100-600000000 {
>>                        opp-hz = /bits/ 64 <600000000>;
>> -                       opp-microvolt = <1200000 1200000 1200000>;
>> +                       opp-microvolt = <1200000 1200000 1200000>,
>> +                                        <1200000 1200000 1200000>;
>>                        opp-supported-hw = <0xffffffff 3>;
>>                };
>> 
>>                opp130-800000000 {
>>                        opp-hz = /bits/ 64 <800000000>;
>> -                       opp-microvolt = <1325000 1325000 1325000>;
>> +                       opp-microvolt = <1325000 1325000 1325000>,
>> +                                        <1325000 1325000 1325000>;
>>                        opp-supported-hw = <0xffffffff 3>;
>>                };
>> 
>>                opp1g-1000000000 {
>>                        opp-hz = /bits/ 64 <1000000000>;
>> -                       opp-microvolt = <1375000 1375000 1375000>;
>> +                       opp-microvolt = <1375000 1375000 1375000>,
>> +                                        <1375000 1375000 1375000>;
>>                        /* only on am/dm37x with speed-binned bit set */
>>                        opp-supported-hw = <0xffffffff 2>;
>>                        turbo-mode;
> 
> If / when the thermal changes I submitted get approved, would you
> entertain dropping this turbo-mode flag so it's enabled by default?

Yes, that makes sense.

To keep patches clearly grouped into two series (better for bisect or
partial revert or apply in any order), I would suggest that we do

1. add OPP1G logic (with turbo-mode; specified)
2. add thermal throttling
3. remove turbo-mode again as soon as both are merged

A patch for 2b is waiting for 1 and 2a to be confirmed :)

BR,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
