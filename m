Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82921512C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 00:12:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ke53fA3LyQgAJEo6aekymsEllYwLzsX85ChRPtPydNo=; b=RDBhYIixyKzxPs
	cm9b4G/sumM7YtqVPWRXN1qjXnRJMnFoHfcraarFOWJGE/Z6dTX2/gLB1x2KHIx/toSrXA6UR5Iiv
	q05k/wog/SMtsDKyzKPNvAxNLdho7o2jni5fF/RnZOGmk2wJABW8TSsFNY4uSCBB2ta49XH6DsQdf
	R42cIDtQOx3x7l5byTqxHsDRSWiuDklyjNU6ATaJmO+zJz/gjMlgP43tFJN3yNzynSRPKChpQlMQv
	MDtfZ8zOPQBhiUKFUNCzfNay7WR6Wg7nEnQpBK+BVwTSO5hdptCIxh9VGXPxoOxUUrcjQYqBmINz3
	HGvrDTDIw0ESwwKTmSmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyktf-00043i-98; Mon, 03 Feb 2020 23:12:51 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyktV-00043M-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 23:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580771559;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S+xHZznV3t2eG3kCF4drdYOFzyWPYqtDgN9kAQ972k0=;
 b=Qa43ym3+fcGJfxI5LqZLVIbe3KSXG8qsnydcaHDcnLxO38CQOTGwz5MK7dOmwdxawzlE56
 Ad1jCpVzkNgvnLMgKehhDLRMgAoalyBz/GIAMiM3vZMcNpl/EmlEPo2F709hb3U2ZTV1I5
 pCjNfal0FF510rItIgXGmvapBokwGcQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-rrZ-Q6o6MHu8m4htLCxhaQ-1; Mon, 03 Feb 2020 18:12:34 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D23A5800D41;
 Mon,  3 Feb 2020 23:12:32 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-57.bne.redhat.com [10.64.54.57])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 35CA05C1B5;
 Mon,  3 Feb 2020 23:12:29 +0000 (UTC)
Subject: Re: [PATCH 4/4] arm64: Dereference CPU operations indirectly
To: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200202232437.7626-5-gshan@redhat.com>
 <097551e7-fbbd-98c1-bd32-83cf1cc0278b@arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <8711a93d-1418-ae1f-9175-ef6538ff397c@redhat.com>
Date: Tue, 4 Feb 2020 10:12:27 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <097551e7-fbbd-98c1-bd32-83cf1cc0278b@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: rrZ-Q6o6MHu8m4htLCxhaQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_151241_699608_5794EE94 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, lorenzo.pieralisi@arm.com,
 will@kernel.org, sudeep.holla@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMi80LzIwIDQ6MTggQU0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAwMi8wMi8yMDIwIDEx
