Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121B81A0CB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D8XAz8pnzf1ACwv6rd2NWXUnzAHG+4aS8hI6+S7R9D4=; b=P8gNqPUiovgME2VOhrtqJkxjk
	Le4YBE7G7ztb08dUXMd80OStQzW4iSdzyxIHtPNolKFBNNYqf/NyqnuwQH5jEiu7OU0IQNnWvpm7W
	2a1GnvSEZg7+hdY6YROjs+m0o+nqWKd5rTf3ckUOghQt6h26bvo+glZoPqn0sWznzq1B0Ky8mtyz6
	3XLC8hBWN7pxj5i6mFzU7w0MpJnx/FXjnqTk1FciYC7KJVx97t89v2Xwm1943zfdydnK64gMwbCS6
	3zj6C2EVbeP6R1e0x8hqIkF8OHhvMnWjmSk0u+Tvtm3bqIhnLwr5RHuF4QkEgpxbvaUdFDXWBhNQt
	UjSUi2FeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmFX-0006aa-S4; Tue, 07 Apr 2020 11:18:35 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmFP-0006Wh-DY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:18:29 +0000
X-Originating-IP: 84.210.220.251
Received: from [192.168.1.123] (cm-84.210.220.251.getinternet.no
 [84.210.220.251]) (Authenticated sender: fredrik@strupe.net)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id BFACA240005;
 Tue,  7 Apr 2020 11:18:23 +0000 (UTC)
Subject: Re: [PATCH] arm64: armv8_deprecated: Fix undef_hook mask for thumb
 setend
To: Suzuki K Poulose <suzuki.poulose@arm.com>, catalin.marinas@arm.com
References: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
 <20200407092744.GA2665@gaia> <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
