Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E40C1DB733
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 16:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/4kvs537jkj5pGGCQ1DvM0KZiZ6LTPjwDRcZzu8sNg=; b=Fd2VTDWVKSRylY
	q5d6xUqsgQzJ4zDJ48sHxu3ssEdJN3ddOHQ+aVRKZPApxMh9WmhQEzwUwttEoPo0fx0OcUg989+PU
	rZLzn4l+gwfBoPDcAsTx5f09kyt0qAmNUkB27oLDylgAoGgTGvWw8YqlHiqliVRcjqlOQ7N6G3jRi
	fk6tbEIrK6DDygaiTtaM51GMbe4Hly9yAudQmF9uSKJ3T6w/YSiStdApRan02PhNZVjgncvHUK6+X
	B/ZH3YQ5l+hHEXSoaO04nOrmG8hnlSxTEL1T6nSBIdf2vhWaNjN7hWrBQS1eVLSjlgc4ijzYBg8oA
	WEtOhQnMxSBLK2+aNoNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPr1-0001cK-3a; Wed, 20 May 2020 14:37:55 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPqs-0001bP-5d; Wed, 20 May 2020 14:37:48 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mwfj0-1irrhs1GqA-00y8Mp; Wed, 20 May 2020 16:37:42 +0200
Received: by mail-qt1-f181.google.com with SMTP id m44so2670082qtm.8;
 Wed, 20 May 2020 07:37:41 -0700 (PDT)
X-Gm-Message-State: AOAM533u3Ysjl1QlUxN3LuaCbJPX6/CSAJfeWYdMp6rOLryNQdfWCH9L
 M7mGkUQqST+4gAtnQlSvSbyP2l2QthhHKXUxeWU=
X-Google-Smtp-Source: ABdhPJwK69DLGTQm1ew09Tx3ieAV4bUG76cvGX5A2V+WrnHBW769WJQTOfdTdgV3HOoosoX6NyQXG6Qlso/22NfuIt0=
X-Received: by 2002:ac8:691:: with SMTP id f17mr5450469qth.204.1589985460744; 
 Wed, 20 May 2020 07:37:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200520112523.30995-1-brgl@bgdev.pl>
 <20200520112523.30995-7-brgl@bgdev.pl>
In-Reply-To: <20200520112523.30995-7-brgl@bgdev.pl>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 20 May 2020 16:37:23 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3jhrQ3p1JsqMNMOOnfo9t=rAPWaOAwAdDuFMh7wUtZQw@mail.gmail.com>
Message-ID: <CAK8P3a3jhrQ3p1JsqMNMOOnfo9t=rAPWaOAwAdDuFMh7wUtZQw@mail.gmail.com>
Subject: Re: [PATCH v4 06/11] net: ethernet: mtk-eth-mac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-Provags-ID: V03:K1:E6TTeC8KgvwEnjDY6Tn/2JZiYAKYOduu2VZJdiC85G/5yf+5Ury
 77QEQx8kn788ZnAwwQzXxuEG9kfsVbTVwctk9mChvJLVDv+5mACG368SG0s9ckYUt6u5oNt
 9gI0uKqt+7Me+VfLqGcTgBx1TeCmbT2Qmao0k9DhIcPRThXJMSKsBVcX2g+JPbUQP7of2Sk
 2OESn7ga8xJq22VAbUEng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YJclzbeq18g=:wPtb9tSWnDNWBcVd3hqwBG
 pjPgtlo/JqvgFWmh78eR4HqNpKtRAWmTLscMqwO0Iybko555NF74gFfHUip2gTL0KqCVzF60l
 pMNWvxg1zKU8yRtXw+ALU2lJNDJS7nG5h0hfZ5/CVDMdCUZdodpBbiEHRRqOYbh7pzGo0786p
 YxcspzzL2PPn0CVlfQcZ+BZl02Ms3MP2dLaoZZggLlpHumYMVi846OerHnSdp2PpTidawQ6Lc
 KWOXAguxXmdxl6bcHWeYmm2wNUs5qtcgDbhXHCFxJh9wQJp8hsO433hqn6jmCDQ/roNs0srs7
 dMtX99P6KKpHFqLvH5i0VFhfNyJM2moDY5IpyWUedE69kabFunWaidu/aGQhtCq0foGSN+Kfv
 HDt5icBgrIXgS16xxyw/Ntk2v2omoi3k4gsWIuNQ/Xhc+Bm8ZSdN7su0CcPkL0KiW81kDUHWp
 k0Drfwll9mK9/aYbH3xLTo+5eWgTlZkXyCsZ/IzyNOQDNRHmlsQ1zq6bGWR0JG/Qrl2hDPRV5
 zcreEobA3T9z2FXzqbjYqBgUhoU64gULUHSALQ+FbwtD9HzhplNcpb/sibsIB0NBxfk2Qwzor
 lbfs13MtqIvF+7EphMoH/dvegOP2JwLr4KhZddekvZMwOE9OzuOJLZG+1XKT6JB0uIjWydXbW
 C7pU4KP8sx5XxbzZBkehtg6tYe+6KCTu+2IjVuSbR9c3kjoZCbLls0EVUZ10hYbMawsJ95tdi
 bPT0f1ggZLYZ+7yek7X2iSbJLbowbfHOm6uO9ujzlkMLlZ+tRaIEtNP69hi6Q9tkSc6gnpmBJ
 yDnfvKHznLL+EbKCw9jf6ZaK5xbOM5ttaR3MnhQrEwaFJdWISg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_073746_507261_E1118403 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Networking <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 1:25 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> This adds the driver for the MediaTek Ethernet MAC used on the MT8* SoC
