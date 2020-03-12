Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A031826B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 02:42:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkQXj3UhZhQ7uqxWhMASOBPnYVP1u5thF+8xTjX29OY=; b=PrzJIDx/+LgB4L
	swQgzeZTbU/r0VsNsbyO2JEWh9TL0R3emSoDmlDhJ+BQIGisWV/TfheB1vJjCFm2X2Nn6+YcUcr6b
	/yp+7SA6lMsfo9+3RT996mL+aH6Esh+7+0fRkrlO65QlatuFFDVjvqXFBFQYKVp7n3POzNEuPk0cH
	e0WKWhHmmWtEi3Mh1YVxxV5r+ebeEqk849gMSZevdPzjUUx7KG8dUHlTY5fMfSitmnXEaaXmPQhtb
	a29gwxaiRibnWZQe7442bXRZsKpNMJIE7+wOXly0iRx0XAJTlnIEIHl8GR3z0p0NvMHLk6LZB4Ow5
	SzJO/zA5udedNSdN73Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCCrE-0004Ep-QJ; Thu, 12 Mar 2020 01:41:56 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCCr7-0004Dp-O9
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 01:41:51 +0000
Received: by mail-vs1-xe44.google.com with SMTP id k188so2674806vsc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 18:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k+2wQEy+NMnEIDcA6S02pCEqP6eFCuK4Z4/8szPajwc=;
 b=dEXMnPsUOVToOowHXjjb6pViv6j7NYO7alRyodmH88IKDJ9teW/utBZ2GV7iOxO+Zc
 BrLj3iTeeQ+MIS6lFh5vpKzqi+cXFhOJrEjLbZciKYQInENdAVdYCjV2c3wwPVIHA+yu
 Z3R+683VAjC18js16mQ/SEe7KXz99FCSaNuSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k+2wQEy+NMnEIDcA6S02pCEqP6eFCuK4Z4/8szPajwc=;
 b=fOFHVcW80geuJGktugHDFb32ZTXu8SszzG0j2JXa6PN5TgC4cePl62tKIVkK1T/mUQ
 c1gsTueV4gaNEgZV7/s9eNzegxF75j3WUpamOJvOgE3AkE0YLvGKKukGz5/m1klMFr6V
 pjSzbNjCEZX2UD6cG8wxc3utUuxM/OS69OgSX5Q5KmfcKoSmnwZ0iAD/Xp4J9nXB/Jf8
 oekz2QkcN0xCIyU56PegF4G9ALX3fcQkO8c4nFbu0ujf7NlCDntYu1jW+KcxQuNCmLWB
 7seteLdDy2qAxSkXV1FZJK/KWpl4BVuMD0kc+sZ0fRy3BQTWlO2ejmOUJkirZ4ZEkThA
 eJVA==
X-Gm-Message-State: ANhLgQ3rNYf0T/Z9xOUTTFQ9ZD74yks9Qry/36vm1Irzk7HCBTE85q2x
 YDJdDX2gLMCNPRfhJsrrTjuWQjiRaHPF3vb3fu60nw==
X-Google-Smtp-Source: ADFU+vtwixbNza+rk01UttXlhW3Uxqa+sfYsUCDCqXXbvWG6vOSRtdS02syicarawHJ6J0EPqdPba2S1Oz1D1r/xpoo=
X-Received: by 2002:a67:3201:: with SMTP id y1mr4190035vsy.54.1583977308293;
 Wed, 11 Mar 2020 18:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-4-git-send-email-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <1583918223-22506-4-git-send-email-hsin-hsiung.wang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 12 Mar 2020 09:41:37 +0800
Message-ID: <CANMq1KBdYPiWDHqSUwu86q3Kj=r0PWCoYcj28v5poNKNsB5U0w@mail.gmail.com>
Subject: Re: [PATCH v10 3/5] mfd: Add support for the MediaTek MT6358 PMIC
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_184149_807536_58F807DB 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Devicetree List <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 5:17 PM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> This adds support for the MediaTek MT6358 PMIC. This is a
> multifunction device with the following sub modules:
>
> - Regulator
> - RTC
> - Codec
> - Interrupt
>
> It is interfaced to the host controller using SPI interface
> by a proprietary hardware called PMIC wrapper or pwrap.
> MT6358 MFD is a child device of the pwrap.
>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/mfd/Makefile                 |   2 +-
>  drivers/mfd/mt6358-irq.c             | 236 +++++++++++++++++++++++++++++
>  drivers/mfd/mt6397-core.c            |  55 ++++++-
>  include/linux/mfd/mt6358/core.h      | 158 ++++++++++++++++++++
>  include/linux/mfd/mt6358/registers.h | 282 +++++++++++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h      |   3 +
>  6 files changed, 731 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/mfd/mt6358-irq.c
>  create mode 100644 include/linux/mfd/mt6358/core.h
>  create mode 100644 include/linux/mfd/mt6358/registers.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
