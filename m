Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FCE1158EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfIY0Kfan5OeGDn0YaYzl9QWlO/mH1sPIhAy6NiWo4U=; b=FhyFQgh5hrVY5H
	pyPq+8UU6gyX3V7sq4yvAPY7TbKkCfOO/dBQhIBXdbuLL1yT5RMvssHnxATIH+9TUdBca6iG7NPTi
	/ru6jX0ioSas91cY0/keyyvtZTBTeoL0zhxqO2lgw6CySC4JAlUue/+/RiEAZZ61XA6ClgqEmJUB/
	RUlzt27ZI/lo5KdaJKYxnNVhM9wB5+qV1y1tLqAIL4h4rbhaeOJ10XWphtq8XNZw3PtJM7EfdMBgG
	gnQWkPLbgXRwbB3SJUvJdJGlN958wYubSMggI9gqM8/Jbuzl3BcoBaxpJOueLfT6RRovaxrHPZAGC
	JJD9eYhkPmIvUYZX8++w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLeZ-0002yI-T4; Fri, 06 Dec 2019 22:00:47 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLeS-0002xQ-HB
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575669636;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/0/B4QknTAb7E38S4ntzDLzqFl82ozvbtLJr1dzGMzA=;
 b=KZivGncxr9Vth5iL+7adlVA8XiMBWuj/HdxTQ8tFdwnPr1+88sIdwXDaAVY0aYNNuR0lfc
 jtPLBr2miEIrLoDYFAmkm9GsStEmL+eCq+yll5BHaZpHyCX9rZhBTsWzyOenMTwVllTtmK
 zVt4dOaRCvNpQFLi+PfJniGlx6i7s6w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-ffAl0DcwMdSijUYqFRNtlA-1; Fri, 06 Dec 2019 17:00:31 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9C791005512;
 Fri,  6 Dec 2019 22:00:27 +0000 (UTC)
Received: from llong.remote.csb (ovpn-122-189.rdu2.redhat.com [10.10.122.189])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B73515C1D4;
 Fri,  6 Dec 2019 22:00:24 +0000 (UTC)
Subject: Re: [PATCH v7 5/5] locking/qspinlock: Introduce the shuffle reduction
 optimization into CNA
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-6-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <1fce5ebf-7f80-fb9e-92b1-74062a6611a5@redhat.com>
Date: Fri, 6 Dec 2019 17:00:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191125210709.10293-6-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: ffAl0DcwMdSijUYqFRNtlA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_140040_643833_B2B3749B 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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

