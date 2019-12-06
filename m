Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3251156FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWEd7P4JCYAi9bEjSVzbM3b6uXAPrqeYIMrOge84cMg=; b=mVr3mNC9rSYeiw
	h3bFh1hIbaEv9eupMAM+khRUPHuCiT/Mn6VDGB4ksZOhIV88dqrhpLxL0VT6FiIjV3acipiUL70Od
	RcQxDc+WiYMA1HmVjjf8XAgWfb2rv9m1k7SVhUG6/V/w0WiylAE5uS3Kufw48rmstyomHJ8Zq7T4c
	wiYCwcBZUTltOUeN4dmWYGLGnyiDSRuB66A2IAnEAhIFipE4I8yepBSClI2BeodySN+hdRTjwrtFZ
	ZhXfTRuJ0BacLXEUqEJ5u1/7F3bR5Iq9F7NQT9EuNWMuG8SxCaRy+pPdSCF4oHbZU30zPVgBtD/7r
	4myb//hoE1fd8eiMAUSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idI3I-00063i-0Y; Fri, 06 Dec 2019 18:10:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idI37-00062n-Et
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 18:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575655790;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3VZZxlbfAl35SR1EmYLDv6VWCiuxdAqaC9PNp/DzVJA=;
 b=grYv6WtBQxtv1zk6lviYmF5ogtLrYxqEczEbrSWdShrtPgyVnPKdjvOANSkq+0mMxUf4ID
 0FTZmZ8F2Kpa1UbG9cLJTCmX/yl/pj6QmXpYVWu2lO8BfLxOYSInxMGQB8YXd9S8O1JYTZ
 jRX/dA6dDgl2+S90WrjhB4PT179/zaU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-429-Itt7ODuhPIm0UsPz6aKcCA-1; Fri, 06 Dec 2019 13:09:46 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDFF8107ACC4;
 Fri,  6 Dec 2019 18:09:43 +0000 (UTC)
Received: from llong.remote.csb (ovpn-122-189.rdu2.redhat.com [10.10.122.189])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4976B5D6BB;
 Fri,  6 Dec 2019 18:09:41 +0000 (UTC)
