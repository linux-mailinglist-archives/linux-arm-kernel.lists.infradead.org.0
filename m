Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670736A4C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 11:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90ksCjpgZ3cLLZDTf/GN88UHgUqgnI2k6cH/SdymQHA=; b=P31yOvFIexcOyM
	iO7IZHSLU78U9hn188p61sKOfBdh4haxXZdZuIFzMbtIS6T0+zfBbkzeIe+Ilm+VftHv7X3r7GFUT
	FthR2suNuTpi080z4wRsmG+eMVraDir/DCu+yOQfJytJqnRsalVya/fw3YAnpI699snpdQ2DXIoSv
	7ksUGbPC8LeXSe2FYKAoZHouqa1JdQFUnH26A0+G3yH8eLsg6H3SdfxV6HGi7Gs/vNCRGO06FXAPW
	O/0nqZ+52A9DL5nDSyhBn9AGuZ6WQJPcI1W4UEWOFxEA+Tjzn0oZjtC3DscRgRUF/oDpc97xLDACR
	SG+T5ah/ajwkaxjMUF6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJgA-00064g-G4; Tue, 16 Jul 2019 09:23:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJfv-000642-Tr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 09:23:09 +0000
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4017521841
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563268987;
 bh=PamZH0A4WsEwIpGHaPzQA18kP5r8wzqlzFCVBoiw//U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xaoSJGSp/bSa/YG2kHH4N9lDRwqjYMC15hNuRbpfjt1PL27vfozjZpg2y/f1MVaI4
 KoAqZb3ZvVgbb8Rp3lw+u9OBakMWl0TGyeWR7cToC8Ox2gZ7KeRpqxi9qjZw1Sdni0
 ZEfrxc+ivfEK4XLVW+v2JaQaFsv4vMjqSN/V1bV8=
Received: by mail-lf1-f44.google.com with SMTP id h28so13142259lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 02:23:07 -0700 (PDT)
X-Gm-Message-State: APjAAAVw6bVzAzu2kndDnhgScYXcgR/RkIPz0A8sqGcUR486G2wDUbf+
 0bLa0Ak+nITdBiNF2L4WneJOgzrq7ldbVoDDE8U=
X-Google-Smtp-Source: APXvYqwMDnsmib1AtItDB/KKKIU5Xhb3gP22wpBTO6Xd7+TU89iu7Eafe6jZHcILHZmz92UTgmXNMvLw4jIxyvWAj04=
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr13598688lfi.159.1563268985590; 
 Tue, 16 Jul 2019 02:23:05 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715120432eucas1p1b32d72d239420b861bf8596d4e8a053d@eucas1p1.samsung.com>
 <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <20190715120416.3561-4-k.konieczny@partner.samsung.com>
In-Reply-To: <20190715120416.3561-4-k.konieczny@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 16 Jul 2019 11:22:54 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd6a5aLf1CEhx9m7khPQOwruSuA22efkJb41BsaWXjM3A@mail.gmail.com>
Message-ID: <CAJKOXPd6a5aLf1CEhx9m7khPQOwruSuA22efkJb41BsaWXjM3A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] ARM: dts: exynos: add initial data for coupled
 regulators for Exynos5422/5800
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_022307_985111_31C79826 
X-CRM114-Status: GOOD (  12.58  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jul 2019 at 14:04, Kamil Konieczny
<k.konieczny@partner.samsung.com> wrote:
>
> Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
> bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
> be in 300mV range.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>

This one was previously from Marek, now it is from you. Any changes here?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
