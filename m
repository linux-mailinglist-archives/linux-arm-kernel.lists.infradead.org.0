Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EEB19927E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 11:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0M1zmJowIZ2AAVek48GKa68ccZcd5/L5BoX92p6gTE=; b=Y1Ad0SN93NM7yE
	MqXNsmprOTMMI8zzuI7WTl7SeLzfgXhP6d4bKZl3fNM4rMgdS/vhFbGJ736Cyz/xPfhhNGSBYSfJw
	wpVc3q91hUSqzoCZ8MzVNCByIKAqaYlkBbHXQBHL9HbkAj+2lFR525wev9Y7AmRokG6AsTVif3rJz
	q9r7LO8n1hJOdKtxv+HjUGgU/zup9JNpicjKmNDnG//MbisD5qoWQpB4HL0YEck3iFDIXa+P6KED3
	TiBUSRamfLkY54cFOp6z9TZfr6/qXhtYl5/ebpNGHW1NWz5t88Bxf9eYgqOz0nqtl8ivhb/sH1LH5
	1Qciat/tmHkki01A/r0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDPA-00009b-P1; Tue, 31 Mar 2020 09:41:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDP0-00008W-39
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 09:41:48 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C7B3278B93B63976C653;
 Tue, 31 Mar 2020 17:41:39 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Tue, 31 Mar 2020
 17:41:30 +0800
