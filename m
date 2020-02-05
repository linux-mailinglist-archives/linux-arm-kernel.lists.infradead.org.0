Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E6D15329A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiHkmpUR4LJ5OoSbkX7tT1/AAU4Ze49IONxjc+EL/Es=; b=t7a3yB8tMRBEhp
	ziWpfWmRCDfM+R0SpX5sbfYXKW6qUqfxB2nEJ4BXRT1Y412bYqoE3+Nq82xZV8ukLddoqnFpXr+Pe
	DqZhMxjrMlkwwIf8E91pZOMPXNIAvhvXSbDkjqAq4bMa+xEj3YLhBmhcLsnxugVUAygkYPN1PbEDo
	Mb0+RJtuu+F39I1vQjzIZOId+UKWpXj9kg9IAl6PXi/t9LoNHH/CtZ8O9vYcQKkRkw23VRqtotgQ6
	jjMhGv+L9ZVfDRtq29GuCDdGOQ61T1c+pGM2AdX66uO4DDac1bQXAthabrc3cGvF8DJHR8iNE1SzQ
	J0qFP2f5da/+DwzPHA+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLSj-0002RI-Px; Wed, 05 Feb 2020 14:15:29 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLSc-0002Qp-9V
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:15:25 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-35-BvQRpUPMMNCExX1WpXxwPQ-1; Wed, 05 Feb 2020 14:15:06 +0000
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 5 Feb 2020 14:15:05 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 5 Feb 2020 14:15:05 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Mubin Usman Sayyed' <mubin.usman.sayyed@xilinx.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "maz@kernel.org" <maz@kernel.org>, "michal.simek@xilinx.com"
 <michal.simek@xilinx.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2] irqchip: xilinx: Add support for multiple instances
Thread-Topic: [PATCH v2] irqchip: xilinx: Add support for multiple instances
Thread-Index: AQHV3C4mebwt/HjFmUCQKmd1NdxYk6gMpOHw
Date: Wed, 5 Feb 2020 14:15:05 +0000
Message-ID: <e0d01341ac5c417982da48074972f470@AcuMS.aculab.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
In-Reply-To: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: BvQRpUPMMNCExX1WpXxwPQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_061523_708633_BA9390E1 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.101.78.151 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [146.101.78.151 listed in wl.mailspike.net]
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
Cc: "anirudha.sarangi@xilinx.com" <anirudha.sarangi@xilinx.com>,
 "siva.durga.paladugu@xilinx.com" <siva.durga.paladugu@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> This email and any attachments are intended for the sole use of the named recipient(s) and contain(s)
> confidential information that may be proprietary, privileged or copyrighted under applicable law. If
> you are not the intended recipient, do not read, copy, or forward this email message or any
> attachments. Delete this email message and any attachments immediately.

Deleted.....

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
