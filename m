Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A620DE0A9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbvEcnw1GxtFtyfR7h9XwiWzfpcErIiynCTXtYFUMHc=; b=lLkN5mDPjW4IBF
	3LcUfw0eBVBocC7Xx8tzjXl2CWOstFkdP7Mj0Wtukqp4ShDqiIOwkbRxoBOt6jcc+XqGt1MwYwi4T
	NLkYkYxw9zcsEWqXsv/2eyc2nfxA+sREfsNpIn1W/8H/rRep6IOXnsX1eVW+4TEIcACjBMlbM7c02
	d6lPOrmC8XDbTbBhShDXxSqNTYMF9RGjTPGdhRzlsQxWiPf5m1wN6aKrv7ULU6CgdNRgA4HNCkCsH
	0/P9zRTksbcwO+fTGRP3XkFFaED2Vx7KB3b3bXVmyWO//3WCTGcbT/4HjhE5EvuAm/sJ0Gwn1/zcx
	ZOkVYEREr6oEl1KeHPMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxz8-0003qZ-AC; Tue, 22 Oct 2019 17:30:18 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxyt-0003FG-Jf
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:30:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id a22so18082783ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 10:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=HmmPBl6eQCJQQpK05KW2nNJH7nyGoslANOpWRy61vOw=;
 b=zYh25urd8gs/0FeIw9pUR75l7cU4AlLmzOJvB6ZLBSpfGISKg9PuCs9ZV2wD0jAI7V
 cKcsmwjQWpX/u/wIY3StphOwuuFtS/TuWDnRTA42d6kACzgwf0gyqwpERegSyMe2dIMn
 LIUDxpLB9H8xTqkLR+RhcjAyMsrw+rc/EaSQldj/orTbyI734aVIWjj7GZd6MtmU5Znh
 i2b9LYEIiZtRB73o1wmzfB2xBuzW+gKyJfEqcev98AZ5SVm2QXuz2VhM07AqGahfr4Iu
 VaDKlG7ehiyVq5urU0fsWwcwl2WX0avYGr7HBnb3BjEoJGegVQ5LdaqXKmskejbCYh3e
 ItfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=HmmPBl6eQCJQQpK05KW2nNJH7nyGoslANOpWRy61vOw=;
 b=JD7BTiI1bzjGEwDbmkK9crFvqj9XutrSBERcM2qo1VVNJjN53BVRvD9uKQ+8vsUvDG
 lkQfygYLtbnsL86dQ4FB5WbWWTRtYyp7F2w0zCYVU8d+9muPg383BaKTEkOugFUFKVqW
 GcxA1+1zkn41IUFAASle/4e+RoWi3eDNLWalO9pEq8DDH6/vHFDNOTARdb9jjPy25RqZ
 1GsQsNC7Rzgb2WchVbmJdepn9OR5dOUmgbZAcknCUD5LBlCfKkcAW5Sey1mFuT5JNi66
 HzLzCgVfKNQF1o1o1tbHM83Vz+JSYW5h5yPy3+xpAZg99WSS2aMuHJYu2nHscu9W5DFe
 lYgw==
X-Gm-Message-State: APjAAAWSkmdXRvqrZOMCX8a/0qub28OXula5kEiRDV/x6s3AawK7UeXp
 OLDMp2oIO4U2dMFe45Ip2G2pWw==
X-Google-Smtp-Source: APXvYqxpzJg00yRe3OjBd6BnC1zysssaNWZcfUFrdIXzW/KSn/Vdod1X21VKHzDtvBdgHy9erg6Qcw==
X-Received: by 2002:a2e:416:: with SMTP id 22mr3073575lje.55.1571765400271;
 Tue, 22 Oct 2019 10:30:00 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id h21sm1288560ljl.20.2019.10.22.10.29.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:30:00 -0700 (PDT)
Date: Tue, 22 Oct 2019 10:29:52 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2 net-next] net: axienet: In kconfig add ARM64 as
 supported platform
Message-ID: <20191022102952.09211971@cakuba.netronome.com>
In-Reply-To: <cbdd6608-804a-086c-1892-1903ec4a7d80@xilinx.com>
References: <1571653110-20505-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <cbdd6608-804a-086c-1892-1903ec4a7d80@xilinx.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_103003_670148_4A6C4B14 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 netdev@vger.kernel.org, Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 davem@davemloft.net, anirudha.sarangi@xilinx.com, mchehab+samsung@kernel.org,
 john.linn@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 16:15:45 +0200, Michal Simek wrote:
> On 21. 10. 19 12:18, Radhey Shyam Pandey wrote:
> > xilinx axi_emac driver is supported on ZynqMP UltraScale platform.
> > So enable ARCH64 in kconfig. It also removes redundant ARCH_ZYNQ
> > dependency. Basic sanity testing is done on zu+ mpsoc zcu102
> > evaluation board.
> > 
> > Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> > ---
> > Changes for v2:
> > Remove redundant ARCH_ZYNQ dependency.
> > Modified commit description.
> > ---
> >  drivers/net/ethernet/xilinx/Kconfig | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/xilinx/Kconfig b/drivers/net/ethernet/xilinx/Kconfig
> > index 8d994ce..da11876 100644
> > --- a/drivers/net/ethernet/xilinx/Kconfig
> > +++ b/drivers/net/ethernet/xilinx/Kconfig
> > @@ -6,7 +6,7 @@
> >  config NET_VENDOR_XILINX
> >  	bool "Xilinx devices"
> >  	default y
> > -	depends on PPC || PPC32 || MICROBLAZE || ARCH_ZYNQ || MIPS || X86 || ARM || COMPILE_TEST
> > +	depends on PPC || PPC32 || MICROBLAZE || MIPS || X86 || ARM || ARM64 || COMPILE_TEST
> >  	---help---
> >  	  If you have a network (Ethernet) card belonging to this class, say Y.
> >  
> > @@ -26,11 +26,11 @@ config XILINX_EMACLITE
> >  
> >  config XILINX_AXI_EMAC
> >  	tristate "Xilinx 10/100/1000 AXI Ethernet support"
> > -	depends on MICROBLAZE || X86 || ARM || COMPILE_TEST
> > +	depends on MICROBLAZE || X86 || ARM || ARM64 || COMPILE_TEST
> >  	select PHYLINK
> >  	---help---
> >  	  This driver supports the 10/100/1000 Ethernet from Xilinx for the
> > -	  AXI bus interface used in Xilinx Virtex FPGAs.
> > +	  AXI bus interface used in Xilinx Virtex FPGAs and Soc's.
> >  
> >  config XILINX_LL_TEMAC
> >  	tristate "Xilinx LL TEMAC (LocalLink Tri-mode Ethernet MAC) driver"
> >   
> 
> Acked-by: Michal Simek <michal.simek@xilinx.com>
> 
> But I can image that others could prefer to remove all dependencies.

Yes, we'd much rather see this litany of architectures removed.
Is there any reason it's there in the first place?

Most drivers are tested on just a few architectures, but as long
as correct APIs are used they are assumed to work across the board.
Otherwise 75% of our drivers would be x86 only. Don't be shy.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
