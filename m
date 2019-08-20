Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5859685C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 20:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WO3R4SEpj2TmUGHICsJjIU/EnFZQwPzu3nlMh54/GxE=; b=nkYXIFSb0N2ac7
	f1V+arQp/9s9mrpnTzqaaljEymPVoOhXIpvHah1J57MBYDNedFq6nXkPzqtnfe7beX0kQXf/cb9y8
	vD/xB9IGJnwk6nRpvRVXdaJC57mGiJdpTwbiGXnJ3m7AAhsrpX3LDuq98n+7XnnK8uE1j5x5YWaj1
	oz7i7cabU1E94sKX8gBtbdpnzcaz1ArFQB2XapdYuGMtyITOPit5xDv92p/tvViNBnWLBkXeIcku5
	9jmihvG2xQqK3bbaYX7Ny7bepc97fJccBqj+GpcA15YRjzzHyDWw3dpDVYgivYbaGbfw8dcyRWPXp
	BUJC4ZuDiMSzqo6SHerg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08cS-0001xw-Nc; Tue, 20 Aug 2019 18:12:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i08cK-0001wF-Hu; Tue, 20 Aug 2019 18:12:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id d16so3477515wme.2;
 Tue, 20 Aug 2019 11:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FxKwOAn/bUsUWgRowkck4x6MWefDgHztdSAMXvVqDc0=;
 b=C2LXp92QlDuVNzD9WsNVwRF5z2Ir9q5pM35LYSr2Uy1GcE02jymh9xqpwVtSPfK/Mm
 cMf6dzWT6/q8GkVp0JnPWfDJVrDvHRPkTUBYBLClvSFtrb+A4XOuUfHKYQkOrjujQ5YM
 QmFzBRdcLEB9hij+eMYi21VnO0BzwRUxKJkr3lBTtEtMIh5nxlvdKYa0kZ9LrwtAnj2z
 agua7X77Y6vZDJBcyPScv+tk/Wd4U8C0AVU3rpJcxvMkwPRarak5te8THIBxqZz+I7Bq
 isX8fPkG51Mkmip0yRYn6hi2DU5W3iXDQif4lfn7TahKeyylThnRwx6SDUg86QsDm/5g
 bkyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FxKwOAn/bUsUWgRowkck4x6MWefDgHztdSAMXvVqDc0=;
 b=GYq+nwzp9RihKTaW3UosXZlqS5ezsKrCIADfzkruTdZu7Mwd4ho5zWTt72xuoCBcX4
 zsmfX6mXaJVyLYr6bGXUvZfTI9IbfHeuOOKlxn/IXst5ZPDVneJjAAmPdyDS5H8ZTrNY
 TENPB2cHLoze3efJxwRHdK+ijAcgVHQK9TeiL+/0P+2no1RHQnIJfHgsdZaSWxKSDlEK
 +Njd6tMnOmv35iA3oIHZ4N5zBfvFl+BuIwrJswF6162lclEqbVZivcXWoxeWitIVyGXB
 MNKGZCBmnjeoVZojykmg1jZRWUxaFzsYjENnQJFXxKk9dlH7WouJqYSfjUyxPkFL6Q2m
 Vi1g==
X-Gm-Message-State: APjAAAVAoQSUiCrDkF+uGRy1kU8olopWUzaAOWOuTbDpzZtqMAI7AWV/
 pPRPf0ZLYdhLs0ANzvBIJ5k=
X-Google-Smtp-Source: APXvYqyeLMNmmA1lMPXgj5s+QpeAfTTIWF/iih0d5R1Rs73sIEnxk2A9i+tveajNCyO05H7Ddgq1JQ==
X-Received: by 2002:a1c:4d05:: with SMTP id o5mr1355632wmh.63.1566324742781;
 Tue, 20 Aug 2019 11:12:22 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id f192sm543369wmg.30.2019.08.20.11.12.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 11:12:22 -0700 (PDT)
Date: Tue, 20 Aug 2019 11:12:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] phy-rockchip-inno-hdmi: Fix
 RK3328_TERM_RESISTOR_CALIB_SPEED_7_0's third value
Message-ID: <20190820181220.GD9420@archlinux-threadripper>
References: <20190807192305.6604-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807192305.6604-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_111224_615624_E18F54C4 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernelci . org bot" <bot@kernelci.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 12:23:05PM -0700, Nathan Chancellor wrote:
> After commit "linux/bits.h: Add compile time sanity check of GENMASK
> inputs" [1], arm64 defconfig builds started failing:
> 
> In file included from ../include/linux/bits.h:22,
>                  from ../include/linux/bitops.h:5,
>                  from ../include/linux/kernel.h:12,
>                  from ../include/linux/clk.h:13,
>                  from ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:9:
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c: In function 'inno_hdmi_phy_rk3328_power_on':
> ../include/linux/build_bug.h:16:45: error: negative width in bit-field '<anonymous>'
>    16 | #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))
>       |                                             ^
> ../include/linux/bits.h:24:18: note: in expansion of macro 'BUILD_BUG_ON_ZERO'
>    24 |  ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
>       |                  ^~~~~~~~~~~~~~~~~
> ../include/linux/bits.h:39:3: note: in expansion of macro 'GENMASK_INPUT_CHECK'
>    39 |  (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
>       |   ^~~~~~~~~~~~~~~~~~~
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: in expansion of macro 'GENMASK'
>    24 | #define UPDATE(x, h, l)  (((x) << (l)) & GENMASK((h), (l)))
>       |                                          ^~~~~~~
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note: in expansion of macro 'UPDATE'
>   201 | #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)  UPDATE(x, 7, 9)
>       |                                                  ^~~~~~
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: note: in expansion of macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
>  1046 |   inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
>       |                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> As pointed out by Robin and Guenter, inno_write's val argument is an
> 8-bit value so having a mask larger than that doesn't make sense. This
> also matches the rest of the *_7_0 macros in this driver.
> 
> [1]: https://lore.kernel.org/lkml/20190801230358.4193-2-rikard.falkeborn@gmail.com/
> 
> Reported-by: Andrzej Hajda <a.hajda@samsung.com>
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> index b10a84cab4a7..2b97fb1185a0 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> @@ -198,7 +198,7 @@
>  #define RK3328_BYPASS_TERM_RESISTOR_CALIB		BIT(7)
>  #define RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(x)	UPDATE((x) >> 8, 6, 0)
>  /* REG:0xc6 */
> -#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 9)
> +#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 0)
>  /* REG:0xc7 */
>  #define RK3328_TERM_RESISTOR_50				UPDATE(0, 2, 1)
>  #define RK3328_TERM_RESISTOR_62_5			UPDATE(1, 2, 1)
> -- 
> 2.23.0.rc1
> 

There was a v3 of linux/bits.h: Add compile time sanity check of GENMASK
inputs sent and this needs to be picked up to avoid build breakage when
that is applied. Could someone please pick this up?

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
