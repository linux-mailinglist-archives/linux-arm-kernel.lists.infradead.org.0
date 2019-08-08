Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C1D861C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OalShYVxJA7ySyTSUg18XqEmL98wyXckmoiXEb9ecOc=; b=dHVYY/o39fcJ0p
	Qps5HmtU3yHQD774Nb8vrlBLVCzQZG36J7q8wI9tA/v1C9O3hVuJkpfzfCKOOhbdxZsgbBWhD2LNY
	PMBCPtz0ePhgh4v+rzlMGECFsJqH2Eoq5F92meqyO1zMyziEDk15nzonFfM9ueVN7HWqZSGo5hxCB
	OTPxU/nfwVRNWwAvS4gPJOORombX2oP3V7EK7GT8ovDPj/6H/KXyk+78dQB2iHQWVmfkmetopePmQ
	CdO3pEQMkNWaSEmxMRiE/6X0w7PXfdBrkU0dud0/yagVWRrCw/ZrJwuaHTV+STPSS/L9KnB3Ii/Ui
	398NZRSE2hxRUfrpgRiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhaP-0003dg-6R; Thu, 08 Aug 2019 12:32:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhaD-0003cs-2x
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:31:54 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32616218A2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 12:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565267512;
 bh=bdQZvsSQ32pIcK00dvHnvYCuayYBNzzTq0JqfKXAAnA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=opj1qQf9iEv45GohNPIZzhCfVIZu1ZKpRtt66TnyPL0lOzTJk5eitdVMhBoy+g0Hf
 UVInrjj0SFWueYHRvOSGyc2Fpz0WX4Dk4DE0AzIZES1sOm0BnypToJNP5f4pPpc22P
 wQUfdU1+dQ5DAUF2r3Ky0lG/+/V7pVl8LsPRJRnY=
Received: by mail-lj1-f179.google.com with SMTP id z17so276468ljz.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 05:31:52 -0700 (PDT)
X-Gm-Message-State: APjAAAXjwaPiqjUZC0xL5/9pwvQvKJlM5MgwOVKHih/ZU90JEfTj7NVT
 bGHu1OkbNwwJDuMcfdjRsQkANRP6SIQoDta+Z7E=
X-Google-Smtp-Source: APXvYqzE6I+ay+3PmHe0pYVJmR3CgZhxE3A6RP3FlUDg7MjWb3h3zbv3W0JwnvdTTIFomcUI0MjdcuE87ZGWhiIDMH0=
X-Received: by 2002:a2e:3008:: with SMTP id w8mr8290719ljw.13.1565267510378;
 Thu, 08 Aug 2019 05:31:50 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190718143130eucas1p26f2058f47eb2f4020e1ddbf1619d1ac8@eucas1p2.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-4-s.nawrocki@samsung.com>
 <CAJKOXPeOfDHjqSotxVwVuy+6r9X3Q8ZXLit1_=gGd7bOwkHupA@mail.gmail.com>
 <a56fe2d8-1f26-b462-1564-f23902f7dbb5@samsung.com>
In-Reply-To: <a56fe2d8-1f26-b462-1564-f23902f7dbb5@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 8 Aug 2019 14:31:39 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc8iFo=2JAGEZSC46N3sZae4+JcZYBCjpKysb6PFPzyaQ@mail.gmail.com>
Message-ID: <CAJKOXPc8iFo=2JAGEZSC46N3sZae4+JcZYBCjpKysb6PFPzyaQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_053153_149286_3F235A22 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 at 14:07, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
> >> +static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
> >> +                                     unsigned int pkg_id)
> >> +{
> >> +       return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
> >> +}
> >> +
> >> +static bool exynos5422_asv_parse_bin2(struct exynos_asv *asv,
> >> +                                    unsigned int pkg_id)
> >> +{
> >> +       return (pkg_id >> EXYNOS5422_BIN2_OFFSET) & EXYNOS5422_BIN2_MASK;
> >
> > return !!() for converting to boolean.
>
> I'm not convinced it is needed, the return type of the function is bool
> and value of the expression will be implicitly converted to that type.
> Is there any compiler warning related to that?

Yeah, but bool is int so there will be no implicit conversion... I
guess it is a convention. In theory !! is the proper conversion to
bool but if bool==int then it's essentially conversion to 1. I am not
sure what's the benefit, maybe for some wrong code which would do
comparisons on result like if (exynos5422_asv_parse_bin2() == TRUE)...

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
