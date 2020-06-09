Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09161F356B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Tcdcn5kiwBWCVvYunjMtMHuplWWfZUfzFToFKjb8hw=; b=m3j8J3h5J5vxwX
	0VINxvnrIq9mDjXt9rJzbGrJ0QZQjDYMsGKokwDQoK8BoOeVym5rvUtwn0FQywV15/LUun+IWvf+j
	2aYkCq+No0/x67XdfGsLopTlV+ITU2IrS9gSQIavIZ4PRBnhLB19EGKHNaGTP2K0lh+3AeHUfSF4m
	vc7cplJ1KIFTFPkDY86/Z4w+GWCyTigydxHSdha/soo9hWpQpqIXtls9jcnZcmEOqRKMBPeLCu+Vk
	/PYcjHN9BZNmeNr+JL68K4z7lSSDLtrVbQpmGCvYty/H2ryAGoE2NwC6iv412oLL+Ksi0fiFbGjG6
	9TbSV4tfNXpuK9k5MEjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZ01-00025d-Jk; Tue, 09 Jun 2020 07:48:45 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiYzY-0001qB-6F
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591688892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fUY7oIaQN0F87Iggn/Avbv9TT5d5Yec/aimQAIbcKLw=;
 b=iZBrfRzVAOTxTzosdBoI6rN4rUqNChv696TdIAZmJyuv5rPvAZqk3uPg3iVYBIJ+UNYoT7
 J+8VgRWfWbfGG8Ha4FsGJ7lc0JQZCz/JKCuAMaNIazyJ4cqWwH88NgpOH1wSuMQRquf8pI
 0t9nlSIbvZa2ALOAoy6WLcoqZDWX+Vg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-phonvhl7PFSG4095taNSyQ-1; Tue, 09 Jun 2020 03:48:08 -0400
X-MC-Unique: phonvhl7PFSG4095taNSyQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3478D1B18BEF;
 Tue,  9 Jun 2020 07:48:06 +0000 (UTC)
Received: from [10.36.112.85] (ovpn-112-85.ams2.redhat.com [10.36.112.85])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 416715D9F3;
 Tue,  9 Jun 2020 07:48:02 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm64: Allow in-atomic injection of SPIs
To: Marc Zyngier <maz@kernel.org>
References: <20200526161136.451312-1-maz@kernel.org>
 <0a3875f0-9918-51f3-08eb-29a72eeb1306@redhat.com>
 <e3a8ea9947616f895021310127fe1477@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <45a8e2fc-afa2-1909-8f0e-dc6993193894@redhat.com>
