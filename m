Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A437013C98D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yVra/AS8z7hSGoVlHdCMzCypBDAP94mCEXWleoWa14Y=; b=pZ+9HPnTuCbslbr09qU1LIYM0
	3YBvxfes+abBAWgwSBc7jLP1ThcKDsbpOcy700IhzCj5WMUQFmBBLTkblnEQyFOdk2tEddHyqVXz/
	icYWmS9LBbaJ1qx35CdmAgS/h55XW4084SDqCIr+yy6nowk3aJU1VUJ8RMeCyfVVQcIiKwsKA/hTM
	Jeb1f2bvd5wHzg45C0jfdMKFJrrTNqvTgejHug8wSkJL+kAKTW8OMzTG4tbV+uo9k3B9njL6mXsBb
	DrfHK3pPWuqrOhsnJ5VwSczcGxQDSBDV+0K1nBxAqlE8pNadYORkdXgsSraBZY1SY70RHTKH7BONX
	3J1nUnnGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlfi-0000Yj-Fn; Wed, 15 Jan 2020 16:37:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlfX-0000XJ-KQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:37:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D710328;
 Wed, 15 Jan 2020 08:37:21 -0800 (PST)
Received: from [10.1.199.115] (e120195-lin.cambridge.arm.com [10.1.199.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 610E43F718;
 Wed, 15 Jan 2020 08:37:20 -0800 (PST)
Subject: Re: [RFC v5 44/57] objtool: arm64: Implement functions to add switch
 tables alternatives
To: Julien Thierry <jthierry@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-45-jthierry@redhat.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <370e38b3-3c0c-e552-16fa-36571dd8e66b@arm.com>
Date: Wed, 15 Jan 2020 16:37:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200109160300.26150-45-jthierry@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_083723_763046_6159B620 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will@kernel.org,
 jpoimboe@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSnVsaWVuLAoKT24gMS85LzIwIDQ6MDIgUE0sIEp1bGllbiBUaGllcnJ5IHdyb3RlOgo+IFRo
aXMgcGF0Y2ggaW1wbGVtZW50cyB0aGUgZnVuY3Rpb25zIHJlcXVpcmVkIHRvIGlkZW50aWZ5IGFu
ZCBhZGQgYXMKPiBhbHRlcm5hdGl2ZXMgYWxsIHRoZSBwb3NzaWJsZSBkZXN0aW5hdGlvbnMgb2Yg
dGhlIHN3aXRjaCB0YWJsZS4KPiBUaGlzIGltcGxlbWVudGF0aW9uIHJlbGllcyBvbiB0aGUgbmV3
IHBsdWdpbiBpbnRyb2R1Y2VkIHByZXZpb3VzbHkgd2hpY2gKPiByZWNvcmRzIGluZm9ybWF0aW9u
IGFib3V0IHRoZSBzd2l0Y2gtdGFibGUgaW4gYQo+IC5kaXNjYXJkLnN3aXRjaF90YWJsZV9pbmZv
cm1hdGlvbiBzZWN0aW9uLgoKSSB0aGluayB5b3UgZm9yZ290IHRvIHVwZGF0ZSB0aGUgbmFtZSBv
ZiB0aGUgc2VjdGlvbiB3aXRoIHJlc3BlY3QgdG8gCndoYXQgd2FzIGRvbmUgaW4gdGhlIHByZXZp
b3VzIHBhdGNoICguZGlzY2FyZC5zd2l0Y2hfdGFibGVfaW5mbyBpbnN0ZWFkIApvZiAuZGlzY2Fy
ZC5zd2l0Y2hfdGFibGVfaW5mb3JtYXRpb24pLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYXBoYWVs
IEdhdWx0IDxyYXBoYWVsLmdhdWx0QGFybS5jb20+Cj4gW0ouVC46IFVwZGF0ZSBhcmNoIGltcGxl
bWVudGF0aW9uIHRvIG5ldyBwcm90b3R5cGVzLAo+ICAgICAgICAgVXBkYXRlIHN3aXRjaCB0YWJs
ZSBpbmZvcm1hdGlvbiBzZWN0aW9uIG5hbWUsCj4gICAgICAgICBEbyBzb21lIGNsZWFuIHVwLAo+
ICAgICAgICAgVXNlIHRoZSBvZmZzZXQgc2lnbiBpbmZvcm1hdGlvbiwKPiAgICAgICAgIFVzZSB0
aGUgbmV3bHkgYWRkZWQgcmVsYSB0byBmaW5kIHRoZSBjb3JyZXNwb25kaW5nIGp1bXAgaW5zdHJ1
Y3Rpb25dCj4gU2lnbmVkLW9mZi1ieTogSnVsaWVuIFRoaWVycnkgPGp0aGllcnJ5QHJlZGhhdC5j
b20+Cj4gLS0tCj4gICB0b29scy9vYmp0b29sL2FyY2gvYXJtNjQvYXJjaF9zcGVjaWFsLmMgICAg
ICAgfCAyNTEgKysrKysrKysrKysrKysrKystCj4gICAuLi4vb2JqdG9vbC9hcmNoL2FybTY0L2lu
Y2x1ZGUvYXJjaF9zcGVjaWFsLmggfCAgIDIgKwo+ICAgdG9vbHMvb2JqdG9vbC9jaGVjay5jICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCj4gICB0b29scy9vYmp0b29sL2NoZWNrLmgg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKwo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAyNTUg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdG9vbHMvb2Jq
dG9vbC9hcmNoL2FybTY0L2FyY2hfc3BlY2lhbC5jIGIvdG9vbHMvb2JqdG9vbC9hcmNoL2FybTY0
L2FyY2hfc3BlY2lhbC5jCj4gaW5kZXggNTIzOTQ4OWM5YzU3Li5hMTVmNjY5N2RjNzQgMTAwNjQ0
Cj4gLS0tIGEvdG9vbHMvb2JqdG9vbC9hcmNoL2FybTY0L2FyY2hfc3BlY2lhbC5jCj4gKysrIGIv
dG9vbHMvb2JqdG9vbC9hcmNoL2FybTY0L2FyY2hfc3BlY2lhbC5jCj4gQEAgLTEsMTUgKzEsMjYy
IEBACj4gICAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgo+ICAg
Cj4gKyNpbmNsdWRlIDxzdGRsaWIuaD4KPiArI2luY2x1ZGUgPHN0cmluZy5oPgo+ICsKPiAgICNp
bmNsdWRlICIuLi8uLi9zcGVjaWFsLmgiCj4gKyNpbmNsdWRlICIuLi8uLi93YXJuLmgiCj4gKyNp
bmNsdWRlICJhcmNoX3NwZWNpYWwuaCIKPiArI2luY2x1ZGUgImJpdF9vcGVyYXRpb25zLmgiCj4g
KyNpbmNsdWRlICJpbnNuX2RlY29kZS5oIgo+ICsKPiArLyoKPiArICogVGhlIGFybTY0X3N3aXRj
aF90YWJsZV9kZXRlY3Rpb25fcGx1Z2luIGdlbmVyYXRlIGFuIGFycmF5IG9mIGVsZW1lbnRzCj4g
KyAqIGRlc2NyaWJlZCBieSB0aGUgZm9sbG93aW5nIHN0cnVjdHVyZS4KPiArICogRWFjaCBqdW1w
IHRhYmxlIGZvdW5kIGluIHRoZSBjb21waWxhdGlvbiB1bml0IGlzIGFzc29jaWF0ZWQgd2l0aCBv
bmUgb2YKPiArICogZW50cmllcyBvZiB0aGUgYXJyYXkuCj4gKyAqLwo+ICtzdHJ1Y3Qgc3dpdGNo
X3RhYmxlX2luZm8gewo+ICsJdTY0IHN3aXRjaF90YWJsZV9yZWY7IC8vIFJlbG9jYXRpb24gdGFy
Z2V0IHJlZmVyZW5jaW5nIHRoZSBiZWdpbm5pbmcgb2YgdGhlIGp1bXAgdGFibGUKPiArCXU2NCBk
eW5fanVtcF9yZWY7IC8vIFJlbG9jYXRpb24gdGFyZ2V0IHJlZmVyZW5jaW5nIHRoZSBzZXQgb2Yg
aW5zdHJ1Y3Rpb25zIHNldHRpbmcgdXAgdGhlIGp1bXAgdG8gdGhlIHRhYmxlCj4gKwl1NjQgbmJf
ZW50cmllczsKPiArCXU2NCBvZmZzZXRfdW5zaWduZWQ7Cj4gK30gX19hdHRyaWJ1dGVfXygoX19w
YWNrZWRfXykpOwo+ICsKPiArc3RhdGljIGJvb2wgaW5zbl9pc19hZHJfcGNyZWwoc3RydWN0IGlu
c3RydWN0aW9uICppbnNuKQo+ICt7Cj4gKwl1MzIgb3Bjb2RlID0gKih1MzIgKikoaW5zbi0+c2Vj
LT5kYXRhLT5kX2J1ZiArIGluc24tPm9mZnNldCk7Cj4gKwo+ICsJcmV0dXJuICgob3Bjb2RlID4+
IDI0KSAmIDB4MWYpID09IDB4MTA7Cj4gK30KPiArCj4gK3N0YXRpYyBzNjQgbmV4dF9vZmZzZXQo
dm9pZCAqdGFibGUsIHU4IGVudHJ5X3NpemUsIGJvb2wgaXNfc2lnbmVkKQo+ICt7Cj4gKwlpZiAo
IWlzX3NpZ25lZCkgewo+ICsJCXN3aXRjaCAoZW50cnlfc2l6ZSkgewo+ICsJCWNhc2UgMToKPiAr
CQkJcmV0dXJuICoodTggKikodGFibGUpOwo+ICsJCWNhc2UgMjoKPiArCQkJcmV0dXJuICoodTE2
ICopKHRhYmxlKTsKPiArCQlkZWZhdWx0Ogo+ICsJCQlyZXR1cm4gKih1MzIgKikodGFibGUpOwo+
ICsJCX0KPiArCX0gZWxzZSB7Cj4gKwkJc3dpdGNoIChlbnRyeV9zaXplKSB7Cj4gKwkJY2FzZSAx
Ogo+ICsJCQlyZXR1cm4gKihzOCAqKSh0YWJsZSk7Cj4gKwkJY2FzZSAyOgo+ICsJCQlyZXR1cm4g
KihzMTYgKikodGFibGUpOwo+ICsJCWRlZmF1bHQ6Cj4gKwkJCXJldHVybiAqKHMzMiAqKSh0YWJs
ZSk7Cj4gKwkJfQo+ICsJfQo+ICt9Cj4gKwo+ICtzdGF0aWMgdTMyIGdldF90YWJsZV9lbnRyeV9z
aXplKHUzMiBpbnNuKQo+ICt7Cj4gKwl1bnNpZ25lZCBjaGFyIHNpemUgPSAoaW5zbiA+PiAzMCkg
JiBPTkVTKDIpOwo+ICsKPiArCXN3aXRjaCAoc2l6ZSkgewo+ICsJY2FzZSAwOgo+ICsJCXJldHVy
biAxOwo+ICsJY2FzZSAxOgo+ICsJCXJldHVybiAyOwo+ICsJZGVmYXVsdDoKPiArCQlyZXR1cm4g
NDsKPiArCX0KPiArfQo+ICsKPiArc3RhdGljIGludCBhZGRfcG9zc2libGVfYnJhbmNoKHN0cnVj
dCBvYmp0b29sX2ZpbGUgKmZpbGUsCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW5zdHJ1Y3Rpb24gKmlu
c24sCj4gKwkJCSAgICAgICB1MzIgYmFzZSwgczY0IG9mZnNldCkKPiArewo+ICsJc3RydWN0IGlu
c3RydWN0aW9uICpkZXN0X2luc247Cj4gKwlzdHJ1Y3QgYWx0ZXJuYXRpdmUgKmFsdDsKPiArCj4g
KwlvZmZzZXQgPSBiYXNlICsgNCAqIG9mZnNldDsKPiArCj4gKwlkZXN0X2luc24gPSBmaW5kX2lu
c24oZmlsZSwgaW5zbi0+c2VjLCBvZmZzZXQpOwo+ICsJaWYgKCFkZXN0X2luc24pCj4gKwkJcmV0
dXJuIDA7Cj4gKwo+ICsJYWx0ID0gY2FsbG9jKDEsIHNpemVvZigqYWx0KSk7Cj4gKwlpZiAoIWFs
dCkgewo+ICsJCVdBUk4oImFsbG9jYXRpb24gZmFpbHVyZSwgY2FuJ3QgYWRkIGp1bXAgYWx0ZXJu
YXRpdmUiKTsKPiArCQlyZXR1cm4gLTE7Cj4gKwl9Cj4gKwo+ICsJYWx0LT5pbnNuID0gZGVzdF9p
bnNuOwo+ICsJYWx0LT5za2lwX29yaWcgPSB0cnVlOwo+ICsJbGlzdF9hZGRfdGFpbCgmYWx0LT5s
aXN0LCAmaW5zbi0+YWx0cyk7Cj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHN0cnVj
dCBzd2l0Y2hfdGFibGVfaW5mbyAqZ2V0X3N3dF9pbmZvKHN0cnVjdCBzZWN0aW9uICpzd3RfaW5m
b19zZWMsCj4gKwkJCQkJICAgICAgc3RydWN0IGluc3RydWN0aW9uICppbnNuKQo+ICt7Cj4gKwl1
NjQgKnRhYmxlX3JlZjsKPiArCj4gKwlpZiAoIWluc24tPmp1bXBfdGFibGUpIHsKPiArCQlXQVJO
KCJubyBqdW1wIHRhYmxlIGF2YWlsYWJsZSBmb3IgJXMrMHglbHgiLAo+ICsJCSAgICAgaW5zbi0+
c2VjLT5uYW1lLCBpbnNuLT5vZmZzZXQpOwo+ICsJCXJldHVybiBOVUxMOwo+ICsJfQo+ICsJdGFi
bGVfcmVmID0gKHZvaWQgKikoc3d0X2luZm9fc2VjLT5kYXRhLT5kX2J1ZiArCj4gKwkJCSAgICAg
aW5zbi0+anVtcF90YWJsZS0+b2Zmc2V0KTsKPiArCXJldHVybiBjb250YWluZXJfb2YodGFibGVf
cmVmLCBzdHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8sCj4gKwkJCSAgICBzd2l0Y2hfdGFibGVfcmVm
KTsKPiArfQo+ICsKPiArc3RhdGljIGludCBhZGRfYXJtNjRfanVtcF90YWJsZV9kZXN0cyhzdHJ1
Y3Qgb2JqdG9vbF9maWxlICpmaWxlLAo+ICsJCQkJICAgICAgc3RydWN0IGluc3RydWN0aW9uICpp
bnNuKQo+ICt7Cj4gKwlzdHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8gKnN3dF9pbmZvOwo+ICsJc3Ry
dWN0IHNlY3Rpb24gKm9ianRvb2xfZGF0YTsKPiArCXN0cnVjdCBzZWN0aW9uICpyb2RhdGFfc2Vj
Owo+ICsJc3RydWN0IHNlY3Rpb24gKmJyYW5jaF9zZWM7Cj4gKwlzdHJ1Y3QgaW5zdHJ1Y3Rpb24g
KnByZV9qdW1wX2luc247Cj4gKwl1OCAqc3dpdGNoX3RhYmxlOwo+ICsJdTMyIGVudHJ5X3NpemU7
Cj4gKwo+ICsJb2JqdG9vbF9kYXRhID0gZmluZF9zZWN0aW9uX2J5X25hbWUoZmlsZS0+ZWxmLAo+
ICsJCQkJCSAgICAiLmRpc2NhcmQuc3dpdGNoX3RhYmxlX2luZm8iKTsKPiArCWlmICghb2JqdG9v
bF9kYXRhKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCS8qCj4gKwkgKiAxLiBJZGVudGlmeSBlbnRy
eSBmb3IgdGhlIHN3aXRjaCB0YWJsZQo+ICsJICogMi4gUmV0cmlldmUgYnJhbmNoIGluc3RydWN0
aW9uCj4gKwkgKiAzLiBSZXRyaWV2ZSBiYXNlIG9mZnNldAo+ICsJICogMy4gRm9yIGFsbCBlbnRy
aWVzIGluIHN3aXRjaCB0YWJsZToKPiArCSAqICAgICAzLjEuIENvbXB1dGUgbmV3IG9mZnNldAo+
ICsJICogICAgIDMuMi4gQ3JlYXRlIGFsdGVybmF0aXZlIGluc3RydWN0aW9uCj4gKwkgKiAgICAg
My4zLiBBZGQgYWx0X2luc3RyIHRvIGluc24tPmFsdHMgbGlzdAo+ICsJICovCj4gKwlzd3RfaW5m
byA9IGdldF9zd3RfaW5mbyhvYmp0b29sX2RhdGEsIGluc24pOwo+ICsKPiArCS8qIHJldHJpZXZp
bmcgcHJlIGp1bXAgaW5zdHJ1Y3Rpb24gKGxkcikgKi8KPiArCWJyYW5jaF9zZWMgPSBpbnNuLT5z
ZWM7Cj4gKwlwcmVfanVtcF9pbnNuID0gZmluZF9pbnNuKGZpbGUsIGJyYW5jaF9zZWMsCj4gKwkJ
CQkgIGluc24tPm9mZnNldCAtIDMgKiBzaXplb2YodTMyKSk7Cj4gKwllbnRyeV9zaXplID0gZ2V0
X3RhYmxlX2VudHJ5X3NpemUoKih1MzIgKikoYnJhbmNoX3NlYy0+ZGF0YS0+ZF9idWYgKwo+ICsJ
CQkJCQkgICBwcmVfanVtcF9pbnNuLT5vZmZzZXQpKTsKPiArCj4gKwkvKiByZXRyaWV2aW5nIHN3
aXRjaCB0YWJsZSBjb250ZW50ICovCj4gKwlyb2RhdGFfc2VjID0gZmluZF9zZWN0aW9uX2J5X25h
bWUoZmlsZS0+ZWxmLCAiLnJvZGF0YSIpOwo+ICsJc3dpdGNoX3RhYmxlID0gKHU4ICopKHJvZGF0
YV9zZWMtPmRhdGEtPmRfYnVmICsKPiArCQkJICAgICAgaW5zbi0+anVtcF90YWJsZS0+YWRkZW5k
KTsKPiArCj4gKwkvKgo+ICsJICogaXRlcmF0aW5nIG92ZXIgdGhlIHByZS1qdW1wcyBpbnN0cnVj
dGlvbiBpbiBvcmRlciB0bwo+ICsJICogcmV0cmlldmUgc3dpdGNoIGJhc2Ugb2Zmc2V0Lgo+ICsJ
ICovCj4gKwl3aGlsZSAocHJlX2p1bXBfaW5zbiAmJiBwcmVfanVtcF9pbnNuLT5vZmZzZXQgPD0g
aW5zbi0+b2Zmc2V0KSB7Cj4gKwkJaWYgKGluc25faXNfYWRyX3BjcmVsKHByZV9qdW1wX2luc24p
KSB7Cj4gKwkJCXU2NCBiYXNlX29mZnNldDsKPiArCQkJaW50IGk7Cj4gKwo+ICsJCQliYXNlX29m
ZnNldCA9IHByZV9qdW1wX2luc24tPm9mZnNldCArCj4gKwkJCQkgICAgICBwcmVfanVtcF9pbnNu
LT5pbW1lZGlhdGU7Cj4gKwo+ICsJCQkvKgo+ICsJCQkgKiBPbmNlIHdlIGhhdmUgdGhlIHN3aXRj
aCB0YWJsZSBlbnRyeSBzaXplCj4gKwkJCSAqIHdlIGFkZCBldmVyeSBwb3NzaWJsZSBkZXN0aW5h
dGlvbiB1c2luZwo+ICsJCQkgKiBhbHRlcm5hdGl2ZXMgb2YgdGhlIG9yaWdpbmFsIGJyYW5jaAo+
ICsJCQkgKiBpbnN0cnVjdGlvbgo+ICsJCQkgKi8KPiArCQkJZm9yIChpID0gMDsgaSA8IHN3dF9p
bmZvLT5uYl9lbnRyaWVzOyBpKyspIHsKPiArCQkJCXM2NCB0YWJsZV9vZmZzZXQgPSBuZXh0X29m
ZnNldChzd2l0Y2hfdGFibGUsCj4gKwkJCQkJCQkgICAgICAgZW50cnlfc2l6ZSwKPiArCQkJCQkJ
CSAgICAgICAhc3d0X2luZm8tPm9mZnNldF91bnNpZ25lZCk7Cj4gKwo+ICsJCQkJaWYgKGFkZF9w
b3NzaWJsZV9icmFuY2goZmlsZSwgaW5zbiwKPiArCQkJCQkJCWJhc2Vfb2Zmc2V0LAo+ICsJCQkJ
CQkJdGFibGVfb2Zmc2V0KSkgewo+ICsJCQkJCXJldHVybiAtMTsKPiArCQkJCX0KPiArCQkJCXN3
aXRjaF90YWJsZSArPSBlbnRyeV9zaXplOwo+ICsJCQl9Cj4gKwkJCWJyZWFrOwo+ICsJCX0KPiAr
CQlwcmVfanVtcF9pbnNuID0gbmV4dF9pbnNuX3NhbWVfc2VjKGZpbGUsIHByZV9qdW1wX2luc24p
Owo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gICAKPiAgIGludCBhcmNoX2FkZF9qdW1w
X3RhYmxlX2Rlc3RzKHN0cnVjdCBvYmp0b29sX2ZpbGUgKmZpbGUsCj4gICAJCQkgICAgICBzdHJ1
Y3QgaW5zdHJ1Y3Rpb24gKmluc24pCj4gICB7Cj4gLQlyZXR1cm4gMDsKPiArCXJldHVybiBhZGRf
YXJtNjRfanVtcF90YWJsZV9kZXN0cyhmaWxlLCBpbnNuKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMg
c3RydWN0IHJlbGEgKmZpbmRfc3d0X2luZm9fanVtcF9yZWxhKHN0cnVjdCBzZWN0aW9uICpzd3Rf
aW5mb19zZWMsCj4gKwkJCQkJICAgIHUzMiBpbmRleCkKPiArewo+ICsJdTMyIHJlbGFfb2Zmc2V0
Owo+ICsKPiArCXJlbGFfb2Zmc2V0ID0gaW5kZXggKiBzaXplb2Yoc3RydWN0IHN3aXRjaF90YWJs
ZV9pbmZvKSArCj4gKwkJICAgICAgb2Zmc2V0b2Yoc3RydWN0IHN3aXRjaF90YWJsZV9pbmZvLCBk
eW5fanVtcF9yZWYpOwo+ICsJcmV0dXJuIGZpbmRfcmVsYV9ieV9kZXN0KHN3dF9pbmZvX3NlYywg
cmVsYV9vZmZzZXQpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IHJlbGEgKmZpbmRfc3d0X2lu
Zm9fdGFibGVfcmVsYShzdHJ1Y3Qgc2VjdGlvbiAqc3d0X2luZm9fc2VjLAo+ICsJCQkJCSAgICAg
dTMyIGluZGV4KQo+ICt7Cj4gKwl1MzIgcmVsYV9vZmZzZXQ7Cj4gKwo+ICsJcmVsYV9vZmZzZXQg
PSBpbmRleCAqIHNpemVvZihzdHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8pICsKPiArCQkgICAgICBv
ZmZzZXRvZihzdHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8sIHN3aXRjaF90YWJsZV9yZWYpOwo+ICsJ
cmV0dXJuIGZpbmRfcmVsYV9ieV9kZXN0KHN3dF9pbmZvX3NlYywgcmVsYV9vZmZzZXQpOwo+ICt9
Cj4gKwo+ICsvKgo+ICsgKiBBYXJjaDY0IGp1bXAgdGFibGVzIGFyZSBqdXN0IGFycmF5cyBvZiBv
ZmZzZXRzIChvZiB2YXJ5aW5nIHNpemUvc2lnbmVzcykKPiArICogcmVwcmVzZW50aW5nIHRoZSBw
b3RlbnRpYWwgZGVzdGluYXRpb24gZnJvbSBhIGJhc2UgYWRkcmVzcyBsb2FkZWQgYnkgYW4gYWRy
Cj4gKyAqIGluc3RydWN0aW9uLgo+ICsgKgo+ICsgKiBBYXJjaDY0IGJyYW5jaGVzIHRvIGp1bXAg
dGFibGVzIGFyZSBjb21wb3NlZCBvZiBtdWx0aXBsZSBpbnN0cnVjdGlvbnM6Cj4gKyAqCj4gKyAq
ICAgICBsZHI8Pz4gIHhfb2Zmc2V0LCBbeF9vZmZzZXRzX3RhYmxlLCB4X2luZGV4LCAuLi5dCj4g
KyAqICAgICBhZHIgICAgIHhfZGVzdF9iYXNlLCA8YWRkcj4KPiArICogICAgIGFkZCAgICAgeF9k
ZXN0LCB4X3RhcmdldF9iYXNlLCB4X29mZnNldCwgLi4uCj4gKyAqICAgICBiciAgICAgIHhfZGVz
dAo+ICsgKgo+ICsgKiBUaGUgYXJtNjRfc3dpdGNoX3RhYmxlX2RldGVjdGlvbl9wbHVnaW4gd2ls
bCBtYWtlIHRoZSBjb25uZWN0aW9uIGJldHdlZW4KPiArICogdGhlIGluc3RydWN0aW9uIHNldHRp
bmcgeF9vZmZzZXRzX3RhYmxlIChkeW5fanVtcF9yZWYpIGFuZCB0aGUgYWN0dWFsCj4gKyAqIHRh
YmxlIG9mIG9mZnNldHMgKHN3aXRjaF90YWJsZV9yZWYpCj4gKyAqLwo+ICAgc3RydWN0IHJlbGEg
KmFyY2hfZmluZF9zd2l0Y2hfdGFibGUoc3RydWN0IG9ianRvb2xfZmlsZSAqZmlsZSwKPiAgIAkJ
CQkgICAgc3RydWN0IGluc3RydWN0aW9uICppbnNuKQo+ICAgewo+IC0JcmV0dXJuIE5VTEw7Cj4g
KwlzdHJ1Y3Qgc2VjdGlvbiAqb2JqdG9vbF9kYXRhOwo+ICsJc3RydWN0IHJlbGEgKnJlcyA9IE5V
TEw7Cj4gKwl1MzIgbmJfc3d0X2VudHJpZXMgPSAwOwo+ICsJdTMyIGk7Cj4gKwo+ICsJb2JqdG9v
bF9kYXRhID0gZmluZF9zZWN0aW9uX2J5X25hbWUoZmlsZS0+ZWxmLAo+ICsJCQkJCSAgICAiLmRp
c2NhcmQuc3dpdGNoX3RhYmxlX2luZm8iKTsKPiArCWlmIChvYmp0b29sX2RhdGEpCj4gKwkJbmJf
c3d0X2VudHJpZXMgPSBvYmp0b29sX2RhdGEtPnNoLnNoX3NpemUgLwo+ICsJCQkJIHNpemVvZihz
dHJ1Y3Qgc3dpdGNoX3RhYmxlX2luZm8pOwo+ICsKPiArCWZvciAoaSA9IDA7IGkgPCBuYl9zd3Rf
ZW50cmllczsgaSsrKSB7Cj4gKwkJc3RydWN0IHJlbGEgKmluZm9fcmVsYTsKPiArCj4gKwkJaW5m
b19yZWxhID0gZmluZF9zd3RfaW5mb19qdW1wX3JlbGEob2JqdG9vbF9kYXRhLCBpKTsKPiArCQlp
ZiAoaW5mb19yZWxhICYmIGluZm9fcmVsYS0+c3ltLT5zZWMgPT0gaW5zbi0+c2VjICYmCj4gKwkJ
ICAgIGluZm9fcmVsYS0+YWRkZW5kID09IGluc24tPm9mZnNldCkgewo+ICsJCQlpZiAocmVzKSB7
Cj4gKwkJCQlXQVJOX0ZVTkMoImR1cGxpY2F0ZSBvYmp0b29sX2RhdGEgcmVsYSIsCj4gKwkJCQkJ
ICBpbmZvX3JlbGEtPnNlYywgaW5mb19yZWxhLT5vZmZzZXQpOwo+ICsJCQkJY29udGludWU7Cj4g
KwkJCX0KPiArCQkJcmVzID0gZmluZF9zd3RfaW5mb190YWJsZV9yZWxhKG9ianRvb2xfZGF0YSwg
aSk7Cj4gKwkJCWlmICghcmVzKQo+ICsJCQkJV0FSTl9GVU5DKCJtaXNzaW5nIHJlbG9jYXRpb24g
aW4gb2JqdG9vbCBkYXRhIiwKPiArCQkJCQkgIGluZm9fcmVsYS0+c2VjLCBpbmZvX3JlbGEtPm9m
ZnNldCk7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCXJldHVybiByZXM7Cj4gICB9Cj4gZGlmZiAtLWdp
dCBhL3Rvb2xzL29ianRvb2wvYXJjaC9hcm02NC9pbmNsdWRlL2FyY2hfc3BlY2lhbC5oIGIvdG9v
bHMvb2JqdG9vbC9hcmNoL2FybTY0L2luY2x1ZGUvYXJjaF9zcGVjaWFsLmgKPiBpbmRleCBhODJh
OWIzZTUxZGYuLmI5NmJjZWUzMDhjZiAxMDA2NDQKPiAtLS0gYS90b29scy9vYmp0b29sL2FyY2gv
YXJtNjQvaW5jbHVkZS9hcmNoX3NwZWNpYWwuaAo+ICsrKyBiL3Rvb2xzL29ianRvb2wvYXJjaC9h
cm02NC9pbmNsdWRlL2FyY2hfc3BlY2lhbC5oCj4gQEAgLTMsNiArMyw4IEBACj4gICAjaWZuZGVm
IF9BUk02NF9BUkNIX1NQRUNJQUxfSAo+ICAgI2RlZmluZSBfQVJNNjRfQVJDSF9TUEVDSUFMX0gK
PiAgIAo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiArCj4gICAjZGVmaW5lIEVYX0VOVFJZ
X1NJWkUJCTgKPiAgICNkZWZpbmUgRVhfT1JJR19PRkZTRVQJCTAKPiAgICNkZWZpbmUgRVhfTkVX
X09GRlNFVAkJNAo+IGRpZmYgLS1naXQgYS90b29scy9vYmp0b29sL2NoZWNrLmMgYi90b29scy9v
Ymp0b29sL2NoZWNrLmMKPiBpbmRleCBlMGM2YmRhMjYxYzguLjgwZWE1YmJkMzZhYiAxMDA2NDQK
PiAtLS0gYS90b29scy9vYmp0b29sL2NoZWNrLmMKPiArKysgYi90b29scy9vYmp0b29sL2NoZWNr
LmMKPiBAQCAtMzMsOCArMzMsOCBAQCBzdHJ1Y3QgaW5zdHJ1Y3Rpb24gKmZpbmRfaW5zbihzdHJ1
Y3Qgb2JqdG9vbF9maWxlICpmaWxlLAo+ICAgCXJldHVybiBOVUxMOwo+ICAgfQo+ICAgCj4gLXN0
YXRpYyBzdHJ1Y3QgaW5zdHJ1Y3Rpb24gKm5leHRfaW5zbl9zYW1lX3NlYyhzdHJ1Y3Qgb2JqdG9v
bF9maWxlICpmaWxlLAo+IC0JCQkJCSAgICAgIHN0cnVjdCBpbnN0cnVjdGlvbiAqaW5zbikKPiAr
c3RydWN0IGluc3RydWN0aW9uICpuZXh0X2luc25fc2FtZV9zZWMoc3RydWN0IG9ianRvb2xfZmls
ZSAqZmlsZSwKPiArCQkJCSAgICAgICBzdHJ1Y3QgaW5zdHJ1Y3Rpb24gKmluc24pCj4gICB7Cj4g
ICAJc3RydWN0IGluc3RydWN0aW9uICpuZXh0ID0gbGlzdF9uZXh0X2VudHJ5KGluc24sIGxpc3Qp
Owo+ICAgCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvY2hlY2suaCBiL3Rvb2xzL29ianRv
b2wvY2hlY2suaAo+IGluZGV4IDkxYWRlYzQyNzgyYy4uMTUxNjVkMDRkOWNiIDEwMDY0NAo+IC0t
LSBhL3Rvb2xzL29ianRvb2wvY2hlY2suaAo+ICsrKyBiL3Rvb2xzL29ianRvb2wvY2hlY2suaAo+
IEBAIC02Niw2ICs2Niw4IEBAIGludCBjaGVjayhjb25zdCBjaGFyICpvYmpuYW1lLCBib29sIG9y
Yyk7Cj4gICAKPiAgIHN0cnVjdCBpbnN0cnVjdGlvbiAqZmluZF9pbnNuKHN0cnVjdCBvYmp0b29s
X2ZpbGUgKmZpbGUsCj4gICAJCQkgICAgICBzdHJ1Y3Qgc2VjdGlvbiAqc2VjLCB1bnNpZ25lZCBs
b25nIG9mZnNldCk7Cj4gK3N0cnVjdCBpbnN0cnVjdGlvbiAqbmV4dF9pbnNuX3NhbWVfc2VjKHN0
cnVjdCBvYmp0b29sX2ZpbGUgKmZpbGUsCj4gKwkJCQkgICAgICAgc3RydWN0IGluc3RydWN0aW9u
ICppbnNuKTsKPiAgIAo+ICAgI2RlZmluZSBmb3JfZWFjaF9pbnNuKGZpbGUsIGluc24pCQkJCQlc
Cj4gICAJbGlzdF9mb3JfZWFjaF9lbnRyeShpbnNuLCAmZmlsZS0+aW5zbl9saXN0LCBsaXN0KQo+
IAoKQ2hlZXJzLAoKLS0gClJhcGhhw6tsIEdhdWx0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
