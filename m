Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B56C138C2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 08:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+gGDjUufd0spBB1Jk0/2uSuboauTp7K+rT9aod1zMQ=; b=DJozBh8avCnZjr
	IFoN2Kq9Ko1UBoOL563uT131k0Wvz28zg1DECbT/nj14G/12LLa8PKHRLv6N6Bzo+1WTeG6sz3sUU
	YRQ+1AWGBdixasNMVDMRuOZpsQkv1Z4bW50pPN6R8RyMqRs49XIV3m4+TbpZIvETSw+12T8u1DrJ2
	ndjBvE9IsKgTzW+vw/B2taPHFgZQSEaIXU3YBj+zAq1vO2qPkXwEpmX59zwzAEW/kIbddlIbEu8pP
	R9kEPcu2qz9v4lKGtXqQNt/+cX32jKmDI7oL7GHD7JVBj3Li/BVocsvwvMD4PDy8gYSPaM8xJ6Cl6
	P7BwZ/q0NEs5XMMOa9ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtq1-0006pE-BK; Mon, 13 Jan 2020 07:08:37 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtpq-0006nQ-1F
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 07:08:27 +0000
Received: by mail-qk1-x741.google.com with SMTP id k6so7607226qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 23:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Li93yx3mVpdyk7CJK6HDbuJvR+euWoOVK8hS+mAbZms=;
 b=kcDnCbCuetwq8A/q63qeQ4jlC3PQiMbt+cpgN4GqEKafeNFliKhFMJ77TQBfNM+uMZ
 GxLi2SFn3qZC0mWbqPvE/PEQhABJA3O7117XpPYMuoOfLQavmLT39YopEgBs/IEFEsCL
 YLeEodBlNKuV+NJxnyI4smhWZr8oxmFTdGnLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Li93yx3mVpdyk7CJK6HDbuJvR+euWoOVK8hS+mAbZms=;
 b=rh0kcSh9Mk6Yk7ZYvscqT+Fc6BpWa+7zL7nALe+XNtuKmkJZ2Qwdk7bWeqA6KOUoU9
 YagxR8pcUGtnJMZ7PdCGw7TKMKdPo+CZW8l9Q5rPNzneKiUeS4i6x3rtNy2+JD/dhf/b
 N3ZnxltRbbnVr4Kn8EfOR6FTg9Bvciyq7kAFUlDbnHEzxxy80Jw6ahR5E4xWo0cf5j7e
 3mtXoIoJxkEZtZ+IplKB250kus3TxWNlI70o2ZhyjJii3ePJpHfTB14z3O6OgfUdKNe1
 ID8+Az4fiCt/zzlVBnWKqpzQWBjReOL2BfI/Y11/vl6utQpp3OJRT9cvh/+U9lvxlbVf
 yQpA==
X-Gm-Message-State: APjAAAXDX9d6n/WOI8n/n4WO0nw6KB5BJhnLiorov7ElO9epJ3nTxmjj
 f7dsW4c+cYJGoVUPewqSnwMR/90SKTUDWVpILpK35lsn
X-Google-Smtp-Source: APXvYqy6PyadEbexQKem912USX21lARZeie9Bf+dUuy9LQm4s9hBnBrf7pNLiJG+vj+X6NMNYB/L+81jzgTCFcCmYQw=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr10243195qkg.457.1578899305001; 
 Sun, 12 Jan 2020 23:08:25 -0800 (PST)
MIME-Version: 1.0
References: <20200110145952.9720-1-matthias.bgg@kernel.org>
In-Reply-To: <20200110145952.9720-1-matthias.bgg@kernel.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 15:08:14 +0800
Message-ID: <CANMq1KCnLb04O3HWv_9HbkiDufN9_Kcapkg1wpT9ra28nJ6WFw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: mediatek: Add MT6397 Pin Controller
To: matthias.bgg@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_230826_074765_CA08931F 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:00 PM <matthias.bgg@kernel.org> wrote:
>
> From: Matthias Brugger <matthias.bgg@gmail.com>
>
> The MT6397 mfd includes a pin controller. Add binding
> a description for it.
>
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

>
> ---
>
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
> index a9b105ac00a8..ce22fca9d48b 100644
> --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
> +++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
> @@ -54,6 +54,11 @@ Optional subnodes:
>                 - compatible: "mediatek,mt6323-pwrc"
>         For details, see ../power/reset/mt6323-poweroff.txt
>
> +- pin-controller
> +       Required properties:
> +               - compatible: "mediatek,mt6397-pinctrl"
> +       For details, see ../pinctrl/pinctrl-mt65xx.txt
> +
>  Example:
>         pwrap: pwrap@1000f000 {
>                 compatible = "mediatek,mt8135-pwrap";
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
