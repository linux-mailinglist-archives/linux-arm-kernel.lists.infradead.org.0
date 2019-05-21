Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3636A256AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFTwLp5HKVe+h/NzsDri8+/uGGm+WwEn6gqanFS8iFM=; b=ToNXDL61/zHBr1
	+eeCwjFpufhoRYpLooHMBphUmKe2EPDYi2Vz0xLOzb9udjrNKPro7iGPLEytwAYwnCageYmttbVQh
	lq3sP3YrEsYMVoNRH3DAu9dXtnrdGqB3JLcbLFAwhIb18fFsbFXK3r6jBjNOT1Nk32g+uvs8PQQ7o
	ZC2ECT14bcQJWMNsUZbsphjjpnYqRMzepG4On3XG+KQhuzIET5h+fycaI/+IYu7iX0yWLG6DS9EUk
	fj7FuJ9CjLkMeSSI1n6i6RDgKogZvHkE2FfT9lVUU9fzXgIen4LZJGX2Tg9CK99HItToTZeZFuo9u
	BpYI3TPf6CZIXrqgFgOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8Xc-0005L6-Sw; Tue, 21 May 2019 17:27:08 +0000
Received: from mail-ua1-f65.google.com ([209.85.222.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8XO-000596-7W
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 17:26:58 +0000
Received: by mail-ua1-f65.google.com with SMTP id 49so6925559uas.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 10:26:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j/D4S8gscS9O5c3uaJM3GMPcWAFs73eJxSabr8rEv64=;
 b=mwVW5wgBPWfQWrWAdIOMWN7EHqUbfN/jRXe2JQihzzi2M+HaQ+LiMT5rXhvQsfNiXv
 KYpT+37jHPsnfp7TJiZp0zqboDEKTW1vHn0+THFTDa9louVcMOEhLPuRocZHKPc7PaN/
 FDEVFGrMxwu75GtlSgGnkgNNM30Q8D1mOBt9+ZvGg16Bjyigp/HpsxYM10+3WCPZ5tlp
 miPnBmKWsyVIem3L+wGcYsFXrWaTCV/qm11mp13fOXWY/slKwNzUAeiN3lPyEemRLztc
 lxM2C1BONpo5ZXJGVSQ5U/ucIHjUsHa23xk/fZXmbbsxZaaW2A0Gj+L1MI25fQjQo09M
 QqWw==
X-Gm-Message-State: APjAAAVt+51++hMoWuC3o9BQV5fke5F3N5OYTwV0r50qgT0MKy8ACx9D
 uloSiINEeUX7Y37VTZExDe707OV4sBeh9nBeFVY=
X-Google-Smtp-Source: APXvYqysyxm55xleL0rx9VDMV6dsPqbittwUJtB8QdH4/nvrqrBzTnE59SW4g42cc//Ox7iDuuIHLNPdPK69/1OXvZU=
X-Received: by 2002:ab0:3119:: with SMTP id e25mr1726168ual.96.1558459613075; 
 Tue, 21 May 2019 10:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
In-Reply-To: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 May 2019 19:26:41 +0200
Message-ID: <CAMuHMdWLwN1mGq5TFgdPYDcJFd8_0YvmoO_tmUf7hF791CAq1Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r8a774c0: Clean up CPU
 compatibles
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_102654_662800_A5C00A49 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.65 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Simon Horman <horms@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 6:44 PM Robin Murphy <robin.murphy@arm.com> wrote:
> Apparently this DTS crossed over with commit 31af04cd60d3 ("arm64: dts:
> Remove inconsistent use of 'arm,armv8' compatible string") and missed
> out on the cleanup, so put it right.
>
> CC: Simon Horman <horms@verge.net.au>
> CC: Magnus Damm <magnus.damm@gmail.com>
> CC: linux-renesas-soc@vger.kernel.org
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