> family. For now we only support full-duplex.
>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Looks much better, thanks for addressing my feedback. A few more things
about this version:

> ---
>  drivers/net/ethernet/mediatek/Kconfig       |    6 +
>  drivers/net/ethernet/mediatek/Makefile      |    1 +
>  drivers/net/ethernet/mediatek/mtk_eth_mac.c | 1668 +++++++++++++++++++
>  3 files changed, 1675 insertions(+)
>  create mode 100644 drivers/net/ethernet/mediatek/mtk_eth_mac.c
>
> diff --git a/drivers/net/ethernet/mediatek/Kconfig b/drivers/net/ethernet/mediatek/Kconfig
> index 5079b8090f16..5c3793076765 100644
> --- a/drivers/net/ethernet/mediatek/Kconfig
> +++ b/drivers/net/ethernet/mediatek/Kconfig
> @@ -14,4 +14,10 @@ config NET_MEDIATEK_SOC
>           This driver supports the gigabit ethernet MACs in the
>           MediaTek SoC family.
>
> +config NET_MEDIATEK_MAC
> +       tristate "MediaTek Ethernet MAC support"
> +       select PHYLIB
> +       help
> +         This driver supports the ethernet IP on MediaTek MT85** SoCs.

I just noticed how the naming of NET_MEDIATEK_MAC and NET_MEDIATEK_SOC
for two different drivers doing the same thing is really confusing.

Maybe someone can come up with a better name, such as one
based on the soc it first showed up in.

> +       struct mtk_mac_ring_desc *desc = &ring->descs[ring->head];
> +       unsigned int status;
> +
> +       status = desc->status;
> +
> +       ring->skbs[ring->head] = desc_data->skb;
> +       ring->dma_addrs[ring->head] = desc_data->dma_addr;
> +       desc->data_ptr = desc_data->dma_addr;
> +
> +       status |= desc_data->len;
> +       if (flags)
> +               status |= flags;
> +       desc->status = status;
> +
> +       /* Flush previous modifications before ownership change. */
> +       dma_wmb();
> +       desc->status &= ~MTK_MAC_DESC_BIT_COWN;

You still do the read-modify-write on the word here, which is
expensive on uncached memory. You have read the value already,
so better use an assignment rather than &=, or (better)
READ_ONCE() and WRITE_ONCE() to prevent the compiler
from adding further accesses.


> +static void mtk_mac_lock(struct mtk_mac_priv *priv)
> +{
> +       spin_lock_bh(&priv->lock);
> +}
> +
> +static void mtk_mac_unlock(struct mtk_mac_priv *priv)
> +{
> +       spin_unlock_bh(&priv->lock);
> +}

I think open-coding the locks would make this more readable,
and let you use spin_lock() instead of spin_lock_bh() in
those functions that are already in softirq context.

> +static void mtk_mac_intr_enable_tx(struct mtk_mac_priv *priv)
> +{
> +       regmap_update_bits(priv->regs, MTK_MAC_REG_INT_MASK,
> +                          MTK_MAC_BIT_INT_STS_TNTC, 0);
> +}
> +static void mtk_mac_intr_enable_rx(struct mtk_mac_priv *priv)
> +{
> +       regmap_update_bits(priv->regs, MTK_MAC_REG_INT_MASK,
> +                          MTK_MAC_BIT_INT_STS_FNRC, 0);
> +}

These imply reading the irq mask register and then writing it again,
which is much more expensive than just writing it. It's also not
atomic since the regmap does not use a lock.

I don't think you actually need to enable/disable rx and tx separately,
but if you do, then writing to the Ack register as I suggested instead
of updating the mask would let you do this.

