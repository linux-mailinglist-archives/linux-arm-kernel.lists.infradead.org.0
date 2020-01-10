Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EBC136F40
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4u7WBz/kVyxOSSN9hhCSWFmnMwq4CYV3z/FOBIANrY=; b=g2yHeesngjYA1t
	H+dfjq4PAR2ao3H6uoDl6POYDtGqooPYf9a6xgGGdzAJwbQujUKQQR2uocVlW5T1F3t2Wo/DdLqX8
	eakU7xRoOj7pyQyu2NqhvaUXv4N9aQUrszyt1db2jlzcmQ51bijZfpL0kQS9aKymiE7EHqNlQYZwb
	FXw2KgWTjtOv98gsU74Kl+wz9MmbuLDCEeA1vtAk64ajgF8QrGDV0uIWUCSnzfEdmCK58TyIJawdR
	oinvBRwWk5gmdHIxBObm92/R7dUJPfMPR8S9/zw+CKYxFfiKilD9LtA+pWZxXoJDaEIW8NRoOYVJp
	zdW3nDTS269Q+Wekf5Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvBo-0004j4-1h; Fri, 10 Jan 2020 14:23:04 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvBh-0004ig-C1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:22:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/LqUWTGBt5gIEmNEJ7QzFyPyiWRNbMxwiltxq0x8igc=; b=Gp+lCFbhq8KoEC210hcrrMI+wF
 0JmIiELjl9bsPWXOe+seRjm5/SPB27amgsTcYWk3K7slz6nTL7Ap4HOtQKZQxxSen6qMer/4I6JEo
 yAvQ+UulpPXYSX6w61WiKyIYOL/UICkN8rDzumQnp6aSzIjQp9ojDzMowUF4uRGZOLNk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ipvBa-0007bd-5w; Fri, 10 Jan 2020 15:22:50 +0100
Date: Fri, 10 Jan 2020 15:22:50 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
Message-ID: <20200110142250.GH19739@lunn.ch>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-13-andre.przywara@arm.com>
 <20200110140852.GF19739@lunn.ch>
 <20200110141303.2e5863ab@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110141303.2e5863ab@donnerap.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_062257_405670_05B40542 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:13:03PM +0000, Andre Przywara wrote:
> On Fri, 10 Jan 2020 15:08:52 +0100
> Andrew Lunn <andrew@lunn.ch> wrote:
> 
> Hi Andrew,
> 
> thanks for having a look!
> 
> > > To autodetect this configuration, at probe time we write all 1's to such
> > > an MSB register, and see if any bits stick.  
> > 
> > So there is no register you can read containing the IP version?
> 
> There is, and I actually read this before doing this check. But the 64-bit DMA capability is optional even in this revision. It depends on what you give it as the address width. If you say 32, the IP config tool disables the 64-bit capability completely, so it stays compatible with older revisions.
> Anything beyond 32 will enable the MSB register and will also require you to write to them.

So you are saying there is no way to enumerate the synthesised
configuration of the IP. Great :-(

Do Xilinx at least document you can discover the DMA size by writing
into these upper bits? Does Xilinx own 'vendor crap' driver do this?

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
