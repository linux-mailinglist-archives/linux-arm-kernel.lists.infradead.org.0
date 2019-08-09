Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D82D882B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 20:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6fyfb01qXfCCEbOCKuY7yrpaDniOcIpqTdGME402lQ=; b=fssHqSEsOlrWkZ
	RVYRtYWCjsoiRxF/OYK++JdFpCixS4zTqtq4DTDeyWmxBXTvLgRZCiGJfg6m2xLa8I65TTADQQaP6
	9gtNLeZeLuUh+qHsATXn7N7nufKDfJJvCLo53zqVTOwBJ2eenRQHr6rzD5Z6tAPlsNqjSeUDeBpKz
	ULQIuxoI34l6OYGx1Jr0+5N6PRgpuhQ8Q1ovPjdAzHOKm7Y06prfvclHQdilEdV8SxsavpPps4E/M
	JOy9vxPMIOykuMgZZO7FQqiTzLP6HEoRXpEwbeI1QEvnk08+6Ns1X5171UwSUs49tdwYSxCmM01Ql
	9H8sq70kGxbhKfms5k6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw9le-0000vx-Ax; Fri, 09 Aug 2019 18:37:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw9lV-0000uX-Ml
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 18:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IGx1tU/8oZZB3pB47GcI0li+Dcw0am8UumHeTJgqBsA=; b=FI1vTkLp5g159Uj8cKQ9M9yPg
 5o1Cnqp19oMJ6nrpK4zw0M1TH8cDtseJ969So98LRY7NxqWnT2GtIvCesWJy5YogAvFlQcwVLFf9m
 MdzBWgIc6Eqi9mNeGKEbCZ9AbhgxE+I9yycgXHBgxA5104BGeZr1YZid8L4JBbwIYV/BtyAyk1euz
 KwZgttgdk5EEc6iqpUf2Bvj3Duy/uTnZNEIAJhQsO9IeHKI/u7syQ7tOl0+F2VQniPR2YGbBcT+Ft
 8Xy5MdDaQ7/hyU4s3LkVh3XzSZpYapT3CopyQgW0n2gy4ZTERYvKaCunp9i2GpwSUkZmulS+XvQ7r
 dl2HpuDSQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42960)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hw9lA-0003Lr-PB; Fri, 09 Aug 2019 19:37:04 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hw9l4-0003t7-5w; Fri, 09 Aug 2019 19:36:58 +0100
Date: Fri, 9 Aug 2019 19:36:58 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
Message-ID: <20190809183658.GA13294@shell.armlinux.org.uk>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_113725_740746_A499F2CE 
X-CRM114-Status: GOOD (  17.52  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, soc@kernel.org,
 linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 Martin Michlmayr <tbm@cyrius.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 11:34:12AM -0700, Dan Williams wrote:
> [ add Martin (if cyrius.com address is still valid) ]
> 
> On Fri, Aug 9, 2019 at 9:35 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > There are three families of IOP machines we support in Linux: iop32x
> > (which includes EP80219), iop33x and iop13xx (aka IOP34x aka WP8134x).
> >
> > All products we support in the kernel are based on the first of these,
> > iop32x, the other families only ever supported the Intel reference
> > boards but no actual machine anyone could ever buy.
> >
> > While one could clearly make them all three work in a single kernel
> > with some work, this takes the easy way out, removing the later two
> > platforms entirely, under the assumption that there are no remaining
> > users.
> >
> > Earlier versions of OpenWRT and Debian both had support for iop32x
> > but not the others, and they both dropped iop32x as well in their 2015
> > releases.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> > I'm just guessing that iop32x is still needed, and the other two are
> > not. If anyone disagrees with that assessment, let me know so we
> > can come up with an alternative approach.
> 
> I'm not sure who would scream if iop32x support went away as well, but
> I have not followed this space in years hence copying Martin.
> 
> In any event:
> 
> Acked-by: Dan Williams <dan.j.williams@intel.com>

Those of us who have and still run Thecus N2100's, for example?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
