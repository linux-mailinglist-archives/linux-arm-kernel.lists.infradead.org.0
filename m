Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695DBAB680
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2nFxh3xplGzMDUWWpX9nVo/W2BF1OYCkhJHxspkNF4=; b=UW6HQHAgjCmfj7
	f/tHV6idXCtPnIyGouzzwjm63oUIgt+BFhVTd2jiVOhvLilpTpWJXR+h7QLSq9mHAvhCDv7E7azEi
	0em/8CpxpqSG124jkaRiUvlttrltWmC1bTYIoBOLieT+/nEL74nyy31dypL1MTQ1P4WvZyqEvHkbK
	V3Q2Tciq+wCNb/JfuTsg23J8NjZZVwa5wXV8+oUWgAV024AWYyLhHPywHXauop7A/J5PH/zeIPJxb
	9XHZMPbk5VodP6FPRtR0iTIFM4IAp/ccW2NFjY0ls/6sPx5+Q3ECsN4tlcNtJkE2DxofSo0qvjs49
	ic+Jp/EKNqRrSrExj9cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BvM-0007wm-9Y; Fri, 06 Sep 2019 10:57:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BvE-0007wO-3L
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:56:57 +0000
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7744520854
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 10:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567767415;
 bh=eKqQLsZ1CqXLPChoayXDfV/yXKBUa6ki7SK6YURr7JQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iwe7A6POO/AXJafBwclGZTdDimAL7JL/4tkeyQ2Hmmn/p1RAKgcK1OXWpNcost0c6
 vb6M7H3Hkn2NmTAYYE4TKKuMQBsOeTRnrzB3CLFIS0u69fCfWWPHZAnzndjTpfAjSt
 FTUs49YdlcffPsxSnWGKYkGzC9ON7Sqxu9LEJ72k=
Received: by mail-lf1-f43.google.com with SMTP id c12so4645194lfh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 03:56:55 -0700 (PDT)
X-Gm-Message-State: APjAAAX3HPFUOBwaSWLWdlZnVCZpTQGoCrWq9/NsrsOMTCA9BMIOIKV2
 1EPu/EZKxGwAy9dg/tnJRplhyXCuhY81C9DSpMY=
X-Google-Smtp-Source: APXvYqyuyvNE+DfCX2EXl+GcF9M9zNqpthnU+rCpM/ZylcfvRmscK9OYLhqRaqB/x8T/f9Qsn/DW81HgYTXkDGfiTR4=
X-Received: by 2002:a19:c649:: with SMTP id w70mr5991002lff.33.1567767413630; 
 Fri, 06 Sep 2019 03:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190906101407eucas1p15eb0df53374b27497b4793eab24becf6@eucas1p1.samsung.com>
 <20190906101344.3535-1-l.luba@partner.samsung.com>
 <20190906101344.3535-4-l.luba@partner.samsung.com>
In-Reply-To: <20190906101344.3535-4-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 6 Sep 2019 12:56:42 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfoYxTVvt_bMQOs1=BkHzUuW_WvL9zn0jTGS6LLpv=fhQ@mail.gmail.com>
Message-ID: <CAJKOXPfoYxTVvt_bMQOs1=BkHzUuW_WvL9zn0jTGS6LLpv=fhQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_035656_182163_718BF6F8 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 at 12:14, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Add description of bindings for Samsung k3qf2f20db LPDDR3 memory.
> Minor fixes in the old documentation.
>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  .../devicetree/bindings/ddr/lpddr3.txt        | 29 +++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> index 3b2485b84b3f..de0905239767 100644
> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> @@ -40,10 +40,34 @@ Child nodes:
>    a given speed-bin. Please see Documentation/devicetree/
>    bindings/ddr/lpddr3-timings.txt for more information on "lpddr3-timings"
>
> +Samsung K3QF2F20DB LPDDR3 memory
> +------------------------------------------------------------
> +
> +This binding uses the LPDDR3 binding (described above)
> +
> +Required properties:
> +- compatible:  Should be:
> +               "samsung,K3QF2F20DB"
> +               followed by "jedec,lpddr3"
> +- density  : <u32> representing density in Mb (Mega bits)
> +- io-width : <u32> representing bus width. Possible value 32
> +- #address-cells: Must be set to 1
> +- #size-cells: Must be set to 0

If you decided to repeat all properties again, then it deserves its
own bindings file. However I though about simpler solution - just
document compatible. Exactly the same as AT24 or AT25 EEPROM bindings.
There is not much benefit from copying all these properties.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
