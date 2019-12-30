Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E68912D2C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kG2GQgOWiUH0lwrz1HBKuUXCeceIOsxYVSsJXbUA+U4=; b=n8B0ZaI2+aiiUO
	v8vh3vahsRa7JBxmbIl1Fsx7xY5gHetQk+gNf7qI3K0YGtokqrqsngpL1eAn5WK/uck185f4+tVdl
	uGm62wsHPaC9j86jc/peHd8vrU0HojiYNni+diUmGWuWc0N8SkEeJoBZZwtfenuAPk1JPsHCwkJi6
	iQkGkv0Ba9uF2pjdmKXUam+ntmnkbVuPx+mINiAjZ5sXyofp6gVPB4J4Ff/n48KA47g6o+GyP+Tqs
	RqxehqX02ZIV+pz+3/50gl5zc+2v8T3KATPHG9BAsvQdZO18nqmVRJl2T2NcogCqaMYVRS0WPbh7l
	X6+Ewj5lqja+9ubbriOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilywx-0007YZ-B9; Mon, 30 Dec 2019 17:35:27 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilywi-00076S-IV
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 17:35:15 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 2EFF68027;
 Mon, 30 Dec 2019 17:35:51 +0000 (UTC)
Date: Mon, 30 Dec 2019 09:35:07 -0800
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: Droid 4 on 5.5-rc3
Message-ID: <20191230173507.GM35479@atomide.com>
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228193622.GA13047@duo.ucw.cz>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_093512_904709_CB6C6ECB 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: mpartap@gmx.net, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@ucw.cz> [191228 19:37]:
> Hi!
> 
> > 5.4-based kernel works ok on my droid 4.
> > 
> > 5.5-rc3 based kernel has problems; it reboots when I try to kexec it.
> > 
> > Vanilla 5.5-rc3 reboots, too.
> > 
> > If you have any ideas, let me know.
> 
> I managed to get partial serial dump. This should be 5.5-rc3: And then
> a bit better serial dump (below). But it is silent for few seconds,
> and then it restarts...

If spi or regulators have problems, nothing will really work..

> 885955] ------------[ cut here ]------------                                    
> [    1.890624] WARNING: CPU: 0 PID: 1 at /data/fast/l/k/drivers/regulator/core.c
> [    1.900421] Modules linked in:                                               
> [    1.903533] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc3-00624-g46cf00
> [    1.911651] Hardware name: Generic OMAP4 (Flattened Device Tree)             
> [    1.917724] [<c010f1e4>] (unwind_backtrace) from [<c010b4b0>] (show_stack+0x)
> [    1.925537] [<c010b4b0>] (show_stack) from [<c08ecd18>] (dump_stack+0xb4/0xd)
> [    1.932800] [<c08ecd18>] (dump_stack) from [<c012db50>] (__warn+0xc8/0xf0)   
> [    1.939727] [<c012db50>] (__warn) from [<c012dc04>] (warn_slowpath_fmt+0x8c/)
> [    1.947235] [<c012dc04>] (warn_slowpath_fmt) from [<c0423b4c>] (_regulator_p)
> [    1.955474] [<c0423b4c>] (_regulator_put) from [<c0423b74>] (regulator_put+0)
> [    1.963348] [<c0423b74>] (regulator_put) from [<c04ddcbc>] (release_nodes+0x)
> [    1.971313] [<c04ddcbc>] (release_nodes) from [<c04d9e0c>] (really_probe+0x1)
> [    1.979187] [<c04d9e0c>] (really_probe) from [<c04da204>] (driver_probe_devi)
> [    1.987518] [<c04da204>] (driver_probe_device) from [<c04d8490>] (bus_for_ea)
> [    1.996093] [<c04d8490>] (bus_for_each_drv) from [<c04da11c>] (__device_atta)
> [    2.004394] [<c04da11c>] (__device_attach) from [<c04d91b4>] (bus_probe_devi)
> [    2.012634] [<c04d91b4>] (bus_probe_device) from [<c04d7370>] (device_add+0x)
> [    2.020599] [<c04d7370>] (device_add) from [<c04dbb04>] (platform_device_add)
> [    2.028747] [<c04dbb04>] (platform_device_add) from [<c0503a34>] (mfd_add_de)
> [    2.037414] [<c0503a34>] (mfd_add_devices) from [<c0503b4c>] (devm_mfd_add_d)
> [    2.045989] [<c0503b4c>] (devm_mfd_add_devices) from [<c0503f40>] (cpcap_pro)
> [    2.054382] [<c0503f40>] (cpcap_probe) from [<c054b4ac>] (spi_drv_probe+0x80)
> [    2.061981] [<c054b4ac>] (spi_drv_probe) from [<c04d9edc>] (really_probe+0x1)
> [    2.069854] [<c04d9edc>] (really_probe) from [<c04da204>] (driver_probe_devi)
> [    2.078186] [<c04da204>] (driver_probe_device) from [<c04d8490>] (bus_for_ea)
> [    2.086761] [<c04d8490>] (bus_for_each_drv) from [<c04da11c>] (__device_atta)
> [    2.095062] [<c04da11c>] (__device_attach) from [<c04d91b4>] (bus_probe_devi)
> [    2.103302] [<c04d91b4>] (bus_probe_device) from [<c04d7370>] (device_add+0x)
> [    2.111267] [<c04d7370>] (device_add) from [<c054c044>] (spi_add_device+0x8c)
> [    2.118957] [<c054c044>] (spi_add_device) from [<c054caa8>] (spi_register_co)
> [    2.127868] [<c054caa8>] (spi_register_controller) from [<c054ce10>] (devm_s)
> [    2.137847] [<c054ce10>] (devm_spi_register_controller) from [<c0550ab8>] (o)
> [    2.147460] [<c0550ab8>] (omap2_mcspi_probe) from [<c04db92c>] (platform_drv)

I'm not seeing this with v5.5-rc4 though, maybe it already got fixed?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
