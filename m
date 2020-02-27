Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173F417221D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:18:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qqi1Inn/i2fxNYHoQ9xPyr8ekxuBosdl+ahNPgRtaOw=; b=n4EKv79GOM2m0p
	3XbWF/nr9A8bVHc7OCIQSqoernvcVJrsyMWIWzbsz7Bb6rNeGG5JYY8Re8X8LFGjJkRuiZEQ8MfjS
	qpBDjXTN+jKNSqWX9RpNGsty7+reVMagQevelZuGN2WKHtj0g7DPxboEGWO4oa7zpz4G3iPKajHcT
	yZIPflBWFMVwI+SzaktIPJpzWONJuhEQ1iVfwEo8u7xJ4YjQKkDAIDl1Q0UxF/HEIB7H8fgSQHbtE
	Ho51NMHfyjGYE313aCyWouTpqbjHa8sUwMYTYxxQfZMeIOaD3c0QkdSkcb8sbk/BAX9hHWWs0/nb4
	ZZPIgOC9Dii7gF450SaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Kvk-0003uT-Vi; Thu, 27 Feb 2020 15:18:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KvU-0003ps-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:18:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id o15so3859290ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=M4uLZ+YZgo9Q68Dx5CiKtqfNH6WlHnEQZUoVCBn8Lbc=;
 b=Xds/R4BCpC6BW8dtHzTtZGQOCQGcOhXw+x+LzzwA/VJAA/Fpq6fXrabWA4Io39mSbY
 I8EXdBzJq4OithOB0SjRvPqGZY2qCNMJmyjZCFXcScHogSkDq2kXTr1Ju7TBLKuMxq4V
 9pp5l9LKE/3UFPBLmsvj2kpal5qDKajtLLbZ8FslteeR2jO5qUF6I89+LlEOtPaX7sYE
 3DLUdCyCHHep/Kc+EF8/k0wKJoJKYh/kEX57/LQH3kLFodc1ei1s7eu7LWeEP1E1ZQha
 NoG7OvkqtH9bukiPObP041+mnsPO2ZK2eoIa6RVUkxs/hpBcuKm8HSQ0AntWsOiRX9jc
 2ZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M4uLZ+YZgo9Q68Dx5CiKtqfNH6WlHnEQZUoVCBn8Lbc=;
 b=pTy3S/8zxIZ8CP97Frkjvvr4lY8zq+7fV2Xdb1hkCXPgkvM/5AT/a7IQm/vxKyyGNd
 R8X0MwgrWnduhf6Mts+CYE4lnQkBoMpSzmZom9PmAffkj1JWONA372g4DGA8qAR/xgQV
 cXliIAXXUYpCoPppUpgM5E7Op8tV5AdXCg0MJI4k/Edul+SAiekvkeMopYOshTMlpen7
 zN6R7zw2X7imqThzjqah47syOVi/gUWNY+2squY6If9rxXn4iub2TvZNntHfuxKR8FwN
 /qUAVVvg1ZX3tv7bkNM+AAV1IRsheD+fbfemU/swdAgkfIncRoL3oLGOYHa6h0jpfdlh
 mG8g==
X-Gm-Message-State: ANhLgQ3tyTAbyaraXC9D7BVXv34EMJSSbYOsXp00a4gygNf5/dEkDkA2
 qHqUeicq1yvzPIWQ5ucEFQNC1TLj
X-Google-Smtp-Source: ADFU+vvWGmb7VbXM2thy02s+ZlBJEquIVTkcMVYWcqrjO/570bRTlqOJc56Hn86Q1ksLj3e7mv01pQ==
X-Received: by 2002:a05:651c:414:: with SMTP id
 20mr3024627lja.165.1582816689249; 
 Thu, 27 Feb 2020 07:18:09 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id t1sm3409703lji.98.2020.02.27.07.18.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 07:18:06 -0800 (PST)
