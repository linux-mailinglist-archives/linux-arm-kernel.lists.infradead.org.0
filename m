Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADAA15D566
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70ogmREzrMel53+PnNSxCAl9QNQ7YeR8BEcZZWLLSEI=; b=uKvgeEsX+hItKm
	DEwf+nQu3g5mjyFcimul228dycZ9qMCbM1etxrXYEVTvJnCWFbuSSQ8X61F35aIMcQSxG0uORnulp
	wgEeTUpoOPH7NP4mAhLwOBHYZDAte+7WzAe5rnaac0XnvP8NY3NoZgKMRoZndjkJIfptWpRER+IeZ
	MWrYkSqBWyHGhHBb0ho3t40reB9gJXIuzNDRUgtJ7UXYKU2KeQK2CaBMRZMhIkbd4VSUU3P58lGl2
	k7Am8tWr58dCi16s8ehCU88Lc69YqFTgx9OQN0v+uG3/eFlPlrwauiyLtOGZUMkmD8o8Ax42s42pS
	eNH/BlhF3qmXaLRqbIxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Y54-0002p7-8G; Fri, 14 Feb 2020 10:20:18 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Y4t-0002Qa-Lq
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:20:09 +0000
Received: by mail-lj1-x244.google.com with SMTP id o15so10106278ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a84WNLM8wHkd5zEtxHoEDgoCVKtrYjUViLHMY7hthbM=;
 b=Gj6tG+Qt7ycjUY4Q2ZAXyamt4t4+IDdww3s8W9LBz0qskerpmAwDH4ozKfHDaq9+3B
 OawNf6cyiZJ4cMn5p8gXDPXDqWERgdiSM4tHnRLkyR1BUTncMg0AiBKlUIaPCigS/w+I
 hHKj4YQAuRVNwLKDQMYcjNrsrORFZTl2NSe3GktvgggquQuVYglQ5uJOIzdg0855ye+C
 6uwaU4LtSMjMvgAJUzlgFZBaaBewg04d5gKNDb91yAuw834QulLqP095JhQvZkZMzb4Q
 LdxB4L75YeD1jYbj+FRGGS3MFhhk6pwX/YoqCFfWzKu8x9R/PPKVWxQx7lYFPIbCtrq7
 Zx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a84WNLM8wHkd5zEtxHoEDgoCVKtrYjUViLHMY7hthbM=;
 b=q9/vmJTpt19fmJXD+Come2d9ydIxlO/sojIHVch6tgCSdTMaUI3AOEsJ3RBRMI9pXi
 vXtrGWmb3f0mGpXRa3Dm5/sNVqY3fI3kt8m+/ELEs62frFvo8xRM8xz8z30NTdMZXPDp
 tCKGkD7GfL0U4xHpO364T1XGZkPxZiIJoBVrSjEDhFgZtMCK7ThgkEUub6gY6ieciraf
 xuQx2j1z1yxgRkFWF2Df594PnWzd7u4IFXh+uow2qqTdj2yTz+TP1MsaxcEFly0GVHQp
 3oiZ0n9tL3daAGMO7cohCr21RfwLrKdWLkdGMpP/wH5s8pftjv8jxxbir6NwP7F8DnbP
 DJdg==
X-Gm-Message-State: APjAAAV2UC6freNL07QkzM+cBoST/bNYHM1eL2PRkLsKiVyC8q1EQK56
 k01rt+78us6xAs4pqVWj6Jy7hSCplxkqIEBp6a6itA==
X-Google-Smtp-Source: APXvYqxqN7AMNMFOzd2fYojplBnENxRnOLrJhK/Z0n4uE8TLS7K1XSLI5bd514akMiltxuCr4HE2d8mGerIytGW52qo=
X-Received: by 2002:a2e:b6ce:: with SMTP id m14mr1526961ljo.99.1581675606201; 
 Fri, 14 Feb 2020 02:20:06 -0800 (PST)
MIME-Version: 1.0
References: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
In-Reply-To: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:19:55 +0100
Message-ID: <CACRpkdZ1G-Rks+-JrY-bN6A1YpQGqRBoDKS5kYn9BfdWqYjXSQ@mail.gmail.com>
Subject: Re: [PATCH V6 0/5] Add minimal boot support for IPQ6018
To: Sricharan R <sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_022007_744887_ECF61A72 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, sivaprak@codeaurora.org,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 2:13 PM Sricharan R <sricharan@codeaurora.org> wrote:

> The IPQ6018 is Qualcomm\u2019s 802.11ax SoC for Routers,
> Gateways and Access Points.
>
> This series adds minimal board boot support for ipq6018-cp01 board.
>
> [V6]
>  * Addressed more review comments on pinctrl bindings from Rob.
>  * Patch 4 arm64: dts: Add ipq6018 SoC and CP01 board support has build
>    dependency with,
>         https://lkml.org/lkml/2020/1/9/84

I have applied patches 1 & 2 and the remaining patches can be
applied to the ARM SoC-relavent tree (Bjorn can handle this I think?)

I am sorry it didn't make it into v5.6, this is caused by the bottleneck
for YAML schema review, we would appreciate more people
participating in writing and reviewing new schemas, we are currently
in a bit of learning phase.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
