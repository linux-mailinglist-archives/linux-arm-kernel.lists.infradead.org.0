Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11783B6B02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 20:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SwNZpSAu37MqtkZuS+JlOkRAtqQNYEd54aaYJmN0vE=; b=D3wBLwMW1vGd8H
	6QlNWrbJFhMBUVLueKhbfcRHZR3KUYS4zhZrmLXzHecxHcnkfGeT+Z88gpTEODbr1//DkPwPl/BdW
	fISl9LxisPE0mLcmWq3aKHXjgjJD3gO0VD/960NqVlEv5g5wQLhsVgq4ohKePdFkZt0zAxC6BI/yT
	ugRB4TeaYDzrUnUlzCiugHkxpOAaqjlAI1kizcLZ+Co0QP30ujNZa6iDB05zb0sXCcL0dWiHt+i1b
	+ACs57GlK5MEwfkB0GfpJwezAWeJGauc7mg8dXspEoPsHuE8mdAAs01A5XG5j8ZTdOqlkzutEQ9Xb
	231diT+UGgfYKADVEnFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAf3s-0004vb-UD; Wed, 18 Sep 2019 18:52:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAf3i-0004ui-Dd
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 18:52:11 +0000
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 356B821D56
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 18:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568832728;
 bh=D2lZp77vuPPFjapSE1luWFqGE+AMlkDMF0qAm1nfdik=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a5jKtG9qnYgYgjRsZv1sf8NP8e0/8orK0rKmB3KgL+99PTz7koJs0RUWDyXKmUQp9
 0E4U1VJPs47imeEkPmZjgup9jYCL8bLVIkcazbyChXGKbbUaNP5KQwlugpTRHAph8Z
 Xz2GWQSqOYqrEA0J7UsvbGMqvx9TMKsoG6VK63Yo=
Received: by mail-oi1-f169.google.com with SMTP id o205so469509oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 11:52:08 -0700 (PDT)
X-Gm-Message-State: APjAAAX3FrKcE1H64H8/Tzbc6u327diaoe2vaz0V4dlZ3K4HwruKLoLS
 F+pZky2p7gEu4mosEAD/xiKkEZvgyOwRvYSp/YU=
X-Google-Smtp-Source: APXvYqwTmWtPKUYeaXD8GJnHb+WNedVhZf9eATTB06UB+uViLMeI7fDdW74rhYBzQ7SfVuPq9nnlRvw+3ZAXPQhJhLQ=
X-Received: by 2002:a54:4e05:: with SMTP id a5mr3483762oiy.91.1568832727427;
 Wed, 18 Sep 2019 11:52:07 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79@eucas1p2.samsung.com>
 <20190916100704.26692-1-l.luba@partner.samsung.com>
 <20190916100704.26692-4-l.luba@partner.samsung.com>
In-Reply-To: <20190916100704.26692-4-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 18 Sep 2019 20:51:55 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcxG-mMKy5u-b0+xj_sOmrq5yq5-LYJx0Ds6_+yo_=JbA@mail.gmail.com>
Message-ID: <CAJKOXPcxG-mMKy5u-b0+xj_sOmrq5yq5-LYJx0Ds6_+yo_=JbA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_115210_483812_B8E2DA2B 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, 16 Sep 2019 at 12:07, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Add compatible for Samsung k3qf2f20db LPDDR3 memory bindings.
> Introduce minor fixes in the old documentation.
>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  Documentation/devicetree/bindings/ddr/lpddr3.txt | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> index 3b2485b84b3f..49afe794daaa 100644
> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> @@ -1,7 +1,9 @@
>  * LPDDR3 SDRAM memories compliant to JEDEC JESD209-3C
>
>  Required properties:
> -- compatible : Should be  - "jedec,lpddr3"
> +- compatible : should be one of the following:
> +       Generic default - "jedec,lpddr3".

The convention is first compatible, then description. I gave you the
example to base on - at25. Why making it different?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
