Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40E8198A50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 05:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Mb0LR0ElXXKn1KCDJ5cwfm56odxmJCokeM8fwfj1VI=; b=gEZ7g7bLUI+Vub
	4m2lFjN7TUj5SmoUAwSRoS6QcOHiu6mb6bVbjsk7SUodeEIIpeI1wsWNjJs6P4GlClCEZJKBX2bWT
	ZqHDSHTNAMn3zCRTsqW2w+sCjUm5OaXc8ved38DWaijHRD817z+iNVBBdshyQqmim/NwUkLBSjCMJ
	jjg6c01M/sS6Alcr/coaeURoNKiegRyt2mYU7y0TYYPpaSPVhLZ9f7RXwqIB7HsY7WzmlDROV8UkI
	FHahZ56jglOQK6xokUCjXPNNgB5hcvaFppN964tWSwUmjQJPPhE/xlD1XncGkGJpbP/E/gJ8MGAkG
	6tWRDDfp6+CQ9kehIO1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ79X-00076U-67; Tue, 31 Mar 2020 03:01:23 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ79L-00075q-HN
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 03:01:13 +0000
Received: by mail-il1-x143.google.com with SMTP id p13so17989743ilp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 20:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=cnHGhaVmF2sZ2zdyMkAgybYPXWimI0xp+Owp3zivaQI=;
 b=Kh8bl44hOUrGrVDvAEQwboGhE8JT4Lq45vBR91/9ebcXk415gUb63f7QzHacwzKxXA
 NZvpRYm0/zAZOUogKxv1bHGANo2lzr51qC/d15pVYWM5EbSAM4fIEVYTEf1pAFA1s0Qp
 SEx0j3JrVkOqoqNHnwpnOPm6ediSY0d2mt1WnKjYKyDJFSqeCaMc6siPCPj/0jcSC3BR
 DCL12V+XP7heHLbCUrsICt/NaNuac84ai9S36vjw0zGQBASd93jaNWBCXvxRiRlHZtLn
 ZK/dN7If6SwjNaV+GAFDcAybagpOH0JNc/ArpN2qUZIx+fhqlMQMGTOuMJ1px+rauEOw
 pHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=cnHGhaVmF2sZ2zdyMkAgybYPXWimI0xp+Owp3zivaQI=;
 b=ngacUKGsIhoEmXbFmhZYQXmf1CB9yWf/I/w5MdtyoWmThxLD2e8B9txoyTr7XIuhPX
 8kn9GQNTURx36nIWVnj4aJ0EV7DSC4mzwxl2yOaIIjnUop8wmV4NToDg1WEAvbIPrPxG
 UZ7RpYc2DOhVvd0LagkyUHku1ueWtYY5aLaV3frUgIIwjpcvws/+oB1DrlSuqfYa9Yxa
 XtfV1z3ujxMkw+eLDneU2FqNANn88hbSCTeUsW53wTK2hemPabZpz9L24CR3N2Rcc8Qz
 iTJTGSCe0erQtd/wMc0aBWuKYTot1QR9XFUZWUZ06+EC5jXzuYH8kttTkhUN583PJ8Ve
 bkcw==
X-Gm-Message-State: ANhLgQ3K8+vNgoaSQGaqMdILV9q/daK4X14KIPWxzeRP8lngBYLiHhaH
 YW2UAAXN+PMXYI+FsVXuDHtoneYbn/Z6DEhjSvI=
X-Google-Smtp-Source: ADFU+vuGuZE7rZTqrboHL4BoLb0D+bPlHXVLsiF86m6TGldaTLI2ztokC5N2VOTQYpOgA2Q7/5qpT9b+kZdqELV4Hcg=
X-Received: by 2002:a92:49da:: with SMTP id k87mr11067344ilg.149.1585623669293; 
 Mon, 30 Mar 2020 20:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200330214721.GA128269@google.com>
 <bba72560-85cc-b59b-b0e8-bfc7c7408736@nvidia.com>