T24gMTEvMjUvMTkgNDowNyBQTSwgQWxleCBLb2dhbiB3cm90ZToKPiBAQCAtMjM0LDEyICsyNjMs
MTMgQEAgX19hbHdheXNfaW5saW5lIHUzMiBjbmFfcHJlX3NjYW4oc3RydWN0IHFzcGlubG9jayAq
bG9jaywKPiAgCXN0cnVjdCBjbmFfbm9kZSAqY24gPSAoc3RydWN0IGNuYV9ub2RlICopbm9kZTsK
PiAgCj4gIAkvKgo+IC0JICogc2V0dGluZyBAcHJlX3NjYW5fcmVzdWx0IHRvIDEgaW5kaWNhdGVz
IHRoYXQgbm8gcG9zdC1zY2FuCj4gKwkgKiBzZXR0aW5nIEBwcmVfc2Nhbl9yZXN1bHQgdG8gMSBv
ciAyIGluZGljYXRlcyB0aGF0IG5vIHBvc3Qtc2Nhbgo+ICAJICogc2hvdWxkIGJlIG1hZGUgaW4g
Y25hX3Bhc3NfbG9jaygpCj4gIAkgKi8KPiAgCWNuLT5wcmVfc2Nhbl9yZXN1bHQgPQo+IC0JCWNu
LT5pbnRyYV9jb3VudCA9PSBpbnRyYV9ub2RlX2hhbmRvZmZfdGhyZXNob2xkID8KPiAtCQkJMSA6
IGNuYV9zY2FuX21haW5fcXVldWUobm9kZSwgbm9kZSk7Cj4gKwkJKG5vZGUtPmxvY2tlZCA8PSAx
ICYmIHByb2JhYmx5KFNIVUZGTEVfUkVEVUNUSU9OX1BST0JfQVJHKSkgPwo+ICsJCQkxIDogY24t
PmludHJhX2NvdW50ID09IGludHJhX25vZGVfaGFuZG9mZl90aHJlc2hvbGQgPwo+ICsJCQkyIDog
Y25hX3NjYW5fbWFpbl9xdWV1ZShub2RlLCBub2RlKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+
IEBAIC0yNTMsMTIgKzI4MywxNSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgY25hX3Bhc3NfbG9jayhz
dHJ1Y3QgbWNzX3NwaW5sb2NrICpub2RlLAo+ICAKPiAgCXUzMiBzY2FuID0gY24tPnByZV9zY2Fu
X3Jlc3VsdDsKPiAgCj4gKwlpZiAoc2NhbiA9PSAxKQo+ICsJCWdvdG8gcGFzc19sb2NrOwo+ICsK
PiAgCS8qCj4gIAkgKiBjaGVjayBpZiBhIHN1Y2Nlc3NvciBmcm9tIHRoZSBzYW1lIG51bWEgbm9k
ZSBoYXMgbm90IGJlZW4gZm91bmQgaW4KPiAgCSAqIHByZS1zY2FuLCBhbmQgaWYgc28sIHRyeSB0
byBmaW5kIGl0IGluIHBvc3Qtc2NhbiBzdGFydGluZyBmcm9tIHRoZQo+ICAJICogbm9kZSB3aGVy
ZSBwcmUtc2NhbiBzdG9wcGVkIChzdG9yZWQgaW4gQHByZV9zY2FuX3Jlc3VsdCkKPiAgCSAqLwo+
IC0JaWYgKHNjYW4gPiAxKQo+ICsJaWYgKHNjYW4gPiAyKQo+ICAJCXNjYW4gPSBjbmFfc2Nhbl9t
YWluX3F1ZXVlKG5vZGUsIGRlY29kZV90YWlsKHNjYW4pKTsKPiAgCj4gIAlpZiAoIXNjYW4pIHsg
LyogaWYgZm91bmQgYSBzdWNjZXNzb3IgZnJvbSB0aGUgc2FtZSBudW1hIG5vZGUgKi8KPiBAQCAt
MjgxLDUgKzMxNCw2IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBjbmFfcGFzc19sb2NrKHN0cnVjdCBt
Y3Nfc3BpbmxvY2sgKm5vZGUsCj4gIAkJdGFpbF8ybmQtPm5leHQgPSBuZXh0Owo+ICAJfQo+ICAK
PiArcGFzc19sb2NrOgo+ICAJYXJjaF9tY3NfcGFzc19sb2NrKCZuZXh0X2hvbGRlci0+bG9ja2Vk
LCB2YWwpOwo+ICB9CgpJIHRoaW5rIHlvdSBtaWdodCBoYXZlIG1pc2hhbmRsZWQgdGhlIHByb3Bl
ciBhY2NvdW50aW5nIG9mIGludHJhX2NvdW50LgpIb3cgYWJvdXQgc29tZXRoaW5nIGxpa2U6Cgpk
aWZmIC0tZ2l0IGEva2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrX2NuYS5oIGIva2VybmVsL2xvY2tp
bmcvcXNwaW5sb2NrX2NuYS5oCmluZGV4IGYxZWVmNmJlY2U3Yi4uMDNmOGZkZWMyYjgwIDEwMDY0
NAotLS0gYS9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmgKKysrIGIva2VybmVsL2xvY2tp
bmcvcXNwaW5sb2NrX2NuYS5oCkBAIC0yNjgsNyArMjY4LDcgQEAgX19hbHdheXNfaW5saW5lIHUz
MiBjbmFfcHJlX3NjYW4oc3RydWN0IHFzcGlubG9jayAqbG9jaywKwqDCoMKgwqDCoMKgwqDCoCAq
LwrCoMKgwqDCoMKgwqDCoCBjbi0+cHJlX3NjYW5fcmVzdWx0ID0KwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIChub2RlLT5sb2NrZWQgPD0gMSAmJgpwcm9iYWJseShTSFVGRkxFX1JFRFVD
VElPTl9QUk9CX0FSRykpID8KLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDEgOiBjbi0+aW50cmFfY291bnQgPT0KaW50cmFfbm9kZV9oYW5kb2ZmX3RocmVzaG9s
ZCA/CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxIDogY24t
PmludHJhX2NvdW50ID49CmludHJhX25vZGVfaGFuZG9mZl90aHJlc2hvbGQgPwrCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDIgOiBjbmFfc2Nhbl9tYWluX3F1
ZXVlKG5vZGUsIG5vZGUpOwrCoArCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKQEAgLTI4Myw5ICsy
ODMsNiBAQCBzdGF0aWMgaW5saW5lIHZvaWQgY25hX3Bhc3NfbG9jayhzdHJ1Y3QgbWNzX3NwaW5s
b2NrCipub2RlLArCoArCoMKgwqDCoMKgwqDCoCB1MzIgc2NhbiA9IGNuLT5wcmVfc2Nhbl9yZXN1
bHQ7CsKgCi3CoMKgwqDCoMKgwqAgaWYgKHNjYW4gPT0gMSkKLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZ290byBwYXNzX2xvY2s7Ci0KwqDCoMKgwqDCoMKgwqAgLyoKwqDCoMKgwqDCoMKg
wqDCoCAqIGNoZWNrIGlmIGEgc3VjY2Vzc29yIGZyb20gdGhlIHNhbWUgbnVtYSBub2RlIGhhcyBu
b3QgYmVlbgpmb3VuZCBpbgrCoMKgwqDCoMKgwqDCoMKgICogcHJlLXNjYW4sIGFuZCBpZiBzbywg
dHJ5IHRvIGZpbmQgaXQgaW4gcG9zdC1zY2FuIHN0YXJ0aW5nCmZyb20gdGhlCkBAIC0yOTQsNyAr
MjkxLDEzIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBjbmFfcGFzc19sb2NrKHN0cnVjdAptY3Nfc3Bp
bmxvY2sgKm5vZGUsCsKgwqDCoMKgwqDCoMKgIGlmIChzY2FuID4gMikKwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHNjYW4gPSBjbmFfc2Nhbl9tYWluX3F1ZXVlKG5vZGUsIGRlY29kZV90
YWlsKHNjYW4pKTsKwqAKLcKgwqDCoMKgwqDCoCBpZiAoIXNjYW4pIHsgLyogaWYgZm91bmQgYSBz
dWNjZXNzb3IgZnJvbSB0aGUgc2FtZSBudW1hIG5vZGUgKi8KK8KgwqDCoMKgwqDCoCBpZiAoc2Nh
biA8PSAxKSB7IC8qIGlmIGZvdW5kIGEgc3VjY2Vzc29yIGZyb20gdGhlIHNhbWUgbnVtYSBub2Rl
ICovCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIGluYyBAaW50cmFfY291bnQgaWYg
dGhlIHNlY29uZGFyeSBxdWV1ZSBpcyBub3QgZW1wdHkgKi8KK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKChzdHJ1Y3QgY25hX25vZGUgKiluZXh0X2hvbGRlciktPmludHJhX2NvdW50ID0K
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNuLT5pbnRyYV9j
b3VudCArIChub2RlLT5sb2NrZWQgPiAxKTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKChzY2FuID09IDEpCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBnb3RvIHBhc3NfbG9jazsKKwrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbmV4
dF9ob2xkZXIgPSBub2RlLT5uZXh0OwrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoK
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB3ZSB1bmxvY2sgc3VjY2Vzc29yIGJ5
IHBhc3NpbmcgYSBub24temVybyB2YWx1ZSwKQEAgLTMwMiw5ICszMDUsNiBAQCBzdGF0aWMgaW5s
aW5lIHZvaWQgY25hX3Bhc3NfbG9jayhzdHJ1Y3QgbWNzX3NwaW5sb2NrCipub2RlLArCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGlmIHdlIGFjcXVpcmVkIHRoZSBNQ1MgbG9jayB3
aGVuIGl0cyBxdWV1ZSB3YXMgZW1wdHkKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ki8KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhbCA9IG5vZGUtPmxvY2tlZCA/IG5v
ZGUtPmxvY2tlZCA6IDE7Ci3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIGluYyBAaW50
cmFfY291bnQgaWYgdGhlIHNlY29uZGFyeSBxdWV1ZSBpcyBub3QgZW1wdHkgKi8KLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKChzdHJ1Y3QgY25hX25vZGUgKiluZXh0X2hvbGRlciktPmlu
dHJhX2NvdW50ID0KLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNuLT5pbnRyYV9jb3VudCArIChub2RlLT5sb2NrZWQgPiAxKTsKwqDCoMKgwqDCoMKgwqAgfSBl
bHNlIGlmIChub2RlLT5sb2NrZWQgPiAxKSB7wqDCoMKgIC8qIGlmIHNlY29uZGFyeSBxdWV1ZSBp
cyBub3QKZW1wdHkgKi8KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIG5leHQgaG9s
ZGVyIHdpbGwgYmUgdGhlIGZpcnN0IG5vZGUgaW4gdGhlIHNlY29uZGFyeQpxdWV1ZSAqLwrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGFpbF8ybmQgPSBkZWNvZGVfdGFpbChub2RlLT5s
b2NrZWQpOwoKVGhlIG1lYW5pbmcgb2Ygc2NhbiB2YWx1ZToKCjAgLSBwYXNzIHRvIG5leHQgY25h
IG5vZGUsIHdoaWNoIGlzIGluIHRoZSBzYW1lIG51bWEgbm9kZS4gQWRkaXRpb25hbApjbmEgbm9k
ZSBtYXkgb3IgbWF5IG5vdCBiZSBhZGRlZCB0byB0aGUgc2Vjb25kYXJ5IHF1ZXVlCgoxIC0gcGFz
cyB0byBuZXh0IGNuYSBub2RlLCB3aGljaCBtYXkgbm90IGJlIGluIHRoZSBzYW1lIG51bWEgbm9k
ZS4gTm8KY2hhbmdlIHRvIHNlY29uZGFyeSBxdWV1ZQoKMiAtIGV4Y2VlZCBpbnRyYSBub2RlIGhh
bmRvZmYgdGhyZXNob2xkLCB1bmNvbmRpdGlvbmFsbHkgbWVyZ2UgYmFjayB0aGUKc2Vjb25kYXJ5
IHF1ZXVlIGNuYSBub2RlcywgaWYgYXZhaWxhYmxlCgo+MiBubyBjbmEgbm9kZSBvZiB0aGUgc2Ft
ZSBudW1hIG5vZGUgZm91bmQsIHVuY29uZGl0aW9uYWxseSBtZXJnZSBiYWNrCnRoZSBzZWNvbmRh
cnkgcXVldWUgY25hIG5vZGVzLCBpZiBhdmFpbGFibGUKClRoZSBjb2RlIHdpbGwgYmUgZWFzaWVy
IHRvIHJlYWQgaWYgc3ltYm9saWMgbmFtZXMgaW5zdGVhZCBvZiBqdXN0IG51bWJlcnMuCgpDaGVl
cnMsCkxvbmdtYW4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