Date: Tue, 9 Jun 2020 09:48:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <e3a8ea9947616f895021310127fe1477@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004816_700164_608D1D7D 
X-CRM114-Status: GOOD (  26.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDYvOC8yMCA3OjE5IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gSGkgRXJp
YywKPiAKPiBPbiAyMDIwLTA2LTA4IDE3OjU4LCBBdWdlciBFcmljIHdyb3RlOgo+PiBIaSBNYXJj
LAo+Pgo+PiBPbiA1LzI2LzIwIDY6MTEgUE0sIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IE9uIGEg
c3lzdGVtIHRoYXQgdXNlcyBTUElzIHRvIGltcGxlbWVudCBNU0lzIChhcyBpdCB3b3VsZCBiZQo+
Pj4gdGhlIGNhc2Ugb24gYSBHSUN2MiBzeXN0ZW0gZXhwb3NpbmcgYSBHSUN2Mm0gdG8gaXRzIGd1
ZXN0cyksCj4+PiB3ZSBkZW55IHRoZSBwb3NzaWJpbGl0eSBvZiBpbmplY3RpbmcgU1BJcyBvbiB0
aGUgaW4tYXRvbWljCj4+PiBmYXN0LXBhdGguCj4+Pgo+Pj4gVGhpcyByZXN1bHRzIGluIGEgdmVy
eSBsYXJnZSBhbW91bnQgb2YgY29udGV4dC1zd2l0Y2hlcwo+Pj4gKHJvdWdobHkgZXF1aXZhbGVu
dCB0byB0d2ljZSB0aGUgaW50ZXJydXB0IHJhdGUpIG9uIHRoZSBob3N0LAo+Pj4gYW5kIHN1Ym9w
dGltYWwgcGVyZm9ybWFuY2UgZm9yIHRoZSBndWVzdCAoYXMgbWVhc3VyZWQgd2l0aAo+Pj4gYSB0
ZXN0IHdvcmtsb2FkIGludm9sdmluZyBhIHZpcnRpbyBpbnRlcmZhY2UgYmFja2VkIGJ5IHZob3N0
LW5ldCkuCj4+PiBHaXZlbiB0aGF0IEdJQ3YyIHN5c3RlbXMgYXJlIHVzdWFsbHkgb24gdGhlIGxv
dy1lbmQgb2YgdGhlIHNwZWN0cnVtCj4+PiBwZXJmb3JtYW5jZSB3aXNlLCB0aGV5IGNvdWxkIGRv
IHdpdGhvdXQgdGhlIGFnZ3JhdmF0aW9uLgo+Pj4KPj4+IFdlIHNvbHZlZCB0aGlzIGZvciBHSUN2
MytJVFMgYnkgaGF2aW5nIGEgdHJhbnNsYXRpb24gY2FjaGUuIEJ1dAo+Pj4gU1BJcyBkbyBub3Qg
bmVlZCBhbnkgZXh0cmEgaW5mcmFzdHJ1Y3R1cmUsIGFuZCBjYW4gYmUgaW1tZWRpYXRlbHkKPj4+
IGluamVjdGVkIGluIHRoZSB2aXJ0dWFsIGRpc3RyaWJ1dG9yIGFzIHRoZSBsb2NraW5nIGlzIGFs
cmVhZHkKPj4+IGhlYXZ5IGVub3VnaCB0aGF0IHdlIGRvbid0IG5lZWQgdG8gd29ycnkgYWJvdXQg
YW55dGhpbmcuCj4+Pgo+Pj4gVGhpcyBoYWx2ZXMgdGhlIG51bWJlciBvZiBjb250ZXh0IHN3aXRj
aGVzIGZvciB0aGUgc2FtZSB3b3JrbG9hZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5
bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+Pj4gLS0tCj4+PiDCoGFyY2gvYXJtNjQva3ZtL3ZnaWMv
dmdpYy1pcnFmZC5jIHwgMjAgKysrKysrKysrKysrKysrKy0tLS0KPj4+IMKgYXJjaC9hcm02NC9r
dm0vdmdpYy92Z2ljLWl0cy5jwqDCoCB8wqAgMyArLS0KPj4+IMKgMiBmaWxlcyBjaGFuZ2VkLCAx
NyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2t2bS92Z2ljL3ZnaWMtaXJxZmQuYwo+Pj4gYi9hcmNoL2FybTY0L2t2bS92Z2ljL3Zn
aWMtaXJxZmQuYwo+Pj4gaW5kZXggZDhjZGZlYTVjYzk2Li4xMWE5ZjgxMTE1YWIgMTAwNjQ0Cj4+
PiAtLS0gYS9hcmNoL2FybTY0L2t2bS92Z2ljL3ZnaWMtaXJxZmQuYwo+Pj4gKysrIGIvYXJjaC9h
cm02NC9rdm0vdmdpYy92Z2ljLWlycWZkLmMKPj4gVGhlcmUgaXMgc3RpbGwgYSBjb21tZW50IGFi
b3ZlIHNheWluZwo+PiDCoCogQ3VycmVudGx5IG9ubHkgZGlyZWN0IE1TSSBpbmplY3Rpb24gaXMg
c3VwcG9ydGVkLgo+IAo+IEkgYmVsaWV2ZSB0aGlzIGNvbW1lbnQgdG8gYmUgY29ycmVjdC4gVGhl
cmUgaXMgbm8gcGF0aCBvdGhlcgo+IHRoYW4gTVNJIGluamVjdGlvbiB0aGF0IGxlYWRzIHVzIGhl
cmUuIENhc2UgaW4gcG9pbnQsIHdlIG9ubHkKPiBldmVyIGluamVjdCBhIHJpc2luZyBlZGdlIHRo
cm91Z2ggdGhpcyBBUEksIG5ldmVyIGEgZmFsbGluZyBvbmUuCgpJc24ndCB0aGlzIHBhdGggZW50
ZXJlZCB3aGVuZXZlciB5b3UgaGF2ZSBlaXRoZXIgb2YgdGhlIGNvbWJvIGJlaW5nIHVzZWQ/CktW
TV9TRVRfTVNJX1JPVVRJTkcgKyBLVk1fSVJRRkQKS1ZNX1NFVF9HU0lfUk9VVElORyArIEtWTV9J
UlFGRAoKSSBoYWQgaW4gbWluZCBkaXJlY3QgTVNJIGluamVjdGlvbiB3YXMgS1ZNX1NJR05BTF9N
U0kvCmt2bV9zZW5kX3VzZXJzcGFjZV9tc2kva3ZtX3NldF9tc2kKPiAKPj4+IEBAIC0xMDcsMTUg
KzEwNywyNyBAQCBpbnQga3ZtX2FyY2hfc2V0X2lycV9pbmF0b21pYyhzdHJ1Y3QKPj4+IGt2bV9r
ZXJuZWxfaXJxX3JvdXRpbmdfZW50cnkgKmUsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IGt2bSAqa3ZtLCBpbnQgaXJxX3NvdXJjZV9pZCwgaW50IGxldmVs
LAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgbGluZV9zdGF0
dXMpCj4+PiDCoHsKPj4+IC3CoMKgwqAgaWYgKGUtPnR5cGUgPT0gS1ZNX0lSUV9ST1VUSU5HX01T
SSAmJiB2Z2ljX2hhc19pdHMoa3ZtKSAmJiBsZXZlbCkgewo+Pj4gK8KgwqDCoCBpZiAoIWxldmVs
KQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRVdPVUxEQkxPQ0s7Cj4+PiArCj4+PiArwqDC
oMKgIHN3aXRjaCAoZS0+dHlwZSkgewo+Pj4gK8KgwqDCoCBjYXNlIEtWTV9JUlFfUk9VVElOR19N
U0k6IHsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGt2bV9tc2kgbXNpOwo+Pj4KPj4+ICvC
oMKgwqDCoMKgwqDCoCBpZiAoIXZnaWNfaGFzX2l0cyhrdm0pKQo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+IFNob3VsZG4ndCB3ZSByZXR1cm4gLUVXT1VMREJM
T0NLIGJ5IGRlZmF1bHQ/Cj4+IFFFTVUgZG9lcyBub3QgdXNlIHRoYXQgcGF0aCB3aXRoIEdJQ3Yy
bSBidXQgaW4ga3ZtX3NldF9yb3V0aW5nX2VudHJ5KCkgSQo+PiBkb24ndCBzZWUgYW55IGNoZWNr
IHJlbGF0ZWQgdG8gdGhlIElUUy4KPiAKPiBGYWlyIGVub3VnaC4gSSByZWFsbHkgZG9uJ3QgYW50
aWNpcGF0ZSBhbnlvbmUgdG8gYmUgdXNpbmcKPiBLVk1fSVJRX1JPVVRJTkdfTVNJIHdpdGggYW55
dGhpbmcgYnV0IHRoZSBJVFMsIGJ1dCB3aG8ga25vd3MsCj4gcGVvcGxlIGFyZSBjcmF6eSEgOy0p
Cj4gCj4+PiArCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGt2bV9wb3B1bGF0ZV9tc2koZSwgJm1zaSk7
Cj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKCF2Z2ljX2l0c19pbmplY3RfY2FjaGVkX3RyYW5zbGF0
aW9uKGt2bSwgJm1zaSkpCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gdmdpY19pdHNfaW5qZWN0X2NhY2hlZF90cmFuc2xhdGlv
bihrdm0sICZtc2kpOwo+Pgo+Pj4gwqDCoMKgwqAgfQo+Pj4KPj4+IC3CoMKgwqAgcmV0dXJuIC1F
V09VTERCTE9DSzsKPj4+ICvCoMKgwqAgY2FzZSBLVk1fSVJRX1JPVVRJTkdfSVJRQ0hJUDoKPj4+
ICvCoMKgwqDCoMKgwqDCoCAvKiBJbmplY3RpbmcgU1BJcyBpcyBhbHdheXMgcG9zc2libGUgaW4g
YXRvbWljIGNvbnRleHQgKi8KPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gdmdpY19pcnFmZF9z
ZXRfaXJxKGUsIGt2bSwgaXJxX3NvdXJjZV9pZCwgMSwKPj4+IGxpbmVfc3RhdHVzKTsKPj4gd2hh
dCBhYm91dCB0aGXCoMKgwqDCoCBtdXRleF9sb2NrKCZrdm0tPmxvY2spIGNhbGxlZCBmcm9tIHdp
dGhpbgo+PiB2Z2ljX2lycWZkX3NldF9pcnEva3ZtX3ZnaWNfaW5qZWN0X2lycS92Z2ljX2xhenlf
aW5pdAo+IAo+IEhvbHkgY3JhcC4gVGhlIGxhenkgR0lDIGluaXQgc3RyaWtlcyBhZ2FpbiA6LSgu
Cj4gSG93IGFib3V0IHRoaXMgb24gdG9wIG9mIHRoZSBleGlzdGluZyBwYXRjaDoKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vdmdpYy92Z2ljLWlycWZkLmMKPiBiL2FyY2gvYXJtNjQv
a3ZtL3ZnaWMvdmdpYy1pcnFmZC5jCj4gaW5kZXggMTFhOWY4MTExNWFiLi42ZTVjYTA0ZDU1ODkg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9rdm0vdmdpYy92Z2ljLWlycWZkLmMKPiArKysgYi9h
cmNoL2FybTY0L2t2bS92Z2ljL3ZnaWMtaXJxZmQuYwo+IEBAIC0xMTUsMTkgKzExNSwyMyBAQCBp
bnQga3ZtX2FyY2hfc2V0X2lycV9pbmF0b21pYyhzdHJ1Y3QKPiBrdm1fa2VybmVsX2lycV9yb3V0
aW5nX2VudHJ5ICplLAo+IMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGt2bV9tc2kgbXNpOwo+IAo+
IMKgwqDCoMKgwqDCoMKgwqAgaWYgKCF2Z2ljX2hhc19pdHMoa3ZtKSkKPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVh
azsKPiAKPiDCoMKgwqDCoMKgwqDCoMKgIGt2bV9wb3B1bGF0ZV9tc2koZSwgJm1zaSk7Cj4gwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gdmdpY19pdHNfaW5qZWN0X2NhY2hlZF90cmFuc2xhdGlvbihr
dm0sICZtc2kpOwo+IMKgwqDCoMKgIH0KPiAKPiDCoMKgwqDCoCBjYXNlIEtWTV9JUlFfUk9VVElO
R19JUlFDSElQOgo+IC3CoMKgwqDCoMKgwqDCoCAvKiBJbmplY3RpbmcgU1BJcyBpcyBhbHdheXMg
cG9zc2libGUgaW4gYXRvbWljIGNvbnRleHQgKi8KPiArwqDCoMKgwqDCoMKgwqAgLyoKPiArwqDC
oMKgwqDCoMKgwqDCoCAqIEluamVjdGluZyBTUElzIGlzIGFsd2F5cyBwb3NzaWJsZSBpbiBhdG9t
aWMgY29udGV4dAo+ICvCoMKgwqDCoMKgwqDCoMKgICogYXMgbG9uZyBhcyB0aGUgZGFtbiB2Z2lj
IGlzIGluaXRpYWxpemVkLgo+ICvCoMKgwqDCoMKgwqDCoMKgICovCj4gK8KgwqDCoMKgwqDCoMKg
IGlmICh1bmxpa2VseSghdmdpY19pbml0aWFsaXplZChrdm0pKSkKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBicmVhazsKWWVzIHRoaXMgc2hvdWxkIHByZXZlbnQgdGhlIHdhaXQgc2l0dWF0aW9u
LiBCdXQgbWF5IGJlIHdvcnRoIHRvIGRlZXAKaW50byB0aGUgY2FsbCBzdGFjay4gV29uJ3QgYW5h
bHl6ZXJzIGNvbXBsYWluIGF0IHNvbWUgcG9pbnQ/CgpUaGFua3MKCkVyaWMKPiDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiB2Z2ljX2lycWZkX3NldF9pcnEoZSwga3ZtLCBpcnFfc291cmNlX2lkLCAx
LCBsaW5lX3N0YXR1cyk7Cj4gLQo+IC3CoMKgwqAgZGVmYXVsdDoKPiAtwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIC1FV09VTERCTE9DSzsKPiDCoMKgwqDCoCB9Cj4gKwo+ICvCoMKgwqAgcmV0dXJuIC1F
V09VTERCTE9DSzsKPiDCoH0KPiAKPiDCoGludCBrdm1fdmdpY19zZXR1cF9kZWZhdWx0X2lycV9y
b3V0aW5nKHN0cnVjdCBrdm0gKmt2bSkKPiAKPiAKPiBUaGFua3MsCj4gCj4gwqDCoMKgwqDCoMKg
wqAgTS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
