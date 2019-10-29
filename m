Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3900BE8B59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1UPJC5U2eiIgKhwXAIE9NBUMTdvn0R33rRm6Sf3tvE=; b=DmT0uqh3KlW4ew
	BufFA3qRZcK3rlgrNfF/EbHm+pbmCflPBZK1j8EPIeDHGWYt+LIUcCnjLUZw6VPvXBXJvGtyksJyv
	2PuYpMGls0T3dVSSyT5AMD4JmP1iMEbdEk8/3gkMLCxPoWS+1CNyrAZ6884eaP/iZ33UbvF2HPrET
	b+dn4yRUUVSH6pdTbevuB0PFdUcuC1l4i6nJVDn+AwxZ0eksnKGxijzkrlW7wUEsIA6xil8y3i1qv
	91nhYwzqhtuX4TjH60K0hwNJ2yt0E7KzNI5coOi75cstbNq7Ow2iRhHrZ730iZPhDwlM7l2RQg6tI
	No9ZECPpPvY6JkUQ9Zmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSxG-0006l7-J5; Tue, 29 Oct 2019 14:58:42 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSx4-0006k9-Ab
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:58:31 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y129so8927793vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 07:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xjB+ZpmO3twByAPR+4L+mHm+DrtDlohe88jo1dKnnjc=;
 b=oaXpskJCNt4XXGtwMjTYcVHqnsYcgfy+b60L4FecmVgfx2bvqI3yhshilu7EhsJGED
 HVdSB0Mv5TcTKihKo/g4eEfeVwotJc2pI/ADqKHZEUoEExQ8N64ZUrSpvrgw7sbAwcUo
 G8C1XTdibyo5hC2gTMCccdjPP6Z7mxoeFR5bZbqRMZsoVWGGmDx8HQchm2K6hW0QYpRv
 HRjGUXBFVueW3Q+RJJFP0NnoifQLM3IFNuHcGmbETxhTmNvuBTS6uCiEZGdBLtOEo9uU
 6qxbkxwqypztHkWqNz0CPNUGK4ythXELpQL7YDWxZ7XSIYBgmIgmz8a8hl717594vq9q
 f0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xjB+ZpmO3twByAPR+4L+mHm+DrtDlohe88jo1dKnnjc=;
 b=dPDM+9sy9nw5HFU9MwFJBDViDJilGpUmO/v+t0Ldyph/cYsb7unuzmLK9Ih5Tsoqzs
 /W7ab11F+kB9YOamWHPDmNJ01Y2C5En0A2GfNnDWc89yFCK7w2p1PcWSxyeH2STnZn7p
 Ms9Ou8TG5Zf+00Z76+lf/2ZsgFEbSG8d5eM2qiB797lYs/9EqzrWlgPMu5BOyjGkEeR1
 +2RaZbVarNFH+vyd0uo6fNJg+bCnv0x7e5VfSn2XbLVIlQ/DlLAsqfz2gJ46ZTxOEpFi
 X2mIVqwSPj+mb9THt8eM4gnnDs7DbTvzREAQNONhHvSsUIYtyT4o9AWUgAi1KIsEH8G3
 2p6A==
X-Gm-Message-State: APjAAAVqKVJL4D/75fyinSMHIy3a5vC/iTmIVWhwGCpi1xsmhb+2/FDi
 wMfgFqPdfBIm+ItM7CudgaAkGv8C9t0LZtbphEr8fw==
X-Google-Smtp-Source: APXvYqzaI791KOXBIBsCJiL8FxnvMrHuQCjh4l15hmm8Lf0ZRw6g5PMTkXCt8PXFzSZIcrNtpyFpJt2Gtasg9XBc6NE=
X-Received: by 2002:a67:7944:: with SMTP id u65mr2109606vsc.10.1572361109404; 
 Tue, 29 Oct 2019 07:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
 <20191024202703.8017-3-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191024202703.8017-3-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 29 Oct 2019 15:58:17 +0100
Message-ID: <CACRpkdaD=VMvUuWfwn+aa=G9rKC+=eiRVk85ghhDWXWshKQRaw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] gpio: Add xgs-iproc driver
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_075830_373939_F97FD54C 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 10:27 PM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> This driver supports the Chip Common A GPIO controller present on a
> number of Broadcom switch ASICs with integrated SoCs. The controller is
> similar to the pinctrl-nsp-gpio and pinctrl-iproc-gpio blocks but
> different enough that a separate driver is required.
>
> This has been ported from Broadcom's XLDK 5.0.3 retaining only the CCA
> support (pinctrl-iproc-gpio covers CCB).
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>
> Notes:
>     Changes in v4:
>     - rename the config option to GPIO_BCM_XGS_IPROC and place alphabetically
>     - sort #includes alphabetically

Patch applied, great work on this patch, it's very lean and clean now!

Got a minor thing I wanna look at, will send a patch on top if I find it
useful.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
