Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48FB1CD951
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoKdpxiPQv6G4GpWsGKxUoN5/bZiBdsIIibAGIkhEng=; b=OggYSxxBb2ry8r
	I+7ZAXFcLOz3/EU5OMf6qTaC57eHbE2rT2b0XukljxroBVismV7lQKxHF8AoVZDXBEU6rn2JAToIk
	ocrK9G+AMZZzzH1mxzesBmLEsYo6+0vorWdYhSGsxuwnsADDacvaP3I1brSscVPhSomq1aeGk5/BZ
	QS8xEAK9hzKKtZ681ipxIwNzoWNOLE8zL8fuCzMinDQMSuz0Yy7ylICtuRuWpWit84Okm/9yCiHcy
	SmvVDYUffWgiT8OlYaVf23/qnxpVrzuxfQ5LhaxDpIFqF4tUwEfPfis/tknlHBkaEHAwqxTUuyEFh
	PRgDfd5BXfqpVLyX4reA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7BS-0005gZ-RY; Mon, 11 May 2020 12:05:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7BG-0004hZ-8F
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:05:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id f15so3849646plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 05:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=sjMFDdzqoNT+Naq9xj8UYhZ5lsrML++iqrUgDzgeiyM=;
 b=Bk4/X/KvmnRxk7QBnw2YKwzYK3Xsi4NFpkiAaQlw2danAx7mgGkSV8QbT2/jVlSj2o
 ewwUEOwgcoPSvsdyrjMQkRSQlmtzYz2yEwKQIuyYcwNI3M+zOI+xB9US7zA47OEGuN9j
 p9c4Znk0iyqVSX22SfzxCrimPr9JSsBN3dAlTcjCeHQqnYSlezeh622BL3ppU0MUNeXU
 kwmz9+vZNmgakRVbV3M2lvS1l2XVAyAr4t12wIOrsSOCWdkbGRCfK7wKqOSLOIrPD4XM
 hNZk7kogqQByKfXHHbsZ4+lXf1De+rgQdcTv9XlsdSGOamvmPVBh1Vd8OpOq9VdHUX/O
 pXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=sjMFDdzqoNT+Naq9xj8UYhZ5lsrML++iqrUgDzgeiyM=;
 b=OOSgL4cswwxfNw08YlbCzAWe9axm9ATRUlTnzhdpn8/96hfX8xJtyIjl1gTId18ESY
 SejReI1SHDdNDepRDXD0i22uihqEdDiwb/j7wnm0536+gtfwjjDEc7B5ybrKps0yfh+x
 OZsZOwrpDSwOtk3V5lk6X4eb6nRFyQ/yapLGKEZ6PJJiyXY/LfL04ZyNzPwmjF2815Y7
 //Tdk6da2hDHu5qE/toH5lWy7r59ux4Vs6r8yjOOKf+MbP1CWGsRJOOPIJhpkXlf0VbV
 cb7eu64h/PAcJGA6unFg9s4yagleAhmT6HVHCdbsiMHcG8zi8IwHk+FHgZTh92GuUC3a
 a62w==
X-Gm-Message-State: AGi0PuYbZT36SBL++RG/FdUKnXeqm0RyMu8Y/84hOFV0fwkx/Ql+RKRJ
 RDw54oWYpI/LbTrP8ABnIAmpeASbeQ==
X-Google-Smtp-Source: APiQypJen5c1uXINi2G4YgDD8yneG/m9c0hzml6Du7AQ77Y6AAXhEHiZjqtAaV+L/m77H2OQG4DZUA==
X-Received: by 2002:a17:90a:c702:: with SMTP id
 o2mr21889591pjt.196.1589198706525; 
 Mon, 11 May 2020 05:05:06 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id m12sm7933086pgj.46.2020.05.11.05.05.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 05:05:05 -0700 (PDT)
Date: Mon, 11 May 2020 17:34:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: =?iso-8859-1?Q?Andr=E9?= Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH RFC 1/8] dmaengine: Actions: get rid of bit fields from
 dma descriptor
