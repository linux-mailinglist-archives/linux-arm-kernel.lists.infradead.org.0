Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC9C18009B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2830bdAWmjBFW66EFX26CDCvcSrFSYVxGthzHDfOmP0=; b=GVQKgPBLKObVLS
	rCjTzE/TieUJaLLVquM5XRtjTNJRXTR3EzdaHXlcp967Q5uyKEPBxB2RdeVGya6mzrZ3WT15XtgwL
	gxK4Ceg1xrMpk6Kzr5m5r54wQ6nDTe/rJ3M4+WKcRbDD3NZRxVYqLARfcYKgdObTVHaUFMBY+/uOK
	tFUH/sSDou9rQPVjpk6cJVupKAge1v8/YwzSM93Ccd0SAaN/JFRl7OXRwXlBOmTPcE59cw9n8lp3t
	ox/VQnr7V+z8/E4WdHgtaYjZXe9Xy+MdM8jDX87du4038rmP8eeRhjXL/uYzBspscnahgCeqtqtzZ
	SpJW1p1/jO8dmgFxu/2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgF1-0005jP-Ux; Tue, 10 Mar 2020 14:52:19 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgEq-0005i9-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 14:52:10 +0000
Received: by mail-oi1-x244.google.com with SMTP id d62so14078481oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 07:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fFUVmfMGb2rwmeCgDc+OxXoDzfCgkZnat/h7P6fSlBY=;
 b=HSR3iSEVQ9MfXtj3Jvc/60ukZzjL7iQ79bAABPwXMBhp8+ScFgiExP8xh85Gk4xxL+
 F9zbCP49bDG9ONU2/ophyQ8OMiqbLfh5mIP6j/Jh8SWWd6lVKjQb+vpN5qvjYl4K4a9Z
 9gBZ06o2OYBC81ru0VCxWe8it1WATZcMyx4gmU+dS0atAGpdv7Z5pQHc5qDZkUvugZkv
 ZA6qnCzYPwrsSdVls4Tvw8oOOZU1oILy9wnwY0YBDoEW7d+g9UIAll3KFqlrbewpLiZK
 M1YQiKaP5cpQw8VUuVQuKPe7r9W/f0E1ytuG47EavoEo9vKwv7X7hlQZ2Kjqc2ZcBIdx
 Yg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fFUVmfMGb2rwmeCgDc+OxXoDzfCgkZnat/h7P6fSlBY=;
 b=OWZOAn5N21M7DlAIa96fhLbdrKjt7d+CUOvi3yyk1JPu0L9kuQMopYQzANd1ioAhLh
 qVShNTW/kAZMTho8ScaAwQ3rOekZ26jvxsgTy6ml2XIycpMyH2FH3+T6IVE4Fl8l+/b8
 jOEtlSKBRkbvwYgDxmYsoArWPhc2oGnMkrmOwnenboy9P2eUqzSk0D/Pn41e92ndD7ux
 9jADG6ayx+ihnzjzEsEXLRHEDwA4inDvFpggtYJVOVLx4Bb1AlXCB25IbYoXnV1v96Dv
 IsV6yviitYFXGgFwnm2CO/2cshV4rkwOHgxRtRxbYVxGisYvfcYz5hOtScsqDbOPlR06
 Qbyg==
X-Gm-Message-State: ANhLgQ2pvxVDQCO0WfjnxauA3sr0YmhZV91xW2Mz4BJVlXJGWY4X1vqS
 HkZgIs6NTT0ZWfwf+JiZ+ZlUFm3KXL66mZpZawWsqA==
X-Google-Smtp-Source: ADFU+vufuU3ibL4NbodauMU9fIKi9IzATfvnX6tCGAbAKNMnmipiHkFfVBnw3p2HXpCaHGfSultyoTjhz0kFYnEs4Ag=
X-Received: by 2002:aca:474e:: with SMTP id u75mr1382500oia.52.1583851923966; 
 Tue, 10 Mar 2020 07:52:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
 <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
 <da8f38078ef8805200b102a1d24da4ae@kernel.org>
 <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
In-Reply-To: <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 10 Mar 2020 07:51:52 -0700
Message-ID: <CAJ+vNU2Mb8JdSkGfXu-_80b0pDh6KxKRNa9-pTi3_dYoT-=QUA@mail.gmail.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
To: Robert Richter <rrichter@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_075209_025011_F8A94C2F 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 8:35 AM Robert Richter <rrichter@marvell.com> wrote:
>
> Marc,
>
> On 25.02.20 16:27:41, Marc Zyngier wrote:
> > On 2020-02-25 16:13, Tim Harvey wrote:
>
> > > That does enable the erratum, disable KPTI and boot properly but I
> > > misread the erratum and it shouldn't be needed for T81 pass 1.2... the
> > > erratum is documented only needed for pass 1.0.
> >
> > Can you then remove the patch *and* disable KPTI?
> >
> > TX1 is broken beyond recognition and KPTI is known to explode on this HW
> > (which is why we disable KPTI on it). We always attributed it to this
> > erratum,
> > but in the absence of any help from Cavium to identify the problem, we just
> > keyed it on that.
> >
> > *IF* this HW is indeed unaffected by it, then it is probably the mix of
> > KPTI and SWPAN that triggers the issue. If my suspicion is correct, you'll
> > need to have a chat with Cavium/Marvell to understand what is happening
> > there.
>
> I checked the docs and Tim is right, this should be only visible on
> pass 1.0. Thus, the rev range to enable the workaround as implemented
> upstream should be ok. I have asked hw folks regarding this.
>

Robert,

Any feedback on this TX1 issue from Cavium/Marvell?

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
