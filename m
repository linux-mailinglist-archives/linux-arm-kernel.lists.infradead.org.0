Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21741C7A38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQpfWa9iA7fDAHR61M4VRy8ADnC+KIbOfnfrMpMTiHk=; b=gZiL7HLkNMCz7L
	Y15ge6n150VpHNsW7rKNn5boSxdTKP7jSovEXH7Q1qs5LNE+PPe1FRgPCpJPrEs7RGTGMUbWKZYtf
	npxl/3kPUjYbSIYNhHk+NqbP6efw9jqsxA0q7EJ0uI7wffUKZnbwXga+rKLvtU6sm2wbjub+9jmRP
	5fx4PCDfpzypeQeWP8eUDUciZigkbUgLXlUUx/UhKormJBvVSCh0J7rPg8psRjnvWoAjQcLt4dfEQ
	qHeAnxcoa4xp3BMZ33QpzhzL17rEFJN4yuOVoGRa8o/tQfxqSsG51dfyxaIlEXtKMIJQVIdp6TZqR
	B13Y1OW3jQdDDz8l8aaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPf2-0002Ls-K4; Wed, 06 May 2020 19:24:52 +0000
Received: from smtprelay0212.hostedemail.com ([216.40.44.212]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPes-0002L8-Ua; Wed, 06 May 2020 19:24:44 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id D560118221882;
 Wed,  6 May 2020 19:24:35 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2194:2199:2393:2553:2559:2562:2828:2901:2902:3138:3139:3140:3141:3142:3353:3622:3865:3870:4250:4321:4605:5007:6119:6742:7576:7875:8957:9149:10004:10400:10848:11026:11232:11233:11473:11657:11658:11914:12043:12296:12297:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:21740:21939:21990:30012:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:3, LUA_SUMMARY:none
X-HE-Tag: group10_aa59a2ed6d34
X-Filterd-Recvd-Size: 3211
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Wed,  6 May 2020 19:24:33 +0000 (UTC)
Message-ID: <fd17302d94f6e2242d041268989e94a04df159de.camel@perches.com>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
From: Joe Perches <joe@perches.com>
To: Leon Romanovsky <leon@leon.nu>, Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 06 May 2020 12:24:31 -0700
In-Reply-To: <CALq1K=Lu0hv9UCgxgrwCVoOe9L7A4sgBEM=RW2d9JkizHmdBPQ@mail.gmail.com>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <CALq1K=Lu0hv9UCgxgrwCVoOe9L7A4sgBEM=RW2d9JkizHmdBPQ@mail.gmail.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_122443_107384_ED703035 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.212 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.212 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-06 at 22:16 +0300, Leon Romanovsky wrote:
> On Tue, May 5, 2020 at 5:03 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> > From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > 
> > This adds the driver for the MediaTek Ethernet MAC used on the MT8* SoC
> > family. For now we only support full-duplex.
[]
> > diff --git a/drivers/net/ethernet/mediatek/mtk_eth_mac.c b/drivers/net/ethernet/mediatek/mtk_eth_mac.c
[]
> > +struct mtk_mac_priv {
> > +       struct regmap *regs;
> > +       struct regmap *pericfg;
> > +
> > +       struct clk_bulk_data clks[MTK_MAC_NCLKS];
> > +
> > +       void *ring_base;
> > +       struct mtk_mac_ring_desc *descs_base;
> > +       dma_addr_t dma_addr;
> > +       struct mtk_mac_ring tx_ring;
> > +       struct mtk_mac_ring rx_ring;
> > +       struct work_struct tx_work;
> > +
> > +       struct mii_bus *mii;
> > +       struct napi_struct napi;
> > +
> > +       struct device_node *phy_node;
> > +       phy_interface_t phy_intf;
> > +       struct phy_device *phydev;
> > +       unsigned int link;
> > +       int speed;
> > +       int duplex;
> > +
> > +       /* Protects against concurrent descriptor access. */
> > +       spinlock_t lock;
> > +       unsigned long lock_flags;
> > +
> > +       struct rtnl_link_stats64 stats;
> > +};
> > +
> > +static struct net_device *mtk_mac_get_netdev(struct mtk_mac_priv *priv)
> > +{
> > +       char *ptr = (char *)priv;
> > +
> > +       return (struct net_device *)(ptr - ALIGN(sizeof(struct net_device),
> > +                                                NETDEV_ALIGN));
> > +}

This code looks ugly/fragile.
Why not store the struct net_device * in struct mtk_mac_priv ?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
