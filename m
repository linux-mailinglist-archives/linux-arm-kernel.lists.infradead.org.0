Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171901B55BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 09:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Py3PezkapAOgYghx/Qpa9qkyFOHtgODgGkUqSC7z/b4=; b=tqwA1zH11bzyU/
	zvklHX0P8MQhj2vrGfozh/X4VQY3leyuhs5Yve3E8tb+dmLQUw5GIncSm469MTNouyDnu9HPXoE67
	UX1G32vNRsW5oo95VVHC1q8XZlqTbJYCfDjNj/KdMuOe9MYl0mRvY06qmHawEG3MNRTqmuKzbnw5a
	+Zc7rNXmxfd3HCF3jNldxHRDC7vUU19/nVFeQy6cRcIpAM4bagDvuFzQtmI86/5060CyXmGhI4FnW
	vv6WpeAa0bS4rUwtCAAypCRVnQKPmezM9bmKcZ7flTIJKcFcqQ4eUNkDA0UdA2UHN/lrMA5lUpEgy
	crVykzAF5oI03aFmaAAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRWOZ-0005nn-Dk; Thu, 23 Apr 2020 07:35:39 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRWOP-0005n9-3Z
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 07:35:30 +0000
Received: by mail-il1-x143.google.com with SMTP id t12so4606948ile.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 00:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0hlTl/zCZbAA+GFl2dvVEJ1v8GPDc+Kbabyo2qL/7PY=;
 b=OBnyG7PTHDCCLUE4ws+cv0rx52XPBDkBrMCNyEZfc9kAQVk3+4lTcKI7hbJtv25yej
 fv4TX/B2zr1x45m1SG5oNY6N7HrCNdF1AVTdschZ5mWmwdvgXbyANO8zmDpCTrg1sM1Q
 8IYYK06n8wgXSzYkkzIKxf1tQY9QDb9UNOu/xrSg6wswcih34vgfVq2d3TKja0szHgmb
 4VZeWTbVGmIfUiagSYTLqT562mhG/GXzAh71Adh4VxD+TGpq66SAVVeTN0ifPV42dIDC
 pz0AcXv+7QFMoWVwrfNwlUlVFJxPfd6kqVJCsrf3dpnxtgmFwiNyRCHN8FYtYXFJbZpK
 ygWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0hlTl/zCZbAA+GFl2dvVEJ1v8GPDc+Kbabyo2qL/7PY=;
 b=gH5Dwt8BAvVA/AvLqmNcKgsGQ63qidHnHggieJvpWS5zS3xUfiFqcs6XWnrtm28Euf
 2cb4eJOIi0YvGk8n96r6tNI7o9SkSJb/aqKWeKxH9ikI1lo+txzkw6OVhgmV8warhaY1
 VRetAyVpPulkbNIoqsHJFr0qaAf3VWd2trTo5MP5jOTkji5ArzpD+JRWIuLT8/H5Dgwu
 ZfVWwrMsebA4pOt61lEe4/kbUiIm2h+PVeulO7CR2USo2bL0/C1yPpyr5HLR3EyO3Wku
 qyxYypFUOW8yMtVu2C9+a84/u1xP9GHuE0NwE4L2shnvu7+906Q+rUMucRjABHJ+CNQk
 TqOg==
X-Gm-Message-State: AGi0PubBLgazQMRI+z10w+jJWtVw1IzUkTQ4wSZIs2GG4VpexjMTdFVv
 Mt05f096AhcgygUdyp9e3f5byQF0Rv5Syl9dypA=
X-Google-Smtp-Source: APiQypKXWH4EZsa3e+ik+tfviGjD3zqic9BgcJWx+N0WLN2FGGHy7WvCtX5MXcR6RsFDgYNqLahTpflaJeSW9U3t+TA=
X-Received: by 2002:a92:d443:: with SMTP id r3mr2212189ilm.293.1587627327911; 
 Thu, 23 Apr 2020 00:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200422041502.7497-1-samuel@sholland.org>
 <20200422151616.httmhmo2tbd4m4eu@gilmour.lan>
 <b554ea70-16da-1637-d349-db51dddcf95b@sholland.org>
In-Reply-To: <b554ea70-16da-1637-d349-db51dddcf95b@sholland.org>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 23 Apr 2020 09:35:16 +0200
Message-ID: <CAJiuCcfxokJr3Tj9XY8AT8O2y68RpuO+O3QZRvfCjVbu6s9aUw@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH] arm64: dts: allwinner: a64: Disable
 SPDIF by default
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_003529_173243_9B2DA0D8 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Samuel, Maxime,

On Thu, 23 Apr 2020 at 01:50, Samuel Holland <samuel@sholland.org> wrote:
>
> Maxime,
>
> On 4/22/20 10:16 AM, Maxime Ripard wrote:
> > On Tue, Apr 21, 2020 at 11:15:02PM -0500, Samuel Holland wrote:
> >> As of v5.7-rc2, Linux now prints the following message at boot:
> >>
> >>   [   33.848525] platform sound_spdif: deferred probe pending
> >>
> >> This is because &sound_spdif is waiting on its DAI link component
> >> &spdif to probe, but &spdif is disabled in the DTS. Disable the
> >> audio card as well to match.
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >
> > The patch looks good, but don't we have some boards with SPDIF enabled that
> > should be modified accordingly?
>
> I don't see any in-tree. The only A64 DTS that references &spdif at all is
> sun50i-a64-pine64.dts, which explicitly disables it:

This has been introduced by Marcus Cooper for the Pine64 audio extension.
https://store.pine64.org/?product=pine64-stereo-audio-dac-pot-board

So this should be moved to an overlay no?

Regards,
Clement

>
>         /* On Euler connector */
>         &spdif {
>                 status = "disabled";
>         };
>
> I'm leaning toward agreeing with Clement that the sound_spdif node (and also
> spdif_out) should be removed altogether from the A64 DTSI.
>
> Regards,
> Samuel
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/b554ea70-16da-1637-d349-db51dddcf95b%40sholland.org.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
