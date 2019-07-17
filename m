Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A70E6B9C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daFmaQb0NSuqLiMDqbmwzb7lA8WaVERx9enu53nnB0k=; b=RB1d3eoo82pkWk
	POoV0/XqYEo0t8i3VplyGDJ0/ZPuKmwRccxl1+rYCeYczzAXDQD3+a5QbhJuuMdA8xosbGKQhQ4m1
	3D6/QhWRt2oxnbMiVxPDylKe51xnawglS8cnSH6jhrgmTnuWDcM/rQU/ciHsZYFH+mvuU1Oad4t4Z
	LxOmThedRmOZZ6EgCsuLZ1khTKE9QIHezisjtfXevZU7KWhOWKBO9LgbJ+P6jZF66izk5camLP54m
	qtJYa50ToSGOhWvgWJFEKeAZCiuE/gqCW+6pu9nEAPytjUED18ZsTRRd/bb3lMepjwpKGG9kQp+oa
	QpBv3QgTugiVQZGEY5Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngtV-0000TO-UZ; Wed, 17 Jul 2019 10:10:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngtI-0000Sj-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:10:29 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D6FF21849
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563358227;
 bh=B0vq7TI9wkTFGGzN7Fq0OAUyk2GFb1jaW2T4WnkVxnQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tp7xDM+4dkXRzBqwbE1lKYdrAdg5NwLhC8eFDtVrZvxXTDyL5dwf6v6gjNQxhDB0L
 qRNRjh47HKL0vo/a/EUMT6J5yKajlEm5DvlZqm+AhrabbsKft7mjMXYziTteokCttO
 rB0ATQ4npW3uhufNJFEKmz9CTP2zwVCOUG9wZzRg=
Received: by mail-lj1-f182.google.com with SMTP id v18so23010800ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:10:27 -0700 (PDT)
X-Gm-Message-State: APjAAAVoArbK3gp2Pdped9NKVG1e06oCDq6NVkUoyEZwNXwIOxhbuFI6
 vY7yXUkwPGCu4yitvcavyYPnvqDIK03wbBiT1sY=
X-Google-Smtp-Source: APXvYqzIxuLAR32Jvbkflkn1R9vuEUkDOd5VMPMZ6u/awTTp1I0u14ioknFtuK1fwk0oxvu4ENFvuA7wgfhcvBVlZh4=
X-Received: by 2002:a2e:50e:: with SMTP id 14mr20662249ljf.5.1563358225560;
 Wed, 17 Jul 2019 03:10:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124455eucas1p13bfc0c1d113225db9607e4c0dbac353c@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-27-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-27-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:10:13 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc3qsM5Xe5JViDZXYfes+_veb-KX3fnZjpkUCrphBcu-Q@mail.gmail.com>
Message-ID: <CAJKOXPc3qsM5Xe5JViDZXYfes+_veb-KX3fnZjpkUCrphBcu-Q@mail.gmail.com>
Subject: Re: [PATCH v1 26/50] ARM: dts: exynos: align NOC100 bus OPPs in
 Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_031028_105545_EA175276 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> The NOC100 has a parent which clock rate is set tot 400MHz. The OPPs which
> are not possible to set are removed and new one is added.

I think it is just NOC bus... or are there more of such and this is 100 MHz one?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