Subject: Re: Question about SEA handling process happened in user space
To: James Morse <james.morse@arm.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Message-ID: <5E83104A.7020803@huawei.com>
Date: Tue, 31 Mar 2020 17:41:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com>
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_024146_325215_448FCE44 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXPvvIwKClRoYW5rcyBmb3Iga2luZGx5IHJlcGx5LgoKT24gMjAyMC8zLzMxIDA6NDks
IEphbWVzIE1vcnNlIHdyb3RlOgo+IEhpIFhpYW9mZWksCj4gCj4gT24gMy8zMC8yMCAyOjEwIFBN
LCBYaWFvZmVpIFRhbiB3cm90ZToKPj4gSSdtIGEgbGl0dGxlIGNvbmZ1c2VkIGFib3V0IHRoZSBo
YW5kbGluZyBwcm9jZXNzIG9mIFNFQSBoYXBwZW5lZCBpbiB1c2VyIHNwYWNlLgo+IAo+PiBGb2xs
b3dpbmcgdGhlIGRlc2NyaXB0aW9uIG9mIEZuViBiaXQgb2YgcmVnaXN0ZXIgRVNSX0VMeCBpbiBB
Uk12OC40IFNQRUMsRkFSIGlzCj4+IHZhbGlkIG9ubHkgZm9yIHN5bmNocm9ub3VzIEV4dGVybmFs
IGFib3J0IG9uIGEgdHJhbnNsYXRpb24gdGFibGUgd2Fsay4KPiAKPj4gQnV0IGZvciB0aGlzIEZB
UiB2YWxpZCBzY2VuYXJpbyhhdHRhY2hlZCBjb2RlIGZyb20gbGluZSA2ODQgdG8gNjg3KSwKPj4g
d2Ugc2VuZCBzaWduYWwgU0lHS0lMTCB0byBraWxsIHByb2Nlc3MuIEZvciBzb21lIG90aGVyIHNj
ZW5hcmlvLCBzdWNoIGFzIGxpbmUgNjgwLAo+PiBGQVIgaXMgbm90IHZhbGlkLCBidXQgd2Ugc2Vu
ZCBTSUdCVVMgYW5kIHRyYW5zZmVyIGVycm9yIGFkZHJlc3MgdG8gcHJvY2VzcyB0byB0cnkgdG8g
ZG8gc29tZSByZWNvdmVyeS4KPiAKPiAnRkFSIGlzIG5vdCB2YWxpZCc6IGl0cyBvcHRpb25hbC4g
VGhlIEVTUl9FTDEuRm5WIGJpdCBjYW4gYmUgc2V0IGZvciB0aGUgJ2NhdGNoCj4gYWxsJyBleHRl
cm5hbCBhYm9ydCBmYXVsdC1zdGF0dXMtY29kZS4gVGhpcyBsZXRzIHRoZSBDUFUgdGVsbCB1cyB0
aGF0IGl0IGRvZXNuJ3QKPiBrbm93IHdoYXQgdGhlIGZhdWx0aW5nIHZpcnR1YWwgYWRkcmVzcyBp
cy4KPiAKPiBkb19zZWEoKSBjaGVja3MgZm9yIHRoaXM6Cj4gfAlpZiAoZXNyICYgRVNSX0VMeF9G
blYpCj4gfAkJc2lhZGRyID0gTlVMTDsKPiB8CWVsc2UKPiB8CQlzaWFkZHIgID0gKHZvaWQgX191
c2VyICopYWRkcjsKPiAKPiBJZiB3ZSBjYW4ndCBrbm93IHRoZSBhZGRyZXNzLCB0aGVyZSBpc24n
dCBtdWNoIHdlIGNhbiBkby4KPiAoVGhpcyBjaGVjayBpcyByZWFsbHkgbWFraW5nIHN1cmUgd2Ug
ZG9uJ3QgcGFzcyBqdW5rIHRvIHVzZXItc3BhY2Ugd2hlbiBGblYgaXMgc2V0KQo+IAo+IAoKT0su
IFNvIGV2ZW4gaWYgRkFSIGlzIG5vdCB2YWxpZCwgd2Ugc3RpbGwgc2VuZCBTSUdCVVMgZm9yIFNF
QSwgbm90IG9uIHRyYW5zbGF0aW9uIHRhYmxlIHdhbGssIGJ1dApzZXQgdGhlIGFkZHIgdG8gTlVM
TCBoZXJlLgoKPj4gc2hvdWxkIGl0IGJlIGFuIHByb2JsZW0gPwo+IAo+IEknbSBub3QgcXVpdGUg
c3VyZSB3aGF0IHlvdXIgcXVlc3Rpb24gaXMuCj4gCj4gSWYgdGhlIENQVSBkb2Vzbid0IHRlbGwg
dXMgdGhlIGFkZHJlc3MsIHdlIGNhbid0IHRlbGwgdXNlci1zcGFjZSB3aGF0IGl0IGlzLiBUaGUK
PiBhbHRlcm5hdGl2ZSBpcyB0byB1cGdyYWRlIHRvIFNJR0tJTEwgaW4gdGhhdCBjYXNlLgo+IAoK
R290IGl0LiBNYXkgYmUgdGhlIGRlc2NyaXB0aW9uIG9mIEZuViBiaXQgb2YgcmVnaXN0ZXIgRVNS
X0VMeCBpcyBub3QgcXVpdGUgZXhhY3RseS4gQmVjYXVzZQpmb2xsb3dpbmcgdGhlIGNvZGUsIENQ
VSBtYXkgc3RpbGwgaGF2ZSBhbiBjaGFuY2UgdG8gdGVsbCB0aGUgYWRkcmVzcyBmb3IgU0VBLCBu
b3Qgb24gdHJhbnNsYXRpb24gdGFibGUgd2Fsay4KCj4gCj4gSWYgeW91IHNlZSB0aGlzIGluc3Rl
YWQgb2YgdGhlIGFkZHJlc3MgcHJvdmlkZWQgdmlhIGZpcm13YXJlLWZpcnN0LCB0aGVyZSBpcyBh
Cj4gc2VyaWVzIHRvIGltcHJvdmUgdGhhdCBoZXJlOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LWFjcGkvMjAyMDAyMjgxNzQ4MTcuNzQyNzgtMS1qYW1lcy5tb3JzZUBhcm0uY29tLwo+
IAo+IChXZSBza2lwIHRoaXMgc2lnbmFsIGNvZGUgb2YgQVBFSSBwcm9taXNlcyBpdCBkaWQgYWxs
IHRoZSB3b3JrLiBUaGlzIGxldHMgeW91Cj4gdGFrZSB0aGUgc2lnbmFsIGZyb20gbWVtb3J5X2Zh
aWx1cmUoKSBpbnN0ZWFkLCB3aGljaCBtYXkgaGF2ZSBiZXR0ZXIgaW5mb3JtYXRpb24uKQo+IAoK
VGhpcyBzaG91bGQgYmUgYW4gZ3JlYXQgZGlyZWN0aW9uLgpJIGhhdmUgdHdvIGNvbmNlcm5zLgox
Lm1lbW9yeV9mYWlsdXJlKCkgaXMgb25seSBjYWxsZWQgZm9yICJtZW1vcnkgZXJyb3Igc2VjdGlv
biIgcmVjb3JkLiBUaGVuCnNob3VsZCB3ZSB1c2UgdGhpcyBtZW1vcnkgcmVjb3JkIGZvciBnaGVz
IHNlYSByZXBvcnQ/IE91ciBwbGF0Zm9ybSBpcwp1c2luZyAiQVJNIHByb2Nlc3NvciBlcnJvciBz
ZWN0aW9uIi4KMi5TaG91bGQgd2UgZGVmaW5lIGFuIGVycm9yIHNvdXJjZSBzdHJ1Y3R1cmUgZm9y
IGVhY2ggY3B1IGNvcmUgaW4gSEVTVCB0YWJsZT8KSWYgbm90LCB0aGVyZSBtYXkgYmUgY29uZmxp
Y3QgaWYgbW9yZSB0aGFuIG9uZSBjcHUgY29yZSBmYWxsIGludG8gU0VBLgoKPiAKPiBJZiBpdHMg
dGhlIFNJR0tJTEwgZW50cmllczogdGhlc2UgYXJlIGZvciB0aGUgdHJhbnNsYXRpb24gdGFibGUg
d2Fsay4KPiBUaGVyZSBpcyBubyBwb2ludCB0ZWxsaW5nIHVzZXItc3BhY2UgYWJvdXQgY29ycnVw
dGlvbiBpbiBpdHMgcGFnZSB0YWJsZXMgYXMgaXQKPiBjYW4ndCBkbyBhbnl0aGluZyBhYm91dCBp
dC4gVGhlIGtlcm5lbCdzIGhhbmRsaW5nIG9mIHRoaXMgaXMgdG8ga2lsbCB0aGUKPiBwcm9jZXNz
LiAocGFnZSB0YWJsZXMgbWFrZSB1cCBhIHZlcnkgc21hbGwgYW1vdW50IG9mIG1lbW9yeSwgc28g
dGhpcyBzaG91bGQgYmUKPiByYXJlciB0aGFuIHRoZSByZWd1bGFyICdleHRlcm5hbCBhYm9ydCcg
Y2FzZSkKPiAKCkhtbSwgdGhlbiBpdCBpcyB1c2VsZXNzIHRoYXQgQ1BVIHJlY29yZCBhZGRyZXNz
IGZvciB0aGlzIGVudHJpZXMuCgo+IAo+IFRoYW5rcywKPiAKPiBKYW1lcwo+IAo+IAo+IAo+PiA2
ODAgICAgICAgICB7IGRvX3NlYSwgICAgICAgICAgICAgICBTSUdCVVMsICBCVVNfT0JKRVJSLCAg
ICAic3luY2hyb25vdXMgZXh0ZXJuYWwgYWJvcnQiICAgIH0sCj4+IDY4NCAgICAgICAgIHsgZG9f
c2VhLCAgICAgICAgICAgICAgIFNJR0tJTEwsIFNJX0tFUk5FTCwgICAgICJsZXZlbCAwICh0cmFu
c2xhdGlvbiB0YWJsZSB3YWxrKSIgICAgICB9LAo+PiA2ODUgICAgICAgICB7IGRvX3NlYSwgICAg
ICAgICAgICAgICBTSUdLSUxMLCBTSV9LRVJORUwsICAgICAibGV2ZWwgMSAodHJhbnNsYXRpb24g
dGFibGUgd2FsaykiICAgICAgfSwKPj4gNjg2ICAgICAgICAgeyBkb19zZWEsICAgICAgICAgICAg
ICAgU0lHS0lMTCwgU0lfS0VSTkVMLCAgICAgImxldmVsIDIgKHRyYW5zbGF0aW9uIHRhYmxlIHdh
bGspIiAgICAgIH0sCj4+IDY4NyAgICAgICAgIHsgZG9fc2VhLCAgICAgICAgICAgICAgIFNJR0tJ
TEwsIFNJX0tFUk5FTCwgICAgICJsZXZlbCAzICh0cmFuc2xhdGlvbiB0YWJsZSB3YWxrKSIgICAg
ICB9LAo+PiA2ODggICAgICAgICB7IGRvX3NlYSwgICAgICAgICAgICAgICBTSUdCVVMsICBCVVNf
T0JKRVJSLCAgICAic3luY2hyb25vdXMgcGFyaXR5IG9yIEVDQyBlcnJvciIgfSwgICAgLy8gUmVz
ZXJ2ZWQgd2hlbiBSQVMgaXMgaW1wbGVtZW50ZWQKPj4gNjkyICAgICAgICAgeyBkb19zZWEsICAg
ICAgICAgICAgICAgU0lHS0lMTCwgU0lfS0VSTkVMLCAgICAgImxldmVsIDAgc3luY2hyb25vdXMg
cGFyaXR5IGVycm9yICh0cmFuc2xhdGlvbiB0YWJsZSB3YWxrKSIgICAgIH0sICAgICAgLy8gUmVz
ZXJ2ZWQgd2hlbiBSQVMgaXMgaW1wbGVtZW50ZWQKPj4gNjkzICAgICAgICAgeyBkb19zZWEsICAg
ICAgICAgICAgICAgU0lHS0lMTCwgU0lfS0VSTkVMLCAgICAgImxldmVsIDEgc3luY2hyb25vdXMg
cGFyaXR5IGVycm9yICh0cmFuc2xhdGlvbiB0YWJsZSB3YWxrKSIgICAgIH0sICAgICAgLy8gUmVz
ZXJ2ZWQgd2hlbiBSQVMgaXMgaW1wbGVtZW50ZWQKPj4gNjk0ICAgICAgICAgeyBkb19zZWEsICAg
ICAgICAgICAgICAgU0lHS0lMTCwgU0lfS0VSTkVMLCAgICAgImxldmVsIDIgc3luY2hyb25vdXMg
cGFyaXR5IGVycm9yICh0cmFuc2xhdGlvbiB0YWJsZSB3YWxrKSIgICAgIH0sICAgICAgLy8gUmVz
ZXJ2ZWQgd2hlbiBSQVMgaXMgaW1wbGVtZW50ZWQKPj4gNjk1ICAgICAgICAgeyBkb19zZWEsICAg
ICAgICAgICAgICAgU0lHS0lMTCwgU0lfS0VSTkVMLCAgICAgImxldmVsIDMgc3luY2hyb25vdXMg
cGFyaXR5IGVycm9yICh0cmFuc2xhdGlvbiB0YWJsZSB3YWxrKSIgICAgIH0sICAgICAgLy8gUmVz
ZXJ2ZWQgd2hlbiBSQVMgaXMgaW1wbGVtZW50ZWQKPj4gNjk2ICAgICAgICAgeyBkb19iYWQsICAg
ICAgICAgICAgICAgU0lHS0lMTCwgU0lfS0VSTkVMLCAgICAgInVua25vd24gMzIiICAgICAgICAg
ICAgICAgICAgICB9LAo+IAo+IC4KPiAKCi0tIAogdGhhbmtzCnRhbnhpYW9mZWkKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
