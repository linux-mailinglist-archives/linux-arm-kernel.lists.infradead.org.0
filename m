Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673C71D3653
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrkKHWE+rfjzybTjUwIHB16TSSXcQyuigadY4gfjHd8=; b=XQEP0I9FJCKxGH
	wqhbK+Y9xSLQQUh0lbfgXuYuAao54AHl83QHxtSoCLnafGet/0eM1zOVGX1d+kPe7/gnJxVdZSksV
	Lzpgtg0qZwv7U+wmznXrlTvM8smcY4rooFgCASP10lx9E7WJv4UeWNk1lovc8X84CxwnZuexFo0sG
	PaSvnicsiov7cqdMUa+Y7lx3rs9muE9jh7J8F4KjSBLi+pMpaJpLaKQ89XXe7hUydtHR9zo2XNjj/
	422cKxTRx8VLdy4T8wJdad/AxHn/UU+2htdeB/Y1QeDP5RSBPifGJVNOdbWMYJfa9fxV777xNPSPu
	u3A8HPm/CaQDg10Gnv3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGap-0002kM-FI; Thu, 14 May 2020 16:20:19 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGaT-0002jf-Qa; Thu, 14 May 2020 16:19:59 +0000
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MFbFW-1jJHkL1e6o-00H5j2; Thu, 14 May 2020 18:19:55 +0200
Received: by mail-qv1-f45.google.com with SMTP id r3so1798231qve.1;
 Thu, 14 May 2020 09:19:55 -0700 (PDT)
X-Gm-Message-State: AOAM532bibWAuVm4gbb8wOsWCgsbqAya3CPaKZkzp+BAjsQ1EPEx1q2D
 oet3jYE2pIy0uL3Mv3tm4dyfAhVgsZI/0GbI20Q=
X-Google-Smtp-Source: ABdhPJxCBrrGbxf18hL0yNxLoGEF8lWC0aBA5Q8WEtaHoSpSU8DBa8Zy7ECG2BoQv6ItHE4yhgTm89xpWpnDDwuH11g=
X-Received: by 2002:a0c:eb11:: with SMTP id j17mr5595135qvp.197.1589473194138; 
 Thu, 14 May 2020 09:19:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200514075942.10136-1-brgl@bgdev.pl>
 <20200514075942.10136-11-brgl@bgdev.pl>
