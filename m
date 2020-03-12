Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D26183261
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aehgTB1jF349IojzUEYn1B+ksdvsGRm1tiEey6kn2m0=; b=j4SGyTaInjGrUgb1hqE6fG12/
	/IV3gYFCJXTSpzTeBf1QPcswvQ5RRqWT1+29FKigSGnj5daDXcy2xW0SgBrQ/wnjG6PWf5QmnF0A5
	Yta1pfo3lbcVhdUyJ7/B1LuCrr6TzzaayAYRWdio5S5ETGboHBKpni/90mLIp2Jw8oprwK1pKXCUW
	/U9XXtoVuELbi+aeeURzNlibEhRYK1MptCIWwokUyho/aPEVlXRXNsFWL9YFS4NcWXn2P7celutfY
	+yN2ild1yIea7pVdAH6TFTz2GtuYLC37W/YS3nt7kuZZvPPyONwIt4lcqQqSmnB8Yl1rDKEnuE+TJ
	ilX3EcdEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOUS-0005GG-2S; Thu, 12 Mar 2020 14:07:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOUI-0005Fw-BQ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:07:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99FD830E;
 Thu, 12 Mar 2020 07:07:01 -0700 (PDT)
Received: from [10.37.12.166] (unknown [10.37.12.166])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 594A53F534;
 Thu, 12 Mar 2020 07:07:00 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
