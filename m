Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C78159E17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:40:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDOf09V/l4imyzDyW7igR52Nzj3MPowCC6aHdYHLQ84=; b=mjZtNO+d9zz1o6
	aV11D8QrCxgA+idKPM/drTQ3rjJuK5YMTaHLbanoBGJLnQiAmOJOvUiS1YtFh3X3tou9zdm+D2e+j
	ToSb8ZcM2Xx7+3xOMO5vS9XtmhspVKDJOckS2UU9wwdMr2tyIvNep+4p4f2LZCCD/8IykSP8LYbmE
	zO1BDjDMurvOjQikRne4JPPaYAy/u+Rm33WsXML7kuijtt3+E10i4TCeFnWCakIWkm6Sn1DdItYYS
	mpP82ibs0ZrJjnuqXkPhWtwhi3tnfTVbtwHWf30/MPIWCgsLv8WK3NnZqiD25QNRyDbTmON2wrMVp
	6jPA3J33I1vhxkU7A3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1g4M-0006hl-EZ; Wed, 12 Feb 2020 00:39:58 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4F-0006ge-FA
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 00:39:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id 77so204249oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 16:39:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=noQt5nFC8uX1+KZFclIWhAR/XrOfOL5Ao8eiHvlk32o=;
 b=CMp0Q15+KYm1QlhBADRZzXS/PwWW2WwV44eSCNC9xhwGNDSaUHRpB8BNbIxoMZ/QZD
 S8NCzVfqUK2NjXF08FPGmh32XWxmxSsBXUpq9vXcHwO77lvf9jNBNamaGErae3w+nBfD
 PZYPGvumCCDvLimYUIMNp2+HktHwBmj/wMFUGE1tFuH/ouB7eZgUnaz3nmYiu5KzRMPk
 dXGrEG4G5SasEmW32zy32RZfZArDIdOHTUN/qcVKwq+rD/tW+DpeD/4RGsPhJ0FF2Dj7
 E7YHF6g+KtXE/x7GIHC7nMD7KJSW9uNfYpCvwrevgib0BPwrJnsirlA9oX3FSqP38ynr
 jODw==
X-Gm-Message-State: APjAAAUHDbLV/5LFUxVo9/5b/6IbafV1liyFz/hMhQ8VbJYHS9rJ0gqY
 wU/cVlawm8FZTmbxXvN7H4/h/cLx
X-Google-Smtp-Source: APXvYqxCx1J6+5RzwBBGa7TkxeCY3FCg157KZ/J5NlgCM2n+Mf4SEWI50hXYUxKjeHcaDEvymeQA4g==
X-Received: by 2002:a9d:7f98:: with SMTP id t24mr7590139otp.338.1581467989671; 
 Tue, 11 Feb 2020 16:39:49 -0800 (PST)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com.
 [209.85.210.42])
 by smtp.gmail.com with ESMTPSA id f1sm1795901otq.4.2020.02.11.16.39.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 16:39:48 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id r27so193216otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 16:39:48 -0800 (PST)
X-Received: by 2002:a9d:7f83:: with SMTP id t3mr3624739otp.63.1581467988518;
 Tue, 11 Feb 2020 16:39:48 -0800 (PST)
MIME-Version: 1.0
References: <1581464215-24777-1-git-send-email-leoyang.li@nxp.com>
 <20200211234536.GK25745@shell.armlinux.org.uk>
In-Reply-To: <20200211234536.GK25745@shell.armlinux.org.uk>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 11 Feb 2020 18:39:37 -0600
X-Gmail-Original-Message-ID: <CADRPPNSOYOe3vuUFEp3z-1RX6QHmRFJpxHTCLhniX-0hh2T01Q@mail.gmail.com>
Message-ID: <CADRPPNSOYOe3vuUFEp3z-1RX6QHmRFJpxHTCLhniX-0hh2T01Q@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu: fix the module name for disable_bypass
 parameter
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_163951_508902_36DE1C9B 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 5:47 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Feb 11, 2020 at 05:36:55PM -0600, Li Yang wrote:
> > Since commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module"),
> > there is a side effect that the module name is changed from arm-smmu to
> > arm-smmu-mod.  So the kernel parameter for disable_bypass need to be
> > changed too.  Fix the Kconfig help and error message to the correct
> > parameter name.
>
> Hmm, this seems to be a user-visible change - so those of us who have
> been booting with "arm-smmu.disable_bypass=0" now need to change that
> depending on which kernel is being booted - which is not nice, and
> makes the support side on platforms that need this kernel parameter
> harder.

I have sent a new patch replacing this patch.  That patch will keep
the command line unchanged.

>
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > ---
> >  drivers/iommu/Kconfig    | 2 +-
> >  drivers/iommu/arm-smmu.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> > index d2fade984999..fb54be903c60 100644
> > --- a/drivers/iommu/Kconfig
> > +++ b/drivers/iommu/Kconfig
> > @@ -415,7 +415,7 @@ config ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT
> >         hardcode the bypass disable in the code.
> >
> >         NOTE: the kernel command line parameter
> > -       'arm-smmu.disable_bypass' will continue to override this
> > +       'arm-smmu-mod.disable_bypass' will continue to override this
> >         config.
> >
> >  config ARM_SMMU_V3
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index 16c4b87af42b..2ffe8ff04393 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -512,7 +512,7 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
> >               if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> >                   (gfsr & ARM_SMMU_sGFSR_USF))
> >                       dev_err(smmu->dev,
> > -                             "Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu.disable_bypass=0\" to allow, but this may have security implications\n",
> > +                             "Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu-mod.disable_bypass=0\" to allow, but this may have security implications\n",
> >                               (u16)gfsynr1);
> >               else
> >                       dev_err(smmu->dev,
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
