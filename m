Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6561F4682
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6y3MJxysYbIl27TcUkUvusOb/ztoQqOtHse47hngNBU=; b=H+D+4GOx6aFJek
	zHaSZ/4SXpqEx7gHuWWRJjmuRFFY76QF+rUmUQCdM24m3xzE4JFP5po4tp+7V2g6dREp62UwPv52f
	/ez5lRicc1nIoltPMnncRYFM/JxyXjcTnMZI7KZCnwxvpshh9BbgxlZFcPncyNSbzxgjTgBjXaLHI
	iO2bFj3rWBwmZ51eVNqqHQiHuUR11J0GVX6xncGLUwkqDV8UNbjD279xzezNHY7WrKuvvE5xo45Q6
	mkemkmEFPEwv87t76tYO7KKyGgM/nhmerXULRrU6nP3N3/mZ4KflRBZ5zmWbiIMepTd3b6PistKvq
	Ye8PX3kxjQQ9XRmbMGrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijEQ-000742-50; Tue, 09 Jun 2020 18:44:18 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijEI-00073b-Bt; Tue, 09 Jun 2020 18:44:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id x11so8376042plv.9;
 Tue, 09 Jun 2020 11:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uU2WSCc5fTUsgnysxzRNJxs8r/CkSU3tfyTjN091RxU=;
 b=p9vwKPysRmyJpJidWcr/XZ5LPsj43gV5ylOJjIZy175anrIA0q0aXevn1w6L/tHw/2
 CilRpz/A8s2Xgv66x+c5mJz9vnhs1M0AgkR2ZcF8llNB8ODgtv7yARYe8yqWxe67VcSl
 eIXVmSioCEdDx/33i6p7MvUfrvtYy0/HDQhyuhDHJ58n7e+r5VBzSLiCXZSxfQG0tRcR
 HhEnSrEO2ZuW9ibsFl4klHuJQsc7z0gSzT+Z3WRuhOoCOCAzEQ5MKiVF31zRcd6kdTFq
 FfHFfprwiRoFz7vM50w46S4UN0PGMn6qorzg0xzKNinpDPZFMCCj1pEYjInhfYtc+Hwn
 77PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uU2WSCc5fTUsgnysxzRNJxs8r/CkSU3tfyTjN091RxU=;
 b=YdPifw0bMKbBLjm8eJTkxib4xfzFfnrE/JRRcBvAYiuvbVz7XmcQLiTNfc+W0xnmYW
 yxlT5hfkGs0LO4IR7oy5GhMy8iBvJLBtwpT4N4vCVNzU7khc4C7NjJm2EYqTS9JowvEv
 HU55472OIpUkVgSziezNkduzGCxRmaAM4Cg9t0TwHcXAmllYrs1ipmQDledTydUbVFoT
 3qYedR3tGLMORx1hwyI7cxeTh3o1UKpYyWtm2XWMP4ugRMdPQ7ZMkb6ovi3S9sHQ3XB1
 +h0kX+6QFnFYCfYYu2fmgTjmlMx24rRTuJNiMkKS+bHtLeCxVChZJaP7wPmfXgzGrnIy
 qlPw==
X-Gm-Message-State: AOAM532skbidNGk2WbMr41yh6XgUlE0OoX+DKEs56+3LXVKdqeEzD14B
 FWf8QVO5An5nJ88pACXUecnliCozZGZsX80Gn/8=
X-Google-Smtp-Source: ABdhPJx0RiX4lxJ3jtBScoX+hSRo7BJa7PbBAuUa09WsYVDwWWg5oyAqW2t/Zz4dsplunUK1BR4yGxVPksOs9RAEVnw=
X-Received: by 2002:a17:90a:b30d:: with SMTP id
 d13mr6162606pjr.181.1591728249457; 
 Tue, 09 Jun 2020 11:44:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-8-nsaenzjulienne@suse.de>
In-Reply-To: <20200609175003.19793-8-nsaenzjulienne@suse.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 9 Jun 2020 21:43:57 +0300
Message-ID: <CAHp75VcxjpMYgQV+Mv2_A6gT+qkG_Kihe4Ke+avJ6e6UNdZCnA@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] usb: host: pci-quirks: Bypass xHCI quirks for
 Raspberry Pi 4
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_114410_453871_97487077 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 8:50 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> The board doesn't need the quirks to be run, and takes care of its own
> initialization trough a reset controller device. So let's bypass them.

through

...

> +       if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483 &&
> +           of_device_is_compatible(of_get_parent(pdev->bus->dev.of_node),
> +                                   "brcm,bcm2711-pcie"))
> +               return;

No put?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
