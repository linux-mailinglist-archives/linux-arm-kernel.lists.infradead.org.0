Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007371370BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:08:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0LcnKEZM1hRwzHFIxabO4R7HBXKYCtKAv7tP4OKni4=; b=PLe2Hsp2nFzSqH
	UwIwvf2d28fjxbWkfYNGcBjzy450hSSxYg2QpjK07i8brNZdJTXmKl6IyBKVkt7HgoZ9T3YkfpXI/
	6VYMLpp72o1xvhTagO3KvkqWC+jl8OqEfdPJvTHYaCzmxa3V1/eoNvwUto+9ZORRxu9fa7f8a1JpM
	HGuOu7Y1yLF+o+hd6MQ4+pLnsuMiaKvyFBVP1Hqf6uEPCehiLTYe/cGr1MU2BaKkQSKEDT/xZYSO3
	9gxStxrDY0e/c1lgW619FOQPKalAKXpXtyghlZyR+PPkLyqvFgFjpn5hrVoz8WqOn1hu1ry2nQq4/
	oqZbaF+QcIN/9tbNAY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvu7-000796-QL; Fri, 10 Jan 2020 15:08:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvtz-00078R-Ux
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:08:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15CEA30E;
 Fri, 10 Jan 2020 07:08:43 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF6973F6C4;
 Fri, 10 Jan 2020 07:08:41 -0800 (PST)
Date: Fri, 10 Jan 2020 15:08:36 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
Message-ID: <20200110150836.1f92a0a8@donnerap.cambridge.arm.com>
In-Reply-To: <20200110142250.GH19739@lunn.ch>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-13-andre.przywara@arm.com>
 <20200110140852.GF19739@lunn.ch>
 <20200110141303.2e5863ab@donnerap.cambridge.arm.com>
 <20200110142250.GH19739@lunn.ch>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_070844_080074_02E221D5 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:22:50 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

Hi,

> On Fri, Jan 10, 2020 at 02:13:03PM +0000, Andre Przywara wrote:
> > On Fri, 10 Jan 2020 15:08:52 +0100
> > Andrew Lunn <andrew@lunn.ch> wrote:
> > 
> > Hi Andrew,
> > 
> > thanks for having a look!
> >   
> > > > To autodetect this configuration, at probe time we write all 1's to such
> > > > an MSB register, and see if any bits stick.    
> > > 
> > > So there is no register you can read containing the IP version?  
> > 
> > There is, and I actually read this before doing this check. But the 64-bit DMA capability is optional even in this revision. It depends on what you give it as the address width. If you say 32, the IP config tool disables the 64-bit capability completely, so it stays compatible with older revisions.
> > Anything beyond 32 will enable the MSB register and will also require you to write to them.  
> 
> So you are saying there is no way to enumerate the synthesised
> configuration of the IP. Great :-(

Apparently not.

> Do Xilinx at least document you can discover the DMA size by writing
> into these upper bits? Does Xilinx own 'vendor crap' driver do this?

So far I couldn't be bothered to put my asbestos trousers on and go into BSP land ;-)
Now quickly browsing the linux-xlnx github repo suggests they make this MSB register access dependent on CONFIG_PHYS_ADDR_T_64BIT. Which would mean:
- A 32-bit kernel on a device configured for >32 bit DMA would not work.
- They always write to the MSB registers on 64-bit and (L)PAE kernels.

The DMA mask is set to the value of the xlnx,addrwidth, in a similar way I did it in the next patch. Minus the safety check for the 64-bit DMA capability.

I got this idea of probing when I saw that those registers are marked as "Reserved" in earlier revisions of the documentation. I couldn't find an exact definition of "Reserved" in that manual, though.
Then I confirmed that behaviour by testing this on an image configured for only a 32 bit wide address bus, where those registers are apparently hardwired to zero.

So if you were hoping for an official blessing, I have to disappoint you ;-)

We could rely completely on the addrwidth property, at the price of it not working when the IP is configured for >32 bits, but the addrwidth property is missing or erroneously set to 32. But I think their:
struct xxx { ....
	phys_addr_t next;	/* Physical address of next buffer descriptor */
#ifndef CONFIG_PHYS_ADDR_T_64BIT
	u32 reserved1;
#endif

construct is broken, and we should not copy this. Also they do writeq to this register, not sure that's the right thing to do.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
