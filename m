Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F891E0C07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sfz6vOFIpyOF0E8m+4mQwGRrPmIxHBVUZ2b10jYivyc=; b=YIjV8MAFAk1JEI3YTIJUgLXNB
	sjKqVohcvdM5FFhSf0IKnINfT5Hf58PcvskaZnCOWyBk1+g+5+eP7ZgHCF3vxeO2JtvAOvte84YoK
	9kuXu2rdptI6TajphSl6L2EOWiVO+fVt/FxNjEnk/zHg9oEV9+dvU7lSzAuZ0rBrI0Rz/FOZ0b4Ue
	B7Nb74rBSS4yYZkj+L28mIxRPvwQPyTMG9B9bcgMBrUzcIrxEl+x6lHVyPlMRZ+eFMLV32moWds0Y
	HwY9xVlL02iclnK0/efoTnPIrPNWtaEPldhSqRU6867aqydfxdMqh/xvp6N81NNIOvF7+/+GDllzM
	rVAWPZN3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAYt-0002j5-Jr; Mon, 25 May 2020 10:42:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAYb-0002ct-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 10:42:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F6571FB;
 Mon, 25 May 2020 03:42:04 -0700 (PDT)
Received: from [192.168.0.21] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 063E93F305;
 Mon, 25 May 2020 03:42:02 -0700 (PDT)
Subject: Re: [PATCH V4 15/17] arm64/cpufeature: Add remaining feature bits in
 ID_AA64DFR0 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-16-git-send-email-anshuman.khandual@arm.com>
 <5bad1e13-e498-b33e-5305-336d855c2c8b@arm.com>
 <9e452a85-2ccf-50e6-d807-3f9e528b4072@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <eca9b415-c707-8d2c-7832-0bd129668e37@arm.com>
