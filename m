Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178FA4C5D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 05:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/J4hH3H+NI3t006y/4GvJPw8wn30HFdA5nQqrntzYk=; b=GkBc/wM6G9yrNf
	C+YjQ0/XTQtCuwoQmhz1RV3A1L3yiSu3Im9mrrjGUuUN9j9vxs7HIJcy7cS8BOAVB8PReXOTeOq24
	RcsFVWN1GOuQBo5Id5eJcEg9VwONlyEYuScIQhjx6JygPj8zF3L5F8TzAbWomWBBUW9GNQtzFPsPm
	9ZQZ+n63ftlhYzCLR1KXOk4p8+zFPIJN3KVMWuCtBeaVyg3rnBNr95GJr8zliyH57KGQdf1zFN+d/
	yoMhzoX2+mfyl+4iHevW+6DB2oiYuJD0lL4Ti7TAcbCKqFT3MpoVsLgQ3TmxF80v+NeqgUjkUZUqD
	7Vv3mbD5EsSqkos5raOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdnry-0003vd-GR; Thu, 20 Jun 2019 03:36:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdnrN-0003fP-70
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 03:35:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so849629pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 20:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=HOSCj25pO6a386fSVkhPsk9edlxIx4b0dfihdZfuotE=;
 b=R24VUbUFz5qZKeynsTUrq4c3dB1nc/QoAc5x5U+zHBRKmgP4irX+Qd/uz+TvIn9Dde
 8hzyvekv6Gzm2FKO8q3HSyEgq8Vud578ah6rtzQ3QyhfF5il00SiTGRbeo9J2kI61H8l
 DMJK9uVuztUlxcdwCN4uQbImQDCa4vCH+p4Ik6/xlqe2I/Xw/gE2bLIDTnJTSR+Y4tqu
 8gHa8kqfrF68JmH/Ra/8/AFn7cJw4OyG1GD5rh5Ao3DrXQ12KqDFI/Zb0oyBe3+S23fW
 A9aA+b8dH+CO2S4ymvs047VKJGaK3Gxqu0jofHWcLZ38fOEqvft10X5TfRunYq1TrEN+
 lZKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=HOSCj25pO6a386fSVkhPsk9edlxIx4b0dfihdZfuotE=;
 b=jxisJJ5Gd1izfFEz51AmeSQfoEyg0cEK5egGOIVUGUFxyjt8oT0vnwWWua5cXKaalM
 uZnihxt4/rgP11upIgs0h+c69xAkxat59l0y8UJFpVdx5gvzki7cEeUCkx+05MxLYDEt
 t+ORztrwQYtAzHGfQbcs4kl/hsPI49sb1h9ry2k9GL6/owWoalK644qdd3JbLCpkFrs+
 RdxdQQQK9W4/CpjHZt+5IkyCHkOWOyFcXyMwhIHu1J6wF31zyKaUQ8YoK0QJVsBoqi1y
 o9j4D6ug1GH6TUUYEvrRXUpGytIZjyR9qZqS9CVnNABLN6jdfxv+aTRvFVavTM2CCgxq
 Voag==
X-Gm-Message-State: APjAAAWrWAhrDZtWKDPuJy2mYBSgNYMiUsbvvuVzZ0Qnu4O86gD1GOid
 WHKD7b8SY5ohQKMDtDlUFawpRg==
X-Google-Smtp-Source: APXvYqymLvsH5Jne+eK0EsJ3Q4/Y0qf5ZzWcO17TxweQkCCIYK/LjuDERiWhe89FjMEwwQO+ynf3Mw==
X-Received: by 2002:a63:df46:: with SMTP id h6mr10696443pgj.181.1561001732439; 
 Wed, 19 Jun 2019 20:35:32 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ec6a:e4cb:28b2:e322])
 by smtp.googlemail.com with ESMTPSA id 133sm23896859pfa.92.2019.06.19.20.35.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 20:35:31 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v3 0/4] Ethernet PHY reset GPIO updates for Amlogic SoCs
In-Reply-To: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
References: <20190615103832.5126-1-martin.blumenstingl@googlemail.com>
Date: Wed, 19 Jun 2019 20:35:27 -0700
Message-ID: <7hh88lhqtc.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_203537_276064_9CEA09FF 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: andrew@lunn.ch, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> While trying to add the Ethernet PHY interrupt on the X96 Max I found
> that the current reset line definition is incorrect. Patch #1 fixes
> this.
>
> Since the fix requires moving from the deprecated "snps,reset-gpio"
> property to the generic Ethernet PHY reset bindings I decided to move
> all Amlogic boards over to the non-deprecated bindings. That's what
> patches #2 and #3 do.
>
> Finally I found that Odroid-N2 doesn't define the Ethernet PHY's reset
> GPIO yet. I don't have that board so I can't test whether it really
> works but based on the schematics it should. 
>
> This series is a partial successor to "stmmac: honor the GPIO flags
> for the PHY reset GPIO" from [0]. I decided not to take Linus W.'s
> Reviewed-by from patch #4 of that series because I had to change the
> wording and I want to be sure that he's happy with that now.
>
> One quick note regarding patches #1 and #4: I decided to violate the
> "max 80 characters per line" (by 4 characters) limit because I find
> that the result is easier to read then it would be if I split the
> line.
>
>
> Changes since v1 at [1]:
> - fixed the reset deassert delay for RTL8211F PHYs - spotted by Robin
>   Murphy (thank you). according to the public RTL8211E datasheet the
>   correct values seem to be: 10ms assert, 30ms deassert
> - fixed the reset assert and deassert delays for IP101GR PHYs. There
>   are two values given in the public datasheet, use the higher one
>   (10ms instead of 2.5)
> - update the patch descriptions to quote the datasheets (the RTL8211F
>   quotes are taken from the public RTL8211E datasheet because as far
>   as I can tell the reset sequence is identical on both PHYs)
>
> Changes since v2 at [2]:
> - add Neil's Reviewed/Acked/Tested-by's (thank you!)
> - rebased on top of "arm64: dts: meson-g12a-x96-max: add sound card"
>
>
> [0] https://patchwork.kernel.org/cover/10983801/
> [1] https://patchwork.kernel.org/cover/10985155/
> [2] https://patchwork.kernel.org/cover/10990863/

Queued for v5.3...

> Martin Blumenstingl (4):
>   arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY reset line
>   ARM: dts: meson: switch to the generic Ethernet PHY reset bindings

...in branch v5.3/dt

>   arm64: dts: meson: use the generic Ethernet PHY reset GPIO bindings
>   arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY reset line

The other 3 in v5.3/dt64,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
