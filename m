Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D716986188
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VGc76C6AIzNX/BGggo4krCpvZSt5Nyic4od4jUPQqZI=; b=sOYGOjOP7SU1qZthhurryF/TFZ
	PaMgSk86NSQ+k56segyb3FcFFpIpO8ARggqouiTA40jOAs+nNXeCj6DtU/ZevBeYJjaXZNyiw4WAB
	VeiZ0PodgmVWHVbP3jndV05cognR198liF779w8ExC0FoE/BTQfRNgI5CHVJzSgvUrUZWCUr1VvFR
	IHFQ3CBu52dHIAYDdkp/ycDKOQo67zFSYeDopLrECe2OU8sF3tBx7aZuzUZqmSCCGG6USQwVSAl3J
	bs6/QuadP9FJBHivNUI3Kvs5D0cS0uNSLDfiPI4sA2LfydN5w/MLj3O/B2umelxMqc39i0Zq8atxY
	COqy000w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhRc-0008CW-40; Thu, 08 Aug 2019 12:23:00 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhRO-0008C5-67
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:22:48 +0000
Received: from tarshish (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id DDF904404F8;
 Thu,  8 Aug 2019 15:22:42 +0300 (IDT)
References: <8dec8f80b1269df040251a14b671f9c834c121cd.1565188354.git.baruch@tkos.co.il>
 <CAOMZO5C9zBPZgc4CfR_h6hDg5vEXTzokCh9rbzNknZ4eE06qLw@mail.gmail.com>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm64: dts: fsl: add support for Hummingboard Pulse
In-reply-to: <CAOMZO5C9zBPZgc4CfR_h6hDg5vEXTzokCh9rbzNknZ4eE06qLw@mail.gmail.com>
Date: Thu, 08 Aug 2019 15:22:42 +0300
Message-ID: <87o90zu9rh.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_052246_464228_9C15BD59 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Jon Nettleton <jon@solid-run.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

Thanks for your review. I'll send an updated patch shortly.

One comment below.

On Thu, Aug 08 2019, Fabio Estevam wrote:
> On Wed, Aug 7, 2019 at 11:32 AM Baruch Siach <baruch@tkos.co.il> wrote:
>>
>> From: Jon Nettleton <jon@solid-run.com>
>>
>> The SolidRun Hummingboard Pulse carrier board carries the SolidRun
>> i.MX8MQ based SOM.
>>
>> Notably missing is PCIe support that depends on analog PLLOUT clock.
>> Current imx clk driver does not support this clock.
>>
>> Signed-off-by: Jon Nettleton <jon@solid-run.com>
>> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

[...]

>> +&i2c2 {
>> +       clock-frequency = <100000>;
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&pinctrl_i2c2>;
>> +       status = "okay";
>> +
>> +       typec_ptn5100: ptn5110@50 {
>> +               compatible = "usb,tcpci";
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&pinctrl_typec>;
>> +               reg = <0x50>;
>> +               interrupt-parent = <&gpio1>;
>> +               interrupts = <6 8>;
>> +               ss-sel-gpios = <&gpio3 15 GPIO_ACTIVE_HIGH>;
>> +               src-pdos = <0x380190c8>;
>
> This property and others do not exist in mainline
>
> Please see Documentation/devicetree/bindings/usb/typec-tcpci.txt and
> arch/arm64/boot/dts/freescale/imx8mm-evk.dts for a reference.

Thanks for the reference. I assume your refer to imx8mm-evk.dts in
Shawn's imx/dt64 branch, since it's not in the mainline tree.

One problem I had with this example is that 'port' node is not under the
'connector' node. The kernel doesn't like that:

[    1.502227] OF: graph: no port node found in /soc@0/bus@30800000/i2c@30a30000/usb-typec@50/connector

Do you see something similar?

I moved 'port' under 'connector' to avoid this warning. The TypeC
connector works either way, though.

Do you have any idea whether there is a 'ss-sel-gpios' property
equivalent in current kernel code?

Thanks again,
baruch

--
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
