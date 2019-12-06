Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2466115736
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQ/jdE62Sz2WpU7Upbal7Y+qmIkgxzxH0J+Lr2UI5Kg=; b=FFCuniznP9kyL0
	bsJQ2vBOusk6wajCSmOzwEWXRnzk5/0r3+Be7bFcUI6YGLVqFyzuJq4HMXd7/LetT4cNwkeJjNGl/
	mHJi+mYymMOdrK04j4HPSb74E4slYnOpXKRIiDCJoEQpy7qnUBHNOwffpPM/n0WoM8Sn2yWZ59Izr
	L41Z5Lp6vi+3KP1vF8h388HtBGycU4rp+x5PaA2D0LdZfNo96evDPTyL8tt/s7vQ9wgM3dhGztMGX
	YKUatnylADO6bIBj0Y1dtwi4kjk6V9mZ5W9aWbLOFQ6aAJG0wq2syL3j9yp/Yw9Ep6/u3y+Pz2u2d
	TO7edxAOrBWFfNxlZcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIRe-00074K-4A; Fri, 06 Dec 2019 18:35:14 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIRO-00073l-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 18:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1575657292;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=8xcPnshoEvqmpl8Ihb0gwyd1N4JC6oPtQIQeUEG485c=;
 b=FypCstULfGixPqXwD962BjcT2n3tgPOo6mWf8U6ybLQEfNin/ZNLphdmIBEmRCn6Ve
 kDfclcYANqJ+6nbnVp7cZQ0ujrwCEoDtDVIvy2x4I+6XqZbEHH4uhlWf35otgZvIUQbO
 tMOBTjSmibu5ISO9EURe4/FZxV0pNF9iT0NiD2iCvtfasCDQ9H9XeIgy3ZTWiPHCrBER
 pU2MBQABfGcl4GN4/RzUSEBdwEfeNs14diyv5B7c5m91uUBv92m29RGZe13KHgemX0te
 PwbtdiR7t1Knd1b9xWBAmcBJYJUgUmK8sUVWp1JmPqlt67H4JhkdHdkKLprrlJx4qQaI
 zGgA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/vgwDOprHg="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.0.2 DYNA|AUTH)
 with ESMTPSA id 6067eavB6IYjLOv
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 6 Dec 2019 19:34:45 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191206182040.GH35479@atomide.com>
Date: Fri, 6 Dec 2019 19:34:44 +0100
Message-Id: <A0DC2BBE-C5A9-4873-BBD2-C69F7697B210@goldelico.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
 <20191202213929.GB35479@atomide.com>
 <EE749881-C3DB-4BBE-85FE-E5AF3D34884F@goldelico.com>
 <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
 <20191203154447.GC35479@atomide.com>
 <5F430C0D-7F25-4680-87B9-2D65A08A9F83@goldelico.com>
 <FB42ED12-5DDB-4A9E-941A-ACBE2C10C36A@goldelico.com>
 <20191206182040.GH35479@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_103458_708673_214BFD2D 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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


> Am 06.12.2019 um 19:20 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * H. Nikolaus Schaller <hns@goldelico.com> [191203 16:55]:
>>> What we could do is augment the printk (or dev_err) to tell
>>> in these warnings what it is looking for...
>>> 
>>> 	opp = dev_pm_opp_find_freq_ceil(dev, &freq);
>>> 	if (IS_ERR(opp)) {
>>> 		pr_err("%s: unable to find boot up OPP for vdd_%s freq %ulHz\n",
>>> 		__func__, vdd_name, freq);
>>> 		goto exit;
>>> 	}
>> 
>> Easier and always prints info:
>> 
>> 	freq = clk_get_rate(clk);
>> 	clk_put(clk);
>> 
>> 	pr_info("%s: vdd=%s clk=%s %luHz oh=%s\n", __func__, vdd_name, clk_name, freq, oh_name);
>> 
>> 	opp = dev_pm_opp_find_freq_ceil(dev, &freq);
>> 
>> I get this:
>> 
>> [    2.908142] omap2_set_init_voltage: vdd=mpu_iva clk=dpll1_ck 1000000000Hz oh=mpu
>> [    2.930816] omap2_set_init_voltage: vdd=core clk=l3_ick 200000000Hz oh=l3_main
>> [    2.946228] omap2_set_init_voltage: unable to find boot up OPP for vdd_core
>> [    2.953460] omap2_set_init_voltage: unable to set vdd_core
> 
> OK yeah that's more descriptive.

So what does your board say as it is also unable to find the initial mpu_iva?
And/or does it show a different core clock?

> 
>> Which means that cpufreq already has increased dpll1_ck to 1 GHz
>> (I have removed the turbo-mode tags so that it already boots at
>> full speed) and l3_ick runs at initial 200 MHz.
> 
> OK. I wonder where this initial code should live though..

Well, we all agree that it should live in deserved retirement :)

But it has some positive effect and maybe "fixes" a bug in cpufreq-only setup.

BR,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
