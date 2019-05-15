Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B771F5F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 15:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mODMA+/BLtrsz3C7sHKDP6Df9GYUmpJoMG5e0C4kEBA=; b=TDTPuiYTbGrtof
	67JaHojrtAP7uQEkhsg38JIEo6YzwZAMsI9+2WzgIwYYzGyYNm592o/GhTpwYZmHO0V9m8NYcMi3j
	swiPHrZsloHr82nXJkZdDhj0s1hxBW9Z4ZPNF/4zSiUmQzZ+pp8Ogwz3vX3USsVtGYSq4wHLLDigN
	CkUvL1fA9mggN4OmWG5QOysdYLxlQgX8tpzh7qJCH/LkwsiWLTDyAxFUtDux76I1TIuS3e59WcD5j
	Z2Ga4TtFyLI3YeSqn70okh0KUoEOpv0tKpUNpsfP7mDc29HunM/+iFVH93UOHqg3PARgK783RrfZl
	21dE/JiOUOiUtaS0ZKvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuJX-0001xX-5p; Wed, 15 May 2019 13:51:23 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuJP-0001x2-Ja
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 13:51:17 +0000
Received: by mail-it1-x144.google.com with SMTP id u186so233655ith.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 06:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=p/y8JRassq6ldagHFCRqos7/WsoBIbYVcLzev7Ry3W8=;
 b=KaHZE40aR03wi9RLD9spGr5b93BbQ5DubEQrkywFhVa/nXaUR1JKUW8uo9C3F/L4cf
 5GRSuGcX6WUjHS72cONwr20aOHsj/qpk/0knlB/TCTMnD1u7F6+VB8A+388jl/AUuEd0
 pF3fcsHPPc7HU3fF/KFu01x7DWvRFlJwiPbmtlAdUKaRERF9t06ihbQnLpa1TRBADuae
 R+upDTYboIUgtTjOb4E77GIR9OBSjlu/SO2YVW33vbZLBY5HF+1+b/mJAUgjp9QlcZlJ
 Sf1SVNMNjb4Gm3WPRdniVtcdObc/IQyzSBx3W1+HfnGYWQq9MwMYQp7GpfUEh22jkXg4
 kmmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=p/y8JRassq6ldagHFCRqos7/WsoBIbYVcLzev7Ry3W8=;
 b=OCvCPW2LpHz1wZGQYtIS5bvtqxtgWsNP6vrtoCkpU+GOfTAOCzE5PSH1/tleh76+ez
 y4QMjQ4p8cTzeR0Qqaga8M51E9Iw3qp2nV40ziOs7NNUHl7LfcRRnBZSY3scvefSOjn3
 1VH5AqgdLfK8oc4kYHHZKrUNvgN3z28i/M7dfFV4INGGZVMrK4h2P9XBkcEJ0HvWulqC
 IMzTIY/IIE/Adh88tlWFC0P3hpkVxIDmaPZiQLZcXXFvGZdNd4fAEDwBOMkqRg7mqevA
 XfF2e0itNHdW7s/umPWJQ12XXnLYBag3UccOFpjQGXjQDFFkk/KSqPfM6GuWs4pu3U51
 VeNQ==
X-Gm-Message-State: APjAAAWyjvqDQqbIA8EWVrCtzFpAUHJiA7I9O90VAuTd2BmCJbdF+0+U
 x9wNtNFJuzDFAKM0Z2prOtpXzJgM
X-Google-Smtp-Source: APXvYqyUdVq7O/jGC2ASOLVYVe+9UfE6Gezo9Pbls9Qhpg3DCNcoBRXv/sg0AXqtNZTG2PeckYWVYg==
X-Received: by 2002:a02:c8da:: with SMTP id q26mr28090176jao.0.1557928274570; 
 Wed, 15 May 2019 06:51:14 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id q16sm615991ior.75.2019.05.15.06.51.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 06:51:13 -0700 (PDT)
