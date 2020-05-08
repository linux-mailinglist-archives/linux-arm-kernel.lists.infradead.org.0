Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1356F1CB2E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 17:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Odb2Hm38AeYcK06CGkfbWHV0OFJNEAW6/MGzUWFZrI=; b=JEZrt/AzcKqsRH
	lb3vTgJ7ECkqOjl/34fn8AB67MZtUOzWefaQTnUYDlOpPeCCSAnmB91cICsT9nK+1ul98VcWZkAJB
	s4Yw84CEZw8gx/oyXNEyImpG9wARBTndsYm2VQLxJMMtuU9w3loIj7EP0pCjdjcVIDC/Sb7LaZKqW
	Bm52YZZGt3qbQb/aiC6Cq1pJ+BtyLNPU/+jOLGDZ4oBuZx05txtA0jSDc9qaExJcbmsRJuUDe05KH
	KWjblXqpQWlmAEhtwRxQfRwjUdwuWaCLsi0JqNExHbjOR8ssqsatQadsdMb0hrJjNIpuW6UD76A8x
	XDayBw8lXlLpl6+hSwkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX4zR-000844-1W; Fri, 08 May 2020 15:32:41 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX4zJ-0007z5-PW
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 15:32:35 +0000
Received: by mail-ej1-x644.google.com with SMTP id re23so1556185ejb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 08:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GTz5l0c00hn6EnFjS5uVptjSE/ldgre8O5ShnulBHJM=;
 b=AO3PI6cefQSmPY9BgmqyKwHSBzaduMYzVaTdFLkqa1efLEjNVN0/u65uQJMDpCBIX3
 51zgKzcQzha+y6a7/OPfRXbr6m5R3VZIGkRkyTDGYpwMb9ECK4bvbMZ+I27CNLdLRx2F
 /L36lYnM+Jq+IapA90rdEI3gOI4L3lxmsVQOXfIVklcUVPeHUY3/H9D1d4mIBDkNiIU9
 bagZT/tZj6HuIh2pldNQ/3lRVSnEFjbyTjybV8POU8uwTdVqVCb8cSKFnIB3pmdiTvm1
 rCAQLwWDd+jK0407FPY3RGYnxPBMz4sNO7Vaec1et5f5T8f3vYyj4bQZPX/GYmSL1TmQ
 ac+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GTz5l0c00hn6EnFjS5uVptjSE/ldgre8O5ShnulBHJM=;
 b=S8jRJkngbpFpDvMo7eWMQLZD6nwG0yADftSkKPr5AUvA6AnS1aqTWy1ZxZR5wabNkD
 wlvf3rClqFUbFp8FpgJGZ623sLfHG2n2PTWO9ccV94qCxeTCU+nzOXBxJGgBELV+6htB
 xEKnzVKr9lAUu802B7UkOBuHSXSobAfUp7DDoQsnEDw9wVqVoYimlBrgwvFrCfWoLOXm
 w76DEmJCMMm3ghZqksRtw6PZlcolDHrTcfJ40yvyueYOvgjdyJpgj6grDfm6VrI/vVyA
 d9An8kP/SWaXATvv/eEMc6iON6ZTGxnEdE2zR/UdWBrUv2bwK2INLBj+AUGwgPLjvfY/
 6P0A==
X-Gm-Message-State: AGi0Puae7i+yzC6v5ShPEGW74wAbEHQfmWD5IAl51VX4DCt9C/n4WMsG
 tbKd/fZyVK9Kz4yMLIc6wFhb+RtmlQ9OwhU0ewE=
X-Google-Smtp-Source: APiQypJyshfUHi9pIvxw9h4TZSugZC/AW7KiccDfzWF16matIJfx7xWHDYc2iaGC9dsLuUF9c5YEOslnCiicxndfdLU=
X-Received: by 2002:a17:906:2503:: with SMTP id
 i3mr2165613ejb.293.1588951948487; 
 Fri, 08 May 2020 08:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
 <20200507125357.GA31783@willie-the-truck>
In-Reply-To: <20200507125357.GA31783@willie-the-truck>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 8 May 2020 08:32:45 -0700
Message-ID: <CAF6AEGuLU+_qP8HNO1s9PTPHqJnCMHzehmcT8NiJhiAwrfSH6w@mail.gmail.com>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_083233_829812_21EDDE25 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robdclark[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 5:54 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 07, 2020 at 11:55:54AM +0100, Robin Murphy wrote:
> > On 2020-05-07 11:14 am, Sai Prakash Ranjan wrote:
> > > On 2020-04-22 01:50, Sai Prakash Ranjan wrote:
> > > > Add stall implementation hook to enable stalling
> > > > faults on QCOM platforms which supports it without
> > > > causing any kind of hardware mishaps. Without this
> > > > on QCOM platforms, GPU faults can cause unrelated
> > > > GPU memory accesses to return zeroes. This has the
> > > > unfortunate result of command-stream reads from CP
> > > > getting invalid data, causing a cascade of fail.
> >
> > I think this came up before, but something about this rationale doesn't add
> > up - we're not *using* stalls at all, we're still terminating faulting
> > transactions unconditionally; we're just using CFCFG to terminate them with
> > a slight delay, rather than immediately. It's really not clear how or why
> > that makes a difference. Is it a GPU bug? Or an SMMU bug? Is this reliable
> > (or even a documented workaround for something), or might things start
> > blowing up again if any other behaviour subtly changes? I'm not dead set
> > against adding this, but I'd *really* like to have a lot more confidence in
> > it.
>
> Rob mentioned something about the "bus returning zeroes" before, but I agree
> that we need more information so that we can reason about this and maintain
> the code as the driver continues to change. That needs to be a comment in
> the driver, and I don't think "but android seems to work" is a good enough
> justification. There was some interaction with HUPCF as well.

The issue is that there are multiple parallel memory accesses
happening at the same time, for example CP (the cmdstream processor)
will be reading ahead and setting things up for the next draw or
compute grid, in parallel with some memory accesses from the shader
which could trigger a fault.  (And with faults triggered by something
in the shader, there are *many* shader threads running in parallel so
those tend to generate a big number of faults at the same time.)

We need either CFCFG or HUPCF, otherwise what I have observed is that
while the fault happens, CP's memory access will start returning
zero's instead of valid cmdstream data, which triggers a GPU hang.  I
can't say whether this is something unique to qcom's implementation of
the smmu spec or not.

*Often* a fault is the result of the usermode gl/vk/cl driver bug,
although I don't think that is an argument against fixing this in the
smmu driver.. I've been carrying around a local patch to set HUPCF for
*years* because debugging usermode driver issues is so much harder
without.  But there are some APIs where faults can be caused by the
user's app on top of the usermode driver.


BR,
-R

>
> As a template, I'd suggest:
>
> > > > diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> > > > index 8d1cd54d82a6..d5134e0d5cce 100644
> > > > --- a/drivers/iommu/arm-smmu.h
> > > > +++ b/drivers/iommu/arm-smmu.h
> > > > @@ -386,6 +386,7 @@ struct arm_smmu_impl {
> > > >      int (*init_context)(struct arm_smmu_domain *smmu_domain);
> > > >      void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
> > > >               int status);
>
> /*
>  * Stall transactions on a context fault, where they will be terminated
>  * in response to the resulting IRQ rather than immediately. This should
>  * pretty much always be set to "false" as stalling can introduce the
>  * potential for deadlock in most SoCs, however it is needed on Qualcomm
>  * XXXX because YYYY.
>  */
>
> > > > +    bool stall;
>
> Hmm, the more I think about this, the more I think this is an erratum
> workaround in disguise, in which case this could be better named...
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
