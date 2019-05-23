Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33CB283A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2woHD79kvnEmc6aVIzx7uwXgNHy2hFj17sULTIAq50g=; b=jWnkd4lCtMsj4B
	mKT3SjqYzQ2LFy+qaNdIKwzk+p0U0Z64eA+f3X60Zt2cEz63iZLZAn4gJ/9jIwQquVsC9lQRiRwvE
	5kdliPmFbSsZDUulDTNHtO131TD7ONIavsJsECuO+cmIe2s2wZOKmH7MlX/lguQx38xKKXvrbfMDX
	AT0hRmHXoOn92n1vp0whfvkDTW7oMHqMQwr2eyweZyjPnOI9vSnCTE0nq85DKcSFmsMuiL0MuqMYq
	ff/4dd7qiwNyJHLdLFjEqgQ+2MI6xRBLcFEX5ZLcqyBoigPN1YISpfvmsklLlt+oUZHIftTp3TVKT
	CdTKTZXfBl7v9QYgNWqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqbR-0000DI-KG; Thu, 23 May 2019 16:30:01 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqbK-0000BY-IX
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:29:56 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-124-k_tmI2M6OK6o6fWSJ4SZFw-1; Thu, 23 May 2019 17:29:45 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 23 May 2019 17:29:44 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Thu, 23 May 2019 17:29:44 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Konstantin Khlebnikov' <khlebnikov@yandex-team.ru>, Christian Brauner
 <christian@brauner.io>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "fweimer@redhat.com" <fweimer@redhat.com>
Subject: RE: [PATCH v1 1/2] open: add close_range()
Thread-Topic: [PATCH v1 1/2] open: add close_range()
Thread-Index: AQHVEYO6ZYKDwRYmH0ewnJkZ6B6UzqZ45dMA
Date: Thu, 23 May 2019 16:29:44 +0000
Message-ID: <5e57c26cb7044b69acd3846ac474b5d5@AcuMS.aculab.com>
References: <20190522155259.11174-1-christian@brauner.io>
 <67e4458a-9cc4-d1aa-608c-73ebe9e2f7a3@yandex-team.ru>
In-Reply-To: <67e4458a-9cc4-d1aa-608c-73ebe9e2f7a3@yandex-team.ru>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: k_tmI2M6OK6o6fWSJ4SZFw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_092954_886414_3AD6647D 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "ldv@altlinux.org" <ldv@altlinux.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "shuah@kernel.org" <shuah@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "miklos@szeredi.hu" <miklos@szeredi.hu>, "x86@kernel.org" <x86@kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "tkjos@android.com" <tkjos@android.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "jannh@google.com" <jannh@google.com>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "oleg@redhat.com" <oleg@redhat.com>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From:  Konstantin Khlebnikov
> Sent: 23 May 2019 17:22
....
>  > In addition, the syscall will also work for tasks that do not have procfs
>  > mounted and on kernels that do not have procfs support compiled in. In such
>  > situations the only way to make sure that all file descriptors are closed
>  > is to call close() on each file descriptor up to UINT_MAX or RLIMIT_NOFILE,
>  > OPEN_MAX trickery (cf. comment [8] on Rust).

Code using RLIMIT_NOFILE is broken.
It is easy to reduce the hard limit below that of an open fd.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
