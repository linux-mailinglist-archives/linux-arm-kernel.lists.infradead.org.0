Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362C3170346
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HlmQasQzNFWDomSygYWjB6UGzxIbFUpFnCSlf8sy7BY=; b=BVVOxMeYoEa+0g
	UmwCW/Op3aM76thuc2XLJVpPhzMiPr2/PXW57sWqZbyUNsD1kQbh4ckXeNs64PP8my3nORKzyJqRh
	L0YclDeupj9CVfmSUIAM/GSFqswjYYjoPV9mZH2DDzIlipq0qLzTChs7nEBS1h1MJ/E3nFy7TeLvb
	uHdcic/wKNKz2VYwz4Bwuxp2Ev8loJ8zsMW+jkqoQO5c+1H2xdmRf1emuRFz8ViEgOYFweBnrOBdX
	puNIXPlbUlWsIiaATUk6Bf+egJY2m6GyljyGcn94hmSs+pXoZyc6tLvklicjhJSCsTu2QZqKYELmx
	hSGrAf5fZTVyJRGT8inA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6z2Q-000864-4V; Wed, 26 Feb 2020 15:55:54 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6z1j-0007cC-DZ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:55:14 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id D19A620076;
 Wed, 26 Feb 2020 16:55:04 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id BF00C20025;
 Wed, 26 Feb 2020 16:55:04 +0100 (CET)
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [RFC PATCH v4 0/2] Small devm helper for devm implementations
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rafael Wysocki <rjw@rjwysocki.net>, Suzuki Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Message-ID: <68219a85-295d-7b7c-9658-c3045bbcbaeb@free.fr>
Date: Wed, 26 Feb 2020 16:44:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Feb 26 16:55:04 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075511_610251_0C566C23 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPOOFED_FREEMAIL       No description available.
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
Cc: linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Differences from v3 to v4
x Add a bunch of kerneldoc above devm_add() [Greg KH]
x Split patch in two [Greg KH]

Differences from v2 to v3
x Make devm_add() return an error-code rather than the raw data pointer
  (in case devres_alloc ever returns an ERR_PTR) as suggested by Geert
x Provide a variadic version devm_vadd() to work with structs as suggested
  by Geert
x Don't use nested ifs in clk_devm* implementations (hopefully simpler
  code logic to follow) as suggested by Geert

Marc Gonzalez (2):
  devres: Provide new helper for devm functions
  clk: Use devm_add in managed functions

 drivers/base/devres.c    |  28 +++++++++++
 drivers/clk/clk-devres.c | 101 ++++++++++++++-------------------------
 include/linux/device.h   |   3 ++
 3 files changed, 68 insertions(+), 64 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
