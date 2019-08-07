Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CED484B0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1nKmXmifGe/58ZZWtMLIb8PxrzblvVDfUfRAPFMUKs=; b=aGGsM0MnXGBaTP
	cYPFI7nU0/WBDDHZOhxYsn8iQ+jG97a4yKjPnE5hFCUoQpHtMvDUIowBY/YrzuC5wmxxa5uKe4+3b
	HCYphaJJSJyruSCXw9w5nVuhEv/pq+jUMm8OIS7VI4aI1QzKr3qADLP7/bP/dg4Hhi0lQJrKfsqlF
	DFXkgsPfWxlK825RNZQJ+50eURAB194vim9BxRhtCYkMZ7uHvd6qUrJgGqomrfwFIjkRX4BVAR53n
	nORbOi883iowe9KPFKheXst2IS3ZWW/a7/4T60571amhv5Pj7SEP48jDyNyseu9YFqV20o4sLrOW3
	WKcxaTkB7qPQaiEw4d6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKT6-0000La-QU; Wed, 07 Aug 2019 11:51:01 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKSt-0000LF-AL
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:50:49 +0000
Received: by mail-qt1-x843.google.com with SMTP id w17so7333065qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 04:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=e3e0L/SskZXcaclJTGtiQqHhk/Wn3UfjFXd8QvpfKTA=;
 b=QWzRJr6KDulNeiwnKxoX/J2k5VHFI8J2XcrrcR9LhozL6wAiSlIoiSPnxmr5dtZgIu
 A6JXpR0J2Goh0qNOpgSKdBrX3nHbd3KYiWZlPvKCmgY7kZ+FpF5u9yuelxLo5eV+bG01
 Iph7jG08mptcwI1BOzuscipdCQdDDqItbwx3z5sP+8ENZ6OKKGqvZS5M9+qNsS/Jc2oy
 9xPGqwJrLJMwTtpt/IhAtFBWuvLw035zhYydTxRIPFd3bYbPwazcm0ODJiSzEqN4pTEC
 Tud8dTiYw1PN1EbmLuvVjOv2qn1LWK+QqiZss9sHhzLMBHu3wF/VqTAh29a/3fBh43B8
 cALw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=e3e0L/SskZXcaclJTGtiQqHhk/Wn3UfjFXd8QvpfKTA=;
 b=VQSzmPrjij/t2qdY9RgNq1COIl+3S5q/PmMiu8gemCl7yJ4jL+2TcjXM0h0+FZNDYX
 ur33QIQz5lYxzY5ElWbncrx4r32T0ksI+Mxaormq01NaF3T9wUtUBKEPmq41oq6nSbBP
 mZ8hfqVmS5knvEd6X5iXwV+AwxP+vsk2xtmp2nQB7e8gwG5fE1wwzXQYn4kC4KetPWgc
 hVge0fMrN/3lJlCv2X5YL/gZBy2qXSpugt5e+TJlRHCQf44Uz2QcXENDAzmJHVMlC6/e
 N8jEHyxcUCIKT8i5H1aa11TXN/ERAjyi828DymIMiNQ9r31CcU9VUOniCVeiec/PW0DY
 1K/g==
X-Gm-Message-State: APjAAAUy4eWTqE7axF2JV7sBe0CV6pPi2xgqt9KLyR4lvJyp36r597vr
 bq5yT6wsEouUuI1TsTffE1SgRA==
X-Google-Smtp-Source: APXvYqy0vhSBZ43m+6AFWZNrxa5IQNt30ULCeA3cDxvaDLebVXpYJdnH9cwilZ/+bBX69IKvf1IMqg==
X-Received: by 2002:ac8:2763:: with SMTP id h32mr7944940qth.350.1565178645995; 
 Wed, 07 Aug 2019 04:50:45 -0700 (PDT)
Received: from qians-mbp.fios-router.home
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id 42sm47144410qtm.27.2019.08.07.04.50.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 04:50:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2] arm64/cache: fix -Woverride-init compiler warnings
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190807105652.cyi3fou2rfsxhxrk@willie-the-truck>
Date: Wed, 7 Aug 2019 07:50:43 -0400
Message-Id: <D11F0810-A6D0-4835-B71A-9DDDC120423B@lca.pw>
References: <20190806193434.965-1-cai@lca.pw>
 <20190807105652.cyi3fou2rfsxhxrk@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_045047_385379_B619581B 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyA3LCAyMDE5LCBhdCA2OjU2IEFNLCBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwu
