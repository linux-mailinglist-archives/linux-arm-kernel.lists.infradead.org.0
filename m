Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F86E1D9D76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 19:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP/ZP7jWR3ZHzqhSBY7zZK0ltV4ziK4/UWoJeuSKotY=; b=tFfWR0SCqGRACE
	9gDf4gD2DxbiFiE09Pq6vGhxwwERcmOFFw48j8mmOCtBhX7J0gX1fCrsHw6zy3gHwahj3+bv9QlBm
	xxOG5Va16LmdNjFFql0/ySnsDkHFLGXahupnDT3k52ZsRFDquuKCfKwgne5rPY5K3DVnlA5e+VKO0
	DpDkhGfh3VIHMl0s6QsvID7Br8mX2kxv+qxNOoagOWKrKGpzwobeLib8e9ZarWn7Q281w70HvPsb3
	QMP6PRcmxkBMk/mgEHfBA0UJYsfdD6/odNOZNTgdORY3JhT8QJ7dkP1BUWrTLYeZX1kCimL4JZtPJ
	RbIhWL9AchHMrzllyFPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5gl-0007Ls-2X; Tue, 19 May 2020 17:05:59 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5ga-0007L5-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 17:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589907946;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NjJTMSMaIJStjZ5vLVFN3LuT/tDATqGDyHjkps+SDvM=;
 b=FBRh5GbxEVNvk5ihXn6YGICyrZiYYM5JdvC6XirKNtTWnu6LnP4Z90sJ2OPF3+06bmCRNm
 ZTrNWXA5s6GpWghaYtgGsUYioCVG33buuw7YO/l1r0ntZC58WjV5wKfMAMfKZcu28VCBtv
 aJYJjc5g7jAW3P5jLDQSLz6vhqK8U/M=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-PdT6NMP2MCaBcoxTRX0OeA-1; Tue, 19 May 2020 13:05:45 -0400
X-MC-Unique: PdT6NMP2MCaBcoxTRX0OeA-1
Received: by mail-ej1-f70.google.com with SMTP id n15so6701476ejh.23
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 10:05:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=NjJTMSMaIJStjZ5vLVFN3LuT/tDATqGDyHjkps+SDvM=;
 b=mzlUZh0IyKPwOwIdyMiXOxNlRsj3xEWzKXDPBxt9P5guOEUWd8J4mdQcU8ZVPGXVYN
 XvBhxX+gHkQjQxo1B3bXZTsuGx0ybpqBG4TB8CiloLBESy3vFbI1CGo34JR52u1icmcD
 Z7nVMPU8Gpgcn301rSglhfVF4xWQJABxaUI2HB1BrNQGX2fHWEorc0OOhuVoa2k6vHv8
 U+oyD3igl1m2gBAR6xR3kg0rpl7fDw99mzXtxv3YtUeeditojsNs69Yq31XuMOuM+phX
 d45yKinGcWprQ9WVMZDa8dB+h/2F3qj/vOTbcl0C5N8kw9tJzYrJ5i4ptbhEi5wSBvSm
 MfMg==
X-Gm-Message-State: AOAM532M5x8R9VltOom7AQGZFlsRKtSXZZsjKXwBtQjIWYkEIR3gKS3x
 uv4ZfrbRzkCrl9tyxqK0IZ6fFBur5gi++gqU0dGGS8qJLbd8bzrSiUIzze9scOuSa8MgQUH5zIl
 Wrt4/moWxcsImPtr16GKP0w8LZbe2quVOB8M=
X-Received: by 2002:a50:d6d0:: with SMTP id l16mr19548617edj.317.1589907942127; 
 Tue, 19 May 2020 10:05:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDewCsMzPetKs8P7vMIHx3btOJYlntmfludIYibnVep5xGLeMNumvWpqvuy2VDsRBSv8nzHQ==
X-Received: by 2002:a50:d6d0:: with SMTP id l16mr19548579edj.317.1589907941555; 
 Tue, 19 May 2020 10:05:41 -0700 (PDT)
Received: from turbo.teknoraver.net (net-188-153-20-146.cust.vodafonedsl.it.
 [188.153.20.146])
 by smtp.gmail.com with ESMTPSA id y13sm63143ejm.107.2020.05.19.10.05.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 10:05:41 -0700 (PDT)
Date: Tue, 19 May 2020 19:05:34 +0200
From: Matteo Croce <mcroce@redhat.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS
 contexts to handle RSS tables
