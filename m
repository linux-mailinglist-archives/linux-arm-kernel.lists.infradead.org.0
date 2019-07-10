Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE4F64B24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 19:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3hIgBMaQHbco/32r0JuGfn6YNsqrBYanchWbiasro0=; b=XecJJknJZmrTkE
	WKy3FqF+HJy0PLC7uYmobrjK96ts/dPTTFM1VmOPmu2iUwxX1cwLXldr9ZlYuLpqNiLQBU2/X6+p9
	nROO9NVIkxdX2NAlbHrfteEmmlRV7Eyfb6ZkkXXa1k0kZchAHx8QykYcn2DFC6dZDLeSIFG995e95
	2uXUVq7B+7M6Ha2WKJNnRD0WPO3vEgkfTlBElMBg0DAiyJPH9PI7hWJLLgFTyw3X+C06LUBkbupX2
	eR/0bARnOFhd6x9YXyNy8L+HpYs+VuBsnKuCXY07zxoXQAr8q98qfdi4gzlwtTMNFpzYPdC/aZ3U4
	HL+H96cVbyKhG0aEMgnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlFz4-0004mq-0F; Wed, 10 Jul 2019 17:02:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlFyn-0004mQ-7k
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 17:02:06 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B44621537
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 17:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562778124;
 bh=0A6ZTzIyBGFAfbsBGr87hqddBcLIH2KmFnUom+mbnfo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ncRNCFkT6ApV3yScc8XizT9TAOlzHY6AFXesiDEKdFwFYWV/1uFC9l+cI57EMhTTm
 s/6w+5Uqe14zOlEZ82f5B3CdBj31fd59ATeF0AOKRyIE1Kfa4xGCABJ1rPECrWmXAg
 5RVVOkut49aSxv6P2kQW5AgijYQYX0WaFLpmJX3I=
Received: by mail-lj1-f173.google.com with SMTP id r9so2824177ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 10:02:04 -0700 (PDT)
X-Gm-Message-State: APjAAAUAEtovTNYR8u7fLyjg+zioafjt7/Cf1prTR6+42RKK9fNQOGE1
 fwjCq+KpMhHIh2VuJxRZRY+MBfWYQgWcOTC/b+M=
X-Google-Smtp-Source: APXvYqyWb8b/hmxoFrfvlDWU3IPgcVGPZ13o1DOOgNtiaOiFrg6Fmx//C+LLQngzv8et5vCS3ozwNOYtKG9OjsA1/0k=
X-Received: by 2002:a2e:8155:: with SMTP id t21mr17900333ljg.80.1562778122981; 
 Wed, 10 Jul 2019 10:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190708141159eucas1p1751506975ff96a436e14940916623722@eucas1p1.samsung.com>
 <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <20190708141140.24379-2-k.konieczny@partner.samsung.com>
In-Reply-To: <20190708141140.24379-2-k.konieczny@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 10 Jul 2019 19:01:51 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfJ57RBYg_drzALChNqHD_ueVfNc-tAhOdLYdY2A4G2Tg@mail.gmail.com>
Message-ID: <CAJKOXPfJ57RBYg_drzALChNqHD_ueVfNc-tAhOdLYdY2A4G2Tg@mail.gmail.com>
Subject: Re: [PATCH 1/3] opp: core: add regulators enable and disable
To: k.konieczny@partner.samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_100205_361438_AFA034BD 
X-CRM114-Status: GOOD (  13.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 8 Jul 2019 at 16:12, <k.konieczny@partner.samsung.com> wrote:
>
> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
>
> Add enable regulators to dev_pm_opp_set_regulators() and disable
> regulators to dev_pm_opp_put_regulators(). This prepares for
> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
>
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> ---
>  drivers/opp/core.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
