Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B0F39D27
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 13:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxPOS4t7HHpi+49nYtW5Ih7nTsac75xgj1dgFEENZvo=; b=tgK4WAeD6QUv80
	RkXrxzc2DPKWqHhQgx9M+cN6vp7sU9QTm/ErKGMc6ISGf76axv1QUgG2Q0CrmptiK27imbPch80Ae
	xtJIV5gO4/JQWBZGh6NzoLe5Va0Sz3HZDHXIv4ZiieBZoV/PHkpvI+k9zJG5b2NZWjGxJqHk0XKzJ
	eeq1wk65sQfNQR9unS+AqEmT68gcp2aNerr3ZASE4pPIgP7z78KS7abue47ROkb/AUAZqmIJoDFi4
	3NvWaepDkw7TXhSvtYTKWVjDShO5ESeAuH3kOdGWyRc+J4hIxyCFLyDcTyBCW6ozlAFZcFNZV8PHA
	deF2xovAZL0k32rhUJbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZZQG-0000yO-4E; Sat, 08 Jun 2019 11:22:08 +0000
Received: from saturn.retrosnub.co.uk ([2a00:1098:86::1:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZZQ7-0000wk-AQ; Sat, 08 Jun 2019 11:22:01 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95]) by saturn.retrosnub.co.uk (Postfix;
 Retrosnub mail submission) with ESMTPSA id 96F479E9182; 
 Sat,  8 Jun 2019 12:21:49 +0100 (BST)
Date: Sat, 8 Jun 2019 12:21:47 +0100
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2] iio: adc: meson_saradc: update with SPDX Licence
 identifier
Message-ID: <20190608122147.7affaaaf@archlinux>
In-Reply-To: <CAFBinCDETXBGm=_TCJUU4dpkvevbVfh5mAeYD6-O94sRHJnFbQ@mail.gmail.com>
References: <20190527134314.4340-1-narmstrong@baylibre.com>
 <CAFBinCDETXBGm=_TCJUU4dpkvevbVfh5mAeYD6-O94sRHJnFbQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_042159_491933_9982023E 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 May 2019 20:03:18 +0200
Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> On Mon, May 27, 2019 at 3:43 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >
> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>  
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Applied.

Thanks,

Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
