Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5FE5DD8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 06:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jITih1CHdy+SqihPYp7q3WgCLEmY7ZrDL7vF41t8TLw=; b=AXNrlz2lcR0GfO
	VBV8IrP6N/Gxq5grPtF3eI0CeOLTQR+RSABpRRuqyDXP7q9NGd3WEsXXdTXTEqyvDN5S6jRTMdUIY
	q/6J7jWGxZm1ZcFmiH2dV+h2GCTzFO1FdtaqvJCFN4MnUZ+NSSGIN3nNcNWIdkLqIkBGHQI1cZx3k
	6vu4qqS247y4OT3lmC0Z/PC0Kb7EwTrZ7O+3HWZuHbrDjiVwo+cj7mxx/KsXl12TqAScTP12f41mb
	5nDbYH1bOQZs4t+N87yiZyZQAf34suaDUeSRbeIle5+uSCN0C4GvaOez3r+hJk+QIP2DSQ/r3rW9U
	GlkN/IEcBc3xQnjkl/Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiX9x-000255-Pw; Wed, 03 Jul 2019 04:46:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiX9j-00024I-PT
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 04:46:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id n9so713604wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 21:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wYhh1FZzURTT7jH4X0+BMDoH/6wRanTlqxHaq9ZAeIo=;
 b=dQRSzZmUe1oWkQbqMVhHq7Z3a+ParxHjVuN4zzmMeN7jWd7RuDzM1G94+XusklGZRy
 0JKGxw/gkYiH/09tv5hefVtrawoo77R3FEAormbcWaJFmx3cm1zSd8/S19kYiItWER7t
 0LHQSv/BBFagOdYumbEf4hJUNIKYH5pz8CtlsuaUYveabhGr9qbVl8ixKBiqvjv5g610
 TG/hvXsgFVUo9nrW9Ue0BxoaHLuZfYoNNxnyP2A9u0lwdA56n4aJX4mqCqy8E7/+hKeW
 Q8T28gH8ChWgDJPL2up3LqflSLbF9sgnxiHRkoe/0n0MisFBWYHBdyN1hUgC6oSsOBX2
 4Vyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wYhh1FZzURTT7jH4X0+BMDoH/6wRanTlqxHaq9ZAeIo=;
 b=Ofxuxt81NLOwtqCZT1XTp7SzA1bPcWFcSorOq02kol6Eqdydyd0986g5YKWLglgwFz
 oqLHmAxrUpza/GMWy96tzsVGfqySeifc9lOWS3WrtoOsUdwwUKRgAiJnFbqtNykZm5aG
 311Tk7fFeCKlMmEcobqITtUt6IRfGCc7m/0JW/JpBG2CcmfHV9uizxHACK4hmxdEwjxu
 RoMaYSn0Q79pqUnJJiTwR72pWw5fiSr/hPLhTELHe2xP0LjqGdtyrxGFtQZlEkwHKoHO
 4+SMp3Arfo0U1mmHVcWGTTS0ROAjWQLDCwgvqI6vSvtkRCJx9iDJnU2ppAIMY3Tkti/c
 yiEg==
X-Gm-Message-State: APjAAAUpVSHhDxS7YpeIkw2GWU0vECCNYEKPKbyh86GjKedxnn62P/hD
 vG4QDKzcinsxG/2ZWiwuy1ttISlMe9wx3JPkEgfLQw==
X-Google-Smtp-Source: APXvYqypB8Gwxv/tNWr1/m7SPPHay5N8t9sQgm11whZDoZ0H119QZPeC/ixVqENlUCif7avjYDOVoJVygfC0VJYk2Rg=
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr5759985wmc.159.1562129162963; 
 Tue, 02 Jul 2019 21:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190701213849.102759-1-maheshb@google.com>
 <alpine.DEB.2.21.1907021450320.5764@ramsan.of.borg>
In-Reply-To: <alpine.DEB.2.21.1907021450320.5764@ramsan.of.borg>
From: =?UTF-8?B?TWFoZXNoIEJhbmRld2FyICjgpK7gpLngpYfgpLYg4KSs4KSC4KSh4KWH4KS14KS+4KSwKQ==?=
 <maheshb@google.com>
