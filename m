Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777EB123667
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIdYUMQCyxZPFG5/cepD3ic0pfzDeymwegx+2RWM4lg=; b=luHRlsQOxU8q8P
	iD+S8vYTvj2LMA7i/xyIKgxNvtsPblSIkhNNJYht3ZQTiz/xEOUTPdLb4bO2fFvPz/jpqOx9/et09
	pAb2nI1rA15BC1WWRb9KdBmNH/NkX3XBqMJCGgS+fQFM/2cbtrUvwPFScdKyDW6TuJG+/5h1i+SMc
	DmeawiXfQyfeCf4eqiVWytZ4kv4HO2alSLgO3IRSRWGF/A9amT9wrFRHXPx5TSaT2lP1e+4tv0Rh3
	raKPp7MUvLW7q+qdPhpokxMf00JIFECKI8DWHmJcHj+vkEHVHaTH2dfNa2WNnwTKH5ZkZGURFt7kD
	ob+1wuOnfSP8iSwD7gmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJ6C-0001Et-Ax; Tue, 17 Dec 2019 20:05:40 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJ63-0001EO-BH
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576613128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r9zDOVhpgif2r8wUOSynylPPUD8w13YV6BIbZ8Cxr3I=;
 b=VEIA4q3xLdaTvnttoVaUqvgc/66g8iLrMHNJPLGXmZu9iYVGfgfiUEkL/u6BDX8p+UV60Q
 FciEVHn0y2W+ysY0EOkJrFdxzoPV3JYZkpe15twinx9sKpuhGA9ZfTNwUnLtwc7jotrEhl
 7GuZ4hnS8/NKjFDg4pXajfVS/hb3/co=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-9W2NCPbKMJqPR5OnkoERkQ-1; Tue, 17 Dec 2019 15:05:20 -0500
X-MC-Unique: 9W2NCPbKMJqPR5OnkoERkQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1DFE108598D;
 Tue, 17 Dec 2019 20:05:16 +0000 (UTC)
