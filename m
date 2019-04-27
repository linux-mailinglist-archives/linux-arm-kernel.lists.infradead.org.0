Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9522B1D7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 02:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BtwXCq3zI2RmaiNVR2PVIKwxiekgGAkWtrODQNR1b0=; b=vDWmER4sUtO8Te
	wX2F5N59yUrW6vsq9+ACXo0+HXPPaeqWUWU5rxyYLRpWdSnNoarobDOy890W/5ajTM954/IV9xqYW
	41YrOEdJAIxbJVuvVv2brdF+cukOa6PpTo98YBIpXi1p6TXUZT5N7Xpm5HHxIk4AKeZVd7E0SSth7
	Og7QmNi7/qurKztlbSD3NKTo5V915xm5SAcHCIiwAovSiOzC0TJ6kEHpEHY1uaUy1bnFQpWCyOVwR
	WtVmRfkTJ/1kL/K0ga/wtF5u3yoxEAOzulQZtj6oSzgiK/P7FGOl3s3EydJ64HpR38HGS7MWW2fh2
	+Kz/O8mcMRAp0lHXPHBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKBON-0007ho-Ag; Sat, 27 Apr 2019 00:40:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKBOE-0007hM-Ti
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 00:40:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id z5so2478930pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Apr 2019 17:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=71g7874Dm8GzDB1gp/UmnroMo/FuKzXQ28vDBNXnuLY=;
 b=PMCQTNAti2IUDiu5w5RuV5bzMeagemKbYMycGKukmKSty2oWlxYn9Hxe8q3QjHukn+
 Pt6XDBaP8iA+FIOZk2zfMnhMBvvp07uU7pfO/EJcyd6ysvrlyGsPSqICUaDQ6m8paByp
 /1vutIP6bzqi5/MQftNoq1uNwC+hPZhNQZVuVaJe/0iQIJ3BbJP1llDP1epLk2PnR7y8
 CgS2tnvELBSf/ZTKILC+Ar+ww0rixHMgzMrbQt9VSY7Gte87d4N5dg9xAD7Zv2G4MCkw
 5OPSrO8PBPIpo/TqDWTNvJkBWz5B749Ha9mvv87GuBwW5wIXThaUEs3fuQKaQ+jKWqxw
 SUfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=71g7874Dm8GzDB1gp/UmnroMo/FuKzXQ28vDBNXnuLY=;
 b=bPJcPIrSpPQN22I+YtGaBjA5DZjE9ca4uKES7xmK/Qowhwa6goF+2cr7vh9c/DUQDZ
 As1enm8I3oUHT3H1VKyXTceXLZcCO4w8/0lzgBb7KNuXHMeXLwhcFUeDK2yssN+UgSbZ
 jci158ELyZ8HKc6mz6djLVx0vT0tQ7NAZakvbkBg/njEpFOUmTh+xyD+nwE/rqwyOFpC
 qgRkwdBNFFecQ7CkoiLAnS9pk4jM/6XIYGYsKUaUw6dEFwvY099Cm7F+vtdODFuRPXQB
 Jlw6hV9fn6SBvZlY5iIN2aq3ZAfp8/Q4WLksHvi/OOYuSIQIEwRur5ecb+kr813GAlyi
 mhAA==
X-Gm-Message-State: APjAAAXoBIcH/ib5Wr6x7ZpGYf4bCVjfCMlGTNOguYfZSaiQI8Jn9Vq5
 0TSclWcVHdLuC2RBeTBqqqI=
X-Google-Smtp-Source: APXvYqxHvSvk521QXFirB2vyDQcDxGFNHB+cB0K/N9kLQPlFl5qeuUiIoy/zSQVLOLxfbIoHXsos7A==
X-Received: by 2002:a63:ee15:: with SMTP id e21mr17697767pgi.180.1556325625196; 
 Fri, 26 Apr 2019 17:40:25 -0700 (PDT)
Received: from icarus ([2001:268:c1c1:24b4:c70:4af9:86e2:2])
 by smtp.gmail.com with ESMTPSA id s20sm31884210pgs.39.2019.04.26.17.40.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Apr 2019 17:40:24 -0700 (PDT)
Date: Sat, 27 Apr 2019 09:41:34 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: Re: [PATCH v14 01/11] bitops: Introduce the for_each_set_clump8 macro
Message-ID: <20190427004134.GB26000@icarus>
References: <cover.1553828158.git.vilhelm.gray@gmail.com>
 <1cc8b30bb3954ca2a0961ffb0a2eed8a005ed670.1553828158.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1cc8b30bb3954ca2a0961ffb0a2eed8a005ed670.1553828158.git.vilhelm.gray@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_174026_990028_AC7E8282 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 Arnd Bergmann <arnd@arndb.de>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>, lukas@wunner.de,
 geert@linux-m68k.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 29, 2019 at 12:04:08PM +0900, William Breathitt Gray wrote:
> This macro iterates for each 8-bit group of bits (clump) with set bits,
> within a bitmap memory region. For each iteration, "start" is set to the
> bit offset of the found clump, while the respective clump value is
> stored to the location pointed by "clump". Additionally, the
> bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> respectively get and set an 8-bit value in a bitmap memory region.
> 
> Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Suggested-by: Lukas Wunner <lukas@wunner.de>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  include/asm-generic/bitops/find.h | 61 +++++++++++++++++++++++++++++++
>  include/linux/bitops.h            |  5 +++
>  2 files changed, 66 insertions(+)

Andrew, Linus,

I reverted your Acked-by/Reviewed-by lines to Cc in this release because
the code has significantly changed from the simplification effort. If
you are satisfied with these changes, please ack to confirm.

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
