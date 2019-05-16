Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A7F209AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3y0CKSIMUeNWUMwtPJwqp6mgNMfjuYy0PR9XKvZhHuY=; b=NoZBDsD9EW8lrv
	a+XN2Lkd9+K+diIHnvtO+802J410L6iFkvh/YRtLOfwScoMnvVU98HBJSOas03G04ETsFWV0091db
	sUiji11kBfFCU8SgXDwzglTW1DHEGIHCb3bAuQPd7ONhJNk1V+636JXPxDKqnIAcrb1z+KTsd+Tfe
	2g6RhdF89G1DOdj4OCDbr45W5j7/dua0J7G79fNj4vToYtZJ33cyIQs9Dnv52xWL3pw6KE74qFzEV
	61v94jwYxyNYIZVl6DO2kEw+HezjPtoiWn1+QiAcZHtpjDs+gHt4aKhlGNYz+Ds35vDpP2+C+/VjV
	uFqzg/3uX3Mexq0Up1Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHOg-0002kQ-1b; Thu, 16 May 2019 14:30:14 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHOX-0001zE-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:30:07 +0000
Received: by mail-io1-xd41.google.com with SMTP id m7so2742109ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zDMRXQtb1GSj4Gdjzq9mKRQfQ/q3AFfPO4hqQhSpupk=;
 b=HgVWsfLYSOmsqw13uMzbP7LHz5CALHc0sxb6AHROcFeXLV0h180syWKlcFt1mMcrFB
 5mOf0q3SPo2EI0vxUtCyeFo0NIc5ksqdd4NRsKbwEExe3nTaI8DDI3iMRFZTFKJbM3HV
 +6qm0s83uZEUepKHNO6jrbgNbBtzyPAAkjc2hEPRhC+h9EyIdMwRkohDjSQZbPU+WydW
 fNx69jsM1ztOIUZsKjPRRiHoFRHIw/hlgYGuDWTfY9q96LDImOs+8oCWqwx0iXbYNtsE
 ZyAXz9y4XKTl0eJKDZZI2xIl6eFQyMCydDvfeks7rB18aQ77YqJNe1v0zlQD44QMYJnb
 ks+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zDMRXQtb1GSj4Gdjzq9mKRQfQ/q3AFfPO4hqQhSpupk=;
 b=MoEx5Afx5xZrNU/F0ZNli65qqKuXyCXbC+VBkw9ZIzmKl1bAcQo0Xboy5Q46xJ2RyO
 fReC7fgBMJ3Vh4sjm3mxrAWe21/Vamep3M8WeYUZu/tnlHS1U21kTXp1lsKzhnbqubrc
 zw9v5biSmZhftIgv4faAFuQS9V2E9neRyVDz4S0SjWS6CEEfg3zKiNOzZ9iEuxgs93hp
 yi3CbcPJh93N+fe58nwlJQrbvdrdJyWAdhu9r3qa2MQXYeloFuYG+YLo5HlAnhSeYcmF
 sLn4P/LKaJgLv5vfK0qZAfwVExIxwi7mww6nhtoFIpLnl1nbbB3TElb5dCyj7vs+ByPq
 D/Vw==
X-Gm-Message-State: APjAAAUzaSWMS0qmel2ivBLODsJ5BOy2hnYt+ck+DdpmWwkXkSMu5cOP
 ICWsnrlubRg9VfWUkMBYKzV/7vdN
X-Google-Smtp-Source: APXvYqwN1im0U/bG6ggXuVggmKCKF7ctL0YSpqZoE+5TkEO8LDPdDiHvHzFi5S+EZfDTaQMYFZjETw==
X-Received: by 2002:a6b:f00c:: with SMTP id w12mr1715986ioc.243.1558017003788; 
 Thu, 16 May 2019 07:30:03 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id i7sm1641733iop.79.2019.05.16.07.30.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 07:30:02 -0700 (PDT)
