Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09821A6973
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXyJmJuWnl+z0WFp82vDNbZrp2qwAsuXXbNFHRF/qAY=; b=XeVXun3y9mS/87
	IRX+5E0mpoFZDSsuNTsiD4slZDHzIv7h5u5O2sm9A9g5sHAr+vj/ZG0ZCq8gzWMXcXaLvpwoX9CWN
	6F/y7+pwLFEOQLqj2t1dqTt8+ZXoNwHAWf8WXsE8dp4wIJ6u1hRROjPwUznm5CRkutIUQvPU3QgEt
	d738HWQ3o9sJ4ltuqe/6nJ0OB1j5APJBgnUT1T4a2ex9Xs8oWSiXpHhub+8UkRjDhTZled56571/a
	3HFT3JE7HOz1Ib4zIIzLKLrzrWTunnsjdwFqo8IP5frXltkgAD5gWrwqFPcf3Rt7E/BSCpDTHhFjM
	k4780afyXC0OJ9O/Kggw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1fA-0000ko-Cj; Mon, 13 Apr 2020 16:10:20 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1ex-0007vN-Aq; Mon, 13 Apr 2020 16:10:09 +0000
Received: by mail-il1-x143.google.com with SMTP id o11so8946214ilq.7;
 Mon, 13 Apr 2020 09:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XAgditACAnSlOVdcdTnpmF4povA/P9zPjDPR+/9oxqU=;
 b=QidXcY68QS25vMzDCHsBvOS6BgHiCJfvxrTctj0yXnkgWhJUgdcWjUKEiULQ16TYYw
 kHa7OhajfUm6H2g9latwyQ/AvgqQAdorNlXQmIn+pLSt2T5lNXS9Li/p5Y7gKx+hXkyi
 hVNK48pRHNH6kfqHcjhYDaoOyPpYn+boEgQmtOJXE3vIrYTXJx++oispsGx6McnsYWqb
 OEkT+9mma6QcODxY4KFD8Z5Ke53rZJLoD0qMgVwqDylUsql4jAkDv7NK2ZDP/FeqI1Fk
 Mvc3lz+nzNM9Whjo/VElN7EQAPyKMvUMmOjRrww/ivs4oyBue5BlkUIrluGPJGuiR4L6
 1dTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XAgditACAnSlOVdcdTnpmF4povA/P9zPjDPR+/9oxqU=;
 b=tKxJJgh2Zaaw8Vb3qNryh5Qs6hpGxuUSTyoP9T39lnkOEknmdCIq2F444z799AWUWD
 /ap57is/6+CKAaGPF6MEZ9VswP+h9I9Phty9+dMdf8IHKp/Q0WlQ9kRCEkjd+5BgC284
 lKhXH7e2IfnagMmj5UEPKKFrCGARPmRJCKu5XfcCxRUO5tKV2Z9Uj0z5XKqFXUwVBPpz
 AXz/NMzfyDE2DPzLQhF3vMmKahVIEsM+UOOc69Tm+fy7rj/GN87jx8/R/ldIHQBa4MPg
 e+Tz9KUYdimD7d1phaavXVkv/y9yBunaSVQSsQAb7RTqKrKY6bC8c/bHz3g7H4z7LRR2
 0UpA==
X-Gm-Message-State: AGi0PuYmlAZUV6EA7hfnFaYt1q/8EDsRPzOFuky48ktLqueYXfmRB/+5
 xYFroHyqhvlnRARCh8o0jpKADWfUjWZg01xjtdI=
X-Google-Smtp-Source: APiQypKWUFYTn+tnm3KsVS8mC19C3e9sK6GAx5FrUZCFGMLP1oiU90Bzu52oJ2Co5LeWh0XZBqT7Buzve0WcyHBeXLI=
X-Received: by 2002:a92:8c08:: with SMTP id o8mr16624969ild.123.1586794203568; 
 Mon, 13 Apr 2020 09:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200412155848.15506-1-dqfext@gmail.com>
 <20200413144400.GA118441@localhost.localdomain>
