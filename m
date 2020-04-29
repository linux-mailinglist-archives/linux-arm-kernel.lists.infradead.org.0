Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2239A1BE723
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 21:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXcKw1zy6VepnQ9jYogKHYgzTPvCTgu24LxLkVSXaR0=; b=HltQ+olrqPpUy5
	VSzNUTMdm0TvzbFbNOgSAgaKYLYjj9V+oRAW35yPiEvqt2nVIeuyEP6m1H3tp08TyGQvAFnT16ydk
	8Mb+dtN7Ar0kSwULoUSy6bLHo7Wc52QRYjwG4MC4fFRMWyIQSWFYLFP+noxGvN7kYETR7KcXklw/6
	wof97HBbP6HQOGhTQyiYutiHJq3uorRMSusizfX/ZSrRM1I/AwDXmMeqZvOLNqtXhrOqzhGZhsyKd
	ke1O3rtljLllpC8NoEizH4zaClTVfyDMIfTgAFUVvquLZK2L3qE5RDEtKV+jpC7tUp/txXhDJXmf9
	2WTP7QZYFUmc1xvZwXfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTsCP-0001at-1Z; Wed, 29 Apr 2020 19:16:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTsCA-0001Yo-42
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 19:16:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id 188so3289733wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 12:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=uTaxYC0jwA+3Mf6QeyL0kxKKg+CdYcd/49GGY7p9esY=;
 b=fvrS0VEE66iO7kf6DfmoKB0rXIEmgiuWit2Fu+SmZkTgV6Cz07n/xX2l0Biwa1hAvY
 1rEHDzYF+Wb6TaiiZhFSD0G25jsO/9oCpN6WJ4Ofic0d8qZck24SS0b83d80Q2n9lC+3
 vjSpHa8acnnKltv95KH9GXphftHAkW4OfVrBeuHMhJsh5bL/o9sEXRrcQ4PmoeoTOuxh
 oaZK3GiZEZ4cHhxuzNnpKkAiHeBNLqjCNqWK4u0sg/S2vdTywv30jYvWIP2vHJQZCUTv
 NXkpzzCTNxpxeraY4yOZeKvak+SgmC9CpSWq/NTkuLEhMo09VG1wovwqUeGDWA+/+8Nj
 MxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uTaxYC0jwA+3Mf6QeyL0kxKKg+CdYcd/49GGY7p9esY=;
 b=IvEWvjIkBUjM48Iwty3nXhtl+Y4qp+eawCBVjwyroHZfYMNiuGO3zeCCU8fOUV476D
 tGGWOd7ZGbPDAQy9U08dyDsjP2hv1iJHBVOWfqbH2WNynm+drQDR32FdqNMBkAm5C4He
 ujR89EJIYdQ5s3pfBHlIccU2XNCu8NEtDx1sDPh2rI1njXYy+kv0fjH72NdIfAVpnRMO
 I2HhiVFFcD7xQyHJfc2Ww4saKXQ6u7A2ZQskLK9dSivTqNs9TG6n1C8G9Mpp5dXb2iwE
 vDeG8g9RIE0uDLNt/K8CxGoVJIEfJ7LjHYsZyw+U9tcPaL5vWsSKl1l+pOJSnL1lnYd+
 GXGQ==
X-Gm-Message-State: AGi0PuYsoqUCzlwvZWE31z9ODeJeAUuWk4zIbhV8xtRF5i7mGt7ToAbr
 xfFKnBZ8EF3Qu/5QEwfNkR0Xgg==
X-Google-Smtp-Source: APiQypLJ0zeDoIhCzi097XAozrXJsq0a0rW6Z3NDWwTzdI9ZLjqD2jG0z5naNye1gwdLaN6JoAuAiA==
X-Received: by 2002:a1c:2e07:: with SMTP id u7mr4865638wmu.74.1588187792498;
 Wed, 29 Apr 2020 12:16:32 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id e5sm235982wru.92.2020.04.29.12.16.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 12:16:31 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, lee.jones@linaro.org,
 jdelvare@suse.com, linux@roeck-us.net, srinivas.kandagatla@linaro.org
Subject: Re: [RFC 0/8] mfd: Add support for Khadas Microcontroller
In-Reply-To: <20200421080102.22796-1-narmstrong@baylibre.com>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
Date: Wed, 29 Apr 2020 12:16:28 -0700
Message-ID: <7h4kt2ksqb.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_121634_177032_4D48D975 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: linux-hwmon@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The new Khadas VIM2, VIM3 and Edge boards embeds an on-board microcontroller
> connected via I2C.
>
> This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
> boards.
>
> It has multiple boot control features like password check, power-on
> options, power-off control and system FAN control on recent boards.
>
> Thie serie adds :
> - the bindings
> - the MFD driver
> - the HWMON cell driver
> - the NVMEM cell driver
> - updates MAINTAINERS
> - add support into the Khadas VIM3/VIM3L DT
>
> Neil Armstrong (8):
>   dt-bindings: mfd: add Khadas Microcontroller bindings
>   mfd: add support for the Khadas System control Microcontroller
>   hwmon: add support for the MCU controlled FAN on Khadas boards
>   nvmem: add support for the Khadas MCU Programmable User Memory
>   MAINTAINERS: add myself as maintainer for Khadas MCU drivers
>   arm64: dts: meson-g12b: move G12B thermal nodes to meson-g12b.dtsi
>   arm64: dts: meson-sm1: add cpu thermal nodes

These two could/should be sent separately from this RFC series and
queued for v5.8.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
