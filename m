Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76297CE3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlLTM35ycqFI8M8QYGLPLp1Gcfg/5YoDBf+fjPi/en0=; b=fjD5KVbZ52OAVU
	seLoitP1GdmDrKX1tdZeug4vSMWCmnu002VzKgBmbTls2Eek2Gov0HuTTh8pFc7XLmxeUFEFqBNZs
	xAMg5jqdvE4lew0BaL0+HQakje1HJJ3MFKWXU3YbRTqJcrM8Grm+947ISOFVNbodMe+7yAGzByA2v
	CBrgYrhxoxvDpWkCcggKy6dFSwBdqaTVwknR/4amBW0XFHl2i81u/q9z2n0DFp6u2PJORHnih97g9
	B69V+eNAuFAlKailmh+jFA0WK2OwMGsa+m/8BtT8EcCHG9sLiPeIlHkH9n3bghD3eoO4aqJwvu8gZ
	YS9YVCcFmVhnEYiZq8sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvB9-0001QR-0d; Wed, 31 Jul 2019 20:26:31 +0000
Received: from [191.33.152.89] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvB0-0001Q8-KC; Wed, 31 Jul 2019 20:26:22 +0000
Date: Wed, 31 Jul 2019 17:26:13 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 0/6] ReST conversion patches not applied yet
Message-ID: <20190731172613.32d65ad8@coco.lan>
In-Reply-To: <20190731202007.GI4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
 <20190731202007.GI4369@sirena.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Evgeniy Polyakov <zbr@ioremap.net>,
 linux-cifs@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Corbet <corbet@lwn.net>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, 31 Jul 2019 21:20:07 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Wed, Jul 31, 2019 at 02:17:34PM -0600, Jonathan Corbet wrote:
> > Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:  
> 
> > > As promised, this is the rebased version of the patches that were not applied
> > > from the /26 patch series because you had merge conflicts.
> > > 
> > > They're all based on your docs-next branch, so should apply fine.
> > > 
> > > The first one fixes all but one error with a broken reference.
> > > 
> > > The only broken reference right now is due to a DT patch with was not
> > > accepted (no idea why), but whose driver is upstream.  
> 
> > All but 5/6 applied, thanks.  
> 
> Oh, I still hadn't reviewed this version of the SPI stuff :(

It is basically the one sent on that /26 patch series, just rebased
on the top of docs-next.

> There were outstanding questions about where it was going to get moved
> to but if I read the diff correctly it looks like it didn't actually get
> moved in the end?

Yeah, it doesn't have the move. My understanding from our discussions
is that we didn't reach a conclusion.

In any case, I can send a separate patch with the move part once
we reach an agreement about what's the best way to proceed (or you
can do it directly, if you prefer so).

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
