Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E112FA7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=upKjhHfpaYN5jnMgj6o4mmqSe4ozA+9cAF2vcXN86Xw=; b=QNTnUMpcSpDWJy
	hxhrCFFtHvygYWHa5Qd8AYhB2DT1vw7yLhMwUvYBe1oik8JcDw3TjC1tNCVth7S8qTFPOYl8WKP1t
	ktTu1b15WZzywj0Eq6sXpgG4i6dwWxLXu9yp5p6u8nVE1qXdY0wxATD4EzdaZ1UdJWBlfW5eO16hH
	1iBlBGBFU/GVRD40qbFjczDAVlMyE4Xyln1FdAocgI3QiaN6IBvdDGniTO+o3n2k+5T8MoLYndI8H
	Mr0DrtbpGveyohPi1JTLxiGVSgUdM1zJSWX7AyKQGxaSmeZScSL01X2xyCCBzkZ1AS7XMPvCBsWs7
	3rujQBaShZ/eVcVc49mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIZZ-0007oL-AG; Thu, 30 May 2019 10:46:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIZR-0007n8-UD
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 10:46:07 +0000
Received: by mail-lf1-x143.google.com with SMTP id m14so4602280lfp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 03:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FdyLDySyY2SfWb2BuTzN6z4FCYV5XabX9rJWqR8bNUo=;
 b=dH4UjsVPdRxIrhyFCWNDyKaIpXukZkvi4I4GP/2IQSxsiAe0eaPC6XdSkLv4NRZ3hb
 I+vouiLDA22w6rl2t9eKwt8BemL7XWPQEb7AB1rNTPZ6OQ5yc8dRW0oN14V+EPAH+vwg
 pAJBiYG1dcdfsbmE5MGGnzmfIGuW6XzJbhTi7vVH+4tLZn1cBOxIl2SEnsM7XHLR4vPi
 CX2xpKPLSFXEJN/8RxYldcfIWpG+QZewkznMcvBGfl2vyiUbFIRmdrRlTE6NwIrXX16w
 VxLTi/zD3RUPHvjfMNAu7lnhqivZxxFcwMLX18VckKwGGBsdKSv5pU4cr632quMPVhfc
 9RiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FdyLDySyY2SfWb2BuTzN6z4FCYV5XabX9rJWqR8bNUo=;
 b=dKTphbQfofTfji18OYVJ19VzesFdoKgHcjXfIAGl4oyjLoDmr0H9gC72YOVDvhPzhN
 5zJbFtmpXZgs/hKc74kuJ1ws4wxih2oXKdVf+xWE7mXXOhHYiTrCZ6mquoyxr597ePSn
 4HdmU95xNfxUM3r+ut/5MbTJ2RjsBd437kxYqo19HoaRkT09Pi9j9OvtaczAn1x2/qgC
 xmOw7qLaXe6HskfM7DMQN/OB1FGnv6W+m0ubS4l61Sznmn95TYxyExTR8DcmiwhP9Wqi
 bArr7azAfUXwVO2wt83afcXTY5WVRsNavN0WNyrRdMBHaYPcMN1CZ218r4X9YUqHtrQ2
 tTWA==
X-Gm-Message-State: APjAAAUvCy6cUsHnXmYtBMdaQCJd6Q37VE62rsFDkeVQR/QNX92QpmdJ
 XfVPCul8WoDXWZixfPtSaQr9Q/jyrM4Y2jcOZVT7jg==
X-Google-Smtp-Source: APXvYqwoiY05tkLHHnJ2HYytNusIfN5SM0hIi0igtjTMShzhp4Mv+LI9yhd+aacV+lEOVqWj45vv9O6aNLEknR4ze68=
X-Received: by 2002:a19:7616:: with SMTP id c22mr1769026lff.115.1559213162732; 
 Thu, 30 May 2019 03:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190530091156.11693-1-sudeep.holla@arm.com>
In-Reply-To: <20190530091156.11693-1-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 May 2019 12:45:52 +0200
Message-ID: <CACRpkdZi3GPjkzyPAXBx2Ffc7DbgLfVhxpBW2q+iMWV5Rfz_4g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vexpress: set the right partition type for NOR
 flash
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_034606_033284_21D01B9D 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:12 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> We should set up the partitions in the right way so we will find out
> what is in the flash.
>
> The ARM Firmware Suite now has its own compatible and proper device
> tree bindings to trigger discovery of the flash contents, and Linux
> supports handling the new type of AFS partitions.
>
> Based on commit 7f8e78ca90e2 ("arm64: dts: juno: set the right partition
> type for NOR flash")
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks for fixing this!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
