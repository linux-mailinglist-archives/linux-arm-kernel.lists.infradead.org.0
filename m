Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218931AE0EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJNmlKNDUb6D4VDPvj9bv2dNOQafpiu9VAshqaplE08=; b=JgPYhDqBx10suK
	kQxFwwhlmgzCZp4v/lgbBBpq+6A059EjL5knU882f+aqHaLqDJWovi/ktNIU3Kb8m1m9aQtULVWRo
	2RZa3s7ka0xr0UloEbTk9Vl+MI/dlJBLWocOLhhErQ3V7PQQjsul4FYOYWIPhEvdbe74zLHbp8Jtb
	lystznDCNqt8xdssfOz6XL9xGAXPLEVT1j+2kZJ7RzJt0G8lmEwQbTS9EU9MBebelMASfp9DFxUfx
	DuJS29pj71ERr+uKSfI+ToU6uzR3jHvthviY5RvkoRE6hIOAkK+kHDVMBEm7NRCyIDWO3zeNy11VW
	ow0JcIDv6YkQwNeH/EpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSoZ-0004Ev-SK; Fri, 17 Apr 2020 15:21:59 +0000
Received: from smtprelay0061.hostedemail.com ([216.40.44.61]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSoR-0004DV-1l
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:21:52 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 03417100E7B42;
 Fri, 17 Apr 2020 15:21:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2731:2828:3138:3139:3140:3141:3142:3352:3622:3870:3876:4250:4321:5007:6119:7809:10004:10400:10848:11232:11657:11658:11914:12043:12048:12297:12555:12740:12760:12895:13019:13069:13255:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30064:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:3, LUA_SUMMARY:none
X-HE-Tag: rat66_8345024049b55
X-Filterd-Recvd-Size: 2028
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Fri, 17 Apr 2020 15:21:41 +0000 (UTC)
Message-ID: <ee72cdce1c487f7d0fd089f59fb92422ef2d9396.camel@perches.com>
Subject: Re: [PATCH v3 14/14] MAINTAINERS: Add Kishon Vijay Abraham I for TI
 J721E SoC PCIe
From: Joe Perches <joe@perches.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Tom Joseph
 <tjoseph@cadence.com>,  Bjorn Helgaas <bhelgaas@google.com>, Rob Herring
 <robh+dt@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew
 Murray <amurray@thegoodpenguin.co.uk>
Date: Fri, 17 Apr 2020 08:19:29 -0700
In-Reply-To: <20200417125753.13021-15-kishon@ti.com>
References: <20200417125753.13021-1-kishon@ti.com>
 <20200417125753.13021-15-kishon@ti.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_082151_153879_F28DC199 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-04-17 at 18:27 +0530, Kishon Vijay Abraham I wrote:
> Add Kishon Vijay Abraham I as MAINTAINER for TI J721E SoC PCIe.
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -12968,13 +12968,15 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/pci/designware-pcie.txt
>  F:	drivers/pci/controller/dwc/*designware*
>  
> -PCI DRIVER FOR TI DRA7XX
> +PCI DRIVER FOR TI DRA7XX/J721E
>  M:	Kishon Vijay Abraham I <kishon@ti.com>
>  L:	linux-omap@vger.kernel.org
>  L:	linux-pci@vger.kernel.org
> +L:	linux-arm-kernel@lists.infradead.org
>  S:	Supported
>  F:	Documentation/devicetree/bindings/pci/ti-pci.txt
>  F:	drivers/pci/controller/dwc/pci-dra7xx.c
> +F:	drivers/pci/controller/cadence/pci-j721e.c

Please keep file patterns in alphabetic order by
moving this new cadence line up one line above dwc.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
