Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A059B731FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTag692CSyA7z4kDO/gjC5kWmQ6PARiaT1zKuhC4Fmk=; b=dJ/cMMCZzEraVx
	eH5cW9QdE45w5JQ92knNvAx7QEsy/RoALENXH94g4u6WSvlgIN0IfVa4ByuBk2w2uG9L6Xg8YwyUT
	ZPpstBF/pEPNDeup8YjeI7s9tqEb/KMjWGkuOWizxkZRQqNhFG/fJIBsTvvx89p0bHq5JjmXuZnnA
	/Sye9uCk7HAyCJgTr/+SNHnLTmU/XLKStffJvvApA2nhDF6C/k1HAzfg4vxQRs1MmMAMFZP1lk4JM
	+yJmsus1PSF/WWumWOC/LinA60DrQlrLePPHjxu/t1r4f4qbec1sS31YkEtXKXxvXaJ80MnOhUCMv
	wYS74vq5QQnAGMnLm+Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqITv-0000ol-FG; Wed, 24 Jul 2019 14:43:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqISg-00086S-Jl
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:41:49 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A93F22AEC
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 14:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563979305;
 bh=TRtWU5E1r37i55jKNYc0TCw2JQ3luL6jpXOG+dX2+IU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lgy8s5xgg8fDhdv+/4WKp00AmtS2aQqp8aRxNZ+sxzVYDjUUmAwoArGG5xWnRJKP/
 ednK+UnVAtUIJm5PM11Qy/aaKnUrgfEu44ZyeLTzAvcocH1cyVRXhrQQK3/mfOCp6O
 8AANZqpxu8TsStU5SVHqBvnC62QWpFyfRlzIm4dQ=
Received: by mail-qk1-f177.google.com with SMTP id s145so33919641qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 07:41:45 -0700 (PDT)
X-Gm-Message-State: APjAAAWKxX8jHdW4SutFlVSZmmB/TGzrTX9QsZBVhBzhfx5qzMNcZan5
 3kHqExtyyQw+9aK79r4kEH+BNqcOYsTEl5O0IQ==
X-Google-Smtp-Source: APXvYqz/M912Dd6lOG1yOuf5yMiMHoEfa2RwVPeNyv1O7z5gz0FAig6V3+V0bVh11Zso2nw1+rCP0tnwMr914vN60fg=
X-Received: by 2002:a37:a010:: with SMTP id j16mr55849178qke.152.1563979304746; 
 Wed, 24 Jul 2019 07:41:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190619055247.35771-1-Anson.Huang@nxp.com>
 <20190722015043.GP3738@dragon>
In-Reply-To: <20190722015043.GP3738@dragon>
From: Rob Herring <robh@kernel.org>
Date: Wed, 24 Jul 2019 08:41:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKv39XdFABuRvxwiXg6qQpHSuykwgqTwsGw1g+D2wA1+w@mail.gmail.com>
Message-ID: <CAL_JsqKv39XdFABuRvxwiXg6qQpHSuykwgqTwsGw1g+D2wA1+w@mail.gmail.com>
Subject: Re: [PATCH V5 1/5] dt-bindings: imx: Add clock binding doc for i.MX8MN
To: Shawn Guo <shawnguo@kernel.org>, Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_074146_688097_38ABC8E9 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Bai Ping <ping.bai@nxp.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <Linux-imx@nxp.com>,
 devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 7:51 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Wed, Jun 19, 2019 at 01:52:43PM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add the clock binding doc for i.MX8MN.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Applied all, thanks.

This breaks building of 'dt_binding_check'. Looks like there are tabs
in the file which doesn't mix with YAML. Please fix.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
