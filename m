Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91CC1DAD87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kcNdn8E5JycjFzQZZusoFqkeHbMYtTLa1yt3NLAn4E=; b=JeklVzb+KgW5WM
	zk2zvB89zNh+1Ic3XTtwPT7hXrTn2lcUN/V1wdd0a2ky0F28PWn+wvBlqLtrQ2+17kWrskVBAUq8I
	Z8B0Ps1cgaLY2n2RHgT8h1jqPDJD5xFV/DLaojLuoex5LxSvojPcavBRL7ggHtl6DI7r58HhfUPlj
	i++3+EsdSKZXZjn3EvZ/Bn82EBjsAfYFV8UQ65GX/KS5BPhmguROzt2Nwcqwxinw2tnpRZyLDb6W8
	CFE6HvggC7gpQN+C5dXKdHQ0ySv5MLfEPklXx2Lyq+CzT9JNfBSg3BN4+1fM4Q8ocUBmKCTR/EyBH
	mTBlW+iLMxB3dRWeMLmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbK9x-0006I4-JK; Wed, 20 May 2020 08:33:05 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbK9n-0006GM-7t
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589963573;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RmOXj1sWhvWoKhdSD0p1vfnJVy6tNauqOTA14BFZb40=;
 b=g1AIzarFrE0wfWbbMCuyyD93K51XAW/fLQgB0GaOErEedUe3Z47EI0Ijad1fCtie16EsXq
 3z0gjVxGJMc5Thxz2WmkfA7qEqArlzaSNuqUWI0AZwFzK1q8kcYbnI3jNAUDA7qja5lypQ
 shvSf3fJxTQU6W8gA+bhAPQ1jTuc+uw=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-J2VgXJTkMEqtBhqbNYs3og-1; Wed, 20 May 2020 04:32:49 -0400
X-MC-Unique: J2VgXJTkMEqtBhqbNYs3og-1
Received: by mail-qt1-f197.google.com with SMTP id r9so2860376qtn.20
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 01:32:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RmOXj1sWhvWoKhdSD0p1vfnJVy6tNauqOTA14BFZb40=;
 b=fjHXZwtIFs5k7d3jTauuMbP3nBW8iulLOEsjdkSO7uYb+fp56a1FAW96jUNgdv/POC
 T556Qzc1ysInWK5IkpZL6dicu0HrjRzBWEGTxIC8jOF92ybZkfsajp+QjlKy2l91hjo1
 JG+Iour4hb+nCEbNxKbstxJXfvyH3RSFBd4JcHFBF2cAoIcnU07dPCagb90yT8OhqyqS
 r+d9O5Fx/KRSo8pTR4eFNNx+J+Hlpw1XqU51bmdlstpV1IIajSYcauTUx4kQ7YFRfBi5
 SpXN1mpFAtgdJTqGPiJ9nGq6PrIho+zblARjGTEf4RpLa/xY5t2HQWjCGyRc3IIDigRI
 0Xjg==
X-Gm-Message-State: AOAM531i/wFZ2/cWQ5vEDg+rp0yMlCvtp9ywXtRTk030e/4lkb5DsTjL
 uLAWwBC6CUHRlhUblcoSygJ3W0jVoYGlFmGZL7CCHoBNaFAjsCNqubp/lcakFV3+uNO89OdsMi7
 QfcQjAYveUusfGEO+89euDH1BtkXog6lFIe5/LmDrqjEWQkbLlOA=
X-Received: by 2002:a37:c20a:: with SMTP id i10mr3478208qkm.29.1589963568764; 
 Wed, 20 May 2020 01:32:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzhjeXdrCTfIEg1oJlMc+NZH3v1U5iNIyOTTTevnbwqW+4KEKmeS/BGmSfvSXiGZsuSg8h37pLDV4T75rp7/6A=
X-Received: by 2002:a37:c20a:: with SMTP id i10mr3478185qkm.29.1589963568417; 
 Wed, 20 May 2020 01:32:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <a57d46bc-881e-3526-91ca-558bf64e2aa8@huawei.com>
 <CAK8P3a2VrAqefPYF2JqRjwdhgTDtORUgWgVuYxRYWqKxE3+5pA@mail.gmail.com>
 <3D37F6BE-ECFC-4EC0-A7C4-341F85FC056E@oracle.com>
In-Reply-To: <3D37F6BE-ECFC-4EC0-A7C4-341F85FC056E@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 20 May 2020 14:02:36 +0530
Message-ID: <CACi5LpO82hmXG6bcSqhAhNZJW8mPRP2CuLGT2mrgKDMk1s8g_g@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: John Donnelly <john.p.donnelly@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_013255_358939_463F021F 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Chen Zhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Dave Young <dyoung@redhat.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On Wed, May 20, 2020 at 1:53 AM John Donnelly
<john.p.donnelly@oracle.com> wrote:
>
>
>
> > On May 19, 2020, at 5:21 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Thu, Mar 26, 2020 at 4:10 AM Chen Zhou <chenzhou10@huawei.com> wrote:
> >>
> >> Hi all,
> >>
> >> Friendly ping...
> >
> > I was asked about this patch series, and see that you last posted it in
> > December. I think you should rebase it to linux-5.7-rc6 and post the
> > entire series again to make progress, as it's unlikely that any maintainer
> > would pick up the patches from last year.
> >
> > For the contents, everything seems reasonable to me, but I noticed that
> > you are adding a property to the /chosen node without adding the
> > corresponding documentation to
> > Documentation/devicetree/bindings/chosen.txt
> >
> > Please add that, and Cc the devicetree maintainers on the updated
> > patch.
> >
> >         Arnd
> >
> >> On 2019/12/23 23:23, Chen Zhou wrote:
> >>> This patch series enable reserving crashkernel above 4G in arm64.
> >>>
> >>> There are following issues in arm64 kdump:
> >>> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
> >>> when there is no enough low memory.
> >>> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
> >>> in this case, if swiotlb or DMA buffers are required, crash dump kernel
> >>> will boot failure because there is no low memory available for allocation.
> >>>
> >>> The previous changes and discussions can be retrieved from:
> >>>
> >>> Changes since [v6]
> >>> - Fix build errors reported by kbuild test robot.
> > ...
>
>
>  Hi
>
> We found
>
> https://lkml.org/lkml/2020/4/30/1583
>
> Has cured our Out-Of-Memory kdump failures.
>
> From    Henry Willard
> Subject [PATCH] mm: Limit boost_watermark on small zones.
>
> I am currently not on linux-kernel@vger.kernel.org. dlist for all to see  this message so you may want to rebase and see if this cures your OoM issue and share the results.

This is a very interesting finding. Thanks a lot for sharing the same.
I am working on further avoiding OOM issues with arm64 kdump kernels.
I will experiment more with this patch and get back with more details.

Regards,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
