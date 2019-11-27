Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BB310B67F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUntGEUeS5m0lUO4DM+4B1P0sTHE/kD6lJczhvDbtFA=; b=hzIH20cGsq98Ix
	5STlPM54myJASG8Uzk+8CM/O63oEjgugVqxI9iZifypm4r32258iXQi8brU7AgCCiMMoGQnyDsueq
	78rrdO3+q3iEG1GKRbnqCvOu/+78Dd1FXrode5fKeUQ48Pc0+lZPnNh7buHHURMddPhzmzYdfis5d
	rjF9IVBiOwdZo/YMukFcqhyNain5LbWMkH98xMP8qlMEGdJNGFSpJ1zKVq2iXnbezMaG/pQYxe3+y
	9eA3yoHG8rnifpiZyjDddlQ8cYcSk1ePc7MzsTvAiu3U4azCHY+H/P35t3XKLVJzRvW7p0wwmBMV1
	/kfdQS9gIeuWsj4yplig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2ju-0004lS-OD; Wed, 27 Nov 2019 19:12:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2jj-0004l2-H2; Wed, 27 Nov 2019 19:12:28 +0000
Received: from localhost (unknown [5.29.147.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0161920835;
 Wed, 27 Nov 2019 19:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574881946;
 bh=Kf/5NxHVSIFobJHUMSeX3+TDTrwFmhqNDPHnh0UqOdo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dOoHu5JumTuxbJrzjRT3hV4JQEzObfh08t9Z+gODcqAdZKzTi4Eu2kHYBAqXfytVF
 nx4i0mymUmYUqUxEpczT4vsroGXuejjIhI9UFlrKBajfdiZ6vo416fak1GdlKtMrhH
 gHlhrhf3LFVTjSrZaGYZziBl9P1P1NEba5MVXgvk=
Date: Wed, 27 Nov 2019 21:12:23 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 1/7] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
Message-ID: <20191127191223.GF10331@unreal>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-2-nsaenzjulienne@suse.de>
 <20191126125137.GA10331@unreal>
 <6e0b9079-9efd-2884-26d1-3db2d622079d@arm.com>
 <b30002d48c9d010a1ee81c16cd29beee914c3b1d.camel@suse.de>
 <c08863a7-49c6-962e-e968-92adb8ee2cc9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c08863a7-49c6-962e-e968-92adb8ee2cc9@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_111227_608849_67D7E4F1 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Hanjun Guo <guohanjun@huawei.com>,
 Frank Rowand <frowand.list@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, f.fainelli@gmail.com,
 linux-rockchip@lists.infradead.org, linux-rdma@vger.kernel.org, maz@kernel.org,
 phil@raspberrypi.org, linux-acpi@vger.kernel.org, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 wahrenst@gmx.net, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, andrew.murray@arm.com,
 "David S. Miller" <davem@davemloft.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 07:06:12PM +0000, Robin Murphy wrote:
> On 27/11/2019 6:24 pm, Nicolas Saenz Julienne wrote:
> > On Wed, 2019-11-27 at 18:06 +0000, Robin Murphy wrote:
> > > On 26/11/2019 12:51 pm, Leon Romanovsky wrote:
> > > > On Tue, Nov 26, 2019 at 10:19:39AM +0100, Nicolas Saenz Julienne wrote:
> > > > > Some users need to make sure their rounding function accepts and returns
> > > > > 64bit long variables regardless of the architecture. Sadly
> > > > > roundup/rounddown_pow_two() takes and returns unsigned longs. Create a
> > > > > new generic 64bit variant of the function and cleanup rougue custom
> > > > > implementations.
> > > >
> > > > Is it possible to create general roundup/rounddown_pow_two() which will
> > > > work correctly for any type of variables, instead of creating special
> > > > variant for every type?
> > >
> > > In fact, that is sort of the case already - roundup_pow_of_two() itself
> > > wraps ilog2() such that the constant case *is* type-independent. And
> > > since ilog2() handles non-constant values anyway, might it be reasonable
> > > to just take the strongly-typed __roundup_pow_of_two() helper out of the
> > > loop as below?
> > >
> > > Robin
> > >
> >
> > That looks way better that's for sure. Some questions.
> >
> > > ----->8-----
> > > diff --git a/include/linux/log2.h b/include/linux/log2.h
> > > index 83a4a3ca3e8a..e825f8a6e8b5 100644
> > > --- a/include/linux/log2.h
> > > +++ b/include/linux/log2.h
> > > @@ -172,11 +172,8 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
> > >     */
> > >    #define roundup_pow_of_two(n)			\
> > >    (						\
> > > -	__builtin_constant_p(n) ? (		\
> > > -		(n == 1) ? 1 :			\
> > > -		(1UL << (ilog2((n) - 1) + 1))	\
> > > -				   ) :		\
> > > -	__roundup_pow_of_two(n)			\
> > > +	(__builtin_constant_p(n) && (n == 1)) ?	\
> > > +	1 : (1UL << (ilog2((n) - 1) + 1))	\
> >
> > Then here you'd have to use ULL instead of UL, right? I want my 64bit value
> > everywhere regardless of the CPU arch. The downside is that would affect
> > performance to some extent (i.e. returning a 64bit value where you used to have
> > a 32bit one)?
>
> True, although it's possible that 1ULL might result in the same codegen if
> the compiler can see that the result is immediately truncated back to long
> anyway. Or at worst, I suppose "(typeof(n))1" could suffice, however ugly.
> Either way, this diff was only an illustration rather than a concrete
> proposal, but it might be an interesting diversion to investigate.
>
> On that note, though, you should probably be using ULL in your current patch
> too.
>
> > Also, what about callers to this function on platforms with 32bit 'unsigned
> > longs' that happen to input a 64bit value into this. IIUC we'd have a change of
> > behaviour.
>
> Indeed, although the change in such a case would be "start getting the
> expected value instead of nonsense", so it might very well be welcome ;)

Agree, if code overflowed with 32 bits before this change, the code was already
broken. At least now, it won't overflow.

>
> Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
