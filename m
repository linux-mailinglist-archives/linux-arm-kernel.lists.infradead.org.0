Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE00584FA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xay/biH1xubGAXpB273HobpTUIfkuLNVnENDm/NBhrI=; b=dsMo/avh/yRytv
	+BzsoZg8r2WKCZBA84GFfUBmuNXPaLT0CUsCCZqDjPVNl8WjFX1WUdQumhwUDXjtyF6za2ELwWF2t
	x8afDd7gyV/qeRbk4Hk/pAojXm9D6uL5lEutZY/d/BrYNFuQL7FwDdejDYZGA3ieANg/rK6XGIuG8
	WGAs/gwwMb30a+jRq7Ck/uhN5jeIoAMYX8maso1TjdziJrwnxIn1UdWvt4D2LBjHf3xrSPt4rgu5t
	bV0VRozk4lP9X/6jVAGzo/U+wlAgt6KtVa2zq38N8kqCVqXaxSW4t2zOWKB5jmOOXVyXFLU7PO+8E
	g+ZarDuA47nNaxH+BXVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNj5-00076C-Ud; Wed, 07 Aug 2019 15:19:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNit-000766-Ju
 for linux-arm-kernel@bombadil.infradead.org; Wed, 07 Aug 2019 15:19:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=38JIMSYZyohgkxXJnFK4ciPgoumxYcRFSwN2k000e/s=; b=NXeGPGmajwebHzsdc1cgAJPlfs
 C12j0hOEVI42JoST6ZRt8T38P0QjlfSdBAGWSDBow99/tuTGSs+1PLaVorqz+JcMypw2lOf9uZddw
 5jKYiRPSFJowy+uXqVyyCxkQk55x5eyjRkWXFnZuUaR3atXy+5GsEEQR9uwbOQtl45Xo0hONwIA8T
 VGWrU4inRgu0R7JBaP0ccF0tO/bMnc/+RWb3BHpWM7FRMZRFwtAJKoOL33IkO53nTvzaTdkHGMA4U
 ucsdD1bxZu5z4XxzT6UsaFw4To+5bjqdoCtk3vQ7Hmg4cFavXJjT2BL3/20w5PKxJM05YVIwoRCsg
 oT0Kr81g==;
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNj6-0000lY-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:19:46 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-58-vbBGLUz5N52_YU_A_1ip9w-1; Wed, 07 Aug 2019 16:19:00 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 7 Aug 2019 16:18:59 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 7 Aug 2019 16:18:59 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Sudeep Holla' <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] firmware: arm_scmi: Use {get,put}_unaligned_le32 accessors
Thread-Topic: [PATCH] firmware: arm_scmi: Use {get,put}_unaligned_le32
 accessors
Thread-Index: AQHVTSAtyuEmH657y0Gt9ART6WUBkKbvzBcw
Date: Wed, 7 Aug 2019 15:18:59 +0000
Message-ID: <4102ce79ef7a4f5ba819663d072bccc8@AcuMS.aculab.com>
References: <20190807130038.26878-1-sudeep.holla@arm.com>
In-Reply-To: <20190807130038.26878-1-sudeep.holla@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: vbBGLUz5N52_YU_A_1ip9w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_161944_515862_68CCD45A 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Philipp
 Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla
> Sent: 07 August 2019 14:01
> 
> Instead of type-casting the {tx,rx}.buf all over the place while
> accessing them to read/write __le32 from/to the firmware, let's use
> the nice existing {get,put}_unaligned_le32 accessors to hide all the
> type cast ugliness.

Why the 'unaligned' accessors?

> -	*(__le32 *)t->tx.buf = cpu_to_le32(id);
> +	put_unaligned_le32(id, t->tx.buf);

These will be expensive if the cpu doesn't support them.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
