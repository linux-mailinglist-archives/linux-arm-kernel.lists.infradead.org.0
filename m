Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE62B1102F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:54:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfz+gA4jGTNh2+ew1qp/GiAuA4Iep8Z/iofQJOPPPZk=; b=IiBzXKxreRt8aL
	wsrxC8+B4SaTL0qqqyal/+XvVd8NVIovwdZbVTjntPTWxMs0zRziwdwBGbIputb1zSUFOoME1OQoh
	qqWph/UQnz1OKRKNeoGgM0YuTa+U0vG0wJq4zjvaxJUpGxXZKGMYuoRrX0SIVbDNKm3uxtU25u6zd
	WxtlESviNdP8o41cxUVbPGmH9tASGhiFPCCTDjdZDi8RCWAv/FqoYEdljZWRSOAlTEp444dZk0hmO
	0sI8cFpbtLHqoFlhYFnlSl+Q7sPbs1am5rBaD3+B3+TAKwCKfq+w4h0Xo7RXUTL/Et279bxhnJcvS
	AlstK1zFHQWohgP0Nrgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icBRe-0001v4-Ou; Tue, 03 Dec 2019 16:54:38 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icBRU-0001s0-5H
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 16:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1575392065;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=GNEqwNnWqE/8Qot7d9H4fL3t7NY8bPr8DWMHXiCXNdM=;
 b=FwGPW7jQlCR2Wdrufd+OPpbYsiFtQQ29gBfx4CgwIq6W2CaNX9gsnGMZhAV1NEJkaM
 H24mzKWkmuQ2BgkNabbvVIvDeI/k7mOrU9NQQUDv5Jst8jHyMnQeA9ibfgC6IXQ97Vm3
 kIixdC4ZmYNMVTWjfGtpPf28ExetA7Kt6F8iESMnYvhofr1hosscMozD/ZLYSS41ctS6
 p6Ov5xfWtNIP+gHP4Qn8a+ApNokhSmkWphgBruN+lJHra61+wAmA9ILBMd/D8IAwBAW1
 O94l5CxydK9fvoH2zd+6uGRHw8dKaQ2zkSSelpo6iTdNenH5nNJCbIDP2jGtz6gQTCA+
 pkgw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDlacXAYPiQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.0.2 DYNA|AUTH)
 with ESMTPSA id 6067eavB3GsN6cC
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Tue, 3 Dec 2019 17:54:23 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <5F430C0D-7F25-4680-87B9-2D65A08A9F83@goldelico.com>
Date: Tue, 3 Dec 2019 17:54:23 +0100
Message-Id: <FB42ED12-5DDB-4A9E-941A-ACBE2C10C36A@goldelico.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
 <20191202213929.GB35479@atomide.com>
 <EE749881-C3DB-4BBE-85FE-E5AF3D34884F@goldelico.com>
 <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
 <20191203154447.GC35479@atomide.com>
 <5F430C0D-7F25-4680-87B9-2D65A08A9F83@goldelico.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_085428_818430_250160B6 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 03.12.2019 um 16:58 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
> 
> 
>> Am 03.12.2019 um 16:44 schrieb Tony Lindgren <tony@atomide.com>:
>> 
>> * H. Nikolaus Schaller <hns@goldelico.com> [191203 12:31]:
>>> Ok, dev_pm_opp_find_freq_ceil() is doing what it should do and it
>>> returns the first OPP higher or equal than the frequency passed in.
>>> 
>>> The real reason for the warning is that the same OPP table is used
>>> for vdd_mpu_iva and vdd_core and it appears as if "core" (l3_ick)
>>> runs at 200 MHz which does not correspond to a valid OPP.
>> 
>> OK
>> 
>>> So to silcence the warning it suffices to remove
>>> 
>>> 	omap2_set_init_voltage("core", "l3_ick", "l3_main");
>>> 
>>> The question is now what l3_ick has to do with the OPPs at all
>>> and how it should interwork with OPPs and cpufreq.
>> 
>> So what changed then for iva in your configuration then?
>> 
>> At least I'm getting errors for both for 34xx and dm3730 with
>> Linux next and reverted commit cf395f7ddb9e ("ARM: OMAP2+: Fix
>> warnings with broken omap2_set_init_voltage()"):
>> 
>> omap2_set_init_voltage: unable to find boot up OPP for vdd_mpu_iva
>> omap2_set_init_voltage: unable to set vdd_mpu_iva
>> omap2_set_init_voltage: unable to find boot up OPP for vdd_core
>> omap2_set_init_voltage: unable to set vdd_core
> 
> Hm... Is there maybe a dependency on u-boot?
> 
> We are using a quite old version which may boot with vdd_mpu_iva
> as 300 MHz while yours may have a different clock.
> 
> What we could do is augment the printk (or dev_err) to tell
> in these warnings what it is looking for...
> 
> 	opp = dev_pm_opp_find_freq_ceil(dev, &freq);
> 	if (IS_ERR(opp)) {
> 		pr_err("%s: unable to find boot up OPP for vdd_%s freq %ulHz\n",
> 		__func__, vdd_name, freq);
> 		goto exit;
> 	}

Easier and always prints info:

	freq = clk_get_rate(clk);
	clk_put(clk);

	pr_info("%s: vdd=%s clk=%s %luHz oh=%s\n", __func__, vdd_name, clk_name, freq, oh_name);

	opp = dev_pm_opp_find_freq_ceil(dev, &freq);

I get this:

[    2.908142] omap2_set_init_voltage: vdd=mpu_iva clk=dpll1_ck 1000000000Hz oh=mpu
[    2.930816] omap2_set_init_voltage: vdd=core clk=l3_ick 200000000Hz oh=l3_main
[    2.946228] omap2_set_init_voltage: unable to find boot up OPP for vdd_core
[    2.953460] omap2_set_init_voltage: unable to set vdd_core

Which means that cpufreq already has increased dpll1_ck to 1 GHz
(I have removed the turbo-mode tags so that it already boots at
full speed) and l3_ick runs at initial 200 MHz.

> 
>> Then for fixing this code, seems like this can all happen from
>> a regular device driver init based on the dts data.. We've had
>> PM init completely ignore these errors already for years so
>> whatever dependency there might be seems non-critical :)
>> 
>>> Or does all this mean we may need a second OPP fable for vdd_core
>>> and 200 MHz? But what would it be good for? I have not seen any
>>> reference for "core-OPPs" in the TRM.
>> 
>> OK yeah sounds like all the domains need an opp table.
>> 
>> Also, I recall some SoCs having a dependency between having to
>> run DSP at a lower rate for higher MPU rates, not sure if omap3
>> has such dependencies though.
> 
> Well, I not aware of documentation of such dependencies and there
> is also some confusion what vdd_mpu_iva exactly is and what vdd_core is.
> twl4030 has vdd1 and vdd2 but their relationship isn't clear either.
> 
> Maybe Tero or Nisanth can clarify?
> 
> BR and thanks,
> Nikolaus
> 
> 
> _______________________________________________
> http://projects.goldelico.com/p/gta04-kernel/
> Letux-kernel mailing list
> Letux-kernel@openphoenux.org
> http://lists.goldelico.com/mailman/listinfo.cgi/letux-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
