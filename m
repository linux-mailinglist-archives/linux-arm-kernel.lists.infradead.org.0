Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D516BA30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCLeRJRr5nkIa8kGhZ2F2gUkhQgwTvmg7nJf/4cWLKg=; b=MqaablBMbIk+T2
	pUGGC8nmVkjeetL1p7C51smyEB2nFFAZCUx86OlkvoEBmeRgPa5xKdyLNtCj/TkMUwvJD6LcxwLaL
	OSQbpMzSqGrMgS+6PR1f1BAfQdDV44pBVgBqy39+p9ViWFTqqYVMi+fUhi4MOPC2CjuAdVvSoYRrd
	Heg8XSHtTOFFWmoK5vPs+MKZnf8FZqn7dxr40e253VxhCY1dYeCGEMAmVKppHKiDmEZh+JPew3qqJ
	ddksgZybK21EA2iaFOMAv1rSHc7Tcp+5K+jzXKaYUjqbPVIvkdo3wI33Yn6VO4vLkxJtBIS6bW9b4
	YnSYypFxgpYOUmqoQxlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhDY-000336-VD; Wed, 17 Jul 2019 10:31:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhDL-00032e-PD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:31:12 +0000
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FF8121848
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563359471;
 bh=w1TbVMvUz2tK6FJesNjUIqjiZRhlXxyRUlrQtX3Zs/A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1aRaZgzMNwMc/cSnLPza1zZd8YLsXbjs8yBoKnyqbgvVFefJs7HEgdAk9k2xSEOvr
 XUWnVRi6oroq7hDBml2YU8Es7DBdc4b3baiyr7cVFWvcTgsDL2WGXNEL92hwRVKOsv
 t5FZ7capFlHWNOZBKFPhMEfomGeykqsK4zlnreJ8=
Received: by mail-lj1-f171.google.com with SMTP id v24so23115385ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:31:11 -0700 (PDT)
X-Gm-Message-State: APjAAAUBr3tSa8KWQn0pLyJFvlQltA6Rof0RrbVpJdNWhH5bHWkDoDTV
 rVIFH8zI11OLOm0ZXc2nBYxxYi0vOhBV39hmBPo=
X-Google-Smtp-Source: APXvYqwzoJ1Cxx4+M2lANaxvQqdCL3041mmaU3c52UP1ABWgSTNdykCbwT/nVHS71aYau/97TYX1+5b60Eo6CrIfc68=
X-Received: by 2002:a2e:50e:: with SMTP id 14mr20713536ljf.5.1563359469475;
 Wed, 17 Jul 2019 03:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124459eucas1p2a1d8795e57a82704ff221567a8810485@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-32-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-32-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:30:58 +0200
X-Gmail-Original-Message-ID: <CAJKOXPf1tZMLPT9pJrM5wM5wUEMdw1iEPVjaz6K3iq17KdbAxw@mail.gmail.com>
Message-ID: <CAJKOXPf1tZMLPT9pJrM5wM5wUEMdw1iEPVjaz6K3iq17KdbAxw@mail.gmail.com>
Subject: Re: [PATCH v1 31/50] ARM: dts: exynos: align lowest OPP in bus_jpeg
 in Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_033111_832925_B64FA965 
X-CRM114-Status: GOOD (  16.26  )
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

On Mon, 15 Jul 2019 at 14:45, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Make the lowest OPP frequency possible to set using a clock divider keeping
> in mind the master clock rate.

As in previous patch - lowest->slowest. I think OPPs are not
associated with the height or altitude but speed (slow/fast). You
could also add "frequency" which would make it also correct and
specific but slightly longer in title.

Best regards,
Krzysztof

>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> index f2e2e77a86d6..0be799f843dc 100644
> --- a/arch/arm/boot/dts/exynos5420.dtsi
> +++ b/arch/arm/boot/dts/exynos5420.dtsi
> @@ -1250,7 +1250,7 @@
>                         compatible = "operating-points-v2";
>
>                         opp00 {
> -                               opp-hz = /bits/ 64 <75000000>;
> +                               opp-hz = /bits/ 64 <100000000>;
>                         };
>                         opp01 {
>                                 opp-hz = /bits/ 64 <150000000>;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
