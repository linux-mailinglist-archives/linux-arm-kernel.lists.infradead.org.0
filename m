Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2AFDCA35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFJaEXxzAZo7gLllxw6xq2hZw/oLhJFbX3BKbdAQCxU=; b=ASKomBffdTdlQH
	GWHK3tpkSAZp1L7PLFrD9UvXqQ8b4rvfzyQrDpaqZB0NpeIBX5QSbWeLui/L1jcR6I81e9wDynHoJ
	+Ol8BHTMCuRgebxfU7P8zUYfCAA5gaxJhpsA9ag86iRl0JXBgXTrJqo4OHGRQou8R9jkat28eMJDh
	tEYYJrZYw92olCqBlXfIMla2hnTveUjVKB9eDMIG7E2rIuzGf11FzC79m5MVKQC+MbpvFNg73GKnB
	Zufu4NDyhdJEQrWAJQJBRXPfPzra9QwM1dtnPnhHSxpatAKNY/sIPvvvKXYtZdPSVd6XEexXAL2fh
	23jRipueXhuv92f4Z/Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUis-0003rh-8m; Fri, 18 Oct 2019 16:03:26 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUig-0003rI-4q
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:03:15 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DEB5E3071D94;
 Fri, 18 Oct 2019 16:03:12 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 250A95D71C;
 Fri, 18 Oct 2019 16:03:11 +0000 (UTC)
Subject: Re: [PATCH v5 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20191016042903.61081-1-alex.kogan@oracle.com>
 <20191016042903.61081-4-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <6ce50aeb-6b87-5d1c-9011-4329e8dadfec@redhat.com>
Date: Fri, 18 Oct 2019 12:03:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191016042903.61081-4-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 18 Oct 2019 16:03:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090314_211135_0BD21110 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rahul.x.yadav@oracle.com, dave.dice@oracle.com, steven.sistare@oracle.com,
 daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMTYvMTkgMTI6MjkgQU0sIEFsZXggS29nYW4gd3JvdGU6Cj4gK3N0YXRpYyBpbmxpbmUg
dm9pZCBjbmFfcGFzc19sb2NrKHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUsCj4gKwkJCQkgc3Ry
dWN0IG1jc19zcGlubG9jayAqbmV4dCkKPiArewo+ICsJc3RydWN0IGNuYV9ub2RlICpjbiA9IChz
dHJ1Y3QgY25hX25vZGUgKilub2RlOwo+ICsJc3RydWN0IG1jc19zcGlubG9jayAqbmV4dF9ob2xk
ZXIgPSBuZXh0LCAqdGFpbF8ybmQ7Cj4gKwl1MzIgdmFsID0gMTsKPiArCj4gKwl1MzIgc2NhbiA9
IGNuLT5wcmVfc2Nhbl9yZXN1bHQ7Cj4gKwo+ICsJLyoKPiArCSAqIGNoZWNrIGlmIGEgc3VjY2Vz
c29yIGZyb20gdGhlIHNhbWUgbnVtYSBub2RlIGhhcyBub3QgYmVlbiBmb3VuZCBpbgo+ICsJICog
cHJlLXNjYW4sIGFuZCBpZiBzbywgdHJ5IHRvIGZpbmQgaXQgaW4gcG9zdC1zY2FuIHN0YXJ0aW5n
IGZyb20gdGhlCj4gKwkgKiBub2RlIHdoZXJlIHByZS1zY2FuIHN0b3BwZWQgKHN0b3JlZCBpbiBA
cHJlX3NjYW5fcmVzdWx0KQo+ICsJICovCj4gKwlpZiAoc2NhbiA+IDApCj4gKwkJc2NhbiA9IGNu
YV9zY2FuX21haW5fcXVldWUobm9kZSwgZGVjb2RlX3RhaWwoc2NhbikpOwo+ICsKPiArCWlmICgh
c2NhbikgeyAvKiBpZiBmb3VuZCBhIHN1Y2Nlc3NvciBmcm9tIHRoZSBzYW1lIG51bWEgbm9kZSAq
Lwo+ICsJCW5leHRfaG9sZGVyID0gbm9kZS0+bmV4dDsKPiArCQkvKgo+ICsJCSAqIG1ha2Ugc3Vy
ZSBAdmFsIGdldHMgMSBpZiBjdXJyZW50IGhvbGRlcidzIEBsb2NrZWQgaXMgMCBhcwo+ICsJCSAq
IHdlIGhhdmUgdG8gc3RvcmUgYSBub24temVybyB2YWx1ZSBpbiBzdWNjZXNzb3IncyBAbG9ja2Vk
Cj4gKwkJICogdG8gcGFzcyB0aGUgbG9jawo+ICsJCSAqLwo+ICsJCXZhbCA9IG5vZGUtPmxvY2tl
ZCArIChub2RlLT5sb2NrZWQgPT0gMCk7Cgpub2RlLT5sb2NrZWQgY2FuIGJlIDAgd2hlbiB0aGUg
Y3B1IGVudGVycyBpbnRvIGFuIGVtcHR5IE1DUyBxdWV1ZS4gV2UKY291bGQgdW5jb25kaXRpb25h
bGx5IHNldCBub2RlLT5sb2NrZWQgdG8gMSBmb3IgdGhpcyBjYXNlIGluIHFzcGlubG9jay5jCm9y
IHdpdGggeW91ciBhYm92ZSBjb2RlLiBQZXJoYXBzLCBhIGNvbW1lbnQgYWJvdXQgd2hlbiBub2Rl
LT5sb2NrZWQgd2lsbApiZSAwLgoKSXQgbWF5IGJlIGVhc2llciB0byB1bmRlcnN0YW5kIGlmIHlv
dSBqdXN0IGRvCgrCoMKgwqAgdmFsID0gbm9kZS0+bG9ja2VkID8gbm9kZS0+bG9ja2VkIDogMTsK
CkNoZWVycywKTG9uZ21hbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
