Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B501147227
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 20:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o232NLzdhcJl6UPM6vDpT3Y9A0YWF0Pl39rBJ3vBMpw=; b=ubYwsaEkhysKjd
	dPahlnZ+fh9W9Ii9MgmGI9uHiGHQ/OMNTZG6giTe0YhUfqvRVLS/mxvAfk3VYz5sEq0lTFwEWXFvZ
	lDKQ9pB100GU/83b7uLf9uxqN9+e5fCZ3QndcJv8antvhauwkMOs8UDmZqBjsnQTjEq7cVh3RJteT
	bWgvMcJGckS9Srp8aKLEn/s6Vg25hx0P1GWgcVVO3dKF3Okqil5iaPf+ux0KMTJuTVwLBppqY7Et0
	RJispTPD/iaRwTeCO8LIQ0197oovOevmyzp6L+mjENuUNzkPQO416k9ozGn6mvUBkSD1U4UN3Y2NL
	bFfnMsJQFVURyyUwvh6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuiZs-0003L2-E9; Thu, 23 Jan 2020 19:55:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuiZj-0003Kc-Uy
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 19:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579809334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TC1aPguYbO4LyZ/z5OOvapVO0qs9innz+fiEUFsArMw=;
 b=KhA1MIMDf/Bg8zPqUZD5sgKrk6YdZA1l0KLQ3+rVBmELqbCSjMWMcx9DEKkd4MEUH9nd44
 EtCtPKGypPJGmK2DCl7C6wWMHVy8E/on1JjD/Byyuyc6gN/PISG7CrX4rMHzCQOV+Ymypn
 GgwcpO9k0A9FHpW030HXfF8PaRZNWfI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-_Xk029daMc20sZmGUDfqxQ-1; Thu, 23 Jan 2020 14:55:30 -0500
X-MC-Unique: _Xk029daMc20sZmGUDfqxQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D09FF107ACC5;
 Thu, 23 Jan 2020 19:55:26 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D69F51001901;
 Thu, 23 Jan 2020 19:55:24 +0000 (UTC)
