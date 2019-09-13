Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC702B2898
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 00:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufNENjPMtpeD7si0cRfkX8PEVJCE9fS0yantedDNQvc=; b=u8ENQoCj+SaYl6
	31uZoUo3rGEYQwV5BhN276f0l+QLt8a416+aDm2Qup/kuV1Yqw02NxHaRJOFQ6BTeeKQBvp2V9LkG
	h2JdrWhJIdnteFGAIbzjk+9KsrPTCzuOLq0O38+7HLAgnP1knG946lN7HMje0SJyrkEBzG8RWVW8V
	RhGt/14Hqi1dmwqPqI/g4D4EduIaWaiOsjQ8UZtTWzlrXaZtVKaqU1OwnIQn8XvcLo2tvHMlXDK5p
	moTO6ycVykssMvGfDGuvcn0OY+B5PbOpYmkbzfxqLVCNF1hKpx97iiHyDVYQHYQOLtS33bbvTq2z2
	mWLlpUm/qjBwSUQcflzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8uIx-0005dK-0l; Fri, 13 Sep 2019 22:44:39 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8uIm-0005cz-Md
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 22:44:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id m11so66120667ioo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 15:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iZvFCpWMi0dDeMT1aWsD1WV44I02N4our5N95iPWEjI=;
 b=LDBYFek1n3fYD1r8PdyfPdcnTh9MaOT71Jj5+kCVcQRn4sBsJs5zvLnwi+5E0cjLMf
 72n4nCQwMJf7+QSaU2DgfLEmqi8G7Gu7KtCf7RflIUvS/cpVcLkwld2mfM81otbO/AVm
 8Zkx8v6Qm34iUfeSGrR/st1V+2bVnm3ZGMb9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iZvFCpWMi0dDeMT1aWsD1WV44I02N4our5N95iPWEjI=;
 b=W/yRnUoqVY/Yo/UMvWE9JuDo0sJBXePXNjN+3dOfNIHsC7M9+PisuYWT/ayJXlMC7q
 IPB6TQT6DpKoUuamvi+OdHchK1HhnKqsRbJWJefqA7taO6MJ4FKCDMWZQ3e0hRp0LEua
 dgqiEIdylt41xJ1tV134qoYUeRaGuP1dtqJ2xoLOfRONL4QV/8QauPINX7QNXUyZjjXl
 XLG5vU99M7Q2G6Y+mEcJ+MEMIXzIvp6BPV1bhQxaFLPHN0SPTcRN40hBeMQahVp5Ryzj
 8JVFVf/HPOA6YmvlZqu4K9ohxFQ0rc7OfBZf3wez2S8vTgkALE1eZHaO/C+0A6jHiLt2
 yk2A==
X-Gm-Message-State: APjAAAVPvhE9cByJ9WdEv/S4k4NKkQJWaXBvdJN5rQoRn9ohNxUPu5Ff
 +ytWOx9dPXifx5oBDnK2zgIX9YKs21c=
X-Google-Smtp-Source: APXvYqyAB6mwFE/yz4t/lwhv3rWHqpriOSxUWQ8UO9I+NTJDblLgQw7+M104Y4Kd1claL7HlD2NgjQ==
X-Received: by 2002:a05:6638:a19:: with SMTP id
 25mr55317674jan.27.1568414666703; 
 Fri, 13 Sep 2019 15:44:26 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id k66sm49224079iof.25.2019.09.13.15.44.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2019 15:44:26 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id m11so66120465ioo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 15:44:24 -0700 (PDT)
X-Received: by 2002:a05:6638:155:: with SMTP id
 y21mr1214254jao.112.1568414664348; 
 Fri, 13 Sep 2019 15:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
In-Reply-To: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 13 Sep 2019 15:44:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XPi+DCwg2DWbZkXQGTpxWy=vWa1LQR=zHZr93WKjCmzA@mail.gmail.com>
Message-ID: <CAD=FV=XPi+DCwg2DWbZkXQGTpxWy=vWa1LQR=zHZr93WKjCmzA@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu: Report USF more clearly
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_154428_767016_D14E1EAF 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <joro@8bytes.org>,
 Will Deacon <will@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Sep 13, 2019 at 4:48 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
> for smoking out inadequate firmware, the failure mode is non-obvious
> and can be confusing for end users. Add some special-case reporting of
> Unidentified Stream Faults to help clarify this particular symptom.
>
> CC: Douglas Anderson <dianders@chromium.org>

nit that I believe that "Cc" (lowercase 2nd c) is correct.

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu.c | 5 +++++
>  drivers/iommu/arm-smmu.h | 2 ++
>  2 files changed, 7 insertions(+)
>
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index b7cf24402a94..76ac8c180695 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -499,6 +499,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
>         dev_err_ratelimited(smmu->dev,
>                 "\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
>                 gfsr, gfsynr0, gfsynr1, gfsynr2);
> +       if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> +           (gfsr & sGFSR_USF))
> +               dev_err_ratelimited(smmu->dev,
> +                       "Stream ID %hu may not be described by firmware, try booting with \"arm-smmu.disable_bypass=0\"\n",
> +                       (u16)gfsynr1);

In general it seems like a sane idea to surface an error like this.  I
guess a few nits:

1. "By firmware" might be a bit misleading.  In most cases I'm aware
of the problem is in the device tree that was bundled together with
the kernel.  If there are actually cases where firmware has baked in a
device tree and it got this wrong then we might want to spend time
figuring out what to do about it.

2. Presumably booting with "arm-smmu.disable_bypass=0" is in most
cases the least desirable option available.  I always consider kernel
command line parameters as something of a last resort for
configuration and would only be something that and end user might do
if they were given a kernel compiled by someone else (like if someone
where taking a prebuilt Linux distro and trying to install it onto a
generic PC).  Are you seeing cases where this is happening?  If people
are compiling their own kernel I'd argue that telling them to set
"CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT" to "no" is much better
than trying to jam a command line option on.  Command line options
don't scale well.

3. Any chance you could make it more obvious that this change is
undesirable and a last resort?  AKA:

"Stream ID x blocked for security reasons; allow anyway by booting
with arm-smmu.disable_bypass=0"

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
