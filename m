Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B960B153370
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:54:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mw7e/j9J8CDtWAG7Byn3D9lZPMeWQ2ec7fcpCr5CAJ0=; b=ttJcrhEDtiKMoY
	zuLBPUKdCfrM1pWGMq6suYvmWVFv98FsMAoEwdcd3WiK3ynyc63rDE+3DEuX96DvfsZX2EAA7Kr6Y
	8SSVt38637NC0VdawwXgxiRgoR09endyZq8TmB2OgK+t7HyV1IlI9sfLexMZmGzZQ0e5ULtSep/Lb
	iuE+tXrHpmgGiPFUQBmrMyUeCMBYzdu+DB4jTQpy83952B7gJFnrAHmi+I+MMfIeb9Dr/ePQAmYcw
	ghKpjpf5rSB965avyglzJWdn7CwB0BzQVYCEHdprN3gLwY/ndB90HIwdAombMsWx+/fjNATf0F1ba
	8S6Ycc1jGD5rVUrITyBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izM4O-0001sa-0e; Wed, 05 Feb 2020 14:54:24 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izM4E-0001re-PG
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:54:16 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-224-Jt2WUK66Nai06qwrlekQ8Q-1; Wed, 05 Feb 2020 14:54:08 +0000
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 5 Feb 2020 14:54:07 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 5 Feb 2020 14:54:07 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Wei Yang' <richardw.yang@linux.intel.com>, David Hildenbrand
 <david@redhat.com>
Subject: RE: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Thread-Topic: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Thread-Index: AQHV3ArwACIFpMP7Tka3ET4dDeEOaKgMr2lQ
Date: Wed, 5 Feb 2020 14:54:07 +0000
Message-ID: <b8f142b9d569459d84b71949cb5efc27@AcuMS.aculab.com>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com> <20200205095924.GC24162@richard>
In-Reply-To: <20200205095924.GC24162@richard>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: Jt2WUK66Nai06qwrlekQ8Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_065415_095707_5CE9ED15 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.82.80.151 listed in list.dnswl.org]
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
Cc: "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michal Hocko <mhocko@suse.com>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yang
> Sent: 05 February 2020 09:59
...
> If it is me, I would like to take out these two similar logic out.
> 
> For example:
> 
> 	if () {
> 	} else if () {
> 	} else {
> 		goto out;
> 	}

I'm pretty sure the kernel layout rules disallow 'else if'.
It is also pretty horrid unless the conditionals are all related
(so it is almost a switch statement).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
