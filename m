Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F131E5792
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JberU5eDZ8GPWPc9I3vDkcB2ADzZnAY/z0Oe9NBWK+4=; b=TfFSn1fGygIkRx
	CGa1xiCV5WgZEuMp+plG6DaNknK/OpGSotr0ud3ieX1t+P6gECocQ5hWI28C+DkuvOPEuRIe8r7Iv
	CeD+W3pS7X2Pzzx86paK8VvLZFXqsDAd3U6Epqmhya52mJKGeOodDkyxUc9ND0agAPMsUE6ZMcE8P
	7aqXthbpQeBWCAWSOGtLquym10B+PmYrXcDLC2n3jW/lqEu6M1Ck7shonhrLaKOT7E3BuqYu2D+t9
	G4A7NU4NdJzbZEr9spWfge21FRa83olMEt/u3WyZ+6a1b6jxaJxnaELwRX0WNp+KfwwFDhQQUV0dy
	ywmfwxjoazJM3O/L5srQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeC5i-00049B-GA; Thu, 28 May 2020 06:32:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeC5Y-00048Y-Qf
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590647543;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EsuvlfT5LaD0+QJMlQUnPkzKGgI/J37TooIeB6KE0lA=;
 b=ijMJEkXmHW2Ic2Hg/XIkvcUhqHQ8NlZgglTJ2d7fSo339/7wXBa2zFhvGDuDZBb/vl0WW4
 zICvuoL7p6cS2dfwbYRUZHZ4SYHVrhT2E79RqMngCpB0v+knQHPtjbygFriCszKzhxYijw
 ClYxPUIA+TkAt/ZZUVhbz88ObF6xoH0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-hi3646I5O5GPZp5FhiiXgw-1; Thu, 28 May 2020 02:32:21 -0400
X-MC-Unique: hi3646I5O5GPZp5FhiiXgw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 508CB80183C;
 Thu, 28 May 2020 06:32:20 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0639D1A914;
 Thu, 28 May 2020 06:32:12 +0000 (UTC)
Subject: Re: [PATCH RFCv2 7/9] kvm/arm64: Support async page fault
To: Marc Zyngier <maz@kernel.org>, pbonzini@redhat.com
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-8-gshan@redhat.com>
 <20200526123424.GF1363@C02TD0UTHF1T.local>
 <e1230110-b51f-b8b8-60d9-372660c5c387@redhat.com>
 <28c74819f42306e66370ddaf88f16918@kernel.org>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <924ee966-7412-f9ff-c2b0-598e4abbb05c@redhat.com>
Date: Thu, 28 May 2020 16:32:09 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <28c74819f42306e66370ddaf88f16918@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_233224_943314_A5A76172 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>, aarcange@redhat.com,
 drjones@redhat.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDUvMjcvMjAgNTozNyBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIw
