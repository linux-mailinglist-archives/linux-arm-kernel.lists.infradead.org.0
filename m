Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07CD1D4F4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwuOCcLSafHHu+8tfX56w5wN4vJGstdm6rUoUR8vhjQ=; b=Y4LhqAZ9JLH/JI
	bRY4I86xpKduuuNu7NqPZ6Ikoj2YT9nqiSqWwG0uOSqhVeA2H5uM2dJNXYhxHAKZlSmo8Gid5ifI7
	v3GY6Z7zexj+7kLc1zMqHFdIpL1TRxS3PLjhEqGglB1zgczMyCEbmg/enr+4l6ukpcUPIhjYpzNb4
	iWOZ7ao9wfCriBSxRnyTCagyYse1aJOCzZjQuGCpFVucoVMmajTfHYYUxBtFJKqPm6BnnmKQMcONJ
	7sPDOLgSnsLo8vLCkOMm3/xkAan/ctwi/5bKwgtR1hcS7z3PA3xvgMgDy82iVQrcfRJewhqlc6quO
	3odJ9GDc8JUvbPli4BWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZaSV-0008Fv-JH; Fri, 15 May 2020 13:33:03 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZaSJ-0008EB-JE; Fri, 15 May 2020 13:32:53 +0000
Received: from mail-qv1-f45.google.com ([209.85.219.45]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MLyzP-1jrWym0ghl-00HsXG; Fri, 15 May 2020 15:32:49 +0200
Received: by mail-qv1-f45.google.com with SMTP id d1so1050380qvl.6;
 Fri, 15 May 2020 06:32:48 -0700 (PDT)
X-Gm-Message-State: AOAM530JwE0bxDFD9+eDlPLZQUxXP4H2M/zizrBPnyi9gQF3pvNqQt0s
 tAbSy34cnSsQ8WcJtZBMvx65VjC4FI/UUBPhrYY=
X-Google-Smtp-Source: ABdhPJxRaY7zY8QTvNzuxerWSaqGbHKOK4FIyf/5qJLFxDuhmkrh8pWdFCVTHGQsHaBEpA8LvsOh8UJboFLS9sON+fo=
X-Received: by 2002:a0c:eb11:: with SMTP id j17mr3448680qvp.197.1589549567720; 
 Fri, 15 May 2020 06:32:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200514075942.10136-1-brgl@bgdev.pl>
 <20200514075942.10136-11-brgl@bgdev.pl>
In-Reply-To: <20200514075942.10136-11-brgl@bgdev.pl>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 15 May 2020 15:32:31 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0XgJtZNKePZUUpzADO25-JZKyDiVHFS_yuHRXTjvjDwg@mail.gmail.com>
Message-ID: <CAK8P3a0XgJtZNKePZUUpzADO25-JZKyDiVHFS_yuHRXTjvjDwg@mail.gmail.com>
Subject: Re: [PATCH v3 10/15] net: ethernet: mtk-eth-mac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-Provags-ID: V03:K1:7NQvBRThVrzObBDSJ03Eocseq+bZx5c3QTKTd0EBFoXkb0IabPo
 WBkUQ8OPKR+AY/DJjNkuorc3fMeSuYmVtHwzcwaBwPOtcXOkaCkNbYFWtjsPQjnw23iYQN+
 sTU9oXEiYf9Bd91E/qqwzqCFNOBKOFcx5UZGPieMNzMhJAZsoYvSPGmBDkkGxdoC/Ux6/yX
 KFGORbeo5W3sc0YBxgZGA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pR54HUXy2TA=:QC/gINpMpCTjA2olnii28D
 MXSH9dJaDaYmgJmG+S7psobl59GHolYKzQge0/0HlefbruqAet1KzcruqTkV9bjUwu13GOtH/
 XwBuvabe6FMNO+rlOIbj18Vp//ojcp+YqnjKUwL2w2R21R/6qMghnKFziO7mtXSiegHoQixP1
 qj4D0cF6rB+hEbUGIpEe6Y2vi7HLzAbFvf+zIrxIfXW4P8Mpcbw1rlCz3/E8S3bfMskdRDJ0i
 G9VWgdaw64lIb8mkpRR9JOI0gt6Mix2T6j7Tfb1OybaLeph16otBYZDGQdRuJYwULJgFR0SQz
 YIL4VxfLpCcNlzbOJzqiqEXtsF1S/2EHUO3kg/51HNIIx905R4KEYuv1cJh/MJpMmoFgu8zXV
 8q6wS8qL6b0ABDolIk9Mjfsw6dUZ6Guposo8Mtel2FuwCV0dlmj9+LgzghmTzdErRYvnVOlOM
 bICzTuQ+iXqLGPJuhPdc0psbE+Mr55ihlCHeT1QjZwyZOqwuCaVzdTazxU+ZUBvMp7LSUPtKA
 vvyampbsjGIJUanoDPnA2laNazgQryNm0NsPpdZ1QGmDp9DWSCw6FyCHvJZvWmokYCekYC55h
 14VfAHgQxvpPL8oVGb6z+mS/VS7SE5tlTBbfO86ASwUAePZP9rmaogmLzNaFCSoqRlLp3UX8t
 U90b46tjAOHRf9zDcZlKXDNbvd7wg9nLPyxam+Ps5NEIO3+L4/MmZreLkOLjsTvkmtTyc2TCW
 1KkZhIYxz4LwcWv1wkK2FM4jahER3NTA7aHb/+s4CqtfNRoBOZY1HxgIOHT4esKSH+l+tj3AT
 sv7t3z6KO8OmjFfpPSdsNoO58gpBzEI7+HgxonLo0ZZBHqaJlc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_063251_926240_A020A6E3 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
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
> +static int mtk_mac_ring_pop_tail(struct mtk_mac_ring *ring,
> +                                struct mtk_mac_ring_desc_data *desc_data)

I took another look at this function because of your comment on the locking
the descriptor updates, which seemed suspicious as the device side does not
actually use the locks to access them

> +{
> +       struct mtk_mac_ring_desc *desc = &ring->descs[ring->tail];
> +       unsigned int status;
> +
> +       /* Let the device release the descriptor. */
> +       dma_rmb();
> +       status = desc->status;
> +       if (!(status & MTK_MAC_DESC_BIT_COWN))
> +               return -1;

The dma_rmb() seems odd here, as I don't see which prior read
is being protected by this.

> +       desc_data->len = status & MTK_MAC_DESC_MSK_LEN;
> +       desc_data->flags = status & ~MTK_MAC_DESC_MSK_LEN;
> +       desc_data->dma_addr = ring->dma_addrs[ring->tail];
> +       desc_data->skb = ring->skbs[ring->tail];
> +
> +       desc->data_ptr = 0;
> +       desc->status = MTK_MAC_DESC_BIT_COWN;
> +       if (status & MTK_MAC_DESC_BIT_EOR)
> +               desc->status |= MTK_MAC_DESC_BIT_EOR;
> +
> +       /* Flush writes to descriptor memory. */
> +       dma_wmb();

The comment and the barrier here seem odd as well. I would have expected
a barrier after the update to the data pointer, and only a single store
but no read of the status flag instead of the read-modify-write,
something like

      desc->data_ptr = 0;
      dma_wmb(); /* make pointer update visible before status update */
      desc->status = MTK_MAC_DESC_BIT_COWN | (status & MTK_MAC_DESC_BIT_EOR);

> +       ring->tail = (ring->tail + 1) % MTK_MAC_RING_NUM_DESCS;
> +       ring->count--;

I would get rid of the 'count' here, as it duplicates the information
that is already known from the difference between head and tail, and you
can't update it atomically without holding a lock around the access to
the ring. The way I'd do this is to have the head and tail pointers
in separate cache lines, and then use READ_ONCE/WRITE_ONCE
and smp barriers to access them, with each one updated on one
thread but read by the other.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
