Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95A7CF59E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gooGNyA9EJ0yWVM/eMcKkQWoHEfp00KIsx4krM2UbmY=; b=nwkm92dyNdmfTf
	BL3yJTtapTAfQzPVZ9JnIhohCw/mdFtu94iz91JRr7VNZN8azdDsAtUSghU4DcfL4an0BMgbw+AqW
	CJ+vCkg1Kp0ZZQP24IAjxqqFC5pmL+ATY1zvq6igMKcTdpfdsf1NAFUcpNH9U8q53cS7qNejIzSWF
	kVU4X7c2Rl6DdiKcTlqnOeDNgRYC6BvW27/jp7STLmmK2fXnyMzfLOJpNUqmKWyT12GpeDkz2y6p6
	ziuDF5tJ+lOnE7L7ZrAVevz/HOTSN1TCAf7NRKoOvMtamxMCpHccuxbjHYKPZmcbLJyQuLqe+bsg/
	03k5pFgt5jABRcXsKzPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHlTG-0000KB-VB; Tue, 08 Oct 2019 09:07:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlT9-0000JC-FI
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:07:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD0AB206C2;
 Tue,  8 Oct 2019 09:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570525663;
 bh=mBOH3in0hxcQxPxUoDAlYNiDp7sHCXmk89eRCMAhZgY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eucSvoHHLAFg0lPO/Co02dZBwpKBXKMT3GR/mf8wACX+eYl5VT0zWCumV/g+Arf5T
 2gqOVzlVw8skLi6QogIH8+fUNhKxKM8LgaA6XaG8HLFKI1wJzsSskCWJ/VBO9HxBu0
 VXFyZleUdvexYfwiJHOUh8iwDoceSI4vNE4qznVg=
Date: Tue, 8 Oct 2019 10:07:38 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v5 0/6] arm64: vdso32: Address various issues
Message-ID: <20191008090737.yari3gbtg65cuq7d@willie-the-truck>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
 <20191007133106.j3gtsuatsw6hgllz@willie-the-truck>
 <a35ad8b6-fcd8-a681-b456-cc931f1e58cb@arm.com>
 <20191007141552.tbk3n6hgpq4cgane@willie-the-truck>
 <ba8f3b9a-714f-08da-f93e-d832283697e2@arm.com>
 <2b3b3255-6532-e70c-8d1a-8d60308adbe1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b3b3255-6532-e70c-8d1a-8d60308adbe1@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_020747_553462_34BAED90 
X-CRM114-Status: GOOD (  24.61  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, luto@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 06:48:00PM +0100, Vincenzo Frascino wrote:
> On 07/10/2019 15:37, Vincenzo Frascino wrote:
> > On 07/10/2019 15:15, Will Deacon wrote:
> >> On Mon, Oct 07, 2019 at 02:54:29PM +0100, Vincenzo Frascino wrote:
> >>> On 07/10/2019 14:31, Will Deacon wrote:
> >>>> I've queued this up as fixes for 5.4, but I ended up making quite a few
> >>>> additional changes to address some other issues and minor inconsistencies
> >>>> I ran into. In particular, with my changes, you can now easily build the
> >>>> kernel with clang but the compat vDSO with gcc. The header files still need
> >>>> sorting out properly, but I think this is a decent starting point:
> >>>>
> >>>> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/fixes
> >>>>
> >>>> Please have a look.
> >>>>
> >>>
> >>> Thank you for letting me know, I will have a look.
> >>
> >> Thanks.
> >>
> >>> I see acked-by Catalin on the patches, did you post them in review somewhere? I
> >>> could not find them. Sorry
> >>
> >> I pushed them out to a temporary vdso branch on Friday and Catalin looked at
> >> that. If you'd like me to post them as well, please let me know, although
> >> I'm keen to get this stuff sorted out by -rc3 without disabling the compat
> >> vDSO altogether (i.e. [1]). In other words, if you're ok with my changes on
> >> top of yours then let's go for that, otherwise let's punt this to 5.5 and
> >> try to fix the header mess at the same time.
> >>
> > 
> > No need to repost them. I just got confused by the fact that they got acked and
> > I could not find them anywhere, hence my question.
> > 
> > I am keen to sort this thing as well, my personal preference is to not disable
> > compat vdso in 5.4.
> > 
> > I will download your tree, have a look at it and let you know my thoughts.
> > 
> 
> I tested your patches and they look fine to me. I have just one request, in the
> commit message of patch were you rename COMPATCC to CC_COMPAT could you please
> add the make command with the update variable?
> 
>    $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>         CROSS_COMPILE_COMPAT=arm-linux-gnueabihf- CC=clang \
>         CC_COMPAT=arm-linux-gnueabihf-gcc
> 
> It took me a while to understand that the command in the commit message
> (c71e88c43796 "arm64: vdso32: Don't use KBUILD_CPPFLAGS unconditionally") was
> not working because of the renaming.
> 
> Thanks!
> 
> If it is not too late you can add my reviewed-by and tested-by ;)

Thanks, Vincenzo. I'd prefer not to rebase that branch, but I'll mention
your tags in the pull request so they may end up in the merge commit.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
