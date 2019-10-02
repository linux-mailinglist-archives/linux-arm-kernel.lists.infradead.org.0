Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BE5C9447
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 00:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEv1RbJfjwNexL8588gwkDLMWmFP6brj7HIzHCBwY48=; b=MVQZzVYfx2pPCe
	TN4twRRPswVKqyg388FEr+pdo06HGnRebJvFxO3R4yOZqJfTq0yoXSNgK0siQl3PSDqjCn0mZEPNc
	Ef5zxuOA3lqqBTqLakrkZAiB8kznZiUBxYxhmcs0fLdhCTNISBXOT1YrZqvxFlfirytnZI5o4g2P9
	kN2dG7KkGHPRetTqmjF1hZnfRLM5mN6PVCmXzPlkpuWKDjv3Ug9QErHAMkZB+mzTNYqvbXcxUNeO8
	TVNKHn5YDdAIGOh7dTtrmQ4CfDzASAzLyf89dd4F3L7rYxyYFT7cpZl1Vi68umm3gu43M58m+k/bs
	v0ooN6HgwO7M01k8axxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFn2j-0006qW-LW; Wed, 02 Oct 2019 22:24:21 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFn2X-0006or-0W
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 22:24:11 +0000
Received: by mail-io1-xd44.google.com with SMTP id h144so991785iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 15:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dwiBUbDvj+99or6CWyhr/vlA0vFW+3yf473QWcd1/1k=;
 b=f59VWKPlW77r+626KYZxJnyNLG8BD90K4VFBHcG//pORlzf8wYWqBnBNPHO2ECJzUx
 59RW7ke/ziFCIczsmf9wvmQmh3OvsYEzpXVjTQsFWWsGwqVLcVtvHi9uNsidKCMpxVyv
 +8+R1w9Ctas0Z9M9OzZEStDYOtX4T9Ohnh9r8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dwiBUbDvj+99or6CWyhr/vlA0vFW+3yf473QWcd1/1k=;
 b=C76yIufkFiwlumNziVFpluR2QA+jJ13uKIrNpfQJcC219b7A7ercToQN6rYNd4E5zS
 lKcKI04oC9192JDGW9ZsDJMVxcBtRPo9rKzUckTY0iZXoyQi8dskq2rovUTA1VWdpgCG
 V83fvP8wy6r0U1sQAUmvACgJQBezvsZ/H4LWSR7ZbLpmIpGCyyzy/ApnBlCYjZYL4E/b
 oqJlRsNtmwmSCfM7cZe5DRJ5dVOoIL4jSCY9oofnpLpSdfGmjMhUfhDBRHvFOSBHGPVN
 DCePcAB3cBgEGpZvjjO58rEjtdAz+fLFGWNNpOSP8uPd0IzGO/Bj6rzv8yCJKvUb5mgB
 ezyQ==
X-Gm-Message-State: APjAAAVZkSJ57CB+Ulp1XkkRg6ObTGC+JpeD8FdzRQ9nj2JOJ2T+5z7W
 mjcFoGkHz0zLkW5h0ABUiznBNsTQK5w=
X-Google-Smtp-Source: APXvYqw76VklI5//Pt3WkQ3MoJ5cAqbm2VnnMGbt93UfLuaH0pIFX320tyAQFymMu4ujvDj+V89HCg==
X-Received: by 2002:a92:d78c:: with SMTP id d12mr6245999iln.96.1570055047601; 
 Wed, 02 Oct 2019 15:24:07 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id t8sm398812ild.7.2019.10.02.15.24.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 15:24:07 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id v2so957178iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 15:24:06 -0700 (PDT)
X-Received: by 2002:a92:844f:: with SMTP id l76mr6360533ild.218.1570055045845; 
 Wed, 02 Oct 2019 15:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
In-Reply-To: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 2 Oct 2019 15:23:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
Message-ID: <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Use interpolated brightness tables
 for veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_152409_054023_0C223FF9 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Oct 1, 2019 at 4:07 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -39,39 +39,8 @@
>
>  &backlight {
>         /* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
> -       brightness-levels = <
> -                         0   3   4   5   6   7
> -                         8   9  10  11  12  13  14  15
> -                        16  17  18  19  20  21  22  23
> -                        24  25  26  27  28  29  30  31
> -                        32  33  34  35  36  37  38  39
> -                        40  41  42  43  44  45  46  47
> -                        48  49  50  51  52  53  54  55
> -                        56  57  58  59  60  61  62  63
> -                        64  65  66  67  68  69  70  71
> -                        72  73  74  75  76  77  78  79
> -                        80  81  82  83  84  85  86  87
> -                        88  89  90  91  92  93  94  95
> -                        96  97  98  99 100 101 102 103
> -                       104 105 106 107 108 109 110 111
> -                       112 113 114 115 116 117 118 119
> -                       120 121 122 123 124 125 126 127
> -                       128 129 130 131 132 133 134 135
> -                       136 137 138 139 140 141 142 143
> -                       144 145 146 147 148 149 150 151
> -                       152 153 154 155 156 157 158 159
> -                       160 161 162 163 164 165 166 167
> -                       168 169 170 171 172 173 174 175
> -                       176 177 178 179 180 181 182 183
> -                       184 185 186 187 188 189 190 191
> -                       192 193 194 195 196 197 198 199
> -                       200 201 202 203 204 205 206 207
> -                       208 209 210 211 212 213 214 215
> -                       216 217 218 219 220 221 222 223
> -                       224 225 226 227 228 229 230 231
> -                       232 233 234 235 236 237 238 239
> -                       240 241 242 243 244 245 246 247
> -                       248 249 250 251 252 253 254 255>;
> +       brightness-levels = <3 255>;
> +       num-interpolated-steps = <251>;

I _think_ you want:

brightness-levels = <0 3 255>;
num-interpolated-steps = <252>;

Specifically:

* It seems like you're intending to keep everything the same and just
have a more compact representation, right?  Looking through the values
in '/sys/class/backlight/backlight' on minnie shows differences before
and after your patch.

* I think you want brightness of 0 to match to PWM level 0.

* If I put in printouts in the code with your table, I see:

pwm-backlight backlight: new number of brightness levels: 252
pwm-backlight backlight: i=0, j=0, lc=0, value=3
pwm-backlight backlight: i=0, j=1, lc=1, value=4
...
pwm-backlight backlight: i=0, j=250, lc=250, value=253
pwm-backlight backlight: lc=251, data->levels[i]=255

...as you can see, you end up missing assigning a value of 254.


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
