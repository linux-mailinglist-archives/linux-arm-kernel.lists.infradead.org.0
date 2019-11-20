Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFBF103120
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 02:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sh8K9xLVuHmnjbM5uJ6smsfLTDtB87cmds/czMcNsJI=; b=uEOahbnvfMvyZ8
	TmVaWoxS3viZkAGCbF8XssMZG6K1ui9AbFuIsdanqltvR/293nAHg51jhwfSSC/ST2y+IwWm3kBdU
	DO/TPYwsITgDWfiHCgvHobZumStS9ZfB72tM7k2gyoFU8Fs0Mqaba+VHGEgsg4CsdDjNIJHAXDMok
	OQJu7w0ye3j7WE9l32jRYHSZm/8MiV63IiA8lp+OwVqdx9nY++slY1bqcTXvmOChpkS9k3BVs1WJg
	Vv+ck9LMqormwDJrByKsquN7hvHEDzleBgdfe2csHMzdXHZJO/Tyc8d9MaTlt9WAqiw6dDOLKXAWv
	7lSs2vtPj2zU+M6QOdJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXEm5-000286-7S; Wed, 20 Nov 2019 01:27:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXElv-00027C-46
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 01:27:08 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47E202245F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 01:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574213225;
 bh=D7abHCeD4TPvV2CC5GlYUE+dpzX7mKsMT4oa0/yvIRw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eOnkCcpi3XzYZrccf26EVRVyjaGrzkJM2FuzIDz2a6nLVVzbAKGJvodiPcmIUpL3n
 gvLbf/JklQkvF0ImVVa7jx4efmK2auYAzjeEnnvBU1Q65nizUJ4S0UKbhUJEeKDjdz
 rdCWWF+ApEM0lz17r/TTjMw7fMaTerpB/fD8csH0=
Received: by mail-lf1-f45.google.com with SMTP id z12so18724239lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 17:27:05 -0800 (PST)
X-Gm-Message-State: APjAAAXuvCCcdJQcQfBZUjVtIZ7zMPUqwRqi8VxjWECQlYUZMdbGmNOB
 KQ4hkhV6/GjwK5ChiVN2zM9+aW2pwIKvuqS1RFI=
X-Google-Smtp-Source: APXvYqwRCZuOLwwW4yV+7MFk/VIFl8MVP82eHlcf4qaQKdX30EKfsryD1YdVJwUyn/6jRxu7hGaF3j94H2BVMIxjCZE=
X-Received: by 2002:a19:da1a:: with SMTP id r26mr450883lfg.60.1574213223486;
 Tue, 19 Nov 2019 17:27:03 -0800 (PST)
MIME-Version: 1.0
References: <20191119144315.11261-1-krzk@kernel.org>
 <CAL_Jsq+1hHneSW5DzLNxU00AqQJ49chTyULJ0S3JR-CqfOfTgA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+1hHneSW5DzLNxU00AqQJ49chTyULJ0S3JR-CqfOfTgA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 20 Nov 2019 09:26:51 +0800
X-Gmail-Original-Message-ID: <CAJKOXPep1ftnw0gGEtzmSZaZBaAiyDhCsVygRfNAQ4egiJK1tA@mail.gmail.com>
Message-ID: <CAJKOXPep1ftnw0gGEtzmSZaZBaAiyDhCsVygRfNAQ4egiJK1tA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: Fix path to power-domain.txt bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_172707_208271_0043F846 
X-CRM114-Status: GOOD (  14.74  )
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

On Wed, 20 Nov 2019 at 01:02, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Nov 19, 2019 at 8:43 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > With split of power domain controller bindings to power-domain.yaml, the
> > consumer part was renamed to power-domain.txt.  Update the references in
> > other bindings.
> >
> > Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > Fixes: abb4805e343a ("dt-bindings: power: Convert Samsung Exynos Power Domain bindings to json-schema")
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/clock/clk-exynos-audss.txt  | 2 +-
> >  Documentation/devicetree/bindings/clock/exynos5433-clock.txt  | 2 +-
> >  .../devicetree/bindings/clock/renesas,r8a7778-cpg-clocks.txt  | 2 +-
> >  .../devicetree/bindings/clock/renesas,r8a7779-cpg-clocks.txt  | 2 +-
> >  .../bindings/clock/renesas,rcar-gen2-cpg-clocks.txt           | 2 +-
> >  .../devicetree/bindings/clock/renesas,rz-cpg-clocks.txt       | 2 +-
> >  .../devicetree/bindings/display/etnaviv/etnaviv-drm.txt       | 2 +-
> >  Documentation/devicetree/bindings/display/msm/dpu.txt         | 2 +-
> >  Documentation/devicetree/bindings/display/msm/mdp5.txt        | 2 +-
> >  Documentation/devicetree/bindings/dsp/fsl,dsp.yaml            | 2 +-
> >  Documentation/devicetree/bindings/media/imx7-mipi-csi2.txt    | 2 +-
> >  .../devicetree/bindings/media/mediatek-jpeg-decoder.txt       | 2 +-
> >  Documentation/devicetree/bindings/media/mediatek-mdp.txt      | 2 +-
> >  Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt  | 2 +-
> >  Documentation/devicetree/bindings/pci/pci-keystone.txt        | 2 +-
> >  Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt | 2 +-
> >  Documentation/devicetree/bindings/power/qcom,rpmpd.txt        | 2 +-
> >  Documentation/devicetree/bindings/power/renesas,rcar-sysc.txt | 2 +-
> >  .../devicetree/bindings/usb/nvidia,tegra124-xusb.txt          | 4 ++--
> >  19 files changed, 20 insertions(+), 20 deletions(-)
>
> Please no. Can you just undo the renaming back to power_domain.txt

The renaming was done to make it consistent with yaml and other
bindings but indeed it creates some churn... I'll send rename-undo
then.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
