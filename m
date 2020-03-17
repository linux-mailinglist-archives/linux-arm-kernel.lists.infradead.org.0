Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F73F187DDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrJ9MeA3rNaY0W0DfH5R0PZdWTJ3ADeWdKz/pGDuSoE=; b=SFwd5J+D9RsZD7
	WRA/RgXsH8wQm6oDCpJXYycpexYQ48fOAkj9nMhshQVqTw+uR7CdefUSYvear9H1/l01NvjTVL3nE
	Wkwh7TPLuq2yBHq/s0kDY6CvOSl8oXvKU8XWzAmqQIddkgyWE8lR2mqY6aidyWi+qr9JTVkdja4At
	cR/q6nLiWcvAbubdhRkWEldU0B/LIK7AzbrtSnuXeHRnhDkFjQ19a3JD6ebQpuqNBdcYpUT9DLAHS
	v9ZPyvKm6yyqeCZcWVMbEFuXZMZk2NuTQ3HNq6WtgOZJMSdW12F2dXjw99dAOQ4TIExUyk5EHpfbl
	hNU3UA5ONou0GAlzdOJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Bp-0000gy-NN; Tue, 17 Mar 2020 10:11:13 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9Bh-0000g6-Py
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:11:07 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-253-m8c9lr4xM2eSzCLFFXrRRA-1; Tue, 17 Mar 2020 10:10:53 +0000
X-MC-Unique: m8c9lr4xM2eSzCLFFXrRRA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 17 Mar 2020 10:10:53 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 17 Mar 2020 10:10:53 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'David Miller' <davem@davemloft.net>, "wei.zheng@vivo.com"
 <wei.zheng@vivo.com>
Subject: RE: [PATCH] net: vxge: fix wrong __VA_ARGS__ usage
Thread-Topic: [PATCH] net: vxge: fix wrong __VA_ARGS__ usage
Thread-Index: AQHV+97YYm2kZGPR3k6KR+yWy8keoqhMkFUA
Date: Tue, 17 Mar 2020 10:10:53 +0000
Message-ID: <e61d7621d4ac4b909fda59f234d587fa@AcuMS.aculab.com>
References: <20200316142354.95201-1-wei.zheng@vivo.com>
 <20200316.150416.703162062113777580.davem@davemloft.net>
In-Reply-To: <20200316.150416.703162062113777580.davem@davemloft.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_031106_124883_47CEF4F8 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.101.78.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "info@metux.net" <info@metux.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jdmason@kudzu.us" <jdmason@kudzu.us>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@vivo.com" <kernel@vivo.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "wenhu.wang@vivo.com" <wenhu.wang@vivo.com>,
 "yeyunfeng@huawei.com" <yeyunfeng@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > printk in macro vxge_debug_ll uses __VA_ARGS__ without "##" prefix,
> > it causes a build error when there is no variable
> > arguments(e.g. only fmt is specified.).
> >
> > Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
> 
> Does this even happen right now?  Anyways, applied.

I thought most of the compilers removed the lurking ','
using some heristic.

A safer alternative is to include the 'fmt' in the ...
then there is always one argument.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
