Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9526D4C4F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 03:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Cudb2HKAj9G4rzo9vbm+9sAQM6fy6mi4hhXDZpRiiA=; b=NUuM/Tvnc9Fwt8
	41xYhmeQIDXil/Tw4HGObiXi9teo+dSEDPuGI+NGZ/scGbLlWPCOkfsZOHY4U+R3Doyo0VfTiaQnz
	HHvTh5YRj0sdGyyE2eOlFaC+q/Y7GJRzw4XCc52pA8mVrF07Kg8rCpZNGXf86kCVPAL93Q1V0ttk2
	NC+8JgRE6f2mXeAd0txQFL0BfKEzwL9h5kfAB5iPkH9mVwcuTx/6tkKmTW+7hd0xmRkBXp1U7R1Qi
	NFVHp+sTTXs81X6WOnvuLwZXsgZTzD741fQfnvySp4fYhL/MXdWIgSwOA1g3BdRPKd8TSODxY8yzU
	iH1zSfFYkH1iaJ0WGujA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlsH-00010T-4s; Thu, 20 Jun 2019 01:28:25 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdls4-0000zo-MG
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 01:28:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so1316424ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 18:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K+lJ3CLPTlV9tpNBKFgd0Xmeaz/SJ4QdPFY55va1FCk=;
 b=T9qVefZXg/l4TY1fZ5t4+FBcV8bawtYd7X1iwe2XqARuiVY+xJvg4NGnhUnJ/dR/K1
 Y9cB1lnaFpB2sOYEZkpB8u1dWTE9wM6t07kCXXzXW3SqvSe6lqHfvnhmN3QyN0W4IRi9
 CTTi0MmuSSPbmAZXhKPRSNz3zuDNzA0674j2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K+lJ3CLPTlV9tpNBKFgd0Xmeaz/SJ4QdPFY55va1FCk=;
 b=HltNiwcqZWFyxSy84Txc+d8Po2616iID+5HCM+uJq3m7l1V3XHsliaHs5zQR3deQxc
 KJRydWaSPlWsQheMM8mxuV9JWWjSJbnVnT5ankYojSx8dh79DZeDydQM9jraeO8LOYVc
 mUMfGin7sNPoPLhYznYa43esabtIwOWTewiiKoUlSa57qMfgD+D2GR9AIps8QwPVg2mp
 Xzu8PJfsRRovUs5m73d8niFsFAnj8KGzXr5gSioiNseCMpigfq+Cs0b1NPKp7AUsk6pP
 02h56uJPf7oBj44nDjtWZpd1Lwui9BvFwyimEAAPZTOCuOrb9zbCSLIrcveI5UhBDTdf
 Ju3w==
X-Gm-Message-State: APjAAAWEZ7GWLbSLD+0BMAj0tkwAtiMdeg48RVPtsoDxv7Sp9Ahk9/BU
 8F1CbxjbODJykJcjL5I7iOoERBc+2y0=
X-Google-Smtp-Source: APXvYqzUHmyoYtLUFtf58m8O//X6Q84DN8l/HfGbxrv2dALuXaKB6x8L7gqGnY05Cf9X2DV+DiYlKA==
X-Received: by 2002:a5d:9d42:: with SMTP id k2mr2110940iok.45.1560994091135;
 Wed, 19 Jun 2019 18:28:11 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id e26sm17443083iod.10.2019.06.19.18.28.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 18:28:10 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id s7so1005726iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 18:28:10 -0700 (PDT)
X-Received: by 2002:a5e:d615:: with SMTP id w21mr12594037iom.0.1560994089873; 
 Wed, 19 Jun 2019 18:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <1458265206-15733-1-git-send-email-heiko@sntech.de>
 <1458265206-15733-5-git-send-email-heiko@sntech.de>
In-Reply-To: <1458265206-15733-5-git-send-email-heiko@sntech.de>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 19 Jun 2019 18:27:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
Message-ID: <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
Subject: Re: [PATCH 04/10] ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_182812_756585_F41D67B2 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, Yakir Yang <ykk@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Fri, 18 Mar 2016 Heiko Stuebner <heiko@sntech.de> wrote:
>
> The panels need a bit of time to actually turn on. If this isn't
> observed, this results in problems when trying talk to the panels
> and thus produces detection errors. 100ms seem to be a safe value
> for the time being.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 +
>  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 +
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 +
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 +
>  4 files changed, 4 insertions(+)

I know it was 3 years ago, but any idea how to reproduce the problems
you were seeing without this patch?  I believe the downstream kernel
never had any delay like this and I'm not aware of any issues.

I wonder if the need for this extra 100 ms delay is no longer there
now that we have:

3157694d8c7f pwm-backlight: Add support for PWM delays proprieties.
5fb5caee92ba pwm-backlight: Enable/disable the PWM before/after LCD
enable toggle.
6d5922dd0d60 ARM: dts: rockchip: set PWM delay backlight settings for Veyron

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
