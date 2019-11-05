Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9774EF8D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIcWS005OMVRydSmse3lgOj8tPu+zmZsVzjhm6oLluc=; b=NogCy8su2OM0Dl
	5BzS5llB8/IWj5xgkvtVrMX7pV+7z5iyauWIYyfi2kSs/8YiXH47HJ9+RViwzRv9H2SoEOzAMGo/7
	EVHiG6Q0cfhELST7j/dcC8MaPpgXvqAmceaHmYPRnNtpEjBaYqf3XskaDT9/AdCtf6mQDxFcfXtI1
	9dGyY+eO9rmKcmeslVz2nl+B0A4oGpgDw7aKtq52BcndPf6aH8PW4uc+9zoAoJeNu3u30y5IPdIqv
	fGgUv3KLnq4XTWECmXkQ5iyhHvk+EhDEha3nM2SnZBLXzgONBOpPhwwrWBzC7jrGbyZp2aaZ6wmne
	VNNl/SlI1b6itZDacpPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRv8c-00024h-96; Tue, 05 Nov 2019 09:28:34 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRv8V-000231-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:28:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id e9so7661089ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 01:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F2FPfgjdbIXWdDjS0yCRl6/2h1CV4PZp64uPK2X2BNQ=;
 b=WVjlcjsAOE+e3hERSGqNCL8ugQssMBzjxA2Ol1tzpslqafskb+d2jyNqT1JD9GsOMo
 qsCQWow1BCS3ieMoh8sCB2LZw8OMmnvBYirEwVOK0hECiIXvPCK/qloP+/hGPgf7mBIW
 nGNIpW27JhXojS4uyw/a9qYmYpu4wEau1xe775jP74yD7K+PQU+DawGWaPSO4jZolhMl
 6n7hDnxoY9IKeSpOdI6474fWiZmGTcVWlgZhkPxjoPRFYxP80S927Ww00HXm1JWknfso
 QkI943Fcr72SDf9V+JOoKKVnRzqbaw5PWTIj8OaHuycQeD6GgTHdHdEHSGxza4WG1wkx
 hJwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F2FPfgjdbIXWdDjS0yCRl6/2h1CV4PZp64uPK2X2BNQ=;
 b=D84mUUoJCdreq3AR668+6BATHKc+Zwi8C0B2WqV2OEad0Hd2lxL+dI7phX4BDvJD3r
 S+aUvIhjp3TIYF9aXa6sXiPMtRSX8FY/JTTAFOvRlZYTNOHym9mlr7F/fIz6HMJhTmSA
 zbiO/B5EErbDyS8mA2ldvmHQgQ0pBKN6hXQm80QI09iXaWfA3LQCqzU1EXtMHceznEJy
 neeJJnS6EPwv5hm4htS/UREbK1z1cgSceBLD9TpPs88cTCkQ8i29C9eka2KiERvFDHoi
 T4c6W8mA8swEkKjz/qz0KYSObCEj+zzve5E1EBKvDPzxIkm/6aGEJ5EmM+qFYBRdxsSZ
 EIug==
X-Gm-Message-State: APjAAAVCAJszayeGGO1sqdoE4VuCDvCmV6x6ff3LBfwEQHku6bVD1UjZ
 1N5pvl4UUJfYg0WbB1RjoJd43ApPbrXZS4wku6U8Ug==
X-Google-Smtp-Source: APXvYqzkf3P4NiC+7rZsNgbXYUIcsBRDikSMDKFNsnz+OK18v4KaaK/EheFwXUjlKoFP+nppakoDlDtKmiwMGx5B9Mw=
X-Received: by 2002:a2e:9a55:: with SMTP id k21mr8803557ljj.251.1572946105330; 
 Tue, 05 Nov 2019 01:28:25 -0800 (PST)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-26-arnd@arndb.de>
In-Reply-To: <20191018154201.1276638-26-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 10:28:12 +0100
Message-ID: <CACRpkdYDaJmd1MxmEA52Fjbh0d6Q5Vvb-Fb1SVLH-6AquxC6+Q@mail.gmail.com>
Subject: Re: [PATCH 26/46] ARM: pxa: zylonite: use gpio lookup instead mfp
 header
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_012827_189458_95BCBCE9 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 Linux Input <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:42 PM Arnd Bergmann <arnd@arndb.de> wrote:

> The mach/mfp.h header is only used by this one driver
> for hardcoded gpio numbers. Change that to use a lookup
> table instead.
>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: linux-input@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
(...)
> +               GPIO_LOOKUP("gpio-pxa", mfp_to_gpio(MFP_PIN_GPIO15),
> +                           "touch", GPIO_ACTIVE_LOW),

What I tried to do with code like this, when I was ambitious,
was to wind out mfp_to_gpio() as well and either just encode
the offset on gpio-pxa as a define locally.

But this works too, the kernel looks better after than before
and I am not perfectionist, so:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
