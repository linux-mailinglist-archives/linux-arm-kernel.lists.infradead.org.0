Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957819B7EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 22:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQ+BmraudQ5pXyMm8TRPny/Kiccrac/9n4IWlVVxF9c=; b=Ls+7RIAqTmCesw
	BlBMF1zzJtx507hOsAFLXqndvn3G7lr8vZBSKWggEsZ4N07EzMYKhZvr2zADm3O226+JIqq7U3Lg+
	npXtNuGwUxYdyszDanL8aKAm3P3uMd66tGd+8GeqKpwc28GgNyQ1PyuT+7PXxlDxh/moiCIEu9X0L
	2NGCIrfjDPgkp9vYNvhhRnQu1QGt7fSgXIVomXBSxxCMdavGva4lVEFzyDLwjjitD8iZBD3/Ajt/v
	vw1Sq2WqU81ZeFW9afYblHU3mGuEjsbpbJu6U6GkyCcn1MGGWnbxjvE25EP0aTjgYSosHdT8iSPol
	mo5czzeMGc1VGb79hUBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Gas-0000C3-M9; Fri, 23 Aug 2019 20:55:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Gal-0000Ax-2M
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 20:55:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id 196so7233310pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 13:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=DOMSbUFejjbvhh3syNx2mPd1ccD1hkCqGREmnUI4Bh4=;
 b=Z8fHU3xaHyWUdk8aM+/Zr1k32eHFHXEUQIEGhm0QTklwjF6o2yeRak8xLVTnReEHws
 mnfMwuQHrRUYoES3KexwZ32OsGrcnrb1s9qJzgF9ziCfP9tYYhWZXUSlT/TmnyHCQoSD
 EH2wLU7ldNI647pM/cNY8j+L2MWrI3yOfrObg6w/dFr02If3S0v5jO00vVaybZ04gUw6
 SZaeYbscZ35Rk1qZJNQq70E3JvuhKldBFpRGdwFURY39FdTznEdVQq7XzppcqHi7VNkr
 hf3Uysejz+aJrF8U3J3YFeAoa5fEXvw8IQqJjVHzxN+LCfK73FdybzahiiwbNaM6mbwE
 JLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=DOMSbUFejjbvhh3syNx2mPd1ccD1hkCqGREmnUI4Bh4=;
 b=dPONz72JGpdWKKH1O6w25hwxjteXNzugGlBbNTa37I5m5mWOZv3cS7sTPubJhftYSA
 MT9nZxT/WjzqJm2B4FtXqRN+L2ZZUjJ506OwIrOV47CvyZszSadiMDS4+KREV4A/JELa
 1TP5I6fn2XAp5lrLDSSgbWgAkKnLdAbb39Q5NUsNkyXlukXPQEOuY3yWZ2A+U6W1CijS
 l6wfsB9mNsS3Dvvjf5bsh/zhf/hJW3Lk6U1ljB0IkvwtqnU8kejM/cqucxPEC/iMHTWv
 zj4dAtIBRYuQ++lpKPA+BY+vayUCbkUOtdz+KF0vIu1Hh3bKEJONq+KodJ2Cr60GCj7Q
 XANA==
X-Gm-Message-State: APjAAAU9kDrm1CDHmC6HcDYfrpHHqa+7OatkdvQkYcHwOAWf8YOcYwhD
 xxkfXi3YTP4zQ2Z+NJUvNOYXZw==
X-Google-Smtp-Source: APXvYqwWqXwZanA/RIBsBivTmQ7OMMhM9wxbpGObupZqpUyHXrFJ3OB2nqQJqczKD3p98hiZv47Gzg==
X-Received: by 2002:a17:90a:f995:: with SMTP id
 cq21mr5481913pjb.27.1566593723715; 
 Fri, 23 Aug 2019 13:55:23 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
 by smtp.gmail.com with ESMTPSA id w10sm3132874pjv.23.2019.08.23.13.55.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 13:55:23 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: meson-g12b-ugoos-am6: add initial
 device-tree
In-Reply-To: <1566565717-5182-4-git-send-email-christianshewitt@gmail.com>
References: <1566565717-5182-1-git-send-email-christianshewitt@gmail.com>
 <1566565717-5182-4-git-send-email-christianshewitt@gmail.com>
Date: Fri, 23 Aug 2019 13:55:22 -0700
Message-ID: <7hv9uny539.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_135527_118616_56DD5162 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> Tested-by: Oleg Ivanov <balbes-150@yandex.ru>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

nit: empty changelog.  I'd rather see the changelog from patch2 here.

> ---
>  arch/arm64/boot/dts/amlogic/Makefile               |   1 +
>  .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 567 +++++++++++++++++++++
>  2 files changed, 568 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
>
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index 07b861f..21e2810 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-ugoos-am6.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nanopi-k2.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nexbox-a95x.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-odroidc2.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
> new file mode 100644
> index 0000000..27d1d62
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
> @@ -0,0 +1,567 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 BayLibre, SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>

This is a bit confusing.

I'm assuming you kept Neil's authorship because you copied from another
g12b board.  If so, it would be helpful in the changelog to describe the
origins of this file.  I'm assuming it was copied from odroid-n2 and
then tweaked.  That's fine, just note that as "originally based on
meson-g12b-odroid-c2".

Other than that, thanks a lot for your work on adding these new boards!

Neil, I'm starting to see a lot of duplication in the g12b .dtb files.
Should we start thinking about factoring out some of the common stuff
that's standard across all these boards?

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
