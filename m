Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1C68A89C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbT/VxDaj3PJ3OHrc8bLylGRSQgueG0Y7bdK+MKQt3c=; b=b3Vz8KwEbVP7qK
	1qVHwCatAxeacc8AhtFTJDAqj2DzLZch5rc5+RT78mWAe1nOi18rTC0yR8R8Akjtf6pvsQsZaqWY+
	wmnuyBFmedPwJEigviptFnEt7war8aqor6wB04ksL88AiRweHBFfoDKpkk5ux+Oakxae205iwAz98
	aB+FxNO+sq0IT9sKrTnoi6qlJBeAwX0l0fXg6lciMgIyMobz7U2E2H/9eplpsfSerxDaVg2+ih15U
	Fx8aPlEsdNfB5NVgOCWmC63/5Je/fsMSWhrgaGXrx/LSntEOoBQFB7uyI/62/tZwFN02ksOI50Ddl
	9FlWdql+sk1/+9VgQ4bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHE8-0006QA-QI; Mon, 12 Aug 2019 20:47:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHDu-0006MH-JR
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 20:47:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so39733048pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 13:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=hAImoiaUIllvdsBRFvJI6AVDH7GSLwPssj/NGvLfhGc=;
 b=HrjBeS9ZsyLwpI+3rMjl+CHZ311L6zE/1Ign9jTBQ4c4bZeGZ1oNrKSzY7jklwfZO4
 jQz8qscJDMHkT8vWn/AKmJswfNLnvSHbdqAS9ciRAZt2QV2W7tn8eKuJL1iuU0y5Rt3J
 opoSVCa4fYTt4ao5aYgahFxd6xI828mrQq9z9l9I/RDpxckQaSfg6mFv2k5u3RmFXzqx
 IalBD4kFyngp+o5yIvxtk3xxAsUghKBb0Vedfr3B5suwP+TWukez9VqD3MB6aiSLc+xe
 TlBRrRy0VSsyU/qJANpdR1I8y7/IWXiICWjwQGwq6UgTd83Ee82vjynJKciy94+7YYes
 1mSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=hAImoiaUIllvdsBRFvJI6AVDH7GSLwPssj/NGvLfhGc=;
 b=sfXUvKQGP8pTOVFyIxztUlhFGv+fEy8TBBB0Z6T3ttQzK9rMaiKe/xMHkwtakbN6aV
 pCYUnBVA3MQM+Dv32rZXZXXezg8G9HhYxNsdShClvdVwEslFlhbd04fo/CTm+6spduAK
 b0YFaBARGyypZ15OI6KrtvqWn3cMf1T0D2tJ24gypVdxqNdSjcPOYNB8edoZ85rcBbbv
 U5Dc+rMib+/DNEtrr2IPlSFDuknxMY5QVUH4Ncr5cIqTnfA9RaLCMrc4BXNKiCcnZWgr
 jyoJ+JQpsW3veUo2k05C3148M/GfgfwDhYsnj1fH++hNrbSFdf84RVpYAf8hSCViwxwg
 yzRA==
X-Gm-Message-State: APjAAAUv8m428XT1H8d+imOgiOCdydWyfSh/gYdIcNHqWHusy9GBZJLI
 XPZz1fymwT+BvhUy5tSGBUGqzZhYJ1I=
X-Google-Smtp-Source: APXvYqzeXAq4ry5YjGbwv5kPRL4fMM13o6q1ipU3KtUFAp8Qt4Y/TkCu66N8CMtnsn0Zb3DXcgVCPw==
X-Received: by 2002:a65:50c5:: with SMTP id s5mr31765219pgp.368.1565642841591; 
 Mon, 12 Aug 2019 13:47:21 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:14bb:580e:e4d6:b3a8])
 by smtp.gmail.com with ESMTPSA id k8sm100204280pgm.14.2019.08.12.13.47.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 13:47:21 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 0/1] ARM: dts: meson8b: persistent MAC address for
 Odroid-C1
In-Reply-To: <20190812175004.24943-1-martin.blumenstingl@googlemail.com>
References: <20190812175004.24943-1-martin.blumenstingl@googlemail.com>
Date: Mon, 12 Aug 2019 13:47:20 -0700
Message-ID: <7hv9v2157r.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_134722_643747_63261758 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: narmstrong@baylibre.com, ottuzzi@gmail.com, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> This series makes Odroid-C1 use the MAC address which is programmed into
> the eFuse.
>
> build-time dependencies:
> none
>
> runtime dependencies (without these a random MAC address is assigned,
> just like before these patches), both are already part of -next:
> - "nvmem: meson-mx-efuse: allow reading data smaller than word_size"
>   from [1]
> - "net: stmmac: manage errors returned by of_get_mac_address()" from [1]
>
>
> Changes since v1 at [2]:
> - only add the nvmem cell to meson8b-odroidc1.dts as suggested by Neil.
>   It turns out that neither MXQ and EC-100 have the MAC address in eFuse
>   (which means only 1/3 boards has it at the given eFuse offset, so it's
>   not worth having it the common .dtsi)
>
> Kevin: you already have v1 of this series in your tree. Feel free to
> replace the two patches from v1 with this single one.

Replaced.  Thanks for the update.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
