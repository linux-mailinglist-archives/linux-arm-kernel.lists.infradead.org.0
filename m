Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848A664497
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOvW76qn8sWluMB3p9fCVdUcYUKIbKAgKgS7n+LyulY=; b=WEv4V/tKFlxbJr
	oOM92iNE6r2qtip+efsOB80XrOYKwJXFD30a8NPx0jiIxwYyTNMxQNexgCeobvbk2CddP4GXv6c58
	6EHP40DOYaXpHSDEEw4nPedwRvbAN2ZqMDNp/9quFulY0HMOlX9ntfTYNUOZNGwbro470muDjXvMd
	X0HBSwWqwCaVlOCRCLFHJoYQPQoTmmWt64MPsjwMsdSJNXLcn9Xa4WKBCkvajrq3BXvy0CyAnmSWn
	Yg8NP5SkLmaIBiAbZista5X5u6nlFxekVopVf+I8Uxkt3cWCjZVVWuL7scmy1RWV16khoAsAwBPeV
	S04yv18IelLodTb43R4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9BT-0001Ua-7Q; Wed, 10 Jul 2019 09:46:43 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9BF-00005L-Md; Wed, 10 Jul 2019 09:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j/WSDXca8rXK9NsDZMmI4ZGVD5lmMYmQNn9cX+c1P0c=; b=SuuW/7NN1z53N126yQd0mfU0n
 ntWsBeL22jFfrqe6UV7yYYjaWAb/mGvo82v/VpffWPeHAXC8qvHdMVqjvTeqQYorTqKjPyjcVkd0Y
 ehhidoReYAcrBOGYvK5hg+mxgyuD5Njr2SLIjID07Kvs0w8adz+Czb2UlD+NlXUjcnJQShORaFQ6X
 Xl3J1vYZGJzoNp6wHmHn8OimwqiNyO9IG6bSDFpjxItLMpKnIWdEU05QuowI2tkahamV/uty376Ez
 mf5JMQomwfeTQc+3SQ9pZj0NiYOkjfuIR3hSKUK/aQunmlQ7Q5KSFX7XpTfFzFgMc9EjJ+4N1wSfg
 nEpyIjNkA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59340)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hl98c-0005tt-RN; Wed, 10 Jul 2019 10:43:47 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hl98T-0003nw-5z; Wed, 10 Jul 2019 10:43:37 +0100
Date: Wed, 10 Jul 2019 10:43:37 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 00/12] treewide: Fix GENMASK misuses
Message-ID: <20190710094337.wf2lftxzfjq2etro@shell.armlinux.org.uk>
References: <cover.1562734889.git.joe@perches.com>
 <5fa1fa6998332642c49e2d5209193ffe2713f333.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5fa1fa6998332642c49e2d5209193ffe2713f333.camel@sipsolutions.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_024629_747276_10950746 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, linux-mmc@vger.kernel.org,
 alsa-devel@alsa-project.org, Benjamin Fair <benjaminfair@google.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, Nancy Yuen <yuenn@google.com>,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 netdev@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-amlogic@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 11:17:31AM +0200, Johannes Berg wrote:
> On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> > These GENMASK uses are inverted argument order and the
> > actual masks produced are incorrect.  Fix them.
> > 
> > Add checkpatch tests to help avoid more misuses too.
> > 
> > Joe Perches (12):
> >   checkpatch: Add GENMASK tests
> 
> IMHO this doesn't make a lot of sense as a checkpatch test - just throw
> in a BUILD_BUG_ON()?

My personal take on this is that GENMASK() is really not useful, it's
just pure obfuscation and leads to exactly these kinds of mistakes.

Yes, I fully understand the argument that you can just specify the
start and end bits, and it _in theory_ makes the code more readable.

However, the problem is when writing code.  GENMASK(a, b).  Is a the
starting bit or ending bit?  Is b the number of bits?  It's confusing
and causes mistakes resulting in incorrect code.  A BUILD_BUG_ON()
can catch some of the cases, but not all of them.

For example:

	GENMASK(6, 2)

would satisify the requirement that a > b, so a BUILD_BUG_ON() will
not trigger, but was the author meaning 0x3c or 0xc0?

Personally, I've decided I am _not_ going to use GENMASK() in my code
because I struggle to get the macro arguments correct - I'm _much_
happier, and it is way more reliable for me to write the mask in hex
notation.

I think this is where use of a ternary operator would come in use.  The
normal way of writing a number of bits tends to be "a:b", so if GENMASK
took something like GENMASK(6:2), then I'd have less issue with it,
because it's argument is then in a familiar notation.

Yes, I'm sure that someone will point out that the GENMASK arguments
are just in the same order, but that doesn't prevent _me_ frequently
getting it wrong - and that's the point.  The macro seems to me to
cause more problems than it solves.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