Message-ID: <20200519190534.78bb8389@turbo.teknoraver.net>
In-Reply-To: <CAGnkfhzuyxJDo-DXPHPiNtP4RbRpry+3M9eoiTknGR0zvgPuoA@mail.gmail.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <20200509114518.GB1551@shell.armlinux.org.uk>
 <CAGnkfhx8fEZCoLPzGxSzQnj1ZWcQtBMn+g_jO1Jxc4zF7pQwjQ@mail.gmail.com>
 <20200509195246.GJ1551@shell.armlinux.org.uk>
 <20200509202050.GK1551@shell.armlinux.org.uk>
 <20200519095330.GA1551@shell.armlinux.org.uk>
 <CAGnkfhzuyxJDo-DXPHPiNtP4RbRpry+3M9eoiTknGR0zvgPuoA@mail.gmail.com>
Organization: Red Hat
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_100548_809899_7562D050 
X-CRM114-Status: GOOD (  44.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 12:05:20 +0200
Matteo Croce <mcroce@redhat.com> wrote:

> On Tue, May 19, 2020 at 11:54 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Sat, May 09, 2020 at 09:20:50PM +0100, Russell King - ARM Linux
> > admin wrote:
> > > On Sat, May 09, 2020 at 08:52:46PM +0100, Russell King - ARM
> > > Linux admin wrote:
> > > > It is highly likely that 895586d5dc32 is responsible for this
> > > > breakage. I've been investigating this afternoon, and what I've
> > > > found, comparing a kernel without 895586d5dc32 and with
> > > > 895586d5dc32 applied is:
> > > >
> > > > - The table programmed into the hardware via
> > > > mvpp22_rss_fill_table() appears to be identical with or without
> > > > the commit.
> > > >
> > > > - When rxhash is enabled on eth2, mvpp2_rss_port_c2_enable()
> > > > reports that c2.attr[0] and c2.attr[2] are written back
> > > > containing:
> > > >
> > > >    - with 895586d5dc32, failing:    00200000 40000000
> > > >    - without 895586d5dc32, working: 04000000 40000000
> > > >
> > > > - When disabling rxhash, c2.attr[0] and c2.attr[2] are written
> > > > back as:
> > > >
> > > >    04000000 00000000
> > > >
> > > > The second value represents the MVPP22_CLS_C2_ATTR2_RSS_EN bit,
> > > > the first value is the queue number, which comprises two
> > > > fields.  The high 5 bits are 24:29 and the low three are 21:23
> > > > inclusive.  This comes from:
> > > >
> > > >        c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
> > > >                      MVPP22_CLS_C2_ATTR0_QLOW(ql);
> > > > #define     MVPP22_CLS_C2_ATTR0_QHIGH(qh)       (((qh) & 0x1f)
> > > > << 24) #define     MVPP22_CLS_C2_ATTR0_QLOW(ql)        (((ql) &
> > > > 0x7) << 21)
> > > >
> > > > So, the working case gives eth2 a queue id of 4.0, or 32 as per
> > > > port->first_rxq, and the non-working case a queue id of 0.1, or
> > > > 1.
> > > >
> > > > The allocation of queue IDs seems to be in mvpp2_port_probe():
> > > >
> > > >         if (priv->hw_version == MVPP21)
> > > >                 port->first_rxq = port->id * port->nrxqs;
> > > >         else
> > > >                 port->first_rxq = port->id *
> > > > priv->max_port_rxqs;
> > > >
> > > > Where:
> > > >
> > > >         if (priv->hw_version == MVPP21)
> > > >                 priv->max_port_rxqs = 8;
> > > >         else
> > > >                 priv->max_port_rxqs = 32;
> > > >
> > > > Making the port 0 (eth0 / eth1) have port->first_rxq = 0, and
> > > > port 1 (eth2) be 32.  It seems the idea is that the first 32
> > > > queues belong to port 0, the second 32 queues belong to port 1,
> > > > etc.
> > > >
> > > > mvpp2_rss_port_c2_enable() gets the queue number from it's
> > > > parameter, 'ctx', which comes from mvpp22_rss_ctx(port, 0).
> > > > This returns port->rss_ctx[0].
> > > >
> > > > mvpp22_rss_context_create() is responsible for allocating that,
> > > > which it does by looking for an unallocated priv->rss_tables[]
> > > > pointer.  This table is shared amongst all ports on the CP
> > > > silicon.
> > > >
> > > > When we write the tables in mvpp22_rss_fill_table(), the RSS
> > > > table entry is defined by:
> > > >
> > > >             u32 sel = MVPP22_RSS_INDEX_TABLE(rss_ctx) |
> > > >                           MVPP22_RSS_INDEX_TABLE_ENTRY(i);
> > > >
> > > > where rss_ctx is the context ID (queue number) and i is the
> > > > index in the table.
> > > >
> > > > #define     MVPP22_RSS_INDEX_TABLE_ENTRY(idx)   (idx)
> > > > #define     MVPP22_RSS_INDEX_TABLE(idx)         ((idx) << 8)
> > > > #define     MVPP22_RSS_INDEX_QUEUE(idx)         ((idx) << 16)
> > > >
> > > > If we look at what is written:
> > > >
> > > > - The first table to be written has "sel" values of
> > > > 00000000..0000001f, containing values 0..3. This appears to be
> > > > for eth1.  This is table 0, RX queue number 0.
> > > > - The second table has "sel" values of 00000100..0000011f, and
> > > > appears to be for eth2.  These contain values 0x20..0x23.  This
> > > > is table 1, RX queue number 0.
> > > > - The third table has "sel" values of 00000200..0000021f, and
> > > > appears to be for eth3.  These contain values 0x40..0x43.  This
> > > > is table 2, RX queue number 0.
> > > >
> > > > Okay, so how do queue numbers translate to the RSS table?
> > > > There is another table - the RXQ2RSS table, indexed by the
> > > > MVPP22_RSS_INDEX_QUEUE field of MVPP22_RSS_INDEX and accessed
> > > > through the MVPP22_RXQ2RSS_TABLE register.  Before
> > > > 895586d5dc32, it was:
> > > >
> > > >        mvpp2_write(priv, MVPP22_RSS_INDEX,
> > > >                    MVPP22_RSS_INDEX_QUEUE(port->first_rxq));
> > > >        mvpp2_write(priv, MVPP22_RXQ2RSS_TABLE,
> > > >                    MVPP22_RSS_TABLE_POINTER(port->id));
> > > >
> > > > and after:
> > > >
> > > >        mvpp2_write(priv, MVPP22_RSS_INDEX,
> > > > MVPP22_RSS_INDEX_QUEUE(ctx)); mvpp2_write(priv,
> > > > MVPP22_RXQ2RSS_TABLE, MVPP22_RSS_TABLE_POINTER(ctx));
> > > >
> > > > So, before the commit, for eth2, that would've contained '32'
> > > > for the index and '1' for the table pointer - mapping queue 32
> > > > to table 1. Remember that this is queue-high.queue-low of 4.0.
> > > >
> > > > After the commit, we appear to map queue 1 to table 1.  That
> > > > again looks fine on the face of it.
> > > >
> > > > Section 9.3.1 of the A8040 manual seems indicate the reason
> > > > that the queue number is separated.  queue-low seems to always
> > > > come from the classifier, whereas queue-high can be from the
> > > > ingress physical port number or the classifier depending on the
> > > > MVPP2_CLS_SWFWD_PCTRL_REG.
> > > >
> > > > We set the port bit in MVPP2_CLS_SWFWD_PCTRL_REG, meaning that
> > > > queue-high comes from the MVPP2_CLS_SWFWD_P2HQ_REG()
> > > > register... and this seems to be where our bug comes from.
> > > >
> > > > mvpp2_cls_oversize_rxq_set() sets this up as:
> > > >
> > > >         mvpp2_write(port->priv,
> > > > MVPP2_CLS_SWFWD_P2HQ_REG(port->id), (port->first_rxq >>
> > > > MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS));
> > > >
> > > >         val = mvpp2_read(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG);
> > > >         val |= MVPP2_CLS_SWFWD_PCTRL_MASK(port->id);
> > > >         mvpp2_write(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG, val);
> > > >
> > > > so, the queue-high for eth2 is _always_ 4, meaning that only
> > > > queues 32 through 39 inclusive are available to eth2.  Yet,
> > > > we're trying to tell the classifier to set queue-high, which
> > > > will be ignored, to zero.
> > > >
> > > > So we end up directing traffic from eth2 not to queue 1, but to
> > > > queue 33, and then we tell it to look up queue 33 in the RSS
> > > > table.  However, RSS table has not been programmed for queue
> > > > 33, and so it ends up (presumably) dropping the packets.
> > > >
> > > > It seems that mvpp22_rss_context_create() doesn't take account
> > > > of the fact that the upper 5 bits of the queue ID can't
> > > > actually be changed due to the settings in
> > > > mvpp2_cls_oversize_rxq_set(), _or_ it seems that
> > > > mvpp2_cls_oversize_rxq_set() has been missed in this commit.
> > > > Either way, these two functions mutually disagree with what
> > > > queue number should be used.
> > > >
> > > > So, 895586d5dc32 is indeed the cause of this problem.
> > >
> > > Looking deeper into what mvpp2_cls_oversize_rxq_set() and the MTU
> > > validation is doing, it seems that MVPP2_CLS_SWFWD_P2HQ_REG() is
> > > used for at least a couple of things.
> > >
> > > So, with the classifier having had RSS enabled and directing eth2
> > > traffic to queue 1, we can not ignore the fact that we may have
> > > packets appearing on queue 32 for this port.
> > >
> > > One of the things that queue 32 will be used for is if an
> > > over-sized packet attempts to egress through eth2 - it seems that
> > > the A8040 has the ability to forward frames between its ports.
> > > However, afaik we don't support that feature, and the kernel
> > > restricts the packet size, so we should never violate the MTU
> > > validator and end up with such a packet.  In any case, _if_ we
> > > were to attempt to transmit an oversized packet, we have no
> > > support in the kernel to deal with that appearing in the port's
> > > receive queue.
> > >
> > > Maybe it would be safe to clear the MVPP2_CLS_SWFWD_PCTRL_MASK()
> > > bit?
> > >
> > > My testing seems to confirm my findings above - clearing this bit
> > > means that if I enable rxhash on eth2, the interface can then pass
> > > traffic, as we are now directing traffic to RX queue 1 rather than
> > > queue 33.  Traffic still seems to work with rxhash off as well.
> > >
> > > So, I think it's clear where the problem lies, but not what the
> > > correct solution is; someone with more experience of packet
> > > classifiers (this one?) needs to look at this - this is my first
> > > venture into these things, and certainly the first time I've
> > > traced through how this is trying to work (or not)...
> >
> > This is what I was using here to work around the problem, and what I
> > mentioned above.
> >
> > diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
> > b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c index
> > fd221d88811e..0dd3b65822dd 100644 ---
> > a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c +++
> > b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c @@ -1058,7 +1058,7
> > @@ void mvpp2_cls_oversize_rxq_set(struct mvpp2_port *port)
> > (port->first_rxq >> MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS));
> >
> >         val = mvpp2_read(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG);
> > -       val |= MVPP2_CLS_SWFWD_PCTRL_MASK(port->id);
> > +       val &= ~MVPP2_CLS_SWFWD_PCTRL_MASK(port->id);
> >         mvpp2_write(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG, val);
> >  }
> >
> >
> 
> Hi,
> 
> I will try this change and let you know if it works.
> 
> Thanks
> 