Date: Tue, 2 Jul 2019 21:45:46 -0700
Message-ID: <CAF2d9jhikNn94WD7mefMDpiZK-baCwsPJRXti_WSFE6_v+Ci-w@mail.gmail.com>
Subject: Re: suspicious RCU usage (was: Re: [PATCHv3 next 1/3] loopback:
 create blackhole net device similar to loopack.)
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_214607_865988_DA59ADEA 
X-CRM114-Status: GOOD (  28.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Mahesh Bandewar <mahesh@bandewar.net>, Eric Dumazet <edumazet@google.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 5:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
>         Hi Mahesh,
>
> On Mon, 1 Jul 2019, Mahesh Bandewar wrote:
> > Create a blackhole net device that can be used for "dead"
> > dst entries instead of loopback device. This blackhole device differs
> > from loopback in few aspects: (a) It's not per-ns. (b)  MTU on this
> > device is ETH_MIN_MTU (c) The xmit function is essentially kfree_skb().
> > and (d) since it's not registered it won't have ifindex.
> >
> > Lower MTU effectively make the device not pass the MTU check during
> > the route check when a dst associated with the skb is dead.
> >
> > Signed-off-by: Mahesh Bandewar <maheshb@google.com>
>
> This is now commit 4de83b88c66a1e4d ("loopback: create blackhole net
> device similar to loopack.") in net-next, and causes the following
> warning on arm64:
>
>      WARNING: suspicious RCU usage
>      5.2.0-rc6-arm64-renesas-01699-g4de83b88c66a1e4d #263 Not tainted
>      -----------------------------
>      include/linux/rtnetlink.h:85 suspicious rcu_dereference_protected() usage!
>
>      other info that might help us debug this:
>
>
>      rcu_scheduler_active = 2, debug_locks = 1
>      no locks held by swapper/0/1.
>
thanks for the report. Let me take a look at this.

>      stack backtrace:
>      CPU: 2 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc6-arm64-renesas-01699-g4de83b88c66a1e4d #263
>      Hardware name: Renesas Salvator-X 2nd version board based on r8a7795 ES2.0+ (DT)
>      Call trace:
>       dump_backtrace+0x0/0x148
>       show_stack+0x14/0x20
>       dump_stack+0xd4/0x11c
>       lockdep_rcu_suspicious+0xcc/0x110
>       dev_init_scheduler+0x114/0x150
>       blackhole_netdev_init+0x40/0x80
>       do_one_initcall+0x178/0x37c
>       kernel_init_freeable+0x490/0x530
>       kernel_init+0x10/0x100
>       ret_from_fork+0x10/0x1c
>
>
> > ---
> > v1->v2->v3
> >  no change
> >
> > drivers/net/loopback.c    | 76 ++++++++++++++++++++++++++++++++++-----
> > include/linux/netdevice.h |  2 ++
> > 2 files changed, 69 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/net/loopback.c b/drivers/net/loopback.c
> > index 87d361666cdd..3b39def5471e 100644
> > --- a/drivers/net/loopback.c
> > +++ b/drivers/net/loopback.c
> > @@ -55,6 +55,13 @@
> > #include <net/net_namespace.h>
> > #include <linux/u64_stats_sync.h>
> >
> > +/* blackhole_netdev - a device used for dsts that are marked expired!
> > + * This is global device (instead of per-net-ns) since it's not needed
> > + * to be per-ns and gets initialized at boot time.
> > + */
> > +struct net_device *blackhole_netdev;
> > +EXPORT_SYMBOL(blackhole_netdev);
> > +
> > /* The higher levels take care of making this non-reentrant (it's
> >  * called with bh's disabled).
> >  */
> > @@ -150,12 +157,14 @@ static const struct net_device_ops loopback_ops = {
> >       .ndo_set_mac_address = eth_mac_addr,
> > };
> >
> > -/* The loopback device is special. There is only one instance
> > - * per network namespace.
> > - */
> > -static void loopback_setup(struct net_device *dev)
> > +static void gen_lo_setup(struct net_device *dev,
> > +                      unsigned int mtu,
> > +                      const struct ethtool_ops *eth_ops,
> > +                      const struct header_ops *hdr_ops,
> > +                      const struct net_device_ops *dev_ops,
> > +                      void (*dev_destructor)(struct net_device *dev))
> > {
> > -     dev->mtu                = 64 * 1024;
> > +     dev->mtu                = mtu;
> >       dev->hard_header_len    = ETH_HLEN;     /* 14   */
> >       dev->min_header_len     = ETH_HLEN;     /* 14   */
> >       dev->addr_len           = ETH_ALEN;     /* 6    */
> > @@ -174,11 +183,20 @@ static void loopback_setup(struct net_device *dev)
> >               | NETIF_F_NETNS_LOCAL
> >               | NETIF_F_VLAN_CHALLENGED
> >               | NETIF_F_LOOPBACK;
> > -     dev->ethtool_ops        = &loopback_ethtool_ops;
> > -     dev->header_ops         = &eth_header_ops;
> > -     dev->netdev_ops         = &loopback_ops;
> > +     dev->ethtool_ops        = eth_ops;
> > +     dev->header_ops         = hdr_ops;
> > +     dev->netdev_ops         = dev_ops;
> >       dev->needs_free_netdev  = true;
> > -     dev->priv_destructor    = loopback_dev_free;
> > +     dev->priv_destructor    = dev_destructor;
> > +}
> > +
> > +/* The loopback device is special. There is only one instance
> > + * per network namespace.
> > + */
> > +static void loopback_setup(struct net_device *dev)
> > +{
> > +     gen_lo_setup(dev, (64 * 1024), &loopback_ethtool_ops, &eth_header_ops,
> > +                  &loopback_ops, loopback_dev_free);
> > }
> >
> > /* Setup and register the loopback device. */
> > @@ -213,3 +231,43 @@ static __net_init int loopback_net_init(struct net *net)
> > struct pernet_operations __net_initdata loopback_net_ops = {
> >       .init = loopback_net_init,
> > };
> > +
> > +/* blackhole netdevice */
> > +static netdev_tx_t blackhole_netdev_xmit(struct sk_buff *skb,
> > +                                      struct net_device *dev)
> > +{
> > +     kfree_skb(skb);
> > +     net_warn_ratelimited("%s(): Dropping skb.\n", __func__);
> > +     return NETDEV_TX_OK;
> > +}
> > +
> > +static const struct net_device_ops blackhole_netdev_ops = {
> > +     .ndo_start_xmit = blackhole_netdev_xmit,
> > +};
> > +
> > +/* This is a dst-dummy device used specifically for invalidated
> > + * DSTs and unlike loopback, this is not per-ns.
> > + */
> > +static void blackhole_netdev_setup(struct net_device *dev)
> > +{
> > +     gen_lo_setup(dev, ETH_MIN_MTU, NULL, NULL, &blackhole_netdev_ops, NULL);
> > +}
> > +
> > +/* Setup and register the blackhole_netdev. */
> > +static int __init blackhole_netdev_init(void)
> > +{
> > +     blackhole_netdev = alloc_netdev(0, "blackhole_dev", NET_NAME_UNKNOWN,
> > +                                     blackhole_netdev_setup);
> > +     if (!blackhole_netdev)
> > +             return -ENOMEM;
> > +
> > +     dev_init_scheduler(blackhole_netdev);
> > +     dev_activate(blackhole_netdev);
> > +
> > +     blackhole_netdev->flags |= IFF_UP | IFF_RUNNING;
> > +     dev_net_set(blackhole_netdev, &init_net);
> > +
> > +     return 0;
> > +}
> > +
> > +device_initcall(blackhole_netdev_init);
> > diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> > index eeacebd7debb..88292953aa6f 100644
> > --- a/include/linux/netdevice.h
> > +++ b/include/linux/netdevice.h
> > @@ -4870,4 +4870,6 @@ do {                                                            \
> > #define PTYPE_HASH_SIZE       (16)
> > #define PTYPE_HASH_MASK       (PTYPE_HASH_SIZE - 1)
> >
> > +extern struct net_device *blackhole_netdev;
> > +
> > #endif        /* _LINUX_NETDEVICE_H */
> >
> Gr{oetje,eeting}s,
>
>                                                 Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                                             -- Linus Torvalds
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
