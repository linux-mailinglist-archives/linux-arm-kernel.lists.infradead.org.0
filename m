Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98169816A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Js2bz0/Cf2kWkx6E/IQdpGl6XZYLp6gWhPZH+JZ9vGM=; b=EXaNvtHyR3SXWP
	pdlc3A5EwtLiBom0vVzFXt49MoBGSwudTFqY4uKpasC+tFeKIu4wEEJNEIRV0UPvPgbYZrwlybYlg
	6lN2tDIwInYkbyUJ0vE7SD8uu8XkgDL/MM4oODzMOcONHOEk9AK/z01YPZs1q+vVCKhnxu5FZeYQ7
	H+3lghFXHH4yCmdAZRt4H4BZbGac3Nq763qugOwGwwY63AZKCJUJPtUFC9Fx2GYHXuYuWS/oJtRGf
	telqeeEt4YFnPx1ZtPbwBi1zZpvayhKoHqlB4DxKFPEalDR+JOA0UN/WqpiqZA1UzasyZ8m9+yR7L
	CZ/f7ALychkaRniYxrBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua1f-0003WG-0c; Mon, 05 Aug 2019 10:15:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua1S-0003Vh-MY
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:15:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id k18so78782714ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EVUakBz4HVrBvU5WozBP9zRGYaZ2u063yCbTr8IH9wg=;
 b=h7hSXRNhw+BgWJVjsm3CUTt+gZ14IRMN5LjwbEypK2d6eMw0PVs2ntw/YUTNTo6K5c
 YvYdlQu43bwvSdSCHbk9ALOWXZGSYh2Z6De9g/Su7n1CVvElbTYf5Sk4V3CWU/t6arn5
 QL5v+l4NitaSIZfsmJrgpY7tfjio4lzr/M6up+lXW9V3Ps9ZuOirB94gxrz8x1FG8GQs
 RttJ3Vra50Bu2sxlntxYoVh4k7IcugIs4VJCZaH9TonMZSuJSrbdbZTXGgz+gcjtPoyh
 AP/Ox8IvhETub7PSCfZSGGX1tuRPisg0IWmhPaXV0jTRZ/ydreArtzV03pszTkbXybr9
 hJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EVUakBz4HVrBvU5WozBP9zRGYaZ2u063yCbTr8IH9wg=;
 b=D7xUUMrgsTZrIJyZ6TnXurThAePyU/p0dRwJ+a6y3TON3mSSQnUFP+7yhjNn/fDeVy
 Mi4cdDZAJ0lgITQ2at9TorvrK2OA9pkDGFq5C9RiWQegBm4wOO5gNWYja/1Vcbc0w3cw
 4MMIM2N4cICnRdK5p5UcqOQlOuvh2ZPFZXGZjKvLbIDBko0CIPx5buvxLoT6TLZO0KMl
 Yl21aR2kBl89TVKvW5VC9WamXF/T0NtxsldslFJ1RWJ4GSh96HVmvmh6z/PsbuUBOZGi
 0AqLxzZGH6Tz4wS2D779NkzzMMle14YcE7jA4oPWfQbLYG2sZXHFEXx382lTZbQlwMn+
 3Agg==
X-Gm-Message-State: APjAAAVwXKqsOxdGwBhBfYYTcPZrwZiL1gxt7FpOns8YRYx9QsIBFQRX
 ir+2nmaQ7YgXdN+m2jOKE7yZlraZcFEknpNwDtBdIQ==
X-Google-Smtp-Source: APXvYqySHuR6d+bEQrsbTHzEENtYOVUi+8awDm/vDpXZ3zt3zWFIJstQGj1Z5v+QGxwqmgpUNdelEqXuxOip7mnqSPc=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr9719149ljg.62.1565000120908; 
 Mon, 05 Aug 2019 03:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <1564053416-32192-1-git-send-email-amelie.delaunay@st.com>
In-Reply-To: <1564053416-32192-1-git-send-email-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:15:09 +0200
Message-ID: <CACRpkdbeTQE1SGFeU0NQzgYxz_rjA_6Lw=3WLmeAF7pyEw7aLA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: stmfx: update pinconf settings
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031522_743818_5C3B34C4 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 1:16 PM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> From: Alexandre Torgue <alexandre.torgue@st.com>
>
> According to the following tab (coming from STMFX datasheet), updates
> have to done in stmfx_pinconf_set function:
>
> -"type" has to be set when "bias" is configured as "pull-up or pull-down"
> -PIN_CONFIG_DRIVE_PUSH_PULL should only be used when gpio is configured as
>  output. There is so no need to check direction.
>
> DIR | TYPE | PUPD | MFX GPIO configuration
> ----|------|------|---------------------------------------------------
> 1   | 1    | 1    | OUTPUT open drain with internal pull-up resistor
> ----|------|------|---------------------------------------------------
> 1   | 1    | 0    | OUTPUT open drain with internal pull-down resistor
> ----|------|------|---------------------------------------------------
> 1   | 0    | 0/1  | OUTPUT push pull no pull
> ----|------|------|---------------------------------------------------
> 0   | 1    | 1    | INPUT with internal pull-up resistor
> ----|------|------|---------------------------------------------------
> 0   | 1    | 0    | INPUT with internal pull-down resistor
> ----|------|------|---------------------------------------------------
> 0   | 0    | 1    | INPUT floating
> ----|------|------|---------------------------------------------------
> 0   | 0    | 0    | analog (GPIO not used, default setting)
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
