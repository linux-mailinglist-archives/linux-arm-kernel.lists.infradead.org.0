Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485311AFBF8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 18:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAGM4ZMqGOvznPt4qTUNhnZ2CmxHqmq4dVzkh5pLbVI=; b=L7/Xyo9V6lqsi3
	fmm+7k6kgAqHXk/Jr3+PKN6Acbo6lN37w8nMPVqNiMrqb7aVPZdzTju+llSSznKoawEwUt0kwX5WZ
	917JBuMs3l6UjqXZpnW+hni4AwhCZ/2ThzJ5XqURjTwLIH5DuOsxJjcw/p1S6kRBUewl7nC6+HYRC
	wgqGkHUKn2crz/csG72xNnvDxdaZz49rtxhfCoxol3ScdodFPwtIneIkd7HzSgiWhP2rjOcDFBb9Y
	IFNf0chvm8Y4in7PLxKLfYbFeLaAfkPT1dBzeHrgtRVCxCqLuATQTOMnECOC2JPyyVkh5RGC84yPp
	OpPTNlyxnKH89Egw2ZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQCxw-0008Oe-JB; Sun, 19 Apr 2020 16:38:44 +0000
Received: from smtprelay0133.hostedemail.com ([216.40.44.133]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQCxq-0008NO-EI; Sun, 19 Apr 2020 16:38:39 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id E2A595836;
 Sun, 19 Apr 2020 16:38:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2198:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:3874:4250:4321:5007:6737:10004:10400:10848:11232:11658:11914:12043:12048:12297:12555:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: bone84_2ca91b5f55455
X-Filterd-Recvd-Size: 2304
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Sun, 19 Apr 2020 16:38:26 +0000 (UTC)
Message-ID: <975f3a73bb272b8276687af609cd7e592d6ba9ac.camel@perches.com>
Subject: Re: [PATCH v8 8/8] MAINTAINERS: Add file patterns for rcar PCI
 device tree bindings
From: Joe Perches <joe@perches.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring
 <robh+dt@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Andrew
 Murray <amurray@thegoodpenguin.co.uk>,  Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>,  Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>
Date: Sun, 19 Apr 2020 09:36:11 -0700
In-Reply-To: <1587302823-4435-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_093838_539332_221A5CC3 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2020-04-19 at 14:27 +0100, Lad Prabhakar wrote:
> Add file pattern entry for rcar PCI devicetree binding, so that when
> people run ./scripts/get_maintainer.pl the rcar PCI maintainers could also
> be listed.
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -12933,6 +12933,7 @@ L:	linux-pci@vger.kernel.org
>  L:	linux-renesas-soc@vger.kernel.org
>  S:	Maintained
>  F:	drivers/pci/controller/*rcar*
> +F:	Documentation/devicetree/bindings/pci/*rcar*

MAINTAINERS was recently sorted for consistency.

Please move this new line above drivers/ to keep alphabetic ordering.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