Subject: Re: [PATCH V3 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-5-josephl@nvidia.com>
 <74fad66b-a6e9-ffc9-c1c9-e88b841e9209@gmail.com>
 <648df201-eb63-6d26-3f90-02eba7624921@nvidia.com>
 <bb2ef045-7d77-02d0-79fb-06f68732c5a5@gmail.com>
 <3afd909c-5be9-370d-e21a-ec57be3b841b@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <25e11e09-fab5-4ba5-2612-6af068b21406@gmail.com>
Date: Thu, 16 May 2019 17:29:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3afd909c-5be9-370d-e21a-ec57be3b841b@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073005_469377_08BCE01B 
X-CRM114-Status: GOOD (  35.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

MTYuMDUuMjAxOSAxMDo1MiwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gT24gNS8xNS8xOSAxMToy
NSBQTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAxNS4wNS4yMDE5IDExOjQyLCBKb3NlcGgg
TG8g0L/QuNGI0LXRgjoKPj4+IE9uIDUvMTUvMTkgMTowNCBBTSwgRG1pdHJ5IE9zaXBlbmtvIHdy
b3RlOgo+Pj4+IDEwLjA1LjIwMTkgMTE6NDcsIEpvc2VwaCBMbyDQv9C40YjQtdGCOgo+Pj4+PiBU
aGlzIGlzIHRoZSBpbml0aWFsIHBhdGNoIGZvciBUZWdyYTIxMCBFTUMgY2xvY2sgZHJpdmVyLCB3
aGljaCBkb2Vzbid0Cj4+Pj4+IGluY2x1ZGUgdGhlIHN1cHBvcnQgY29kZSBhbmQgZGV0YWlsIHNl
cXVlbmNlIGZvciBjbG9jayBzY2FsaW5nIHlldC4KPj4+Pj4KPj4+Pj4gVGhlIGRyaXZlciBpcyBk
ZXNpZ25lZCB0byBzdXBwb3J0IExQRERSNCBTRFJBTS4gQmVjYXVzZSBvZiB0aGUgTFBERFI0Cj4+
Pj4+IGRldmljZXMgbmVlZCB0byBkbyBpbml0aWFsIHRpbWUgdHJhaW5pbmcgYmVmb3JlIGl0IGNh
biBiZSB1c2VkLCB0aGUKPj4+Pj4gZmlybXdhcmUgd2lsbCBoZWxwIHRvIGRvIHRoYXQgYXQgZWFy
bHkgYm9vdCBzdGFnZS4gVGhlbiwgdGhlIHRyYWluZWQKPj4+Pj4gdGFibGUgZm9yIHRoZSByYXRl
cyB3ZSBzdXBwb3J0IHdpbGwgcGFzcyB0byB0aGUga2VybmVsIHZpYSBEVC4gU28gdGhlCj4+Pj4+
IGRyaXZlciBjYW4gZ2V0IHRoZSB0cmFpbmVkIHRhYmxlIGZvciBjbG9jayBzY2FsaW5nIHN1cHBv
cnQuCj4+Pj4+Cj4+Pj4+IEZvciB0aGUgaGlnaGVyIHJhdGUgc3VwcG9ydCAoYWJvdmUgODAwTUh6
KSwgdGhlIHBlcmlvZGljIHRyYWluaW5nIGlzCj4+Pj4+IG5lZWRlZCBmb3IgdGhlIHRpbWluZyBj
b21wZW5zYXRpb24uIFNvIGJhc2ljYWxseSwgdHdvIG1ldGhvZG9sb2dpZXMKPj4+Pj4gZm9yCj4+
Pj4+IGNsb2NrIHNjYWxpbmcgYXJlIHN1cHBvcnRlZCwgb25lIGlzIGZvbGxvd2luZyB0aGUgY2xv
Y2sgY2hhbmdpbmcKPj4+Pj4gc2VxdWVuY2UgdG8gdXBkYXRlIHRoZSBFTUMgdGFibGUgdG8gRU1D
IHJlZ2lzdGVycyBhbmQgYW5vdGhlciBpcyBpZgo+Pj4+PiB0aGUKPj4+Pj4gcmF0ZSBuZWVkcyBw
ZXJpb2RpYyB0cmFpbmluZywgdGhlbiB3ZSB3aWxsIHN0YXJ0IGEgdGltZXIgdG8gZG8gdGhhdAo+
Pj4+PiBwZXJpb2RpY2FsbHkgdW50aWwgaXQgc2NhbGVzIHRvIHRoZSBsb3dlciByYXRlLgo+Pj4+
Pgo+Pj4+PiBCYXNlZCBvbiB0aGUgd29yayBvZiBQZXRlciBEZSBTY2hyaWp2ZXIgPHBkZXNjaHJp
anZlckBudmlkaWEuY29tPi4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIExvIDxq
b3NlcGhsQG52aWRpYS5jb20+Cj4+Pj4+IC0tLQo+IHNuaXAuCj4+Pj4+ICvCoMKgwqAgaWYgKCFz
ZXEtPnNldF9jbG9jaykgewo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgc2VxID0gTlVMTDsKPj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoJnBkZXYtPmRldiwgIkludmFsaWQgRU1DIHNlcXVlbmNl
IGZvciB0YWJsZSBSZXYuCj4+Pj4+ICVkXG4iLAo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBlbWMtPmVtY190YWJsZVswXS5yZXYpOwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZ290byBlbWNf
Y2xrX3JlZ2lzdGVyOwo+Pj4+Cj4+Pj4gV2h5IGRvIHlvdSB3YW50IHRvIHJlZ2lzdGVyIEVNQyBj
bG9jayBpZiBzb21ldGhpbmcgZmFpbHM/IEtNU0cgd2lsbCBiZQo+Pj4+IGZsb29kZWQgd2l0aCBl
cnJvcnMgY29taW5nIGZyb20gY2xrX3NldF9yYXRlLgo+Pj4+Cj4+Pgo+Pj4gU2VlIHBhdGNoIDcg
aW4gdGhlIHNlcmllcywgdGhlIGxlZ2FjeSBFTUMgY2xvY2sgd2lsbCBiZSByZW1vdmVkIGxhdGVy
LAo+Pj4gc28gd2UgbmVlZCB0byByZWdpc3RlciB0aGUgRU1DIGNsb2NrIHdoZXRoZXIgdGhlIHRh
YmxlIGlzIHJlYWR5IG9yCj4+PiBub3Q+IEluIHRoYXQgY2FzZSwgSSBtZWFuIGlmIHRoZSB0YWJs
ZSBpcyBub3QgYXZhaWxhYmxlLCBpdCB3aWxsIHN0aWxsCj4+PiByZWdpc3RlciBFTUMgY2xvY2sg
YXQgdGhlIHJhdGUgdGhhdCBib290IGxvYWRlciBjb25maWd1cmVkIGJlZm9yZSBrZXJuZWwKPj4+
IGJvb3RpbmcuIFNvIHRoZSBNQyBjbG9jayBjYW4gc3RpbGwgd29yayBhcyBleHBlY3RlZCwgd2hp
Y2ggaXMgdW5kZXIgRU1DCj4+PiBjbG9jay4KPj4+Cj4+PiBBbmQgSSBkaWQgdGVzdCB0aGF0LCBj
b3VsZG4ndCBvYnNlcnZlIGFueSBLTVNHIGluIHRoYXQgY2FzZS4KPj4KPj4gTG9va3MgbGlrZSBp
dCBraW5kYSBzaG91bGQgd29yayBpbiB0aGUgZW5kLgo+Pgo+PiBBbHRob3VnaCBpdCdzIG5vdCBn
b29kIHRoYXQgbm93IE1DIGRyaXZlciByZWxpZXMgb24gdGhlIEVNQyBkcml2ZXIKPj4gcHJlc2Vu
Y2UuIE1heWJlIGl0J3Mgbm90IHRoZSBiZXN0IHZhcmlhbnQgd2l0aCBtb3ZpbmcgdGhlIGNsb2Nr
IHN0dWZmCj4+IGludG8gdGhlIEVNQyBkcml2ZXI/Cj4+Cj4+IFdoYXQgYWJvdXQgdGhlIGJhY2t3
YXJkcyBjb21wYXRpYmlsaXR5IGZvciBEVCB0aGF0IGRvZXNuJ3QgaGF2ZSB0aGUgRU1DCj4+IG5v
ZGU/Cj4+Cj4+IFdoYXQgaWYgRU1DIGRyaXZlciBpcyBkaXNhYmxlZCBpbiB0aGUga2VybmVsJ3Mg
Y29uZmlnPwo+IAo+IFRoZSB0aHJlZSBxdWVzdGlvbnMgYWJvdmUgYXJlIGFjdHVhbGx5IG9uZSBw
cm9ibGVtIGhlcmUuIEl0J3Mgbm90IGFib3V0Cj4gTUMgY2xvY2ssIGJlY2F1c2UgaXQncyBzdGls
bCBhdmFpbGFibGUgYWZ0ZXIgdGhlc2UgY2hhbmdlcy4gQW5kIE1DCj4gZHJpdmVyIGNhbiBzdGls
bCBnZXQgaXQgaW4gdGhlIHByb2JlIGZ1bmN0aW9uIGV2ZW4gdGhlIEVNQyBkcml2ZXIgaXNuJ3QK
PiB0aGVyZS4KCk5vLCB0aGVzZSBhcmUgc2VwYXJhdGUgcHJvYmxlbXMuIE1DIGRyaXZlciBxdWVy
aWVzIHRoZSBjbG9jayByYXRlIGR1cmluZwp0aGUgcHJvYmUgdG8gY29uZmlndXJlIG1lbW9yeSBh
cmJpdHJhdGlvbi4gSW4geW91ciBjYXNlIHRoZSBjbG9jayByYXRlCmlzIGFsd2F5cyB6ZXJvIGZv
ciBNQy4KCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB3aXRob3V0IEVNQyBkcml2ZXIgYWZ0ZXIgdGhl
c2UgY2hhbmdlcy4gVGhlIFBMTE0KPiB3aWxsIGhhdmUgbm8gY2xpZW50IHVuZGVyIGl0LCB3aGlj
aCB3aWxsIGNhdXNlIHRoZSBQTExNIHRvIGJlIGRpc2FibGVkCj4gaW4gdGhlIGxhdGUgaW5pdCBj
YWxsIG9mICJjbGtfZGlzYWJsZV91bnVzZWQiLiBTbyB0aGUgc3lzdGVtIHdpbGwgYmUgc3R1Y2su
CgpUaGlzIGFuZCB0aGUgYWJvdmUgYXJlIHZlcnkgY29tcGVsbGluZyByZWFzb25zIHRvICpOT1Qq
IHJlZ2lzdGVyIHRoZQpjbG9jayBmcm9tIHRoZSBFTUMgZHJpdmVyLiBZb3Ugc2hhbGwgbW92ZSBh
bGwgdGhlIGNsb2NrIHN0dWZmIGludG8gdGhlCmNsb2NrIGRyaXZlci4gUGxlYXNlIHNlZSBUMTI0
IEVNQyBkcml2ZXIgYW5kIHdoYXQgaXMgZG9uZSBmb3IgdGhlCnVwY29taW5nIFQzMCBFTUMgZHJp
dmVyIFsxXSBmb3IgdGhlIGV4YW1wbGUsIGJvcnJvdyBwYXJ0cyB0aGF0IGZpdCBiZXN0CmZvciBU
MjEwLgoKWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9saW51eC10ZWdy
YS9saXN0Lz9zZXJpZXM9MTAyNjg4Cgo+Pgo+PiBBbmQgbGFzdGx5Li4gd2hhdCBzdG9wcyB0aGUg
TUMgZHJpdmVyIHRvIHByb2JlIGJlZm9yZSB0aGUgRU1DPyBMb29rcwo+PiBsaWtlIE1DIGRyaXZl
ciBpcyBhbHJlYWR5IGluIHRyb3VibGUgYmVjYXVzZSBpdCdzIG9uIGFyY2ggbGV2ZWwgYW5kIHRo
ZQo+PiBFTUMgaXMgb24gc3Vic3lzLCBoZW5jZSBNQyB3aWxsIGdldCB0aGUgb3JwaGFuZWQgY2xv
Y2sgYW5kIHdvbid0Cj4+IGluaXRpYWxpemUgaGFyZHdhcmUgcHJvcGVybHkgb24gcHJvYmUuCj4g
Cj4gQWZ0ZXIgdGhpcyBtb3ZpbmcsIHRoZSBFTUMgZHJpdmVyIHdpbGwgYmUgYWx3YXlzIGVuYWJs
ZWQgYnkgZGVmYXVsdC4gQW5kCj4gdGhlIERUIGNoYW5nZSBpcyBuZWNlc3NhcnkgYXMgd2VsbC4g
VGhlIGJsb2Igb2YgRU1DIHRhYmxlIGlzIG5vdAo+IG5lY2Vzc2FyeSwgYmVjYXVzZSBpdCBuZWVk
cyBhIGZpcm13YXJlIHVwZGF0ZS4gV2Ugd2lsbCB1cGRhdGUgdGhlCj4gZmlybXdhcmUgYWNjb3Jk
aW5nbHkgYWZ0ZXIgdGhlIHJldmlldyBzZXR0bGVkIGFuZCByZWxlYXNlIGl0IGxhdGVyLgo+IAo+
IEluIGNhc2Ugb2Ygbm8gRU1DIHRhYmxlIGJsb2IsIHRoZSBkcml2ZXIgY2FuIHN0aWxsIGJlIHJl
Z2lzdGVyZWQsIGJ1dCBubwo+IHNjYWxpbmcgZnVuY3Rpb24gcHJvdmlkZWQuCgpBbnlvbmUgY291
bGQgY2hhbmdlIHRoZSBkZWZhdWx0IGtlcm5lbCBjb25maWd1cmF0aW9uLiBLZXJuZWwgc2hhbGwg
Ym9vdAphbmQgd29yayBmaW5lIHdpdGggb2xkZXIgZGV2aWNlLXRyZWUncyBhbmQgYW55IGN1c3Rv
bSBjb25maWcgYWZ0ZXIKdXBkYXRlLiBZb3Ugc2hvdWxkIG5vdCBicmVhayBzb21lb25lcyBlc3Rh
Ymxpc2hlZCBzZXR1cCB3aXRob3V0IGEgZ29vZApyZWFzb24gYW5kIHlvdSBkb24ndCBoYXZlIG9u
ZSBoZXJlLgoKPj4KPj4gQlRXLCBob3cgYXJlIHlvdSB0ZXN0aW5nIHRoZSBFTUMgZHJpdmVyPyBJ
cyB0aGVyZSBUMjEwIGRldmZyZXEgcGF0Y2hlcwo+PiBpbiB3b3Jrcz8gT3Igd2hhdCdzIHRoZSB1
c2VyIG9mIHRoZSBFTUMgb24gVDIxMD8KPj4KPiAKPiAxLiBDdXJyZW50bHksIHZpYSBkZWJ1Z2Zz
Lgo+IDIuIE5vLCB3ZSBwcmVmZXIgdG8gdXNlIEludGVyY29ubmVjdCBmcmFtZXdvcmsgZm9yIHRo
YXQuIFRoZSBldmFsdWF0aW9uCj4gaXMgb25nb2luZy4KPiAzLiBXaXRoIEludGVyY29ubmVjdCwg
dGhlIGRldmljZXMgb3IgcGVyaXBoZXJhbHMgY2FuIHJlZ2lzdGVyIG9uIGl0IHRvCj4gcmVxdWVz
dCB0aGUgQlcuIFNvIHdlIGNhbiBmaW5lLXR1bmUgdGhlIEJXIHJlcXVpcmVtZW50cyB3aXRoIHRo
ZSBsYXRlbmN5Cj4gYWxsb3dhbmNlIHJlZ2lzdGVycyBhbHRvZ2V0aGVyIHRvIGdldCBiZXR0ZXIg
ZWZmaWNpZW5jeS4KCkRldmZyZXEgaXMgdGhlIGRyaXZlciBmb3IgdGhlIEFDVE1PTiBoYXJkd2Fy
ZSB1bml0LiBUaGlzIHVuaXQgdGVsbHMgdGhlCmRyaXZlciB3aGVuIG1lbW9yeSBjbG9jayByYXRl
IG5lZWQgdG8gZ28gaGlnaGVyIG9yIGxvd2VyLCBkZXBlbmRpbmcgb24Kb3ZlcmFsbCBtZW1vcnkg
Y2xpZW50cyBhY3Rpdml0eS4gQ3VycmVudGx5IHRoZSB0ZWdyYS1kZXZmcmVxIGRyaXZlcgpzdXBw
b3J0cyBUMTI0IG9ubHksIGl0IHdpbGwgc3VwcG9ydCBUMzAgc3RhcnRpbmcgd2l0aCB2NS4zLiBB
RkFJSywgaXQKc2hvdWxkbid0IGJlIGRpZmZpY3VsdCB0byBhZGQgc3VwcG9ydCBmb3IgVDIxMCBh
cyB3ZWxsLgoKSUlSQywgdGhlIG5ldyBJbnRlcmNvbm5lY3QgQVBJIGlzIGFub3RoZXIgYXdheSBv
ZiBjb252ZXlpbmcgZGlmZmVyZW50CnJlcXVpcmVtZW50cyBiZXR3ZWVuIGRldmljZXMuIEFsbCBU
ZWdyYSdzIGhhdmUga25vYnMgZm9yIG1lbW9yeQpjb25maWd1cmF0aW9uIHR1bmluZywgYnV0IHRo
ZXJlIGlzIG5vIHJlYWwgbmVlZCB0byBjaGFuZ2UgdGhlIGRlZmF1bHQKZ29vZC1lbm91Z2ggY29u
ZmlndXJhdGlvbiBmb3IgdGhlIHRpbWUgYmVpbmcgaW4gdXBzdHJlYW0uCgpBRkFJSywgdGhlcmUg
aXMgb25seSBvbmUgbWVtb3J5IGNsaWVudCB0aGF0IGlzIHJlYWxseSB2ZXJ5IHNlbnNpdGl2ZSB0
bwphdmFpbGFibGUgbWVtb3J5IGJhbmR3aWR0aCAtIERpc3BsYXkgQ29udHJvbGxlci4gVGhlIFBN
IFFvUyBtZW1vcnkKYmFuZHdpZHRoIEFQSSBpcyBtb3JlIHRoYW4gZW5vdWdoIGZvciB0aGUgZWFz
eSBzdGFydCBhbmQgaXQncyBhbGwKaW50ZXJuYWwgdG8ga2VybmVsLCBoZW5jZSBpdCB3aWxsIGJl
IHBvc3NpYmxlIHRvIHJlcGxhY2UgdGhlIFBNIEFQSSB3aXRoCnNvbWV0aGluZyBtb3JlIGFkdmFu
Y2VkIGxhdGVyIG9uIGJ5IGFzLW5lZWRlZCBiYXNpcy4gVGhhdCdzIHdoYXQgSSdtCmN1cnJlbnRs
eSB0YXJnZXRpbmcgZm9yIFQyMC1UMTI0LiBUaGUgUE0gUW9TIEFQSSBjb3VsZCBjb2V4aXN0IHdp
dGggdGhlCkludGVyY29ubmVjdCBBUEkgKG9yIHdoYXRldmVyIGVsc2UpIHdpdGhvdXQgYW55IHRy
b3VibGVzLCBzbyBpdCB3b24ndCBiZQphIHByb2JsZW0gaWYgeW91J2xsIGRlY2lkZSB0byBwdWxs
IGludG8gb3RoZXIgZGlyZWN0aW9uIGZvciBUMjEwLgoKQUZBSUssIHRoZSBsYXRlbmN5IGFsbG93
YW5jZSBjb25maWcgc2hvdWxkIGJlIHNpbWlsYXIgb24gYWxsIFRlZ3JhJ3MKc3RhcnRpbmcgZnJv
bSBUMzAuIFdpbGwgYmUgYXdlc29tZSBpZiB5b3UnbGwgZG8gYWxsIHRoZSBoYXJkIGpvYiBvZgpi
cmluZ2luZyB1cCB0aGUgZnJlc2ggbmV3IEFQSSBmb3IgVDIxMCwgaXQgYWx3YXlzIGVhc2llciB0
byBmb2xsb3cgYnkKZXhhbXBsZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
