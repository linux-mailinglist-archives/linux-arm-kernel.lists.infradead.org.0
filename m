Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27D71A0EFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 16:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJbgeC7gsYIB8PVQ9gXUMi0VYO3o6E1Bcs8M9qujtak=; b=GZVyNO6yJcnnsn
	fAdnV2OvRPTYvdJAnj3qid7hZCWkMuIdfWpUFFUSZH5w+AD4TqflYqlzURAjITH+ZiFKwDOo8QILw
	BWJ3784DD6HIZeuK56UMtb0F3ChJpfa6bFJAftEKfg+7qnrXJkBx86eWE0Rtjimb0JhERBBCjhhKS
	YS3cpg66sZgv3B1D5RlX2WfI+JZIjG8bpzFcSfsBHqnbAvgE5UlucSDgtqaep+VVzbBkVFi1vauU0
	HOMiKmi6afxMQBf8Fs5z6G6R3FDLTfNb6HF1yT2KGfFNekwSs2IaWY5OgZ1fFTZ2bTcy7bQLEAfAj
	04dCKzHfhGO62elUzyhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLp1y-0002ch-1g; Tue, 07 Apr 2020 14:16:46 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLp1r-0002aH-Jx
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 14:16:40 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B59B859E;
 Tue,  7 Apr 2020 16:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586268993;
 bh=CcU2iAia1wY4OY0Wlixli88UQl/oDVQJd3BN2oHVZs4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hyx/r2qvOlhW/upsn1igaKv3oxlLGcSnhX+2DoQ0FH+lQrwx8zYoWNsqDWEBT4CKj
 oPNY9yZdASHuEJaHeFRyZAnMLIC3Fo9mHavnwXkFOAwGBriB9/5rKXn/AP7AqGoVFv
 r5MsZwh13hLhgZBGK7HbMd3B5QlAYYCZcPkHptlA=
Date: Tue, 7 Apr 2020 17:16:24 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 0/4] defconfig: fix changed configs and refresh
Message-ID: <20200407141624.GG4751@pendragon.ideasonboard.com>
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
 <CAMuHMdWrekHiADkMmgO5nDxFNYjLud7FD=7ArMZNQire_+7TQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWrekHiADkMmgO5nDxFNYjLud7FD=7ArMZNQire_+7TQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_071639_804830_27DB73B0 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Max Krummenacher <max.oss.09@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Li Yang <leoyang.li@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vidya Sagar <vidyas@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Tue, Apr 07, 2020 at 03:16:14PM +0200, Geert Uytterhoeven wrote:
> On Tue, Apr 7, 2020 at 12:36 PM Max Krummenacher <max.oss.09@gmail.com> wrote:
> > Three configs have been renamed and/or changed behaviour.
> > Clean that by using the new config name.
> > Then refresh the defconfig with make defconfig savedefconfig.
> >
> > The refreshed defconfig does result in a not changed .config.
> >
> > Applies on linux-next/master tag: next-20200407
> >
> > Max Krummenacher (4):
> >   arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed config symbol name
> >   arm64: defconfig: PCIE_TEGRA194: follow changed config symbol name
> >   arm64: defconfig: ARCH_R8A7795: follow changed config symbol name
> >   arm64: defconfig: refresh
> 
> Probably CONFIG_DRM_DISPLAY_CONNECTOR should also be enabled for HDMI,
> VGA, and composite display connectors on various boards since commit
> 0c275c30176b2e78 ("drm/bridge: Add bridge driver for display
> connectors"), but it's not clear to me when exactly this became a
> requirement, as before there was no code that looked for e.g.
> vga-connector.
> Laurent?

It's not required yet for R-Car DU, but I'm working on changing that :-)
If we can enable CONFIG_DRM_DISPLAY_CONNECTOR in defconfig as part of
this series, it would be useful for me.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