Subject: Re: [PATCH v7 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-5-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <3d06a43e-0cf7-dc47-a2c7-7a9145a29ad5@redhat.com>
Date: Fri, 6 Dec 2019 13:09:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191125210709.10293-5-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: Itt7ODuhPIm0UsPz6aKcCA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_100953_577175_64D32438 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gMTEvMjUvMTkgNDowNyBQTSwgQWxleCBLb2dhbiB3cm90ZToKPiBLZWVwIHRyYWNrIG9mIHRo
ZSBudW1iZXIgb2YgaW50cmEtbm9kZSBsb2NrIGhhbmRvZmZzLCBhbmQgZm9yY2UKPiBpbnRlci1u
b2RlIGhhbmRvZmYgb25jZSB0aGlzIG51bWJlciByZWFjaGVzIGEgcHJlc2V0IHRocmVzaG9sZC4K
PiBUaGUgZGVmYXVsdCB2YWx1ZSBmb3IgdGhlIHRocmVzaG9sZCBjYW4gYmUgb3ZlcnJpZGRlbiB3
aXRoCj4gdGhlIG5ldyBrZXJuZWwgYm9vdCBjb21tYW5kLWxpbmUgb3B0aW9uICJudW1hX3NwaW5s
b2NrX3RocmVzaG9sZCIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEtvZ2FuIDxhbGV4LmtvZ2Fu
QG9yYWNsZS5jb20+Cj4gUmV2aWV3ZWQtYnk6IFN0ZXZlIFNpc3RhcmUgPHN0ZXZlbi5zaXN0YXJl
QG9yYWNsZS5jb20+Cj4gLS0tCj4gIC4uLi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50
eHQgICAgICAgICB8ICA4ICsrKysrKwo+ICBhcmNoL3g4Ni9rZXJuZWwvYWx0ZXJuYXRpdmUuYyAg
ICAgICAgICAgICAgICAgfCAyNyArKysrKysrKysrKysrKysrKysrCj4gIGtlcm5lbC9sb2NraW5n
L3FzcGlubG9jay5jICAgICAgICAgICAgICAgICAgICB8ICAzICsrKwo+ICBrZXJuZWwvbG9ja2lu
Zy9xc3BpbmxvY2tfY25hLmggICAgICAgICAgICAgICAgfCAyNyArKysrKysrKysrKysrKysrLS0t
Cj4gIDQgZmlsZXMgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJz
LnR4dCBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0Cj4g
aW5kZXggOTA0Y2IzMmY1OTJkLi44ODdmYmZjZTcwMWQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4dAo+IEBAIC0zMTg1LDYgKzMxODUs
MTQgQEAKPiAgCQkJTm90IHNwZWNpZnlpbmcgdGhpcyBvcHRpb24gaXMgZXF1aXZhbGVudCB0bwo+
ICAJCQludW1hX3NwaW5sb2NrPWF1dG8uCj4gIAo+ICsJbnVtYV9zcGlubG9ja190aHJlc2hvbGQ9
CVtOVU1BLCBQVl9PUFNdCj4gKwkJCVNldCB0aGUgdGhyZXNob2xkIGZvciB0aGUgbnVtYmVyIG9m
IGludHJhLW5vZGUKPiArCQkJbG9jayBoYW5kLW9mZnMgYmVmb3JlIHRoZSBOVU1BLWF3YXJlIHNw
aW5sb2NrCj4gKwkJCWlzIGZvcmNlZCB0byBiZSBwYXNzZWQgdG8gYSB0aHJlYWQgb24gYW5vdGhl
ciBOVU1BIG5vZGUuCj4gKwkJCVZhbGlkIHZhbHVlcyBhcmUgaW4gdGhlIFswLi4zMV0gcmFuZ2Uu
IFNtYWxsZXIgdmFsdWVzCj4gKwkJCXJlc3VsdCBpbiBhIG1vcmUgZmFpciwgYnV0IGxlc3MgcGVy
Zm9ybWFudCBzcGlubG9jaywgYW5kCj4gKwkJCXZpY2UgdmVyc2EuIFRoZSBkZWZhdWx0IHZhbHVl
IGlzIDE2Lgo+ICsKPiAgCWNwdTBfaG90cGx1ZwlbWDg2XSBUdXJuIG9uIENQVTAgaG90cGx1ZyBm
ZWF0dXJlIHdoZW4KPiAgCQkJQ09ORklHX0JPT1RQQVJBTV9IT1RQTFVHX0NQVTAgaXMgb2ZmLgo+
ICAJCQlTb21lIGZlYXR1cmVzIGRlcGVuZCBvbiBDUFUwLiBLbm93biBkZXBlbmRlbmNpZXMgYXJl
Ogo+IGRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwvYWx0ZXJuYXRpdmUuYyBiL2FyY2gveDg2
L2tlcm5lbC9hbHRlcm5hdGl2ZS5jCj4gaW5kZXggNmE0Y2NiZjRlMDljLi4yODU1MmUwNDkxYjUg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC94ODYva2VybmVsL2FsdGVybmF0aXZlLmMKPiArKysgYi9hcmNo
L3g4Ni9rZXJuZWwvYWx0ZXJuYXRpdmUuYwo+IEBAIC03MjMsNiArNzIzLDMzIEBAIHN0YXRpYyBp
bnQgX19pbml0IG51bWFfc3BpbmxvY2tfc2V0dXAoY2hhciAqc3RyKQo+ICAKPiAgX19zZXR1cCgi
bnVtYV9zcGlubG9jaz0iLCBudW1hX3NwaW5sb2NrX3NldHVwKTsKPiAgCj4gKy8qCj4gKyAqIENv
bnRyb2xzIHRoZSB0aHJlc2hvbGQgZm9yIHRoZSBudW1iZXIgb2YgaW50cmEtbm9kZSBsb2NrIGhh
bmQtb2ZmcyBiZWZvcmUKPiArICogdGhlIE5VTUEtYXdhcmUgdmFyaWFudCBvZiBzcGlubG9jayBp
cyBmb3JjZWQgdG8gYmUgcGFzc2VkIHRvIGEgdGhyZWFkIG9uCj4gKyAqIGFub3RoZXIgTlVNQSBu
b2RlLiBCeSBkZWZhdWx0LCB0aGUgY2hvc2VuIHZhbHVlIHByb3ZpZGVzIHJlYXNvbmFibGUKPiAr
ICogbG9uZy10ZXJtIGZhaXJuZXNzIHdpdGhvdXQgc2FjcmlmaWNpbmcgcGVyZm9ybWFuY2UgY29t
cGFyZWQgdG8gYSBsb2NrCj4gKyAqIHRoYXQgZG9lcyBub3QgaGF2ZSBhbnkgZmFpcm5lc3MgZ3Vh
cmFudGVlcy4KPiArICovCj4gK2ludCBpbnRyYV9ub2RlX2hhbmRvZmZfdGhyZXNob2xkID0gMSA8
PCAxNjsKCsKgwqDCoMKgwqAgXgrCoMKgwqDCoMKgIF9fcm9fYWZ0ZXJfaW5pdAoKPiArCj4gK3N0
YXRpYyBpbnQgX19pbml0IG51bWFfc3BpbmxvY2tfdGhyZXNob2xkX3NldHVwKGNoYXIgKnN0cikK
PiArewo+ICsJaW50IG5ld190aHJlc2hvbGRfcGFyYW07Cj4gKwo+ICsJaWYgKGdldF9vcHRpb24o
JnN0ciwgJm5ld190aHJlc2hvbGRfcGFyYW0pKSB7Cj4gKwkJLyogdmFsaWQgdmFsdWUgaXMgYmV0
d2VlbiAwIGFuZCAzMSAqLwo+ICsJCWlmIChuZXdfdGhyZXNob2xkX3BhcmFtIDwgMCB8fCBuZXdf
dGhyZXNob2xkX3BhcmFtID4gMzEpCj4gKwkJCXJldHVybiAwOwo+ICsKPiArCQlpbnRyYV9ub2Rl
X2hhbmRvZmZfdGhyZXNob2xkID0gMSA8PCBuZXdfdGhyZXNob2xkX3BhcmFtOwo+ICsJCXJldHVy
biAxOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtfX3NldHVwKCJudW1hX3Nw
aW5sb2NrX3RocmVzaG9sZD0iLCBudW1hX3NwaW5sb2NrX3RocmVzaG9sZF9zZXR1cCk7Cj4gKwo+
ICAjZW5kaWYKPiAgCgpBZ2FpbnN0LCB0aGlzIHNob3VsZCBiZSBpbiBxc3BpbmxvY2tfY2FuLmgg
bm90IGluIGFsdGVybmF0aXZlLmMuCgpDaGVlcnMsCkxvbmdtYW4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
