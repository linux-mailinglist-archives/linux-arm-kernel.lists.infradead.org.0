Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7987E6ED88
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 05:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HpARZmBVb2yEE/s8zdQL7zVaVBrtpITu8hZq845FpNc=; b=L2B35G7tkv+iGq
	oRjjjB+kOZ9wr1jiXDjjKa1U1//YzaZtfkIhbpLPmTiWHYkZvABl3d/y/ofg02jhoshvC661MEVVG
	jNsEENdsgbHRGmw6juzU4oAyFbHvTiDL1rgXCqu0oJmox0xU9y0pJjT/mGIB4A7RxoPvz9zjyT/Zh
	ys7k6wh61Co/dR5Omuu6QchY9Ei6RowQWRSzmSgH4psKT5DfySmEzQGihE8bHG+RXgmybZve92c5X
	qUxxFEUNDyI6jwjGhpj0GNKxL1wmTPjqGMF/qtOZWhXtjWrdHgQ6H7Id2DLU0laob7HYhh3qznZgu
	bqzOKgnLpgvlJv7P9RVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hog1e-0003Ol-EV; Sat, 20 Jul 2019 03:27:10 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hog1Q-0003OU-O5
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 03:26:58 +0000
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x6K3QYR7013801
 for <linux-arm-kernel@lists.infradead.org>; Sat, 20 Jul 2019 12:26:35 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6K3QYR7013801
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563593195;
 bh=/cy4zkl9MBndlJPf309omN2x5BYB6od3xL14Bqq951k=;
 h=From:Date:Subject:To:Cc:From;
 b=YBL9SX8nGcdiSDqzzqhaCwQW4V/n+XvKYlm8sCuY3fUDN7SPLhzmnRVzsx+SE2Jvf
 eNaza/lW5/OwBI17PmoK/W9nWBdI5rD0xRnCiA80SmEY5HHnBg2i6sttwv9d8Nz4ZM
 LSLSw/f4andPN3Nu8ltIaR4rVSOoLCVtCoMFlQF2hNPMVk+TnA4CgnKNOoIUJLcwtl
 RbfI2kFtP1wwHK/N6MC31iIO3u3tHCSCeLd0hsPWAiU44o6YLn2dqmJ+oZp52Rg0YM
 ZWpFt/AQCsZ3RU0a0uNa+oq0v6pzg9kUYaJlO4jcDeZse1mgR6GLePk5DV6rzd0QwO
 Xw84/ASDn7gzQ==
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id o2so13305926uae.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 20:26:34 -0700 (PDT)
X-Gm-Message-State: APjAAAU2o2Js36mkYGf9JkZfshuo5r4FazzaHJI5GuED6iNEW6zitTNo
 h00Vy72w0X9cV0FHGX0FPixBhwQ3JMdwQxcIec4=
X-Google-Smtp-Source: APXvYqxMWol/Hq29+8CUkgjOAH9mDC4bKgEruVV4pjWDHDa2y3dUX8Vbo6R5vHcaU54H7hy2Je1Ilc698k/gWzOxwd0=
X-Received: by 2002:ab0:5ea6:: with SMTP id y38mr35301733uag.40.1563593193773; 
 Fri, 19 Jul 2019 20:26:33 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 20 Jul 2019 12:25:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
Message-ID: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
Subject: [Question] orphan platform data header
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_202657_034243_0DC5E871 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

I see several platform-data headers
that are not used in upstream.


For instance, please look at this driver:
drivers/leds/leds-netxbig.c

If I understood it correctly, this driver
supports both device tree and legacy board-file.


I grepped 'netxbig_led_platform_data', but
I only found the driver and platform_data header.
No board-file in upstream.

masahiro@grover:~/ref/linux$ git grep netxbig_led_platform_data
drivers/leds/leds-netxbig.c:                          struct
netxbig_led_platform_data *pdata,
drivers/leds/leds-netxbig.c:                                 struct
netxbig_led_platform_data *pdata)
drivers/leds/leds-netxbig.c:                      struct
netxbig_led_platform_data *pdata)
drivers/leds/leds-netxbig.c:    struct netxbig_led_platform_data
*pdata = dev_get_platdata(&pdev->dev);
include/linux/platform_data/leds-kirkwood-netxbig.h:struct
netxbig_led_platform_data {



So, what shall we do?

Drop the board-file support? Or, keep it
in case somebody is still using their board-files
in downstream?




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
