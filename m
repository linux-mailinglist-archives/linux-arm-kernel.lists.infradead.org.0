Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FC15C1A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 19:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuzNWm8axEnra4Tz16gCkTSEMrCY9fpxvho8FTmIdWE=; b=H5+AwN1GMP0ZA6
	Nn9viPGMgmHCE4kgxhwNzPthE+82zIEOjFAL+cuL+Q2oTs6mKQFuxVBM6lhyNIBrm+/6BHQuZ6yO4
	h0j8AQXOAqHcaWircndQho//m+iHHE8nuHtfvZq4EdFP1pHTWcMv1FR8PBSjp58M9LbP14IMdL65P
	90m/UKfaQUj/94KHIn2i1k3CRQ1EueOPFwtd8olviZ1kt/iTZhAa6Tol91LPKRVes8m+WcW0EHyD0
	31QR+5vbJJTexy8UaQetFK0ymM/T5tu+WamgAafl4dPkTyrw5F17VGwXJDiYSifMCyWbY29vUkMyc
	w2GT97uireGjbn6qmW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzhc-0006E0-IO; Mon, 01 Jul 2019 17:02:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzhU-0006DO-LB
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 17:02:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B8E621721;
 Mon,  1 Jul 2019 17:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562000563;
 bh=II2Jf2pNDbd0s5JMhTlbcxwH6Bk/SNuU/ykYA4KIAZA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ammzUlm18IxuOBkz97uLHm/H+2wb6OsJECZHOpVn8+4aAYGv6rV37Q1dIloW9uUq8
 4IpLok2//Ii7+v2TMx2WpendWYZiDoiKNraL+lAFuswmAGYxQ59isq9I1htEn4GCw/
 DVMLnzr9wOSK+I+Iknby1fiV8sNez+1h7K37G2CA=
Date: Mon, 1 Jul 2019 18:02:38 +0100
From: Will Deacon <will@kernel.org>
To: "Saidi, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH 0/3] Add support for Graviton TRNG
Message-ID: <20190701170237.druloljv4yoanv5i@willie-the-truck>
References: <20190604203100.15050-1-alisaidi@amazon.com>
 <20190605122031.GK15030@fuggles.cambridge.arm.com>
 <7EC45708-38A1-4826-BC82-298EFAAE30B1@amazon.com>
 <3104F396-094F-454C-8308-BF651FAB99AB@amazon.com>
 <20190701082805.pifv4attux4mddld@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701082805.pifv4attux4mddld@willie-the-truck>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_100244_707192_AEE62FBF 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 marc.zyngier@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Rindjunsky,
 Ron" <ronrindj@amazon.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, "Woodhouse,
 David" <dwmw@amazon.co.uk>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Marc]

On Mon, Jul 01, 2019 at 09:28:06AM +0100, Will Deacon wrote:
> [Note: this was in my spam folder]
> 
> On Fri, Jun 28, 2019 at 06:05:10PM +0000, Saidi, Ali wrote:
> > On 6/7/19, 7:59 AM, " Ali Saidi" <alisaidi@amazon.com> wrote:
> >     On 6/5/19, 7:20 AM, "Will Deacon" <will.deacon@arm.com> wrote:
> >         On Tue, Jun 04, 2019 at 08:30:57PM +0000, Ali Saidi wrote:
> >         > AWS Graviton based systems provide an Arm SMC call in the vendor defined
> >         > hypervisor region to read random numbers from a HW TRNG and return them to the
> >         > guest. 
> >         > 
> >         > We've observed slower guest boot and especially reboot times due to lack of
> >         > entropy and providing access to a TRNG is meant to address this. 
> >         
> >         Curious, but why this over something like virtio-rng?
> >         
> >     This interface allows us to provide the functionality from both EL2
> >     and EL3 and support multiple different types of our instances which we
> >     unfortunately can't do with virt-io.
> >     
> > Any additional comments?
> > Do you know when you'll have a chance to rebase arm64/smccc-cleanup?
> 
> Sorry, Ali, this slipped through the cracks. Marc and I will chat today and
> look at respinning what we had before; it should then hopefully be
> straightforward enough for you to take that as a base for what you want to
> do.

Ok, I hacked on this a bit today and hopefully you can use this as a
starting point:

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=kvm/hvc

I haven't given it any real testing, so apologies for the bugs.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
