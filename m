Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641709AC86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9y2HuAaGuNWYAj2Excb6gDvWj7gv2u3sIOXE6ijC5E=; b=G569sj3LEkSFrg
	2a9bgY3ScdiHAV4hX/CpamPkoxYVOfmhhzMx+F4B5yutBpvuyjCSQZJOvY1NJI4NaW7urruitvuK5
	KUxmydLdu1pez2ycktt2qxlF6Ynh9xdSgK9apm95zglMkwHQeRJh5Bb16wJAXwL3J+VRppscuIMXX
	ngcvQnpLZ+J2ixnDZjvEgY/J4xP5K6uqYMjR2zP8BX4/u7997x2Nuf0cwQT8Cp9gHNOvJAZQ/B/OA
	oYqtiUW1Gp85gyHVcTUpQ+H28O78AD+U2GMOLMgXKgitO+DA+aDAYCurEfMVe9lOm6fDtQZ9Nj0l8
	pjciQAhOh03PEWQJHE/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16U1-0000aO-Oh; Fri, 23 Aug 2019 10:07:49 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16To-0000YS-IM
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:07:37 +0000
Received: by mail-lf1-x144.google.com with SMTP id 62so6708663lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 03:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qf0tKIGUzLMHo8897bxI7RBcbf3ra5As2xUShZTHVXk=;
 b=jE9gw94w/pgz7UVZYcAdoir7gdHC599uaFqAZfv/f+xhZWcVIzW5ycibkKiuc64Fij
 2v4MmF0EjLuSL4ozfNyabI2Cc/9hXbI0/l/SABfxMRUQavmZTxEU/1lU8V+4aZQ2q8Ui
 EKZdNO+7tNhDCjhevzqHhf4C+hZUmRkl4WzOqEr4wvi++7J1ScnWHKKyI1Vl/wCB8N4X
 UdG8vhkdJVDgmJ/eHPOJPZ0VvHYVn98u2Wjy2/iNGBFAR/AabPqBsR3aiOL3+g9VEOH/
 1blIdDdH2RH0IUiC0ieXO+TdZFiJnlJFCrkbsHOZ1+tb+sGi/F54Zm4fSWtYHKthO+L2
 hLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qf0tKIGUzLMHo8897bxI7RBcbf3ra5As2xUShZTHVXk=;
 b=HxEbNor4Das8G17kQRAvGGuR65beo+BGyPwr4SoPO42l159jMpwOPpz8yrKm178YnL
 2ccoe6axsiILUVmemqRDmtLng6qtHzQ1jb/KTHrWFy50wVXpjR4nsNT6Q8z/XtgsAHKP
 OpX+UbIXAOPzQex8e1sZun/d+CJtEM9i9xBtecXz8EKjnUu35oLp4CjQ9F2jL+4y/gEy
 yExjhWucrIwxiJGXbIvl1NAjOocpctmuwnYqSHTMoLJnylDMB2ChQ5ggySNtiJcLrZJm
 0bFbTyDcY9qxdfcfubTzIbnHEVV3TPReij6CIH4MSFkhZYpLH74WIG+bi0YEKigOW3RF
 1n6g==
X-Gm-Message-State: APjAAAV9opS+EbvKhZ0Fs0Jrg9kxX561pA8d54nu3k7vCAlnnxvNxi8F
 SxxbR+5mlFbANIiiZDuYhVUuRBzJwBDMDcyEUpHIwg==
X-Google-Smtp-Source: APXvYqz/i+Y3ogiFU/vofGIhUoKotD90TSylBi/yYuyP+ATnMPS5RQPyrHi8LuwHLISNXwEhRblFyeyDZpGORCQSiqo=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr2378472lfp.61.1566554852633;
 Fri, 23 Aug 2019 03:07:32 -0700 (PDT)
MIME-Version: 1.0
References: <1566547041-20804-1-git-send-email-chunfeng.yun@mediatek.com>
 <1566547041-20804-4-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1566547041-20804-4-git-send-email-chunfeng.yun@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 12:07:20 +0200
Message-ID: <CACRpkdbr9PjFAvrq14DJmX1OSKYJxYFPaQZpVJaT_Q1_DUW=sw@mail.gmail.com>
Subject: Re: [PATCH next v10 03/11] dt-bindings: usb: add binding for USB GPIO
 based connection detection driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_030736_612878_75324346 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 9:58 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> It's used to support dual role switch via GPIO when use Type-B
> receptacle, typically the USB ID pin is connected to an input
> GPIO, and also used to enable/disable device when the USB Vbus
> pin is connected to an input GPIO.
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v9~v10 no changes

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