Subject: Re: [PATCH V4 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Thierry Reding <thierry.reding@gmail.com>, Joseph Lo <josephl@nvidia.com>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-5-josephl@nvidia.com>
 <403181d4-100b-679e-b1d8-c052c6d1f3ac@gmail.com>
 <2f9722b4-df92-546b-9659-3b02768bbe41@nvidia.com>
 <20200226165746.GA818759@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <922e3faf-dd51-e159-4dc4-d427af58dc8f@gmail.com>
Date: Thu, 27 Feb 2020 18:18:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200226165746.GA818759@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071812_516046_E17E100A 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjYuMDIuMjAyMCAxOTo1NywgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBUaHUsIE1h
eSAzMCwgMjAxOSBhdCAxMDo0NTowMUFNICswODAwLCBKb3NlcGggTG8gd3JvdGU6Cj4+IE9uIDUv
MjkvMTkgOToyNiBQTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+Pj4gMjkuMDUuMjAxOSAxMToy
MSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4+Pj4gVGhpcyBpcyB0aGUgaW5pdGlhbCBwYXRjaCBm
b3IgVGVncmEyMTAgRU1DIGNsb2NrIGRyaXZlciwgd2hpY2ggZG9lc24ndAo+Pj4+IGluY2x1ZGUg
dGhlIHN1cHBvcnQgY29kZSBhbmQgZGV0YWlsIHNlcXVlbmNlIGZvciBjbG9jayBzY2FsaW5nIHll
dC4KPj4+Pgo+Pj4+IFRoZSBkcml2ZXIgaXMgZGVzaWduZWQgdG8gc3VwcG9ydCBMUEREUjQgU0RS
QU0uIEJlY2F1c2Ugb2YgdGhlIExQRERSNAo+Pj4+IGRldmljZXMgbmVlZCB0byBkbyBpbml0aWFs
IHRpbWUgdHJhaW5pbmcgYmVmb3JlIGl0IGNhbiBiZSB1c2VkLCB0aGUKPj4+PiBmaXJtd2FyZSB3
aWxsIGhlbHAgdG8gZG8gdGhhdCBhdCBlYXJseSBib290IHN0YWdlLiBUaGVuLCB0aGUgdHJhaW5l
ZAo+Pj4+IHRhYmxlIG9mIHRoZSByYXRlcyB3ZSBzdXBwb3J0IHdpbGwgcGFzcyB0byB0aGUga2Vy
bmVsIHZpYSBEVC4gU28gdGhlCj4+Pj4gZHJpdmVyIGNhbiBnZXQgdGhlIHRyYWluZWQgdGFibGUg
Zm9yIGNsb2NrIHNjYWxpbmcgc3VwcG9ydC4KPj4+Pgo+Pj4+IEZvciB0aGUgaGlnaGVyIHJhdGUg
c3VwcG9ydCAoYWJvdmUgODAwTUh6KSwgdGhlIHBlcmlvZGljIHRyYWluaW5nIGlzCj4+Pj4gbmVl
ZGVkIGZvciB0aGUgdGltaW5nIGNvbXBlbnNhdGlvbi4gU28gYmFzaWNhbGx5LCB0d28gbWV0aG9k
b2xvZ2llcyBmb3IKPj4+PiBjbG9jayBzY2FsaW5nIGFyZSBzdXBwb3J0ZWQsIG9uZSBpcyBmb2xs
b3dpbmcgdGhlIGNsb2NrIGNoYW5naW5nCj4+Pj4gc2VxdWVuY2UgdG8gdXBkYXRlIHRoZSBFTUMg
dGFibGUgdG8gRU1DIHJlZ2lzdGVycyBhbmQgYW5vdGhlciBpcyBpZiB0aGUKPj4+PiByYXRlIG5l
ZWRzIHBlcmlvZGljIHRyYWluaW5nLCB0aGVuIHdlIHdpbGwgc3RhcnQgYSB0aW1lciB0byBkbyB0
aGF0Cj4+Pj4gcGVyaW9kaWNhbGx5IHVudGlsIGl0IHNjYWxlcyB0byB0aGUgbG93ZXIgcmF0ZS4K
Pj4+Pgo+Pj4+IEJhc2VkIG9uIHRoZSB3b3JrIG9mIFBldGVyIERlIFNjaHJpanZlciA8cGRlc2No
cmlqdmVyQG52aWRpYS5jb20+Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIExvIDxq
b3NlcGhsQG52aWRpYS5jb20+Cj4+Pj4gLS0tCj4+Pj4gdjQ6Cj4+Pj4gLSByZW1vdmUgdGhlIHN0
YXRpc3RpYyBkYXRhIGluIGRlYnVnZnMKPj4+PiAtIGFkZCB0ZWdyYTIxMF9jbGtfcmVnaXN0ZXJf
ZW1jIEFQSSB0byBtYWtlIGl0IGNvbXBhdGlibGUgd2l0aCB0aGUgY2FzZQo+Pj4+ICAgIGlmIHRo
ZSBrZXJuZWwgc3RpbGwgdXNlcyB0aGUgb2xkZXIgRFRCIHdoaWNoIGRvZXNuJ3QgaGF2ZSBFTUMg
bm9kZS4KPj4+PiAgICBBbmQgdGhlIE1DIGFuZCBFTUMgY2xvY2sgY2FuIHN0aWxsIGJlIHJlZ2lz
dGVyZWQgc3VjY2Vzc2Z1bGx5Lgo+Pj4+IHYzOgo+Pj4+IC0gYWRkcmVzcyBhbG1vc3QgYWxsIHRo
ZSBjb21tZW50cyBmcm9tIHRoZSBwcmV2aW91cyB2ZXJzaW9uCj4+Pj4gLSByZW1vdmUgdGhlIERU
IHBhcnNlciBvZiBFTUMgdGFibGUKPj4+PiAtIFRoZSBFTUMgdGFibGUgaXMgcGFzc2luZyBhcyBh
IGJpbmFyeSBibG9iIG5vdy4KPj4+PiAtLS0KPj4+PiAgIGRyaXZlcnMvbWVtb3J5L3RlZ3JhL0tj
b25maWcgICAgICAgIHwgIDEwICsKPj4+PiAgIGRyaXZlcnMvbWVtb3J5L3RlZ3JhL01ha2VmaWxl
ICAgICAgIHwgICAxICsKPj4+PiAgIGRyaXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVtYy5j
IHwgNjcxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+PiAgIGRyaXZlcnMvbWVtb3J5
L3RlZ3JhL3RlZ3JhMjEwLWVtYy5oIHwgMTU2ICsrKysrKysKPj4+PiAgIGluY2x1ZGUvc29jL3Rl
Z3JhL2VtYy5oICAgICAgICAgICAgIHwgICAyICsKPj4+PiAgIDUgZmlsZXMgY2hhbmdlZCwgODQw
IGluc2VydGlvbnMoKykKPj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21lbW9yeS90
ZWdyYS90ZWdyYTIxMC1lbWMuYwo+Pj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVt
b3J5L3RlZ3JhL3RlZ3JhMjEwLWVtYy5oCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZW1vcnkvdGVncmEvS2NvbmZpZyBiL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL0tjb25maWcKPj4+PiBp
bmRleCA0NjgwMTI0ZGRjYWIuLjlkMDUxYmNkYmVlMyAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJz
L21lbW9yeS90ZWdyYS9LY29uZmlnCj4+Pj4gKysrIGIvZHJpdmVycy9tZW1vcnkvdGVncmEvS2Nv
bmZpZwo+Pj4+IEBAIC0yNiwzICsyNiwxMyBAQCBjb25maWcgVEVHUkExMjRfRU1DCj4+Pj4gICAJ
ICBUZWdyYTEyNCBjaGlwcy4gVGhlIEVNQyBjb250cm9scyB0aGUgZXh0ZXJuYWwgRFJBTSBvbiB0
aGUgYm9hcmQuCj4+Pj4gICAJICBUaGlzIGRyaXZlciBpcyByZXF1aXJlZCB0byBjaGFuZ2UgbWVt
b3J5IHRpbWluZ3MgLyBjbG9jayByYXRlIGZvcgo+Pj4+ICAgCSAgZXh0ZXJuYWwgbWVtb3J5Lgo+
Pj4+ICsKPj4+PiArY29uZmlnIFRFR1JBMjEwX0VNQwo+Pj4+ICsJYm9vbCAiTlZJRElBIFRlZ3Jh
MjEwIEV4dGVybmFsIE1lbW9yeSBDb250cm9sbGVyIGRyaXZlciIKPj4+PiArCWRlZmF1bHQgeQo+
Pj4KPj4+IFRoaXMgaXMgbm90IGVub3VnaCBzaW5jZSB5b3UncmUgbGVhdmluZyBwb3NzaWJpbGl0
eSB0byBkaXNhYmxlCj4+PiBjb21waWxhdGlvbiBvZiB0aGUgZHJpdmVyLCBidXQgdGhlIGNvbXBp
bGF0aW9uIHdpbGwgZmFpbCBiZWNhdXNlIG9mIHRoZQo+Pj4gdW5yZXNvbHZlZCBzeW1ib2wgKHRl
Z3JhMjEwX2Nsa19yZWdpc3Rlcl9lbWMpLgo+Pj4KPj4+PiArCWRlcGVuZHMgb24gVEVHUkFfTUMg
JiYgQVJDSF9URUdSQV8yMTBfU09DCj4+Pj4gKwloZWxwCj4+Pj4gKwkgIFRoaXMgZHJpdmVyIGlz
IGZvciB0aGUgRXh0ZXJuYWwgTWVtb3J5IENvbnRyb2xsZXIgKEVNQykgZm91bmQgb24KPj4+PiAr
CSAgVGVncmEyMTAgY2hpcHMuIFRoZSBFTUMgY29udHJvbHMgdGhlIGV4dGVybmFsIERSQU0gb24g
dGhlIGJvYXJkLgo+Pj4+ICsJICBUaGlzIGRyaXZlciBpcyByZXF1aXJlZCB0byBjaGFuZ2UgbWVt
b3J5IHRpbWluZ3MgLyBjbG9jayByYXRlIGZvcgo+Pj4+ICsJICBleHRlcm5hbCBtZW1vcnkuCj4+
Pgo+Pj4gRWl0aGVyIFRFR1JBMjEwX0VNQyBLY29uZmlnIG9wdGlvbiBzaGFsbCBiZSBhbHdheXMg
Zm9yY2Utc2VsZWN0ZWQgZm9yCj4+PiBUMjEwIG9yIHlvdSBzaG91bGQgbW92ZSBhbGwgdGhlIGNs
ay1yZWxhdGVkIGNvZGUgaW50byBkcml2ZXJzL2Nsay90ZWdyYS8uCj4+Pgo+Pj4gQ291bGQgeW91
IHBsZWFzZSBnaXZlIGEgcmF0aW9uYWxlIGZvciBoYXZpbmcgRU1DIGNsb2NrIGNvZGUgd2l0aGlu
IHRoZQo+Pj4gRU1DIGRyaXZlcj8KPj4KPj4gSSBkaWRuJ3QgaGF2ZSBhIHNwZWNpZmljIHJlYXNv
biBmb3IgdGhhdCBpbml0aWFsbHksIGp1c3Qgd2FudGVkIHRoZSBjbG9jawo+PiBjb2RlIGFuZCBF
TUMgZHJpdmVyIHRvZ2V0aGVyIGZvciBlYXNpZXIgbWFpbnRlbmFuY2UuCj4+Cj4+IEJ1dCBjb25z
aWRlcmluZyB0aGUgZml4IGluIHY0LCB0aGF0IG1ha2VzIGl0IGJhY2t3YXJkIGNvbXBhdGlibGUg
d2l0aCB0aGUKPj4gY2FzZSBpZiB0aGUga2VybmVsIHVzZXMgdGhlIG9sZGVyIERUIHdpdGhvdXQg
RU1DIG5vZGUsIEkgdGhpbmsgaXQncyBiZXR0ZXIKPj4gdG8gbW92ZSB0aGUgY2xvY2sgY29kZSBp
bnRvIHRoZSBjbGsgZm9sZGVyIG5vdy4KPiAKPiBJIGxvb2tlZCBpbnRvIHRoaXMgYSBiaXQgYW5k
IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBhY3R1YWxseSB3b3J0aCBpdC4KPiBUaGUgcHJvYmxlbSBp
cyB0aGF0LCBhcyBvcHBvc2VkIHRvIFRlZ3JhMTI0IGFuZCBlYXJsaWVyLCB0aGUgc2VxdWVuY2UK
PiBmb3IgY2hhbmdpbmcgdGhlIEVNQyBmcmVxdWVuY3kgaXMgbXVjaCBtb3JlIGVudGFuZ2xlZC4g
VGhlIGJ1bGsgb2YgdGhlCj4gcHJvZ3JhbW1pbmcgd2lsbCBiZSBvbiB0aGUgRU1DIHNpZGUsIHdp
dGggdGhlIGNvZGUgb2NjYXNpb25hbGx5IGNhbGxpbmcKPiBpbnRvIENBUiBjb2RlIHRvIHNldCB0
aGUgcGFyZW50IGNsb2NrIGFuZCBzb21lIG90aGVyIGZsYWdzLgo+IAo+IFNvIHRoZXJlJ3MgZ29p
bmcgdG8gYmUgc29tZSBpbnRlcmRlcGVuZGVuY2llcyByZWdhcmRsZXNzIG9mIHdoZXJlIHRoZQo+
IGNsb2NrIGNvZGUgYWN0dWFsbHkgbGl2ZXMuIEkgY2FuIHRyeSB0byBzcGxpdCB0aGlzIGFwYXJ0
LCBidXQgSSBkb24ndAo+IGhhdmUgdmVyeSBoaWdoIGhvcGVzIHRoYXQgdGhlIGVuZCByZXN1bHQg
d2lsbCBiZSBhbnkgY2xlYW5lciB0aGFuIHRoZQo+IHZlcnNpb24gaGVyZS4KCkknbSB2YWd1ZWx5
IHJlY2FsbGluZyB0aGF0IHRoZXJlIHdhcyBhbm90aGVyIHJlYXNvbiB0aGFuIGp1c3QgdG8gIm1h
a2UKdGhpbmdzIGNsZWFuZXIiLi4KCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gv
MTA5MzgzODkvIzIyNjQxMDUzCgpTZWNvbmRseSwgaWYgeW91J3JlIGdvaW5nIHRvIHVzZSB0aGUg
Q0NGIEFQSSBmb3IgdGhlIGNsb2NrIGNoYW5nZXMsIHRoZW4KSSdtIG5vdCBzdXJlIHRoYXQgaGF2
aW5nIGNvdXBsZSBjdXN0b20gY2xvY2stQVBJIGZ1bmN0aW9ucyBzb3VuZHMgdG9vIGJhZC4KCkxh
c3RseSwgaW4gcmVnYXJkcyB0byB0aGUgY2xlYW51cC4uIGF0IG1pbmltdW0geW91IHNob3VsZCBz
dHJpcCBvdXQgYWxsCnRoZSB1bnVzZWQgcGFydHMgZnJvbSB0aGlzIGNvZGUsIG1ha2UgYSBnZW5l
cmljIGNsZWFudXAgdG8gbWFrZSBpdCBhbGwKbG9vayBiZXR0ZXIsIGFkZHJlc3MgcHJldmlvdXMg
Y29tbWVudHMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
