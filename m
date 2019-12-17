Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073D6122F46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg+/5FSoYo/4sIA+3aYnsk9yVdzp8RHj1VcOXuh4Q24=; b=TGoqSTh0yt19Md
	8eX6nvvBXArQf6qr+LUzv+5HCNdZTMvS3hQYDlhPHV1E3aEl73S8wz+nf5AXVZSHF6pOiot9+NlZR
	98iFB9gVbcp091tPrGjSSeg/cdhz8jfrlzWOetDSAl1Jt6ldazJhiPKj7ujvOk8bA+/pf4R1ial6V
	YeQFNZuuaghZFGLt0IGGn2LDbyHZn8KIEvvmtJI7KIJFPvUdz+1x5/wDrk6YzAWocMuEYyQMxCMeb
	JP6zq8oQxZKV7j8M2C1kqo5Yz/rA14oSjudankhdlok8H7Fvt0ZoCR1H3SFetbk/l6Bhx53TJ12/i
	YDNXwVFj7ccqfTDj1X6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihEBq-0000Ip-Du; Tue, 17 Dec 2019 14:51:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihEBf-0000IB-Ck
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 14:51:00 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id EE9E58116;
 Tue, 17 Dec 2019 14:51:35 +0000 (UTC)
Date: Tue, 17 Dec 2019 06:50:53 -0800
From: Tony Lindgren <tony@atomide.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 00/14] Remove legacy sdma code for dt booting omaps
Message-ID: <20191217145053.GV35479@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
 <a62d8087-afad-fd04-bfe2-79ce6ea08ffe@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a62d8087-afad-fd04-bfe2-79ce6ea08ffe@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_065059_470134_EBCFE7A6 
X-CRM114-Status: UNSURE (   9.21  )
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 dmaengine@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Peter Ujfalusi <peter.ujfalusi@ti.com> [191217 09:54]:
> Thanks for doing this!
> First things first:
> Acked-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Thanks for testing!

> But I was only able to test it with CPU_IDLE=n otherwise (even w/o this series)
> I got a flood of (PandaBoard-ES):
> 
> [  315.995819] ------------[ cut here ]------------
> [  316.000457] WARNING: CPU: 0 PID: 0 at drivers/bus/omap_l3_noc.c:141 l3_interrupt_handler+0x264/0x384
> [  316.009613] 44000000.ocp:L3 Standard Error: MASTER USBHOSTHS TARGET ABE (Read Link): At Address: 0x00000000 : Data Access in User mode during Functional access

Can you please email me your .config and I'll take a look?

I'm not seeing that with pandaboard es here at least with
omap2plus_defconfig.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
