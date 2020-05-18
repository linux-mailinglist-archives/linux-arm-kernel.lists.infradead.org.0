Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDEB1D71AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umcV6YwilRiXS42NGFo6cGdc5acWjTYHq9aP0xNpv+g=; b=QKgQeG15rLYULw
	3190ZX54N5uysI4GrtXVBOh807t0KSMUIihG+3AaJjX7i1jMVjejSO3+IMDKEfwJvViiFHQp1GdAh
	q1rrJCSAJreS9gavCKLKgITqu4D8NjdJpQdSU18MCZQiygS6SYhTcg4jW6581BIN5I0Ua7DQwctvS
	k344z/LGiITJmvAQgJszWra3yld96K1LPU57rREFForBfPZZuJtd80bTI1aL4HyD2sO7mfAfAdwYH
	jK1cB+KnyQTh+73kK/R/IFY8bORRDXejNYvNXZl2o6O7NQew5TnyjPioo8Ld7QDmhzjYWedqpSh4u
	B27fz8ZnLEXiVx8lQ13w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaa6T-0003zx-Jt; Mon, 18 May 2020 07:22:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaa6I-0003xI-TN
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:22:16 +0000
Received: by mail-lf1-x142.google.com with SMTP id c12so3635337lfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ta2gbgUnTd9cjAo8d+iXtIxCCmOdQ9s25dbiJxtxN7c=;
 b=H45b10GoSvrnbPb2a/o3lK9Nl0HuYne+YFGpSvMJiNjwcxbVxcZeeUrjPUQx7sXW+R
 hQWjYwS51Nsn9o3d6QmcnVszrfyH2pFc5Wjwa0dzvxsSdLHpcpLTJI/d6cGHheznDOWr
 aw+OrGy8tPVKae29pfSJi/RecDYQKtqV1KUlNJI2vPPJ4iide2fNvyqfk9HlxzuTBOnU
 EPQklZ2sqMCZL9m0Tj2/hWeJ/WdYq14P0TDpxlWB5tUtgZbtOshsuI5mqiPEJ0x89Eje
 unpR6vch5DGld+UnoJprw33lXuot+0VyLHHf+qLgbZnvm8/Lp/tDq/xbkMgZRftxIgaa
 3dyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ta2gbgUnTd9cjAo8d+iXtIxCCmOdQ9s25dbiJxtxN7c=;
 b=uj6PM/K1X7ZTc26AYmTmcidZQlctZRKz4g9av913kKaiqhzNUdKuZPTihHNWCnpOMQ
 FXh3Q2cpILUqoCWhuSj2tfxn1cZaUaulU4EL/QKZBZ9z5qv0E/9BhJso/QtAB/xfpqvn
 Tn+I8f0TJW8IyGOPfYELVrWTHWFUPA13jVBLSnQFZ4SMctHWnoomA+ChKGD+QxoChSGd
 U36/iKxWoZ1rpsAPjWcf3qvArkztCDsQmzSIQAozWbJqiu1SngM/G0x2pILEw3khKq+P
 pH9uBCWfeX6FRNhz4kguqqYa3w7TcxnhRqt3/UV2Jqhha6BojBVyhTCQ7VRW1WWH0qyL
 1yhw==
X-Gm-Message-State: AOAM533VLV7qkiXvh6lCspzoYaN13Vg7YdTPn17G6qD8x+Jj5baZgr4l
 xdQ7hUYqVvGXP7hneUXzBw3BDnFhNIxv2aOarStkFg==
X-Google-Smtp-Source: ABdhPJwjBRm7gpLqIiY05Psy2U6dlWExnKINR/oAoQ5mkgDD5QtubFG19R6MFzkv42RekuXIOYC1qPLmFToR58V7Wmg=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr6307358lfn.21.1589786532265; 
 Mon, 18 May 2020 00:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200512203524.7317-1-jbx6244@gmail.com>
 <20200512203524.7317-3-jbx6244@gmail.com>
In-Reply-To: <20200512203524.7317-3-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:22:01 +0200
Message-ID: <CACRpkdaN4tMcsOmsERdtcwC+Cw6SjTtSENxNRjTOeMU9rdU+RA@mail.gmail.com>
Subject: Re: [PATCH 3/3] include: dt-bindings: rockchip: remove unused defines
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_002214_942023_97FAC682 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 10:35 PM Johan Jonker <jbx6244@gmail.com> wrote:

> The Rockchip dtsi and dts files have been bulk-converted for the
> remaining raw gpio numbers into their descriptive counterparts and
> also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings, so remove the unused defines in 'rockchip.h' to prevent
> that someone start using them again.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

I think patch 1 & 3 needs to be applied to the Rockchip tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
