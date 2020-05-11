Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BC21CDF03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rdt78sTNTll61Hwg8Sf1RrdeVJxNJfUDz5eMfDf1yvU=; b=SdsfR+Zu5AEwCg
	qXau6qqhBSISeT2ns9mlfQymlo+F8tFxpA04JpZkUOtByvXUzh/WVFcDbVvwkqulUFfdr+bOExBi/
	mxsKGTXvcSCisvHOQwX3G4wv0XCVRchhKa7fdOHbrJiy+aa4dttOKGjDpKEAlHp08m7YFfy+jArWh
	OQp/LTep44q7oJd76vLgj6ieZ8n0+CFPUZ4NOkYVbTM3yZMVjcu7kQBaMTBM99U0CZ07NipAjhklN
	YAiGlNEtReTleGpY07cz79sCwRRjU7uEgmVtG9bm/Dk2rgzI/mJm02J4jmmfoWk01e3bMJNGfCt9C
	OlCJ4/L7sDR2rawVdCNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYANJ-0003If-E0; Mon, 11 May 2020 15:29:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYANA-0003I1-GF
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:29:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id u35so1733551pgk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=y/V0wcoxC/Yk3CV9Ny72KgJNadmz9KFuZ61yQV7Ioak=;
 b=o+le0p8g5d/nvE3pzywPAZJpoIzOEmlpxN4Sow/q0VQ0QPFnUNKO3GCJZXABsT8kiu
 45bmA1W0/PY04u/CF5DEvBlWWogZwMOD+4v5iRBJZxWW61zr5u7/t/aibMPEj0TI7Y5J
 MGAKDOtUi35Rip0Z0Jqi5oRQBPX0mI5Ewpgiw0l6+cb72hGVJa2QS6+y8ddjJNz/UPdh
 w9h/1eSZ7tN5++f87W+3DrlTwG7T2KKvA55KeE+piTOrAib+leIymvWshHf0bYTXWfEK
 6y6v8OFu1YoRueD1I2O8XHyGDEmvGPtohynwLNxLB/9TX+HCMwUn1+A4nBQXWX4ynnps
 WtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=y/V0wcoxC/Yk3CV9Ny72KgJNadmz9KFuZ61yQV7Ioak=;
 b=MHfdQpUbptI2AuYlWXEAxUjgDd+Ctv7KgfsAFiC5UHjjLuO8wY0VNmUwPTioviYW1P
 FC3LKkHDpAD39hdFff6TE6ze4fhiDs7aFlZSTGs2nW7CXKR22H5IHDjOUqEtoCcdf42h
 5iGRmSCTLJocD7ILe6JeKQxlAseYtKdpVz7ryuojf9huR+0+xjPUqUP2T/4YWVXXM8wI
 C3eFuLBwBlv8R9QiETeygYMdytbhqywZd0TZRSimwbSs5VuRO/tFLjKTv/sPQ6OCMQTz
 OY5G+T2ih/MTf21tpyNo/moPJFpPYG4ClQJQCw8mFtOABmaSTdQzfcs17850ry/GCJ3u
 G0OA==
X-Gm-Message-State: AGi0Pub42YS+PnTfDyJ5j0XQNBbCPta5qk+sXMv3lxdufeYZqlfn9xEX
 +WLq2NtG6k4/V5N0hPAe4NBF
X-Google-Smtp-Source: APiQypLyFwhYqdaWIHUXhMcandw2Ds1EIzw/MYLXIpDgFhOYsgqj0h7AN5YikFI6HeX1TtAh5mWmyA==
X-Received: by 2002:a63:dd0e:: with SMTP id t14mr14918193pgg.226.1589210979329; 
 Mon, 11 May 2020 08:29:39 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:28b:647d:9464:e66e:7157:1965])
 by smtp.gmail.com with ESMTPSA id g9sm3204412pgh.52.2020.05.11.08.29.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 08:29:38 -0700 (PDT)
Date: Mon, 11 May 2020 20:59:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: =?iso-8859-1?Q?Andr=E9?= Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH RFC 1/8] dmaengine: Actions: get rid of bit fields from
 dma descriptor
Message-ID: <20200511152929.GB6865@Mani-XPS-13-9360>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
 <20200510155159.GA27924@Mani-XPS-13-9360>
 <CABHD4K_h7wc1gc3wvya1PRTRjMRkDPW==yrAWSk7cCF9ghkUjg@mail.gmail.com>
 <20200511112014.GA3322@Mani-XPS-13-9360>
 <87569683-509e-96e6-17f9-c1734a8b32d4@arm.com>
 <20200511120458.GB3322@Mani-XPS-13-9360>
 <68aa739c-f2fe-a739-f8ed-5683cba90b23@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68aa739c-f2fe-a739-f8ed-5683cba90b23@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_082940_577585_8288466F 
