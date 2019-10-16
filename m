Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B849D8634
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWGB/ECl0/wo4GVZriG+z59tnRD+5STuNpELHAQX+vU=; b=lI9HQelM7yYRoH
	HODKgCNAA2rPyDV2HtO19UVxD4kJj1GSh3H86o53HxRbMoBUR4g+VrqTiEQZ/zaSVLXjYWNQXvpRs
	wjpHopwjiJVw6IdkHUPBYJDZ1atSd5HN1Cipy66AEWKzvIPbM4OdhycGR/cv/CF2cWYvj8ltTsfBu
	KzHCEGdjOGfQN44DOtZVFTeoEWzato6gd8MVTz7+8v2jtFFadGDTIKCQr5DlevPPGjW00tvxCE/eB
	FPwXtmST9p8re1yy3S1gu7NpY7UmvbWiY4DUTHQk85YhJC1TzmCHXwDlyf4RvFUwuDaY8jyhp2Td5
	YpWoJVLUpsWelViQT2wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZg3-000570-K4; Wed, 16 Oct 2019 03:08:43 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZfv-00056G-CX
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:08:36 +0000
Received: by mail-ot1-x341.google.com with SMTP id 89so18835876oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 20:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v7A21E/smP9/Sv5xhwv/46RtfLPTPabv+1Tv1kRSD6w=;
 b=Svu2xTrsQ8/7CF7+WC9aHOaFTooX/VO00gDOMlbo5ewHqzh0xf6e3QdDX3K1wx4UmN
 kdSJ5h1SfNfv4F9dITWIqrZg/rGgQS5dKTWEOrD497Rn860YblJFQxj5L4+rWGgx6Ver
 sFu2Ag5GtKJb0R+1t6HZ5sygjZmq+qFrlexFDVfMm1QRY3IV/1yvvQS3fOBYdkdJ9dUu
 TUrZ8lu52XGnRyEjHitMIF+mWvkPTQ/68uLiGwM0kGYnMqOdeHvnb7aZYCxpBR6vGf9I
 NVZ9+iWPgZk6qExrUniq/D3+HxFOwC061r6wtTwjZQYlBCSDgiU3+v+Koj/bSKK22aAE
 jhYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v7A21E/smP9/Sv5xhwv/46RtfLPTPabv+1Tv1kRSD6w=;
 b=LhmkyUc9eqoMu6rcUbo5g1ZVZdEjL3R2bgD1WxdPa4oA/t94XgVgZRdblVQYO9IJAt
 mnkFpjU9+YnPqjSuLTTuDvsW+4VKJ40IwiwAHdBhd7bHOP0L6Q6uyczbPi+yn1UfMFrU
 bcgLfRjksVTy3LeQfwUjJ0DVh0TvTU78P6kIUjG8tC11hYMQfOxQm1zaB6/G8NrcIUs8
 0s4cL5e3UDUHqcaX51dOXJHVG9nL8/k1jUn1YAhEnRnvMeWrAqEzhYISw2MxuAflOuYC
 L4jIO1KbWZ3Po4oeopyRHCErwgr9N2jCoHznsEtENTOvWfEbFghXkSllRq9yDcfd9D5A
 96Fw==
X-Gm-Message-State: APjAAAVAiJiL6vSqaFTSZwOSWLcJuipi4cOHW/oiiyKOltp5DoubqNOj
 J9Cat0QOihQ1ikv+6yUpiPk=
X-Google-Smtp-Source: APXvYqzyG/+zSpTve/uxIbZ/lZlB9loL2gTNw0pjEs6B5o26I1bQ8I0VxLfBMHsQHI9fTqhYnxKAgw==
X-Received: by 2002:a9d:6b19:: with SMTP id g25mr31065283otp.12.1571195312149; 
 Tue, 15 Oct 2019 20:08:32 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id k34sm7200224otk.51.2019.10.15.20.08.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 15 Oct 2019 20:08:31 -0700 (PDT)
Date: Tue, 15 Oct 2019 20:08:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH -next] arm64: mm: Fix unused variable warning in
 zone_sizes_init
Message-ID: <20191016030830.GA29527@ubuntu-m2-xlarge-x86>
References: <20191015224304.20963-1-natechancellor@gmail.com>
 <20191016030051.4di67v6swlkz2wzy@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016030051.4di67v6swlkz2wzy@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_200835_425082_CF6088D9 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 04:00:52AM +0100, Will Deacon wrote:
> On Tue, Oct 15, 2019 at 03:43:04PM -0700, Nathan Chancellor wrote:
> > When building arm64 allnoconfig, CONFIG_ZONE_DMA and CONFIG_ZONE_DMA32
> > get disabled so there is a warning about max_dma being unused.
> > 
> > ../arch/arm64/mm/init.c:215:16: warning: unused variable 'max_dma'
> > [-Wunused-variable]
> >         unsigned long max_dma = min;
> >                       ^
> > 1 warning generated.
> > 
> > Add an ifdef around the variable to fix this.
> > 
> > Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/arm64/mm/init.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index 44f07fdf7a59..c3d6657b9942 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -212,7 +212,9 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> >  	struct memblock_region *reg;
> >  	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
> >  	unsigned long max_dma32 = min;
> > +#if defined(CONFIG_ZONE_DMA) || defined(CONFIG_ZONE_DMA)
> >  	unsigned long max_dma = min;
> > +#endif
> 
> This looks bogus to me :/ You're referring to CONFIG_ZONE_DMA twice, and I
> can't see how that symbol even exists on arm64.
> 
> Will

Gah, sorry, one of those CONFIGs should be CONFIG_ZONE_DMA32. I will
send a v2 to fix that shortly.

Note, this patch is targetting for-next/zone-dma, which reintroduces
CONFIG_ZONE_DMA. Sorry if the patch tag and Fixes tag didn't make that
clear, let me know how I can better convey that in the future!

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
