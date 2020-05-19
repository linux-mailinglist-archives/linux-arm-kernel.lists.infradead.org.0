Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA9F1D9ADB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Yq9QOGWtISA4Wsj+OjIwGLPqLxqJk0peawgpr9FqRc=; b=hZ73zn/ibOQcT2
	WDUK9CwDM9CEW8I5htZY5iJVWBMeM7LN6IZ1yvHDHVcShfcTWggev/AdjXVKXN+cn+we+XCJ0Iihl
	wEqiBvAWw2gT53DFfbrtcMHzuJpjYxHJfetSZLSYt7HJkvfLrqWuP95z2XJKN65NUA3ol+zLN0H6Z
	fYERwSaloBnKwQWjJRD/0ayxdF948SzhJhgkhBhOa913wxw41ZdzXJoF5Wl2vwxPj9ZTxB2BSaRlt
	91oWWrMwlIjqZS5jWd3GHx+6gNS98YTO6gIfSJRweKir6Mhvb/sWWTi4XLU/8UDswqprCbn5XsrwN
	tzkGNUq+eUwjhkpuvaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3uN-0000Il-At; Tue, 19 May 2020 15:11:55 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3uC-0000HI-SU
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:11:46 +0000
Received: by mail-ej1-x643.google.com with SMTP id j21so7523494ejy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 08:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qFmnDDUmU7bAXUCXAiIOCZYqhy9KJ7cJu0vEwn4yYb0=;
 b=G66bJ6dC8bOeKCV1WGYuwjLa+qKy7Y0+n3uWze8Gn1ZAszBOTqKWQ62WTUjzafwL9U
 +GTPdcyHtNf5XKqMcGlQmJUpD97lSXKgCjwnFB4vjmiLtm75QmbmYTM3DtiB9XBAXubk
 8oSegy8cxFNV3j8wgjPmI1EI4FQZ05wphJXLMEfxZ7N/L87ptMxbQDNAdetxkOFNUMkL
 HpE+J0BbniB9iXMsBbBOr2cxGGu68R8o5msor4h3OyP4WEVKPSwrF4l3Kxol9Kvm0vUG
 oiXtOGlLJLyzkc5iFPnvHSCYntlakDIurYnTYtiSq9/gpPVc72+0QTJLIip+97mGYOYs
 4eDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qFmnDDUmU7bAXUCXAiIOCZYqhy9KJ7cJu0vEwn4yYb0=;
 b=XuE+6WdsqQL7A6iOw2ILNRyrQq+stKyN3lASxmpPD+LyGT/7vATkuaokl6yImY96L0
 YZR2IOCm4+Y9lAwvWIG4IjhLZhAiSC4UqSBJE+KszEXj6PgU2WNAyOiUuTljfWupsnQ1
 1YkNPmx6JXwDHaZQJREVtdWUfL9wNTGVULChjUoKML/l2RalpbWNtdkjEyuSETuf5hLf
 08mJZSQ0gcWrIgEw8gj0A/qHUo28sbukbdclPpJdt7yrlFFwmk4WTJLf0RLMMt3IB1up
 ejGoO1KhHin0E6p2coFFL5dB9a6WEXomYWenghfO4axa6AVdMWN7TXI8pQA/lMKn/1uH
 Hzuw==
X-Gm-Message-State: AOAM530/K9C3HGl29jV3C1az1FW9tr6iXd74L67OI6+X47aPsGlQGyGG
 DtGCKYui5fNmIYomc47JbU52UWliuJZaGiYZXk0=
X-Google-Smtp-Source: ABdhPJzO3neINwRRzJbIjXOIJwQTkTwZpvqUbx/rpVcTcaX7VHke7n+JUXqMuZyVp2d+kaG3FsnjsThgVhsZPoFWTDE=
X-Received: by 2002:a17:906:1088:: with SMTP id
 u8mr1110995eju.428.1589901102998; 
 Tue, 19 May 2020 08:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
 <20200507125357.GA31783@willie-the-truck>
 <CAF6AEGuLU+_qP8HNO1s9PTPHqJnCMHzehmcT8NiJhiAwrfSH6w@mail.gmail.com>
 <CAF6AEGvuHKObTR97XdSXjmjKB+qjQ8N1_wxM=ZU8bEkF=cXp-A@mail.gmail.com>
 <20200511173008.GA24282@jcrouse1-lnx.qualcomm.com>
 <20200518154522.GN32394@willie-the-truck>
 <5a0ad639e272026c8be57393937cda22@codeaurora.org>