In-Reply-To: <20200413144400.GA118441@localhost.localdomain>
From: DENG Qingfang <dqfext@gmail.com>
Date: Tue, 14 Apr 2020 00:09:52 +0800
Message-ID: <CALW65jY9ohtw5dc0CLzuRGQkWQ65ZHawhidRHoJG-=GkEQqgcg@mail.gmail.com>
Subject: Re: [PATCH] mt76: mt7615: add support for MT7611N
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_091007_395597_7A8C1860 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dqfext[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, linux-wireless@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 10:43 PM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> > MT7611N is basically the same as MT7615N, except it only supports 5 GHz
> > It is used by some TP-Link and Mercury wireless routers
> >
> > Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> > ---
> >  drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c | 2 +-
> >  drivers/net/wireless/mediatek/mt76/mt7615/dma.c     | 8 ++++----
> >  drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c  | 7 +++++++
> >  drivers/net/wireless/mediatek/mt76/mt7615/init.c    | 2 +-
> >  drivers/net/wireless/mediatek/mt76/mt7615/mac.c     | 8 ++++----
> >  drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h  | 5 +++++
> >  drivers/net/wireless/mediatek/mt76/mt7615/pci.c     | 1 +
> >  7 files changed, 23 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> > index b4d0795154e3..fac705e1621f 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> > @@ -264,7 +264,7 @@ int mt7615_init_debugfs(struct mt7615_dev *dev)
> >       if (!dir)
> >               return -ENOMEM;
> >
> > -     if (is_mt7615(&dev->mt76))
> > +     if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76))
> >               debugfs_create_devm_seqfile(dev->mt76.dev, "queues", dir,
> >                                           mt7615_queues_read);
> >       else
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/dma.c b/drivers/net/wireless/mediatek/mt76/mt7615/dma.c
> > index b19f208e3d54..274053311749 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/dma.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/dma.c
> > @@ -74,7 +74,7 @@ mt7615_init_tx_queues(struct mt7615_dev *dev)
> >       if (ret)
> >               return ret;
> >
> > -     if (!is_mt7615(&dev->mt76))
> > +     if (!is_mt7615(&dev->mt76) && !is_mt7611(&dev->mt76))
> >               return mt7622_init_tx_queues_multi(dev);
> >
> >       ret = mt7615_init_tx_queue(dev, &dev->mt76.q_tx[0], 0,
> > @@ -139,7 +139,7 @@ mt7615_tx_cleanup(struct mt7615_dev *dev)
> >       int i;
> >
> >       mt76_queue_tx_cleanup(dev, MT_TXQ_MCU, false);
> > -     if (is_mt7615(&dev->mt76)) {
> > +     if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76)) {
> >               mt76_queue_tx_cleanup(dev, MT_TXQ_BE, false);
> >       } else {
> >               for (i = 0; i < IEEE80211_NUM_ACS; i++)
> > @@ -250,7 +250,7 @@ int mt7615_dma_init(struct mt7615_dev *dev)
> >       mt76_rmw_field(dev, MT_WPDMA_GLO_CFG,
> >                      MT_WPDMA_GLO_CFG_MULTI_DMA_EN, 0x3);
> >
> > -     if (is_mt7615(&dev->mt76)) {
> > +     if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76)) {
> >               mt76_set(dev, MT_WPDMA_GLO_CFG,
> >                        MT_WPDMA_GLO_CFG_FIRST_TOKEN_ONLY);
> >
> > @@ -276,7 +276,7 @@ int mt7615_dma_init(struct mt7615_dev *dev)
> >       if (ret)
> >               return ret;
> >
> > -     if (!is_mt7615(&dev->mt76))
> > +     if (!is_mt7615(&dev->mt76) && !is_mt7611(&dev->mt76))
> >           rx_ring_size /= 2;
> >
> >       ret = mt76_queue_alloc(dev, &dev->mt76.q_rx[MT_RXQ_MAIN], 0,
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> > index dfa9a08b896d..bb6f28305733 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> > @@ -109,6 +109,12 @@ mt7615_eeprom_parse_hw_band_cap(struct mt7615_dev *dev)
> >               return;
> >       }
> >
> > +     if (is_mt7611(&dev->mt76)) {
> > +             /* 5GHz only */
> > +             dev->mt76.cap.has_5ghz = true;
> > +             return;
> > +     }
>
> just out of curiosity, what is the value in eeprom[MT_EE_WIFI_CONF]?
At 0x3e? It is 0 (MT_EE_DUAL_BAND?) but 2.4G is not working.
>
> Regards,
> Lorenzo
>
> > +
> >       val = FIELD_GET(MT_EE_NIC_WIFI_CONF_BAND_SEL,
> >                       eeprom[MT_EE_WIFI_CONF]);
> >       switch (val) {
> > @@ -260,6 +266,7 @@ static void mt7615_cal_free_data(struct mt7615_dev *dev)
> >               mt7622_apply_cal_free_data(dev);
> >               break;
> >       case 0x7615:
> > +     case 0x7611:
> >               mt7615_apply_cal_free_data(dev);
> >               break;
> >       }
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > index 03b1e56534d6..33472a2493e2 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > @@ -349,7 +349,7 @@ mt7615_init_wiphy(struct ieee80211_hw *hw)
> >
> >       ieee80211_hw_set(hw, TX_STATUS_NO_AMPDU_LEN);
> >
> > -     if (is_mt7615(&phy->dev->mt76))
> > +     if (is_mt7615(&phy->dev->mt76) || is_mt7611(&phy->dev->mt76))
> >               hw->max_tx_fragments = MT_TXP_MAX_BUF_NUM;
> >       else
> >               hw->max_tx_fragments = MT_HW_TXP_MAX_BUF_NUM;
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> > index a27a6d164009..b5b760b081cb 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> > @@ -427,7 +427,7 @@ void mt7615_tx_complete_skb(struct mt76_dev *mdev, enum mt76_txq_id qid,
> >               dev = container_of(mdev, struct mt7615_dev, mt76);
> >               txp = mt7615_txwi_to_txp(mdev, e->txwi);
> >
> > -             if (is_mt7615(&dev->mt76))
> > +             if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76))
> >                       token = le16_to_cpu(txp->fw.token);
> >               else
> >                       token = le16_to_cpu(txp->hw.msdu_id[0]) &
> > @@ -697,7 +697,7 @@ void mt7615_txp_skb_unmap(struct mt76_dev *dev,
> >       struct mt7615_txp_common *txp;
> >
> >       txp = mt7615_txwi_to_txp(dev, t);
> > -     if (is_mt7615(dev))
> > +     if (is_mt7615(dev) || is_mt7611(dev))
> >               mt7615_txp_skb_unmap_fw(dev, &txp->fw);
> >       else
> >               mt7615_txp_skb_unmap_hw(dev, &txp->hw);
> > @@ -1212,7 +1212,7 @@ int mt7615_tx_prepare_skb(struct mt76_dev *mdev, void *txwi_ptr,
> >
> >       txp = txwi + MT_TXD_SIZE;
> >       memset(txp, 0, sizeof(struct mt7615_txp_common));
> > -     if (is_mt7615(&dev->mt76))
> > +     if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76))
> >               mt7615_write_fw_txp(dev, tx_info, txp, id);
> >       else
> >               mt7615_write_hw_txp(dev, tx_info, txp, id);
> > @@ -1482,7 +1482,7 @@ void mt7615_mac_tx_free(struct mt7615_dev *dev, struct sk_buff *skb)
> >       u8 i, count;
> >
> >       count = FIELD_GET(MT_TX_FREE_MSDU_ID_CNT, le16_to_cpu(free->ctrl));
> > -     if (is_mt7615(&dev->mt76)) {
> > +     if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76)) {
> >               __le16 *token = &free->token[0];
> >
> >               for (i = 0; i < count; i++)
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> > index 676ca622c35a..8daf1027de8a 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> > @@ -353,6 +353,11 @@ static inline bool is_mt7663(struct mt76_dev *dev)
> >       return mt76_chip(dev) == 0x7663;
> >  }
> >
> > +static inline bool is_mt7611(struct mt76_dev *dev)
> > +{
> > +     return mt76_chip(dev) == 0x7611;
> > +}
> > +
> >  static inline void mt7615_irq_enable(struct mt7615_dev *dev, u32 mask)
> >  {
> >       mt76_set_irq_mask(&dev->mt76, MT_INT_MASK_CSR, 0, mask);
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> > index c8d0f893a47f..54c0ea2701bd 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> > @@ -14,6 +14,7 @@
> >  static const struct pci_device_id mt7615_pci_device_table[] = {
> >       { PCI_DEVICE(0x14c3, 0x7615) },
> >       { PCI_DEVICE(0x14c3, 0x7663) },
> > +     { PCI_DEVICE(0x14c3, 0x7611) },
> >       { },
> >  };
> >
> > --
> > 2.26.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
