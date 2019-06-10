Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998C43ADA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 05:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxJs0qYuoT/cgXWmRFfnWA4vcNiOTwBwz6/Nge3UMMM=; b=UYoJrmt8mm1SBp
	4PbS2X3PSdPbn63fKYVomoBKHgYOEcxf1MU6vJhBO05usrAZkwyhPlRar9shxRrC6UPAMiAEGf5Lp
	OHQlHxLC6jnKLYayNGzC77LRkdsKx53CWnlgbNOOSDIivJxTn/xjGV0IQsD27BF0O8FXxsYUCmj4K
	3jUXtjl/P8XGOoMjyarVjMaNx0582/yWPCxCLkXuMbaxJ1fJSUSWyjST+9n+BuFoUy8wShhwZLCgr
	O6RZ9ZDPCSV5gEJWWhBwD5By6SI9K7AvDxWM/IJu2yWpLQ2kEn7e2kvb+RjahSPbNjwP8s9bd95yo
	eq7b7KQFjJz6u5k7eBgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haB30-0001dx-Q2; Mon, 10 Jun 2019 03:32:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haB2h-0001az-F9
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 03:32:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id 22so6686292wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 20:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aB/CXMwsJOLPR4IkBpKLs3rzXiAB5Hq8Pmg82KTdnpc=;
 b=Y4/jV4x/QxbzMXVAb5TMOW4WdmEW5sviWbYsTmRNFNlD69uTDhv6J8R+yhmkWCVyBN
 LQZ/CFTN0p8CmCFVXPT9wvG8NPn2HZPdjK3T0gfr78v6nandp9hVA0mOohamnOS3xAic
 5Zjn4PE8b2O3HGvcCHt8K8jeOmxLL99cpm5f8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aB/CXMwsJOLPR4IkBpKLs3rzXiAB5Hq8Pmg82KTdnpc=;
 b=c0UQ7nozVaKJaffvPzMZuB3MtQq/yXnFwCBbIK1sqENA4ND7tMokxL0uSNJc+1aReT
 mN2TouqLMlqv3KCoLVNvRq8TPuZO6slOV1yd2E3XUmTpuOk5mrGlCTGtZu9c5dnrNNqo
 BQNq3Q5kt38868ImyvFWFSOn+/1X40rgG47zi/MzGRzrysRrVtSg4Mb/RSd6zEDkgtp2
 pgDiy0EoDCPGi7pEzGgzYSwmIYvzBIbRtRn4excWQneSsqb2DSbQvofuGzwUaqwavChy
 Hw15ZN2DW8bCaW7RQQa9wLFmHbjYxY82v0jMk/bKRCod75btBB1Vojo6AttBhtsfXE/U
 A9gg==
X-Gm-Message-State: APjAAAWaAzi7hMDgAONgNGpu+5+QRFIM+EFJ7WsPAP0mMHo70sWdkCfd
 6hF6Xm0GLaThRGG56BOEflKL+N1qxLDG+vrLw0gp/A==
X-Google-Smtp-Source: APXvYqxQJliHEcKaKIvUY9ONOqr7UkNdbKO1DVUr+ac8CojHhnvVRkYyq2OEzprCcxtZsq0ucGzSaD6jwh7YT2ESHRc=
X-Received: by 2002:a1c:2bc7:: with SMTP id
 r190mr11435752wmr.174.1560137537307; 
 Sun, 09 Jun 2019 20:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
 <1559643115-15124-2-git-send-email-stu.hsieh@mediatek.com>
 <1560134057.28527.5.camel@mtksdaap41>
In-Reply-To: <1560134057.28527.5.camel@mtksdaap41>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 10 Jun 2019 12:32:06 +0900
Message-ID: <CAHD77H=vuPi2Rj4Mw-CQ2=UYX7YnS8w8FpUk0QTVxNUVLWKbJg@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] dt-bindings: Add binding for MT2712 MIPI-CSI2
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_203219_530215_BF775460 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stu Hsieh <stu.hsieh@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi CK, Stu,

On Mon, Jun 10, 2019 at 11:34 AM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Stu:
>
> "mediatek,mt2712-mipicsi" and "mediatek,mt2712-mipicsi-common" have many
> common part with "mediatek,mt8183-seninf", and I've a discussion in [1],
> so I would like these two to be merged together.
>
> [1] https://patchwork.kernel.org/patch/10979131/
>

Thanks CK for spotting this.

I also noticed that the driver in fact handles two hardware blocks at
the same time - SenInf and CamSV. Unless the architecture is very
different from MT8183, I'd suggest splitting it.

On a general note, the MT8183 SenInf driver has received several
rounds of review comments already, but I couldn't find any comments
posted for this one.

Given the two aspects above and also based on my quick look at code
added by this series, I'd recommend adding MT2712 support on top of
the MT8183 series.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