Subject: Re: [PATCH v9 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200115035920.54451-5-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <f5e31716-d687-f64c-0fc5-f1c9b539c4ff@redhat.com>
Date: Thu, 23 Jan 2020 14:55:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200115035920.54451-5-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_115536_077044_8DE340FC 
X-CRM114-Status: GOOD (  29.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dave.dice@oracle.com, steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8xNC8yMCAxMDo1OSBQTSwgQWxleCBLb2dhbiB3cm90ZToKPiBLZWVwIHRyYWNrIG9mIHRo
ZSBudW1iZXIgb2YgaW50cmEtbm9kZSBsb2NrIGhhbmRvZmZzLCBhbmQgZm9yY2UKPiBpbnRlci1u
b2RlIGhhbmRvZmYgb25jZSB0aGlzIG51bWJlciByZWFjaGVzIGEgcHJlc2V0IHRocmVzaG9sZC4K
PiBUaGUgZGVmYXVsdCB2YWx1ZSBmb3IgdGhlIHRocmVzaG9sZCBjYW4gYmUgb3ZlcnJpZGRlbiB3
aXRoCj4gdGhlIG5ldyBrZXJuZWwgYm9vdCBjb21tYW5kLWxpbmUgb3B0aW9uICJudW1hX3NwaW5s
b2NrX3RocmVzaG9sZCIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEtvZ2FuIDxhbGV4LmtvZ2Fu
QG9yYWNsZS5jb20+Cj4gUmV2aWV3ZWQtYnk6IFN0ZXZlIFNpc3RhcmUgPHN0ZXZlbi5zaXN0YXJl
QG9yYWNsZS5jb20+Cj4gUmV2aWV3ZWQtYnk6IFdhaW1hbiBMb25nIDxsb25nbWFuQHJlZGhhdC5j
b20+Cj4gLS0tCj4gIC4uLi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQgICAgICAg
ICB8ICA4ICsrKysKPiAga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrLmMgICAgICAgICAgICAgICAg
ICAgIHwgIDMgKysKPiAga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrX2NuYS5oICAgICAgICAgICAg
ICAgIHwgNDEgKysrKysrKysrKysrKysrKysrLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDUxIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Fk
bWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4dCBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3Vp
ZGUva2VybmVsLXBhcmFtZXRlcnMudHh0Cj4gaW5kZXggYjY4Y2I4MGU0NzdmLi4zMGQ3OTgxOWEz
YjAgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1l
dGVycy50eHQKPiArKysgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0
ZXJzLnR4dAo+IEBAIC0zMjAwLDYgKzMyMDAsMTQgQEAKPiAgCQkJTm90IHNwZWNpZnlpbmcgdGhp
cyBvcHRpb24gaXMgZXF1aXZhbGVudCB0bwo+ICAJCQludW1hX3NwaW5sb2NrPWF1dG8uCj4gIAo+
ICsJbnVtYV9zcGlubG9ja190aHJlc2hvbGQ9CVtOVU1BLCBQVl9PUFNdCj4gKwkJCVNldCB0aGUg
dGhyZXNob2xkIGZvciB0aGUgbnVtYmVyIG9mIGludHJhLW5vZGUKPiArCQkJbG9jayBoYW5kLW9m
ZnMgYmVmb3JlIHRoZSBOVU1BLWF3YXJlIHNwaW5sb2NrCj4gKwkJCWlzIGZvcmNlZCB0byBiZSBw
YXNzZWQgdG8gYSB0aHJlYWQgb24gYW5vdGhlciBOVU1BIG5vZGUuCj4gKwkJCVZhbGlkIHZhbHVl
cyBhcmUgaW4gdGhlIFswLi4zMV0gcmFuZ2UuIFNtYWxsZXIgdmFsdWVzCj4gKwkJCXJlc3VsdCBp
biBhIG1vcmUgZmFpciwgYnV0IGxlc3MgcGVyZm9ybWFudCBzcGlubG9jaywgYW5kCj4gKwkJCXZp
Y2UgdmVyc2EuIFRoZSBkZWZhdWx0IHZhbHVlIGlzIDE2Lgo+ICsKPiAgCWNwdTBfaG90cGx1Zwlb
WDg2XSBUdXJuIG9uIENQVTAgaG90cGx1ZyBmZWF0dXJlIHdoZW4KPiAgCQkJQ09ORklHX0JPT1RQ
QVJBTV9IT1RQTFVHX0NQVTAgaXMgb2ZmLgo+ICAJCQlTb21lIGZlYXR1cmVzIGRlcGVuZCBvbiBD
UFUwLiBLbm93biBkZXBlbmRlbmNpZXMgYXJlOgo+IGRpZmYgLS1naXQgYS9rZXJuZWwvbG9ja2lu
Zy9xc3BpbmxvY2suYyBiL2tlcm5lbC9sb2NraW5nL3FzcGlubG9jay5jCj4gaW5kZXggNjA5OTgw
YTUzODQxLi5lMzgyZDg5NDZjY2MgMTAwNjQ0Cj4gLS0tIGEva2VybmVsL2xvY2tpbmcvcXNwaW5s
b2NrLmMKPiArKysgYi9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2suYwo+IEBAIC01OTcsNiArNTk3
LDkgQEAgRVhQT1JUX1NZTUJPTChxdWV1ZWRfc3Bpbl9sb2NrX3Nsb3dwYXRoKTsKPiAgI2lmICFk
ZWZpbmVkKF9HRU5fQ05BX0xPQ0tfU0xPV1BBVEgpICYmIGRlZmluZWQoQ09ORklHX05VTUFfQVdB
UkVfU1BJTkxPQ0tTKQo+ICAjZGVmaW5lIF9HRU5fQ05BX0xPQ0tfU0xPV1BBVEgKPiAgCj4gKyN1
bmRlZiBwdl9pbml0X25vZGUKPiArI2RlZmluZSBwdl9pbml0X25vZGUJCQljbmFfaW5pdF9ub2Rl
Cj4gKwo+ICAjdW5kZWYgcHZfd2FpdF9oZWFkX29yX2xvY2sKPiAgI2RlZmluZSBwdl93YWl0X2hl
YWRfb3JfbG9jawkJY25hX3ByZV9zY2FuCj4gIAo+IGRpZmYgLS1naXQgYS9rZXJuZWwvbG9ja2lu
Zy9xc3BpbmxvY2tfY25hLmggYi9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmgKPiBpbmRl
eCA4MDAwMjMxZjNkNTEuLmEyYjY1Zjg3ZTZmOCAxMDA2NDQKPiAtLS0gYS9rZXJuZWwvbG9ja2lu
Zy9xc3BpbmxvY2tfY25hLmgKPiArKysgYi9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmgK
PiBAQCAtNTEsMTMgKzUxLDI1IEBAIHN0cnVjdCBjbmFfbm9kZSB7Cj4gIAlpbnQJCQludW1hX25v
ZGU7Cj4gIAl1MzIJCQllbmNvZGVkX3RhaWw7Cj4gIAl1MzIJCQlwcmVfc2Nhbl9yZXN1bHQ7IC8q
IGVuY29kZWQgdGFpbCBvciBlbnVtIHZhbCAqLwo+ICsJdTMyCQkJaW50cmFfY291bnQ7Cj4gIH07
Cj4gIAo+ICBlbnVtIHsKPiAgCUxPQ0FMX1dBSVRFUl9GT1VORCA9IDIsCS8qIDAgYW5kIDEgYXJl
IHJlc2VydmVkIGZvciBAbG9ja2VkICovCj4gKwlGTFVTSF9TRUNPTkRBUllfUVVFVUUgPSAzLAo+
ICAJTUlOX0VOQ09ERURfVEFJTAo+ICB9Owo+ICAKPiArLyoKPiArICogQ29udHJvbHMgdGhlIHRo
cmVzaG9sZCBmb3IgdGhlIG51bWJlciBvZiBpbnRyYS1ub2RlIGxvY2sgaGFuZC1vZmZzIGJlZm9y
ZQo+ICsgKiB0aGUgTlVNQS1hd2FyZSB2YXJpYW50IG9mIHNwaW5sb2NrIGlzIGZvcmNlZCB0byBi
ZSBwYXNzZWQgdG8gYSB0aHJlYWQgb24KPiArICogYW5vdGhlciBOVU1BIG5vZGUuIEJ5IGRlZmF1
bHQsIHRoZSBjaG9zZW4gdmFsdWUgcHJvdmlkZXMgcmVhc29uYWJsZQo+ICsgKiBsb25nLXRlcm0g
ZmFpcm5lc3Mgd2l0aG91dCBzYWNyaWZpY2luZyBwZXJmb3JtYW5jZSBjb21wYXJlZCB0byBhIGxv
Y2sKPiArICogdGhhdCBkb2VzIG5vdCBoYXZlIGFueSBmYWlybmVzcyBndWFyYW50ZWVzLiBUaGUg
ZGVmYXVsdCBzZXR0aW5nIGNhbgo+ICsgKiBiZSBjaGFuZ2VkIHdpdGggdGhlICJudW1hX3NwaW5s
b2NrX3RocmVzaG9sZCIgYm9vdCBvcHRpb24uCj4gKyAqLwo+ICt1bnNpZ25lZCBpbnQgaW50cmFf
bm9kZV9oYW5kb2ZmX3RocmVzaG9sZCBfX3JvX2FmdGVyX2luaXQgPSAxIDw8IDE2Owo+ICsKPiAg
c3RhdGljIHZvaWQgX19pbml0IGNuYV9pbml0X25vZGVzX3Blcl9jcHUodW5zaWduZWQgaW50IGNw
dSkKPiAgewo+ICAJc3RydWN0IG1jc19zcGlubG9jayAqYmFzZSA9IHBlcl9jcHVfcHRyKCZxbm9k
ZXNbMF0ubWNzLCBjcHUpOwo+IEBAIC05Nyw2ICsxMDksMTEgQEAgc3RhdGljIGludCBfX2luaXQg
Y25hX2luaXRfbm9kZXModm9pZCkKPiAgfQo+ICBlYXJseV9pbml0Y2FsbChjbmFfaW5pdF9ub2Rl
cyk7Cj4gIAo+ICtzdGF0aWMgX19hbHdheXNfaW5saW5lIHZvaWQgY25hX2luaXRfbm9kZShzdHJ1
Y3QgbWNzX3NwaW5sb2NrICpub2RlKQo+ICt7Cj4gKwkoKHN0cnVjdCBjbmFfbm9kZSAqKW5vZGUp
LT5pbnRyYV9jb3VudCA9IDA7Cj4gK30KPiArCj4gIC8qIHRoaXMgZnVuY3Rpb24gaXMgY2FsbGVk
IG9ubHkgd2hlbiB0aGUgcHJpbWFyeSBxdWV1ZSBpcyBlbXB0eSAqLwo+ICBzdGF0aWMgaW5saW5l
IGJvb2wgY25hX3RyeV9jaGFuZ2VfdGFpbChzdHJ1Y3QgcXNwaW5sb2NrICpsb2NrLCB1MzIgdmFs
LAo+ICAJCQkJICAgICAgIHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUpCj4gQEAgLTIzMiw3ICsy
NDksOSBAQCBfX2Fsd2F5c19pbmxpbmUgdTMyIGNuYV9wcmVfc2NhbihzdHJ1Y3QgcXNwaW5sb2Nr
ICpsb2NrLAo+ICB7Cj4gIAlzdHJ1Y3QgY25hX25vZGUgKmNuID0gKHN0cnVjdCBjbmFfbm9kZSAq
KW5vZGU7Cj4gIAo+IC0JY24tPnByZV9zY2FuX3Jlc3VsdCA9IGNuYV9zY2FuX21haW5fcXVldWUo
bm9kZSwgbm9kZSk7Cj4gKwljbi0+cHJlX3NjYW5fcmVzdWx0ID0KPiArCQljbi0+aW50cmFfY291
bnQgPT0gaW50cmFfbm9kZV9oYW5kb2ZmX3RocmVzaG9sZCA/Cj4gKwkJCUZMVVNIX1NFQ09OREFS
WV9RVUVVRSA6IGNuYV9zY2FuX21haW5fcXVldWUobm9kZSwgbm9kZSk7Cj4gIAo+ICAJcmV0dXJu
IDA7Cj4gIH0KPiBAQCAtMjYyLDYgKzI4MSw5IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBjbmFfcGFz
c19sb2NrKHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUsCj4gIAkJICogaWYgd2UgYWNxdWlyZWQg
dGhlIE1DUyBsb2NrIHdoZW4gaXRzIHF1ZXVlIHdhcyBlbXB0eQo+ICAJCSAqLwo+ICAJCXZhbCA9
IG5vZGUtPmxvY2tlZCA/IG5vZGUtPmxvY2tlZCA6IDE7Cj4gKwkJLyogaW5jIEBpbnRyYV9jb3Vu
dCBpZiB0aGUgc2Vjb25kYXJ5IHF1ZXVlIGlzIG5vdCBlbXB0eSAqLwo+ICsJCSgoc3RydWN0IGNu
YV9ub2RlICopbmV4dF9ob2xkZXIpLT5pbnRyYV9jb3VudCA9Cj4gKwkJCWNuLT5pbnRyYV9jb3Vu
dCArIChub2RlLT5sb2NrZWQgPiAxKTsKClBsYXlpbmcgd2l0aCBsb2NrIGV2ZW50IGNvdW50cywg
SSB3b3VsZCBsaWtlIHlvdSB0byBjaGFuZ2UgdGhlIG1lYW5pbmcKaW50cmFfY291bnQgcGFyYW1l
dGVyIHRoYXQgeW91IGFyZSB0cmFja2luZy4gSW5zdGVhZCBvZiB0cmFja2luZyB0aGUKbnVtYmVy
IG9mIHRpbWVzIGEgbG9jayBpcyBwYXNzZWQgdG8gYSB3YWl0ZXIgb2YgdGhlIHNhbWUgbm9kZQpj
b25zZWN1dGl2ZWx5LCBJIHdvdWxkIGxpa2UgeW91IHRvIHRyYWNrIHRoZSBudW1iZXIgb2YgdGlt
ZXMgdGhlIGhlYWQKd2FpdGVyIGluIHRoZSBzZWNvbmRhcnkgcXVldWUgaGFzIGdpdmVuIHVwIGl0
cyBjaGFuY2UgdG8gYWNxdWlyZSB0aGUKbG9jayBiZWNhdXNlIGEgbGF0ZXIgd2FpdGVyIGhhcyBq
dW1wZWQgdGhlIHF1ZXVlIGFuZCBhY3F1aXJlIHRoZSBsb2NrCmJlZm9yZSBpdC4gVGhpcyB2YWx1
ZSBkZXRlcm1pbmVzIHRoZSB3b3JzdCBjYXNlIGxhdGVuY3kgdGhhdCBhIHNlY29uZGFyeQpxdWV1
ZSB3YWl0ZXIgY2FuIGV4cGVyaWVuY2UuIFNvCgpAQCAtMzMyLDggKzMzNCwxMiBAQCBzdGF0aWMg
aW5saW5lIHZvaWQgY25hX3Bhc3NfbG9jayhzdHJ1Y3QKbWNzX3NwaW5sb2NrICpub2RlLArCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdmFsID0gbm9kZS0+bG9ja2VkID8gbm9kZS0+bG9ja2VkIDogMTsKwqAKLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogaW5jIEBpbnRyYV9jb3VudCBpZiB0aGUgc2Vjb25kYXJ5
IHF1ZXVlIGlzIG5vdCBlbXB0eSAqLwotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXh0
X2NuLT5pbnRyYV9jb3VudCA9IGNuLT5pbnRyYV9jb3VudCArIChub2RlLT5sb2NrZWQgPiAxKTsK
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqIGluYyBAaW50cmFfY291bnQgYW5kIHBhc3MgaXQgZG93biBpZiB0aGUgc2Vjb25k
YXJ5IHF1ZXVlCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBpcyBub3QgZW1wdHkK
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLworwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAobm9kZS0+bG9ja2VkID4gMSkKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG5leHRfY24tPmludHJhX2NvdW50ID0gY24tPmludHJhX2NvdW50
ICsgMTsKwqDCoMKgwqDCoMKgwqAgfSBlbHNlIGlmIChub2RlLT5sb2NrZWQgPiAxKSB7wqDCoMKg
IC8qIGlmIHNlY29uZGFyeSBxdWV1ZSBpcyBub3QKZW1wdHkgKi8KwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC8qIG5leHQgaG9sZGVyIHdpbGwgYmUgdGhlIGZpcnN0IG5vZGUgaW4gdGhl
IHNlY29uZGFyeQpxdWV1ZSAqLwoKTWF5YmUgcmVuYW1lIGl0IHRvIGp1bXBfY291bnQgb3Igc29t
ZSBvdGhlciBtb3JlIG1lYW5pbmdmdWwgbmFtZS4gV2l0aAp0aGF0IGNoYW5nZSwgd2UgY291bGQg
cHJvYmFibHkgcmVkdWNlIHRoZSBkZWZhdWx0IHRocmVzaG9sZCBmcm9tIDY0ayB0bwptYXliZSAy
NTYgb3IgNTEyLgoKSSBjaGFuZ2VkIHRoZSB0aHJlc2hvbGQgdG8gMjU2IGFuZCBydW4gYSA5Ni10
aHJlYWQgbG9ja2luZyBzdHJlc3MgdGVzdApmb3IgMTBzLCB0aGUgbG9jayBldmVudCBjb3VudHM6
CgpjbmFfZmx1c2hfcXVldWU9MTU2ODcKY25hX2ludHJhX21heD0yNTYKY25hX21haW5zY2FuX2hp
dD0xMwpjbmFfbWVyZ2VfcXVldWU9MTU2OTEKY25hX3ByZXNjYW5faGl0PTQzNDQwMzcKY25hX3By
ZXNjYW5fbWlzcz0yMQpjbmFfc3BsaWNlX25ldz0xNTcwMQpjbmFfc3BsaWNlX29sZD0xMjg5Cmxv
Y2tfcGVuZGluZz00Mzg0CmxvY2tfc2xvd3BhdGg9NDc5OTgyOTIKbG9ja191c2Vfbm9kZTI9MTY3
NzgKCk9mIHRoZSBwcmVzY2FuIGhpdHMsIG9ubHkgYWJvdXQgMC40JSBvZiB0aGF0IHJlc3VsdGVk
IGluIGEgcXVldWUgZmx1c2gKd2hpY2ggSSB0aG91Z2h0IGlzIHJlYXNvbmFibGUuIEkgZGlkbid0
IHNlZSBhbnkgbm90aWNlYWJsZSBkZWdyYWRhdGlvbgppbiB0aGUgcGVyZm9ybWFuY2Ugb2YgdGhl
IHN0cmVzcyB0ZXN0IGJ5IHJlZHVjaW5nIHRoZSB0aHJlc2hvbGQgZnJvbSA2NGsKdG8gMjU2LgoK
Q2hlZXJzLApMb25nbWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
