Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928CF33FF9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhRH9yuKLkdG2vlYGj0vzKNtrV/KQBEAY16Zlp8wXeM=; b=isc8E70mSWi9BW
	42bJjSg3euUwGRwzb2l4pxS0PiBBBsiV3Ryuo+/ZJdQ5bNPlySodRZc11VEJ3EiDTrVOqFlDCTiEA
	4mV/ZeeC6juCQeOh644Ui4QOxXRU0CVAYk2VYA1wL9ILErNpfGGqLQgN95gJ+WLq9BZvBI8aMGBbM
	ZTJc8YeFfAvxox4R5a0LE2Flute1r0vAshzl9Hy5BuJTgEm1ELMpIUB/W6f9mmjE34KCR3AeJf3nY
	wnuyI1pN00P7scVFG+T8Off+YixtqdSkfoll46pNPqxPBHlVHWOcXw+BqU5Bu7yOVYEg5xF/D7RsT
	5vMrig+IkCwyE9e0ZnKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3l6-0006HJ-Tg; Tue, 04 Jun 2019 07:21:24 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3l0-0006GY-Ej
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:21:20 +0000
Received: by mail-ot1-x344.google.com with SMTP id z23so3634245ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ij+iH+M/8ZGiIrnkdLwppmtGhbFWZZmZrQ33Tj+/Mrc=;
 b=yDQg+Hbw5mvBGb4xUoz1ag1VKA420B8yfXatcUYRBXoujf5xxVROodAkEMzm8vGAC8
 +5K8jcn4Ao8NvD4JFJ30tPa4FxPLtsvjTiDEc4A6xr1qls6+yHGTl34nS3GGXTRNMG1a
 QuLGgwjRM6Qz0d5ZSf4t9cRe5xrRzXB3PNGSy2KeYeNMwJp63r9fUy+g10j49J6JSvXU
 c9Zq14VEyHF4ckszQM1axPb9e/84ZtxZo00GDS7DPGq1MNkOklXhVUMs6jXt630id1xi
 tdmTAjKLSKqQCkw9nT+f/agp+b09xGNzMKcY1pXM7JoxiZDTXAbAf3QLH18CdX6IBmNm
 mWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ij+iH+M/8ZGiIrnkdLwppmtGhbFWZZmZrQ33Tj+/Mrc=;
 b=VE6V+yR+HnKKFbs1IDNoJ9dqF8ESU91DyrvcnQmbrKM3VkX4R7caY1JzgCq2CvCoPT
 8InM2gFROR8X4lktTSQ0EmCqVGaZuqgHy0TYgazJ2iDg7PN5MNQGSTVZx80Uswl5dqB+
 8KG1HwoF8J+jXMZBapaHMEIksnYJF1IqHERKqcKTDZM1GyvgumLG38l/paYmvU5eVhTS
 i/o9JWP58OOBtgs536cmA0QTsIBAdEUgqTBBj+IG2y/NNpJrJpAxWrqHxCs1ggq5ncIr
 07XP3uQACXMEfhJS/cqLsjchN6pMOAB2FbJfK+X2Q3UnBehTXUHnpTAGBVFXMYcJaqze
 /YpQ==
X-Gm-Message-State: APjAAAXnOVcKsEYLDOHxX2Xm+myhapU7JvKsD+TIZOEvLrybWG/uArTt
 0b9YSSBM+HgLKp13dvWuNM1+5697c0VnqlImWnhqFA==
X-Google-Smtp-Source: APXvYqzBUAiuGQ5CCX7L+dnJzxsTgp2SrfkxqeAprdFIag5gSPpDu3rBRcC1fZzqHqLByA5H7ue4e092aXkMKuv1KJo=
X-Received: by 2002:a9d:10c:: with SMTP id 12mr4258825otu.123.1559632877063;
 Tue, 04 Jun 2019 00:21:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <CAMz4ku+E=kFgWrvm_wzM2XQQUyYZhc5uokcGEAEbEKpNAYZQ7g@mail.gmail.com>
 <CAPDyKFoZmxmRYwL_m60=DK9J5+beshEsLw5D=FySzRfYFdsb3Q@mail.gmail.com>
In-Reply-To: <CAPDyKFoZmxmRYwL_m60=DK9J5+beshEsLw5D=FySzRfYFdsb3Q@mail.gmail.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Tue, 4 Jun 2019 15:21:04 +0800
Message-ID: <CAMz4ku+7W7LOxr_+utuN5-B8z=xGkrgdVWnmeNJrnFb_VWfF6w@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add SD host controller support for SC9860 platform
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_002118_509328_BBF80F67 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 15:14, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 3 Jun 2019 at 10:42, Baolin Wang <baolin.wang@linaro.org> wrote:
> >
> > Hi Adrian & Ulf,
> >
> > On Mon, 20 May 2019 at 18:12, Baolin Wang <baolin.wang@linaro.org> wrote:
> > >
> > > This patch set adds optional clock support, HS400 enhanced strobe mode support,
> > > PHY DLL configuration and other optimization to make the SD host controller
> > > can work well on the Spreadtrum SC9860 platform.
> >
> > Do you have any comments for this patch set? Thanks.
> >
>
> Seems like the series is almost ready to go. However, due to a few the
> minor comments/questions from Adrian, I am expecting a new version
> from you before applying.

Okay, I am preparing the V2 with addressing the minor comment. Thanks.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
