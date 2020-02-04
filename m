Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88648151DFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 17:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzyOxwBDlK/M/YJvcQq0PMxXQhTMvUHde/1XlR+GEiU=; b=ZknNifaIJ8uQtL
	l3Ix7+rXMa1D+3o38xEsZWMj5XLX5HUc2BHs+a5oCLxFJlEAdIpXMswXK3AblbEC9l6p9OAkfSttP
	FBHWyp/1j0A/LbZ4KVxRtueCsmFz5kcyAGlz84EL4Vc6MfJuZ0ENY6EAXchndeN5pW8jEHDgoa/aB
	H+hDmz9wEJFWsT3jw/x8dZ96EFQJyxpTKyrmdXw7hGQc2wR68nJ3ffXbqG7eXs0OfCqVesl2518rq
	8O4zTB6+kqDHxJRkiKan6cHWi89xmw9TKfA57tKwC/XzKgEa2kxkayBH6oO5lYIL1ISi6qlfz90J/
	TmqMpWtmQ4c48LxEFCLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz0qi-0004aw-HV; Tue, 04 Feb 2020 16:14:52 +0000
Received: from mail2.vany.ca ([142.54.190.254])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz0qc-0004aN-LF; Tue, 04 Feb 2020 16:14:48 +0000
Received: from [10.0.4.177] (unknown [205.210.143.170])
 by mail2.vany.ca (Postfix) with ESMTPSA id 7C803AC0278;
 Tue,  4 Feb 2020 10:14:43 -0600 (CST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Peter Geis <pgwipeout@gmail.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
From: Adam Van Ymeren <adam@vany.ca>
Message-ID: <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
Date: Tue, 4 Feb 2020 11:14:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Icedove/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_081446_762323_06B7078D 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMjAtMDItMDQgMTA6MTUgYS5tLiwgUGV0ZXIgR2VpcyB3cm90ZToKPiBJJ20gaW50ZXJl
c3RlZCBpbiB0aGlzLCBzaW5jZSBJJ3ZlIGVuY291bnRlcmVkIHNvbWUgb2RkaXRpZXMgd2l0aCB0
aGUKPiBzZGNhcmQgb24gdGhpcyBib2FyZC4KPiBXaXRoIHRoZSByZWNlbnQgYWRkaXRpb24gb2Yg
c3VwcG9ydCBmb3IgZGRyNCB0cGwgaW5pdCBpbiB1LWJvb3QgSQo+IHN0YXJ0ZWQgcGxheWluZyB3
aXRoIGl0IGFnYWluLgo+IEkgY291bGRuJ3QgZ2V0IHRoZSBzZGNhcmQgdG8gZGV0ZWN0IGxlYXZp
bmcgdHBsIGludG8gc3BsLCBjYXVzaW5nIGEKPiBib290IGZhaWx1cmUuCj4gVGhlIGV4YWN0IHNh
bWUgaW1hZ2Ugd29ya3Mgd2hlbiBmbGFzaGVkIHRvIHRoZSBlbW1jIHRob3VnaC4KCkF3ZXNvbWUg
SSB3YXMgaG9waW5nIHRvIGdldCBtYWlubGluZSB1LWJvb3QgbG9hZGluZyB0aGlzIGJvYXJkIGFz
IHdlbGwuwqAKSG93ZXZlciBJIGRvbid0IGtub3cgaG93IHRvIHNldHVwIHRoZSBzZHJhbS1wYXJh
bXMgZm9yIHRoZSBkZDQgb24gdGhpcwpib2FyZC7CoCBEbyB5b3UgaGF2ZSB0aGUgYXBwcm9wcmlh
dGUgY29uZmlnP8KgIFdvdWxkIGJlIGdyZWF0IG5vdCB0bwpyZXF1aXJlIHRoZSB2ZW5kb3IncyBi
bG9iIGZvciBib290aW5nLgoKPgo+IE9uY2Ugd2UgYXJlIGluIHRoZSBrZXJuZWwgdGhlIHNkY2Fy
ZCBkZXRlY3RzIGZpbmUuCj4KPiBJIG5vdGljZWQgdS1ib290IGRvZXNuJ3QgaGF2ZSBhIGdyZi1n
cGlvIGRyaXZlciwgc28gdGhlIDMuM3YvMS44dgo+IHJlZ3VsYXRvciBpcyB1bmF2YWlsYWJsZS4K
Pgo+IHJvb3RAZmlyZWZseTovc3lzL2tlcm5lbC9kZWJ1Zy9tbWMxIyBjYXQgaW9zCj4gY2xvY2s6
ICAgICAgICAgIDE1MDAwMDAwMCBIego+IGFjdHVhbCBjbG9jazogICAxNTAwMDAwMDAgSHoKPiB2
ZGQ6ICAgICAgICAgICAgMjEgKDMuMyB+IDMuNCBWKQo+IGJ1cyBtb2RlOiAgICAgICAyIChwdXNo
LXB1bGwpCj4gY2hpcCBzZWxlY3Q6ICAgIDAgKGRvbid0IGNhcmUpCj4gcG93ZXIgbW9kZTogICAg
IDIgKG9uKQo+IGJ1cyB3aWR0aDogICAgICAyICg0IGJpdHMpCj4gdGltaW5nIHNwZWM6ICAgIDYg
KHNkIHVocyBTRFIxMDQpCj4gc2lnbmFsIHZvbHRhZ2U6IDEgKDEuODAgVikKPiBkcml2ZXIgdHlw
ZTogICAgMCAoZHJpdmVyIHR5cGUgQikKPgo+IHJvb3RAZmlyZWZseTovc3lzL2tlcm5lbC9kZWJ1
ZyMgY2F0IGdwaW8KPiBncGlvY2hpcDA6IEdQSU9zIDAtMzEsIHBhcmVudDogcGxhdGZvcm0vcGlu
Y3RybCwgZ3BpbzA6Cj4gIGdwaW8tMCAgICggICAgICAgICAgICAgICAgICAgIHx2Y2MtaG9zdC01
di1yZWd1bGF0bykgb3V0IGhpCj4gIGdwaW8tMzAgICggICAgICAgICAgICAgICAgICAgIHxzZG1t
Yy1yZWd1bGF0b3IgICAgICkgb3V0IGxvIEFDVElWRSBMT1cKPgo+IGdwaW9jaGlwMTogR1BJT3Mg
MzItNjMsIHBhcmVudDogcGxhdGZvcm0vcGluY3RybCwgZ3BpbzE6Cj4gIGdwaW8tNTAgICggICAg
ICAgICAgICAgICAgICAgIHxzbnBzLHJlc2V0ICAgICAgICAgICkgb3V0IGhpIEFDVElWRSBMT1cK
PiAgZ3Bpby01OCAgKCAgICAgICAgICAgICAgICAgICAgfHZjYy1ob3N0MS01di1yZWd1bGF0KSBv
dXQgaGkKPgo+IGdwaW9jaGlwMjogR1BJT3MgNjQtOTUsIHBhcmVudDogcGxhdGZvcm0vcGluY3Ry
bCwgZ3BpbzI6Cj4KPiBncGlvY2hpcDM6IEdQSU9zIDk2LTEyNywgcGFyZW50OiBwbGF0Zm9ybS9w
aW5jdHJsLCBncGlvMzoKPgo+IGdwaW9jaGlwNTogR1BJT3MgNTA5LTUxMCwgcGFyZW50OiBwbGF0
Zm9ybS9yazgwNS1waW5jdHJsLCByazgwNS1ncGlvLCBjYW4gc2xlZXA6Cj4gIGdwaW8tNTA5ICgg
ICAgICAgICAgICAgICAgICAgIHw/ICAgICAgICAgICAgICAgICAgICkgb3V0IGhpIEFDVElWRSBM
T1cKPiAgZ3Bpby01MTAgKCAgICAgICAgICAgICAgICAgICAgfD8gICAgICAgICAgICAgICAgICAg
KSBvdXQgaGkgQUNUSVZFIExPVwo+Cj4gZ3Bpb2NoaXA0OiBHUElPcyA1MTEtNTExLCBwYXJlbnQ6
IHBsYXRmb3JtL2ZmMTAwMDAwLnN5c2NvbjpncmYtZ3BpbywKPiBmZjEwMDAwMC5zeXNjb246Z3Jm
LWdwaW86Cj4gIGdwaW8tNTExICggICAgICAgICAgICAgICAgICAgIHx2Y2Nfc2RpbyAgICAgICAg
ICAgICkgb3V0IGhpCgoKT24gbXkgYm9hcmQgSSB0cmllZCBldmVyeSBjb21iaW5hdGlvbiBvZiBH
UElPX0FDVElWRV9ISUdIL0xPVywKZW5hYmxlLWFjdGl2ZS1oaWdoIG9yIG5vdCwgYW5kIHN0YXRl
ID0gPDE4Li4uIDB4MSAzMy4uLiAweDA+IHZzIHN0YXRlID0KPDE4Li4uIDB4MCAzMy4uLjB4MT4g
Zm9yIHRoZSB2Y2Nfc2RpbyByZWd1bGF0b3IuwqAgTm9uZSBvZiB0aG9zZSBhbGxvd2VkCm15IGtl
cm5lbCB0byBkZXRlY3QgdGhlIFNEIENhcmQuwqAgVGhlIG9ubHkgcmVsaWFibGUgbWV0aG9kIHNv
IGZhciBzZWVtCnRvIGJlIHNldHRpbmcgdGhlIGdwaW8gb2YgdGhlIHJlZ3VsYXRvciB0byBzb21l
IG5vbiBleGlzdGVudCBwaW4sIGJ1dAp0aGF0IGNsZWFybHkgaXNuJ3QgdGhlIGNvcnJlbnQgYW5z
d2VyLsKgIEJvdGggZ3Bpb3MgPSA8JmdwaW8wIDI1CkdQSU9fQUNUSVZFX0hJR0g+IGFuZCBncGlv
cyA9IDwmZ3BpbzIgUktfUEQzIEdQSU9fQUNUSVZFX0hJR0g+IGFsbG93IHRoZQpib2FyZCB0byBi
b2FyZCwgYm90aCBvZiB3aGljaCBhcmUgbm9uLWV4aXN0ZW50IHBpbnMgZnJvbSBteSByZWFkaW5n
IG9mCnRoZSBkYXRhc2hlZXQuCgpJJ20gYmVnaW5uaW5nIHRvIHN1c3BlY3QgdGhhdCBpdCBtYXkg
YmUgYSBidWcgaW4gdGhlIGdwaW8tc3lzY29uIGRyaXZlciwKb3IgdGhhdCB0aGUgYWN0dWFsIGNp
cmN1aXQgb24gdGhlIGJvYXJkIGp1c3QgZG9lc24ndCB3b3JrIGFzIHRoZSB2ZW5kb3IKaW50ZW5k
ZWQuCgpJbiBteSBkbWVzZyBJIHNlZQoKW8KgwqDCoCAwLjQwNjgzMF0gZ3Bpby1zeXNjb24gZmYx
MDAwMDAuc3lzY29uOmdyZi1ncGlvOiBjYW4ndCByZWFkIHRoZSBkYXRhCnJlZ2lzdGVyIG9mZnNl
dCEKCndoaWNoIGlzIGF3ZnVsbHkgc3VzcGljaW91cy7CoCBCdXQgdGhpcyBkb2Vzbid0IGFwcGVh
ciB0byBiZSBhIGZhdGFsCmVycm9yIGZvciB0aGUgZHJpdmVyLCBsb2dnaW5nIF9yZWdtYXBfd3Jp
dGUgY2FsbHMgc2hvd3MgdGhhdCBpdCBhcHBlYXJzCnRvIGJlIHVwZGF0aW5nIHRoZSBjb3JyZWN0
IHJlZ2lzdGVyICgweDQyOCkKCgpGcm9tIGdwaW8tc3lzY29uLmM6MTM0Cgp8CgpzdGF0aWMgdm9p
ZCByb2NrY2hpcF9ncGlvX3NldChzdHJ1Y3QgZ3Bpb19jaGlwICpjaGlwLCB1bnNpZ25lZCBpbnQg
b2Zmc2V0LAoJCQkgICAgICBpbnQgdmFsKQp7CglzdHJ1Y3Qgc3lzY29uX2dwaW9fcHJpdiAqcHJp
diA9IGdwaW9jaGlwX2dldF9kYXRhKGNoaXApOwoJdW5zaWduZWQgaW50IG9mZnM7Cgl1OCBiaXQ7
Cgl1MzIgZGF0YTsKCWludCByZXQ7CgoJb2ZmcyA9IHByaXYtPmRyZWdfb2Zmc2V0ICsgcHJpdi0+
ZGF0YS0+ZGF0X2JpdF9vZmZzZXQgKyBvZmZzZXQ7CgliaXQgPSBvZmZzICUgU1lTQ09OX1JFR19C
SVRTOwoJZGF0YSA9ICh2YWwgPyBCSVQoYml0KSA6IDApIHwgQklUKGJpdCArIDE2KTsKCXJldCA9
IHJlZ21hcF93cml0ZShwcml2LT5zeXNjb24sCgkJCSAgIChvZmZzIC8gU1lTQ09OX1JFR19CSVRT
KSAqIFNZU0NPTl9SRUdfU0laRSwKCQkJICAgZGF0YSk7CglpZiAocmV0IDwgMCkKCQlkZXZfZXJy
KGNoaXAtPnBhcmVudCwgImdwaW8gd3JpdGUgZmFpbGVkIHJldCglZClcbiIsIHJldCk7Cn0KCkNh
bGxpbmcgcmVnbWFwX3dyaXRlIHNlZW1zIHdyb25nLCBhcyB3ZSBlbmQgdXAgc2V0dGluZyBhbGwg
Yml0cyBpbiB0aGUgcmVnaXN0ZXIsIHNvIHRoaXMgc2hvdWxkIHByb2JhYmx5IGJlIHJlZ21hcF91
cGRhdGVfYml0cy4gIFRoZSB0b3AgMTYtYml0cyBhcmUgd3JpdGUtZW5hYmxlIGZvciB0aGUgbG93
ZXIgMTYtYml0cywgYnV0IEkgY2FuJ3QgZmluZCBkb2N1bWVudGF0aW9uIGlmIGl0IHdvcmtzIHRv
IHNldCBib3RoIHRoZSB3cml0ZSBlbmFibGUgYml0IGFuZCB0aGUgdGFyZ2V0IGJpdCBhdCB0aGUg
c2FtZSB0aW1lLgoKVG9uaWdodCBJIHdpbGwgdHJ5IHNwbGl0dGluZyB0aGF0IGludG8gdHdvIGNh
bGxzIHRvIHVwZGF0ZSB0aGUgaGlnaCBiaXQgZmlyc3QgYXMgd2VsbCBhcyBjaGFuZ2luZyB0byBy
ZWdtYXBfdXBkYXRlX2JpdHMuICBBbnkgb3RoZXIgaWRlYXMgd2VsY29tZS4KClNvcnJ5IGlmIHRo
aXMgd2FzIHRvbyB2ZXJib3NlIG9yIHRvbyBtdWNoIGNvbnRleHQsIEknbSBuZXcgdG8gdGhpcyBr
aW5kIG9mIHdvcmsuCgp8CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
