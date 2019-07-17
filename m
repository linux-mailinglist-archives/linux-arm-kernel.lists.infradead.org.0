Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1326B46F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 04:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jShyckchGh5215q96SC6gK0zscQsSzybMnURlqHVao=; b=MPBjUvedhWDkIl
	a7fCwngU+XMZza2bFHPa/Qf8kCq92tJSJ4BYGyMM7y65f/ONeu/ZMgf2xXhutBtCn8uAwquhtaByn
	FBSF1e0b1b9na4DdjMvUbHt8yBbh7STQeBJ+7SRQYgzABM+qYZmba2ZbrfltFfjg1eCJsdoMaXfXP
	a+dVUOsmAasNo+F7ixXoNDtALSbgVexsw1w03B6TDV0qyiySRDsnNwGBU7FtOwF4gzYBGCDFHpUmn
	OY9cM7Iqi5KEHs+ti8PxvqWoCCP2EKYD+5ht9DgkW3BpAp10mqZnOhkR2+4i04dRXlysR2cW7D/Cc
	Dr6JyyY8z8ev1SAgbipA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnZUp-0004rm-V1; Wed, 17 Jul 2019 02:16:44 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnZUf-0004rA-Ko
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 02:16:35 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 69B073082128;
 Wed, 17 Jul 2019 02:16:32 +0000 (UTC)
Received: from llong.remote.csb (ovpn-122-180.rdu2.redhat.com [10.10.122.180])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9697E60922;
 Wed, 17 Jul 2019 02:16:29 +0000 (UTC)
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <9fa54e98-0b9b-0931-db32-c6bd6ccfe75b@redhat.com>
Date: Tue, 16 Jul 2019 22:16:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190715192536.104548-4-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 17 Jul 2019 02:16:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_191633_726924_A6514116 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

