Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EFD102A71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:02:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwFCF+2QkHbTnQlx76yXXy0fimR61Go4Pt7jopb1cgg=; b=UmDgP2IgG1q4XC
	m23QOv4fR5TNLYoyaDK5Sb3uK/6vdLgONz9+dwCaihGA/D9PIAg/vquIT9cr+izkjpmMAvxMdP+S7
	e5vpLJcQdqe/8+c/y05FuSsuCSCZGo//a3NP7ooxCWZIQP2/zO4Os1nuDgHx4sKg42Fkfj++RGjeM
	6pBcRhAq1XxsRBOktmx10e15svDQsagUZyfGQW3mvLLd0i3FUl06SG5UFyupAh2W2SjlmwshEro90
	Pt7Kb00kx47gdGrwE8rJFavnakNMTIMeQe3H3neDYSXuEvWsN//f7WzZu8mPxYpsyuPGClbBr7CV7
	c+sVtmOsyIZCpgrwk1iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6tk-0004zl-T4; Tue, 19 Nov 2019 17:02:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6tU-0004tW-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:02:25 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5301E223D1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 17:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574182943;
 bh=9xlP6l6zc8LrRTuryqi4QOF5/Hg74NZf0SPlZK2mEU8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hHdDFqFWJkwOuMKZk0NzaOxgeAE6UqGlvZAVH+WTtjEaZ3CCkLs6cDI5yFhIl9SRE
 54T4E31B4t+satNSKMSJ+416Ec7m0NKdD49RPHEpukOMZs6k0mxIRc9AHYb5zIBbTG
 bNPOVvg5RSncACs08sPyTJmxe1NXOpvf8io01pqY=
Received: by mail-qk1-f172.google.com with SMTP id 205so18485453qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:02:23 -0800 (PST)
X-Gm-Message-State: APjAAAWp1OCxpK7IhSFCIs0qbFBqaNKDvsEZNqlFbNKhsBuw+Kj8biSC
 pzyhVfpjFuFrbUrAX7zDm3n4E5gmZuvqNgcfgQ==
X-Google-Smtp-Source: APXvYqxucfdWSXPgW2vd8l9633HeMvIH864eMJ/p+Bk0FhDvh444Pum/yEC+Gs6buUxeu7x2jucgvrCcmOz57phmAkg=
X-Received: by 2002:a05:620a:205d:: with SMTP id
 d29mr30290391qka.152.1574182942398; 
 Tue, 19 Nov 2019 09:02:22 -0800 (PST)
MIME-Version: 1.0
References: <20191119144315.11261-1-krzk@kernel.org>
In-Reply-To: <20191119144315.11261-1-krzk@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 19 Nov 2019 11:02:11 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+1hHneSW5DzLNxU00AqQJ49chTyULJ0S3JR-CqfOfTgA@mail.gmail.com>
Message-ID: <CAL_Jsq+1hHneSW5DzLNxU00AqQJ49chTyULJ0S3JR-CqfOfTgA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: Fix path to power-domain.txt bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_090224_666806_E95F63CD 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Kevin Hilman <khilman@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 Linux USB List <linux-usb@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, PCI <linux-pci@vger.kernel.org>,
 linux-tegra@vger.kernel.org, freedreno <freedreno@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 8:43 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> With split of power domain controller bindings to power-domain.yaml, the
> consumer part was renamed to power-domain.txt.  Update the references in
> other bindings.
>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: abb4805e343a ("dt-bindings: power: Convert Samsung Exynos Power Domain bindings to json-schema")
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/clock/clk-exynos-audss.txt  | 2 +-
>  Documentation/devicetree/bindings/clock/exynos5433-clock.txt  | 2 +-
>  .../devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt  | 2 +-
>  .../devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt  | 2 +-
>  .../bindings/clock/renesas,rcar-gen2-cpg-clocks.txt           | 2 +-
>  .../devicetree/bindings/clock/renesas,rz-cpg-clocks.txt       | 2 +-
>  .../devicetree/bindings/display/etnaviv/etnaviv-drm.txt       | 2 +-
>  Documentation/devicetree/bindings/display/msm/dpu.txt         | 2 +-
>  Documentation/devicetree/bindings/display/msm/mdp5.txt        | 2 +-
>  Documentation/devicetree/bindings/dsp/fsl,dsp.yaml            | 2 +-
>  Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt    | 2 +-
>  .../devicetree/bindings/media/mediatek-jpeg-decoder.txt       | 2 +-
>  Documentation/devicetree/bindings/media/mediatek-mdp.txt      | 2 +-
>  Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt  | 2 +-
>  Documentation/devicetree/bindings/pci/pci-keystone.txt        | 2 +-
>  Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt | 2 +-
>  Documentation/devicetree/bindings/power/qcom,rpmpd.txt        | 2 +-
>  Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt | 2 +-
>  .../devicetree/bindings/usb/nvidia,tegra124-xusb.txt          | 4 ++--
>  19 files changed, 20 insertions(+), 20 deletions(-)

Please no. Can you just undo the renaming back to power_domain.txt

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