From: Fredrik Strupe <fredrik@strupe.net>
Message-ID: <0d7b582a-1bd0-9db2-2fdc-04fc887f64c6@strupe.net>
Date: Tue, 7 Apr 2020 13:18:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_041827_742542_3A6A900F 
X-CRM114-Status: GOOD (  27.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcuMDQuMjAyMCAxMjo0NywgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKCj4gT24gMDQvMDcv
MjAyMCAxMDoyNyBBTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+PiBPbiBNb24sIEFwciAwNiwg
MjAyMCBhdCAwNDoxNjowNVBNICswMjAwLCBGcmVkcmlrIFN0cnVwZSB3cm90ZToKPj4+IFVzZSBh
IGZ1bGwgMzItYml0IG1hc2sgdG8gcHJldmVudCBhY2NpZGVudGFsIG1hdGNoaW5ncyBvZiB0aHVt
YjMyCj4+PiBpbnN0cnVjdGlvbnMgd2hlcmUgdGhlIHNlY29uZCBoYWxmLXdvcmQgaXMgZXF1YWwg
dG8gdGhlIHRodW1iMTYgc2V0ZW5kCj4+PiBlbmNvZGluZy4KPj4+Cj4+PiBUaGlzIGZpeGVzIHRo
ZSBzYW1lIHByb2JsZW0gYXMgdGhlIGZvbGxvd2luZyBwYXRjaDoKPj4+Cj4+PiDCoMKgwqDCoCBo
dHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC8zLzE2LzM0MQo+Pgo+PiBUaGlzIGxpbmsgaXMgbm90
IGd1YXJhbnRlZWQgdG8gYmUgc3RhYmxlIGFuZCB0aGUgY29tbWl0IHNob3VsZCBoYXZlIHRoZQo+
PiBmdWxsIGRlc2NyaXB0aW9uIHJhdGhlciB0aGFuIHJlZmVycmluZyB0byBhbm90aGVyIGVtYWls
Lgo+Pgo+Pj4gYnV0IGZvciBzZXRlbmQgZW11bGF0aW9uIGluc3RlYWQuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogRnJlZHJpayBTdHJ1cGUgPGZyZWRyaWtAc3RydXBlLm5ldD4KPj4KPj4gSXQgYWxz
byBuZWVkcyBGaXhlczogYW5kIENjOiBzdGFibGUgdGFncy4KPj4KPj4+IC0tLQo+Pj4gwqAgYXJj
aC9hcm02NC9rZXJuZWwvYXJtdjhfZGVwcmVjYXRlZC5jIHwgMiArLQo+Pj4gwqAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQva2VybmVsL2FybXY4X2RlcHJlY2F0ZWQuYyAKPj4+IGIvYXJjaC9hcm02NC9r
ZXJuZWwvYXJtdjhfZGVwcmVjYXRlZC5jCj4+PiBpbmRleCA5ZDM0NDJkNjIuLjhjMDZkZmVlMCAx
MDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2FybXY4X2RlcHJlY2F0ZWQuYwo+Pj4g
KysrIGIvYXJjaC9hcm02NC9rZXJuZWwvYXJtdjhfZGVwcmVjYXRlZC5jCj4+PiBAQCAtNjA5LDcg
KzYwOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgdW5kZWZfaG9vayBzZXRlbmRfaG9va3NbXSA9IHsKPj4+
IMKgwqDCoMKgwqAgfSwKPj4+IMKgwqDCoMKgwqAgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8q
IFRodW1iIG1vZGUgKi8KPj4+IC3CoMKgwqDCoMKgwqDCoCAuaW5zdHJfbWFza8KgwqDCoCA9IDB4
MDAwMGZmZjcsCj4+PiArwqDCoMKgwqDCoMKgwqAgLmluc3RyX21hc2vCoMKgwqAgPSAweGZmZmZm
ZmY3LAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5pbnN0cl92YWzCoMKgwqAgPSAweDAwMDBiNjUw
LAo+Pgo+PiBJIGNhbiBzZWUgaG93IHRoaXMgY291bGQgaGFwcGVuIGJ1dCBpdCB3b3VsZCBiZSB1
c2VmdWwgdG8gcHJvdmlkZSBhCj4+IGNvbmNyZXRlIGV4YW1wbGUgaW4gdGhlIGNvbW1pdCBsb2cu
Cj4+Cj4+IFRoZSBpbnN0cnVjdGlvbiBvcGNvZGUgYnVpbHQgYnkgY2FsbF91bmRlZl9ob29rKCkg
Zmlyc3QgcmVhZHMgYSB1MTYgYXMgYQo+PiBUMTYgaW5zdHJ1Y3Rpb24gYW5kIHRoZSBhYm92ZSBz
aG91bGQgYmUgZmluZS4gSG93ZXZlciwgaWYgdGhpcyBsb29rcwo+PiBsaWtlIGEgVDMyIG9wY29k
ZSwgaXQgcmVhZHMgYSBzdWJzZXF1ZW50IHUxNiB3aGljaCBiZWNvbWVzIHRoZSBsb3dlc3QKPj4g
aGFsZi13b3JkIGFuZCB0aGUgYWJvdmUgbWFzay92YWwgbWF5IGluYWR2ZXJ0ZW50bHkgbWF0Y2gg
aXQuCj4+Cj4KVGhhbmtzIGZvciB0aGUgZmVlZGJhY2suIEkgaGF2ZSB1cGRhdGVkIHRoZSBwYXRj
aCB3aXRoIHRoZSByZXF1ZXN0ZWQgCmNoYW5nZXMuCj4gV2UgYWxzbyBkbyBhIGNoZWNrIG9uIHRo
ZSBwc3RhdGVfdmFsLCBhbG9uZyB3aXRoIHRoZSBpbnN0cl92YWwgdG8KPiBjb25maXJtIHRoZSBt
b2RlLiBTbyB0aGlzIHNob3VsZCBiZSBmaW5lIGFzIGl0IGlzID8KPgo+IFN1enVraQpwc3RhdGVf
dmFsIG9ubHkgaW5kaWNhdGVzIHRodW1iIGV4ZWN1dGlvbiwgbm90IHdoZXRoZXIgdGhlIGN1cnJl
bnQgCmluc3RydWN0aW9uCmlzIGEgVDE2IG9yIFQzMiBpbnN0cnVjdGlvbi4KCihTb3JyeSBmb3Ig
ZHVwbGljYXRlLCBzb21ldGhpbmcgd2VudCB0ZXJyaWJseSB3cm9uZyB3aXRoIHRoZSBmb3JtYXR0
aW5nIApvZiB0aGUKcHJldmlvdXMgZW1haWwuKQoKRnJlZHJpawoKLS0tCkZvciB0aHVtYiBpbnN0
cnVjdGlvbnMsIGNhbGxfdW5kZWZfaG9vaygpIGluIHRyYXBzLmMgZmlyc3QgcmVhZHMgYSB1MTYs
CmFuZCBpZiB0aGUgdTE2IGluZGljYXRlcyBhIFQzMiBpbnN0cnVjdGlvbiAodTE2ID49IDB4ZTgw
MCksIGEgc2Vjb25kCnUxNiBpcyByZWFkLCB3aGljaCB0aGVuIG1ha2VzIHVwIHRoZSB0aGUgbG93
ZXIgaGFsZi13b3JkIG9mIGEgVDMyCmluc3RydWN0aW9uLiBGb3IgVDE2IGluc3RydWN0aW9ucywg
dGhlIHNlY29uZCB1MTYgaXMgbm90IHJlYWQsCndoaWNoIG1ha2VzIHRoZSByZXN1bHRpbmcgdTMy
IG9wY29kZSBhbHdheXMgaGF2ZSB0aGUgdXBwZXIgaGFsZiBzZXQgdG8KMC4KCkhvd2V2ZXIsIGhh
dmluZyB0aGUgdXBwZXIgaGFsZiBvZiBpbnN0cl9tYXNrIGluIHRoZSB1bmRlZl9ob29rIHNldCB0
byAwCm1hc2tzIG91dCB0aGUgdXBwZXIgaGFsZiBvZiBhbGwgdGh1bWIgaW5zdHJ1Y3Rpb25zIC0g
Ym90aCBUMTYgYW5kIFQzMi4KVGhpcyByZXN1bHRzIGluIHRyYXBwZWQgVDMyIGluc3RydWN0aW9u
cyB3aXRoIHRoZSBsb3dlciBoYWxmLXdvcmQgZXF1YWwKdG8gdGhlIFQxNiBlbmNvZGluZyBvZiBz
ZXRlbmQgKGI2NTApIGJlaW5nIG1hdGNoZWQsIGV2ZW4gdGhvdWdoIHRoZSB1cHBlcgpoYWxmLXdv
cmQgaXMgbm90IDAwMDAgYW5kIHRodXMgaW5kaWNhdGVzIGEgVDMyIG9wY29kZS4KCkFuIGV4YW1w
bGUgb2Ygc3VjaCBhIFQzMiBpbnN0cnVjdGlvbiBpcyBlYWEwYjY1MCwgd2hpY2ggc2hvdWxkIHJh
aXNlIGEKU0lHSUxMIHNpbmNlIFQzMiBpbnN0cnVjdGlvbnMgd2l0aCBhbiBlYWEgcHJlZml4IGFy
ZSB1bmFsbG9jYXRlZCBhcyBwZXIKQXJtIEFSTSwgYnV0IGluc3RlYWQgd29ya3MgYXMgYSBTRVRF
TkQgYmVjYXVzZSB0aGUgc2Vjb25kIGhhbGYtd29yZCBpcyBzZXQKdG8gYjY1MC4KClRoaXMgcGF0
Y2ggZml4ZXMgdGhlIGlzc3VlIGJ5IGV4dGVuZGluZyBpbnN0cl9tYXNrIHRvIGluY2x1ZGUgdGhl
CnVwcGVyIHUzMiBoYWxmLCB3aGljaCB3aWxsIHN0aWxsIG1hdGNoIFQxNiBpbnN0cnVjdGlvbnMg
d2hlcmUgdGhlIHVwcGVyCmhhbGYgaXMgMCwgYnV0IG5vdCBUMzIgaW5zdHJ1Y3Rpb25zLgoKU2ln
bmVkLW9mZi1ieTogRnJlZHJpayBTdHJ1cGUgPGZyZWRyaWtAc3RydXBlLm5ldD4KQ2M6IENhdGFs
aW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+CkNjOiBXaWxsIERlYWNvbiA8d2ls
bC5kZWFjb25AYXJtLmNvbT4KRml4ZXM6IDJkODg4ZjQ4ZTA1NiAoImFybTY0OiBFbXVsYXRlIFNF
VEVORCBmb3IgQUFyY2gzMiB0YXNrcyIpCi0tLQogwqBhcmNoL2FybTY0L2tlcm5lbC9hcm12OF9k
ZXByZWNhdGVkLmMgfCAyICstCiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2FybXY4X2RlcHJlY2F0
ZWQuYyAKYi9hcmNoL2FybTY0L2tlcm5lbC9hcm12OF9kZXByZWNhdGVkLmMKaW5kZXggOWQzNDQy
ZDYyLi44YzA2ZGZlZTAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2FybXY4X2RlcHJl
Y2F0ZWQuYworKysgYi9hcmNoL2FybTY0L2tlcm5lbC9hcm12OF9kZXByZWNhdGVkLmMKQEAgLTYw
OSw3ICs2MDksNyBAQCBzdGF0aWMgc3RydWN0IHVuZGVmX2hvb2sgc2V0ZW5kX2hvb2tzW10gPSB7
CiDCoMKgwqDCoCB9LAogwqDCoMKgwqAgewogwqDCoMKgwqAgwqDCoMKgIC8qIFRodW1iIG1vZGUg
Ki8KLcKgwqDCoCDCoMKgwqAgLmluc3RyX21hc2vCoMKgwqAgPSAweDAwMDBmZmY3LAorwqDCoMKg
IMKgwqDCoCAuaW5zdHJfbWFza8KgwqDCoCA9IDB4ZmZmZmZmZjcsCiDCoMKgwqDCoCDCoMKgwqAg
Lmluc3RyX3ZhbMKgwqDCoCA9IDB4MDAwMGI2NTAsCiDCoMKgwqDCoCDCoMKgwqAgLnBzdGF0ZV9t
YXNrwqDCoMKgID0gKFBTUl9BQTMyX1RfQklUIHwgUFNSX0FBMzJfTU9ERV9NQVNLKSwKIMKgwqDC
oMKgIMKgwqDCoCAucHN0YXRlX3ZhbMKgwqDCoCA9IChQU1JfQUEzMl9UX0JJVCB8IFBTUl9BQTMy
X01PREVfVVNSKSwKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
