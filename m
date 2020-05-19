Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2C31D93DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvzGi5SfVjRm5Cxh2RAm16EopYmyGVwD6K0x/Ms0tIE=; b=EWiu5mHAVnNkN7
	3/U0fdkjghKNjoU+A+IaeNHIBOXGRI4/M27Gz4KSjSWrOsGyPCNJhJAeke+cBHbS6jgGRHJydwYAW
	1y+0n4SOpoEMHdFJ8uxVhv0lEuQLtE9sIUyfYB9EADP/6TkWr3LHMdM8JeiMg9glybA6ah3bADXgI
	iq9qYDWyO/Dv6sfYq+zDlbZe2rUUHxh7dBjxitFIFJB2vn7UR0buVQsiGUZ2/DY8ZI3wYcgIK0xMS
	cu1bM2IQGiW2SxpCTDkunWLzElVHnNiG45AmuRiVGZ3UEWlOz+Z4rEGEzEYubGmdktW+lnt15lKLl
	iUB8x8MyM3mg9U52TSyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayxS-0008Fm-SQ; Tue, 19 May 2020 09:54:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayxG-0008Ej-A1
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t8KriT0uzWTFwnHacOVwkrZw+QOSCqO/QLL7EaGziaY=; b=CekGnblNiV27nEzeC7Yt2QUlA
 iprQsXoXs//fZzS67/ovHjUE25VvKy1m7GRj1QG/uR4qViqyr+eX+JRioE32vlQ50vZfmZhYoASRB
 521kGHTglEg5fEedx7L6H0IW0KiGuJBoYIB1ZiFkUDkk32eqUKMzEWU0MQIBaJFQaJKrgcF/d3FjG
 pBK2m+lWL0r1BLm5Gtb9ETsRMtvuyi67pdjYMJFYbiJCLdt5a6ZblmXi3nlQMXTkR0L0RJwwvIu+L
 BA2P/0Z0zjeQSR2mvbRMrSpnBP8vK825qH5HqtRLCJfQUKEaXhikpyeX6bjW1W5pkNPX40KuZigg8
 yV0YzMxQw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34126)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jaywQ-0004u8-JM; Tue, 19 May 2020 10:53:42 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jaywE-0005ca-M1; Tue, 19 May 2020 10:53:30 +0100
