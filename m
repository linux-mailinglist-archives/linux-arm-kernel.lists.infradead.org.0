Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6552A49EC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1e7I+1iohIXvrveBl85KmRoq70zHrg5i7btRgVJtHu8=; b=ZNhxsH7gimItZK
	4OSeWIkvnst+RuamT3N7NedTZJYfl+XvV7cMG/D96nS79wGZpa0lyBFy/ytOmnMcu2Q7i5loRt6gx
	tXQgGqrO/1jUIVOgQ+sYSS2fRdEG7ihLfLxe+05NXebq/hdF+I8QTWKTuNnR1Qgo4EtJSiF0+ekbU
	Uip/Ga4SDMke0izvRBBSXw15L4d4MSKVUIroaJ5jqLc9deYlUvYVzik6vt/fmkqdLyGejna0Az4k9
	qmB28LRaZlOvmfbRZqo3+0aA9TgAl23q87AmSGOTlt0oMxMUn1mZ0uD/iJHnN46r42y/CYihRxeo2
	r0ifnfxK8jLALfrOcaog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBqJ-0005VA-HL; Tue, 18 Jun 2019 10:59:59 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBq5-0005Fp-UY
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:59:48 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so28648806ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 03:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zE+SX6SmJuqniQ7NjAmJGscRWAHfDF73kRsg3p1vW/I=;
 b=ZRA8R31dARjasR829hrnWSoWnChAdV/Q4AnU2qy6oX7CcVMxtq2xlkRcVwLc0YoXCk
 uoKI6z+j33CzVT9lUiD/FxtpEtT1/pjthqE6evUlvx3z7DZpW3m11ZgIOm5umqWxKR0H
 5iJljS0EZ6Tz9nnkzZcclLjU46FHU9nc8v4+gbWcimyLnTNlwy2NVYiqx/z3uCLMAdaf
 N50hrnatqW8la1sYYWWTPFRX/es0ErzyJJ0uBodBxdc44Ipu5acCz6QlcrCQW0/Gwva0
 fj5AD1MbNn6ozSckHKhLzkZ4Qd0ERLxg9QKjT+wA32PNehHQUlPCbxTlqtmpisAwpQuc
 Zi+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zE+SX6SmJuqniQ7NjAmJGscRWAHfDF73kRsg3p1vW/I=;
 b=QAsI6VacjllCEo2JS6HtpcYqV1bMB5JrAO/lG+Oon7Hu/e8wEaLwXAJgUFf8lI0XmY
 oov1b8XBVZcTcWYQLc3dp8+l0aic2UbcmLsHgBIXHOPy8t9K3FGXaCu9eB9IPa8IOd+U
 Xowx1t3/jx3huU6IW/txtsM8LSC+vUE+GbxsylYidRBXLPASyKK38w9/arXvMvPzje1V
 v/TvdN1HNeQ1lhdOAOSoMilp7KC7Z4OaXEDGcvz589zcaMHvDI4B9/7P6/5q8QR4T5ny
 J3NGUceghCmULy0usNHqPCogFqt7fKZTIQxFOnVAyVUr8smK6txOhToaKUA2l0byWMG+
 0WNQ==
X-Gm-Message-State: APjAAAU3uCJM+pvHVEz/9B46cGAsgd8rVXmj2JuK3B0Hzn5GRX3VDqsG
 0FhCwvoaJrzovMDBWYn+npcKcQuWql75RRTL933B8w==
X-Google-Smtp-Source: APXvYqzjhXGg+TvQJGun9Olmz9fMYejbvTP9+tvJZTNfj66Ln++Fr+249qMlKBOev8QrSa5z7CguoXzfCqnyT5uNyfs=
X-Received: by 2002:a02:c519:: with SMTP id s25mr9785849jam.11.1560855584996; 
 Tue, 18 Jun 2019 03:59:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190617122449.457744-1-arnd@arndb.de>
In-Reply-To: <20190617122449.457744-1-arnd@arndb.de>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 18 Jun 2019 11:59:33 +0100
Message-ID: <CAOesGMgx2OrKnLyQAu748eoqx9a4N9BhjiFw6qkHFYmWbTMvrg@mail.gmail.com>
Subject: Re: [PATCH 1/3] ARM: ixp4xx: don't select SERIAL_OF_PLATFORM
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_035946_003706_1BC2D7DB 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Linus Walleij <linusw@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>, Krzysztof Halasa <khalasa@piap.pl>,
 Imre Kaloz <kaloz@openwrt.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 1:25 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Platforms should not normally select all the device drivers, leave that
> up to the user and the defconfig file.
>
> In this case, we get a warning for randconfig builds:
>
> WARNING: unmet direct dependencies detected for SERIAL_OF_PLATFORM
>   Depends on [n]: TTY [=y] && HAS_IOMEM [=y] && SERIAL_8250 [=n] && OF [=y]
>   Selected by [y]:
>   - MACH_IXP4XX_OF [=y] && ARCH_IXP4XX [=y]
>
> Fixes: 9540724ca29d ("ARM: ixp4xx: Add device tree boot support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied to arm/fixes. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
