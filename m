Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE80D7DBC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIU3h9RI3OXcODAjo0cfsSO10aIZE+usrxspx3QaObs=; b=MCT9bMBKKGqelG
	ypg/s+KYQH/OEfEzNAyQZ0c9SMRg/Tr2kr3hZeKEPLe3JCj/UsUspS8P3f5uBl53QCYJFkMMo0F/r
	tLxF3JThIr+TUXLXnCODIxwpfRNWUTAHaqZ2Z8wLqOqDd82ToLFNQKipIjRUWHaIwo/aUZNYnYT11
	dsyGQ2v/i2Ae5VtlrK6ZmhWqE0p5PNkM+nXmkY49MiF4ZszoD+10i8h5FxgnIkeCWdQmS3+QTRAo7
	NoiNaptVPczoUlEYjJxtdMyAepDsI0bxbpoP/EX5CWF5CQHOkvapYIVjaCfbzNTX0oc9cFcuZtRXG
	+UJ/R+v2hMQRWxjw6GqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htATb-0003nH-Nx; Thu, 01 Aug 2019 12:46:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htATQ-0003mF-Ow
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:46:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id s3so64495361wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 05:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cZCY92RMfghZJsFP1Vz0w4UO7UoxBKe+hI+aMfOaKM8=;
 b=vUXnXx5kNtIFZ0huFPiV/HxhJIbQdYlkFxXwCPijUEreVyNC/1pxQMald0tr6/5oU+
 Ku4JTGZOhL69MmV/Q5dbk4vWDah5/JPXEMYMNks43DojB8zmCbVBMLURc1fImEZ3YdI2
 doKD9u7bejJ/UhT/GPcMTjZ3kZuOJbdM7J2rwAqwTZGpSbztlqyjT6hvwS7ltXOWjcBk
 TrrLVnQKDRIuXxZS6tfQvsGHNDhV8M+CJGdf4t3WAuO9zvRHvrl20GzPHvRRlfXh2a0J
 Ljef/yOoYB7o1JF7ZWTjXgMEN9MOgFo75dmzLwOg0n27FcmGHiQyvs9PyZVPgyw/6NZ0
 KxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cZCY92RMfghZJsFP1Vz0w4UO7UoxBKe+hI+aMfOaKM8=;
 b=TIYC81CxW4r6aDafyuft5ROug2wC49jCTM1dP0Nks34kD9aN3sCDFP4I72NQQUMVug
 7+INx7+aaBX4+EbncEMsvjQC7CRBigVpA7GxNrZu8nNJiUlp9uhGrumbu/zlq6rP0IKC
 NZVcs518XiuyjjgbccXUmKq15rL0AB12aRP+k4x6JKBkCosg/50MhDNufv0BkKOAG9Yx
 eG2j2CEoOt9YWr0dkqmNEXhToTjuUl20DYVas8+WgEC02y2zAiRxsjXBEIL6YbgJ8k/Y
 3Frxgqfl45HiGlQNMGNEzC2jNWMEiH3INEftNOa8QlIC4q0eMXRd94FAvzLmKlhAUeuk
 Uo2g==
X-Gm-Message-State: APjAAAV1Yh4eGRwEpBWAaDcNngZlWgd+RATj+bpTbOQxkkZtIc7oaXuv
 ogaE1FsNJ0mb4ka8odD3JrUGKA==
X-Google-Smtp-Source: APXvYqx/EB+krQbuHfDMiwKikaXaFO+7qwPqB2cAqkBDAaRdrKTmsFkpl+/WGtL6bOLXv0IkeDY/3A==
X-Received: by 2002:a1c:3cc4:: with SMTP id
 j187mr110992050wma.36.1564663582722; 
 Thu, 01 Aug 2019 05:46:22 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id f70sm96317715wme.22.2019.08.01.05.46.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 05:46:21 -0700 (PDT)
Date: Thu, 1 Aug 2019 14:46:18 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 2/4] crypto: amlogic: Add crypto accelerator for amlogic
 GXL
Message-ID: <20190801124618.GA30316@Red>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
 <1564083776-20540-3-git-send-email-clabbe@baylibre.com>
 <CAFBinCD7pgUaBJgeGHTOu-uZRA9a6K2kxPsu+huKe23wcnKPoA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFBinCD7pgUaBJgeGHTOu-uZRA9a6K2kxPsu+huKe23wcnKPoA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_054624_808198_41DB0B60 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, baylibre-upstreaming@groups.io,
 khilman@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, linux-amlogic@lists.infradead.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 27, 2019 at 02:17:38PM +0200, Martin Blumenstingl wrote:
> Hi Corentin,
> 
> it's great to see you working on this :)
> 
> On Thu, Jul 25, 2019 at 9:45 PM Corentin Labbe <clabbe@baylibre.com> wrote:
> >
> > This patch adds support for the amlogic GXL cryptographic offloader present
> > on GXL SoCs.
> >
> > This driver supports AES cipher in CBC/ECB mode.
> >
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/Kconfig                  |   2 +
> >  drivers/crypto/Makefile                 |   1 +
> >  drivers/crypto/amlogic/Kconfig          |  24 ++
> >  drivers/crypto/amlogic/Makefile         |   2 +
> >  drivers/crypto/amlogic/amlogic-cipher.c | 358 ++++++++++++++++++++++++
> >  drivers/crypto/amlogic/amlogic-core.c   | 326 +++++++++++++++++++++
> >  drivers/crypto/amlogic/amlogic.h        | 172 ++++++++++++
> >  7 files changed, 885 insertions(+)
> >  create mode 100644 drivers/crypto/amlogic/Kconfig
> >  create mode 100644 drivers/crypto/amlogic/Makefile
> >  create mode 100644 drivers/crypto/amlogic/amlogic-cipher.c
> >  create mode 100644 drivers/crypto/amlogic/amlogic-core.c
> >  create mode 100644 drivers/crypto/amlogic/amlogic.h
> there are two different crypto IPs on Amlogic SoCs:
> - GXL and newer use the "BLKMV" crypto IP
> - GXBB, Meson8/Meson8b/Meson8m2 (and probably older SoCs) use the
> "NDMA" crypto IP
> 

I believed it was the opposite. (BLKMV the older, NDMA the newer)
Anyway, on the datasheet I found (s905d), neither NDMA or BLKMV is mentioned, it is just called Crypto Engine.
So I think GXL is the best choice.

> personally I think it makes sense to either have the IP name (blkmv)
> or SoC name (GXL) in the file or directory names as well as being
> consistent with that in the Kconfig option names

Ok I will rename files to amlogic-gxl-xxx

Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
