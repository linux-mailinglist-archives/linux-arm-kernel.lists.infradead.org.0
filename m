Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92756154468
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 13:59:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLCvY/9TFUdhAqUPwllqbCrvmii+rVWfR3m+93UztA8=; b=U5/j6aAYZjiJae
	yFFiTAaRWSwzFbpPiNfjO5a3pypD4gm2gN6VVP32PWZUGTELGRbK0vhPkC1Mg1+vo9N3S9UgtyIKD
	FKW8pPMTteuFCOyYcxPLVKXaYqpQbh+nYYtdJBYBjFEhdxP44P3WNychf0+y+R/6IS7//sjBubl3y
	4wuQQVIGSNdAKMUzz39a1a+yx4hAs/VKeYJwk4ebzoQM0ARmJjHxdXMkIl8lPoy4xg/LSZ1BFqBoe
	wHZvdQ3qTmwvmZ1in7FJs/yvwUO7dZfTUwzy7Tisld3elMXSZv1VktH+KI99MufPQ2OKhthdxoX+5
	ooZNTazxoVOtn2cO97Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgko-0008V3-4Q; Thu, 06 Feb 2020 12:59:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgkh-0008Ug-LT
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 12:59:28 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F0BF21D7D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  6 Feb 2020 12:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580993966;
 bh=6OY7DPI2yOZ1X/1zJRZnKqanPxQshh7/EXoL02sHfpY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QEFZkBJhSZNCXOTa8av2d4HzjHuE/BqXM9vnRkZ1T0w7nQ/lzWrl9bxK23i0c49nO
 L+OTfzCqYtSpvJhn8YUlKgo0JM4vJn4NpJCTpRbPqZXHOPrwQRmVlrlhyJwowP0yxM
 P7GM0LepDBfNTFrz//gR7J0dhEslbO/HNJT8ZGYE=
Received: by mail-lf1-f45.google.com with SMTP id m30so4024921lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 04:59:26 -0800 (PST)
X-Gm-Message-State: APjAAAVJ7KFt+VujL6sE0xWxhsHsqS3NSNzbrJ2D3B2SwIYeQy83agWm
 lr43t3VLhAfPGdmYULS/ne2qNw7kbi3Be+Kzll0=
X-Google-Smtp-Source: APXvYqxXmYq0CkBT0Cjv9peoxswFZXHCgyB59GVNonQ53ahGHtf1ogSPH5YE7w3/aQn7BCzLj014+bBH5621DMrKfcY=
X-Received: by 2002:ac2:485c:: with SMTP id 28mr1744468lfy.118.1580993964531; 
 Thu, 06 Feb 2020 04:59:24 -0800 (PST)
MIME-Version: 1.0
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-4-lukasz.luba@arm.com>
 <CAJKOXPeA=_3zPx6Aq3CAUi7JsXr9AigWGWCTNWo_jkm=oVWe_g@mail.gmail.com>
 <db3f2554-288d-81ab-2373-1447367ba673@arm.com>
 <20200131204118.GA27284@kozik-lap>
 <c54e252d-dc55-5fa3-f97f-643d7efbfdc1@arm.com>
In-Reply-To: <c54e252d-dc55-5fa3-f97f-643d7efbfdc1@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 6 Feb 2020 13:59:13 +0100
X-Gmail-Original-Message-ID: <CAJKOXPfTjdtNMx=+dPVcQ53RiXx0y-r=KXBRhzA4jS77SHxciQ@mail.gmail.com>
Message-ID: <CAJKOXPfTjdtNMx=+dPVcQ53RiXx0y-r=KXBRhzA4jS77SHxciQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
To: Lukasz Luba <lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_045927_725199_12FC83C0 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 5 Feb 2020 at 13:49, Lukasz Luba <lukasz.luba@arm.com> wrote:
> >> As mentioned in response to patch 1/3. The fist patch would create MC
> >> domain, something different than Energy Model or EAS. The decisions in
> >> the scheduler would be different.
> >>
> >> I can merge 1/3 and 3/3 if you like, though.
> >
> > I understand now that their independent. Still, they are part of one
> > goal to tune the scheduler for Exynos platform. Splitting these looks
> > too much, like enabling multiple drivers one after another.
> >
> > However if you provide numbers for each of cases (before patches, multi
> > core scheduler, energy model with DTS), then I see benefit of splitting
> > it.  Each commit would have its own rationale.  I am not sure if it is
> > worth such investigation - that's just defconfig... distros might ignore
> > it anyway.
>
> Good point, and I agree that it would require more investigation, for
> which unfortunately I don't have currently spare cycles.
>
> Should I merge patch 1/3 and 3/3 and send the v2 with a cover letter
> which would have the test results?

Yes, let's do this way.

Thanks for working on this!

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
