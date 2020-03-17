Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC889188C31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 18:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1l+niL04c/uAJLSG6nxp4ZDnYSLjsSsrKF1slPtAEc=; b=CjmTJ2G4+XEr2E
	khcndKKXnlW83eXq5yQ/dMgGvqbAH6q5avfFqoACKDKhOvraaKhQSpo85+oSMZn9TeudSpFK5X4N5
	HgP70KdPzr6SGk/pwoy65LhWezgcEgT5+rBK6ztUWHnwvj8U2ewPNLYqcUmCEPLHf2zfWVm/3O0nO
	AcV5ljFtYMsxyH0Ljup8PyiG6i4C93mouGCkYf0wnxJWc50m9zd1CWmIy1IgttXy+6FeFimW1uSYV
	O5Fgtr8vTTns13tPLWYXkymSp3J7lOiXj5TFEr2ZeeTVRi96rKtNtNbqcXqgJXPXJWDpGlXEWHdOi
	fQWeiM+hsa9LW4s1kadQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEG6z-0002aC-Fa; Tue, 17 Mar 2020 17:34:41 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEG6n-0002Zs-UK
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 17:34:31 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 56C60810D;
 Tue, 17 Mar 2020 17:35:12 +0000 (UTC)
Date: Tue, 17 Mar 2020 10:34:22 -0700
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/3] Block idle in gpio-omap with cpu_pm
Message-ID: <20200317173422.GN37466@atomide.com>
References: <20200304225433.37336-1-tony@atomide.com>
 <CACRpkdYL5mZ7i6bEF0b_CUXaG-jHKz4KnSXsBNfs_9M054U3vQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYL5mZ7i6bEF0b_CUXaG-jHKz4KnSXsBNfs_9M054U3vQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_103430_017067_ECDD0142 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tero Kristo <t-kristo@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

* Linus Walleij <linus.walleij@linaro.org> [200309 09:27]:
> On Wed, Mar 4, 2020 at 11:54 PM Tony Lindgren <tony@atomide.com> wrote:
> 
> > As discussed earlier, here's a series to use cpu_pm to block deeper SoC
> > idle states if a gpio interrupt is pending.
> 
> As you requested I queued these on an immutable branch
> based on v5.6-rc1:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/log/?h=ib-omap-block-idle
> 
> And merged into gpio-devel for v5.7.

Hmm I'm not seeing these in Linux next yet though, care to check?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
