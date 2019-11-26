Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCE4109BBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 11:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MV/roPH106NcFWN0yeqTvwn07k+cgvKUwSFE6NlrG+A=; b=KOVnssONeHPWU4ixFOJWV0X15
	MsJ3yLVJDxRS5hGtGQn9BqWXp6hVyFp+XQh7Vgb2S2A0Ad8aQ/Cv413P3MMyUHGan3hm5puky3AbA
	PRE+eIb2ceBqORkVdLQJosTy+JdpQKZ2pNjEBITl1cTzZeLR2/1k9UeOeoTWEIgjXIjuM7rCfVvUQ
	O78dniH9JAYy8rscr034+HXx+qa82GWO3FAVd36k61KhwgXDSnVNwlG/IRJD9zAwPZ2/2Ee4JkkoS
	MpPTMxRaPXKbTtK37blAxRkndm2kGEbj802vVOA+N/qHhQgZnWv9KLA5iK4NeZBVPUaTfF1PY5AUk
	Sk6y/5t1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXlp-0005fd-Ug; Tue, 26 Nov 2019 10:08:33 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXlX-0004DT-Qe
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 10:08:17 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id E7C5C230D1;
 Tue, 26 Nov 2019 11:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1574762882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y3hXqvgd2MuTcuqEB4nE4yu26xVNMub4dFPnjjzwuFc=;
 b=dFxXPlxcs5wRBFdPEc6cdNVDsDXU/Kllf1DAfc65g3QCmnFm7rxn7VkV6HW6eniMyCLORP
 0ffkpCIJM3wk6wAdij5MW5XC8KcmV0IMV1KlrYdE+7SwIYNPlVr7geT1jC9WQ/DwXMhBU9
 +/u3dIrPZ8oKDR05yic5hLRaapCXt9c=
MIME-Version: 1.0
Date: Tue, 26 Nov 2019 11:08:01 +0100
From: Michael Walle <michael@walle.cc>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
In-Reply-To: <AM0PR0402MB3556804FB47D182173C6A7AAE0450@AM0PR0402MB3556.eurprd04.prod.outlook.com>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-4-michael@walle.cc>
 <AM0PR0402MB3556804FB47D182173C6A7AAE0450@AM0PR0402MB3556.eurprd04.prod.outlook.com>
Message-ID: <afde04b888418e9e4f4fdb946a579e70@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: E7C5C230D1
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.32.167.96:email];
 RCPT_COUNT_SEVEN(0.00)[8]; NEURAL_HAM(-0.00)[-0.385];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_020816_031433_E0A64161 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Li <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kuldeep,

Am 2019-11-26 07:40, schrieb Kuldeep Singh:
> Hi Michael,
> 
>> -----Original Message-----
>> From: devicetree-owner@vger.kernel.org 
>> <devicetree-owner@vger.kernel.org>
>> On Behalf Of Michael Walle
>> Sent: Sunday, November 24, 2019 1:43 AM
>> To: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org; 
>> linux-
>> kernel@vger.kernel.org
>> Cc: Shawn Guo <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>; Rob
>> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
>> Michael Walle <michael@walle.cc>
>> Subject: [EXT] [PATCH 3/4] arm64: dts: ls1028a: add FlexSPI node
> 
> There's already a patch[1] sent upstream and is under review.
> It includes dts(i) entries for LS1028. I will be sending the next 
> version

I've seen that, but there wasn't any reply for almost two months now. 
But
if you're sending your next version, this patch can be dropped from this
series.

-michael

> 
> [1] https://patchwork.kernel.org/patch/11139365/
>> 
>> Caution: EXT Email
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> index 6730922c2d47..650b277ddd66 100644
>> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
>> @@ -260,6 +260,19 @@
>>                         status = "disabled";
>>                 };
>> 
>> +               fspi: spi@20c0000 {
>> +                       compatible = "nxp,lx2160a-fspi";
>> +                       #address-cells = <1>;
>> +                       #size-cells = <0>;
>> +                       reg = <0x0 0x20c0000 0x0 0x10000>,
>> +                             <0x0 0x20000000 0x0 0x10000000>;
>> +                       reg-names = "fspi_base", "fspi_mmap";
>> +                       interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
>> +                       clocks = <&clockgen 4 3>, <&clockgen 4 3>;
>> +                       clock-names = "fspi_en", "fspi";
>> +                       status = "disabled";
>> +               };
>> +
>>                 esdhc: mmc@2140000 {
>>                         compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
>>                         reg = <0x0 0x2140000 0x0 0x10000>;
>> --
>> 2.20.1
> 
> Regards
> Kuldeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
