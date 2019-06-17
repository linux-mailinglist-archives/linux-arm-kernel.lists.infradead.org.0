Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DE6480DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7F7eclx2T1cqGDiYdycT6zJ1vsn/q9XVR4hg4PfcBVk=; b=RvzMhOnedZD5MI
	8ibbfJyZXJ+4BLIsOCdvu/XWc07en/00/wN63XoGYUrOKIs5Wcj1iV9Er9aKMSpmdlDOUVZqU8rvJ
	KVtVLATNZaYkufftFut4LaCdy2S0Oo+jgtwgvtRHl4+tkRhfsRmSuJKo9ozzCr2+gCwaWEfB3MUUD
	HA3CptUJL8Im4Kk3p3vbSoACp+9hdRydaJiintpRoQvSN4FZe5Xmx3n0IuHexellTDUmWt5xQjLbQ
	UCDc7+oTCQMEBmYmiyH4Y68MdkM8KGwFZKYgWajDHJCjTNOTRozzdxQnnkd4sjy2K0u25DJcfzI3C
	JoHhojXCTywJAWCX0B0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpva-0007UE-5K; Mon, 17 Jun 2019 11:35:58 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpvI-0007Th-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:35:42 +0000
Received: by mail-vs1-xe41.google.com with SMTP id a186so5876073vsd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oarxy7p2A8M3e32Cd3ZGKiQh3eZMCQGravoCB5ouj68=;
 b=JnWxiIKJnHT6irJrl0SZV7N86mxeB7Jog5bebll+L/jQV3DuM2fXmD5S85vgPJAYI4
 xp+XPND9LYJ24EcwVkhr5CbRgW2AQ83dPZ5s3Qxr8RIwzSsgy/pJpKTu3JSn4w9wXSQh
 zRkHooSvQLAR1gJgYp4uv6e2+fZ6pb16OOdtveCojyGEJ4S6PF1d14oFNEY9wgy+XVsI
 lAF6/UPGt1H8OdgAcCw/BPfa60GC1X4Anw7X9uXrHcPasGBWUuBkaFCgCaYGBQ3/XIAB
 1Z+XkOSQ9252AzTMwiKYPnTo1JVJveshNtwKTiFEnNlEmN+PxsOVxotew2kAaQtc1/y3
 FKJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oarxy7p2A8M3e32Cd3ZGKiQh3eZMCQGravoCB5ouj68=;
 b=Fq699vWsCc4V0IU7f0QqPbe6OHl+pLB1KJ66fPYxXwFW7zEt6qwPzPFo/e4jBRuGxG
 k3ZvB2T8BUFdH/3ZgNAJf6V3ATyRzvZiuo7VCPQEDQfDhA/Z3RRN0aoBQNUbbO+y7zns
 7S4SxmviYZg3NKl9clS7OTdwQrRM69j8ezAeXoblkoAU87ctuqGfVX91k7oSt1pQL/L9
 tGqaopZhXrh0UD+uvks28zEOgxhLZU6+K82f+OMjLbGvo1BuMD66tdEN/ixZjwbi8y5r
 XssnwVbILuGu5hd1LWBdE1+xIW6qVNlvKioroPjzl9WbGOtI6IJ7xjG29KzhwrWHxxPt
 ptag==
X-Gm-Message-State: APjAAAVBR5sqG0+9/FhXlBJjSO0ibY3GQbnyBs6JBBJjb3u4eHSlPbO+
 Hfca+1+DFEcwyGJNpwWFOXfboWvqYnqhvY+TJiD64hoa
X-Google-Smtp-Source: APXvYqwcHEVwhj3FTseMM1MQYfqpoVrbYJpW+a7vzqtz0JpcbL/XOQHVC14jXXzahRuLm4BZ4JoZKMxnEhMY0YILz0A=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr60218560vsp.35.1560771339760; 
 Mon, 17 Jun 2019 04:35:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190604060914.10886-1-faiz_abbas@ti.com>
In-Reply-To: <20190604060914.10886-1-faiz_abbas@ti.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 13:35:03 +0200
Message-ID: <CAPDyKFqt9N+Hn-VhEr0ANv3zXLGyjCDEDiBgEx8FpLFBBzT0EA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add Support for MMC in J721E
To: Faiz Abbas <faiz_abbas@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_043540_955964_53C7AF9D 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, DTML <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 08:09, Faiz Abbas <faiz_abbas@ti.com> wrote:
>
> The following patches add driver support for MMC SDHCI interfaces on
> TI's J721E devices. The 8 bit and 4 bit instances have phys which are
> different from the am65x interfaces as well as different from each
> other which leads to 3 different compatibles and a bunch of flags for
> indicating the differences.
>
> Depends on Nishanth's initial J721E patches here:
> https://lore.kernel.org/patchwork/cover/1077382/
>
> Also depends on my fixes for AM65x driver here:
> https://lore.kernel.org/patchwork/cover/1079924/
>
> Tested with: j721e-evm and am65x-evm.
>
> DT patches will be added in a separate series.
>
> Faiz Abbas (4):
>   dt-bindings: mmc: sdhci-am654: Document bindings for the host
>     controllers on TI's J721E devices.
>   mmc: sdhci_am654: Add Support for 8 bit IP on J721E
>   mmc: sdhci_am654: Add Support for 4 bit IP on J721E
>   arm64: defconfig: Add config for MMC on AM65x and J721E devices
>
>  .../devicetree/bindings/mmc/sdhci-am654.txt   |   9 +-
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/mmc/host/sdhci_am654.c                | 257 +++++++++++++-----
>  3 files changed, 204 insertions(+), 63 deletions(-)
>
> --
> 2.19.2
>

Patch 1->3 applied for next, patch is for arm-soc, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