Message-ID: <20200511120458.GB3322@Mani-XPS-13-9360>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
 <20200510155159.GA27924@Mani-XPS-13-9360>
 <CABHD4K_h7wc1gc3wvya1PRTRjMRkDPW==yrAWSk7cCF9ghkUjg@mail.gmail.com>
 <20200511112014.GA3322@Mani-XPS-13-9360>
 <87569683-509e-96e6-17f9-c1734a8b32d4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87569683-509e-96e6-17f9-c1734a8b32d4@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_050510_311619_F142C89B 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Mon, May 11, 2020 at 12:44:26PM +0100, Andr=E9 Przywara wrote:
> On 11/05/2020 12:20, Manivannan Sadhasivam wrote:
> =

> Hi,
> =

> > On Mon, May 11, 2020 at 04:15:57PM +0530, Amit Tomer wrote:
> >> Hi
> >>
> >> Thanks for the reply.
> >>
> >>> I'm in favor of getting rid of bitfields due to its not so defined wa=
y of
> >>> working (and forgive me for using it in first place) but I don't quit=
e like
> >>> the current approach.
> >>
> >> Because , its less readable the way we are writing to those different =
fields ?
> >> But this can be made more verbose by adding some comments around .
> >>
> > =

> > I don't like the way the hw linked lists are accessed (using an array w=
ith
> > enums).
> =

> But honestly this is the most sane way of doing this, see below.
> =

> >>> Rather I'd like to have custom bitmasks (S900/S700/S500?) for writing=
 to those
> >>> fields.
> >>>
> >> I think S900 and S500 are same as pointed out by Cristian. and I didn'=
t get by
> >> creating custom bitmasks for it ?
> >>
> >> Did you mean function like:
> >>
> >> lli->hw[OWL_DMADESC_FLEN]=3D llc_hw_FLEN(len, FCNT_VALUE, FCNT_SHIFT);
> >>
> > =

> > I meant to keep using old struct for accessing the linked list and repl=
acing
> > bitfields with masks as below:
> > =

> > struct owl_dma_lli_hw {
> > 	...
> >         u32     flen;
> >         u32     fcnt;
> > 	...
> > };
> =

> And is think this is the wrong way of modelling hardware defined
> register fields. C structs have no guarantee of not introducing padding
> in between fields, the only guarantee you get is that the first member
> has no padding *before* it:
> C standard, section 6.7.2.1, end of paragraph 15:
> "There may be unnamed padding within a structure object, but not at its
> beginning."
> =

> Arrays in C on the contrary have very much this guarantee: The members
> are next to each other, no padding.
> =

> I see that structs are sometimes used in this function, but it's much
> less common in the kernel than in other projects (U-Boot comes to mind).
> It typically works, because common compiler *implementations* provide
> this guarantee, but we should not rely on this.
> =

> So:
> Using enums for the keys provides a natural way of increasing indices,
> without gaps. Also you get this nice and automatic size value by making
> this the last member of the enum.
> Arrays provide the guarantee of consecutive allocation.
> =


I agree with your concerns of using struct for defining registers. But we c=
an
safely live with the existing implementation since all fields are u32 and if
needed we can also add '__packed' flag to it to avoid padding for any cases.

The reason why I prefer to stick to this is, this is a hardware linked list=
 and
by defining it as an array and accessing the fields using enums looks awful=
 to
me. Other than that there is no real justification to shy away.

When you are modelling a plain register bank (which we are also doing in th=
is
driver), I'd prefer to use the defines directly.

> We can surely have a look at the masking problem, but this would need to
> be runtime determined masks, which tend to become "wordy". There can be
> simplifications, for instance I couldn't find where the frame length is
> really limited for the S900 (it must be less than 1MB). Since the S700
> supports *more* than that, there is no need to limit this differently.

I was just giving an example of how to handle the bitmasks for different
SoCs if needed. So yeah if it can be avoided, feel free to drop it.

Thanks,
Mani

> =

> Cheers,
> Andre.
> =

> =

> > =

> > hw->flen =3D len & OWL_S900_DMA_FLEN_MASK;
> > hw->fcnt =3D 1 & OWL_S900_DMA_FCNT_MASK;
> > =

> > Then you can use different masks for S700/S900 based on the compatible.
> > =

> > Thanks,
> > Mani
> > =

> >> Thanks
> >> -Amit
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
