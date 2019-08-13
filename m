Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3E68C37A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8nB+Bz4MGYUAUSWNEhBfcGLKyQZT7usDrWi9Tawl44=; b=G8JBzFGCqYD7I3
	2y6RV41bBKyJz5pl8YhA09WwUkkgbpw87nIWZzqN4DFm/YMo3l1WkRToWC7tYPhW2hu473VRxaNww
	12cUcJYZKDZUz6fkv/RSbRak+lGSZRrqs8cChdBbwDEDKNOTR0mZ2Ve6YWoia9IOT7T+i1YvBIwac
	cmLmaOdXN0V+Ht08NdL5gWnBT1+euIFXUw5z3sZ+EHqIEZ5Un9x9f7oiHf7GX/WtWHoLKW69hRBvJ
	9V7Ek+Ds0aS8Ui1wR/gjn53kYWrM584d/44XxahIFYMc6PkRmyrfSjj9kDC3BLs9khBJ1davVdeR1
	WFfGx5E+u2Nc+7sUBRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeCX-0003DW-IO; Tue, 13 Aug 2019 21:19:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeCK-0003CA-G9; Tue, 13 Aug 2019 21:19:17 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 758A620844;
 Tue, 13 Aug 2019 21:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565731155;
 bh=JBsXkG9yjV9pbDty8DqzOGotTUIFrOYtaCE16hbum0E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=crdeyHeUCm2qAB/OFjwFqysrHfSLR+UetxBzbXV/OkhxIzZfVtCcy8QUXWO3fAxFd
 2KmAbggtL+55hUlR84ISmfdKkirvhsBnEQBoP/uxSi32b2CwTR1v2IV+trggF1jN+B
 8eECl3mkn8psCrRYD3Xw2D9PO80/YYBYHiSRZJFw=
Received: by mail-qt1-f173.google.com with SMTP id q4so10742519qtp.1;
 Tue, 13 Aug 2019 14:19:15 -0700 (PDT)
X-Gm-Message-State: APjAAAVaNsI4i5fgA+H9eRGVmR9ZsaJAZ7kHJQZKND2kkdQbiqqF0ori
 w5nkUvQmBmtZXIfslLeYgSTEfKWuxkOZlXZ/wg==
X-Google-Smtp-Source: APXvYqyYbgP4TBRZegMhEKfIghK9abGk/VBtufyF+J98q6CTeTofBSY0orANz1i3T/gclh3hbfmdnJ7cT6pao2tVfEA=
X-Received: by 2002:a0c:acef:: with SMTP id n44mr228291qvc.39.1565731154671;
 Tue, 13 Aug 2019 14:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190808085139.21438-1-narmstrong@baylibre.com>
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 15:19:03 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+rBUWCBo0CnhnJX91o+8QF4gO5cJYqFgKEJeekAeuVxg@mail.gmail.com>
Message-ID: <CAL_Jsq+rBUWCBo0CnhnJX91o+8QF4gO5cJYqFgKEJeekAeuVxg@mail.gmail.com>
Subject: Re: [PATCH 0/9] dt-bindings: first tentative of conversion to yaml
 format
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_141916_555997_F70DA46B 
X-CRM114-Status: GOOD (  11.24  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 2:51 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This is a first tentative to convert some of the simplest Amlogic
> dt-bindings to the yaml format.
>
> All have been tested using :
> $ make ARCH=arm64 dtbs_check
>
> Issues with the amlogic arm64 DTs has already been identified thanks
> to the validation scripts. The DT fixes will be pushed once these yaml
> bindings are acked.
>
> Changes since rfc v2:
> - Collected Rob's, Martin's, Philipp's and Guenter's tags
> - Removed mhu maxItems: 3 to leave only minItems
> - Fixed flash@0 in spifc example
>
> Changes since rfc v1:
> - Fixed bindings according to Rob's comments
> - Added commit log
> - renamed yaml files using amlogic prefix
>
> Neil Armstrong (9):
>   dt-bindings: mailbox: meson-mhu: convert to yaml
>   dt-bindings: rng: amlogic,meson-rng: convert to yaml
>   dt-bindings: spi: meson: convert to yaml
>   dt-bindings: reset: amlogic,meson-reset: convert to yaml
>   dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure: convert to yaml
>   dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
>   dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
>   dt-bindings: serial: meson-uart: convert to yaml
>   dt-bindings: watchdog: meson-gxbb-wdt: convert to yaml

Series applied.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
