Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7C125A23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 23:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fa7EeEwFSKVmfXsJkE7v4eJNaNUm6sKvywDSr3Rkf6M=; b=pxUqOtWA/uNs6L
	UhtzFXzg7UpWj1lXgsWmVOOBe4/PBQvNzqQAfM3X9P7PliU6imZyruUHD/2fUuulDhKf/Qdw16Z0r
	FQT8XmYIvmTkn3pr520OpCxYc9lpLLF9oiY3L1GeeExRVAyaseatop7xqzDogU0NJwkAYgk+DaW2R
	dt/rgsRjZ1nOcDTZUyDGsl2IgrlnjwaqGVKV0ChH+2gBCAtQYx8jKFRWTX7zHTKYfK4gxzUBfvDa/
	QFTLcuw8v/uBeG3rvSAvS5pickhojhq0yNklceocStZv3YOXIgcsA5lQtWu//BpteS2ZJ1xeJdwm9
	aMs90gJuZXtFdsyXkDNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTCYP-0007VE-51; Tue, 21 May 2019 21:44:13 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTCYG-0007Uc-PY; Tue, 21 May 2019 21:44:06 +0000
Received: from oxbaltgw36.schlund.de ([172.19.246.44]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M3UhQ-1hTkmN1yTK-000dQZ; Tue, 21 May 2019 23:43:49 +0200
Date: Tue, 21 May 2019 23:43:46 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Message-ID: <1599901940.259900.1558475026379@email.ionos.de>
In-Reply-To: <a142b72b828a798610d885d81189dd21b1870d78.camel@suse.de>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-4-nsaenzjulienne@suse.de>
 <ebc78880-418f-f507-021c-41295113e041@i2se.com>
 <6383b357-3f7e-f031-f59f-61c598e44763@i2se.com>
 <a142b72b828a798610d885d81189dd21b1870d78.camel@suse.de>
Subject: Re: [RFC v2 3/5] clk: bcm2835: use firmware interface to update pllb
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev55
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:Isy5OlYsYGu9nrdhnWYleYJBAsXAYF+kjVDhfkkBJjpqzq5ZCJ8
 wBrxVrIo4++MiWGXASEOqxb4cpbPuhfyfcpg6XJSh/BMfGi9o7z1fQ0Khes7Q8QfhAon+iu
 Ph83K39Jzsa5+H1HvaMbZwfikr4aq0l8KiaHIfpCPI89Hw0fan5EAleIIX9/KTIpjv3F0xR
 FCPtxd9TpiKaJ0UONo/RA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nY8tA70RVBM=:mOsfgkfjoAIx80KhU342a4
 yiIrkI7pWZ99A/mCEoZVH+0C1zJXeM6uoYYhGJL/sfzZ7y4GMmdrn4Ziqsp9VnDV9PqPnBK9e
 NCeT5AAIqT/jjszs8m5KyTcEaCw5gsYVlG1g/ghx60arMlkVkvQXFvSk1KW5PIw2OB5ckhfsv
 KMDOIy9RwM5XruZnfBjbWQxqfkRRo1xcsG6+V2rAu1plD+yIXDZnS+eE7qBI7eedU1FR605eZ
 4Zh72Z21kH7qhvv1TDKzV2wdka9dwqZ0OE5ApKjURmgSmLmbpPxBCqSYokQaaW8hZumhdaFro
 jljEXtF9nm/yaRjMTzkBFXceEfpL5hLRD6y+fd8kXRqazon7pQJYtqc/uU/T6z8dV3w8dMk9L
 u577Sz4xJaLpsHKGXktJJluopiUfX7DZAN41+2AvA+381FNI7KBqbU++3cGOnh58rCfiOem4p
 rPwXFPDjxuhRpfVUFt/dWUjfx7Xe4KGXYH8TA8c6HFckaal0uXfX+Let7872KVAyugzccDPcw
 BS/pwCCxGBTsJUVGUoxS55Pp1znnfuNaI6OLCxjThm3sPnt/dgWDRiaLSmKmYBK/66Sc91ecm
 iYdCy+iz+yCETge8pBVxUWrwwC3DJuCegXJSS2Q6tHFLadvSZj9WSxDeOu2vR2Na7yPXO72hI
 QpJL3EsCKUTKtU/FyqNjV5SUtgMw+Imt5JxEDmvRjB3vq4QfiTLnFUjOqFwaa3I+7pm7/p0Sn
 Rvro3OibNuNCeeNH8n65x7Ag+QRfPDGpGbSX/C1+U9r7gDL/IrLNTF+tbj8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_144405_130323_A01358CE 
X-CRM114-Status: GOOD (  30.26  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Nicolas Saenz Julienne <nsaenzjulienne@suse.de> hat am 21. Mai 2019 um 17:47 geschrieben:
> 
> 
> Hi Stefan, thanks for your comments!
> 
> On Tue, 2019-05-21 at 14:40 +0200, Stefan Wahren wrote:
> > Hi Nicolas,
> > 
> > On 20.05.19 14:11, Stefan Wahren wrote:
> > > Hi Nicolas,
> > > 
> > > the following comments applies only in case Eric is fine with the whole
> > > approach.
> > > 
> > > On 20.05.19 12:47, Nicolas Saenz Julienne wrote:
> > > > Raspberry Pi's firmware, which runs in a dedicated processor, keeps
> > > maybe we should clarify that the firmware is running in the VPU
> > > > track of the board's temperature and voltage. It's resposible for
> > > > scaling the CPU frequency whenever it deems the device reached an unsafe
> > > > state. On top of that the firmware provides an interface which allows
> > > > Linux to to query the clock's state or change it's frequency.
> > > I think this requires a separate update of the devicetree binding.
> > > > Being the sole user of the bcm2835 clock driver, this integrates the
> > > > firmware interface into the clock driver and adds a first user: the CPU
> > > > pll, also known as 'pllb'.
> > > Please verify that the kernel still works (and this clock driver probe)
> > > under the following conditions:
> > > 
> > > - CONFIG_RASPBERRYPI_FIRMWARE=n
> > > - CONFIG_RASPBERRYPI_FIRMWARE=m
> > > - older DTBs without patch #1
> > i thought about this and the case this driver would return
> > -EPROBE_DEFER. The clock driver is too essential for doing such a thing.
> > So i think the best solution would be to move these changes into a
> > separate driver which should be register by the clock driver (similiar
> > to vchiq). This also avoid the need of a new device tree binding.
> 
> I understand your concerns.
> 
> Wouldn't you prefer registering the device trough the device tree? I'd go with
> the same approach as the firmware touchscreen driver, which is registered after
> the firmware's probe trough dt's 'simple-bus'. That said, it's not a strongly
> held opinion, I'm happy with whatever solution as long as it works.

A devicetree binding always introduce some kind of inflexibility. In case someone finds a better solution later things can get really messy. A recent example is the clock handling for i2c-bcm2835.

> 
> I get from your comments that you'd like the register based version of 'pllb'
> and 'pllb_arm' to be loaded if for some reason the firmware isn't available. Is
> that right? 

This wasn't my intention. I would prefer a simple approch here (no handover). 

> The main problem I see with this is the duplication of 'pllb' and
> 'pllb_arm'. Both drivers will create the same clock device through different
> interfaces. Any suggestions on how to deal with that? If not I can simply
> remove 'pllb' and 'pllb_arm' from clk-bcm2835.c.

Yes. So even if this driver is disabled, there shouldn't be a regression. Or did i miss something?

> 
> Regards,
> Nicolas
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
