Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494E412D5C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 03:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrxfdGn3BTUFgQtQ6utaEqwLebjLOjuAGyMSY9u24tU=; b=qUnjQvqDY/Idav
	T4281l/7mK44Ibqi5t2YlLFrSQoVVJyIVwr9Zo5bcnBNLu1tXAlyPfSmMl/a2HLKzNQMQdjUM2bNg
	Xr+/2Guf/tFE6+kEcIh3GJzWULrVQQzWCGtIC1hpxWE+5E0kfam4AhiKCykDqMrk3fmiy0uDoVBOP
	xGso/FPfLmNzZVUO0xh7cO+HdIarFqEm4Ef9pcfg7IrACUIO1A+mKQ25L5qICYwAhVps/UCfTyw+J
	kY0y8gGHAhcGfG74NtY8Bk+ItHpnb2R+XtmHQXenQfdWb15zDMRNZI0/JrV53hsXd/saLY2ltkclZ
	xmsFwMJHaegCmIgELs9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im7BJ-0007Hw-QJ; Tue, 31 Dec 2019 02:22:49 +0000
Received: from [2601:1c0:6280:3f0::34d9]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im7B6-00075R-5O; Tue, 31 Dec 2019 02:22:36 +0000
Subject: Re: [PATCH] stmmac: debugfs entry name is not be changed when udev
 rename device name.
To: Jiping Ma <Jiping.Ma2@windriver.com>, peppe.cavallaro@st.com,
 alexandre.torgue@st.com
References: <20191231020302.71792-1-jiping.ma2@windriver.com>
 <5b10a5ff-8428-48c7-a60d-69dd62009716@infradead.org>
 <719d8dd3-0119-0c93-b299-d2b3d66b1e06@windriver.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <adc6d2bc-a92c-703f-2e27-d905c6322c17@infradead.org>
Date: Mon, 30 Dec 2019 18:22:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <719d8dd3-0119-0c93-b299-d2b3d66b1e06@windriver.com>
Content-Language: en-US
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMzAvMTkgNjoxNiBQTSwgSmlwaW5nIE1hIHdyb3RlOgo+IAo+IAo+IE9uIDEyLzMxLzIw
MTkgMTA6MTEgQU0sIFJhbmR5IER1bmxhcCB3cm90ZToKPj4gSGksCj4+Cj4+IE9uIDEyLzMwLzE5
IDY6MDMgUE0sIEppcGluZyBNYSB3cm90ZToKPj4+IEFkZCBvbmUgbm90aWZpZXIgZm9yIHVkZXYg
Y2hhbmdlcyBuZXQgZGV2aWNlIG5hbWUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSmlwaW5nIE1h
IDxqaXBpbmcubWEyQHdpbmRyaXZlci5jb20+Cj4+PiAtLS0KPj4+IMKgIC4uLi9uZXQvZXRoZXJu
ZXQvc3RtaWNyby9zdG1tYWMvc3RtbWFjX21haW4uYyB8IDM4ICsrKysrKysrKysrKysrKysrKy0K
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0
bW1hY19tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNf
bWFpbi5jCj4+PiBpbmRleCBiMTRmNDZhNTcxNTQuLmMxYzg3N2JiNDQyMSAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19tYWluLmMKPj4+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19tYWluLmMK
Pj4+IEBAIC00MDM4LDYgKzQwMzgsNDAgQEAgc3RhdGljIGludCBzdG1tYWNfZG1hX2NhcF9zaG93
KHN0cnVjdCBzZXFfZmlsZSAqc2VxLCB2b2lkICp2KQo+Pj4gwqAgfQo+Pj4gwqAgREVGSU5FX1NI
T1dfQVRUUklCVVRFKHN0bW1hY19kbWFfY2FwKTsKPj4+IMKgICsvKioKPj4gSnVzdCB1c2UgLyog
aGVyZSBzaW5jZSB0aGlzIGlzIG5vdCBhIGtlcm5lbC1kb2MgY29tbWVudC4KPj4gLyoqIGlzIHJl
c2VydmVkIGZvciBrZXJuZWwtZG9jIGNvbW1lbnRzL25vdGF0aW9uLgo+IEkgdXNlIGNoZWNrcGF0
Y2gucGwgdG8gY2hlY2sgbXkgcGF0Y2gsIGl0IHNob3cgb25lIHdhcm5pbmcsIHRoZW4gSSBjaGFu
Z2UgKiB0byAqKi7CoMKgIEkgd2lsbCBjaGFuZ2UgaXQgYmFjayB0byAqLgoKSXQgc2hvdWxkIGJl
IG1vcmUgbGlrZToKCi8qIFVzZSBuZXR3b3JrIGRldmljZSBldmVudHMgdG8gY3JlYXRlL3JlbW92
ZS9yZW5hbWUKICogZGVidWdmcyBmaWxlIGVudHJpZXMuCiAqLwoKPiBXQVJOSU5HOiBuZXR3b3Jr
aW5nIGJsb2NrIGNvbW1lbnRzIGRvbid0IHVzZSBhbiBlbXB0eSAvKiBsaW5lLCB1c2UgLyogQ29t
bWVudC4uLgo+ICMyMzogRklMRTogZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMv
c3RtbWFjX21haW4uYzo0MDQyOgo+ICsvKgo+ICsgKiBVc2UgbmV0d29yayBkZXZpY2UgZXZlbnRz
IHRvIGNyZWF0ZS9yZW1vdmUvcmVuYW1lCj4+Cj4+PiArICogVXNlIG5ldHdvcmsgZGV2aWNlIGV2
ZW50cyB0byBjcmVhdGUvcmVtb3ZlL3JlbmFtZQo+Pj4gKyAqIGRlYnVnZnMgZmlsZSBlbnRyaWVz
Cj4+PiArICovCj4+PiArc3RhdGljIGludCBzdG1tYWNfZGV2aWNlX2V2ZW50KHN0cnVjdCBub3Rp
Zmllcl9ibG9jayAqdW51c2VkLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1bnNpZ25lZCBsb25nIGV2ZW50LCB2b2lkICpwdHIpCj4+PiArewo+PgoKCi0tIAp+UmFu
ZHkKUmVwb3J0ZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
