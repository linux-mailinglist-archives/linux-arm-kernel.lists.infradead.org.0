Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145788926F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 18:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKugPBSsMV+1wzAhJB2oEyqC9vuLKPPhRkrNaejs0WY=; b=pORHJx23gkJntn
	Rx7Tlm4ztZ8QkyXay6CnypBUlAfATbFD1wI7OZU9OrvcpKBeNAaEoUwh+97eDXJA1Osevu/dvVsjV
	DreaxZ6Zce8XfVIe2wX0w/7JBX+QApHRY5Cr5VTAErd+rXiktjoWTXqPpDzoAb/mLoq3yQLVnklJv
	88knUyoGw7oiYrYfBzuCizNfV4MdFKMNJx8VjGPOUtqPXb48TFWcDu58C5K6n7S18zw69sg8iuLE0
	GcX7wRKgnLPzcvlnRcalUpTALoGgTBZsTxdoVAN9dC2HKPY3jGiLouvgb3xEwiiguWv9Tb6gpoLvd
	dhZ8knNgXBffMdvOWWhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwqJQ-0003FH-Jj; Sun, 11 Aug 2019 16:03:16 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwqJL-0003Et-1T
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 16:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X8vY8SU32ylGHmsaMJSxRXMQ4AplM5ck8Z9fOiI/VVU=; b=he7g9m19SQBkXvaTUxHONOAJB9
 SgctLxfkW1E3PRFxDIdwX02eIxoJHJygoovruMY/dLF6ZD3Aj7hWCzT4lm1NNQ1dO6IShokyz+3bp
 82gI7kyReD7cZ5tdwPAljDzP41MQf+L0CF8mIetKufw2zYO66rGvxRzfHr8MaccsQHZY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hwqJE-00046n-BI; Sun, 11 Aug 2019 18:03:04 +0200
Date: Sun, 11 Aug 2019 18:03:04 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [BUG] fec mdio times out under system stress
Message-ID: <20190811160304.GD14290@lunn.ch>
References: <20190811133707.GC13294@shell.armlinux.org.uk>
 <CA+h21hqkVoQWRweKKCFdvLLOLyP4gEtXQvJ9CO_J7i+YQW+TWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hqkVoQWRweKKCFdvLLOLyP4gEtXQvJ9CO_J7i+YQW+TWw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_090311_236920_1236F152 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev <netdev@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Hubert Feurstein <h.feurstein@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I think a better question is why is the FEC MDIO controller configured
> to emit interrupts anyway (especially since the API built on top does
> not benefit in any way from this)? Hubert (copied) sent an interesting
> email very recently where he pointed out that this is one of the main
> sources of jitter when reading the PTP clock on a Marvell switch
> attached over MDIO.

Hi Vladimir

One reason is runtime power management.

For a write operation, you could set it going and return
immediately. Many drivers do, and then when the next read/write
operation comes along, they poll in a loop waiting for the device to
go idle, if it was still busy from the last operation.

However, FEC supports runtime PM. When an MDIO read/write call is
made, it calls runtime PM functions to indicate the device is active.
Once it has completed the MDIO transaction, it calls runtime PM
functions to indicate the device is inactive. These transitions can
cause clocks to be enabled/disabled. If we don't wait around for the
operation to complete, the clock could be disabled too early, and bad
things would happen.

You could replace the interrupt with a sleeping poll, but my guess
would be, that has more jitter than using an interrupt.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
