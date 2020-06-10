Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE4A1F5565
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 15:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vc+EVOwpvAXEOINienpnajph9hhW9HLOuyq4Zcnkgt0=; b=Opjtc5c9togdsrcViDn/vdV5Vl
	QoT5f+X7WLGM07vylY/0hlOaJS5f5NEmJ5pMck+AnNa3EcT3VCAwAYtZyiYm1UI2xp2JVNJbrUcCc
	1R2W+5d87A0YRbzebs5Er8EN06V8FJs6C1hpk1KRWgVAtZbVKefFY1n4AiNI+NPkE9VQad0QEolQz
	+KLUGpbflvg3VOslAvohfX9S+Mtw7+aqKFejwP9FHDKroG5SpKyTIYZxXkArIqI3BKckXsdA6f2s5
	oQJ1wtvJLYbxurSdUsfCmaZNyK96ucIbi9e2F02t2J/RufV2Ppkz3qq0CQfiWcbKT1A0lkJjaPrjU
	7ooyh2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0UQ-0007YJ-Od; Wed, 10 Jun 2020 13:09:58 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0UH-0007X1-5X
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:09:51 +0000
Received: by mail-ej1-x642.google.com with SMTP id l27so2534886ejc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 06:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=hN4wVu7c1HZmNsRAprCKs7uo3bA/4E5kOO/AWz4PAB4=;
 b=UQYFZcj9mxtPTw97Es6oj/OR2iUlY5qrWDFvHpq+VMTee2QWT4CLG91bil7g+DNOKx
 l42eEyiPdTPNNWDIoPNk92GG2j+9fXAGij9RGHwrBITksWgbiVYw5wh8YJ0dJXUI6mDQ
 2bw5QharfQ0PkAald8DvcQLnahJJ5HVACQzJHNqWklEjILxX0+eBMSDfYEAwXl/VlspO
 Oi9qb8oDP5tdGz0apkqlG2sSxkM4o8YqMPfufdz0MQCFxmpZ448b0L0Y0wwaQx3SiyKa
 PodYSusNWy31wlSxvBNYKeaQxBDQ/EwKkM3apQgvVYtyBW0GX7c01SpdjNplstjh4tv0
 xa+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=hN4wVu7c1HZmNsRAprCKs7uo3bA/4E5kOO/AWz4PAB4=;
 b=b/8C1+V/sVRA7HwhmVi9rmz7TdtOSEnR9sSH4oF0o3gcNQ3PMUknkRWEwsE/T+A1RG
 RUEPRxVdcqLoj0a34VB+0tqcdKBSochQiOzTMMNdXT4NthIPQXjL61VqlAZg/2Ju0U3y
 tcx/kNsUcLih5Z4OQ/xu5sxS63gVNxNdS4YLdk2TI75ArdpNDkVQBs9Zrc8lHaX1qcp6
 7rJNvibZPahNrHiwZAfUl4wzV0leCuV5ui3ZWdgF7hAsOPejbANZmsAmu8bwrCNcPwtO
 vcv8IoZi2uB4HbPUiYkCa9xZNTpln8qxJ3hRJ+E+LtkjsOFhYdruoqUaV0QonG4Gmtpt
 imyA==
X-Gm-Message-State: AOAM532kT181mI8iLR140y7Da5t0wqF4UzKuAlg/bjTSD+a+jfmMU3xy
 JlkmgbahI7kh6QUpivESALDPrw==
X-Google-Smtp-Source: ABdhPJwFedDlbzm+dYX6gyNm93Xyr1Jcg5woX1Qp7tJ8WSlNK7uiPvjIAx6Ib7uFiK7cAaMr2dIeUA==
X-Received: by 2002:a17:906:68c5:: with SMTP id
 y5mr3246267ejr.436.1591794585380; 
 Wed, 10 Jun 2020 06:09:45 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id ox27sm15373147ejb.101.2020.06.10.06.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 06:09:43 -0700 (PDT)
References: <20200610041329.12948-1-hhk7734@gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: hhk7734@gmail.com, linus.walleij@linaro.org, khilman@baylibre.com
Subject: Re: [PATCH] pinctrl: meson: fix drive strength register and bit
 calculation
In-reply-to: <20200610041329.12948-1-hhk7734@gmail.com>
Date: Wed, 10 Jun 2020 15:09:42 +0200
Message-ID: <1jo8prnk2x.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_060949_231704_D88011FF 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed 10 Jun 2020 at 06:13, hhk7734@gmail.com wrote:

> From: Hyeonki Hong <hhk7734@gmail.com>
>
> If a GPIO bank has greater than 16 pins, PAD_DS_REG is split into two
> registers. However, when register and bit were calculated, the first
> register defined in the bank was used, and the bit was calculated based
> on the first pin. This causes problems in setting the driving strength.
>
> Solved the problem by changing the bit using a mask and selecting the
> next register when the bit exceeds 15.

This fixes the case of GPIOX on g12 which goes up to 18 yes but the same
problem will happen again a if bank ever goes past 31 pins. In such case
the problem would apply to all reg types.

I would prefer if it was solved in a more generic fashion, like defining
a "stride" table with the values of each reg type. This table can common
to all aml SoCs for now but eventually it probably need to be SoC
specific.

This would allow to :
A) handle the case you are reporting in a generic (future proof) way
B) remove the weird "bit = bit << 1;" calc in place in the get/set of
the drive strengh pinconf

>
> Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>
> ---
>  drivers/pinctrl/meson/pinctrl-meson.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
> index bbc919bef2bf..ef66239b7df5 100644
> --- a/drivers/pinctrl/meson/pinctrl-meson.c
> +++ b/drivers/pinctrl/meson/pinctrl-meson.c
> @@ -98,6 +98,13 @@ static void meson_calc_reg_and_bit(struct meson_bank *bank, unsigned int pin,
>
>  	*reg = desc->reg * 4;
>  	*bit = desc->bit + pin - bank->first;
> +
> +	if (reg_type == REG_DS) {
> +		if (*bit > 15) {
> +			*bit &= 0xf;
> +			*reg += 4;
> +		}
> +	}
>  }
>
>  static int meson_get_groups_count(struct pinctrl_dev *pcdev)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
