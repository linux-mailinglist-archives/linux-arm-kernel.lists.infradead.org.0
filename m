Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2AE148236
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4EYSIOIu7X11xHYe7M+NaP2LK0sYu/hXN162NE42NY=; b=r+wzeBQW9A0Ct0
	YcP/PAVtv+dSrzumTBOs5T+KNzgjmFuOxpht+F+uVwOxTmOBjZM3qMqnD5QPAtIdZ5YQ9dmayzcwE
	pcD2LWyA5CbdOttsBalnhLNFtMOgFDhs6V8o3MO3XyHz5GU2qNbxBGi6xVPhyqkGX05M8kROaIN2R
	PEcbjYTe0eV9GMUeAUg7riHkr6XcuGfoHCd5I5EHnyeDy1ognKsBBfadls7wIMFpVvIhBFV8lgcpe
	/rYIk/LlditK18AXju5NsiupWY5/mvZnOwE3AWs/Ezc9bOHDWZYqFtnJfszdrvrUf9rTEpSyUen0j
	PUp08SFZRm7Vrsjbyx6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iux6f-0005O1-Dq; Fri, 24 Jan 2020 11:26:33 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iux68-00053P-9m
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 11:26:01 +0000
Received: by mail-vs1-xe44.google.com with SMTP id x123so996066vsc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 03:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GGsD1sBB17Gd7giKo9E0XOhIIGoiPHUb5uVBe4K6KfQ=;
 b=ZHQFkn7qEfCeDFCKUCYYzCcwyGJdwaRXzv2BuMkWX5iUNbHh0wy5Zs1LqHFZD6MO41
 YymE5o3W53OrflaEhYWSZo0JAgctGarHB5C6nEkJ3e+YBAm+tMVAiOt/0Y3RFvBC9IIN
 DRURUS0/4XLEtZ8t/zyJ9aD6KKE2jsuZeHWwLP+Lfk0jJrKfOTIG8YjC5tFVw0c35xFR
 A7zv0IWvK13GnstfKGbNusTwqgR+nDRLsHrIG05wR84waOMiBwlExbAY/Kuu6WdQww33
 JF8uuFsBR4ctYSC+q9d2b83NhMVqXIdlzDlVhnY7Ya4kjv6xR/I8mSzNGHwDS735ByRX
 byMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GGsD1sBB17Gd7giKo9E0XOhIIGoiPHUb5uVBe4K6KfQ=;
 b=nwcEp8GQ1a6qwU7ufTIB+MwGvSZvOe/SEmMopd0iY8NarLGtSCbJcPbsEtGtDrdtc7
 1zMd8wshksddfVN6vRGTKnYRPNbOGevpcBjQqhhmxisAI23m5I9mA3aw8cnO2O4885Jb
 xPZ2g3KI8eB3ArH1BhnFiWY5QFJbMV3ipINn89xGhcDCmlV5ICTXFTbGcsFwRb/qBc/k
 76jM5b4AcBOnzyZB9JkLGPcV+v2+TdFZ5tWbvHKi3vkaTP0oBCwePsHgpIRjZxrXia9p
 v0IJw1NzBPDg2l1MHRmY7Hg2DxX9DRIBNeRsRWY+7LOdw2HrgKH/0/Cl8JpvMpxEaPnQ
 xTsQ==
X-Gm-Message-State: APjAAAXIcN33hHqAYfaG96JOVJU7xsr+fD1PyFBDaMMt1xgJulsZ4Fwb
 5mTcnxGzYg4u+aAQ+sUf3C/5RhX6sy0pjCts+kNL9g==
X-Google-Smtp-Source: APXvYqzz0CgsEy9v7WP14mwK3BPa/e7ShAoPeynnFWYXVmg4lZ1WwFjup6ErJ5tLPVN+TwriSjBOwrxaTaR9xEi9ggw=
X-Received: by 2002:a67:cc3:: with SMTP id 186mr1916849vsm.200.1579865159257; 
 Fri, 24 Jan 2020 03:25:59 -0800 (PST)
MIME-Version: 1.0
References: <20200116152230.29831-1-jbx6244@gmail.com>
 <20200116152230.29831-3-jbx6244@gmail.com>
In-Reply-To: <20200116152230.29831-3-jbx6244@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Jan 2020 12:25:23 +0100
Message-ID: <CAPDyKFpE+raCp82aMhm876T+fL3EvPDxSm0-mJTgUuvc8CohFA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: mmc: rockchip-dw-mshc: add
 description for rk3308
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_032600_366883_786FB417 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 at 16:22, Johan Jonker <jbx6244@gmail.com> wrote:
>
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc"
> for mmc nodes on a rk3308 platform to rockchip-dw-mshc.yaml.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 2f70f5ef0..89c3edd6a 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -35,6 +35,8 @@ properties:
>              - rockchip,rk3036-dw-mshc
>              # for Rockchip RK322x
>              - rockchip,rk3228-dw-mshc
> +            # for Rockchip RK3308
> +            - rockchip,rk3308-dw-mshc
>              # for Rockchip RK3328
>              - rockchip,rk3328-dw-mshc
>              # for Rockchip RK3368
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
