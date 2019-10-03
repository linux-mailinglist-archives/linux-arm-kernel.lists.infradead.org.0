Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985C2CB0AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lC2VC54t2hK7o9yZOoQtoV27uwaiQ7GnfLD7NjFB7+c=; b=DmUDlK5wdYS9Xr
	6vLYpPrVdXv4PJPbhpJQowdshONHVA8+J7Nu+ErzxYWJKdsNpQc7FSsXbGQgj9jSx71awUcaWRYvS
	qdB4tZSNa2NeDM6aqQMOe2P5THxvmubKwJBlon1omueNRQidyJeq0vTPV3b0HNz5dBheI9BEiLVCz
	jAocfpn9Gr+9IziBNbLD9aj5wGhmGOrTEKHLiRrhaznD/hj3wI8c3/wx+ACsgmsFFSQR0juXD2MjO
	8vAnC9CXH/xaJeXqvPtI89TH/ZCpRFX5Q1UIqhrl1/gjLhrBAgaMS73BSS/leegchuHZha9u/dfMj
	PbpOsW+yHSQhd8U8f+rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG8Ca-0001su-Sz; Thu, 03 Oct 2019 20:59:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8CG-0001mU-QH
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:59:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEB3421783;
 Thu,  3 Oct 2019 20:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570136376;
 bh=4rPkhVv3VltCH7eEROzE+860uR+lmofxgyA52H8gw0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dna1aFCt6gVcTc+4fmPTB4uadmfs7yI9pJ0SDKtN2T5SNiJWktxV+beMyzLsAgwWY
 OLy8QfHDcMBZEFiDU3TNXETv2BIjWhBSq46X/S6uZuBXEwP96RfLefXj4cxnO96bVB
 0RNdfSZz84UdxnExPCPXodKVZ6+yl7SNIkregb0o=
Date: Thu, 3 Oct 2019 21:59:32 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v5 2/6] arm64: vdso32: Detect binutils support for dmb
 ishld
Message-ID: <20191003205931.d3vp4bh7wdu4oe7u@willie-the-truck>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
 <20191003174838.8872-3-vincenzo.frascino@arm.com>
 <CAKwvOdmhyVHREHvyB0wL2GfMsE8GcJ1Ouj_8ifrR4hU8kBYukQ@mail.gmail.com>
 <20191003204944.6wuzflqkjdpawzvp@willie-the-truck>
 <CAKwvOdm4ccfhXDDSKXgdN4qkn2NHwAHKCwRV7OqLEG_PQj09vQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdm4ccfhXDDSKXgdN4qkn2NHwAHKCwRV7OqLEG_PQj09vQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135936_885387_8DD81307 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 01:56:39PM -0700, Nick Desaulniers wrote:
> On Thu, Oct 3, 2019 at 1:49 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, Oct 03, 2019 at 01:18:16PM -0700, Nick Desaulniers wrote:
> > > On Thu, Oct 3, 2019 at 10:48 AM Vincenzo Frascino
> > > <vincenzo.frascino@arm.com> wrote:
> > > >
> > > > Older versions of binutils that do not support certain types of memory
> > > > barriers can cause build failure of the vdso32 library.
> > >
> > > Do you know specific version numbers of binutils that are affected?
> > > May be helpful to have in the commit message just for future
> > > travelers.
> >
> > A quick bit of archaeology suggests e797f7e0b2be added this back in 2012,
> > which seems to correlate with the 2.24 release.
> 
> Cool, thanks for digging.  Vincenzo, can we please add that to the
> commit message?

If this is the only change, then I can add it when I apply -- no need to
respin just for this! (although I'm also writing this to remind myself :)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
