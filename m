Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503698A866
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MPeQi6/Oxoi0z9ylHtPJh6HpJgrZ9LfErsvMpwgjO0=; b=ANpb1Q2X1e8UMI
	MTEkHlsBH5MBWww118vCqpcsjfju4AG6XiNWOe1i8Mn54lj7Wup0uOK11ytZrBaAMKgyMqL7nq7PD
	GtEXU2vw8oRpTE763r0aX+1JeQpjxX8I2KkEtI0hKhNnXDiYJIKH0dSPHl8gDXF8OXvQce12ZQox0
	4tfjXXkgRNOIyqu1qYUE6ooaZYlR1kfIAyXK0qE4Bv3ecxmM/4cmff2mMTNCJBcXpF3hRt85hOtbs
	PbdqE04VUBViV0KhejFEG0V1i51yjj8x9J9Zp/O+lj2pKw662/dJtqmyQEsqdpO+/a6cLMDBit7+X
	yb0aXX1+Ct41CC3IpBtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGym-0000ZU-Aq; Mon, 12 Aug 2019 20:31:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGyS-0000Xh-9T
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 20:31:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id o70so4932716pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 13:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=8/dzomfKZtMmJBCxwZthQlRqMx3W9Dc6DXlVE3ZOJ98=;
 b=e3gKu9VE3T9jzG9hciNyK0x0OK+iti0j4JSgrsCMf1iFhV3LZxpdlCtga8J82aXRgG
 hvN47PEvUiGgWu8qPwec45iUvVohkyDRCeOKQlZ+j0QJq/llZ/iSO1yjlkjP79wjNqaL
 I3jwvEphQJvT2hCtGhPMo2S5MpDyy2RagsceziAKt0EGRJzgKrMjZMFuCqNpvLJKNERU
 zJZm+6b3YPKnWbjB8eeLgrmCjBBAmY8F7G+ANNwgl+Jig575o5Yf1c8mXiN0JDVe9ZfR
 gAs9EZkIsp0Hg29EhVVzpqIp6kVkuDF3AhjBo9I70LREOI6yLLo/3UyHrLwdQWj8zo0c
 yD2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=8/dzomfKZtMmJBCxwZthQlRqMx3W9Dc6DXlVE3ZOJ98=;
 b=cZyML+mbG8VQv4FclcMrshKPZWcNAqRGtxmahTQ9uwa29oi4d4BgBynrl+4LjqrVBZ
 f7wzTqt7prlBWIheQ/pCHsR4WBpnA3B94rfLxDsym+s65C75i5nYd1f/jyYPoeNmzPIg
 RP0vzCri1jbrsA2sHERBe2WfWxgguoXymCHh4PFuBYnADBRKrzzoh7NdgrKzqvaZ2pHc
 plE8psDdrBahJ2oHaPiekPVQt/KDTWFDA6gbbVDgXTf8xuoWkgdmBS27dJAx5on7FeUa
 MQ8KlpEts13sVaoDsRX5nmOV2JfeZGFNqL6sLzjVgI8yFg4Ua/KNEXzvtQqZgSBGIoAP
 VhDg==
X-Gm-Message-State: APjAAAXQsywhJ1YJQSdEI1gpUSrXskmE2MpzwHX1zbR4RsTNnGQXqVDL
 6VsZT+rvatEkCK4/0LzYn6ejlg==
X-Google-Smtp-Source: APXvYqzRVx7zE/aBCc9H6C7hScAoLaJmDfXikuBGTg+k7m7mx2eKPJSF/Mmu1eyHEj3FG+3hh9tBqA==
X-Received: by 2002:a65:4b8b:: with SMTP id t11mr31505067pgq.130.1565641883048; 
 Mon, 12 Aug 2019 13:31:23 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:14bb:580e:e4d6:b3a8])
 by smtp.gmail.com with ESMTPSA id h195sm5229140pfe.20.2019.08.12.13.31.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 13:31:22 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2] arm64: dts: meson-g12b-khadas-vim3: add initial
 device-tree
In-Reply-To: <20190812074857.8133-1-narmstrong@baylibre.com>
References: <20190812074857.8133-1-narmstrong@baylibre.com>
Date: Mon, 12 Aug 2019 13:31:21 -0700
Message-ID: <7hzhke15ye.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_133124_361613_921CC7A9 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: linux-amlogic@lists.infradead.org,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> From: Christian Hewitt <christianshewitt@gmail.com>
>
> The Khadas VIM3 uses the Amlogic S922X or A311S SoC, both based on the
> Amlogic G12B SoC family, on a board with the same form factor as the
> VIM/VIM2 models. It ships in two variants; basic and
> pro which differ in RAM and eMMC size:
>
> - 2GB (basic) or 4GB (pro) LPDDR4 RAM
> - 16GB (basic) or 32GB (pro) eMMC 5.1 storage
> - 16MB SPI flash
> - 10/100/1000 Base-T Ethernet
> - AP6398S Wireless (802.11 a/b/g/n/ac, BT5.0)
> - HDMI 2.1 video
> - 1x USB 2.0 + 1x USB 3.0 ports
> - 1x USB-C (power) with USB 2.0 OTG
> - 3x LED's (1x red, 1x blue, 1x white)
> - 3x buttons (power, function, reset)
> - IR receiver
> - M2 socket with PCIe, USB, ADC & I2C
> - 40pin GPIO Header
> - 1x micro SD card slot
>
> A common meson-g12b-khadas-vim3.dtsi is added to support both S922X and
> A311D SoCs supported by two variants of the board.
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

This still has a build-time dependency on the CPUB clock patch.

Looks like Jerome has sent a PR w/tag today that includes that, so I'll
merge that tag and then queue this patch.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
