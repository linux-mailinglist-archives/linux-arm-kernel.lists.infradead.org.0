Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1091F5190
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgFQ4SVO/yrraNDii/fwP9dDoLBKcBzKlSi85JHkSRM=; b=AX1fXhR17VYxFx
	Dd2zAlMKr53GvZink2cPfgiCAAtr8PI3L7mWNLJHUMQpsqgNSJ1EHqIPdFXxjqsTCeRvLV4ISG1Gx
	zvo/oyz+FP1b5tumbyG8VP2JAFpuCVc17TJetnAmUD251R4OmClq3EIvwLXIjdQzxW9gYQF7FvvX2
	+2tSyQHLBzTs4Ky09Ts7ead30WAvIz1OX4EMeByni5mfzRk17upTtTfuMS+g8h53qKtyGyixXBiu9
	nvweHf0F/D6TO7bDDuH9E31wozJy30qrH2QnizOZWOiZYkJBQfPjE5sYCJwq621rK21M1QW8nhu4D
	7TqsVlkBYzSoWMvfBzag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixPx-0007uf-Bq; Wed, 10 Jun 2020 09:53:09 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixPp-0007u7-8y
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:53:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id z206so1080045lfc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VRh1o2eQq3dG1Zvvq6SPoPAkNUd6uKb8MY9HPcGIRes=;
 b=Nw3Qv6ZGCW9xzc0Npt6Hxvu7gTXEq++EwjUUbzdPJcG6Rmm2lnOsTgbc/7UMKErZ4F
 +d60EC7ezVyJwyo/Pzk1peeneGBaZ8vnz5rtahwqsdD/KUTlvXx5bjYirsjq4Xnsn3Rr
 uwnTl5GvuV4QptUDJfGI/8DCMBuxlIV+m5bnOiAthlKa8T0NE5IA5N9+2r1o2H9j+SZO
 6s7Tf/SPrb0jZG8425cAvfz7dNt4UNaIap+YX3Ht/RTNk5ok2uM1jLbYZc0irh/r0Ggv
 PntiBWTOV01xkayy/miHT2UwNllJSKy/nYnmMGcyJUNB4Gf9WJWJEX13zvf1sDxIwLRL
 FnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VRh1o2eQq3dG1Zvvq6SPoPAkNUd6uKb8MY9HPcGIRes=;
 b=inTgnEEgC0KucOPRbW3DZEj10jyTMd2HjCsLPUot1t78QOsQENti9gCe4zBD4vDmue
 EfaTyU50TjzkSYhQss6RtNc9cVpPVtpiAnLkAMLyS+/lOnn6zFkdbkN4BGX1hsiW64gv
 wIB1jJmJZWKJziI/KgWkME5EKvwBwEbSCFJ2LE4FpngZU2xjbptEtEX0jfMBJc6jD6vS
 rBs7kaUMs2kHKqYgqmc4tLGcgtIjB++O7XpMqbi5638zsnjmTSgH/SkZN/SQL1afSasN
 ZEZChVADrTV6YX28ZqwDgy9XJTfQb0eQ09zw2hYSwmTwIX1+dH00AiEZu6/P8tQ1GAaD
 fZ7A==
X-Gm-Message-State: AOAM53042br3J/iQlVlsvE+g+pnO4Ru1V0FAHMEz8G1Z4WSXpbGB1yz1
 YhHe1yUH3iseX+/H/JU8zRZVjJN/i2A6zq4FUAhKKA==
X-Google-Smtp-Source: ABdhPJzOMSuJGce69DNBlwY6+Eui820jOc7lQXp4MpPIfNmTvz1y18Agd0Fc44hqxES++vxVimhy/4mkOO9C2Qeirek=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr1273238lfn.21.1591782779579; 
 Wed, 10 Jun 2020 02:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-5-sebastian.reichel@collabora.com>
In-Reply-To: <20200605224403.181015-5-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Jun 2020 11:52:48 +0200
Message-ID: <CACRpkdZWZ196LC8gBv_cUs2=h1Dvko_1Z4y2z571BaDu4jnWtQ@mail.gmail.com>
Subject: Re: [PATCHv2 4/6] ARM: pxa: Use GPIO descriptor for gpio-charger
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_025301_316779_87B5F8B9 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 6, 2020 at 12:44 AM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Provide AC detect GPIO via gpiod table instead of
> legacy platform data so that legacy GPIO support
> can be removed from the driver.
>
> Also remove useless IRQ resource, which is not
> used by the driver.
>
> Due to lack of hardware this has only been compile
> tested.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks for going the extra mile and doing this deep clean-up.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