Hi,

The patch seems to work. I'm generating traffic with random MAC and IP
addresses, to have many flows:

# tcpdump -tenni eth2
9a:a9:b1:3a:b1:6b > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
9e:92:fd:f8:7f:0a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
66:b7:11:8a:c2:1f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
7a:ba:58:bd:9a:62 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
7e:78:a9:97:70:3a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
b2:81:91:34:ce:42 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
2a:05:52:d0:d9:3f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12
ee:ee:47:35:fa:81 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12

This is the default rate, with rxhash off:

# utraf eth2
tx: 0 bps 0 pps rx: 397.4 Mbps 827.9 Kpps
tx: 0 bps 0 pps rx: 396.3 Mbps 825.7 Kpps
tx: 0 bps 0 pps rx: 396.6 Mbps 826.3 Kpps
tx: 0 bps 0 pps rx: 396.5 Mbps 826.1 Kpps

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
      9 root      20   0       0      0      0 R  99.7   0.0   7:02.58 ksoftirqd/0
     15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1
     20 root      20   0       0      0      0 S   0.0   0.0   2:01.48 ksoftirqd/2
     25 root      20   0       0      0      0 S   0.0   0.0   0:32.86 ksoftirqd/3

and this with rx hashing enabled:

# ethtool -K eth2 rxhash on
# utraf eth2
tx: 0 bps 0 pps rx: 456.4 Mbps 950.8 Kpps
tx: 0 bps 0 pps rx: 458.4 Mbps 955.0 Kpps
tx: 0 bps 0 pps rx: 457.6 Mbps 953.3 Kpps
tx: 0 bps 0 pps rx: 462.2 Mbps 962.9 Kpps

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
     20 root      20   0       0      0      0 R   0.7   0.0   2:02.34 ksoftirqd/2
     25 root      20   0       0      0      0 S   0.3   0.0   0:33.25 ksoftirqd/3
      9 root      20   0       0      0      0 S   0.0   0.0   7:52.57 ksoftirqd/0
     15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1


The throughput doesn't increase so much, maybe we hit an HW limit of
the gigabit port. The interesting thing is how the global CPU usage
drops from 25% to 1%.
I can't explain this, it could be due to the reduced contention?

Regards,
-- 
Matteo Croce
per aspera ad upstream


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