In-Reply-To: <20200514075942.10136-11-brgl@bgdev.pl>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 14 May 2020 18:19:37 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3=xgbvqrSpCK5h96eRH32AA7xnoK2ossvT0-cLFLzmXA@mail.gmail.com>
Message-ID: <CAK8P3a3=xgbvqrSpCK5h96eRH32AA7xnoK2ossvT0-cLFLzmXA@mail.gmail.com>
Subject: Re: [PATCH v3 10/15] net: ethernet: mtk-eth-mac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-Provags-ID: V03:K1:/qv+kAopY+TX+z1JBE/zsJSZOZuVL4KS0oIKC1hkLO/cXzma90j
 zH9BMTf1Zqr9MZk3vvFm3P/2/r0+f1OVxhyv31IQ+pOzEwWRgFlFJWy7Nu6ODHH3RI7jvJs
 mYT00BgOvL/Bz3EYaZtnPNWtIOo0H2Og+TY5k3k0HERpDwKP5BeDbJ00bnypzS8RUYdW9jd
 jfG8zLLgtWOSBdyRMU2PA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JTDoQpP0Uh8=:ZZ5a2SO5ao9ohprk32LYU9
 ga7worDmJEzLwXfktJkbk7L3acBPu4R/24EL0LHO7HKo4ju4JPHlnSaFlfvSRbwRFRJJbmVAO
 L+y4bEL6R1HOLuMK+cgx4kYSyvp01LEFiAyA4WrFKx8guhg5hf1mx8MeXIfoUJ+4v+Q7yDzdm
 HZnSLvNy8UN2Hsv0s9TUvNh4+jYia/Gs7jP6GfNbQW6Xq2k/vIqh3l/A8zxCjdFmZEhOu/+4O
 Na32uj+seYMCQM2wq7s/QD+d5p+AsgTmacXrqoMEtntcywZ5ljtmG+Ycsa43KzRPa8fV1yjCW
 OJglDHkW0wGufMjhCrLPtDLlSSnAD1ty20j2TPg4o4GivHohN5gzFPuOUNRN2OPZeNRC8eWqi
 uYqVyUhMZSIs50wEt3Ndo908Q7iSSgctf9hpcWuptqNBoygddxmtpDJe6UZKLvCOkW/zZdVeD
 5VyuwqWa19/tFhaJ0eZEONkKus8bABwgAA9zgTBIQe2GqLng9nYZoIkzyxzP1FhsjJzzfmd0b
 moI+GcbBO7zyPgyYZ6njuWR3hdJaTJ/MadTMO80X2JS8CSY/86L1zmEyXkLtESGS+Asn437fj
 XYN8P9v35Hvr3R2trzCorLe0qgrQndxvvt3q2nQ48PVrmGmjnm679Jp2VGi0N+tp8ZLsVFYIv
 NeQC7d9FiXNHP3xqILvMik/jKgRK2bxH/Kuprr1tMPXxeM9mOrTLvBM/d3zmAbY59ruYtN5L/
 ltuG0xutSdNpmiJpQwsP2bwSXBlPClPtCw33DnJj0Gd+A6oMtTgdhtyBg8LwQHTzbpENja6Xd
 QI2LwZPpCcCigGR1NT7yXByiSROftlKcwZdjd9HKeR6YaQNt6g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091958_154564_92204251 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Jonathan Corbet <corbet@lwn.net>, Networking <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 10:00 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> This adds the driver for the MediaTek Ethernet MAC used on the MT8* SoC
> family. For now we only support full-duplex.
>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Looks very nice overall. Just a few things I noticed, and some ideas
that may or may not make sense:

> +/* This is defined to 0 on arm64 in arch/arm64/include/asm/processor.h but
> + * this IP doesn't work without this alignment being equal to 2.
> + */
> +#ifdef NET_IP_ALIGN
> +#undef NET_IP_ALIGN
> +#endif
> +#define NET_IP_ALIGN                           2

Maybe you should just define your own macro instead of replacing
the normal one then?

> +static void mtk_mac_lock(struct mtk_mac_priv *priv)
> +{
> +       spin_lock_irqsave(&priv->lock, priv->lock_flags);
> +}
> +
> +static void mtk_mac_unlock(struct mtk_mac_priv *priv)
> +{
> +       spin_unlock_irqrestore(&priv->lock, priv->lock_flags);
> +}

This looks wrong: you should not have shared 'flags' passed into
spin_lock_irqsave(), and I don't even see a need to use the
irqsave variant of the lock in the first place.

Maybe start by open-coding the lock and remove the wrappers
above.

Then see if you can use a cheaper spin_lock_bh() or plain spin_lock()
instead of irqsave.

Finally, see if this can be done in a lockless way by relying on
appropriate barriers and separating the writers into separate
cache lines. From a brief look at the driver I think it can be done
without too much trouble.

> +static unsigned int mtk_mac_intr_read_and_clear(struct mtk_mac_priv *priv)
> +{
> +       unsigned int val;
> +
> +       regmap_read(priv->regs, MTK_MAC_REG_INT_STS, &val);
> +       regmap_write(priv->regs, MTK_MAC_REG_INT_STS, val);
> +
> +       return val;
> +}

Do you actually need to read the register? That is usually a relatively
expensive operation, so if possible try to use clear the bits when
you don't care which bits were set.