Date: Tue, 19 May 2020 10:53:30 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Message-ID: <20200519095330.GA1551@shell.armlinux.org.uk>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509202050.GK1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_025435_258545_BAB86F07 
X-CRM114-Status: GOOD (  37.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sat, May 09, 2020 at 09:20:50PM +0100, Russell King - ARM Linux admin wrote:
> On Sat, May 09, 2020 at 08:52:46PM +0100, Russell King - ARM Linux admin wrote:
> > It is highly likely that 895586d5dc32 is responsible for this breakage.
> > I've been investigating this afternoon, and what I've found, comparing
> > a kernel without 895586d5dc32 and with 895586d5dc32 applied is:
> > 
> > - The table programmed into the hardware via mvpp22_rss_fill_table()
> >   appears to be identical with or without the commit.
> > 
> > - When rxhash is enabled on eth2, mvpp2_rss_port_c2_enable() reports
> >   that c2.attr[0] and c2.attr[2] are written back containing:
> > 
> >    - with 895586d5dc32, failing:    00200000 40000000
> >    - without 895586d5dc32, working: 04000000 40000000
> > 
> > - When disabling rxhash, c2.attr[0] and c2.attr[2] are written back as:
> > 
> >    04000000 00000000
> > 
> > The second value represents the MVPP22_CLS_C2_ATTR2_RSS_EN bit, the
> > first value is the queue number, which comprises two fields.  The high
> > 5 bits are 24:29 and the low three are 21:23 inclusive.  This comes
> > from:
> > 
> >        c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
> >                      MVPP22_CLS_C2_ATTR0_QLOW(ql);
> > #define     MVPP22_CLS_C2_ATTR0_QHIGH(qh)       (((qh) & 0x1f) << 24)
> > #define     MVPP22_CLS_C2_ATTR0_QLOW(ql)        (((ql) & 0x7) << 21)
> > 
> > So, the working case gives eth2 a queue id of 4.0, or 32 as per
> > port->first_rxq, and the non-working case a queue id of 0.1, or 1.
> > 
> > The allocation of queue IDs seems to be in mvpp2_port_probe():
> > 
> >         if (priv->hw_version == MVPP21)
> >                 port->first_rxq = port->id * port->nrxqs;
> >         else
> >                 port->first_rxq = port->id * priv->max_port_rxqs;
> > 
> > Where:
> > 
> >         if (priv->hw_version == MVPP21)
> >                 priv->max_port_rxqs = 8;
> >         else
> >                 priv->max_port_rxqs = 32;
> > 
> > Making the port 0 (eth0 / eth1) have port->first_rxq = 0, and port 1
> > (eth2) be 32.  It seems the idea is that the first 32 queues belong to
> > port 0, the second 32 queues belong to port 1, etc.
> > 
> > mvpp2_rss_port_c2_enable() gets the queue number from it's parameter,
> > 'ctx', which comes from mvpp22_rss_ctx(port, 0).  This returns
> > port->rss_ctx[0].
> > 
> > mvpp22_rss_context_create() is responsible for allocating that, which
> > it does by looking for an unallocated priv->rss_tables[] pointer.  This
> > table is shared amongst all ports on the CP silicon.
> > 
> > When we write the tables in mvpp22_rss_fill_table(), the RSS table
> > entry is defined by:
> > 
> > 		u32 sel = MVPP22_RSS_INDEX_TABLE(rss_ctx) |
> >                           MVPP22_RSS_INDEX_TABLE_ENTRY(i);
> > 
> > where rss_ctx is the context ID (queue number) and i is the index in
> > the table.
> > 
> > #define     MVPP22_RSS_INDEX_TABLE_ENTRY(idx)   (idx)
> > #define     MVPP22_RSS_INDEX_TABLE(idx)         ((idx) << 8)
> > #define     MVPP22_RSS_INDEX_QUEUE(idx)         ((idx) << 16)
> > 
> > If we look at what is written:
> > 
> > - The first table to be written has "sel" values of 00000000..0000001f,
> >   containing values 0..3. This appears to be for eth1.  This is table 0,
> >   RX queue number 0.
> > - The second table has "sel" values of 00000100..0000011f, and appears
> >   to be for eth2.  These contain values 0x20..0x23.  This is table 1,
> >   RX queue number 0.
> > - The third table has "sel" values of 00000200..0000021f, and appears
> >   to be for eth3.  These contain values 0x40..0x43.  This is table 2,
> >   RX queue number 0.
> > 
> > Okay, so how do queue numbers translate to the RSS table?  There is
> > another table - the RXQ2RSS table, indexed by the MVPP22_RSS_INDEX_QUEUE
> > field of MVPP22_RSS_INDEX and accessed through the MVPP22_RXQ2RSS_TABLE
> > register.  Before 895586d5dc32, it was:
> > 
> >        mvpp2_write(priv, MVPP22_RSS_INDEX,
> >                    MVPP22_RSS_INDEX_QUEUE(port->first_rxq));
> >        mvpp2_write(priv, MVPP22_RXQ2RSS_TABLE,
> >                    MVPP22_RSS_TABLE_POINTER(port->id));
> > 
> > and after:
> > 
> >        mvpp2_write(priv, MVPP22_RSS_INDEX, MVPP22_RSS_INDEX_QUEUE(ctx));
> >        mvpp2_write(priv, MVPP22_RXQ2RSS_TABLE, MVPP22_RSS_TABLE_POINTER(ctx));
> > 
> > So, before the commit, for eth2, that would've contained '32' for the
> > index and '1' for the table pointer - mapping queue 32 to table 1.
> > Remember that this is queue-high.queue-low of 4.0.
> > 
> > After the commit, we appear to map queue 1 to table 1.  That again
> > looks fine on the face of it.
> > 
> > Section 9.3.1 of the A8040 manual seems indicate the reason that the
> > queue number is separated.  queue-low seems to always come from the
> > classifier, whereas queue-high can be from the ingress physical port
> > number or the classifier depending on the MVPP2_CLS_SWFWD_PCTRL_REG.
> > 
> > We set the port bit in MVPP2_CLS_SWFWD_PCTRL_REG, meaning that queue-high
> > comes from the MVPP2_CLS_SWFWD_P2HQ_REG() register... and this seems to
> > be where our bug comes from.
> > 
> > mvpp2_cls_oversize_rxq_set() sets this up as:
> > 
> >         mvpp2_write(port->priv, MVPP2_CLS_SWFWD_P2HQ_REG(port->id),
> >                     (port->first_rxq >> MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS));
> > 
> >         val = mvpp2_read(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG);
> >         val |= MVPP2_CLS_SWFWD_PCTRL_MASK(port->id);
> >         mvpp2_write(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG, val);
> > 
> > so, the queue-high for eth2 is _always_ 4, meaning that only queues
> > 32 through 39 inclusive are available to eth2.  Yet, we're trying to
> > tell the classifier to set queue-high, which will be ignored, to zero.
> > 
> > So we end up directing traffic from eth2 not to queue 1, but to queue
> > 33, and then we tell it to look up queue 33 in the RSS table.  However,
> > RSS table has not been programmed for queue 33, and so it ends up
> > (presumably) dropping the packets.
> > 
> > It seems that mvpp22_rss_context_create() doesn't take account of the
> > fact that the upper 5 bits of the queue ID can't actually be changed
> > due to the settings in mvpp2_cls_oversize_rxq_set(), _or_ it seems
> > that mvpp2_cls_oversize_rxq_set() has been missed in this commit.
> > Either way, these two functions mutually disagree with what queue
> > number should be used.
> > 
> > So, 895586d5dc32 is indeed the cause of this problem.
> 
> Looking deeper into what mvpp2_cls_oversize_rxq_set() and the MTU
> validation is doing, it seems that MVPP2_CLS_SWFWD_P2HQ_REG() is
> used for at least a couple of things.
> 
> So, with the classifier having had RSS enabled and directing eth2
> traffic to queue 1, we can not ignore the fact that we may have
> packets appearing on queue 32 for this port.
> 
> One of the things that queue 32 will be used for is if an over-sized
> packet attempts to egress through eth2 - it seems that the A8040 has
> the ability to forward frames between its ports.  However, afaik we
> don't support that feature, and the kernel restricts the packet size,
> so we should never violate the MTU validator and end up with such a
> packet.  In any case, _if_ we were to attempt to transmit an oversized
> packet, we have no support in the kernel to deal with that appearing
> in the port's receive queue.
> 
> Maybe it would be safe to clear the MVPP2_CLS_SWFWD_PCTRL_MASK() bit?
> 
> My testing seems to confirm my findings above - clearing this bit
> means that if I enable rxhash on eth2, the interface can then pass
> traffic, as we are now directing traffic to RX queue 1 rather than
> queue 33.  Traffic still seems to work with rxhash off as well.
> 
> So, I think it's clear where the problem lies, but not what the correct
> solution is; someone with more experience of packet classifiers (this
> one?) needs to look at this - this is my first venture into these
> things, and certainly the first time I've traced through how this is
> trying to work (or not)...

This is what I was using here to work around the problem, and what I
mentioned above.

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index fd221d88811e..0dd3b65822dd 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1058,7 +1058,7 @@ void mvpp2_cls_oversize_rxq_set(struct mvpp2_port *port)
 		    (port->first_rxq >> MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS));
 
 	val = mvpp2_read(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG);
-	val |= MVPP2_CLS_SWFWD_PCTRL_MASK(port->id);
+	val &= ~MVPP2_CLS_SWFWD_PCTRL_MASK(port->id);
 	mvpp2_write(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG, val);
 }
 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
