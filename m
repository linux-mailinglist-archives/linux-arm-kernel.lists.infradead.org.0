Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1166019FE18
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 21:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMS5mjiyIDM/sU6ef0foZE4LK6RmfrZ/Y7+z5MHFMu0=; b=FVzzRR25spHdMd
	UI46BSArJCjGDrP1f5x874wnOdrnJEQaf72VOFPdq38BGlFQHBd74VSw8u/Z/1U4uyXme3scAp2BP
	Vt2X4jDDzOMGEvGycTpVU3QOFjwh5nNSCv6cjZLpvJz5iBiDiSkb4lwqO24y3UMOguD7smC3HQXba
	WSaSwq/zq1h3HCTwV5jwDqnY8Wx1SYuYzMeed9rPVLvASLgOiFpVgP2HEOs3iRCZi/YjLePHwwAGq
	mu6La/sCX/pp1nckQ3SG29KMMT1p01yWK3Cu3IXvTjEfsegtr80i5siYwLqIga+jp/gLGq+N21/Oe
	M7PEJyAYzHKBjA580qXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLXSX-0005ET-Co; Mon, 06 Apr 2020 19:31:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLXSP-0005Dx-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 19:30:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id r14so8049926pfl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 12:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nh5t5HwqaZ5vwtLT3aQ5LPtySy+1nmXDpAkBkNh9qyc=;
 b=Z17icQy61jImrE8skOGEPbOqTmG9HyfmTZHJ9J4nDsMICEIMALuGTFfraW+NGGOger
 WWNTDt/WYlVXRQqUtOKRYznm5XdVAdS23I5p2WLLp0LEKzyY6Pny/FPVO0Mm/W8Ootak
 b4jaqqUZmbQ/XE50A31zs7bH9DxX/RzKnjA7BnWRdyx2eE/JNItutYtaFDpm0C2BPxd6
 +BB/q0KROQAgfS5eSHctOHZ4Kay8cKPXLHdsIEfSHR54mK+4RmkArDtBT4IhujG1TnlZ
 UhPgsZjV6GxCIBaffTOFOQiGbHsz5ZPQA+dqrJ7zplqxMnxQMYqbxStcaW7jUQdRJnRE
 tCJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=nh5t5HwqaZ5vwtLT3aQ5LPtySy+1nmXDpAkBkNh9qyc=;
 b=MbYZmW8BV3K6MEab3GNcCWyBRoTypk44YPk9eP4Fdp6RF5m9JVLe33NuR8ndxXi5de
 FmNYpdiagh1Dp2Ob3wgdjDhC4GxqvFLvrL9sgi0g6Pikt1V3ruZlUXSUbZR45c7kj941
 z/ahWeyewfTOQ9+W+osklmzT4IOdXl1czW+x5wBZppPUcAKbCWwx7/+2GyyUaxbeT/Fj
 vtIhsyqfhGhSYoEYkzlKakFDaBaQyP0/Gy9skC+gGa73iiXuwUe8RfCRnRiyXJ6SmDA1
 FeGhE2P2aIxKkAtN4NsE4Tzi3asGLXn+scF3jl3S6+FFPmb6CBnKYffPJnyA+u/tQsMV
 qPjA==
X-Gm-Message-State: AGi0PuZeWYhUh0OikE2rcyKJwsMxP4bvGkmRDNmIJjhuo9WSGy+8ha+b
 vnpTT0oFg8YyOPyVfDc3aUk=
X-Google-Smtp-Source: APiQypIdxJFiZxwLmJw0oNITUEQIevo3vGxi8hwQjd0iINquNH4IGOvTh7aTLBwC6be3oGyutBQ5GA==
X-Received: by 2002:aa7:9695:: with SMTP id f21mr1030846pfk.93.1586201452092; 
 Mon, 06 Apr 2020 12:30:52 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id y29sm11509937pge.22.2020.04.06.12.30.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 12:30:51 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:30:50 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 04/17] clk: mmp2: Add support for PLL clock sources
Message-ID: <20200406193050.GA53133@roeck-us.net>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-5-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309194254.29009-5-lkundrak@v3.sk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_123053_176201_89266EFE 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 08:42:41PM +0100, Lubomir Rintel wrote:
> The clk-of-mmp2 driver pretends that the clock outputs from the PLLs are
> constant, but in fact they are configurable.
> 
> Add logic for obtaining the actual clock rates on MMP2 as well as MMP3.
> There is no documentation for either SoC, but the "systemsetting" drivers
> from Marvell GPL code dump provide some clue as far as MPMU registers on
> MMP2 [1] and MMP3 [2] go.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp2_systemsetting.c
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp3_systemsetting.c
> 
> A separate commit will adjust the clk-of-mmp2 driver.
> 
> Tested on a MMP3-based Dell Wyse 3020 as well as MMP2-based OLPC
> XO-1.75 laptop.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

This patch results in:

arm-linux-gnueabi-ld: drivers/clk/mmp/clk.o: in function `mmp_register_pll_clks':
drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'

when building arm:pxa910_defconfig.

Bisect log is attached.

Guenter

---
# bad: [a10c9c710f9ecea87b9f4bbb837467893b4bef01] Merge tag 'for-v5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply
# good: [4c205c84e249e0a91dcfabe461d77667ec9b2d05] Merge tag 'keys-fixes-20200329' of git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs
git bisect start 'a10c9c710f9e' '4c205c84e249'
# bad: [31c0aa87ec8a30b1e9e4cf862905a369560f7705] Merge tag 'random_for_linus' of git://git.kernel.org/pub/scm/linux/kernel/git/tytso/random
git bisect bad 31c0aa87ec8a30b1e9e4cf862905a369560f7705
# bad: [53a2cc5cc36fd97728e1b418dbfa8f70bf23391a] Merge branches 'clk-ti', 'clk-ingenic', 'clk-typo', 'clk-at91', 'clk-mmp2' and 'clk-arm-icst' into clk-next
git bisect bad 53a2cc5cc36fd97728e1b418dbfa8f70bf23391a
# good: [2d11e9a1fd2abe784b334442b36f7d83ff914287] Merge branches 'clk-phase-errors', 'clk-amlogic', 'clk-renesas' and 'clk-allwinner' into clk-next
git bisect good 2d11e9a1fd2abe784b334442b36f7d83ff914287
# bad: [de17be999cb07effacf6a1129602f63396f5af27] clk: mmp2: Fix bit masks for LCDC I/O and pixel clocks
git bisect bad de17be999cb07effacf6a1129602f63396f5af27
# bad: [4d6da655d1871fadcb2b5de086e5a35883e22c95] dt-bindings: marvell,mmp2: Add clock ids for MMP3 PLLs
git bisect bad 4d6da655d1871fadcb2b5de086e5a35883e22c95
# bad: [5d34d0b32d6c13947b0aa890fc4c68f203491169] clk: mmp2: Add support for PLL clock sources
git bisect bad 5d34d0b32d6c13947b0aa890fc4c68f203491169
# good: [cb8dbfe831758fb2ba52d8c30db5249e48f57b8b] clk: mmp2: Constify some strings
git bisect good cb8dbfe831758fb2ba52d8c30db5249e48f57b8b
# good: [7de0b8b8b0508af5fed2f2a07e3abb6acac0c466] dt-bindings: clock: Convert marvell,mmp2-clock to json-schema
git bisect good 7de0b8b8b0508af5fed2f2a07e3abb6acac0c466
# first bad commit: [5d34d0b32d6c13947b0aa890fc4c68f203491169] clk: mmp2: Add support for PLL clock sources

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