X-CRM114-Status: GOOD (  33.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-actions@lists.infradead.org, cristian.ciocaltea@gmail.com,
 vkoul@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Amit Tomer <amittomer25@gmail.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 01:48:41PM +0100, Andr=E9 Przywara wrote:
> On 11/05/2020 13:04, Manivannan Sadhasivam wrote:
> =

> Hi,
> =

> > On Mon, May 11, 2020 at 12:44:26PM +0100, Andr=E9 Przywara wrote:
> >> On 11/05/2020 12:20, Manivannan Sadhasivam wrote:
> >>
> >> Hi,
> >>
> >>> On Mon, May 11, 2020 at 04:15:57PM +0530, Amit Tomer wrote:
> >>>> Hi
> >>>>
> >>>> Thanks for the reply.
> >>>>
> >>>>> I'm in favor of getting rid of bitfields due to its not so defined =
way of
> >>>>> working (and forgive me for using it in first place) but I don't qu=
ite like
> >>>>> the current approach.
> >>>>
> >>>> Because , its less readable the way we are writing to those differen=
t fields ?
> >>>> But this can be made more verbose by adding some comments around .
> >>>>
> >>>
> >>> I don't like the way the hw linked lists are accessed (using an array=
 with
> >>> enums).
> >>
> >> But honestly this is the most sane way of doing this, see below.
> >>
> >>>>> Rather I'd like to have custom bitmasks (S900/S700/S500?) for writi=
ng to those
> >>>>> fields.
> >>>>>
> >>>> I think S900 and S500 are same as pointed out by Cristian. and I did=
n't get by
> >>>> creating custom bitmasks for it ?
> >>>>
> >>>> Did you mean function like:
> >>>>
> >>>> lli->hw[OWL_DMADESC_FLEN]=3D llc_hw_FLEN(len, FCNT_VALUE, FCNT_SHIFT=
);
> >>>>
> >>>
> >>> I meant to keep using old struct for accessing the linked list and re=
placing
> >>> bitfields with masks as below:
> >>>
> >>> struct owl_dma_lli_hw {
> >>> 	...
> >>>         u32     flen;
> >>>         u32     fcnt;
> >>> 	...
> >>> };
> >>
> >> And is think this is the wrong way of modelling hardware defined
> >> register fields. C structs have no guarantee of not introducing padding
> >> in between fields, the only guarantee you get is that the first member
> >> has no padding *before* it:
> >> C standard, section 6.7.2.1, end of paragraph 15:
> >> "There may be unnamed padding within a structure object, but not at its
> >> beginning."
> >>
> >> Arrays in C on the contrary have very much this guarantee: The members
> >> are next to each other, no padding.
> >>
> >> I see that structs are sometimes used in this function, but it's much
> >> less common in the kernel than in other projects (U-Boot comes to mind=
).
> >> It typically works, because common compiler *implementations* provide
> >> this guarantee, but we should not rely on this.
> >>
> >> So:
> >> Using enums for the keys provides a natural way of increasing indices,
> >> without gaps. Also you get this nice and automatic size value by making
> >> this the last member of the enum.
> >> Arrays provide the guarantee of consecutive allocation.
> >>
> > =

> > I agree with your concerns of using struct for defining registers. But =
we can
> > safely live with the existing implementation since all fields are u32 a=
nd if
> =

> But why, actually? I can understand that this is done in existing code,
> because this was done in the past and apparently never challenged. And
> since it seems to work, at least, there is probably not much reason to
> change it, just for the sake of it.
> But if we need to rework this anyway, we should do the right thing. This
> is especially true in the Linux kernel, which is highly critical and
> privileged code and also aims to be very portable. We should take no
> chances here.
> =


I gave it a spin and I think it makes sense to stick to arrays. I do talk to
a compiler guy internally and he recommended to not trust compilers to do t=
he
right thing for non standard behaviour like this.

> Honestly I don't understand the advantage of using a struct here,
> especially if you need to play some tricks (__packed__) to make it work.
> So why is:
> 	hw->flen
> so much better than
> 	hw[DMA_FLEN]

To be honest this looks ugly to me and that's why I was reluctant. But lets=
 not
worry about it :)

> that it justifies to introduce dodgy code?
> =

> In think in general we should be much more careful when using C language
> constructs to access hardware or hardware defined data structures, and
> be it to not give people the wrong idea about this.
> I think with the advance of more optimising compilers (and, somewhat
> related, more out-of-order CPUs) the chance of breakage becomes much
> higher here.
> =


Only way it can go wrong is, if a nasty compiler adds padding eventhough the
struct is homogeneous. And yeah, let's be on the safe side.

Sorry for stretching this so long!

Thanks,
Mani

> Cheers,
> Andre.
> =

> > needed we can also add '__packed' flag to it to avoid padding for any c=
ases.
> > =

> > The reason why I prefer to stick to this is, this is a hardware linked =
list and
> > by defining it as an array and accessing the fields using enums looks a=
wful to
> > me. Other than that there is no real justification to shy away.
> > =

> > When you are modelling a plain register bank (which we are also doing i=
n this
> > driver), I'd prefer to use the defines directly.
> > =

> >> We can surely have a look at the masking problem, but this would need =
to
> >> be runtime determined masks, which tend to become "wordy". There can be
> >> simplifications, for instance I couldn't find where the frame length is
> >> really limited for the S900 (it must be less than 1MB). Since the S700
> >> supports *more* than that, there is no need to limit this differently.
> > =

> > I was just giving an example of how to handle the bitmasks for different
> > SoCs if needed. So yeah if it can be avoided, feel free to drop it.
> > =

> > Thanks,
> > Mani
> > =

> >>
> >> Cheers,
> >> Andre.
> >>
> >>
> >>>
> >>> hw->flen =3D len & OWL_S900_DMA_FLEN_MASK;
> >>> hw->fcnt =3D 1 & OWL_S900_DMA_FCNT_MASK;
> >>>
> >>> Then you can use different masks for S700/S900 based on the compatibl=
e.
> >>>
> >>> Thanks,
> >>> Mani
> >>>
> >>>> Thanks
> >>>> -Amit
> >>
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
