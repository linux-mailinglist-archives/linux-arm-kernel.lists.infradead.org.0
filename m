Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BD31101AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0K2p2fKsPEVcoRkVguCQZtmfSJHtATg8rVfwaHQcmyk=; b=RKhFJ8EGGcYr7+
	5hlg+aYqHtt9uHTp8enBo/XK2scuyOmmeK2oUvcTfEWkpVZYjnlVIFTvO0W4weNTN9uoHmE5ALNW5
	+PHWJxe9IP8fPTVttvu4b3ClfDy043ww+CIda68jfSx1rWZ2cBEoT2dVBIfx1JtppfPDFrbLvEKwP
	jWbsA2FcQfZDzFvXgh5vqmfslCIEiZlPSrWLra6Cs89GY67gyxK2b8+1YrEpQCuyjiGRWKOBWjtZg
	gmReT6XcGYAmwD0z4xdZtozYJ3J3j76cKt2ZPOxrFplgl1wJukiGPFrrGhm2f5cEBlge31uig+L12
	lBW+6LWMjgX4bv/VjBgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAb7-0004q0-N5; Tue, 03 Dec 2019 16:00:21 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAZ6-0004kQ-6d
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 15:58:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1575388692;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=rtHOM2pr5THkPaPjFp7PY8/XZ2kRx7eA36g2+Jz6rs8=;
 b=KioLw3gaS8fSZEnSEEmelAP5w4+gEwbTy6YOIcbema4ED5+cwQ+O7n1MQD/FbDpho5
 rUuMz0O+IM2/zaMjam6A7NIQXIrWFeeY/CM5TiyWq+7kEbmQYRLO/LkswHoPfRnVeM//
 EnyGaNf3fuv/HAl/ErQOu6r6wSrLe/G2dd91wQmcxcUbobBasxe8CrQNI42nXqyuXwL6
 ANfK5UVrDTm5pGsdeiJ+iWjs2eoZ9WKDu6B+EwywGsQwfWBibw9G/4uQKL4gNOTuKPJ5
 X5DJ2mjgk40S6D+hoNZm5GblmGD7YbEGasucYwQP9js+tfoQXArPTQ8Qkj7h9K/IIBUS
 vjrg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBp5hRw/qOxWRk4dCyiod0h4YszmWBgQhXwA+mYqVRc/0ppp+PaXh4="
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2001:16b8:2678:d200:b5c8:3e51:552:ff8c]
 by smtp.strato.de (RZmta 46.0.2 AUTH) with ESMTPSA id 6067eavB3FwB6R5
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Tue, 3 Dec 2019 16:58:11 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191203154447.GC35479@atomide.com>
Date: Tue, 3 Dec 2019 16:58:21 +0100
Message-Id: <5F430C0D-7F25-4680-87B9-2D65A08A9F83@goldelico.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
 <20191202213929.GB35479@atomide.com>
 <EE749881-C3DB-4BBE-85FE-E5AF3D34884F@goldelico.com>
 <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
 <20191203154447.GC35479@atomide.com>
To: Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
 Tero Kristo <t-kristo@ti.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_075828_299147_AA4BF61B 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:6 listed in]
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
Cc: Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 03.12.2019 um 16:44 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * H. Nikolaus Schaller <hns@goldelico.com> [191203 12:31]:
>> Ok, dev_pm_opp_find_freq_ceil() is doing what it should do and it
>> returns the first OPP higher or equal than the frequency passed in.
>> 
>> The real reason for the warning is that the same OPP table is used
>> for vdd_mpu_iva and vdd_core and it appears as if "core" (l3_ick)
>> runs at 200 MHz which does not correspond to a valid OPP.
> 
> OK
> 
>> So to silcence the warning it suffices to remove
>> 
>> 	omap2_set_init_voltage("core", "l3_ick", "l3_main");
>> 
>> The question is now what l3_ick has to do with the OPPs at all
>> and how it should interwork with OPPs and cpufreq.
> 
> So what changed then for iva in your configuration then?
> 
> At least I'm getting errors for both for 34xx and dm3730 with
> Linux next and reverted commit cf395f7ddb9e ("ARM: OMAP2+: Fix
> warnings with broken omap2_set_init_voltage()"):
> 
> omap2_set_init_voltage: unable to find boot up OPP for vdd_mpu_iva
> omap2_set_init_voltage: unable to set vdd_mpu_iva
> omap2_set_init_voltage: unable to find boot up OPP for vdd_core
> omap2_set_init_voltage: unable to set vdd_core

Hm... Is there maybe a dependency on u-boot?

We are using a quite old version which may boot with vdd_mpu_iva
as 300 MHz while yours may have a different clock.

What we could do is augment the printk (or dev_err) to tell
in these warnings what it is looking for...

	opp = dev_pm_opp_find_freq_ceil(dev, &freq);
	if (IS_ERR(opp)) {
		pr_err("%s: unable to find boot up OPP for vdd_%s freq %ulHz\n",
		__func__, vdd_name, freq);
		goto exit;
	}

> Then for fixing this code, seems like this can all happen from
> a regular device driver init based on the dts data.. We've had
> PM init completely ignore these errors already for years so
> whatever dependency there might be seems non-critical :)
> 
>> Or does all this mean we may need a second OPP fable for vdd_core
>> and 200 MHz? But what would it be good for? I have not seen any
>> reference for "core-OPPs" in the TRM.
> 
> OK yeah sounds like all the domains need an opp table.
> 
> Also, I recall some SoCs having a dependency between having to
> run DSP at a lower rate for higher MPU rates, not sure if omap3
> has such dependencies though.

Well, I not aware of documentation of such dependencies and there
is also some confusion what vdd_mpu_iva exactly is and what vdd_core is.
twl4030 has vdd1 and vdd2 but their relationship isn't clear either.

Maybe Tero or Nisanth can clarify?

BR and thanks,
Nikolaus



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
