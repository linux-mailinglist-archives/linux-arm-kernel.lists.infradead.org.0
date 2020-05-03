Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1A81C2D05
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 16:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=By9+Dq50XV3p0GqA+Aj55pWE9NfMBntycRI+Q+QFv0w=; b=AqfS40qeNMY6ej
	gCxO8fYJ3piuyiyUv3jitqI4ZxTNDOePQNUvCh2T6+X4AQ9A82mEuT+T/Sk0EjIUtD/jl0CA9Xrq5
	7G7sqADh9u6+g18UrIrLm+uhcYQXwWowUudCWCCeoPY5+lcyXZzTGIV7qmzi+iAKnpL92973JvX+G
	Y/MUS0stmvk88rjqnn5GsGbrQbUqg119sTTaNHsJKJYy3NjelDSWCuFRyuC9HHz9PghoO2MTzwB1N
	TQhf+JKOxoLRCX6aEnwyRl8sMKpdoS72rD8a2QHI8CocBpv6VqSQOUbitzzweilIDhOL9dNmgfGp9
	guOE8wboXehoo1og+BQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVFVS-00087p-8B; Sun, 03 May 2020 14:22:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFV7-0007vs-Ey
 for linux-arm-kernel@bombadil.infradead.org; Sun, 03 May 2020 14:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Rs8U0h7UVa+okX/5u94QKjDhyTNzClBxHLXaliJ9o7o=; b=Osdqycz8Ht+aS1GlQGerzSDqww
 aYZq8IkWnlgPpMLdXAjeoTczzVOKyp63cYETUMrlWJwOwYulnPJeHSHWuIk4PXLnqFuJcvlM8d8yx
 75l2y1KNyQY/byKfUvoTeFP4IlndKxZYqJ6Mud2aKbme1TT6K8EkymndVG84KY180Rj1aXtYFiXiG
 qsdFG2QTXYv8PRURtXXOjmpaRNDkq0tbLLUiIdkP0yoNHZ+r0rICz8CIpcQFPGRcclWUeHyJAUn6I
 9IbdfKg6Uw99ZhxuDFCIo+4vsWiprvyRfeDTFkJrkbwZxEJzsZI55idwkJc8yZhZny6Fop0RMoth6
 9zq6URvg==;
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFV4-0000vj-O8
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 14:21:47 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-195-H0ScGf_APEKaLWptspzlKw-1; Sun, 03 May 2020 15:21:12 +0100
X-MC-Unique: H0ScGf_APEKaLWptspzlKw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sun, 3 May 2020 15:21:11 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Sun, 3 May 2020 15:21:11 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Jonathan Cameron' <jic23@kernel.org>, William Breathitt Gray
 <vilhelm.gray@gmail.com>
Subject: RE: [PATCH 0/4] Introduce the Counter character device interface
Thread-Topic: [PATCH 0/4] Introduce the Counter character device interface
Thread-Index: AQHWIVUDUyU0PU/R2k6dJAMe78u4OaiWaHyQ
Date: Sun, 3 May 2020 14:21:11 +0000
Message-ID: <b2d51e3f9dfb4dd78156b2e945607e8d@AcuMS.aculab.com>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
 <20200503151314.2ac1fc2e@archlinux>
In-Reply-To: <20200503151314.2ac1fc2e@archlinux>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.101.78.151 listed in list.dnswl.org]
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
Cc: "kamel.bouhara@bootlin.com" <kamel.bouhara@bootlin.com>,
 "gwendal@chromium.org" <gwendal@chromium.org>,
 "david@lechnology.com" <david@lechnology.com>,
 "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "syednwaris@gmail.com" <syednwaris@gmail.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "patrick.havelange@essensium.com" <patrick.havelange@essensium.com>,
 "fabrice.gasnier@st.com" <fabrice.gasnier@st.com>,
 "fabien.lahoudere@collabora.com" <fabien.lahoudere@collabora.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jonathan Cameron
> Sent: 03 May 2020 15:13
...
> > The following are some questions I have about this patchset:
> >
> > 1. Should enums be used to represent standard counter component states
> >    (e.g. COUNTER_SIGNAL_LOW), or would these be better defined as int?
> >
> >    These standard counter component states are defined in the
> >    counter-types.h file and serve as constants used by counter device
> >    drivers and Counter subsystem components in order to ensure a
> >    consistent interface.
> >
> >    My concern is whether enum constants will cause problems when passed
> >    to userspace via the Counter character device ioctl calls. Along the
> >    same lines is whether the C bool datatype is safe to pass as well,
> >    given that it is a more modern C datatype.
> 
> For enums, I'd pass them as integers.
> 
> Bool is probably fine either way.

Always use fixed size types in any API structures.
Ensure that fields are always on their natural boundaries.

So no enums and no bools.
It may even be worth using uint64_t for any userspace pointers.

At some point you'll live to regret anything else.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
