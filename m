Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629D620E1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxggtKu1rSjFSBDIQ/x7jF4YNRFyMZHwUuZVCWItf6A=; b=VoxW+ZP1IX1YE/
	tPpxG/DfG0hdAEn9jLUFSuf6lfBZ3nVsPoPlIYZ3vBudlWVhvB++1MzJiCD4uhAuTqh2s/k2VRgvr
	wGkTwvJXTG1qzwNkz7Fw8B0DvCofw8EdpzrwJp4gZxv0OPeDZ+f7mS14hAxZxjcMJUqfcCQJb2tUH
	focbNYOo4zXcIUUazZ6auUBbxvn0ZlWIQzfDH5vqNmwN9Dh2XXeEQ8Ei3nUgXNTgnZRmbcYC9820K
	7s8Z9nZSATtdVl/jXLnuRgqDW5ztOAEmBlwohbBz/GQvss4CN8IodqNrb1r7W3ALAW30SU6OJNTHw
	Q2He9s9V0o8phq3TGhmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKNN-0001Tb-QL; Thu, 16 May 2019 17:41:05 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKNE-0001S9-C9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:40:57 +0000
Received: by mail-ua1-x941.google.com with SMTP id 79so1615045uav.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dgE84Psb/U3etWxpJVt5b8VqKHdbZZrtGPq4Io8QnvM=;
 b=AIRBhrVhFgw7bH2pwHcH9I6R1AqBcsTlPNnNcXJpBf/pEYgcBTvHtbbQvYiD0GdjC3
 Vcii/zl8/NPtJhsrz/3lINqpDAb6oedjkKAJK8LzPcY1+uUm6aNi4S9Dtla3/QabW+ws
 yU6hWLGod2ZBeAEJzafr03Uc6WR2SvzI45sUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dgE84Psb/U3etWxpJVt5b8VqKHdbZZrtGPq4Io8QnvM=;
 b=bATn83pxoJvH7lmV6UAfDtlP5zPAnGYBnFdSpycDW/KZ82wXrdxIepmWaWVro0q0Eb
 wIuDno3ee6fmMhnvM1fBz44zLfPVZtkSIPXuWjfA0mxMrvaYEhuN0iadYY56q3OzKI68
 BgPni7DDYu8u0QhR8RNilT/CXw5Zn3ZC3LXkw9xvOPkmUlQqQjc6xptTFbSWHy9HInyU
 PwrtY0xlu8P0BS2EPS9k0o/GxND6zMPY+onCchWJ5EkJCpT4W9ipG4dOD1DEMIDnNhUZ
 c1EYdIEgXWtNqZNIF4M0/+Lr4vn+/4iekzQzU5RmFmS37DmSNvflDCy00IAjM4AFTNVl
 yv1A==
X-Gm-Message-State: APjAAAXP1xE4qKy+9Uqr6Xq7duKbamMv1GFQmxexiZ8G9VpF3N1UcUMn
 2PyaVsc/FW7UiNak61Joj5itleOX4e8=
X-Google-Smtp-Source: APXvYqzWLnVwaBg5M9jrpd8J+Dl/IxDA8cwXsw9vHPMI1OgBYO866t3pEAR4rUjZz9x33jjYrLAGjQ==
X-Received: by 2002:ab0:6309:: with SMTP id a9mr21053649uap.35.1558028455209; 
 Thu, 16 May 2019 10:40:55 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com.
 [209.85.217.53])
 by smtp.gmail.com with ESMTPSA id l76sm2713283vke.32.2019.05.16.10.40.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:40:54 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id d128so2846747vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:40:53 -0700 (PDT)
X-Received: by 2002:a67:1cc2:: with SMTP id c185mr1516432vsc.20.1558028453360; 
 Thu, 16 May 2019 10:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190516172510.181473-1-mka@chromium.org>
In-Reply-To: <20190516172510.181473-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 10:40:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
Message-ID: <CAD=FV=UQcv1+HC2eAk2ctBofufCi9-VvWc+OnY0mtBw3L-YG+Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpu: add #cooling-cells property to
 the ARM Mali Midgard GPU binding
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_104056_409625_C2BE6285 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Kevin Hilman <khilman@baylibre.com>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 16, 2019 at 10:25 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> The GPU can be used as a thermal cooling device, add an optional
> '#cooling-cells' property.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> index 18a2cde2e5f3..61fd41a20f99 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> @@ -37,6 +37,8 @@ Optional properties:
>  - operating-points-v2 : Refer to Documentation/devicetree/bindings/opp/opp.txt
>    for details.
>
> +- #cooling-cells: Refer to Documentation/devicetree/bindings/thermal/thermal.txt
> +  for details.
>
>  Example for a Mali-T760:
>
> @@ -51,6 +53,7 @@ gpu@ffa30000 {
>         mali-supply = <&vdd_gpu>;
>         operating-points-v2 = <&gpu_opp_table>;
>         power-domains = <&power RK3288_PD_GPU>;
> +       #cooling-cells = <2>;
>  };

You will conflict with d5ff1adb3809 ("dt-bindings: gpu: mali-midgard:
Add resets property"), but it's easy to rebase.  I'll leave it to
whoever is going to land this to decide if they would like you to
re-post or if they can handle resolving the conflict themselves.
+Kevin who appears to be the one who landed the conflicting commit.

With that:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
