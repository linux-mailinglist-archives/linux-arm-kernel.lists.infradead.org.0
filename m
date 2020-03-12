Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A92183AEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 21:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xgijl/oLZB7vQVFrEUfyeW4cytEGMZ5RJCFh+1Rs5uM=; b=Pbdlpi2+1BWPZmDmMvmaeCswA
	chvnLrh/bQI9duZTa/wQ1vvwLfAZDB93l2tJhPtG45SYDtlM6PYnekLIvO/PqhWho8tqVgOCOEn/N
	8f6SHdI9zrLyr09XUK4i5ttFcA2k7sjTzdBFWKT+2xoEnYsdwanFQnGWSon8LuqLDhGAAb2Bxjoq9
	l4etsGttI7f3WwtF7VXkyLRUECghl/EIIIck0Kilv+cYTCSOJ3CI9daTKsdvwKGYFI73J8TbboOIR
	7Rz2rUjnYiFMngfKGqJ/3fHbjciec+VAR0BjMJebpTzugzntB+mPRZVycrpD7SNB9a5k4HqOISi+g
	YP/CnWQ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCUtk-00084n-Rx; Thu, 12 Mar 2020 20:57:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUtZ-00083y-AG
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 20:57:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4463331B;
 Thu, 12 Mar 2020 13:57:31 -0700 (PDT)