Subject: Re: [PATCH V3 1/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-2-josephl@nvidia.com>
 <fd68f906-79b4-6eda-b1fa-abaf3b4c6a12@gmail.com>
 <63360b18-6a17-ab3f-6c54-6e11e24885d0@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c3909c66-5aa4-161b-98d4-02ad20e02c88@gmail.com>
Date: Wed, 15 May 2019 16:50:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <63360b18-6a17-ab3f-6c54-6e11e24885d0@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_065115_665305_530ACA94 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTUuMDUuMjAxOSAxMDoxNywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gT24gNS8xNS8xOSAxMjoy
OCBBTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAxMC4wNS4yMDE5IDExOjQ3LCBKb3NlcGgg
TG8g0L/QuNGI0LXRgjoKPj4+IEFkZCB0aGUgYmluZGluZyBkb2N1bWVudCBmb3IgdGhlIGV4dGVy
bmFsIG1lbW9yeSBjb250cm9sbGVyIChFTUMpIHdoaWNoCj4+PiBjb21tdW5pY2F0ZXMgd2l0aCBl
eHRlcm5hbCBMUEREUjQgZGV2aWNlcy4gSXQgaW5jbHVkZXMgdGhlIGJpbmRpbmdzIG9mCj4+PiB0
aGUgRU1DIG5vZGUgYW5kIGEgc3ViLW5vZGUgb2YgRU1DIHRhYmxlIHdoaWNoIHVuZGVyIHRoZSBy
ZXNlcnZlZCBtZW1vcnkKPj4+IG5vZGUuIFRoZSBFTUMgdGFibGUgY29udGFpbnMgdGhlIGRhdGEg
b2YgdGhlIHJhdGVzIHRoYXQgRU1DIHN1cHBvcnRlZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBK
b3NlcGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPj4+IC0tLQo+Pj4gdjM6Cj4+PiAtIGRyb3Ag
dGhlIGJpbmRpbmdzIG9mIEVNQyB0YWJsZQo+Pj4gLSBhZGQgbWVtb3J5LXJlZ2lvbiBhbmQgcmVz
ZXJ2ZWQtbWVtb3J5IG5vZGUgZm9yIEVNQyB0YWJsZQo+Pj4gLS0tCj4+PiDCoCAuLi4vbnZpZGlh
LHRlZ3JhMjEwLWVtYy50eHTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA1
NSArKysrKysrKysrKysrKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9u
cygrKQo+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0Cj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL252aWRpYSx0ZWdyYTIxMC1lbWMudHh0Cj4+
Pgo+Pj4KPj4+IGRpZmYgLS1naXQKPj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21lbW9yeS1jb250cm9sbGVycy9udmlkaWEsdGVncmEyMTAtZW1jLnR4dAo+Pj4gYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL252aWRpYSx0
ZWdyYTIxMC1lbWMudHh0Cj4+Pgo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAw
MDAwMDAwMDAwMC4uZDY1YWVlZjIzMjljCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysKPj4+IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lbW9yeS1jb250cm9sbGVycy9udmlk
aWEsdGVncmEyMTAtZW1jLnR4dAo+Pj4KPj4+IEBAIC0wLDAgKzEsNTUgQEAKPj4+ICtOVklESUEg
VGVncmEyMTAgU29DIEVNQyAoZXh0ZXJuYWwgbWVtb3J5IGNvbnRyb2xsZXIpCj4+PiArPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Pj4gKwo+Pj4g
K0RldmljZSBub2RlCj4+PiArPT09PT09PT09PT0KPj4+ICtSZXF1aXJlZCBwcm9wZXJ0aWVzIDoK
Pj4+ICstIGNvbXBhdGlibGUgOiBzaG91bGQgYmUgIm52aWRpYSx0ZWdyYTIxMC1lbWMiLgo+Pj4g
Ky0gcmVnIDogcGh5c2ljYWwgYmFzZSBhZGRyZXNzIGFuZCBsZW5ndGggb2YgdGhlIGNvbnRyb2xs
ZXIncyByZWdpc3RlcnMuCj4+PiArLSBjbG9ja3MgOiBwaGFuZGxlcyBvZiB0aGUgcG9zc2libGUg
c291cmNlIGNsb2Nrcy4KPj4+ICstIGNsb2NrLW5hbWVzIDogbmFtZXMgb2YgdGhlIHBvc3NpYmxl
IHNvdXJjZSBjbG9ja3MuCj4+PiArLSBpbnRlcnJ1cHRzIDogU2hvdWxkIGNvbnRhaW4gdGhlIEVN
QyBnZW5lcmFsIGludGVycnVwdC4KPj4+ICstIG1lbW9yeS1yZWdpb24gOiBwaGFuZGxlIHRvIHRo
ZSByZXNlcnZlZCBtZW1vcnkgKHNlZQo+Pj4gK8KgCj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L3Jlc2VydmVkLW1lbW9yeS50eHQpIHdoaWNoCj4+
Pgo+Pj4gK8KgIGNvbnRhaW5zIGEgc3ViLW5vZGUgb2YgRU1DIHRhYmxlLgo+Pj4gKy0gbnZpZGlh
LG1lbW9yeS1jb250cm9sbGVyIDogcGhhbmRsZSBvZiB0aGUgbWVtb3J5IGNvbnRyb2xsZXIuCj4+
PiArCj4+PiArUmVzZXJ2ZWQgbWVtb3J5IG5vZGUKPj4+ICs9PT09PT09PT09PT09PT09PT09PQo+
Pj4gK1Nob3VsZCBjb250YWluIGEgc3ViLW5vZGUgb2YgRU1DIHRhYmxlIHdpdGggcmVxdWlyZWQg
cHJvcGVydGllczoKPj4+ICstIGNvbXBhdGlibGUgOiBzaG91bGQgYmUgIm52aWRpYSx0ZWdyYTIx
MC1lbWMtdGFibGUiLgo+Pj4gKy0gcmVnIDogcGh5c2ljYWwgYWRkcmVzcyBhbmQgbGVuZ3RoIG9m
IHRoZSBsb2NhdGlvbiBvZiBFTUMgdGFibGUuCj4+PiArCj4+PiArRXhhbXBsZToKPj4+ICvCoMKg
wqAgcmVzZXJ2ZWQtbWVtb3J5IHsKPj4+ICvCoMKgwqDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9
IDwyPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwyPjsKPj4+ICvCoMKgwqDC
oMKgwqDCoCByYW5nZXM7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgZW1jX3RhYmxlOiBlbWMt
dGFibGVAOGJlMDAwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9
ICJudmlkaWEsdGVncmEyMTAtZW1jLXRhYmxlIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJlZyA9IDwweDAgMHg4YmUwMDAwMCAweDAgMHgxMDAwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4KPj4gWW91
IGVzc2VudGlhbGx5IG1vdmVkIHRoZSB2MSBiaW5kaW5nIGludG8gb2JzY3VyZSBhbmQgdW5kb2N1
bWVudGVkIGJsb2IsCj4+IGlnbm9yaW5nIHByZXZpb3VzIHJldmlldyBjb21tZW50cy4gVGhpcyBp
cyBhIHZlcnkgb2RkIG1vdmUuLi4gcGxlYXNlCj4+IGV4cGxhaW4gd2hhdCBpcyBnb2luZyBvbi4K
Pj4KPiAKPiBEaXNjdXNzZWQgd2l0aCBUaGllcnJ5IG9mZmxpbmUgd2hpY2ggd2F5IHdlIHByZWZl
ciB0byBwYXNzIHRoZSBFTUMgdGFibGUKPiB0byB0aGUga2VybmVsLiBTb21lIHJlYXNvbnMgYmVs
b3cgd2UgZGVjaWRlIHRvIGNob3NlIHRoaXMgb25lICh2aWEKPiBiaW5hcnkgYmxvYikuCj4gCj4g
LSBUaGUgRU1DIHRhYmxlIGlzIG11Y2ggYmlnZ2VyIHRoYW4gdGhlIHByZXZpb3VzIFRlZ3JhIGdl
bmVyYXRpb25zCj4gKExQRERSNCB2LnMuIExQRERSMi8zKS4gSXQncyBoYXJkZXIgdG8gc2V0dGxl
IGluIHRoZSByZXZpZXcgcHJvY2Vzcy4gQW5kCj4gaWYgdGhlcmUgaXMgYSBuZXcgZml4IG9mIHRo
ZSB0YWJsZSBpbiB0aGUgZnV0dXJlLCB3ZSdsbCBuZWVkIHRvIGdvCj4gdGhyb3VnaCB0aGF0IGFn
YWluLgoKSSBkb24ndCB0aGluayB0aGF0IHRoaXMgYSB2ZXJ5IGdvb2QgZXhjdXNlIGZvciBub3Qg
ZG9jdW1lbnRpbmcgdGhlCmJsb2IncyBzdHJ1Y3R1cmUuCgo+IC0gQmVjYXVzZSBpdCdzIExQRERS
NCB3ZSB3YW50IHRvIHN1cHBvcnQgaGVyZSwgdG8gc3VwcG9ydCBoaWdoZXIgcmF0ZXMsCj4gdGhl
IGRldmljZXMgaGF2ZSBtdXN0IGJlIGdvbmUgdGhyb3VnaCB0aGUgdHJhaW5pbmcgcHJvY2Vzcywg
d2hpY2ggaXMKPiBkb25lIGluIHRoZSBmaXJtd2FyZS4gV2hpY2ggbWVhbnMgV2UgYWxyZWFkeSBo
YXZlIHRoZSB0YWJsZSBzb21ld2hlcmUgaW4KPiB0aGUgbWVtb3J5IGFuZCBrZXJuZWwgY2FuIGp1
c3QgcmUtdXNlIHRoYXQuIE5vIG5lZWQgdG8gY29udmVydCB0aGVtIGJhY2sKPiB0byBEVCBhbmQg
cGFzcyB0byB0aGUga2VybmVsLiBUaGlzIGlzIG11Y2ggZWFzaWVyIHRvIG1haW50YWluIGluIHRo
ZQo+IGZ1dHVyZSBpZiB0aGVyZSBpcyBzb21ldGhpbmcgbmVlZHMgdG8gZml4Lgo+IC0gV2l0aCB0
aGUgbWVjaGFuaXNtIGFib3ZlLCB3ZSBkb24ndCBuZWVkIHRvIG1haW50YWluIHRoZSBodWdlIEVN
QyB0YWJsZQo+IGluIHRoZSBEVCBmaWxlIGxpa2UgYmVsb3cuCj4gaHR0cDovL3BhdGNod29yay5v
emxhYnMub3JnL3BhdGNoLzEwNjM4ODYvCj4gaHR0cDovL3BhdGNod29yay5vemxhYnMub3JnL3Bh
dGNoLzEwNjM4ODkvCgpUaGUgYmxvYidzIEVNQyB0YWJsZSBjb250YWlucyBzdHVmZiBzcGVjaWZp
YyB0byBkb3duc3RyZWFtIGtlcm5lbCwgaGVuY2UKaXQncyBhIG5vdCB2ZXJ5IHJlLXVzYWJsZSBk
b3duc3RyZWFtIHNvZnR3YXJlIEFCSSBtaXhlZCB3aXRoIEhXCmRlc2NyaXB0aW9uIHRoYXQgeW91
J3JlIGJyaW5naW5nIGludG8gdXBzdHJlYW0uIFRoaXMgaXMgbm90IHZlcnkKd2VsY29tZWQsIGFs
dGhvdWdoIEkgZG9uJ3Qgc2VlIGl0IGFzIGEgYmlnIHByb2JsZW0gaWYgeW91J2xsIHN0YXRlIHRo
YXQKYWxsIGNsZWFybHkgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHdpdGggYSBzb2xpZCBleHBsYW5h
dGlvbiB3aHkgaXQgaXMgdGhlCmJlc3QgcG9zc2libGUgb3B0aW9uLgoKPiBBbmQgc29ycnksIG1h
eWJlIGl0J3Mgbm90IGNsZWFyIGF0IHRoYXQgbW9tZW50LCBidXQgSSBkaWQgbWVudGlvbiB0aGF0
Cj4gd2Ugd2FudCB0byBnbyB3aXRoIHRoZSBuZXcgbWV0aG9kICh2aWEgYmluYXJ5IGJsb2IpIGlu
IHRoZSBwcmV2aW91cyByZXZpZXcuCj4gUGxlYXNlIHNlZSBodHRwOi8vcGF0Y2h3b3JrLm96bGFi
cy5vcmcvcGF0Y2gvMTA4NDQ2Ny8KCk9rYXkuIEl0IHdpbGwgYmUgYmV0dGVyIGlmIHRoZSBkaXNj
dXNzaW9uIGhhcHBlbmVkIHB1YmxpY2x5LCBhdCBsZWFzdCBJCmhvcGUgdGhhdCBSb2IgaXMgaW52
b2x2ZWQgaW4gaXQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
