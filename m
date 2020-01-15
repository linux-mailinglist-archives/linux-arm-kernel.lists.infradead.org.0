Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4446113CF8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 22:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIurQBvmF4Sw2uwD4Z3vJ+xd9JQLQL4G8EOlTiWu7Xc=; b=LLsDvGxTfMWCiL
	h1yFmkk3v7ToFi6otnvjbax41MpmO5FYWnmi6qOboVyfjKYe6+iLoAabg/Z74uuuthCwIDjGmLZJ2
	doWnNfHe6MKJpvIHIbByvrO4DvetHszCL1y78j+iMH7xNSprbWPpttIb5zBzG7D4ya/kstx3kE9YY
	DOniImnR2BzUstltdJY+iuIVtKQvGtoouCRlG1kMNYTdwqkGqgbPr7xvws2MpJUnZkRiplsovEAy6
	C21H6BYUExkm6SdBtDzrQJXUXOZOAyk3ZfAdfZ5CJMNqxB5U8p9GNnm8GxG96dDVoSiGyBDw+fJAN
	Nm0wqKWN9vaIQ6NfqUag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irqfg-0002Qz-4m; Wed, 15 Jan 2020 21:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irqfY-0002OI-SM
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 21:57:46 +0000
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 283432467C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 21:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579125464;
 bh=fqJ3cgdhflak8k+kX0Uut8rPPX0mIkcp3KI055/GYdU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tBOqUOCC/hxuRJ1teE4c6OYQxRpqB3ufp5uMDE1InjmLIpLR1EvdmWo8zC38v5uLX
 qVfQbB4yQxgGV8QvVAxE0EB8pp2SafeFSZGtRkVHQbNXZbd42suZ4X3AEVEQhbaLcu
 z4rG3SIDU07GiEeYxkIpEmEIW2PDWx7X5C7u+u+k=
Received: by mail-qv1-f43.google.com with SMTP id dp13so8129570qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 13:57:44 -0800 (PST)
X-Gm-Message-State: APjAAAXvcJCD8K+gsXUDWHN2PSVVBVdhCA4ZEwP6Csnxkve0ote44aHW
 U7MFK/E4LT9vd2rCH7vMJBGBnOCsehlHfGZ3MQ==
X-Google-Smtp-Source: APXvYqwAHtQlCQbeWq+CY8J9zcxqv2xb+B5FaW0KvQ7TuzjbZQrBiC5F7M17O44wnq6FJ6CZL3h2DX0j3QQwkVCVgsY=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr27776404qvo.20.1579125463304; 
 Wed, 15 Jan 2020 13:57:43 -0800 (PST)
MIME-Version: 1.0
References: <20200115194216.173117-1-jernej.skrabec@siol.net>
 <20200115194216.173117-2-jernej.skrabec@siol.net>
In-Reply-To: <20200115194216.173117-2-jernej.skrabec@siol.net>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 15 Jan 2020 15:57:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK-KBd9PF7nKK976vVYjRwfm-ZxJSnEbhiWC=X3AnvpeA@mail.gmail.com>
Message-ID: <CAL_JsqK-KBd9PF7nKK976vVYjRwfm-ZxJSnEbhiWC=X3AnvpeA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: add OrangePi 3 with eMMC
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_135744_940268_BAC72AE3 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 1:42 PM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> OrangePi 3 can optionally have eMMC. Add a compatible for it.

Is this just a population option or a different board layout? If the
former, I don't think you need a new compatible, just add/enable a
node for the eMMC.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
