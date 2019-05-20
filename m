Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5912823F1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbKBpOaVOYuVq3TIFUZU3zvJd2CEhD2SkzvvOb8zmjU=; b=d30asPBmfio09x
	F4E4VPMFq+Zw6NsREpcJbBgsubvB5zh+BEcJWBBegtLLxkm/7OgRAAdnKAyVVOWBK4OisUYK7AdTd
	098H5xJGorScf4/HitEWwjMo9MC9y2o40rNmnEHfYH22uxIFxSPETNWvsS33/j0rTBuj9X4iga8xt
	B3pFLawFbp5+DkEy1DelWY65u9a/6hNc9rhnzWUWpqXBw/mAtPVrxA0re9bBJa2MmKYPbdm6srQQb
	k333FOkTXyp77sBeVLED5cqBLU8HiR/pckzssywqTl2muKCjmQ28nks8zUj/D1V9rAmZ9f++rwWHE
	B63nE7OaY9sJAiWtu31A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmAa-00069o-P8; Mon, 20 May 2019 17:33:52 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmAS-000692-Vc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:33:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1558373616;
 bh=mQs3SYPmcbZjpGgryO5QDTUYaOixaOst/TPnLx2UjpQ=;
 h=X-UI-Sender-Class:Subject:Cc:References:To:From:Date:In-Reply-To;
 b=N4IM6ASUD5u8cjyKxdbRiXO77lRCNWNcmStfTAx1IfYKV40hAQi08AXpus3TH3dEc
 cWJD1egfQtqr5Yghq8Q0nx0lAwfjv8/f1+ZhXFqnO191ySuLzIJaFX5aieUUgoMYRK
 U+wEK7+6SuGR+8ke0WoI03Q4fqXktA3hXxeJW0ro=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.166] ([37.4.249.160]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LvE2c-1gSOGj3xw2-010OtB; Mon, 20
 May 2019 19:33:36 +0200
Subject: Re: [PATCH] MAINTAINERS: Update Stefan Wahren email address
References: <1556740055-4962-1-git-send-email-wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <8c07c0b0-5610-bd5f-73d5-373178af6502@gmx.net>
Date: Mon, 20 May 2019 19:33:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556740055-4962-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:VdyJZS/+FYNTQ1T0daX0em3koSMMFR+R4XeZzL8DaV6zBayV1xE
 34n/frAQY+qoLAOdPSK+WJXBhHDufPkxXRUj6zqVU/HgXXUV8QgCeHhY9qwd9yV01Ylz5CG
 RLbU2xYha1pW8aA5Y2urSmKaBx5tikbPhT2jqDK8GnCrxgrERILJkf2tnZ4EjXp+cI4qJ8Y
 ZhvNlTYGQsL3VKYlrbTLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:j218esgr/Xo=:j/sJUMSu0jqFtkxbMj9uLf
 cBvdYem5ZzAe1gnFDclc747Q9fiF3CZD1KF2YiaYU2mwg/ejEPERGbFPubEpTKLUL3UxLKyyi
 PJJu291ZiyDvGYuV1Vg+SjsvLrBFJ0Y0cKVlwyIjajRiBUJDry5Ej/Znk2vu8QwRPk3xYhris
 oH7HpCFlnmCx1aTjghPoPA/drdp3Dxi3ULMKVq9oeB02Nq/VS8UvICwqGVx77J/8QA4a5qukf
 UjpV0kZr634UmYNGhqdlt6tq8bg3ogQ6CRUULKUHBTvxWpcoBYyIiwcHEnVDe5PXv8H/blIyM
 jEb48r5rQrnZfdzAU6uvF7OA5kRZcd0uHyU3TNsJ0snqHwXFcwZKT+Irk0lIE8UenXfydha0P
 87k301Io9SjibsziM/URsj4/M6VglSYXky28hSJ1opBdy9zRwFk3FhbPzExZNZuJ8Tlk9EGNc
 8z+oLODvl9M9y4mqugCTzOQIqVy+4udi8AgPQ180iOLoQpjroETn+xSHJvamaj4fJMHWck+7V
 ywNYBuJEadTobCw9Zq+Zvk1mq/leBt7NXnIY74DxGm91HWSAclUvRThynHUzeU5uNlbQ8wR4G
 hrFBpM+IdwLJvCsx6fJxBfCOjJyfBl1HFxhN6b1gbFkJ5oDEREI+3qGKjDWoyhogmeVTWMftP
 XJo67zdsCOhgjTWri3+iQDTg/+HY6VNJXpBnY4e9YGgp97dQ2UJwyRNE8UVksRJ+gcz5ko7mo
 0hgJ2bJC51rHTjGKTtLgslinenxP0jGKv7iWOoxKeeu150GvgVuvrhLHTA0m06d1xt7G6HCcO
 6NtTejhLCVLYiRelnnF+T97jmN6ilb8r/7imYDEKn6ctaXkpMNCrUluI9+QYZOCGujEcaZ3av
 gR7j0+JqfyWRFE03Y0wdzbrjCnzYGTIAjaEe+lO9mFBvDNt7wgZT1GjWE2H6MgmpZsMxUnUdL
 e6iYn/QxYxaiVNaOTO+oGJ/ipt1j/PhQZyJD+i9ujkwmCsyfyy5nL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_103345_447329_7890BC65 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 01.05.19 um 21:47 schrieb Stefan Wahren:
> I2SE has been acquired, so i decided to use my private address now.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
should i send a pull request or can you pick it up directly?
> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2c7d4e1..75a7876 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3068,7 +3068,7 @@ F:	arch/arm/mach-bcm/
>
>  BROADCOM BCM2835 ARM ARCHITECTURE
>  M:	Eric Anholt <eric@anholt.net>
> -M:	Stefan Wahren <stefan.wahren@i2se.com>
> +M:	Stefan Wahren <wahrenst@gmx.net>
>  L:	linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  T:	git git://github.com/anholt/linux
> --
> 2.7.4
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