From: Lukasz Luba <lukasz.luba@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
Message-ID: <ec3cc098-da70-f101-fe5c-29741c8f2a62@arm.com>
Date: Thu, 12 Mar 2020 14:06:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_070702_484723_BC043EA7 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzLzEyLzIwIDE6NTEgUE0sIEx1a2FzeiBMdWJhIHdyb3RlOgo+IEhpIENyaXN0aWFuLAo+
IAo+IGp1c3Qgb25lIGNvbW1lbnQgYmVsb3cuLi4KPiAKPiBPbiAzLzQvMjAgNDoyNSBQTSwgQ3Jp
c3RpYW4gTWFydXNzaSB3cm90ZToKPj4gQWRkIGNvcmUgU0NNSSBOb3RpZmljYXRpb25zIGRpc3Bh
dGNoIGFuZCBkZWxpdmVyeSBzdXBwb3J0IGxvZ2ljIHdoaWNoIGlzCj4+IGFibGUsIGF0IGZpcnN0
LCB0byBkaXNwYXRjaCB3ZWxsLWtub3duIHJlY2VpdmVkIGV2ZW50cyBmcm9tIHRoZSBSWCBJU1Ig
dG8KPj4gdGhlIGRlZGljYXRlZCBkZWZlcnJlZCB3b3JrZXIsIGFuZCB0aGVuLCBmcm9tIHRoZXJl
LCB0byBmaW5hbCBkZWxpdmVyIHRoZQo+PiBldmVudHMgdG8gdGhlIHJlZ2lzdGVyZWQgdXNlcnMn
IGNhbGxiYWNrcy4KPj4KPj4gRGlzcGF0Y2ggYW5kIGRlbGl2ZXJ5IGlzIGp1c3QgYWRkZWQgaGVy
ZSwgc3RpbGwgbm90IGVuYWJsZWQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIE1hcnVz
c2kgPGNyaXN0aWFuLm1hcnVzc2lAYXJtLmNvbT4KPj4gLS0tCj4+IFYzIC0tPiBWNAo+PiAtIGRp
c3BhdGNoZXIgbm93IGhhbmRsZXMgZGVxdWV1aW5nIG9mIGV2ZW50cyBpbiBjaHVua3MgKGhlYWRl
citwYXlsb2FkKToKPj4gwqDCoCBoYW5kbGluZyBvZiB0aGVzZSBpbl9mbGlnaHQgZXZlbnRzIGxl
dCB1cyByZW1vdmUgb25lIHVubmVlZGVkIG1lbWNweQo+PiDCoMKgIG9uIFJYIGludGVycnVwdCBw
YXRoIChzY21pX25vdGlmeSkKPj4gLSBkZWZlcnJlZCBkaXNwYXRjaGVyIG5vdyBhY2Nlc3MgdGhl
aXIgb3duIHBlci1wcm90b2NvbCBoYW5kbGVycycgdGFibGUKPj4gwqDCoCByZWR1Y2luZyBsb2Nr
aW5nIGNvbnRlbnRpb24gb24gdGhlIFJYIHBhdGgKPj4gVjIgLS0+IFYzCj4+IC0gZXhwb3Npbmcg
d3EgaW4gc3lzZnMgdmlhIFdRX1NZU0ZTCj4+IFYxIC0tPiBWMgo+PiAtIHNwbGl0dGVkIG91dCBv
ZiBWMSBwYXRjaCAwNAo+PiAtIG1vdmVkIGZyb20gSURSIG1hcHMgdG8gcmVhbCBIYXNoVGFibGVz
IHRvIHN0b3JlIGV2ZW50X2hhbmRsZXJzCj4+IC0gc2ltcGxpZmllZCBkZWxpdmVyeSBsb2dpYwo+
PiAtLS0KPj4gwqAgZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9ub3RpZnkuYyB8IDMzNCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrLQo+PiDCoCBkcml2ZXJzL2Zpcm13YXJlL2FybV9zY21p
L25vdGlmeS5oIHzCoMKgIDkgKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDM0MiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL2Fy
bV9zY21pL25vdGlmeS5jIAo+PiBiL2RyaXZlcnMvZmlybXdhcmUvYXJtX3NjbWkvbm90aWZ5LmMK
PiAKPiBbc25pcF0KPiAKPj4gKwo+PiArLyoqCj4+ICsgKiBzY21pX25vdGlmecKgIC0gUXVldWVz
IGEgbm90aWZpY2F0aW9uIGZvciBmdXJ0aGVyIGRlZmVycmVkIHByb2Nlc3NpbmcKPj4gKyAqCj4+
ICsgKiBUaGlzIGlzIGNhbGxlZCBpbiBpbnRlcnJ1cHQgY29udGV4dCB0byBxdWV1ZSBhIHJlY2Vp
dmVkIGV2ZW50IGZvcgo+PiArICogZGVmZXJyZWQgcHJvY2Vzc2luZy4KPj4gKyAqCj4+ICsgKiBA
aGFuZGxlOiBUaGUgaGFuZGxlIGlkZW50aWZ5aW5nIHRoZSBwbGF0Zm9ybSBpbnN0YW5jZSBmcm9t
IHdoaWNoIHRoZQo+PiArICrCoMKgwqDCoMKgwqDCoCBkaXNwYXRjaGVkIGV2ZW50IGlzIGdlbmVy
YXRlZAo+PiArICogQHByb3RvX2lkOiBQcm90b2NvbCBJRAo+PiArICogQGV2dF9pZDogRXZlbnQg
SUQgKG1zZ0lEKQo+PiArICogQGJ1ZjogRXZlbnQgTWVzc2FnZSBQYXlsb2FkICh3aXRob3V0IHRo
ZSBoZWFkZXIpCj4+ICsgKiBAbGVuOiBFdmVudCBNZXNzYWdlIFBheWxvYWQgc2l6ZQo+PiArICog
QHRzOiBSWCBUaW1lc3RhbXAgaW4gbmFub3NlY29uZHMgKGJvb3R0aW1lKQo+PiArICoKPj4gKyAq
IFJldHVybjogMCBvbiBTdWNjZXNzCj4+ICsgKi8KPj4gK2ludCBzY21pX25vdGlmeShjb25zdCBz
dHJ1Y3Qgc2NtaV9oYW5kbGUgKmhhbmRsZSwgdTggcHJvdG9faWQsIHU4IAo+PiBldnRfaWQsCj4+
ICvCoMKgwqDCoMKgwqDCoCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBsZW4sIHU2NCB0cykKPj4g
K3sKPj4gK8KgwqDCoCBzdHJ1Y3Qgc2NtaV9yZWdpc3RlcmVkX2V2ZW50ICpyX2V2dDsKPj4gK8Kg
wqDCoCBzdHJ1Y3Qgc2NtaV9ldmVudF9oZWFkZXIgZWg7Cj4+ICvCoMKgwqAgc3RydWN0IHNjbWlf
bm90aWZ5X2luc3RhbmNlICpuaSA9IGhhbmRsZS0+bm90aWZ5X3ByaXY7Cj4+ICsKPj4gK8KgwqDC
oCAvKiBFbnN1cmUgYXRvbWljIHZhbHVlIGlzIHVwZGF0ZWQgKi8KPj4gK8KgwqDCoCBzbXBfbWJf
X2JlZm9yZV9hdG9taWMoKTsKPj4gK8KgwqDCoCBpZiAodW5saWtlbHkoIWF0b21pY19yZWFkKCZu
aS0+ZW5hYmxlZCkpKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+ICsKPj4gK8KgwqDC
oCByX2V2dCA9IFNDTUlfR0VUX1JFVlQobmksIHByb3RvX2lkLCBldnRfaWQpOwo+PiArwqDCoMKg
IGlmICh1bmxpa2VseSghcl9ldnQpKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7
Cj4+ICsKPj4gK8KgwqDCoCBpZiAodW5saWtlbHkobGVuID4gcl9ldnQtPmV2dC0+bWF4X3BheWxk
X3N6KSkgewo+PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJTQ01JIE5vdGlmaWNhdGlvbnM6IGRp
c2NhcmQgYmFkbHkgc2l6ZWQgbWVzc2FnZVxuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVJTlZBTDsKPj4gK8KgwqDCoCB9Cj4+ICvCoMKgwqAgaWYgKHVubGlrZWx5KGtmaWZvX2F2YWls
KCZyX2V2dC0+cHJvdG8tPmVxdWV1ZS5rZmlmbykgPAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHNpemVvZihlaCkgKyBsZW4pKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwcl93YXJuKCJTQ01J
IE5vdGlmaWNhdGlvbnM6IHF1ZXVlIGZ1bGwgZHJvcHBpbmcgcHJvdG9faWQ6JWQgIAo+PiBldnRf
aWQ6JWTCoCB0czolbGxkXG4iLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcm90b19pZCwg
ZXZ0X2lkLCB0cyk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4gK8KgwqDC
oCB9Cj4+ICsKPj4gK8KgwqDCoCBlaC50aW1lc3RhbXAgPSB0czsKPj4gK8KgwqDCoCBlaC5ldnRf
aWQgPSBldnRfaWQ7Cj4+ICvCoMKgwqAgZWgucGF5bGRfc3ogPSBsZW47Cj4+ICvCoMKgwqAga2Zp
Zm9faW4oJnJfZXZ0LT5wcm90by0+ZXF1ZXVlLmtmaWZvLCAmZWgsIHNpemVvZihlaCkpOwo+PiAr
wqDCoMKgIGtmaWZvX2luKCZyX2V2dC0+cHJvdG8tPmVxdWV1ZS5rZmlmbywgYnVmLCBsZW4pOwo+
PiArwqDCoMKgIHF1ZXVlX3dvcmsocl9ldnQtPnByb3RvLT5lcXVldWUud3EsCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoCAmcl9ldnQtPnByb3RvLT5lcXVldWUubm90aWZ5X3dvcmspOwo+IAo+IElz
IGl0IHNhZmUgdG8gaWdub3JlIHRoZSByZXR1cm4gdmFsdWUgZnJvbSB0aGUgcXVldWVfd29yayBo
ZXJlPwoKYW5kIGFsc28gZnJvbSB0aGUga2ZpZm9faW4KCj4gCj4gUmVnYXJkcywKPiBMdWthc3oK
PiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