T24gNy8xNS8xOSAzOjI1IFBNLCBBbGV4IEtvZ2FuIHdyb3RlOgo+ICsvKgo+ICsgKiBJbXBsZW1l
bnQgYSBOVU1BLWF3YXJlIHZlcnNpb24gb2YgTUNTIChha2EgQ05BLCBvciBjb21wYWN0IE5VTUEt
YXdhcmUgbG9jaykuCj4gKyAqCj4gKyAqIEluIENOQSwgc3Bpbm5pbmcgdGhyZWFkcyBhcmUgb3Jn
YW5pemVkIGluIHR3byBxdWV1ZXMsIGEgbWFpbiBxdWV1ZSBmb3IKPiArICogdGhyZWFkcyBydW5u
aW5nIG9uIHRoZSBzYW1lIG5vZGUgYXMgdGhlIGN1cnJlbnQgbG9jayBob2xkZXIsIGFuZCBhCj4g
KyAqIHNlY29uZGFyeSBxdWV1ZSBmb3IgdGhyZWFkcyBydW5uaW5nIG9uIG90aGVyIG5vZGVzLiBB
dCB0aGUgdW5sb2NrIHRpbWUsCj4gKyAqIHRoZSBsb2NrIGhvbGRlciBzY2FucyB0aGUgbWFpbiBx
dWV1ZSBsb29raW5nIGZvciBhIHRocmVhZCBydW5uaW5nIG9uCj4gKyAqIHRoZSBzYW1lIG5vZGUu
IElmIGZvdW5kIChjYWxsIGl0IHRocmVhZCBUKSwgYWxsIHRocmVhZHMgaW4gdGhlIG1haW4gcXVl
dWUKPiArICogYmV0d2VlbiB0aGUgY3VycmVudCBsb2NrIGhvbGRlciBhbmQgVCBhcmUgbW92ZWQg
dG8gdGhlIGVuZCBvZiB0aGUKPiArICogc2Vjb25kYXJ5IHF1ZXVlLCBhbmQgdGhlIGxvY2sgaXMg
cGFzc2VkIHRvIFQuIElmIHN1Y2ggVCBpcyBub3QgZm91bmQsIHRoZQo+ICsgKiBsb2NrIGlzIHBh
c3NlZCB0byB0aGUgZmlyc3Qgbm9kZSBpbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiBGaW5hbGx5LCBp
ZiB0aGUKPiArICogc2Vjb25kYXJ5IHF1ZXVlIGlzIGVtcHR5LCB0aGUgbG9jayBpcyBwYXNzZWQg
dG8gdGhlIG5leHQgdGhyZWFkIGluIHRoZQo+ICsgKiBtYWluIHF1ZXVlLiBUbyBhdm9pZCBzdGFy
dmF0aW9uIG9mIHRocmVhZHMgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZSwKPiArICogdGhvc2UgdGhy
ZWFkcyBhcmUgbW92ZWQgYmFjayB0byB0aGUgaGVhZCBvZiB0aGUgbWFpbiBxdWV1ZQo+ICsgKiBh
ZnRlciBhIGNlcnRhaW4gZXhwZWN0ZWQgbnVtYmVyIG9mIGludHJhLW5vZGUgbG9jayBoYW5kLW9m
ZnMuCj4gKyAqCj4gKyAqIEZvciBtb3JlIGRldGFpbHMsIHNlZSBodHRwczovL2FyeGl2Lm9yZy9h
YnMvMTgxMC4wNTYwMC4KPiArICoKPiArICogQXV0aG9yczogQWxleCBLb2dhbiA8YWxleC5rb2dh
bkBvcmFjbGUuY29tPgo+ICsgKiAgICAgICAgICBEYXZlIERpY2UgPGRhdmUuZGljZUBvcmFjbGUu
Y29tPgo+ICsgKi8KPiArCj4gK3N0cnVjdCBjbmFfbm9kZSB7Cj4gKwlzdHJ1Y3QJbWNzX3NwaW5s
b2NrIG1jczsKPiArCXUzMgludW1hX25vZGU7Cj4gKwl1MzIJZW5jb2RlZF90YWlsOwo+ICsJc3Ry
dWN0CWNuYV9ub2RlICp0YWlsOyAgICAvKiBwb2ludHMgdG8gdGhlIHNlY29uZGFyeSBxdWV1ZSB0
YWlsICovCj4gK307Cj4gKwo+ICsjZGVmaW5lIENOQV9OT0RFKHB0cikgKChzdHJ1Y3QgY25hX25v
ZGUgKikocHRyKSkKPiArCj4gK3N0YXRpYyB2b2lkIGNuYV9pbml0X25vZGUoc3RydWN0IG1jc19z
cGlubG9jayAqbm9kZSkKPiArewo+ICsJc3RydWN0IGNuYV9ub2RlICpjbiA9IENOQV9OT0RFKG5v
ZGUpOwo+ICsJc3RydWN0IG1jc19zcGlubG9jayAqYmFzZV9ub2RlOwo+ICsJaW50IGNwdWlkOwo+
ICsKPiArCUJVSUxEX0JVR19PTihzaXplb2Yoc3RydWN0IGNuYV9ub2RlKSA+IHNpemVvZihzdHJ1
Y3QgcW5vZGUpKTsKPiArCS8qIHdlIHN0b3JlIGEgcG9pbnRlciBpbiB0aGUgbm9kZSdzIEBsb2Nr
ZWQgZmllbGQgKi8KPiArCUJVSUxEX0JVR19PTihzaXplb2YodWludHB0cl90KSA+IHNpemVvZl9m
aWVsZChzdHJ1Y3QgbWNzX3NwaW5sb2NrLCBsb2NrZWQpKTsKPiArCj4gKwljcHVpZCA9IHNtcF9w
cm9jZXNzb3JfaWQoKTsKPiArCWNuLT5udW1hX25vZGUgPSBjcHVfdG9fbm9kZShjcHVpZCk7Cj4g
Kwo+ICsJYmFzZV9ub2RlID0gdGhpc19jcHVfcHRyKCZxbm9kZXNbMF0ubWNzKTsKPiArCWNuLT5l
bmNvZGVkX3RhaWwgPSBlbmNvZGVfdGFpbChjcHVpZCwgYmFzZV9ub2RlLT5jb3VudCAtIDEpOwo+
ICt9Cj4gKwo+ICsvKioKPiArICogZmluZF9zdWNjZXNzb3IgLSBTY2FuIHRoZSBtYWluIHdhaXRp
bmcgcXVldWUgbG9va2luZyBmb3IgdGhlIGZpcnN0Cj4gKyAqIHRocmVhZCBydW5uaW5nIG9uIHRo
ZSBzYW1lIG5vZGUgYXMgdGhlIGxvY2sgaG9sZGVyLiBJZiBmb3VuZCAoY2FsbCBpdAo+ICsgKiB0
aHJlYWQgVCksIG1vdmUgYWxsIHRocmVhZHMgaW4gdGhlIG1haW4gcXVldWUgYmV0d2VlbiB0aGUg
bG9jayBob2xkZXIKPiArICogYW5kIFQgdG8gdGhlIGVuZCBvZiB0aGUgc2Vjb25kYXJ5IHF1ZXVl
IGFuZCByZXR1cm4gVDsgb3RoZXJ3aXNlLCByZXR1cm4gTlVMTC4KPiArICovCgpIZXJlIHlvdSB0
YWxrIGFib3V0IG1haW4gYW5kIHNlY29uZGFyeSBxdWV1ZXMuIEhvd2V2ZXIsIHRoZXJlIGlzIG5v
Cm1lbnRpb24gb2Ygd2hhdCBhcmUgdGhvc2UgcXVldWVzLiBBcyBJIGFtIGZhbWlsaWFyIHdpdGgg
cXNwaW5sb2NrIHF1ZXVlLApJIGNhbiBmaWd1cmUgb3V0IHRoYXQgdGhlIG1haW4gcXVldWUgaXMg
dGhlIG1jc19ub2RlLT5uZXh0IGNoYWluIHRoYXQKc3RhcnRzIGZyb20gdGhlIE1DUyBsb2NrIGhv
bGRlci4gVGhlIHNlY29uZGFyeSBxdWV1ZSBpcyBhIHNlcGFyYXRlIE1DUwpub2RlIGNoYWluIHdp
dGggaXRzIGhlYWQgc3RvcmVkIGluIHRoZSBtY3Nfbm9kZS0+bG9ja2VkIHZhbHVlIG9mIHRoZSBN
Q1MKbG9jayBob2xkZXIgYW5kIHRoZSB0YWlsIHN0b3JlZCBpbiB0aGUgY25hLT50YWlsLiBNb3Jl
IGRldGFpbCBjb21tZW50cwpvbiB3aGF0IGFuZCB3aGVyZSB0aGV5IGFyZSB3aWxsIGhlbHAgdG8g
aW1wcm92ZSB0aGUgcmVhZGFiaWxpdHkgb2YgdGhlCmNvZGUuIEEgc2ltcGxlIGdyYXBoaWMgdG8g
aWxsdXN0cmF0ZSB0aG9zZSBxdWV1ZXMgd2lsbCBoZWxwIHRvbywgZm9yIGV4YW1wbGUKCi8qCsKg
KiBNQ1MgbG9jayBob2xkZXIKwqAqID09PT09PT09PT09PT09PQrCoCrCoMKgwqAgbWNzX25vZGUK
wqAqwqDCoCArLS0tLS0tLS0rwqDCoMKgwqDCoCArLS0tLSvCoMKgwqDCoMKgwqDCoMKgICstLS0t
KwrCoCrCoMKgIHwgbmV4dMKgwqAgfCAtLS0+IHxuZXh0fCAtPiAuLi7CoCB8bmV4dHwgLT4gTlVM
TMKgIFtNYWluIHF1ZXVlXQrCoCrCoMKgIHwgbG9ja2VkIHwgLSvCoMKgICstLS0tK8KgwqDCoMKg
wqDCoMKgwqAgKy0tLS0rCsKgKsKgwqAgKy0tLS0tLS0tK8KgIHwKwqAqwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqDCoCArLS0tLSvCoMKgwqDCoMKgwqDCoMKgICstLS0tKwrCoCrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICstPiB8bmV4dHwgLT4gLi4uwqAgfG5leHR8IC0+IFjC
oMKgwqDCoCBbU2Vjb25kYXJ5IHF1ZXVlXQrCoCrCoMKgwqAgY25hX25vZGXCoMKgwqDCoMKgwqAg
Ky0tLS0rwqDCoMKgwqDCoMKgwqDCoCArLS0tLSsKwqAqwqDCoCArLS0tLS0tLS0qwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXgrCoCrCoMKgIHwgdGFpbMKgwqAg
fCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwrCoCrCoMKgICstLS0tLS0tLSrCoMKgwqAKwqAqCsKg
KiBOLkIuIGxvY2tlZCA9IDEgaWYgc2Vjb25kYXJ5IHF1ZXVlIGlzIGFic2VudC4KwqAqLwoKPiAr
c3RhdGljIHN0cnVjdCBjbmFfbm9kZSAqZmluZF9zdWNjZXNzb3Ioc3RydWN0IG1jc19zcGlubG9j
ayAqbWUpCj4gK3sKPiArCXN0cnVjdCBjbmFfbm9kZSAqbWVfY25hID0gQ05BX05PREUobWUpOwo+
ICsJc3RydWN0IGNuYV9ub2RlICpoZWFkX290aGVyLCAqdGFpbF9vdGhlciwgKmN1cjsKQXMgeW91
IGhhdmUgdGFsa2VkIGFib3V0IHNlY29uZGFyeSBxdWV1ZSwgaG93IGFib3V0IGhlYWRfMm5kLCB0
YWlsXzJuZAppbnN0ZWFkIG9mICpfb3RoZXI/CgpDaGVlcnMsCkxvbmdtYW4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
