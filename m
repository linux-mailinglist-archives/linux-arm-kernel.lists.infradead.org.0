Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE721C77AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOYg5dw84vKp/fgARbn6Fg84uBNsD7k/4HY39odppfg=; b=IBH50+q8gOxVFK
	HcDVttQzLRKAiB4VPz4Hrl/ZXjys/xyYCf5B8k6O+T1V4u2Og3QG2zFS04HxkL3a41TeoaZCCXK7f
	ygltpeaC5a4uHxvtHYuE8oGyCOdTWiYZs41p+oBxzsPgkBQ3dJJY0sOLb54mr9clQusIA253vC2iX
	ynZVJv0fDGyL324hfQAqYVgWXZBnvwoL5sNB93ZiB8LxxtQ7cXmNyMKCkqz7uxd4n3kHJhXxPHKLx
	tBWwkfKSezn588hXusFSA02Ye9gIvXr+oxRcRCZUWHMvOFNEREfWAQstpArfs++7Kg89c/g2TM0Ix
	0wO3P06m/w0fyepZDKfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNiT-0004s6-8I; Wed, 06 May 2020 17:20:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNi8-0004rb-0n; Wed, 06 May 2020 17:19:57 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 303CA20736;
 Wed,  6 May 2020 17:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588785595;
 bh=Vx2laojPRA9af0b+TlZJnd1rj8BT6IbkCPf9uW8twE8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iuGK0qrhphha7crkNxqfd/exR5+vrUBVOQvCaqmSpI6mMtTv2Bb9e5KAxHVaNhOJf
 cqiBsvormrGZm4pmx0ZvNJS1V19n58ngNSsoNqdXvSsTy/98rlzZ+Y1iImcjRJgUcu
 qekIZfCuEXFEPE/QxUXdK/yglIY8ZHVMjybnLH2o=
Date: Wed, 6 May 2020 10:19:53 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
Message-ID: <20200506101953.208e5366@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAMRc=MfmuKd64YaqrkhGFThDZd0_tRecR5H0QLY0cDJWSM-VgQ@mail.gmail.com>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <20200505110447.2404985c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=MfmuKd64YaqrkhGFThDZd0_tRecR5H0QLY0cDJWSM-VgQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_101956_098110_33BF25E0 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 09:09:52 +0200 Bartosz Golaszewski wrote:
> > > +}  
> >
> > Why do you clean the TX ring from a work rather than from the NAPI
> > context?
> 
> So this was unclear to me, that's why I went with a workqueue. The
> budget argument in napi poll is for RX. Should I put some cap on the
> number of TX descriptors processed in napi context?

The prevailing wisdom is to not count the TX cleanup as work at all.
I think the best practice is to first clean up all the TX you can, 
and then do at must @budget of RX.

Perhaps one day we will come up with a good way of capping TX, but
today not counting it towards budget is the safe choice.

> > > +static int mtk_mac_receive_packet(struct mtk_mac_priv *priv)
> > > +{
> > > +     struct net_device *ndev = mtk_mac_get_netdev(priv);
> > > +     struct mtk_mac_ring *ring = &priv->rx_ring;
> > > +     struct device *dev = mtk_mac_get_dev(priv);
> > > +     struct mtk_mac_ring_desc_data desc_data;
> > > +     struct sk_buff *new_skb;
> > > +     int ret;
> > > +
> > > +     mtk_mac_lock(priv);
> > > +     ret = mtk_mac_ring_pop_tail(ring, &desc_data);
> > > +     mtk_mac_unlock(priv);
> > > +     if (ret)
> > > +             return -1;
> > > +
> > > +     mtk_mac_dma_unmap_rx(priv, &desc_data);
> > > +
> > > +     if ((desc_data.flags & MTK_MAC_DESC_BIT_RX_CRCE) ||
> > > +         (desc_data.flags & MTK_MAC_DESC_BIT_RX_OSIZE)) {
> > > +             /* Error packet -> drop and reuse skb. */
> > > +             new_skb = desc_data.skb;
> > > +             goto map_skb;
> > > +     }
> > > +
> > > +     new_skb = mtk_mac_alloc_skb(ndev);
> > > +     if (!new_skb) {
> > > +             netdev_err(ndev, "out of memory for skb\n");  
> >
> > No need for printing, kernel will complain loudly about oom.
> >  
> > > +             ndev->stats.rx_dropped++;
> > > +             new_skb = desc_data.skb;
> > > +             goto map_skb;
> > > +     }
> > > +
> > > +     skb_put(desc_data.skb, desc_data.len);
> > > +     desc_data.skb->ip_summed = CHECKSUM_NONE;
> > > +     desc_data.skb->protocol = eth_type_trans(desc_data.skb, ndev);
> > > +     desc_data.skb->dev = ndev;
> > > +     netif_receive_skb(desc_data.skb);
> > > +
> > > +map_skb:
> > > +     desc_data.dma_addr = mtk_mac_dma_map_rx(priv, new_skb);
> > > +     if (dma_mapping_error(dev, desc_data.dma_addr)) {
> > > +             dev_kfree_skb(new_skb);
> > > +             netdev_err(ndev, "DMA mapping error of RX descriptor\n");
> > > +             return -ENOMEM;  
> >
> > In this case nothing will ever replenish the RX ring right? If we hit
> > this condition 128 times the ring will be empty?
> 
> Indeed. What should I do if this fails though?

I think if you move things around it should work:

	skb = pop_tail();
	if (!skb)
		return;

	new_skb = alloc();
	if (!new_skb)
		goto reuse;

	dma_map(new_skb);
	if (error)
		goto reuse;
	
	dma_unmap(skb);

	if (do_packet_processing()) 
		free(skb);
	else
		receive(skb);

	put_on_ring(new_skb);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