MjAtMDUtMjcgMDU6MDUsIEdhdmluIFNoYW4gd3JvdGU6CgpbLi4uXQogIAo+Pj4+ICtzdHJ1Y3Qg
a3ZtX3ZjcHVfcHZfYXBmX2RhdGEgewo+Pj4+ICvCoMKgwqAgX191MzLCoMKgwqAgcmVhc29uOwo+
Pj4+ICvCoMKgwqAgX191OMKgwqDCoCBwYWRbNjBdOwo+Pj4+ICvCoMKgwqAgX191MzLCoMKgwqAg
ZW5hYmxlZDsKPj4+PiArfTsKPj4+Cj4+PiBXaGF0J3MgYWxsIHRoZSBwYWRkaW5nIGZvcj8KPj4+
Cj4+Cj4+IFRoZSBwYWRkaW5nIGlzIGVuc3VyZSB0aGUgQHJlYXNvbiBhbmQgQGVuYWJsZWQgaW4g
ZGlmZmVyZW50IGNhY2hlCj4+IGxpbmUuIEByZWFzb24gaXMgc2hhcmVkIGJ5IGhvc3QvZ3Vlc3Qs
IHdoaWxlIEBlbmFibGVkIGlzIGFsbW9zdGx5Cj4+IG93bmVkIGJ5IGd1ZXN0Lgo+IAo+IFNvIHlv
dSBhcmUgYXNzdW1pbmcgdGhhdCBhIGNhY2hlIGxpbmUgaXMgYXQgbW9zdCA2NCBieXRlcy4KPiBJ
dCBpcyBhY3R1YWx5IGltcGxlbWVudGF0aW9uIGRlZmluZWQsIGFuZCB5b3UgY2FuIHByb2JlIGZv
ciBpdAo+IGJ5IGxvb2tpbmcgYXQgdGhlIENUUl9FTDAgcmVnaXN0ZXIuIFRoZXJlIGFyZSBpbXBs
ZW1lbnRhdGlvbnMKPiByYW5naW5nIGZyb20gMzIgdG8gMjU2IGJ5dGVzIGluIHRoZSB3aWxkLCBh
bmQgbGV0J3Mgbm90IG1lbnRpb24KPiBicm9rZW4gYmlnLWxpdHRsZSBpbXBsZW1lbnRhdGlvbnMg
aGVyZS4KPiAKPiBbLi4uXQo+IAoKT2ssIFRoYW5rcyBmb3IgeW91ciBjb21tZW50cyBhbmQgaGlu
dHMuCgo+Pj4+ICtib29sIGt2bV9hcmNoX2Nhbl9pbmplY3RfYXN5bmNfcGFnZV9ub3RfcHJlc2Vu
dChzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUpCj4+Pj4gK3sKPj4+PiArwqDCoMKgIHU2NCB2YmFyLCBw
YzsKPj4+PiArwqDCoMKgIHUzMiB2YWw7Cj4+Pj4gK8KgwqDCoCBpbnQgcmV0Owo+Pj4+ICsKPj4+
PiArwqDCoMKgIGlmICghKHZjcHUtPmFyY2guYXBmLmNvbnRyb2xfYmxvY2sgJiBLVk1fQVNZTkNf
UEZfRU5BQkxFRCkpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsKPj4+PiArCj4+
Pj4gK8KgwqDCoCBpZiAodmNwdS0+YXJjaC5hcGYuc2VuZF91c2VyX29ubHkgJiYgdmNwdV9tb2Rl
X3ByaXYodmNwdSkpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxzZTsKPj4+PiArCj4+
Pj4gK8KgwqDCoCAvKiBQZW5kaW5nIHBhZ2UgZmF1bHQsIHdoaWNoIGlucyd0IGFja25vd2xlZGdl
ZCBieSBndWVzdCAqLwo+Pj4+ICvCoMKgwqAgcmV0ID0ga3ZtX2FzeW5jX3BmX3JlYWRfY2FjaGUo
dmNwdSwgJnZhbCk7Cj4+Pj4gK8KgwqDCoCBpZiAocmV0IHx8IHZhbCkKPj4+PiArwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIGZhbHNlOwo+Pj4+ICsKPj4+PiArwqDCoMKgIC8qCj4+Pj4gK8KgwqDCoMKg
ICogRXZlbnRzIGNhbid0IGJlIGluamVjdGVkIHRocm91Z2ggZGF0YSBhYm9ydCBiZWNhdXNlIGl0
J3MKPj4+PiArwqDCoMKgwqAgKiBnb2luZyB0byBjbG9iYmVyIEVMUl9FTDEsIHdoaWNoIG1pZ2h0
IG5vdCBjb25zdWVkIChvciBzYXZlZCkKPj4+PiArwqDCoMKgwqAgKiBieSBndWVzdCB5ZXQuCj4+
Pj4gK8KgwqDCoMKgICovCj4+Pj4gK8KgwqDCoCB2YmFyID0gdmNwdV9yZWFkX3N5c19yZWcodmNw
dSwgVkJBUl9FTDEpOwo+Pj4+ICvCoMKgwqAgcGMgPSAqdmNwdV9wYyh2Y3B1KTsKPj4+PiArwqDC
oMKgIGlmIChwYyA+PSB2YmFyICYmIHBjIDwgKHZiYXIgKyB2Y3B1LT5hcmNoLmFwZi5ub19mYXVs
dF9pbnN0X3JhbmdlKSkKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOwo+Pj4KPj4+
IEFoLCBzbyB0aGF0J3Mgd2hlbiB0aGlzIGBub19mYXVsdF9pbnN0X3JhbmdlYCBpcyBmb3IuCj4+
Pgo+Pj4gQXMtaXMgdGhpcyBpcyBub3Qgc3VmZmljaWVudCwgYW5kIHdlJ2xsIG5lZWQgdCBiZSBl
eHRyZW1lbHkgY2FyZWZ1bAo+Pj4gaGVyZS4KPj4+Cj4+PiBUaGUgdmVjdG9ycyB0aGVtc2VsdmVz
IHR5cGljYWxseSBvbmx5IGhhdmUgYSBzbWFsbCBhbW91bnQgb2Ygc3R1YiBjb2RlLAo+Pj4gYW5k
IHRoZSBidWxrIG9mIHRoZSBub24tcmVlbnRyYW50IGV4Y2VwdGlvbiBlbnRyeSB3b3JrIGhhcHBl
bnMKPj4+IGVsc2V3aGVyZSwgaW4gYSBtaXh0dXJlIG9mIGFzc2VtYmx5IGFuZCBDIGNvZGUgdGhh
dCBpc24ndCBldmVuIHZpcnR1YWxseQo+Pj4gY29udGlndW91cyB3aXRoIGVpdGhlciB0aGUgdmVj
dG9ycyBvciBpdHNlbGYuCj4+Pgo+Pj4gSXQncyBwb3NzaWJsZSBpbiB0aGVvcnkgdGhhdCBjb2Rl
IGluIG1vZHVsZXMgKG9yIHBlcmhhcHMgaW4gZUJQRiBKSVQnZAo+Pj4gY29kZSkgdGhhdCBpc24n
dCBzYWZlIHRvIHRha2UgYSBmYXVsdCBmcm9tLCBzbyBldmVuIGhhdmluZyBhIGNvbnRpZ3VvdXMK
Pj4+IHJhbmdlIGNvbnRyb2xsZWQgYnkgdGhlIGtlcm5lbCBpc24ndCBpZGVhbC4KPj4+Cj4+PiBI
b3cgZG9lcyB0aGlzIHdvcmsgb24geDg2Pwo+Pj4KPj4KPj4gWWVhaCwgaGVyZSB3ZSBqdXN0IHBy
b3ZpZGUgYSBtZWNoYW5pc20gdG8gZm9yYmlkIGluamVjdGluZyBkYXRhIGFib3J0LiBUaGUKPj4g
cmFuZ2UgaXMgZmVkIGJ5IGd1ZXN0IHRocm91Z2ggSFZDIGNhbGwuIFNvIEkgdGhpbmsgaXQncyBn
dWVzdCByZWxhdGVkIGlzc3VlLgo+PiBZb3UgaGFkIG1vcmUgY29tbWVudHMgYWJvdXQgdGhpcyBp
biBQQVRDSFs5XS4gSSB3aWxsIGV4cGxhaW4gYSBiaXQgbW9yZSB0aGVyZS4KPj4KPj4geDg2IGJh
c2ljYWxseSByZWxpZXMgb24gRUZMQUdTW0lGXSBmbGFnLiBUaGUgYXN5bmMgcGFnZSBmYXVsdCBj
YW4gYmUgaW5qZWN0ZWQKPj4gaWYgaXQncyBvbi4gT3RoZXJ3aXNlLCBpdCdzIGZvcmJpZGRlbi4g
SXQncyB3b3JrYWJsZSBiZWNhdXNlIGV4Y2VwdGlvbiBpcwo+PiBzcGVjaWFsIGludGVycnVwdCB0
byB4ODYgaWYgSSdtIGNvcnJlY3QuCj4+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAo
dm1jc19yZWFkbChHVUVTVF9SRkxBR1MpICYgWDg2X0VGTEFHU19JRikgJiYKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhKHZtY3NfcmVhZDMyKEdVRVNUX0lOVEVSUlVQVElC
SUxJVFlfSU5GTykgJgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIChHVUVTVF9JTlRSX1NUQVRFX1NUSSB8IEdVRVNUX0lOVFJfU1RBVEVfTU9WX1NTKSk7
Cj4gCj4gSSByZWFsbHkgd2lzaCB0aGlzIHdhcyByZWx5aW5nIG9uIGFuIGFyY2hpdGVjdGVkIGV4
Y2VwdGlvbiBkZWxpdmVyeQo+IG1lY2hhbmlzbSB0aGF0IGNhbiBiZSBibG9ja2VkIGJ5IHRoZSBn
dWVzdCBpdHNlbGYgKFBTVEFURS57SSxGLEF9KS4KPiBUcnlpbmcgdG8gZ3Vlc3MgYmFzZWQgb24g
dGhlIFBDIHdvbid0IGZseS4gQnV0IHRoZXNlIHNpZ25hbHMgYXJlCj4gcHJldHR5IGhhcmQgdG8g
bXVsdGlwbGV4IHdpdGggYW55dGhpbmcgZWxzZS4gTGlrZSBhbnkgZm9ybSBvZgo+IG5vbi1hcmNo
aXRlY3RlZCBleGNlcHRpb24gaW5qZWN0aW9uLCBJIGRvbid0IHNlZSBhIGdvb2QgcGF0aCBmb3J3
YXJkCj4gdW5sZXNzIHdlIHN0YXJ0IGNvbnNpZGVyaW5nIHNvbWV0aGluZyBsaWtlIFNERUkuCj4g
Cj4gIMKgwqDCoMKgwqDCoMKgIE0uCgpBcyBQYW9sbyBtZW50aW9uZWQgaW4gYW5vdGhlciByZXBs
eS4gVGhlcmUgYXJlIHR3byB0eXBlcyBvZiBub3RpZmljYXRpb25zCnNlbnQgZnJvbSBob3N0IHRv
IGd1ZXN0OiBwYWdlX25vdF9wcmVzZW50IGFuZCBwYWdlX3JlYWR5LiBUaGUgcGFnZV9ub3RfcHJl
c2VudApub3RpZmljYXRpb24gc2hvdWxkIGJlIGRlbGl2ZXJlZCBzeW5jaHJvbm91c2x5IHdoaWxl
IHBhZ2VfcmVhZHkgY2FuIGJlCmRlbGl2ZXJlZCBhc3luY2hyb25vdXNseS4gSGUgYWxzbyBzdWdn
ZXN0ZWQgdG8gcmVzZXJ2ZSBhIEVTUiAob3IgREZTQykgc3ViY2xhc3MKZm9yIHBhZ2Vfbm90X3By
ZXNlbnQuIEZvciBwYWdlX3JlYWR5LCBpdCBjYW4gYmUgZGVsaXZlcmVkIGJ5IGludGVycnVwdCwg
bGlrZSBQUEkuCng4NiBpcyBjaGFuZ2luZyB0aGUgY29kZSB0byBkZWxpdmVyIHBhZ2VfcmVhZHkg
YnkgaW50ZXJydXB0LCB3aGljaCB3YXMgZG9uZSBieQpleGNlcHRpb24gcHJldmlvdXNseS4KCndo
ZW4gd2UgdXNlIGludGVycnVwdCwgaW5zdGVhZCBvZiBleGNlcHRpb24gZm9yIHBhZ2VfcmVhZHku
IFdlIHdvbid0IG5lZWQgdGhlCmdhbWUgb2YgZ3Vlc3NpbmcgUEMuCgpJIGFzc3VtZSB5b3UgcHJl
ZmVyIHRvIHVzZSBTREVJIGZvciBwYWdlX25vdF9wcmVzZW50LCBjb3JyZWN0PyBJbiB0aGF0IGNh
c2UsCndoYXQncyB0aGUgY3VycmVudCBzdGF0dXMgb2YgU0RFST8gSSBtZWFuIGl0IGhhcyBiZWVu
IGZ1bGx5IG9yIHBhcnRpYWxseQpzdXBwb3J0ZWQsIG9yIHdlIG5lZWQgZGV2ZWxvcCBpdCBmcm9t
IHRoZSBzY3JhdGNoIDopCgpUaGFua3MsCkdhdmluCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
