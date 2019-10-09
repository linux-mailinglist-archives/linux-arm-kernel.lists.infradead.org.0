Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05375D13C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqB/AwLa+vsnBy4mtid8RTF5D6Ie+iTcYmzo4eBOy5I=; b=EKHq4FFdkfNjV3
	FJGOCIXdeZStXokuVBNdWutnmgMgnl/t5JstWRnml9ganRqzViT9+NOVnk34TTQKjEfa/ww8StVmJ
	W673n+x8vUIamyDxTO/Hl8ENd7pIr2+F4Ela8zh0GuZ99DhiEGoBSF1U7IU7rboN1T77Wadjiu9e5
	O+va6mNwUyPaYBO3kHiseQa7wL9YOhSkDwEUhO1Xl0TzwhVbWc2tdKr+/SsYenw9nQFd/ArBARrIR
	u3F6CD/URkvleobcTlsC8qJUHkD61vdMb1sN6DkBcVaAQ42vGtc6foIKOTm9ZTEoVaZl4t0oLJzdo
	S2I6z+tSy6UcIdT4IaUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEbr-0006RL-Jj; Wed, 09 Oct 2019 16:14:43 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEbk-0006QN-Ju
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:14:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UijyCer4OUN5eEElHKm/eMJByc5emA01vxX2Cs2zO/g=; b=JjcNe/0a3WIMrZSOZNK+M8m/i
 dNNTIIkD771PD5Rc4fqbhSw2jXBpX2MMpN5lLzZEjzWX8pKTQyCjx5AXyuH+2yArTKWTkCg6CvHDM
 vY0bmLWi4GgkETi6iqWhWi5vT7yoGqwZjltEdpXZoGY1AYXG8iXXzWpbLhy9oJsCDy1BKIfkm8Ag8
 Y3+zBSb6iQ9XENF2vbntrPzASEMsCgEkWA0VwbM4InKwjVnQzq7I7UsSNX20cECEHI09oH/4sUtmA
 OTnmHnGf0M+PvKERHfj32Fv/rWOq5Ut+NtEZylL9SoH71daS1kz653VQgYxID+jc7vBXd+x6ZKiE5
 2V0cdoRjg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42014)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iIEbZ-0002Vj-ET; Wed, 09 Oct 2019 17:14:25 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iIEbY-0007q4-3M; Wed, 09 Oct 2019 17:14:24 +0100
Date: Wed, 9 Oct 2019 17:14:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] ARM: OMAP2+: force iomem for omap_interconnect_sync
Message-ID: <20191009161423.GB1337@shell.armlinux.org.uk>
References: <20191009133902.28405-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009133902.28405-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_091436_669866_A70DF0CF 
X-CRM114-Status: GOOD (  19.25  )
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
Cc: linux-kernel@lists.codethink.co.uk, Tony Lindgren <tony@atomide.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 02:39:02PM +0100, Ben Dooks wrote:
> Force the type of omap_interconnect_sync to avoid the
> following sparse warnign:
> 
> arch/arm/mach-omap2/omap4-common.c:142:27: warning: incorrect type in assignment (different address spaces)
> arch/arm/mach-omap2/omap4-common.c:142:27:    expected void [noderef] <asn:2> *static [toplevel] sram_sync
> arch/arm/mach-omap2/omap4-common.c:142:27:    got void *
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-omap@vger.kernel.org
> ---
>  arch/arm/mach-omap2/omap4-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-omap2/omap4-common.c b/arch/arm/mach-omap2/omap4-common.c
> index 5c3845730dbf..d27c5f61d708 100644
> --- a/arch/arm/mach-omap2/omap4-common.c
> +++ b/arch/arm/mach-omap2/omap4-common.c
> @@ -139,7 +139,7 @@ static int __init omap4_sram_init(void)
>  		pr_warn("%s:Unable to get sram pool needed to handle errata I688\n",
>  			__func__);
>  	else
> -		sram_sync = (void *)gen_pool_alloc(sram_pool, PAGE_SIZE);
> +		sram_sync = (void __force __iomem *)gen_pool_alloc(sram_pool, PAGE_SIZE);

Not sure about this one - did you check whether the memory returned
here really is iomem memory?  If it isn't iomem memory, then the
warning should remain.

Never hide a valid sparse warning - to do so goes against the whole
point of sparse checks.  It isn't "pointing out that a cast is missing,
we must add a cast", the point of sparse is to find and identify where
the code is actually incorrect - in other words, MMIO accessors are
used on memory that is not MMIO, or direct dereferences are used on
memory that is MMIO.  If we go around merely casting the warnings away,
it makes sparse completely pointless.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