b3JnPiB3cm90ZToKPiAKPiBPbiBUdWUsIEF1ZyAwNiwgMjAxOSBhdCAwMzozNDozNFBNIC0wNDAw
LCBRaWFuIENhaSB3cm90ZToKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2NwdWlu
Zm8uYyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYwo+PiBpbmRleCA4NzYwNTVlMzczNTIu
LmEwYzQ5NWEzZjRmZCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5j
Cj4+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYwo+PiBAQCAtMzQsMTAgKzM0LDcg
QEAgREVGSU5FX1BFUl9DUFUoc3RydWN0IGNwdWluZm9fYXJtNjQsIGNwdV9kYXRhKTsKPj4gc3Rh
dGljIHN0cnVjdCBjcHVpbmZvX2FybTY0IGJvb3RfY3B1X2RhdGE7Cj4+IAo+PiBzdGF0aWMgY2hh
ciAqaWNhY2hlX3BvbGljeV9zdHJbXSA9IHsKPj4gLQlbMCAuLi4gSUNBQ0hFX1BPTElDWV9QSVBU
XQk9ICJSRVNFUlZFRC9VTktOT1dOIiwKPj4gLQlbSUNBQ0hFX1BPTElDWV9WSVBUXQkJPSAiVklQ
VCIsCj4+IC0JW0lDQUNIRV9QT0xJQ1lfUElQVF0JCT0gIlBJUFQiLAo+PiAtCVtJQ0FDSEVfUE9M
SUNZX1ZQSVBUXQkJPSAiVlBJUFQiLAo+PiArCVswIC4uLiBJQ0FDSEVfUE9MSUNZX1BJUFRdCT0g
IlJFU0VSVkVEL1VOS05PV04iCj4+IH07Cj4+IAo+PiB1bnNpZ25lZCBsb25nIF9faWNhY2hlX2Zs
YWdzOwo+PiBAQCAtMzEwLDEzICszMDcsMTYgQEAgc3RhdGljIHZvaWQgY3B1aW5mb19kZXRlY3Rf
aWNhY2hlX3BvbGljeShzdHJ1Y3QgY3B1aW5mb19hcm02NCAqaW5mbykKPj4gCj4+IAlzd2l0Y2gg
KGwxaXApIHsKPj4gCWNhc2UgSUNBQ0hFX1BPTElDWV9QSVBUOgo+PiArCQlpY2FjaGVfcG9saWN5
X3N0cltJQ0FDSEVfUE9MSUNZX1BJUFRdID0gIlBJUFQiOwo+PiAJCWJyZWFrOwo+PiAJY2FzZSBJ
Q0FDSEVfUE9MSUNZX1ZQSVBUOgo+PiArCQlpY2FjaGVfcG9saWN5X3N0cltJQ0FDSEVfUE9MSUNZ
X1ZQSVBUXSA9ICJWUElQVCI7Cj4+IAkJc2V0X2JpdChJQ0FDSEVGX1ZQSVBULCAmX19pY2FjaGVf
ZmxhZ3MpOwo+PiAJCWJyZWFrOwo+PiAJZGVmYXVsdDoKPj4gCQkvKiBGYWxsdGhyb3VnaCAqLwo+
PiAJY2FzZSBJQ0FDSEVfUE9MSUNZX1ZJUFQ6Cj4+ICsJCWljYWNoZV9wb2xpY3lfc3RyW0lDQUNI
RV9QT0xJQ1lfVklQVF0gPSAiVklQVCI7Cj4+IAkJLyogQXNzdW1lIGFsaWFzaW5nICovCj4+IAkJ
c2V0X2JpdChJQ0FDSEVGX0FMSUFTSU5HLCAmX19pY2FjaGVfZmxhZ3MpOwo+IAo+IEkgc3RpbGwg
dGhpbmsgdGhpcyBpcyB3b3JzZSB0aGFuIHRoZSBjb2RlIGluIG1haW5saW5lLiBJIGRvbid0IHRo
aW5rCj4gLVdvdmVycmlkZS1pbml0IHNob3VsZCB3YXJuIHdoZW4gb3ZlcnJpZGluZyBhIGZpZWxk
IGZyb20gYSBHQ0MgcmFuZ2UKPiBkZXNpZ25hdGVkIGluaXRpYWxpc2VyLCBzaW5jZSBpdCBtYWtl
cyB0aGVtIGNvbnNpZGVyYWJseSBsZXNzIHVzZWZ1bAo+IGltby4KClVuZm9ydHVuYXRlbHksIGNv
bXBpbGVyIHBlb3BsZSBhcmUgbW92aW5nIGludG8gYSBkaWZmZXJlbnQgZGlyZWN0aW9uIGFzCkNs
YW5nIHdvdWxkIHdhcm4gdGhvc2Uga2luZCBvZiB1c2FnZSB0b28uCgpJdCBhY3R1YWxseSBwcm92
ZSB0aGF0IHRob3NlIHdhcm5pbmdzIGFyZSB1c2VmdWwgdG8gZmluZCByZWFsIGlzc3Vlcy4gU2Vl
LAoKRmFlNWUwMzNkNjVhICjigJxtZmQ6IHJrODA4OiBGaXggUks4MThfSVJRX0RJU0NIR19JTElN
IGluaXRpYWxpemVy4oCdKQozMmRmMzRkODc1YmIgKOKAnFttZWRpYV0gcmM6IGltZy1pcjoganZj
OiBSZW1vdmUgdW51c2VkIG5vLWxlYWRlciB0aW1pbmdz4oCdKQoKRXNwZWNpYWxseSwgdG8gZmlu
ZCByZWR1bmRhbnQgaW5pdGlhbGl6YXRpb25zIGluIGxhcmdlIHN0cnVjdHVyZXMuIGUuZy4sCgpl
NmVhMGI5MTc4NzUgKOKAnFttZWRpYV0gZHZiX2Zyb250ZW5kOiBEb24ndCBkZWNsYXJlIHZhbHVl
cyB0d2ljZSBhdCBhIHRhYmxl4oCdKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