In-Reply-To: <bba72560-85cc-b59b-b0e8-bfc7c7408736@nvidia.com>
From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
Date: Mon, 30 Mar 2020 22:00:57 -0500
Message-ID: <CABhMZUXub++CLTJ_E88Jwar5RvVfL+3aWOHqZf5XSVeyS8X=wA@mail.gmail.com>
Subject: Re: [PATCH V5 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
To: Vidya Sagar <vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_200111_602576_D06A6D46 
X-CRM114-Status: GOOD (  23.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.helgaas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: bjorn@helgaas.com
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 LKML <linux-kernel@vger.kernel.org>, robh+dt@kernel.org, jonathanh@nvidia.com,
 thierry.reding@gmail.com, Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, kishon@ti.com,
 ARM <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 9:55 PM Vidya Sagar <vidyas@nvidia.com> wrote:
>
>
>
> On 3/31/2020 3:17 AM, Bjorn Helgaas wrote:
> > External email: Use caution opening links or attachments
> >
> >
> > On Tue, Mar 03, 2020 at 11:40:52PM +0530, Vidya Sagar wrote:
> >> Add support for the endpoint mode of Synopsys DesignWare core based
> >> dual mode PCIe controllers present in Tegra194 SoC.
> >>
> >> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> >> Acked-by: Thierry Reding <treding@nvidia.com>
> >> ---
> >> V5:
> >> * Added Acked-by: Thierry Reding <treding@nvidia.com>
> >> * Removed unwanted header file inclusion
> >>
> >> V4:
> >> * Addressed Lorenzo's review comments
> >> * Started using threaded irqs instead of kthreads
> >>
> >> V3:
> >> * Addressed Thierry's review comments
> >>
> >> V2:
> >> * Addressed Bjorn's review comments
> >> * Made changes as part of addressing review comments for other patches
> >>
> >>   drivers/pci/controller/dwc/Kconfig         |  30 +-
> >>   drivers/pci/controller/dwc/pcie-tegra194.c | 679 ++++++++++++++++++++-
> >>   2 files changed, 691 insertions(+), 18 deletions(-)
> >>
> >> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> >> index 0830dfcfa43a..169cde58dd92 100644
> >> --- a/drivers/pci/controller/dwc/Kconfig
> >> +++ b/drivers/pci/controller/dwc/Kconfig
> >> @@ -248,14 +248,38 @@ config PCI_MESON
> >>          implement the driver.
> >>
> >>   config PCIE_TEGRA194
> >> -     tristate "NVIDIA Tegra194 (and later) PCIe controller"
> >> +     tristate
> >> +
> >> +config PCIE_TEGRA194_HOST
> >> +     tristate "NVIDIA Tegra194 (and later) PCIe controller - Host Mode"
> >>        depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
> >>        depends on PCI_MSI_IRQ_DOMAIN
> >>        select PCIE_DW_HOST
> >>        select PHY_TEGRA194_P2U
> >> +     select PCIE_TEGRA194
> >> +     default y
> >
> > Sorry I missed this before, but why is this "default y"?  From
> > Documentation/kbuild/kconfig-language.rst:
> >
> >    The default value deliberately defaults to 'n' in order to avoid
> >    bloating the build. With few exceptions, new config options should
> >    not change this. The intent is for "make oldconfig" to add as little
> >    as possible to the config from release to release.
> >
> > I do see that several other things in other drivers/pci/ Kconfig files
> > are also "default y", and we should probably change some of them.  But
> > I don't want to add even more unless there's a good reason.
> >
> > I'm not looking for more reactions like these:
> >
> > https://lore.kernel.org/r/CAHk-=wiZ24JuVehJ5sEC0UG1Gk2nvB363wO02RRsR1oEht6R9Q@mail.gmail.com
> > https://lore.kernel.org/r/CA+55aFzPpuHU1Nqd595SEQS=F+kXMzPs0Rba9FUgTodGxmXsgg@mail.gmail.com
> >
> > Can you please update this patch to either remove the "default y" or
> > add the rationale for keeping it?
> I'm fine with removing 'default y' line.
> Should I send a patch only with this change?

I think it's probably just as easy for Lorenzo to delete that line on
his branch.  If not, I'll cherry-pick the patches on that branch and
do it locally.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
