Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C57E9E744
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnQ6u0Hc65318GGCWufR/fcQzj0duWRQXw34DyO0qxU=; b=cDkRQumgzEbYMw
	tQCFF7nrQL7GHX6O6/XOGn9uq35jjjaPyiCtJzyDSFon6CDYNqCu74Gt/Q4yIJ0AV6GPjxG+nG2vw
	szvJjGIaXHnYAOb/JnYaMWw/bL+7FxPT8G8rHKccLOhwOJAH0jfFBBMwniQmqjtiFMAho/PJCNrcy
	ICnTn/TvjkTvWoLiUhd7VsXjND78UZSDUBmiGt3ObtI8+wSmbAO0XKoVJs1lWe1HGL5T+wsVLWdeC
	Lkd4hB0VGH8RPwpcaiCH1r+H5kUyhSM0B9LKDwR7d7thNogDrRh4YE5kyDAVqpEQtM0a+R7TTgoct
	yVmScOAonettRnbzGNbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aAB-0006m5-TD; Tue, 27 Aug 2019 12:01:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2a9w-0006lh-Ge
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:01:13 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 110F322CBB
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 12:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566907272;
 bh=+qDRaZrhhb1AnXiN2Q6owroXAmMbmaNMt1oSngi0vxU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kgZKzWyNadkQtNARRc1kbQlQ/WqYEk4l/taMGSezQMcG60hiIgIYMg8ExvVaybs+u
 zFUlKdXzmw5W7d5bGWOP+KluMTFo/rBz736H6LPK53jWo6joBHjLJlWy62dw/9dzDx
 ywdb4M1KVJwXKM2jHpcQb3T7eNKK2nS7SDy8kitU=
Received: by mail-qt1-f176.google.com with SMTP id l9so20952236qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 05:01:12 -0700 (PDT)
X-Gm-Message-State: APjAAAVlysfRzBMBhZmRCCHt1JUZahjvzGAWWNunKWwr4mFD98RXEBOi
 bL9V6cICpFDSVRAhF+QFA5ZMJEjAJffTukNCNw==
X-Google-Smtp-Source: APXvYqyEt2vkODWvj59K6AZBb5LQezLcB8zz2BLGw5qL8r/voX1ixWgv8a0d3shB2fnZUTj0/du4MZQda3++8ScIa+w=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr22661391qtc.110.1566907271254; 
 Tue, 27 Aug 2019 05:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-4-lkundrak@v3.sk>
In-Reply-To: <20190822092643.593488-4-lkundrak@v3.sk>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 07:00:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKb4j5Yz2RvOY=H7iCQzMS6Y6pqhkSv+CLzQ2L=jzSHTg@mail.gmail.com>
Message-ID: <CAL_JsqKb4j5Yz2RvOY=H7iCQzMS6Y6pqhkSv+CLzQ2L=jzSHTg@mail.gmail.com>
Subject: Re: [PATCH v2 03/20] dt-bindings: arm: mrvl: Document MMP3 compatible
 string
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_050112_578453_DEEBFB20 
X-CRM114-Status: GOOD (  12.28  )
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 4:33 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> Marvel MMP3 is a successor to MMP2, containing similar peripherals with two
> PJ4B cores.
>
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
>
> ---
> Changes since v1:
> - Rebased on top of mrvl.txt->mrvl.yaml conversion
>
>  Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
