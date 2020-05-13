Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655B01D20A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVlJSk20EY6UcZB+IwxLijdNs/e4I4bV8inp4TiU5+o=; b=ojw53jDMX4VXA2
	u15tWloYXudZoX40KgYGSyzFTAE/AQCozLVCE2XjkXV8VZIotgXWmY9PBKfi4yGLSvKVIJsCw7gNj
	2VhFIQ9KmuQRQfXCyQMHjOiqi1+zmIgtMAwPyw+7Dt8JCqmPjkqOJn6amAc1eKwSs1+sAE6eIoSd3
	eHPAXmyHebTQlVG01hqDrPzQ76XwCPNYBFsfsr2w0y6sLZHBuFHkJeRekOPNLHXbl+oRzxWdrPxth
	Vj84IS5SoqLx4PX9i8yly58xkbTM+qxXyi0ZbjTS/c7scSOv98MHfFd7XaCnKaNGXJK5rM0GUvdZm
	KYViAu/ZRp4KCDAhl78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyZN-0002sl-AT; Wed, 13 May 2020 21:05:37 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyZF-0002ri-A9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:05:30 +0000
Received: by mail-lf1-x144.google.com with SMTP id z22so772480lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 14:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3mkbakP9mk6/OGVAN+zcqRwZ0mw26o2wBBxnAQMPvC8=;
 b=ctjlYoCI2PVddAGODZeP/vCogq7hOe4qIy3ofe+sfcwAMob4gdIAaRmpXt71KXM5s0
 elyxHk041/Ys/mtWBq743Pp3GBEijMkoEW78fXv8PSayqdtHKwTbfq5CiTzj/aX8npHq
 nIpW0oNQefD4dLK5VkjPkyi99u89TAPjjYi2e5x6CIc1InG8WJydkkXHex9K9yLUMplm
 ibmtJybyeiNo8Txyyh7I5F7ya12JGjK0GVwxu7OL7h1aYhPxR3uIyeoZeXqdlRZc7GQI
 3bo80UUTP1mCHiX5NGzgD34STLlRkUqgfksgPKZFqZjDDXbntcwq7+mxNlqXS/yIYQxa
 mq2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3mkbakP9mk6/OGVAN+zcqRwZ0mw26o2wBBxnAQMPvC8=;
 b=QqdCB6xDB0b0fQwTXzbBDzlD1WQr+byTZwsbH/jhspgaH+7LwN6xi5ULg17YcxwDEP
 hQraTN3023QyNSx+9k4y7UFJBoe3up0aGgmu2cO2AOJaPNC8TlIwXFt3yajhfGvSHs1v
 TdYaa0u9ekKNN/HMgN4WvB4E/lksByQouA5oKuLMHo1jPnyp3w1jMglGY3cCNYkZwe1e
 Z/yfoh8zOZ2JtwS7iFFWfvbpjjPGn8kYJhNs6n+yw7h4nphLjY8SMXvjECOLyGiXNVWE
 fJOoRBHDJdXbpG2KZmpUbsm8HQeTGOjOQyiOFETxtuAqjFNDmPI2NsNt7KhkZRarZj/7
 UqQg==
X-Gm-Message-State: AOAM5303bNryVNE90GWxzmkz64Q2+H97viXV78TNI4Ezbc8TrQSyna9K
 O9RqC8nzkVmHX95X4YpzIA/iPDJtzVbJEsgOF18=
X-Google-Smtp-Source: ABdhPJylbChycIFwjIQ3xfqgQamy65iiEOk/6igXAS9L36vE1hhqtoddFFY7wG+Xod768Zt281P3JghBCeiQaKBQCYg=
X-Received: by 2002:a19:4b4f:: with SMTP id y76mr62320lfa.7.1589403925952;
 Wed, 13 May 2020 14:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-14-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1589218356-17475-14-git-send-email-yibin.gong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 13 May 2020 18:06:40 -0300
Message-ID: <CAOMZO5BB-bnKF6fQtw+1iGmojrmNHVQqeN3Fu8tHa_09ayjCgg@mail.gmail.com>
Subject: Re: [PATCH v7 RESEND 13/13] dmaengine: imx-sdma: add uart rom script
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_140529_357199_00E1E9C6 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 <devicetree@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Will Deacon <will.deacon@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Martin Fuzzey <martin.fuzzey@flowbird.group>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Mon, May 11, 2020 at 6:33 AM Robin Gong <yibin.gong@nxp.com> wrote:

> Please get latest sdma firmware from the below and put them into the path
> (/lib/firmware/imx/sdma/):
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
> /tree/imx/sdma

"latest sdma firmware" is too vague. Better specify the commit ID of
the firmware where this is valid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
