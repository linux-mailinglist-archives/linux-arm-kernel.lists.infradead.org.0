Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB2F1599FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ce7C/NFLtmFmIG6Tcz3AWyEJtAHhDn7nwDG7plEZkU=; b=JhLTsxVS/L/ko/
	lkhy1jGRlAGD1R+LwfyFPL7qX4yspRHn8txhDTAGIdk4up6PYtxBJXCFuqJbNWnlsuViP6pKFbGVl
	nM77N2kcphF5D41X8WBM0pfQ3r2/KsaOtCTfVs3gZB8TeRI3d7AMZ6VuJWwwbTsCp0cI8yCOKUMX7
	4MbIgc0SmHxbXRHcX+MiP0leay6UZyQiJPsVGKuO5OI9L1FC1P3bZTFGDJMG2tkvT2cwmwVLOKxqn
	J44kfGrrf4uZJEf4fklQD0IrDc8Gdpnsy4mevkbRZgmhwm+0lmfg1eut+CFhmT+SbbM7bIZdlBV0o
	4C8h41jIOLpuB8iQiM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1bTQ-00061o-Ih; Tue, 11 Feb 2020 19:45:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1bTJ-00061G-E3
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:45:26 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0758A21734
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 19:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581450325;
 bh=q9VPe1ydTAUi5w6cEUW2frjU+ddA+4dEWgK+7B6NC6I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FGxQCvk9BKxSg0jEbtd78/wqP1wz5MOUXCR8gNr+IUYaHsYQ1u5lvMzUa8sGNucXg
 4FUEGJKMFVaaIHLxqf5X+rzh9mkRxCFbo5ID5XRUp+s6ppk7vl2+ws9GMqgj0rnTEk
 OabOp4I7XE8UkL4fFlWIyp4FwDi6MroU5c8JiNCY=
Received: by mail-qk1-f173.google.com with SMTP id h4so11417058qkm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 11:45:24 -0800 (PST)
X-Gm-Message-State: APjAAAUxOiwvqZm/UhIQcDDF+6dTLvXvgISK/A8sviKPhEYK3b+EITmh
 dzUyD1lRabfYiwmfKRLnPG2bCavsuDn2oLb72Q==
X-Google-Smtp-Source: APXvYqy0F+krus8t+VOTuwWLyoxJ8kM9OC5+rJsRnXBBMj4D9aoh01Q8w4F58R6PunZUYPlNZZKVVXMWCGpr1BIXR1g=
X-Received: by 2002:a37:85c4:: with SMTP id h187mr7906186qkd.223.1581450324216; 
 Tue, 11 Feb 2020 11:45:24 -0800 (PST)
MIME-Version: 1.0
References: <20200210100455.78695-1-maxime@cerno.tech>
In-Reply-To: <20200210100455.78695-1-maxime@cerno.tech>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 11 Feb 2020 13:45:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLbG5AH_N=2UTLrwTetktdKoqjZUrF92kbBW+hU8-ucbw@mail.gmail.com>
Message-ID: <CAL_JsqLbG5AH_N=2UTLrwTetktdKoqjZUrF92kbBW+hU8-ucbw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: sunxi: Fix compatible
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_114525_496683_EB18C712 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 4:05 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Commit f5a98bfe7b37 ("dt-bindings: display: Convert Allwinner display
> pipeline to schemas") introduced a YAML schema for the Allwinner TCON DT
> binding, but the H6 TCON-TV compatible was mistakenly set to fallback on
> the A83t's, while the initial documentation and the DT are using R40's.
>
> Fix that.
>
> Fixes: f5a98bfe7b37 ("dt-bindings: display: Convert Allwinner display pipeline to schemas")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/allwinner,sun4i-a10-tcon.yaml          | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