> +/* All processing for TX and RX happens in the napi poll callback. */
> +static irqreturn_t mtk_mac_handle_irq(int irq, void *data)
> +{
> +       struct mtk_mac_priv *priv;
> +       struct net_device *ndev;
> +       bool need_napi = false;
> +       unsigned int status;
> +
> +       ndev = data;
> +       priv = netdev_priv(ndev);
> +
> +       if (netif_running(ndev)) {
> +               status = mtk_mac_intr_read(priv);
> +
> +               if (status & MTK_MAC_BIT_INT_STS_TNTC) {
> +                       mtk_mac_intr_disable_tx(priv);
> +                       need_napi = true;
> +               }
> +
> +               if (status & MTK_MAC_BIT_INT_STS_FNRC) {
> +                       mtk_mac_intr_disable_rx(priv);
> +                       need_napi = true;
> +               }

I think you mixed up the rx and tx bits here: when you get
an rx interrupt, that one is already blocked until it gets
acked and you just need to disable tx until the end of the
poll function.

However, I suspect that the overhead of turning them off
is higher than what  you can save, and simply ignoring
the mask with

if (status & (MTK_MAC_BIT_INT_STS_FNRC | MTK_MAC_BIT_INT_STS_TNTC))
        napi_schedule(&priv->napi);

would be simpler and faster.

 +               /* One of the counters reached 0x8000000 - update stats and
> +                * reset all counters.
> +                */
> +               if (unlikely(status & MTK_MAC_REG_INT_STS_MIB_CNT_TH)) {
> +                       mtk_mac_intr_disable_stats(priv);
> +                       schedule_work(&priv->stats_work);
> +               }
> + befor
> +               mtk_mac_intr_ack_all(priv);

The ack here needs to be dropped, otherwise you can get further
interrupts before the bottom half has had a chance to run.

You might be lucky because you had already disabled the individual
bits earlier, but I don't think that was intentional here.

> +static int mtk_mac_netdev_start_xmit(struct sk_buff *skb,
> +                                    struct net_device *ndev)
> +{
> +       struct mtk_mac_priv *priv = netdev_priv(ndev);
> +       struct mtk_mac_ring *ring = &priv->tx_ring;
> +       struct device *dev = mtk_mac_get_dev(priv);
> +       struct mtk_mac_ring_desc_data desc_data;
> +
> +       desc_data.dma_addr = mtk_mac_dma_map_tx(priv, skb);
> +       if (dma_mapping_error(dev, desc_data.dma_addr))
> +               goto err_drop_packet;
> +
> +       desc_data.skb = skb;
> +       desc_data.len = skb->len;
> +
> +       mtk_mac_lock(priv);
> +
> +       mtk_mac_ring_push_head_tx(ring, &desc_data);
> +
> +       netdev_sent_queue(ndev, skb->len);
> +
> +       if (mtk_mac_ring_full(ring))
> +               netif_stop_queue(ndev);
> +
> +       mtk_mac_unlock(priv);
> +
> +       mtk_mac_dma_resume_tx(priv);

mtk_mac_dma_resume_tx() is an expensive read-modify-write
on an mmio register, so it would make sense to defer it based
on netdev_xmit_more(). (I had missed this in the previous
review)

> +static void mtk_mac_tx_complete_all(struct mtk_mac_priv *priv)
> +{
> +       struct mtk_mac_ring *ring = &priv->tx_ring;
> +       struct net_device *ndev = priv->ndev;
> +       int ret, pkts_compl, bytes_compl;
> +       bool wake = false;
> +
> +       mtk_mac_lock(priv);
> +
> +       for (pkts_compl = 0, bytes_compl = 0;;
> +            pkts_compl++, bytes_compl += ret, wake = true) {
> +               if (!mtk_mac_ring_descs_available(ring))
> +                       break;
> +
> +               ret = mtk_mac_tx_complete_one(priv);
> +               if (ret < 0)
> +                       break;
> +       }
> +
> +       netdev_completed_queue(ndev, pkts_compl, bytes_compl);
> +
> +       if (wake && netif_queue_stopped(ndev))
> +               netif_wake_queue(ndev);
> +
> +       mtk_mac_intr_enable_tx(priv);

No need to ack the interrupt here if napi is still active. Just
ack both rx and tx when calling napi_complete().

Some drivers actually use the napi budget for both rx and tx:
if you have more than 'budget' completed tx frames, return
early from this function and skip the napi_complete even
when less than 'budget' rx frames have arrived.

This way you get more fairness between devices and
can run for longer with irqs disabled as long as either rx
or tx is busy.

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