Received: from llong.remote.csb (ovpn-123-81.rdu2.redhat.com [10.10.123.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A9C7B5D9E1;
 Tue, 17 Dec 2019 20:05:13 +0000 (UTC)
Subject: Re: [PATCH v7 5/5] locking/qspinlock: Introduce the shuffle reduction
 optimization into CNA
To: Alex Kogan <alex.kogan@oracle.com>
References: <f1164ae9-ebcf-41f0-8395-224cdb0f249d@default>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <64c7b7fd-079c-55d1-258c-8c23802b992d@redhat.com>
Date: Tue, 17 Dec 2019 15:05:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <f1164ae9-ebcf-41f0-8395-224cdb0f249d@default>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_120531_461010_7376A229 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 arnd@arndb.de, peterz@infradead.org, rahul.x.yadav@oracle.com,
 jglauber@marvell.com, guohanjun@huawei.com, dave.dice@oracle.com,
 linux@armlinux.org.uk, will.deacon@arm.com, daniel.m.jordan@oracle.com,
 mingo@redhat.com, steven.sistare@oracle.com, hpa@zytor.com, bp@alien8.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTAvMTkgMTo1NiBQTSwgQWxleCBLb2dhbiB3cm90ZToKPiAtLS0tLSBsb25nbWFuQHJl
ZGhhdC5jb20gd3JvdGU6Cj4KPj4gT24gMTEvMjUvMTkgNDowNyBQTSwgQWxleCBLb2dhbiB3cm90
ZToKPj4+IEBAIC0yMzQsMTIgKzI2MywxMyBAQCBfX2Fsd2F5c19pbmxpbmUgdTMyIGNuYV9wcmVf
c2NhbihzdHJ1Y3QKPj4gcXNwaW5sb2NrICpsb2NrLAo+Pj4gIAlzdHJ1Y3QgY25hX25vZGUgKmNu
ID0gKHN0cnVjdCBjbmFfbm9kZSAqKW5vZGU7Cj4+PiAgCj4+PiAgCS8qCj4+PiAtCSAqIHNldHRp
bmcgQHByZV9zY2FuX3Jlc3VsdCB0byAxIGluZGljYXRlcyB0aGF0IG5vIHBvc3Qtc2Nhbgo+Pj4g
KwkgKiBzZXR0aW5nIEBwcmVfc2Nhbl9yZXN1bHQgdG8gMSBvciAyIGluZGljYXRlcyB0aGF0IG5v
IHBvc3Qtc2Nhbgo+Pj4gIAkgKiBzaG91bGQgYmUgbWFkZSBpbiBjbmFfcGFzc19sb2NrKCkKPj4+
ICAJICovCj4+PiAgCWNuLT5wcmVfc2Nhbl9yZXN1bHQgPQo+Pj4gLQkJY24tPmludHJhX2NvdW50
ID09IGludHJhX25vZGVfaGFuZG9mZl90aHJlc2hvbGQgPwo+Pj4gLQkJCTEgOiBjbmFfc2Nhbl9t
YWluX3F1ZXVlKG5vZGUsIG5vZGUpOwo+Pj4gKwkJKG5vZGUtPmxvY2tlZCA8PSAxICYmIHByb2Jh
Ymx5KFNIVUZGTEVfUkVEVUNUSU9OX1BST0JfQVJHKSkgPwo+Pj4gKwkJCTEgOiBjbi0+aW50cmFf
Y291bnQgPT0gaW50cmFfbm9kZV9oYW5kb2ZmX3RocmVzaG9sZCA/Cj4+PiArCQkJMiA6IGNuYV9z
Y2FuX21haW5fcXVldWUobm9kZSwgbm9kZSk7Cj4+PiAgCj4+PiAgCXJldHVybiAwOwo+Pj4gIH0K
Pj4+IEBAIC0yNTMsMTIgKzI4MywxNSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgY25hX3Bhc3NfbG9j
ayhzdHJ1Y3QKPj4gbWNzX3NwaW5sb2NrICpub2RlLAo+Pj4gIAo+Pj4gIAl1MzIgc2NhbiA9IGNu
LT5wcmVfc2Nhbl9yZXN1bHQ7Cj4+PiAgCj4+PiArCWlmIChzY2FuID09IDEpCj4+PiArCQlnb3Rv
IHBhc3NfbG9jazsKPj4+ICsKPj4+ICAJLyoKPj4+ICAJICogY2hlY2sgaWYgYSBzdWNjZXNzb3Ig
ZnJvbSB0aGUgc2FtZSBudW1hIG5vZGUgaGFzIG5vdCBiZWVuIGZvdW5kCj4+IGluCj4+PiAgCSAq
IHByZS1zY2FuLCBhbmQgaWYgc28sIHRyeSB0byBmaW5kIGl0IGluIHBvc3Qtc2NhbiBzdGFydGlu
ZyBmcm9tCj4+IHRoZQo+Pj4gIAkgKiBub2RlIHdoZXJlIHByZS1zY2FuIHN0b3BwZWQgKHN0b3Jl
ZCBpbiBAcHJlX3NjYW5fcmVzdWx0KQo+Pj4gIAkgKi8KPj4+IC0JaWYgKHNjYW4gPiAxKQo+Pj4g
KwlpZiAoc2NhbiA+IDIpCj4+PiAgCQlzY2FuID0gY25hX3NjYW5fbWFpbl9xdWV1ZShub2RlLCBk
ZWNvZGVfdGFpbChzY2FuKSk7Cj4+PiAgCj4+PiAgCWlmICghc2NhbikgeyAvKiBpZiBmb3VuZCBh
IHN1Y2Nlc3NvciBmcm9tIHRoZSBzYW1lIG51bWEgbm9kZSAqLwo+Pj4gQEAgLTI4MSw1ICszMTQs
NiBAQCBzdGF0aWMgaW5saW5lIHZvaWQgY25hX3Bhc3NfbG9jayhzdHJ1Y3QKPj4gbWNzX3NwaW5s
b2NrICpub2RlLAo+Pj4gIAkJdGFpbF8ybmQtPm5leHQgPSBuZXh0Owo+Pj4gIAl9Cj4+PiAgCj4+
PiArcGFzc19sb2NrOgo+Pj4gIAlhcmNoX21jc19wYXNzX2xvY2soJm5leHRfaG9sZGVyLT5sb2Nr
ZWQsIHZhbCk7Cj4+PiAgfQo+PiBJIHRoaW5rIHlvdSBtaWdodCBoYXZlIG1pc2hhbmRsZWQgdGhl
IHByb3BlciBhY2NvdW50aW5nIG9mCj4+IGludHJhX2NvdW50Lgo+PiBIb3cgYWJvdXQgc29tZXRo
aW5nIGxpa2U6Cj4+Cj4+IGRpZmYgLS1naXQgYS9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25h
LmgKPj4gYi9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmgKPj4gaW5kZXggZjFlZWY2YmVj
ZTdiLi4wM2Y4ZmRlYzJiODAgMTAwNjQ0Cj4+IC0tLSBhL2tlcm5lbC9sb2NraW5nL3FzcGlubG9j
a19jbmEuaAo+PiArKysgYi9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmgKPj4gQEAgLTI2
OCw3ICsyNjgsNyBAQCBfX2Fsd2F5c19pbmxpbmUgdTMyIGNuYV9wcmVfc2NhbihzdHJ1Y3QgcXNw
aW5sb2NrCj4+ICpsb2NrLAo+PiDCoMKgwqDCoMKgwqDCoMKgICovCj4+IMKgwqDCoMKgwqDCoMKg
IGNuLT5wcmVfc2Nhbl9yZXN1bHQgPQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KG5vZGUtPmxvY2tlZCA8PSAxICYmCj4+IHByb2JhYmx5KFNIVUZGTEVfUkVEVUNUSU9OX1BST0Jf
QVJHKSkgPwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
MSA6IGNuLT5pbnRyYV9jb3VudCA9PQo+PiBpbnRyYV9ub2RlX2hhbmRvZmZfdGhyZXNob2xkID8K
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEgOiBjbi0+
aW50cmFfY291bnQgPj0KPj4gaW50cmFfbm9kZV9oYW5kb2ZmX3RocmVzaG9sZCA/Cj4gV2UgcmVz
ZXQg4oCYaW50cmFfY291bnQnIGluIGNuYV9pbml0X25vZGUoKSwgd2hpY2ggaXMgY2FsbGVkIGJl
Zm9yZSB3ZSBlbnRlciAKPiB0aGUgc2xvdyBwYXRoLCBhbmQgc2V0IGl0IGF0IG1vc3Qgb25jZSB3
aGVuIHdlIHBhc3MgdGhlIGludGVybmFsIChDTkEpIGxvY2sKPiBieSB0YWtpbmcgdGhlIG93bmVy
4oCZcyB2YWx1ZSArIDEuIE9ubHkgYWZ0ZXIgd2UgZ2V0IHRoZSBpbnRlcm5hbCBsb2NrLCB3ZQo+
IGNhbGwgdGhpcyBjbmFfcHJlX3NjYW4oKSBmdW5jdGlvbiwgd2hlcmUgd2UgY2hlY2sgdGhlIHRo
cmVzaG9sZC4gCj4gSU9XLCBoYXZpbmcgJ2ludHJhX2NvdW50ID4gaW50cmFfbm9kZV9oYW5kb2Zm
X3RocmVzaG9sZCcgd291bGQgbWVhbiBhIGJ1ZywgCj4gYW5kIGhhdmluZyDigJw+PeKAnCB3b3Vs
ZCBtYXNrIGl0LiAKPiBQZXJoYXBzIEkgY2FuIGFkZCBXQVJOX09OKGNuLT5pbnRyYV9jb3VudCA+
IGludHJhX25vZGVfaGFuZG9mZl90aHJlc2hvbGQpCj4gaGVyZSBpbnN0ZWFkLCBhbHRob3VnaCBJ
J20gbm90IHN1cmUgaWYgdGhhdCBpcyBhIGdvb2QgaWRlYSBwZXJmb3JtYW5jZS13aXNlLgoKVGhl
IGNvZGUgdGhhdCBJIGFkZGVkIGJlbG93IGNvdWxkIGhhdmUgdGhlIHBvc3NpYmlsaXR5IG9mIG1h
a2luZwppbnRyYV9jb3VudCA+IGludHJhX25vZGVfaGFuZG9mZl90aHJlc2hvbGQuIEkgYWdyZWUg
d2l0aCB5b3VyIGFzc2Vzc21lbnQKb2YgdGhlIGN1cnJlbnQgY29kZS4gVGhpcyBjb25kaXRpb25h
bCBjaGVjayBpcyBmaW5lIGlmIG5vIGZ1cnRoZXIgY2hhbmdlCmlzIG1hZGUuCgoKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyIDogY25hX3NjYW5fbWFp
bl9xdWV1ZShub2RlLCBub2RlKTsKPj4gwqAKPj4gwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+
IEBAIC0yODMsOSArMjgzLDYgQEAgc3RhdGljIGlubGluZSB2b2lkIGNuYV9wYXNzX2xvY2soc3Ry
dWN0Cj4+IG1jc19zcGlubG9jawo+PiAqbm9kZSwKPj4gwqAKPj4gwqDCoMKgwqDCoMKgwqAgdTMy
IHNjYW4gPSBjbi0+cHJlX3NjYW5fcmVzdWx0Owo+PiDCoAo+PiAtwqDCoMKgwqDCoMKgIGlmIChz
Y2FuID09IDEpCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gcGFzc19sb2Nr
Owo+PiAtCj4gVGhlIHRoaW5nIGlzIHRoYXQgd2Ugd2FudCB0byBhdm9pZCBhcyBtdWNoIG9mIHRo
ZSBzaHVmZmxpbmctcmVsYXRlZCBvdmVyaGVhZAo+IGFzIHdlIGNhbiB3aGVuIHRoZSBzcGlubG9j
ayBpcyBvbmx5IGxpZ2h0bHkgY29udGVuZGVkLiBUaGF0J3Mgd2h5IHdlIGhhdmUgdGhpcwo+IGVh
cmx5IGV4aXQgaGVyZSB0aGF0IGF2b2lkcyB0aGUgcmVzdCBvZiB0aGUgbG9naWMgb2YgdHJpYWdp
bmcgdGhyb3VnaCBwb3NzaWJsZQo+ICdzY2FuJyB2YWx1ZXMuClRoYXQgaXMgYSB2YWxpZCBwb2lu
dC4gTWF5YmUgeW91IGNhbiBkb2N1bWVudCB0aGF0IGZhY3QgeW91IGFyZQpvcHRpbWl6aW5nIGZv
ciBwZXJmb3JtYW5jZSBpbnN0ZWFkIG9mIGJldHRlciBjb3JyZWN0bmVzcy4KPj4gwqDCoMKgwqDC
oMKgwqAgLyoKPj4gwqDCoMKgwqDCoMKgwqDCoCAqIGNoZWNrIGlmIGEgc3VjY2Vzc29yIGZyb20g
dGhlIHNhbWUgbnVtYSBub2RlIGhhcyBub3QgYmVlbgo+PiBmb3VuZCBpbgo+PiDCoMKgwqDCoMKg
wqDCoMKgICogcHJlLXNjYW4sIGFuZCBpZiBzbywgdHJ5IHRvIGZpbmQgaXQgaW4gcG9zdC1zY2Fu
IHN0YXJ0aW5nCj4+IGZyb20gdGhlCj4+IEBAIC0yOTQsNyArMjkxLDEzIEBAIHN0YXRpYyBpbmxp
bmUgdm9pZCBjbmFfcGFzc19sb2NrKHN0cnVjdAo+PiBtY3Nfc3BpbmxvY2sgKm5vZGUsCj4+IMKg
wqDCoMKgwqDCoMKgIGlmIChzY2FuID4gMikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHNjYW4gPSBjbmFfc2Nhbl9tYWluX3F1ZXVlKG5vZGUsIGRlY29kZV90YWlsKHNjYW4pKTsK
Pj4gwqAKPj4gLcKgwqDCoMKgwqDCoCBpZiAoIXNjYW4pIHsgLyogaWYgZm91bmQgYSBzdWNjZXNz
b3IgZnJvbSB0aGUgc2FtZSBudW1hIG5vZGUKPj4gKi8KPj4gK8KgwqDCoMKgwqDCoCBpZiAoc2Nh
biA8PSAxKSB7IC8qIGlmIGZvdW5kIGEgc3VjY2Vzc29yIGZyb20gdGhlIHNhbWUgbnVtYQo+PiBu
b2RlICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIGluYyBAaW50cmFfY291
bnQgaWYgdGhlIHNlY29uZGFyeSBxdWV1ZSBpcyBub3QKPj4gZW1wdHkgKi8KPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKChzdHJ1Y3QgY25hX25vZGUgKiluZXh0X2hvbGRlciktPmlu
dHJhX2NvdW50ID0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNuLT5pbnRyYV9jb3VudCArIChub2RlLT5sb2NrZWQgPiAxKTsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaWYgKChzY2FuID09IDEpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHBhc3NfbG9jazsKPj4gKwo+IEhtbSwgSSBh
bSBub3Qgc3VyZSB0aGlzIG1ha2VzIHRoZSBjb2RlIGFueSBiZXR0ZXIvbW9yZSByZWFkYWJsZSwK
PiB3aGlsZSB0aGlzIGRvZXMgYWRkIHRoZSBvdmVyaGVhZCBvZiBnb2luZyB0aHJvdWdoIDMgYnJh
bmNoZXMgYmVmb3JlCj4ganVtcGluZyB0byAncGFzc19sb2NrJy4KPgpUaGlzIGlzIGp1c3QgYSBz
dWdnZXN0aW9uIGZvciBpbXByb3ZpbmcgdGhlIGNvcnJlY3RuZXNzIG9mIHRoZSBjb2RlLiBJCmFt
IGZpbmUgaWYgeW91IG9wdCBmb3IgYmV0dGVyIHBlcmZvcm1hbmNlLgoKQ2hlZXJzLApMb25nbWFu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