In-Reply-To: <5a0ad639e272026c8be57393937cda22@codeaurora.org>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 19 May 2020 08:11:59 -0700
Message-ID: <CAF6AEGuzBtj+srindmOvhaom5BdS2adLaOF=v_MtguMja14V2w@mail.gmail.com>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_081144_939578_2AB51666 
X-CRM114-Status: GOOD (  37.11  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robdclark[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.1 DKIMWL_BL              DKIMwl.org - Blacklisted sender
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS , Joerg Roedel <joro@8bytes.org>,
 " <iommu@lists.linux-foundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 2:26 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Will,
>
> On 2020-05-18 21:15, Will Deacon wrote:
> > On Mon, May 11, 2020 at 11:30:08AM -0600, Jordan Crouse wrote:
> >> On Fri, May 08, 2020 at 08:40:40AM -0700, Rob Clark wrote:
> >> > On Fri, May 8, 2020 at 8:32 AM Rob Clark <robdclark@gmail.com> wrote:
> >> > >
> >> > > On Thu, May 7, 2020 at 5:54 AM Will Deacon <will@kernel.org> wrote:
> >> > > >
> >> > > > On Thu, May 07, 2020 at 11:55:54AM +0100, Robin Murphy wrote:
> >> > > > > On 2020-05-07 11:14 am, Sai Prakash Ranjan wrote:
> >> > > > > > On 2020-04-22 01:50, Sai Prakash Ranjan wrote:
> >> > > > > > > Add stall implementation hook to enable stalling
> >> > > > > > > faults on QCOM platforms which supports it without
> >> > > > > > > causing any kind of hardware mishaps. Without this
> >> > > > > > > on QCOM platforms, GPU faults can cause unrelated
> >> > > > > > > GPU memory accesses to return zeroes. This has the
> >> > > > > > > unfortunate result of command-stream reads from CP
> >> > > > > > > getting invalid data, causing a cascade of fail.
> >> > > > >
> >> > > > > I think this came up before, but something about this rationale doesn't add
> >> > > > > up - we're not *using* stalls at all, we're still terminating faulting
> >> > > > > transactions unconditionally; we're just using CFCFG to terminate them with
> >> > > > > a slight delay, rather than immediately. It's really not clear how or why
> >> > > > > that makes a difference. Is it a GPU bug? Or an SMMU bug? Is this reliable
> >> > > > > (or even a documented workaround for something), or might things start
> >> > > > > blowing up again if any other behaviour subtly changes? I'm not dead set
> >> > > > > against adding this, but I'd *really* like to have a lot more confidence in
> >> > > > > it.
> >> > > >
> >> > > > Rob mentioned something about the "bus returning zeroes" before, but I agree
> >> > > > that we need more information so that we can reason about this and maintain
> >> > > > the code as the driver continues to change. That needs to be a comment in
> >> > > > the driver, and I don't think "but android seems to work" is a good enough
> >> > > > justification. There was some interaction with HUPCF as well.
> >> > >
> >> > > The issue is that there are multiple parallel memory accesses
> >> > > happening at the same time, for example CP (the cmdstream processor)
> >> > > will be reading ahead and setting things up for the next draw or
> >> > > compute grid, in parallel with some memory accesses from the shader
> >> > > which could trigger a fault.  (And with faults triggered by something
> >> > > in the shader, there are *many* shader threads running in parallel so
> >> > > those tend to generate a big number of faults at the same time.)
> >> > >
> >> > > We need either CFCFG or HUPCF, otherwise what I have observed is that
> >> > > while the fault happens, CP's memory access will start returning
> >> > > zero's instead of valid cmdstream data, which triggers a GPU hang.  I
> >> > > can't say whether this is something unique to qcom's implementation of
> >> > > the smmu spec or not.
> >> > >
> >> > > *Often* a fault is the result of the usermode gl/vk/cl driver bug,
> >> > > although I don't think that is an argument against fixing this in the
> >> > > smmu driver.. I've been carrying around a local patch to set HUPCF for
> >> > > *years* because debugging usermode driver issues is so much harder
> >> > > without.  But there are some APIs where faults can be caused by the
> >> > > user's app on top of the usermode driver.
> >> > >
> >> >
> >> > Also, I'll add to that, a big wish of mine is to have stall with the
> >> > ability to resume later from a wq context.  That would enable me to
> >> > hook in the gpu crash dump handling for faults, which would make
> >> > debugging these sorts of issues much easier.  I think I posted a
> >> > prototype of this quite some time back, which would schedule a worker
> >> > on the first fault (since there are cases where you see 1000's of
> >> > faults at once), which grabbed some information about the currently
> >> > executing submit and some gpu registers to indicate *where* in the
> >> > submit (a single submit could have 100's or 1000's of draws), and then
> >> > resumed the iommu cb.
> >> >
> >> > (This would ofc eventually be useful for svm type things.. I expect
> >> > we'll eventually care about that too.)
> >>
> >> Rob is right about HUPCF. Due to the parallel nature of the command
> >> processor
> >> there is always a very good chance that a CP access is somewhere in
> >> the bus so
> >> any pagefault is usually a death sentence. The GPU context bank would
> >> always
> >> want HUPCF set to 1.
> >
> > So this sounds like an erratum to me, and I'm happy to set HUPCF if we
> > detect the broken implementation. However, it will need an entry in
> > Documentation/arm64/silicon-errata.rst and a decent comment in the
> > driver
> > to explain what we're doing and why.
> >
>
> AFAIK there is no erratum documented internally for this behaviour and
> this
> exists from MSM8996 SoC time and errata usually don't survive this long
> across generation of SoCs and there is no point for us in disguising it.

possibly longer, qcom_iommu sets CFCFG..

> Is it OK if we clearly mention it as the "design limitation" or some
> other
> term which we can agree upon along with the description which Rob and
> Jordan
> provided for setting HUPCF in the driver when we add the set_hupcf
> callback?

I'm not too picky on what we call it, but afaict it has been this way
since the beginning of time, rather than specific to a certain SoC or
generation of SoCs.  So it doesn't seem like the hw designers consider
it a bug.

(I'm not sure what the expected behavior is.. nor if any other SMMU
implementation encounters this sort of situation..)

BR,
-R

>
> Thanks,
> Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
> member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
