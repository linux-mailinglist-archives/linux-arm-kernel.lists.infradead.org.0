Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3742133E46
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 10:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQqpmzCZ4OpqimBmozPKU9kl7mEvN5+zVIG19aOFXZM=; b=Cxy6jjMOyRwy7+
	KWXaf1RMC7OZIBCwgLaefI/kNGxB1+9EKscvV1Ox/Olv0A3z6QCEPcJsIHgf6NFzxLMFXpeKPoer+
	u8LYlAsPkghWy0oj/Sa2pjdSjLYZ8ov/ij8lO/7oAK+GuZSQupxrfjMmePBpM+OCQSr0wI/RuYmUT
	I8vDmGFdbmT4hXqokxKkgnaTyWa5yThsDsC9Hgaq2cmNa2dp+31+7+cdxudWdjvwZ81hJJtzryuOR
	a2EKITaWI0U9uFqd5+MmC1xX4h8hc8oQyO8PKObkf483sOlKwzgTvOrIkuJ6x1zBiQve36zBXU6WO
	QSAC/I1Mq4ia9h6nsFVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7bN-0004q5-9b; Wed, 08 Jan 2020 09:26:09 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7bD-0004ol-Oc
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 09:26:01 +0000
Received: by mail-qk1-x742.google.com with SMTP id j9so2050957qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 01:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d9itra/1hP66y5Vh1A/apsI7vVNMDV9CQI60fYE2iNo=;
 b=mWqduuy/+k1H4CJ3RmxwE369OYZjbQ91El877rL/H+x8wlktANqK8kcC4voHl2Sj9F
 BWPxcXnJgz1F9WIFJwkli10BS+NHOKcP6tM0yyKGvdBw2htSyoe13BdbGf7XPQMCdUhk
 KKAC3xbCwpVV74ByShIV2AhcfQ7oHmaS+egzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d9itra/1hP66y5Vh1A/apsI7vVNMDV9CQI60fYE2iNo=;
 b=IEHKpHK6zYVIBdqcoTu+LpHyl+5TtbS4/aiFu6Mjrrd8FZpChINXfy8LjmPl1f540O
 pv8ewgI1NwrvM+MVEECwgYkq/+AUZOahAy+m9d90VvJ0jVRdtMUzeJwj4wbJD0mHE0/c
 W42XlKkYtGYb9Zd7u1Dj6NEEnVEu95v3dDiM0+KhHevIbWaP6+aM4OO9LjjuR4BrQhxL
 K6TX/qRmVR9DPv2CwEs5gI2m5p88x0M53o8mJB4DNgHVwczaDf1ShPxlg+6QhHs5evFr
 480HPOaWqK4AdM7gnJydpwkilc/Z2+jLrvpdL74bzJghLYrcmeXts0BL8zUJHjnsRVZR
 rbPg==
X-Gm-Message-State: APjAAAW/CCsQ8DJfKghBE8dG3aAIcSwN5Rx7PyywknqDHcLrzGlfycz0
 xpvGgWMLLWNKZGn/eXRE58FSx75Tm5yPwQVwl6CHtg==
X-Google-Smtp-Source: APXvYqxUSfxCpOfPQeb5k2dIYC6xmY0+WG2Ufqb4kkw22kn9ZUvrNzcvtQ2APhviNZ1LTVVT4U0dZLh1RLVsQUCsLdo=
X-Received: by 2002:a37:6551:: with SMTP id z78mr3581807qkb.144.1578475558723; 
 Wed, 08 Jan 2020 01:25:58 -0800 (PST)
MIME-Version: 1.0
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578280296-18946-3-git-send-email-jiaxin.yu@mediatek.com>
In-Reply-To: <1578280296-18946-3-git-send-email-jiaxin.yu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 Jan 2020 17:25:48 +0800
Message-ID: <CANMq1KD3n5r1ACy2acKgXTfTLHMsONzT-NscL=AoY1Jr-eqdww@mail.gmail.com>
Subject: Re: [PATCH v10 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_012559_799794_4C7F0D09 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Yong Liang <yong.liang@mediatek.com>, freddy.hsin@mediatek.com,
 linux-watchdog@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, chang-an.chen@mediatek.com,
 wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 11:11 AM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
>
> Add reset controller API in watchdog driver.
> Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> camera, codec and connectivity) software reset functionality.

You add support for reset controller on both 8183 and 2712, do you
want to say that in the commit title and message?

>
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/watchdog/mtk_wdt.c | 105 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 104 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
