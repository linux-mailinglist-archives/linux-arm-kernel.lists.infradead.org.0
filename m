Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BA6EE3E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIHQc5f7dOJouyUi4PMMDXmr8yOPmG6qqj/0kVPiX+M=; b=uGqxia9nr9avTX
	0A4g/kPQSzkJpsyB63AwAHu3dGCCL6krpaJozMW2NKDL627see35AIkXuirtz7U9xydaTjAq8PrJD
	hIzJFAdpm7o/4+QhpwjA/EtgB3mnoYAHuieXnD3efgrPx2nnMmKRNxABVYxrCSS4sFkOUNrJgDkgk
	UBFhjn/YsubosfDFt7Guv/wG3xurs4D12pcYS20eiwrsk/1DYMtgHm7D6yhSjXqIjyPpxhbpk1zCj
	EYwkqrWxY4kn5ccCaTMA+0dAmeryFS/1KOuKlK59c3GI50SpokB/9QbRvwYcycZcQUewbzE3BaBiO
	ztqNbeAPve8wFYVNaqaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReMo-0004tI-1K; Mon, 04 Nov 2019 15:34:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReMa-0004rM-L4
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:33:53 +0000
Received: by mail-lj1-x242.google.com with SMTP id n21so4480820ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DBMbcScUQGQZVNBdTsiLXor9xyXQU7D+1E9hPAM9ZKA=;
 b=Y17/dQyIIuBV7qFVbf3hljdrzyzDXMH3+Q7l6qUsJpgq4TKcHmzgXg3WqeQuOs/Ofr
 mt2X8W/YV22xCxDSI7shE92hjOUSTvROnDYbTxNm1xYEndn+xp9O/ei1MZbUJxV6NJoN
 xZausHHAo7VcDDwOsRj9NvgnwvXaFD92HMPjiSmUcBMYtj9mw0nxOc+p3cXXndAcjDnk
 aGaq3jsRxA2dLzVTii61YjV/gf2b54iJ3BhoYJ/OCVyMlTmGJ9i0FMaiTKNYRj5YNy61
 u2YAwqRk7R6fyPzl2R98OqG+hOyGHDz1J36kBp1LS+6gSTEBnwLs13XR2sHVIs/RcOiK
 davQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DBMbcScUQGQZVNBdTsiLXor9xyXQU7D+1E9hPAM9ZKA=;
 b=aNI7E+O4dX2CIaLE62ThswN5RyyNP+Oy86u9Q2c0Kn7TT+goAgwWTWWvNjFy7e3xCU
 9F6yYx3bcdpFbQqd+eK9ykfB8GnI88RfFG8ho2cL0Vsn/KQc6d6IccCLAJ2FuxESIxf1
 Mpk6VTOduKAaumCfWab1LreOh6XxZBwjb4qzlLjTaQM2Kx0l+V3R4+FM/SRD0xEYbofh
 1NBSZu2Atatq/rPWZRw5jkQgus9O1f8rIqPAxQewuYbBxhVGF94F+QGA7tAFE9oNlo5N
 0oKqki9tF8OQt9pLg8ubCKD0weEi7cegt6XZl2bvt3IGUGQLAKLu5NUM/iGtko3zMKvY
 rI7g==
X-Gm-Message-State: APjAAAXUrNLKYx/jo3Q2zVxpTsPJL11vnRgE6cAiMzzOVwUO0bt0m51Q
 IopXciPK891ItZ1oH1rq/C1jayBfXqyIGXwS1Rf8WA==
X-Google-Smtp-Source: APXvYqzeyNb16dPEjCkVmBtMh5caBJBGKo91VcHGLZKHPNSD5nRiCk1pJcF4RPBtbEVrq+xcQYHHZlXiwcUyrN8+Ke8=
X-Received: by 2002:a2e:9a12:: with SMTP id o18mr11818095lji.191.1572881630658; 
 Mon, 04 Nov 2019 07:33:50 -0800 (PST)
MIME-Version: 1.0
References: <1572004167-24150-1-git-send-email-qianggui.song@amlogic.com>
 <1572004167-24150-2-git-send-email-qianggui.song@amlogic.com>
 <CACRpkdZZpc0yrewfseG3PUXgvV3H9XED25Ej21VeMYn8cUxasg@mail.gmail.com>
In-Reply-To: <CACRpkdZZpc0yrewfseG3PUXgvV3H9XED25Ej21VeMYn8cUxasg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 16:33:39 +0100
Message-ID: <CACRpkdZbvdVfLAmfPRXrrZCvyNCJWHkJCE_SBCb9W=O2UpMxrQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] pinctrl: add compatible for Amlogic Meson A1 pin
 controller
To: Qianggui Song <qianggui.song@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_073352_689412_636A8C1F 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Carlo Caione <carlo@caione.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 4:31 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Fri, Oct 25, 2019 at 1:49 PM Qianggui Song <qianggui.song@amlogic.com> wrote:
>
> > Add new compatible name for Amlogic's Meson-A1 pin controller
> > add a dt-binding header file which document the detail pin names.
> > Note that A1 doesn't need DS bank reg any more, use gpio reg as
> > base.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> > Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
>
> Patch applied.

I see there are still comments on the code patches but that is
fine, we can merge these bindings anyway. Just resend the
remaining 3 patches when you repost.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