OjI0IHBtLCBHYXZpbiBTaGFuIHdyb3RlOgo+PiBPbmUgQ1BVIG9wZXJhdGlvbnMgaXMgbWFpbnRh
aW5lZCB0aHJvdWdoIGFycmF5IEBjcHVfb3BzW05SX0NQVVNdLiAyS0IKPj4gbWVtb3J5IGlzIGNv
bnN1bWVkIHdoZW4gQ09ORklHX05SX0NQVVMgaXMgc2V0IHRvIDI1Ni4gSXQgc2VlbXMgdG9vCj4+
IG11Y2ggbWVtb3J5IGhhcyBiZWVuIHVzZWQgZm9yIHRoaXMuCj4+Cj4+IFRoaXMgaW50cm9kdWNl
cyBhbm90aGVyIGFycmF5IChAY3B1X29wc19pbmRleFtOUl9DUFVTXSksIG9mIHdoaWNoIHRoZQo+
PiBpbmRleCB0byBDUFUgb3BlcmF0aW9ucyBhcnJheSBpcyBzdG9yZWQuIFdpdGggdGhpcywgd2Ug
anVzdCBvbmUgYnl0ZQo+PiBmb3IgZWFjaCBDUFUsIDI1NiBieXRlcyBmb3IgMjU2IENQVXMsIHRv
IGRlcmVmZXJlbmNlIHRoZSBDUFUgb3BlcmF0aW9ucwo+PiBpbmRpcmVjdGx5Lgo+IAo+IEJ5IGV4
dGVuc2lvbiBvZiB0aGUgc2FtZSBhcmd1bWVudCwgdGhhdCdzIHN0aWxsIGZvdXIgdGltZXMgYXMg
YmlnIGFzIGl0ICpuZWVkcyogdG8gYmUgOykKPiAKPiBIb3cgaW1wb3J0YW50IGlzIHRoZSBtZW1v
cnkgc2F2aW5nIHZzLiB0aGUgcnVudGltZSBvdmVyaGVhZCBvZiBtb3JlIGluZGlyZWN0aW9uPwo+
IAoKWWVhaCwgSSdsbCBwYWNrIDQgQ1BVcycgaW5kZXhlcyBpbnRvIG9uZSBieXRlICBpbiB2Mi4g
V2l0aCB0aGlzLCB0aGUgc2l6ZSBpcwpkZWNyZWFzZWQgZnJvbSAyS0IgdG8gNjQgYnl0ZXMuIFRo
YW5rcyBmb3IgdGhlIG5pY2UgcmVtaW5kZXIgOikKCkl0J3MgaGFyZCB0byBlbGFib3JhdGUgdGhl
IGJlbmVmaXRzLiBUaGUga2VybmVsIGltYWdlIHNpemUgd2lsbCBiZSBkZWNyZWFzZWQsCmxlc3Mg
dHJhZmZpYyB3aWxsIGJlIG5lZWRlZCB3aGVuIGl0J3MgY29waWVkIG92ZXIgbmV0d29yay4gTGVz
cyB0aW1lIHdpbGwgYmUKbmVlZGVkIHdoZW4gaXQncyBjb21wcmVzc2VkIGFuZCBzbyBvbi4gVGhl
IG9wdGltaXphdGlvbiBoYXMgdGhlIGFzc3VtcHRpb24gLQp0aGVzZSBDUFUgb3BlcmF0aW9ucyBh
cmVuJ3QgdXNlZCBpbiBob3QgcGF0aC4KCj4+IFNpZ25lZC1vZmYtYnk6IEdhdmluIFNoYW4gPGdz
aGFuQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVfb3BzLmMg
fCA0NCArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdV9vcHMuYyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdV9v
cHMuYwo+PiBpbmRleCBlMTMzMDExZjY0YjUuLjJhNTgyMjJhMmYyNCAxMDA2NDQKPj4gLS0tIGEv
YXJjaC9hcm02NC9rZXJuZWwvY3B1X29wcy5jCj4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2Nw
dV9vcHMuYwo+PiBAQCAtMjAsMzkgKzIwLDMzIEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgY3B1X29w
ZXJhdGlvbnMgYWNwaV9wYXJraW5nX3Byb3RvY29sX29wczsKPj4gwqAgI2VuZGlmCj4+IMKgIGV4
dGVybiBjb25zdCBzdHJ1Y3QgY3B1X29wZXJhdGlvbnMgY3B1X3BzY2lfb3BzOwo+PiAtc3RhdGlj
IGNvbnN0IHN0cnVjdCBjcHVfb3BlcmF0aW9ucyAqY3B1X29wc1tOUl9DUFVTXSBfX3JvX2FmdGVy
X2luaXQ7Cj4+IC0KPj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgY3B1X29wZXJhdGlvbnMgKmNvbnN0
IGR0X3N1cHBvcnRlZF9jcHVfb3BzW10gX19pbml0Y29uc3QgPSB7Cj4+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IGNwdV9vcGVyYXRpb25zICpjb25zdCBjcHVfb3BzW10gPSB7Cj4+IMKgwqDCoMKgwqAg
JnNtcF9zcGluX3RhYmxlX29wcywKPj4gLcKgwqDCoCAmY3B1X3BzY2lfb3BzLAo+PiAtwqDCoMKg
IE5VTEwsCj4+IC19Owo+PiAtCj4+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGNwdV9vcGVyYXRpb25z
ICpjb25zdCBhY3BpX3N1cHBvcnRlZF9jcHVfb3BzW10gX19pbml0Y29uc3QgPSB7Cj4+IMKgICNp
ZmRlZiBDT05GSUdfQVJNNjRfQUNQSV9QQVJLSU5HX1BST1RPQ09MCj4+IMKgwqDCoMKgwqAgJmFj
cGlfcGFya2luZ19wcm90b2NvbF9vcHMsCj4+IMKgICNlbmRpZgo+PiDCoMKgwqDCoMKgICZjcHVf
cHNjaV9vcHMsCj4+IMKgwqDCoMKgwqAgTlVMTCwKPj4gwqAgfTsKPj4gK3N0YXRpYyB1bnNpZ25l
ZCBjaGFyIGNwdV9vcHNfaW5kZXhlc1tOUl9DUFVTXSBfX3JvX2FmdGVyX2luaXQ7Cj4+IC1zdGF0
aWMgY29uc3Qgc3RydWN0IGNwdV9vcGVyYXRpb25zICogX19pbml0IGNwdV9nZXRfb3BzKGNvbnN0
IGNoYXIgKm5hbWUpCj4+ICtzdGF0aWMgdW5zaWduZWQgY2hhciBfX2luaXQgZ2V0X2NwdV9vcHNf
aW5kZXgoY29uc3QgY2hhciAqbmFtZSkKPj4gwqAgewo+PiAtwqDCoMKgIGNvbnN0IHN0cnVjdCBj
cHVfb3BlcmF0aW9ucyAqY29uc3QgKm9wczsKPj4gLQo+PiAtwqDCoMKgIG9wcyA9IGFjcGlfZGlz
YWJsZWQgPyBkdF9zdXBwb3J0ZWRfY3B1X29wcyA6IGFjcGlfc3VwcG9ydGVkX2NwdV9vcHM7Cj4+
ICvCoMKgwqAgY29uc3Qgc3RydWN0IGNwdV9vcGVyYXRpb25zICpjb25zdCAqb3BzID0gY3B1X29w
czsKPj4gK8KgwqDCoCB1bnNpZ25lZCBjaGFyIGluZGV4ID0gMDsKPj4gwqDCoMKgwqDCoCB3aGls
ZSAoKm9wcykgewo+IAo+IEZvciBhIHN0YXRpY2FsbHktaW5pdGlhbGlzZWQgYXJyYXkgd2hpY2gg
aXNuJ3QgZXhwb3J0ZWQgdG8gb3RoZXIgY29tcGlsYXRpb24gdW5pdHMgeW91IGRvbid0IHJlYWxs
eSBuZWVkIHRoZSBudWxsLXRlcm1pbmF0b3IgZGFuY2U7IGEgc2ltcGxlCj4gCj4gIMKgwqDCoMKg
Zm9yIChpbmRleCA9IDA7IGluZGV4IDwgQVJSQVlfU0laRShjcHVfb3BzKTsgaW5kZXgrKykKPiAK
PiBzaG91bGQgc3VmZmljZS4KPiAKClllYWgsIHdpbGwgYmUgY2hhbmdlZCBpbiB2Mi4gVGhlIHNu
aXBwZXQgY29tZSBmcm9tIHRoZSBvcmlnaW5hbCBpbXBsZW1lbnRhdGlvbi4KCgo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgaWYgKCFzdHJjbXAobmFtZSwgKCpvcHMpLT5uYW1lKSkKPj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuICpvcHM7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiAoaW5kZXggKyAxKTsKPiAKPiBBbHNvIHRoaXMgbWFnaWMgKzEgaXMgYSBiaXQgaG9ycmli
bGUgLSBJIGRvbid0IHNlZSBhbnkgbmVlZCBmb3IgdGhlIGludGVyZmFjZSB0byBleHBvc2UgdGhl
IHVuZGVybHlpbmcgc3RvcmFnZSBmb3JtYXQsIHNvIGl0IGNvdWxkIGp1c3QgYXMgZWFzaWx5IHJl
dHVybiB0aGUgYWN0dWFsIGluZGV4IGFzIGFuIGludCB3aXRoIGEgbmVnYXRpdmUgZXJyb3IgY2Fz
ZS4KPiAKCkBjcHVfb3BzX2luZGV4ZXNbXSBpcyBjbGVhcmVkIG91dC4gRm9yIG9uZSBwYXJ0aWN1
bGFyIENQVSwgaXQncyBub3QgY29ycmVjdAp0byBmZXRjaCBpdHMgb3BlcmF0aW9ucyBpZiB0aGF0
IHdhc24ndCBpbml0aWFsaXplZCB5ZXQuIFNvIGluZGV4IzAgaXMgcmVzZXJ2ZWQKYXMgaW52YWxp
ZC4gSXQgc2VlbXMgd2UgZG9uJ3QgaGF2ZSB0aGlzIGNhc2UgYWZ0ZXIgcmVjaGVja2luZyB0aGUg
Y29kZS4gU28gaXQncwpzYWZlIHRvIHVzZSBpbmRleC0wIGFuZCB0aGUgc3VnZ2VzdGVkIGNoYW5n
ZXMgd2lsbCBiZSBpbmNsdWRlZCBpbiB2Mi4KCj4gUm9iaW4uCj4gCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCBvcHMrKzsKPj4gK8KgwqDCoMKgwqDCoMKgIGluZGV4Kys7Cj4+IMKgwqDCoMKgwqAgfQo+
PiAtwqDCoMKgIHJldHVybiBOVUxMOwo+PiArwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9Cj4+IC1z
dGF0aWMgY29uc3QgY2hhciAqX19pbml0IGNwdV9yZWFkX2VuYWJsZV9tZXRob2QoaW50IGNwdSkK
Pj4gK3N0YXRpYyBjb25zdCBjaGFyICpfX2luaXQgZ2V0X2NwdV9tZXRob2QoaW50IGNwdSkKPj4g
wqAgewo+PiDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgKmVuYWJsZV9tZXRob2Q7Cj4+IEBAIC05OCwy
MSArOTIsMzMgQEAgc3RhdGljIGNvbnN0IGNoYXIgKl9faW5pdCBjcHVfcmVhZF9lbmFibGVfbWV0
aG9kKGludCBjcHUpCj4+IMKgwqAgKi8KPj4gwqAgaW50IF9faW5pdCBpbml0X2NwdV9vcHMoaW50
IGNwdSkKPj4gwqAge1JlY2hlY2tlZCB0aGUgY29kZSwgaXQgc2VlbXMgd2UgZG9uJ3QgaGF2ZSB0
aGlzIGNhc2UKPj4gLcKgwqDCoCBjb25zdCBjaGFyICplbmFibGVfbWV0aG9kID0gY3B1X3JlYWRf
ZW5hYmxlX21ldGhvZChjcHUpOwo+PiArwqDCoMKgIGNvbnN0IGNoYXIgKmVuYWJsZV9tZXRob2Qg
PSBnZXRfY3B1X21ldGhvZChjcHUpOwo+PiArwqDCoMKgIHVuc2lnbmVkIGNoYXIgaW5kZXg7Cj4+
IMKgwqDCoMKgwqAgaWYgKCFlbmFibGVfbWV0aG9kKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FTk9ERVY7Cj4+IC3CoMKgwqAgY3B1X29wc1tjcHVdID0gY3B1X2dldF9vcHMoZW5hYmxl
X21ldGhvZCk7Cj4+IC3CoMKgwqAgaWYgKCFjcHVfb3BzW2NwdV0pIHsKPj4gK8KgwqDCoCBpbmRl
eCA9IGdldF9jcHVfb3BzX2luZGV4KGVuYWJsZV9tZXRob2QpOwo+PiArwqDCoMKgIGlmICghaW5k
ZXgpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHByX3dhcm4oIlVuc3VwcG9ydGVkIGVuYWJsZS1t
ZXRob2Q6ICVzXG4iLCBlbmFibGVfbWV0aG9kKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVy
biAtRU9QTk9UU1VQUDsKPj4gwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqAgY3B1X29wc19pbmRleGVz
W2NwdV0gPSBpbmRleDsKPj4gKwo+PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9Cj4+IMKg
IGNvbnN0IHN0cnVjdCBjcHVfb3BlcmF0aW9ucyAqZ2V0X2NwdV9vcHMoaW50IGNwdSkKPj4gwqAg
ewo+PiAtwqDCoMKgIHJldHVybiBjcHVfb3BzW2NwdV07Cj4+ICvCoMKgwqAgdW5zaWduZWQgY2hh
ciBpbmRleCA9IGNwdV9vcHNfaW5kZXhlc1tjcHVdOwo+PiArCj4+ICvCoMKgwqAgLyoKPj4gK8Kg
wqDCoMKgICogVGhlIGNvcnJlc3BvbmRpbmcgQ1BVIG9wZXJhdGlvbiBpc24ndCBzZXQgd2hlbiB0
aGUKPj4gK8KgwqDCoMKgICogaW5kZXggaXMgZXF1YWwgdG8gemVyby4KPj4gK8KgwqDCoMKgICov
Cj4+ICvCoMKgwqAgaWYgKCFpbmRleCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBOVUxMOwo+
PiArCj4+ICvCoMKgwqAgcmV0dXJuIGNwdV9vcHNbaW5kZXggLSAxXTsKPj4gwqAgfQo+PgoKVGhh
bmtzLApHYXZpbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
