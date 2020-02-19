Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72021165343
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 00:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nO3ErE5zW0iDGrXkYA7QnKLOge76rG5LxvgJV0Hrtg=; b=V+6D1PEKDPCUdC
	d0KMXHfxLbgCJgYQ8y6U0L6V2nnDG3G6ilPcEIufEDyrJBD6ok8pmZLbx+bMPRSqFEwGYqtjENlqa
	hFzbPDwCuyGRjQYiTGyhChCfBIov0Oc13P5mVYCTZlsd50Mh4RDjy5lfgjMMzBdT99KwJsBIkZ/Qh
	tkjyxd8qIFYny+vXw30RAytuDyjn+wWBCh96v2FT9xhFHnrGKB6np3uCcNtRrQeKwyPm0fXpGypfU
	yokj0UREjhKLi720kGOVNQHeC0aeOR7ySKCTfgKEHrA0ICR0Rm11UWiM2zaJ7Gp1sgSKR0qrQFbS3
	MfsqSktcjDU/XO48i9aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ZEn-00055y-2V; Wed, 19 Feb 2020 23:58:41 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ZER-0004uF-5F; Wed, 19 Feb 2020 23:58:20 +0000
Received: by mail-oi1-x241.google.com with SMTP id c16so25737794oic.3;
 Wed, 19 Feb 2020 15:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BX9+oiU9NUzGK1+aV9/Uah0G+lhW9/DtCwBAHxWnn3I=;
 b=KU1uqUYVxkoQfS26YEi+ztZu7uQD6NmCYAjnD4WbMrS3FbUgBPMQxL4cToOQRD6Uov
 nHqZX7QwUxnmIRKEcKaP8NEsh/58I2e78+wWxDrpu1BXApMDiJMolk2hwg9CzqcOf9sW
 YE4tYRCZaEyh/x1674lcZY1l/H0F0ArPvwmZIxON3DfEjagSV1uN/AxJKPXKBeA241xL
 WqwyGwfYPVg0aO9XUojnJGQxro+u25NEoqXrbNR09NiA6eBYzNO4I80Q2dLPiRbdLZkb
 04tkTaqeTm6+rrMCyLbyFF+HCBtuFvxa0v0YSX5dAdbBWko9TEenvJpgjmfSY9CevQ+/
 hitw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BX9+oiU9NUzGK1+aV9/Uah0G+lhW9/DtCwBAHxWnn3I=;
 b=uaHmbNI+fHWgYYRGZ/vrLituSI6l2iSFLq4EwM5G1NMTrrH1o0mvO2mn5kyOzE/26h
 1J27xxEyThzRnUzlbkn4d8+E2m6Tj53sidS9dT6hbWkX+FdLdgYsVbPXC5MysvkFZ9aZ
 +8fYXM7BnfrvGduD7cv4qkePBj4f4dLngNssUGMA5cf1EHc7WEzPCqCqzFmrG7dVOe56
 VMKT+LyXLd+mcrrlLG3ZdQIewwmNC0XniR3l2CNav2mj72a+7rEON7OtBmu/3rxsTTYt
 blkEoQhwNF9hNiKUnHWTQhAK1VVpiWIMaML6KrD5xfzOhcd8zYu75IZEiH5qckVCrY5Q
 /Z+w==
X-Gm-Message-State: APjAAAXQrA9GZR/2Bt6syu/PJkJRc0Za0Mpjrg9s9S6IPUtdZCHiv54w
 VWpoHI0CACsZBK5hLhvt1FZBQoPQZOfCEss5N1w=
X-Google-Smtp-Source: APXvYqwRxzwlvasanDAZCzqmiAcIi+8du+kTb0XmBWuXgm+lcYoRDBqJdLFMRLpwiKeOks5taARgUtmAle4aHBvqjI0=
X-Received: by 2002:aca:ddc2:: with SMTP id u185mr185041oig.24.1582156697455; 
 Wed, 19 Feb 2020 15:58:17 -0800 (PST)
MIME-Version: 1.0
References: <20200215065826.739102-1-gch981213@gmail.com>
 <20200218125557.GD4232@sirena.org.uk>
In-Reply-To: <20200218125557.GD4232@sirena.org.uk>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 20 Feb 2020 07:58:06 +0800
Message-ID: <CAJsYDVL03KJv7eewGekBPCfpbOuTX0tJ6qZaydvJnBDzZ5vEwg@mail.gmail.com>
Subject: Re: [PATCH 0/2] rewrite mtk-quadspi spi-nor driver with spi-mem
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_155819_225081_D5BA6EAD 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Tue, Feb 18, 2020 at 8:55 PM Mark Brown <broonie@kernel.org> wrote:
> This is an ABI break so you shouldn't be doing this, if the existing
> binding works it should continue to work.

The missing spi-max-frequency is the only part preventing old
device tree to work with this driver.
If the goal is to make existing dt binding work, I could patch dt using
of_add_property in v2. I saw similar device tree patching for legacy
bindings in pinctrl-single driver.

>
> > 3. removing the old driver. I'll create this commit after 1 and 2 are
> >    applied to avoid possible rebasing due to any changes in the old
> >    driver.
>
> This isn't great as it means we have a period with two drivers for the
> same thing in tree which is at best going to be confusing.  There's no
> advantage to splitting this out.

Got it. I'll add this patch in v2.

--
Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
