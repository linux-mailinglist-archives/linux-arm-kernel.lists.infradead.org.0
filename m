Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89279759EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUz7hfJatoTWeXukJL2CEiH6Ajbnw71ry+riMjhF7v0=; b=TVF3jz+FPe0Kf+
	rbjkb2h35wWVWb6jPgxBlmjV13tC1WHpg1OvIY1V5/RO/HHVqvVvawlFvuGVhDccQVdxR8b39VTRW
	11Pg9fTU7rqxRRZfWnnVKkaP5U8jzw7dVwbXlfI4rBY0FKdw36gCSPS8w10t7Zlo1GCikj+5QYqRe
	HZ5im8BQGd3ORDfh2+ZYfJURnPZq/VJCQsJWGSOjEoDUmqT/PMLFagKz4g8G8DWz8rK+jxg4GNXCr
	x5nyCeEdUmlm8boZCBTQFmORzJJ/4UYm3FMa2kgSxY6sRJk7V5apHcVgmwY68VBE0AXcwbNIw4bAI
	qQiVrcx+FfwSrmtypShQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqllA-0000LH-B4; Thu, 25 Jul 2019 21:58:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlkv-0000KE-O0
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 21:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3G0DbANSEEz3gBLVg4LbmF0CvfiTNd4gqwl2oAi+YHw=; b=sHapK5Dv01/JCHeQu/SjqvySW
 pH6NXKfPa0ocMNU8dGO4QMKJt+V/hxIZBWxflM6ndEmDYOb+0THMyDtpoiwsq1QwIEczr5gydc+AX
 ukWeOWFYxCs1H6b9ICoaEjcsxGhK/oWcWJZ2XRa7t1VukD9tmGNPRuMHBe/ljDRZlPMihyMqVlK2D
 Zix8A5XlQ9FwZM/jPoOI9e2CCXMdN+i0KM+peI6omltOm/LQWwmL8ST1sdCM4dZxZpjZ50MpqviaZ
 xvkaCb3IbY8GQo0+w56JWRDQeiSn6vs2kO1h0XtKVS+EnAzq8fGF8RKxA0nrZQogQb0j3TfenlS3k
 s2G1lrXVA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:37148)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hqlkb-0002Yr-TM; Thu, 25 Jul 2019 22:58:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hqlka-00062y-II; Thu, 25 Jul 2019 22:58:12 +0100
Date: Thu, 25 Jul 2019 22:58:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
Message-ID: <20190725215812.GN1330@shell.armlinux.org.uk>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
 <20190725143920.GW363@bombadil.infradead.org>
 <20190725213858.GK1330@shell.armlinux.org.uk>
 <20190725214222.GG30641@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725214222.GG30641@bombadil.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_145833_817408_DFA26565 
X-CRM114-Status: GOOD (  15.88  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Kees Cook <keescook@chromium.org>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <Steven.Price@arm.com>, linux-mm@kvack.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <Mark.Brown@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Michal Hocko <mhocko@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 02:42:22PM -0700, Matthew Wilcox wrote:
> On Thu, Jul 25, 2019 at 10:38:58PM +0100, Russell King - ARM Linux admin wrote:
> > On Thu, Jul 25, 2019 at 07:39:21AM -0700, Matthew Wilcox wrote:
> > > But 'page' isn't necessarily PMD-aligned.  I don't think we can rely on
> > > architectures doing the right thing if asked to make a PMD for a randomly
> > > aligned page.
> > > 
> > > How about finding the physical address of something like kernel_init(),
> > > and using the corresponding pte/pmd/pud/p4d/pgd that encompasses that
> > > address?  It's also better to pass in the pfn/page rather than using global
> > > variables to communicate to the test functions.
> > 
> > There are architectures (32-bit ARM) where the kernel is mapped using
> > section mappings, and we don't expect the Linux page table walking to
> > work for section mappings.
> 
> This test doesn't go so far as to insert the PTE/PMD/PUD/... into the
> page tables.  It merely needs an appropriately aligned PFN to create a
> PTE/PMD/PUD/... from.

Well, in any case,

c085ac68 t kernel_init

so I'm not sure that would be an improvement.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
