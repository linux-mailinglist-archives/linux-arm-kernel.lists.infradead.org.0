Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA4B84BFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vunqe80oxIWEPFWM5QlhsJLqdBSAX2Jo615XtbXS7eU=; b=RHD/Meane0uqJ6
	QW/nNvOcgd21fe602KbKx7LZGRxUUhqgXdt4fLRa0AEbJe2eJcHdREjixuE73UpSN3KrowNpFuTrF
	gC6FIoLJ6y+EfQrU2lNg7bnE4kXgM05YCEKzGL+RlkOiDtW/s/Ni5DK8NSH0jOTGGs3xcSbiKfL4L
	eTZ6ZNwXlYO48H4PVBKrRiksB4t1SX9M9pK4VsjMMe2Sa8NJJnwLzkODsIZPuL2jPdSDzR/meUz4V
	zCJETygcHNLpYpMlCnUa4IiNtsDQoXqDXdH8pkz9ZJVerrpxwg4wF+fVQdD4rFnz78zqUtKQdkZB+
	5wFbMh8tG71CXk/djpQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLLl-00051O-Is; Wed, 07 Aug 2019 12:47:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLLZ-00050q-11
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:47:19 +0000
Received: by mail-lj1-x243.google.com with SMTP id d24so85337457ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 05:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lpl1se61ap+ZejSxmdOkypwlEcu3obK4BcH8VfHUlNk=;
 b=ihFrCL5lZs8ycFm7bQncDVE0s35b0Yrbkfp1SA37FaAGye1IyBnGT14EF7+Qx7mXRt
 2BUS3zczviL0HRYUu5yjIo/JXHYZCtngh156+BWpKfAyJ1PhwIHS2xBE9Xc0Xg08xD4c
 kIppNb2BwvocrFdpzbuOvMj45iKqt09auPbZaK8taxaUg4wacVnWOmXik8+JeUPx2csa
 CMXD5vn+xq/IZJyMs8/a/3owUAezmoyFrbUsr15vf3NRbEKdUEl3CrPhtYnkb+cGVZxi
 HaK16rNlm6l3cjn91eFx7N5/RvFn3nNFeAqmJ8+Am0/GuoBrn+zCVU6BIIf5bMQT73XV
 v5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lpl1se61ap+ZejSxmdOkypwlEcu3obK4BcH8VfHUlNk=;
 b=YGspDNrKTMk1y53L04CwrSGLBFsWph+3ieCAJ40fZAa3KsNklCxMx8PmjekYq7cxfj
 EpwqMMFiUod33KFFvbr7zCyyXaxZ42Xc06/8d63ctdvdef0vXW5tsEOOeSKvsjWolzWd
 Oin518OMjDzu31J+lt6cO1zXdanqHMlcRWtQyd85Ttd1i1PKrOCWALl/ql1pFq8g6yTO
 klfFvC/TZPY8Yb7drX1Eo+WVxFO/ojQ8C94Vxiy/qDh/z5KXmv/hOE+Ug2TsLx43rj4T
 Cpi7BjoyABLawAdAs1Lnh4K596MRAV9bhaJyk+Zg8XJ4BDCz5b4MEoqbX2zJz4NPKzbn
 IZsQ==
X-Gm-Message-State: APjAAAWPMY80NguPM0D7GxO+ZRhmu6884hHN9edbpoBi4WmlOwiGpNbe
 ANDBo8QnZxs2DJuMSFBfJ0gh08Z7RgsbRVXPXNXS9A==
X-Google-Smtp-Source: APXvYqzcR1NAhAYYmAXeGpoe4pLb9QvXJ3FeuUgQBsWp1dBnPcreoJqYePaBmIa0z4ZkzF9nBR7rVHvyaSC+YC/S2wM=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr4801970ljg.37.1565182035311;
 Wed, 07 Aug 2019 05:47:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
In-Reply-To: <20190805101607.29811-1-miquel.raynal@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 7 Aug 2019 14:47:03 +0200
Message-ID: <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_054717_076550_76FABBAC 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This is the second batch of changes (out of three) to support the brand
> new Marvell CN9130 SoCs which are made of one AP807 and one CP115.
>
> We add a new compatible (and the relevant support in the pinctrl
> driver) before the addition in batch 3/3 of CN9130 SoCs DT using it.

Waiting for review from the Mvebu maintainers.

If it takes too long just nudge me, it looks good to me.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
