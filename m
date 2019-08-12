Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A49589A5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9zG6axylhoZ7n4DFeKllKFl2L3PFtdA77DnWUmiSLA=; b=VYigy65/UMNDar
	o/yEJ4QHkcsus2gG+AieS0DIITygrePuglmIgQDuFJwNQJdRn15JtH3UFQVG8gaQqE3a8w/AIny9o
	QdrolYlf+onryFFYiCE7/vQG5dcMw6U3UmKTc2MiXVVBD0U+CGux3fW4vWPV1wiM/lMqTzXzhzM2B
	A3XSFbR6YgEd2qHJSFRiB7PugdN/9ylVRH5syAQp+bVEG1Wr2V9mpkw91JdFppV9k31P2kP2P2fG+
	C+8rFkqS0Qa5LbVu7ywkGx1zzxm+m7DJQCoGQiBkWdAZxIXVTzhlcsaZxurAbhBmkC91N5GXC25HD
	v8XpIdOlmhFUEuQyZ7aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6w1-0005u5-2K; Mon, 12 Aug 2019 09:48:13 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6sy-0001uk-0s
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:45:06 +0000
X-Originating-IP: 91.118.195.70
Received: from jirafa.cyrius.com (91-118-195-70.static.upcbusiness.at
 [91.118.195.70]) (Authenticated sender: tbm@cyrius.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id DA1BF40003;
 Mon, 12 Aug 2019 09:44:56 +0000 (UTC)
Received: by jirafa.cyrius.com (Postfix, from userid 1000)
 id 58518A887E; Mon, 12 Aug 2019 11:44:56 +0200 (CEST)
Date: Mon, 12 Aug 2019 11:44:56 +0200
From: Martin Michlmayr <tbm@cyrius.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
Message-ID: <20190812094456.GI10598@jirafa.cyrius.com>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_024504_269689_486E60BE 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Teichmann <lists@peter-teichmann.de>, Arnd Bergmann <arnd@arndb.de>,
 linux-gpio@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Dan Williams <dan.j.williams@intel.com> [2019-08-09 11:34]:
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

I believe iop13xx were mostly Intel dev boards.  I'm not aware of any
major devices based on iop33x.

As Arnd points out, Debian used to have support for various iop32x
devices.  While Debian hasn't supported iop32x in a number of years,
these devices are still usable and in use (RMK being a prime example).

So I think it's safe to drop iop33x/iop13xx while retaining support
for iop32x.

As I was looking at my email archives, I saw an email from Peter
Teichmann who was working on an iop33x based platform (around 2009) so
I've copied him as well.

> In any event:
> 
> Acked-by: Dan Williams <dan.j.williams@intel.com>

Acked-by: Martin Michlmayr <tbm@cyrius.com>

-- 
Martin Michlmayr
https://www.cyrius.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