Date: Mon, 25 May 2020 11:46:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <9e452a85-2ccf-50e6-d807-3f9e528b4072@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_034209_148620_28B08D0F 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, maz@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMjQvMjAyMCAwMjowOCBBTSwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4gCj4gCj4g
T24gMDUvMjAvMjAyMCAwNzoyNyBQTSwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKPj4gT24gMDUv
MTkvMjAyMCAxMDo0MCBBTSwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+PiBFbmFibGUgTVRQ
TVUgYW5kIFRSQUNFRklMVCBmZWF0dXJlcyBiaXRzIGluIElEX0FBNjRERlIwIHJlZ2lzdGVyIGFz
IHBlciBBUk0KPj4+IERESSAwNDg3Ri5hIHNwZWNpZmljYXRpb24uCj4+Pgo+Pj4gQ2M6IENhdGFs
aW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+PiBDYzogV2lsbCBEZWFjb24g
PHdpbGxAa2VybmVsLm9yZz4KPj4+IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0u
Y29tPgo+Pj4gQ2M6IFN1enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+
PiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+PiBDYzogbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZwo+Pj4KPj4+IFN1Z2dlc3RlZC1ieTogV2lsbCBEZWFjb24g
PHdpbGxAa2VybmVsLm9yZz4KPj4+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEtoYW5kdWFsIDxh
bnNodW1hbi5raGFuZHVhbEBhcm0uY29tPgo+Pj4gLS0tCj4+PiAgwqAgYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS9zeXNyZWcuaCB8IDIgKysKPj4+ICDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0
dXJlLmPCoCB8IDIgKysKPj4+ICDCoCAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3N5c3JlZy5oIGIvYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaAo+Pj4gaW5kZXggYTU3MjA2OWNjZjZlLi40YmNk
MjFjYzJkNjggMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3N5c3JlZy5o
Cj4+PiArKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3N5c3JlZy5oCj4+PiBAQCAtNzY2LDYg
Kzc2Niw4IEBACj4+PiAgwqAgI2RlZmluZSBJRF9BQTY0TU1GUjJfQ05QX1NISUZUwqDCoMKgwqDC
oMKgwqAgMAo+Pj4gIMKgIMKgIC8qIGlkX2FhNjRkZnIwICovCj4+PiArI2RlZmluZSBJRF9BQTY0
REZSMF9NVFBNVV9TSElGVMKgwqDCoMKgwqDCoMKgIDQ4Cj4+PiArI2RlZmluZSBJRF9BQTY0REZS
MF9UUkFDRUZJTFRfU0hJRlTCoMKgwqAgNDAKPj4+ICDCoCAjZGVmaW5lIElEX0FBNjRERlIwX1BN
U1ZFUl9TSElGVMKgwqDCoCAzMgo+Pj4gIMKgICNkZWZpbmUgSURfQUE2NERGUjBfQ1RYX0NNUFNf
U0hJRlTCoMKgwqAgMjgKPj4+ICDCoCAjZGVmaW5lIElEX0FBNjRERlIwX1dSUFNfU0hJRlTCoMKg
wqDCoMKgwqDCoCAyMAo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1
cmUuYyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+Pj4gaW5kZXggNjMzODE1MWYy
NjNjLi45ODY5NzRiZTAxNzggMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVm
ZWF0dXJlLmMKPj4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYwo+Pj4gQEAg
LTM2Niw2ICszNjYsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9p
ZF9tbWZyMFtdID0gewo+Pj4gIMKgIH07Cj4+PiAgwqAgwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBh
cm02NF9mdHJfYml0cyBmdHJfaWRfYWE2NGRmcjBbXSA9IHsKPj4+ICvCoMKgwqAgU19BUk02NF9G
VFJfQklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfQUE2NERG
UjBfTVRQTVVfU0hJRlQsIDQsIDApLAo+Pj4gK8KgwqDCoCBBUk02NF9GVFJfQklUUyhGVFJfSElE
REVOLCBGVFJfU1RSSUNULCBGVFJfTE9XRVJfU0FGRSwgSURfQUE2NERGUjBfVFJBQ0VGSUxUX1NI
SUZULCA0LCAwKSwKPj4KPj4gV2UgbWFza2UgYm90aCB0aGUgZmllbGRzIGZvciBLVk0gaW4gQUFy
Y2gzMiBJRCByZWdpc3RlcnMuIFdlIHNob3VsZCBkbyB0aGUgc2FtZSBoZXJlLgo+IAo+IE1UUE1V
IGlzIGRlZmluZWQgZm9yIEFBcmNoMzIgSUQgcmVnaXN0ZXIgSURfREZSMV9FTDEsIGV2ZW4gdGhv
dWdoIHRoZQo+IGVudGlyZSByZWdpc3RlciBpcyBoaWRkZW4gZnJvbSBLVk0gd2l0aCBJRF9ISURE
RU4oKS4KPiAKPiBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9pZF9kZnIx
W10gPSB7Cj4gICAgICAgICAgU19BUk02NF9GVFJfQklUUyhGVFJfSElEREVOLCBGVFJfU1RSSUNU
LCBGVFJfTE9XRVJfU0FGRSwgSURfREZSMV9NVFBNVV9TSElGVCwgNCwgMCksCj4gICAgICAgICAg
QVJNNjRfRlRSX0VORCwKPiB9Owo+IAo+IFNob3VsZCB0aGUgSURfQUE2NERGUjBfRUwxIGJlIGhp
ZGRlbiBmcm9tIEtWTSBhcyB3ZWxsLiBCdXQgaXQgaGFzIG1hbnkKPiBvdGhlciBleGlzdGluZyBm
ZWF0dXJlcyBhcGFydCBmcm9tIE1UUE1VIGFuZCBUUkFDRUZJTFQgd2hpY2ggYXJlIGJlaW5nCj4g
YWRkZWQgaGVyZS4KCk5vLCB5b3UgbXVzdCBtYXNrIG91dCB0aG9zZSB0d28gZmllbGRzIGluIHRo
ZSBlbXVsYXRpb24uIE90aGVyIGZpZWxkcyAKYXJlIHN0aWxsIHJlbGV2YW50IGZvciBndWVzdHMg
KGUuZywgUE1VKS4gU2VlLCBwdHItYXV0aCBmb3IgZS5nLgoKU3V6dWtpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