Received: from [10.37.12.40] (unknown [10.37.12.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8F663F6CF;
 Thu, 12 Mar 2020 13:57:29 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
 <ec3cc098-da70-f101-fe5c-29741c8f2a62@arm.com>
 <c9d64cad-3bde-602f-ab83-21c997fa472f@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <cb4e38be-e8f7-483f-feda-94a19cad1ab1@arm.com>
Date: Thu, 12 Mar 2020 20:57:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c9d64cad-3bde-602f-ab83-21c997fa472f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_135733_449074_FDB98A36 
X-CRM114-Status: GOOD (  20.80  )
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

CgpPbiAzLzEyLzIwIDc6MjQgUE0sIENyaXN0aWFuIE1hcnVzc2kgd3JvdGU6Cj4gT24gMTIvMDMv
MjAyMCAxNDowNiwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDMvMTIvMjAgMTo1MSBQ
TSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+PiBIaSBDcmlzdGlhbiwKPj4+Cj4gCj4gSGkgTHVrYXN6
Cj4gCj4+PiBqdXN0IG9uZSBjb21tZW50IGJlbG93Li4uCj4+Pgo+Pj4gT24gMy80LzIwIDQ6MjUg
UE0sIENyaXN0aWFuIE1hcnVzc2kgd3JvdGU6Cj4+Pj4gQWRkIGNvcmUgU0NNSSBOb3RpZmljYXRp
b25zIGRpc3BhdGNoIGFuZCBkZWxpdmVyeSBzdXBwb3J0IGxvZ2ljIHdoaWNoIGlzCj4+Pj4gYWJs
ZSwgYXQgZmlyc3QsIHRvIGRpc3BhdGNoIHdlbGwta25vd24gcmVjZWl2ZWQgZXZlbnRzIGZyb20g
dGhlIFJYIElTUiB0bwo+Pj4+IHRoZSBkZWRpY2F0ZWQgZGVmZXJyZWQgd29ya2VyLCBhbmQgdGhl
biwgZnJvbSB0aGVyZSwgdG8gZmluYWwgZGVsaXZlciB0aGUKPj4+PiBldmVudHMgdG8gdGhlIHJl
Z2lzdGVyZWQgdXNlcnMnIGNhbGxiYWNrcy4KPj4+Pgo+Pj4+IERpc3BhdGNoIGFuZCBkZWxpdmVy
eSBpcyBqdXN0IGFkZGVkIGhlcmUsIHN0aWxsIG5vdCBlbmFibGVkLgo+Pj4+Cj4+Pj4gU2lnbmVk
LW9mZi1ieTogQ3Jpc3RpYW4gTWFydXNzaSA8Y3Jpc3RpYW4ubWFydXNzaUBhcm0uY29tPgo+Pj4+
IC0tLQo+Pj4+IFYzIC0tPiBWNAo+Pj4+IC0gZGlzcGF0Y2hlciBub3cgaGFuZGxlcyBkZXF1ZXVp
bmcgb2YgZXZlbnRzIGluIGNodW5rcyAoaGVhZGVyK3BheWxvYWQpOgo+Pj4+ICDCoMKgIGhhbmRs
aW5nIG9mIHRoZXNlIGluX2ZsaWdodCBldmVudHMgbGV0IHVzIHJlbW92ZSBvbmUgdW5uZWVkZWQg
bWVtY3B5Cj4+Pj4gIMKgwqAgb24gUlggaW50ZXJydXB0IHBhdGggKHNjbWlfbm90aWZ5KQo+Pj4+
IC0gZGVmZXJyZWQgZGlzcGF0Y2hlciBub3cgYWNjZXNzIHRoZWlyIG93biBwZXItcHJvdG9jb2wg
aGFuZGxlcnMnIHRhYmxlCj4+Pj4gIMKgwqAgcmVkdWNpbmcgbG9ja2luZyBjb250ZW50aW9uIG9u
IHRoZSBSWCBwYXRoCj4+Pj4gVjIgLS0+IFYzCj4+Pj4gLSBleHBvc2luZyB3cSBpbiBzeXNmcyB2
aWEgV1FfU1lTRlMKPj4+PiBWMSAtLT4gVjIKPj4+PiAtIHNwbGl0dGVkIG91dCBvZiBWMSBwYXRj
aCAwNAo+Pj4+IC0gbW92ZWQgZnJvbSBJRFIgbWFwcyB0byByZWFsIEhhc2hUYWJsZXMgdG8gc3Rv
cmUgZXZlbnRfaGFuZGxlcnMKPj4+PiAtIHNpbXBsaWZpZWQgZGVsaXZlcnkgbG9naWMKPj4+PiAt
LS0KPj4+PiAgwqAgZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9ub3RpZnkuYyB8IDMzNCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrLQo+Pj4+ICDCoCBkcml2ZXJzL2Zpcm13YXJlL2FybV9z
Y21pL25vdGlmeS5oIHzCoMKgIDkgKwo+Pj4+ICDCoCAyIGZpbGVzIGNoYW5nZWQsIDM0MiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9m
aXJtd2FyZS9hcm1fc2NtaS9ub3RpZnkuYwo+Pj4+IGIvZHJpdmVycy9maXJtd2FyZS9hcm1fc2Nt
aS9ub3RpZnkuYwo+Pj4KPj4+IFtzbmlwXQo+Pj4KPj4+PiArCj4+Pj4gKy8qKgo+Pj4+ICsgKiBz
Y21pX25vdGlmecKgIC0gUXVldWVzIGEgbm90aWZpY2F0aW9uIGZvciBmdXJ0aGVyIGRlZmVycmVk
IHByb2Nlc3NpbmcKPj4+PiArICoKPj4+PiArICogVGhpcyBpcyBjYWxsZWQgaW4gaW50ZXJydXB0
IGNvbnRleHQgdG8gcXVldWUgYSByZWNlaXZlZCBldmVudCBmb3IKPj4+PiArICogZGVmZXJyZWQg
cHJvY2Vzc2luZy4KPj4+PiArICoKPj4+PiArICogQGhhbmRsZTogVGhlIGhhbmRsZSBpZGVudGlm
eWluZyB0aGUgcGxhdGZvcm0gaW5zdGFuY2UgZnJvbSB3aGljaCB0aGUKPj4+PiArICrCoMKgwqDC
oMKgwqDCoCBkaXNwYXRjaGVkIGV2ZW50IGlzIGdlbmVyYXRlZAo+Pj4+ICsgKiBAcHJvdG9faWQ6
IFByb3RvY29sIElECj4+Pj4gKyAqIEBldnRfaWQ6IEV2ZW50IElEIChtc2dJRCkKPj4+PiArICog
QGJ1ZjogRXZlbnQgTWVzc2FnZSBQYXlsb2FkICh3aXRob3V0IHRoZSBoZWFkZXIpCj4+Pj4gKyAq
IEBsZW46IEV2ZW50IE1lc3NhZ2UgUGF5bG9hZCBzaXplCj4+Pj4gKyAqIEB0czogUlggVGltZXN0
YW1wIGluIG5hbm9zZWNvbmRzIChib290dGltZSkKPj4+PiArICoKPj4+PiArICogUmV0dXJuOiAw
IG9uIFN1Y2Nlc3MKPj4+PiArICovCj4+Pj4gK2ludCBzY21pX25vdGlmeShjb25zdCBzdHJ1Y3Qg
c2NtaV9oYW5kbGUgKmhhbmRsZSwgdTggcHJvdG9faWQsIHU4Cj4+Pj4gZXZ0X2lkLAo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBsZW4sIHU2NCB0cykKPj4+PiAr
ewo+Pj4+ICvCoMKgwqAgc3RydWN0IHNjbWlfcmVnaXN0ZXJlZF9ldmVudCAqcl9ldnQ7Cj4+Pj4g
K8KgwqDCoCBzdHJ1Y3Qgc2NtaV9ldmVudF9oZWFkZXIgZWg7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3Qg
c2NtaV9ub3RpZnlfaW5zdGFuY2UgKm5pID0gaGFuZGxlLT5ub3RpZnlfcHJpdjsKPj4+PiArCj4+
Pj4gK8KgwqDCoCAvKiBFbnN1cmUgYXRvbWljIHZhbHVlIGlzIHVwZGF0ZWQgKi8KPj4+PiArwqDC
oMKgIHNtcF9tYl9fYmVmb3JlX2F0b21pYygpOwo+Pj4+ICvCoMKgwqAgaWYgKHVubGlrZWx5KCFh
dG9taWNfcmVhZCgmbmktPmVuYWJsZWQpKSkKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7
Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgcl9ldnQgPSBTQ01JX0dFVF9SRVZUKG5pLCBwcm90b19pZCwg
ZXZ0X2lkKTsKPj4+PiArwqDCoMKgIGlmICh1bmxpa2VseSghcl9ldnQpKQo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+PiArCj4+Pj4gK8KgwqDCoCBpZiAodW5saWtlbHko
bGVuID4gcl9ldnQtPmV2dC0+bWF4X3BheWxkX3N6KSkgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBw
cl9lcnIoIlNDTUkgTm90aWZpY2F0aW9uczogZGlzY2FyZCBiYWRseSBzaXplZCBtZXNzYWdlXG4i
KTsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gK8KgwqDCoCB9Cj4+
Pj4gK8KgwqDCoCBpZiAodW5saWtlbHkoa2ZpZm9fYXZhaWwoJnJfZXZ0LT5wcm90by0+ZXF1ZXVl
LmtmaWZvKSA8Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplb2YoZWgpICsgbGVu
KSkgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBwcl93YXJuKCJTQ01JIE5vdGlmaWNhdGlvbnM6IHF1
ZXVlIGZ1bGwgZHJvcHBpbmcgcHJvdG9faWQ6JWQKPj4+PiBldnRfaWQ6JWTCoCB0czolbGxkXG4i
LAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByb3RvX2lkLCBldnRfaWQsIHRzKTsKPj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4+Pj4gK8KgwqDCoCB9Cj4+Pj4gKwo+
Pj4+ICvCoMKgwqAgZWgudGltZXN0YW1wID0gdHM7Cj4+Pj4gK8KgwqDCoCBlaC5ldnRfaWQgPSBl
dnRfaWQ7Cj4+Pj4gK8KgwqDCoCBlaC5wYXlsZF9zeiA9IGxlbjsKPj4+PiArwqDCoMKgIGtmaWZv
X2luKCZyX2V2dC0+cHJvdG8tPmVxdWV1ZS5rZmlmbywgJmVoLCBzaXplb2YoZWgpKTsKPj4+PiAr
wqDCoMKgIGtmaWZvX2luKCZyX2V2dC0+cHJvdG8tPmVxdWV1ZS5rZmlmbywgYnVmLCBsZW4pOwo+
Pj4+ICvCoMKgwqAgcXVldWVfd29yayhyX2V2dC0+cHJvdG8tPmVxdWV1ZS53cSwKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqAgJnJfZXZ0LT5wcm90by0+ZXF1ZXVlLm5vdGlmeV93b3JrKTsKPj4+
Cj4+PiBJcyBpdCBzYWZlIHRvIGlnbm9yZSB0aGUgcmV0dXJuIHZhbHVlIGZyb20gdGhlIHF1ZXVl
X3dvcmsgaGVyZT8KPj4KPj4gYW5kIGFsc28gZnJvbSB0aGUga2ZpZm9faW4KPj4KPiAKPiBrZmlm
b19pbiByZXR1cm5zIHRoZSBudW1iZXIgb2YgZWZmZWN0aXZlbHkgd3JpdHRlbiBieXRlcyAodXNp
bmcgX19rZmlmb19pbiksCj4gcG9zc2libHkgY2FwcGVkIHRvIHRoZSBlZmZlY3RpdmVseSBtYXhp
bXVtIGF2YWlsYWJsZSBzcGFjZSBpbiB0aGUgZmlmbywgQlVUIHNpbmNlIEkKPiBhYnNvbHV0ZWx5
IGNhbm5vdCBhZmZvcmQgdG8gd3JpdGUgYW4gaW5jb21wbGV0ZS90cnVuY2F0ZWQgZXZlbnQgaW50
byB0aGUgcXVldWUsIEkgY2hlY2sKPiB0aGF0IGluIGFkdmFuY2UgYW5kIGJhY2tvdXQgb24gcXVl
dWUgZnVsbDoKPiAKPiBpZiAodW5saWtlbHkoa2ZpZm9fYXZhaWwoJnJfZXZ0LT5wcm90by0+ZXF1
ZXVlLmtmaWZvKSA8IHNpemVvZihlaCkgKyBsZW4pKSB7Cj4gCXJldHVybiAtRU5PTUVNOwo+IAo+
IGFuZCBnaXZlbiB0aGF0IHRoZSBJU1Igc2NtaV9ub3RpZnkoKSBpcyB0aGUgb25seSBwb3NzaWJs
ZSB3cml0ZXIgb24gdGhpcyBxdWV1ZQoKWWVzLCB5b3VyIGFyZSByaWdodCwgbm8gb3RoZXIgSVJR
IHdpbGwgc2hvdyB1cCBmb3IgdGhpcyBjaGFubmVsIHRpbGwKd2UgZXhpdCBtYWlsYm94IHJ4IGNh
bGxiYWNrIGFuZCBjbGVhbiB0aGUgYml0cy4KCj4gSSBjYW4gYmUgc3VyZSB0aGF0IHRoZSBrZmlm
b19pbigpIHdpbGwgc3VjY2VlZCBpbiB3cml0aW5nIHRoZSByZXF1aXJlZCBudW1iZXIgb2YKPiBi
eXRlcyBhZnRlciB0aGUgYWJvdmUgY2hlY2suLi5zbyBJIGRvbid0IG5lZWQgdG8gY2hlY2sgdGhl
IHJldHVybiB2YWx1ZS4KPiAKPiBSZWdhcmRzCj4gCj4gQ3Jpc3RpYW4KPiAKPj4+Cj4+PiBSZWdh
cmRzLAo+Pj4gTHVrYXN6Cj4+Pgo+Pj4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