> +/* All processing for TX and RX happens in the napi poll callback. */
> +static irqreturn_t mtk_mac_handle_irq(int irq, void *data)
> +{
> +       struct mtk_mac_priv *priv;
> +       struct net_device *ndev;
> +
> +       ndev = data;
> +       priv = netdev_priv(ndev);
> +
> +       if (netif_running(ndev)) {
> +               mtk_mac_intr_mask_all(priv);
> +               napi_schedule(&priv->napi);
> +       }
> +
> +       return IRQ_HANDLED;


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
> +       mtk_mac_ring_push_head_tx(ring, &desc_data);
> +
> +       if (mtk_mac_ring_full(ring))
> +               netif_stop_queue(ndev);
> +       mtk_mac_unlock(priv);
> +
> +       mtk_mac_dma_resume_tx(priv);
> +
> +       return NETDEV_TX_OK;
> +
> +err_drop_packet:
> +       dev_kfree_skb(skb);
> +       ndev->stats.tx_dropped++;
> +       return NETDEV_TX_BUSY;
> +}

I would always add BQL flow control in new drivers, using
netdev_sent_queue here...

> +static int mtk_mac_tx_complete_one(struct mtk_mac_priv *priv)
> +{
> +       struct mtk_mac_ring *ring = &priv->tx_ring;
> +       struct mtk_mac_ring_desc_data desc_data;
> +       int ret;
> +
> +       ret = mtk_mac_ring_pop_tail(ring, &desc_data);
> +       if (ret)
> +               return ret;
> +
> +       mtk_mac_dma_unmap_tx(priv, &desc_data);
> +       dev_kfree_skb_irq(desc_data.skb);
> +
> +       return 0;
> +}

... and netdev_completed_queue()  here.

> +static void mtk_mac_tx_complete_all(struct mtk_mac_priv *priv)
> +{
> +       struct mtk_mac_ring *ring = &priv->tx_ring;
> +       struct net_device *ndev = priv->ndev;
> +       int ret;
> +
> +       for (;;) {
> +               mtk_mac_lock(priv);
> +
> +               if (!mtk_mac_ring_descs_available(ring)) {
> +                       mtk_mac_unlock(priv);
> +                       break;
> +               }
> +
> +               ret = mtk_mac_tx_complete_one(priv);
> +               if (ret) {
> +                       mtk_mac_unlock(priv);
> +                       break;
> +               }
> +
> +               if (netif_queue_stopped(ndev))
> +                       netif_wake_queue(ndev);
> +
> +               mtk_mac_unlock(priv);
> +       }
> +}

It looks like most of the stuff inside of the loop can be pulled out
and only done once here.

> +static int mtk_mac_poll(struct napi_struct *napi, int budget)
> +{
> +       struct mtk_mac_priv *priv;
> +       unsigned int status;
> +       int received = 0;
> +
> +       priv = container_of(napi, struct mtk_mac_priv, napi);
> +
> +       status = mtk_mac_intr_read_and_clear(priv);
> +
> +       /* Clean up TX */
> +       if (status & MTK_MAC_BIT_INT_STS_TNTC)
> +               mtk_mac_tx_complete_all(priv);
> +
> +       /* Receive up to $budget packets */
> +       if (status & MTK_MAC_BIT_INT_STS_FNRC)
> +               received = mtk_mac_process_rx(priv, budget);
> +
> +       /* One of the counter reached 0x8000000 - update stats and reset all
> +        * counters.
> +        */
> +       if (status & MTK_MAC_REG_INT_STS_MIB_CNT_TH) {
> +               mtk_mac_update_stats(priv);
> +               mtk_mac_reset_counters(priv);
> +       }
> +
> +       if (received < budget)
> +               napi_complete_done(napi, received);
> +
> +       mtk_mac_intr_unmask_all(priv);
> +
> +       return received;
> +}

I think you want to leave (at least some of) the interrupts masked
if your budget is exhausted, to avoid generating unnecessary
irqs.

It may also be faster to not mask/unmask at all but just
clear the interrupts that you have finished processing

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
