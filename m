Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D598D143
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvXUGRsZZhrxDGmeLOLAEUkQWOdIeUp/JziAtLTGeS8=; b=XNl1gjZD52BrIu
	gAEq+ZW+NGoBY4QDU0lBrVnpxHVm/yNuBcaQ5+AAj5D2UPUbmRdG1VNvQKyrcxeYc2hG8YXPsxq3m
	oaUd7ZDIDTWk4EGq/pXXiLCF424WI23JtSAjXCiAc+X/xI+hyPKM3R5ZL0PnI4dGQ96wemUkcyBx0
	DzFSDJuDpdG3BGjvwZ5IdJw13YLH+kIqBrXO+KMK65uEkGNyS3J039biOfQePCekz0arRcn5LDRwX
	eF5rMZbjz1EnTrmsZET+uj4tdeDmHe1j6uujw51h784ELLPBFuARCpQqq8nzPPKKmprdzrW29/5SZ
	xPGtCsW9acj9Bnb4IUzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqpn-0003WP-SK; Wed, 14 Aug 2019 10:48:51 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqpg-0003VP-EO
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:48:45 +0000
Received: by mail-qk1-f196.google.com with SMTP id m10so6917883qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 03:48:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Pd2kynJ3XCWkX4RKcVEYfgPLi/9H/DDd0NVl7yQPeo=;
 b=rpspFc1H7HmSVNFuho7fSv1i66JMPWyjsC5QowgUH/K7a3qF63NLqIgDlJIoaFJq/n
 N3F9Nku7z9uEGghgsm98MhofHZaXFSBxeQbVI44/s0vsIcB4EhL1Nh6PzJPaoiSfWRGK
 tdhqcB4vciAfG9D2d3QALs0TvXi8QgsEiV3Y7CBATZtrRfnnuxFYZ8ZbBVMO36ja2uDN
 zjxgzj9jRFCEIlu4ra+AuKH2IIlUUtPItOfp0SFaYv8/u7Yg2QmNsdgP3t0NeUfGNUkq
 21SvZ/QTz0TYoehev9JV3uXGG5yeYvpwy45s9dLRSB2WNHpOTHJImd6vUHjTdFVALX+H
 QIIg==
X-Gm-Message-State: APjAAAVjfOXoRC5UA1gZR/ElwO1DeMGYHaAKWsOonQHTzyFkVUCCFkX2
 tHwY5dZ8XeSbBgfOVOhE/p2MdmTPT8SyZQ/+z+c=
X-Google-Smtp-Source: APXvYqzJchKTdX84186eS/GRemJU2ycIuCn2KmHcwgWMevAGnRcm51YC1Y0PGo9zYEARmcpYhVr0785iqWnXPMYbu7s=
X-Received: by 2002:a37:4ac3:: with SMTP id
 x186mr36177300qka.138.1565779720761; 
 Wed, 14 Aug 2019 03:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
 <20190812094456.GI10598@jirafa.cyrius.com>
 <CACRpkdao8LF8g5qi_h+9BT9cHwmB4OadabkdGfP0sEFeLbmiLw@mail.gmail.com>
In-Reply-To: <CACRpkdao8LF8g5qi_h+9BT9cHwmB4OadabkdGfP0sEFeLbmiLw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 14 Aug 2019 12:48:23 +0200
Message-ID: <CAK8P3a3Jtc-hgP+st=oDUF2hWkLK7CCM461YSA2ks3dqcv-W7g@mail.gmail.com>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034844_485696_5CBB7A7A 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Teichmann <lists@peter-teichmann.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, soc@kernel.org,
 linux-i2c <linux-i2c@vger.kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Martin Michlmayr <tbm@cyrius.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 10:36 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Aug 12, 2019 at 11:45 AM Martin Michlmayr <tbm@cyrius.com> wrote:
>
> > As Arnd points out, Debian used to have support for various iop32x
> > devices.  While Debian hasn't supported iop32x in a number of years,
> > these devices are still usable and in use (RMK being a prime example).
>
> I suppose it could be a good idea to add support for iop32x to
> OpenWrt and/or OpenEmbedded, both of which support some
> pretty constrained systems. I am personally using these
> distributions to support elder ARM hardware these days.

OpenWRT also had support in the past and dropped it around the
same time as Debian. The way I understand it, a couple of platforms
including iop32x were moved out of the main openwrt source tree
into https://github.com/openwrt/targets/ because there was little
interest in keeping them running.

The idea was that any remaining users could add that feed to get
minimal support, but I'm not sure if would still work. In particular,
iop33x appears to be based on linux-3.3 plus three patches that
are no longer needed in mainline. Building a mainline kernel without
those patches may or may not work.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
