Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3218D115719
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jNy5lwUcRY4lXLae6HIalqTzgwgNbHv5Z9mSdup9CY=; b=c/i4HMxQXqy1GL
	P1RVoEi0mJf6OB52M+2heLDWBI+QpXkGlu5FK9BZ+LkStue7ivbWAIxEak6a0b1vDcj4uwTxi/4fW
	iJ2HScDUkgmVtQmXJn8ScnjxpcpumxtLH5eA6G7Brc/b0F4SW2oX25YGjViVwTM28kCQh6brsGYbw
	ubtYzebH3Blhen4h3+Ww/Hm+eaBgy7XXHDCubzgzSnfijM15R71p/0lbYzc7v+zUlFYOQOXvC8YRT
	DV4vNsEzpBqOq2tXCgZT7+9VeB6b9MjRPG+PiD7x1z3fkKFxCN4ze2NzrSjHIPL+whYW3d8XugMiE
	4j5uPJCwTUp1OPYtzzoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIE2-0002zi-5b; Fri, 06 Dec 2019 18:21:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIDs-0002xk-87
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 18:21:02 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 277C08047;
 Fri,  6 Dec 2019 18:21:22 +0000 (UTC)
Date: Fri, 6 Dec 2019 10:20:40 -0800
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
Message-ID: <20191206182040.GH35479@atomide.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
 <20191202213929.GB35479@atomide.com>
 <EE749881-C3DB-4BBE-85FE-E5AF3D34884F@goldelico.com>
 <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
 <20191203154447.GC35479@atomide.com>
 <5F430C0D-7F25-4680-87B9-2D65A08A9F83@goldelico.com>
 <FB42ED12-5DDB-4A9E-941A-ACBE2C10C36A@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <FB42ED12-5DDB-4A9E-941A-ACBE2C10C36A@goldelico.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_102100_330978_8E91BA28 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [191203 16:55]:
> > What we could do is augment the printk (or dev_err) to tell
> > in these warnings what it is looking for...
> > 
> > 	opp = dev_pm_opp_find_freq_ceil(dev, &freq);
> > 	if (IS_ERR(opp)) {
> > 		pr_err("%s: unable to find boot up OPP for vdd_%s freq %ulHz\n",
> > 		__func__, vdd_name, freq);
> > 		goto exit;
> > 	}
> 
> Easier and always prints info:
> 
> 	freq = clk_get_rate(clk);
> 	clk_put(clk);
> 
> 	pr_info("%s: vdd=%s clk=%s %luHz oh=%s\n", __func__, vdd_name, clk_name, freq, oh_name);
> 
> 	opp = dev_pm_opp_find_freq_ceil(dev, &freq);
> 
> I get this:
> 
> [    2.908142] omap2_set_init_voltage: vdd=mpu_iva clk=dpll1_ck 1000000000Hz oh=mpu
> [    2.930816] omap2_set_init_voltage: vdd=core clk=l3_ick 200000000Hz oh=l3_main
> [    2.946228] omap2_set_init_voltage: unable to find boot up OPP for vdd_core
> [    2.953460] omap2_set_init_voltage: unable to set vdd_core

OK yeah that's more descriptive.

> Which means that cpufreq already has increased dpll1_ck to 1 GHz
> (I have removed the turbo-mode tags so that it already boots at
> full speed) and l3_ick runs at initial 200 MHz.

OK. I wonder where this initial code should live though..

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
