Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A784B69B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpxAEdYodysNC4BV39Is4h5z3chber0sRrPv0JPm0iw=; b=EKEN2dJVQKSfz2
	8n0kLjj09XcEvkbe5dKjPKHkN+cSeMFGowm9UxHgz77Ab2HdE3+9CIRlkLdsWIJJQQTocsLadm4/K
	jmz7xdoe0suPI1SVdC7+OVK5DSp5xXbo0viSAAGthLi+psUJnwZNSyAJ1SGxHJVGHHXcPKqc9EUo+
	fxCkinKMULz6P74c6uP4qQt17jzMPVIamI4SHFFJpmJS8FqGMYk0C82UlRUDbZn58zxFJ/9r1oW2F
	VBU9m+lrkdWrK4nb4FB++HZ6KyKA5o8hNMJtz4kYhFQXpvE9wX+BfPHGzMZ4f4beO1/kkE5JygBK9
	UQ5xQHDe/3DIABUmd7nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqMi-00007i-IO; Sun, 28 Apr 2019 20:25:36 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHO-0008FK-QV
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id j20so6376069lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vR0EZmVWuR8x+Q6STeXISOjGBzT9hMwBSs9rYX9xwL4=;
 b=siJOCUJGMfw52dfywB23WSToCIBqxa6UbnLAeweudDa2cJfJeYutFGhHkU5m6GyG3q
 C1Q1xNPQm2a9QpZkiH91QsRzvz8s9gtXrDqR6ydcw9/D08+w45ukSRTPHtkeC8efKAXx
 knPMsKQO4gHmyyy8nQ/aC8QCDC6YCkaWgVoh4t/PVEQUehK7K/rXX2yRzDdlQABuKav6
 Or6nRQv+g/Gid64QbccH0E2inuY+cAXmdfZMvelIvqD8s/n4WV7RzrWiUWDwzjFUnzVi
 XpvdEN2Y1e526vHx2X1QdONZVZxePtXruHJMpqEy5/VjEys7r9Ryw5moQqnN2VDnZ8Fx
 IWTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vR0EZmVWuR8x+Q6STeXISOjGBzT9hMwBSs9rYX9xwL4=;
 b=hj4JNZB4rbf5G8i1nVB8l5qouQIfjAMY4EKdrl5S3HzRNv2PtI82jsfa0Qlbv8UUg1
 qFPPG9xQQ+S7xhFH9KzA5mGV04hjYZCvTJAZOBpgubkz95qon7c8MD87uAenimvqGW0T
 3jsBeFeigPrIp7Scr7hDXOHcIvhIAOUkH95ZagD6VGrecDjRa7dPf4db3rEBCWxwNBDj
 htr+hxQp/Uz5GqV9AS6GnRWCxf6FUzjjnZHzP8FdnEKBc02nL/ok5pEanDAb/AUfj936
 nvtR3QREedPx5jntOLm7u2lRSTu0jjq6vOgGA6hGwe2fx3MB4VYmhcc6bmT4jxr8gdHP
 m66A==
X-Gm-Message-State: APjAAAVmQjNpWmGG6fuAF2Jw/BxvLrgRMeiylPqXH11RgcrlbRSW4kia
 T/u8AEnBhX0kzeBmaru2q0CKtA==
X-Google-Smtp-Source: APXvYqzwtfcTaFrsQTD82Ax6aNCuyfD/Hs5QggJ0HUdeKfLEjeAzxhbL7GlpetTag0IWnJVOefM+OQ==
X-Received: by 2002:a19:a40f:: with SMTP id q15mr26804283lfc.121.1556482805292; 
 Sun, 28 Apr 2019 13:20:05 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c7sm7605546lja.90.2019.04.28.13.20.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:03 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:50:58 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 3/6] i.MX DT bindings update for 5.2
Message-ID: <20190428195058.fe2bxgoo2twhp2sc@localhost>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-3-shawnguo@kernel.org>
 <20190423020323.GC16166@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423020323.GC16166@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132007_270234_309927A9 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 10:03:25AM +0800, Shawn Guo wrote:
> On Mon, Apr 22, 2019 at 04:28:33PM +0800, Shawn Guo wrote:
> > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> > 
> >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-bindings-5.2
> > 
> > for you to fetch changes up to f0e79eaf310c61cf4dee08dc9783dda55ac9f9ce:
> > 
> >   dt-bindings: arm: fsl: Add support for ZII i.MX7 RPU2 board (2019-04-22 09:00:45 +0800)
> 
> Hi Arnd, Olof,
> 
> I updated the tag to include one update on i.MX7D ADC bindings, which is
> being used by ZII i.MX7 RPU2 board.
> 
> Shawn
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-bindings-5.2
> 
> for you to fetch changes up to e2c7f52bcdaf6ee24447cd7bc6100702c0b0f777:
> 
>   dt-bindings: iio: imx7d-adc: Add #io-channel-cells to required (2019-04-23 09:48:46 +0800)
> 
> ----------------------------------------------------------------
> i.MX DT bindings update for 5.2:
>  - Add vendor prefix for TQ Systems GmbH, Rakuten Kobo and Menlo Systems
>    GmbH.
>  - Add DT schema for SoC i.MX8MM and i.MX50, and board ZII VF610, VF610
>    SPB4, i.MX7 RPU2, i.MX7S TQ MBa7, M53 Menlo and Eckelmann ci4x10.
>  - Update imx-scu bindings on resource table and general interrupt
>    support.
>  - Add bindings for i.MX MMDC memory controller.
>  - Update i.MX7D ADC bindings to add missing '#io-channel-cells'
>    property.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
