Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521671EBEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JfRxCyZjDe2zTCxsd6N8SJw9EPXPIJi/Cbx6oR/D9s=; b=FSa5DOe29Q0Zgk
	wcHcb5hm9LZKYmXXKRhER4HwRymg2/22UuOZpg/v3tJPs0OncUDuyBE8uEtw3Xaij4qL1Ewtx8y27
	yfOdNjUx13IkAbdCemnMgCmPo0t6wlpWdGMmYH2CHg8x5S83WwfgemDaHboQFtXhGgAsz8e2Ray2/
	6KEt+40VYyjJwToVZzR1q/oB4uk6JcZxNsh4AnTdXKnjJqM3IMYDREqDGuGZob2XeuhO9YfXLlwxk
	MVmox1Nr6m+aj4FsxR4bgy9Xv1/zvGxwXUI+J+F7hLA2JAK9sy9CsqA/oE2dFKrGSKvx34S2erl2z
	jr2bn7EZ8SbQJMml3B6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqwa-0007eT-I0; Wed, 15 May 2019 10:15:28 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqwT-0007dz-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:15:23 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-115-74n14Y4CMIeKYIVFWXZM2w-1; Wed, 15 May 2019 11:15:08 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 15 May 2019 11:15:07 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 15 May 2019 11:15:07 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Will Deacon' <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH] arm64: do_csum: implement accelerated scalar version
Thread-Topic: [PATCH] arm64: do_csum: implement accelerated scalar version
Thread-Index: AQHVCwMrtYHa1Y0LVUWOb1uB691U/KZr90eg
Date: Wed, 15 May 2019 10:15:07 +0000
Message-ID: <6e755b2daaf341128cb3b54f36172442@AcuMS.aculab.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
 <20190515094704.GC24357@fuggles.cambridge.arm.com>
In-Reply-To: <20190515094704.GC24357@fuggles.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: 74n14Y4CMIeKYIVFWXZM2w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_031522_164489_B5D3FF06 
X-CRM114-Status: UNSURE (   7.70  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "steve.capper@arm.com" <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

...
> > 	ptr = (u64 *)(buff - offset);
> > 	shift = offset * 8;
> >
> > 	/*
> > 	 * Head: zero out any excess leading bytes. Shifting back by the same
> > 	 * amount should be at least as fast as any other way of handling the
> > 	 * odd/even alignment, and means we can ignore it until the very end.
> > 	 */
> > 	data = *ptr++;
> > #ifdef __LITTLE_ENDIAN
> > 	data = (data >> shift) << shift;
> > #else
> > 	data = (data << shift) >> shift;
> > #endif

I suspect that
#ifdef __LITTLE_ENDIAN
	data &= ~0ull << shift;
#else
	data &= ~0ull >> shift;
#endif
is likely to be better.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
