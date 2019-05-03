Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DAC13092
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ui2PFTMKVUEvim0JHBDIx6mzQIolO9FcS94/PUr92s=; b=CbZIqje0lvdbp+
	DpI8Vd0zyJnlN4LvSC6ZEH80g8M78pI0TsHzY6Yw71kwD5Epj31CqMW0Fn9FdpBuY8KImWQ2yjDIy
	4eQgP0+bEKwKIC4LWoOjSwtZDbbaOcsCT0n8ZKDodBCT3lUtu/dH4KVBzO7wIhUKdct+SQ1gqbVmq
	vc8H34qsCSU4NjqZy6fkTW5A1MBPKKuJr2GcTAk2mu5CcmyeNA6v3fazBtsKUnoHeaZkzySCorPXF
	tadHk3WaAR3mYKWqEHwwTYQOSz1ZIZe6+FlSJV+CP0WWrcN5+Scq/8zUTAGSVnreIVylt5Trej3cF
	zw3dRSWeEc4h9mNNxtbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZLp-0006q9-Gd; Fri, 03 May 2019 14:39:49 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZLi-0006pd-9M
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:39:43 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-113-LyrG2MGFMYeVaRNCuyPBFw-1; Fri, 03 May 2019 15:39:35 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri,
 3 May 2019 15:39:32 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 3 May 2019 15:39:32 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Philippe Schenker' <dev@pschenker.ch>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, Jonathan Cameron <jic23@kernel.org>, "Stefan
 Agner" <stefan@agner.ch>, Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter
 Clausen <lars@metafoo.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: RE: [PATCH 2/3] iio: stmpe-adc: Make wait_completion non interruptible
Thread-Topic: [PATCH 2/3] iio: stmpe-adc: Make wait_completion non
 interruptible
Thread-Index: AQHVAbg3A7HWDrzd+kO5dj2pSSFp8qZZeDWw
Date: Fri, 3 May 2019 14:39:32 +0000
Message-ID: <0aab3e91bb9644acb430a8beba927b5a@AcuMS.aculab.com>
References: <20190503135725.9959-1-dev@pschenker.ch>
 <20190503135725.9959-2-dev@pschenker.ch>
In-Reply-To: <20190503135725.9959-2-dev@pschenker.ch>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: LyrG2MGFMYeVaRNCuyPBFw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_073942_620141_A4915F58 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Max Krummenacher <max.krummenacher@toradex.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philippe Schenker
> Sent: 03 May 2019 14:57
> In some cases, the wait_completion got interrupted. This caused the
> error-handling to mutex_unlock the function. The before turned on
> interrupt then got called anyway. In the ISR then completion()
> was called causing problems.
> 
> Making this wait_completion non interruptible solves the problem.

Won't the same thing happen if the interrupt occurs just after
the timeout?

	David
 

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
