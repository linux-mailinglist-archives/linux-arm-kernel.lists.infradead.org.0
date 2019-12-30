Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543A512CC1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 04:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BP3GxcLxCKYxtrv/tE2M2XoPExMSSEzIa1BQIceoRz0=; b=NIuE6Tun2NuiGQ
	KAK33PuQ2GcNf3bkgmk7FqFydFPJfLuPFXFNu8NDNrnFBVnzJ2H6w5Th0mYY7r6lm3gu+gx5ki0hG
	rb5jQV3plgKpx18zLR3khcsvqJjBikeauOacvI03+WEt0S2MOi3MK9HTFD1ZdqDf/2uF4mpFQCd4/
	lUsBudiA08S4qlRqltKINdqScmuD95+9glEMPjmFGNUDULKYeAKIUTmhmm9KEPJ6C6cd9i1v5DW8Z
	1bcJSvYZ9OpkcqsbiVUJua8QZpnldp+QWvYqScqFpuoiM3/LynQjNO+j1NYb41QP4LL8LWtPl/hg8
	xcNk+TeA6nsPKIiAwGlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illjF-0006Y1-Sw; Mon, 30 Dec 2019 03:28:25 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illj8-0006X9-4N; Mon, 30 Dec 2019 03:28:19 +0000
Received: by mail-il1-x141.google.com with SMTP id c4so26897670ilo.7;
 Sun, 29 Dec 2019 19:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/gSpV16gqUugWiREKjeRqrw8NqwpDXSNtuIvz7v7i9E=;
 b=ljUmIFIw0TpKNbfOsZzPy0594sjYu/WDS2ogd7eV+SZZ16rOMs8kMTDMp6r6z/HcDC
 gqeF9js1oULvAa9uPuKoajyItsjEtWIyVR5bWaYyUdJ6TJCtRwzq4+RZVsJAoLwTgmCe
 ULropm0NWnpv5zpmOeO+HeH1QR+jfN9rvbHK1upIzD+IeCFoYPpaQIq080RnM95H2VwG
 TqqF12ZBn8tHuciOJ2AXNUyop1HJqJacA0AgEg+pthBgH0U4qE8OnMLggownEhd75RHg
 8ltU/kKIbQzSd85SF6xHDqt6XgBdTXu0malc/i+gHCoLM+Bkv2aHzp4g+/NbaLl2cqwE
 2fyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/gSpV16gqUugWiREKjeRqrw8NqwpDXSNtuIvz7v7i9E=;
 b=kH6nUXE3oJHIYAR8JXryPXckkx5amGaceL2ZEOuqCmwkVSz8KrTfNvzKh7EvG15/nT
 w+/TLogvCQ0wsPTTn8tSrL2gfEaidMHvXSCtNvMBCMdVRUIeDZZ6OSVSIM1KEaMWPYO4
 wQ8Zj95ifhApbK2er2bbQvH71YzDO3XPeqjUraKnXYFFjLTBsmpw4dFCdUyB0blFMGoc
 sQxT0Gev8nAWbVnVvrLkC8i/P1H9rNapy5SmPJwS0Jr1MjsnwETKZKTlbQMLTQXFAbZC
 AaChZWb5dmjO8xGg2fqShJi5jMZ/vymGguNsbn0htHLdkPXkoULZlt/OQ9H6+C7fiTEp
 6ZnA==
X-Gm-Message-State: APjAAAUCa3Hy7XTwjBxH3ihtdr+xbzO5QydmvsGpYOXZjKncm7wJU6BQ
 BcXTPYHWYOb+saFgRdEKclc1ZtJfboRJrb3aTpE=
X-Google-Smtp-Source: APXvYqyQZm4ZquKEMpBoMyD+GpdMoP23S7ymcucZjFHMEh+UdO/8w5BBcW4WhKQqF8cH3yxedUvYcOX8n0XBNCAgQNA=
X-Received: by 2002:a92:84d1:: with SMTP id y78mr55495168ilk.69.1577676496461; 
 Sun, 29 Dec 2019 19:28:16 -0800 (PST)
MIME-Version: 1.0
References: <20191121072910.31665-1-bibby.hsieh@mediatek.com>
 <1575426135.31411.2.camel@mtksdaap41>
In-Reply-To: <1575426135.31411.2.camel@mtksdaap41>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 29 Dec 2019 21:28:05 -0600
Message-ID: <CABb+yY2w_h-weh15hFkGuC-b7XLYrvkT7QVkkj1u6uS99qOnrg@mail.gmail.com>
Subject: Re: [PATCH] soc: mediatek: cmdq: avoid racing condition with mutex
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_192818_176525_68558007 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 8:22 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Jassi:
>
> Are mbox_send_message() and mbox_client_txdone() thread-safe? If these
> two are thread-safe, this bug should be fixed in mailbox core not
> client.
>
mbox_client_txdone should be called only when the client _knows_ the
message has been sent.
There is difference between knowing when tx is done, and assuming
tx-done because there is no way of knowing it.
Your issue arises because you immediately call mbox_client_txdone
after mbox_send_message, which may be the only way to do it but that
doesn't mean you shouldn't have to take any other precautions (like a
mutex). So I think your patch is reasonable.

Cheers!


> Regards,
> CK
>
> On Thu, 2019-11-21 at 15:29 +0800, Bibby Hsieh wrote:
> > If cmdq client is multi thread user, racing will occur without mutex
> > protection. It will make the C message queued in mailbox's queue
> > always need D message's triggering.
> >
> > Thread A              Thread B                  Thread C              Thread D...
> > -----------------------------------------------------------------------------------
> > mbox_send_message()
> >       send_data()
> >                       mbox_send_message()
> >                               *exit
> >                                               mbox_send_message()
> >                                                       *exit
> > mbox_client_txdone()
> >       tx_tick()
> >                       mbox_client_txdone()
> >                               tx_tick()
> >                                               mbox_client_txdone()
> >                                                       tx_tick()
> > msg_submit()
> >       send_data()
> >                       msg_submit()
> >                               *exit
> >                                               msg_submit()
> >                                                       *exit
> > -----------------------------------------------------------------------------------
> >
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 3 +++
> >  include/linux/soc/mediatek/mtk-cmdq.h  | 1 +
> >  2 files changed, 4 insertions(+)
> >
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 9add0fd5fa6c..9e35e0beffaa 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -81,6 +81,7 @@ struct cmdq_client *cmdq_mbox_create(struct device *dev, int index, u32 timeout)
> >       client->client.dev = dev;
> >       client->client.tx_block = false;
> >       client->chan = mbox_request_channel(&client->client, index);
> > +     mutex_init(&client->mutex);
> >
> >       if (IS_ERR(client->chan)) {
> >               long err;
> > @@ -352,9 +353,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
> >               spin_unlock_irqrestore(&client->lock, flags);
> >       }
> >
> > +     mutex_lock(&client->mutex);
> >       mbox_send_message(client->chan, pkt);
> >       /* We can send next packet immediately, so just call txdone. */
> >       mbox_client_txdone(client->chan, 0);
> > +     mutex_unlock(&client->mutex);
> >
> >       return 0;
> >  }
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index a74c1d5acdf3..0f9071cd1bc7 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -28,6 +28,7 @@ struct cmdq_client {
> >       struct mbox_chan *chan;
> >       struct timer_list timer;
> >       u32 timeout_ms; /* in unit of microsecond */
> > +     struct mutex mutex;
> >  };
> >
> >  /**
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
