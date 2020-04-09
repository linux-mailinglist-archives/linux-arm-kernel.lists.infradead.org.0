Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495781A30F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUVCi6gH09VA15kupOfyuG2MLl5mV0dvMGZeggmTRpQ=; b=N/0zFcc8XRTY6C
	FdcMDondzrTTI42iMm3nQJ+HJXCPkNFpSSHhmssqKhFtlhLMRrVz5q5c6mT9ULEOUVDhvCc7zLV1F
	xgdjWi2pr2YpwctS7wL3u8iW3+PSRvjDUSKaLAu4MZJqX28EDXTISc3r9EZDlIbPCh9XIuzZqOh/p
	aPLdkON6EIKTGdZC5RihUy1OHJ2hRYCD/EzpN91zx9TxsxWTFpf41JKC8Ap0ov6RUtMqI3Ub49R0z
	Kkodr7VYld9VR8AMLSiGQqTUtB1kG00SktClvFPaHDLjYGuvdDw5cbpeqVnFJp3jPizpQf2esfvAw
	s6j6FSb7fBBiM36hqJ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSbf-0007kQ-76; Thu, 09 Apr 2020 08:32:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSbY-0007k3-Am
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:32:09 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6BE120784;
 Thu,  9 Apr 2020 08:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586421128;
 bh=HHg0BqEx2wX4+fY3s+CC32jN5T6NYFSdDY3cPqUsvzM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=iyZWNiM2+06Wrw83+BipkEQbvQmZUxRzpeELkS1Sd4fm+uqGxE2UOtinJ7dEH7lZx
 zZo4v1dctQs+Xhggv3a7OWPLwq+HQmoVFJt81XJN1Qfs2caGTnW6m3LiHiwK4hU8P7
 bzMBRZrh2Itd7VHUSb1ja1OheDJvNLYtAzdgEmoE=
MIME-Version: 1.0
In-Reply-To: <20200406193050.GA53133@roeck-us.net>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-5-lkundrak@v3.sk> <20200406193050.GA53133@roeck-us.net>
Subject: Re: [PATCH v2 04/17] clk: mmp2: Add support for PLL clock sources
From: Stephen Boyd <sboyd@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>, Lubomir Rintel <lkundrak@v3.sk>
Date: Thu, 09 Apr 2020 01:32:04 -0700
Message-ID: <158642112482.126188.12721741681509681049@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_013208_393345_40AFD99A 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Guenter Roeck (2020-04-06 12:30:50)
> On Mon, Mar 09, 2020 at 08:42:41PM +0100, Lubomir Rintel wrote:
> > The clk-of-mmp2 driver pretends that the clock outputs from the PLLs are
> > constant, but in fact they are configurable.
> > 
> > Add logic for obtaining the actual clock rates on MMP2 as well as MMP3.
> > There is no documentation for either SoC, but the "systemsetting" drivers
> > from Marvell GPL code dump provide some clue as far as MPMU registers on
> > MMP2 [1] and MMP3 [2] go.
> > 
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp2_systemsetting.c
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp3_systemsetting.c
> > 
> > A separate commit will adjust the clk-of-mmp2 driver.
> > 
> > Tested on a MMP3-based Dell Wyse 3020 as well as MMP2-based OLPC
> > XO-1.75 laptop.
> > 
> > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> This patch results in:
> 
> arm-linux-gnueabi-ld: drivers/clk/mmp/clk.o: in function `mmp_register_pll_clks':
> drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
> 
> when building arm:pxa910_defconfig.
> 

Thanks. I see that Arnd has sent a fix for this.

https://lore.kernel.org/r/20200408160518.2798571-1-arnd@arndb.de

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
