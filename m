Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3984C83B1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 23:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMo6oQFKvpAf0H1b/l8b4T3bPkpiL3i6CcDdZFKARn8=; b=fO/HNZkVwes44D
	pjc1cPkKmN8PpwKU9A3bSiToEMVZG3pEXHHZPQts7U1Lfw8CIxmX+UQ8aptvR/Oai1Qrzk3DzLEb7
	LNZR62CjO2wVjaQhg7xmmByeGJ8juFjL0SwfzYfAxJEZTqTix/87oARnnykmVyb//soNdNk4ht9l8
	0Z0n+jR8WXOHDXXjFnCgOaj3TdeL4a19ZbVIE6ew8cwVEX9VE/uOJlsb5W8YWtETaKML2d9Qquci7
	Sf5ZzQ5mw+/f54CHbyX3X/WgODPdXcCsvYqE35PODZAhmPvRu9L6W6fM2cUOqF8TBQXemFxZ0xjAs
	vU2sT3cCYu3aluM/h0gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv72W-0002G9-5P; Tue, 06 Aug 2019 21:30:40 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv72G-0002Ff-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 21:30:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x76LUIHF012505;
 Tue, 6 Aug 2019 16:30:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565127018;
 bh=WdeZC33FQzUWVkojwaOQI3NxAt+YMap5Tl9hn+mPGaA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kOAGLiHHmutdic+kFgKihOFdUxHKB7ihp+q0M1HR8vSrqzCpkJvEw4p6uF7yWq+JO
 ff4xkY1QqHsvraG3Urzv98BF+dmBOffCU3lytoIrcPlUzD25N9ZHsjb4blGVvoS3bd
 wunaAkYh25prIMpCyfE1RcAigwMMzRfE6zg9awew=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x76LUIEn119700
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 6 Aug 2019 16:30:18 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 6 Aug
 2019 16:30:18 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 6 Aug 2019 16:30:18 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x76LUH4a105393;
 Tue, 6 Aug 2019 16:30:18 -0500
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
 <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
 <20190806182128.GD26807@tuxbook-pro>
From: Suman Anna <s-anna@ti.com>
Message-ID: <1aea3d28-29dc-f9de-3b86-cf777e0d5caa@ti.com>
Date: Tue, 6 Aug 2019 16:30:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190806182128.GD26807@tuxbook-pro>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_143026_986548_188A94A0 
X-CRM114-Status: GOOD (  29.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC82LzE5IDE6MjEgUE0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPiBPbiBUdWUgMDYgQXVn
IDEwOjM4IFBEVCAyMDE5LCBTdW1hbiBBbm5hIHdyb3RlOgo+IAo+PiBIaSBGYWJpZW4sCj4+Cj4+
IE9uIDgvNS8xOSAxMjo0NiBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+Pj4gT24gTW9uIDA1
IEF1ZyAwMTo0OCBQRFQgMjAxOSwgRmFiaWVuIERFU1NFTk5FIHdyb3RlOgo+Pj4KPj4+Pgo+Pj4+
IE9uIDAxLzA4LzIwMTkgOToxNCBQTSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+Pj4+PiBPbiBX
ZWQgMTMgTWFyIDA4OjUwIFBEVCAyMDE5LCBGYWJpZW4gRGVzc2VubmUgd3JvdGU6Cj4gWy4uXQo+
Pj4+IEIvIFRoaXMgd291bGQgaW50cm9kdWNlIHNvbWUgaW5jb25zaXN0ZW5jeSBiZXR3ZWVuIHRo
ZSB0d28gJ3JlcXVlc3QnIEFQSQo+Pj4+IHdoaWNoIGFyZSBod3NwaW5fbG9ja19yZXF1ZXN0KCkg
YW5kIGh3c3Bpbl9sb2NrX3JlcXVlc3Rfc3BlY2lmaWMoKS4KPj4+PiBod3NwaW5fbG9ja19yZXF1
ZXN0KCkgbG9va3MgZm9yIGFuIHVudXNlZCBsb2NrLCBzbyByZXF1ZXN0cyBmb3IgYW4gZXhjbHVz
aXZlCj4+Pj4gdXNhZ2UuIE9uIHRoZSBvdGhlciBzaWRlLCByZXF1ZXN0X3NwZWNpZmljKCkgd291
bGQgcmVxdWVzdCBzaGFyZWQgbG9ja3MuCj4+Pj4gV29yc3QgdGhlIGZvbGxvd2luZyBzZXF1ZW5j
ZSBjYW4gdHJhbnNmb3JtIGFuIGV4Y2x1c2l2ZSB1c2FnZSBpbnRvIGEgc2hhcmVkCj4+Pj4KPj4+
Cj4+PiBUaGVyZSBpcyBhbHJlYWR5IGFuIGluY29uc2lzdGVuY3kgaW4gYmV0d2VlbiB0aGVzZTsg
YXMgd2l0aCBhYm92ZSBhbnkKPj4+IHN5c3RlbSB0aGF0IHVzZXMgYm90aCByZXF1ZXN0KCkgYW5k
IHJlcXVlc3Rfc3BlY2lmaWMoKSB3aWxsIGJlIHN1ZmZlcmluZwo+Pj4gZnJvbSBpbnRlcm1pdHRl
bnQgZmFpbHVyZXMgZHVlIHRvIHByb2JlIG9yZGVyaW5nLgo+Pj4KPj4+PiBvbmU6Cj4+Pj4gIMKg
IC1od3NwaW5fbG9ja19yZXF1ZXN0KCkgLT4gcmV0dXJucyBJZCMwIChleGNsdXNpdmUpCj4+Pj4g
IMKgIC1od3NwaW5fbG9ja19yZXF1ZXN0KCkgLT4gcmV0dXJucyBJZCMxIChleGNsdXNpdmUpCj4+
Pj4gIMKgIC1od3NwaW5fbG9ja19yZXF1ZXN0X3NwZWNpZmljKDApIC0+IHJldHVybnMgSWQjMCBh
bmQgbWFrZXMgSWQjMCBzaGFyZWQKPj4+PiBIb25lc3RseSBJIGFtIG5vdCBzdXJlIHRoYXQgdGhp
cyBpcyBhIHJlYWwgaXNzdWUsIGJ1dCBpdCdzIGJldHRlciB0byBoYXZlIGl0Cj4+Pj4gaW4gbWlu
ZCBiZWZvcmUgd2UgdGFrZSBheSBkZWNpc2lvbgo+Pgo+PiBXb3VsZG4ndCBpdCBiZSBhY3R1YWxs
eSBzaW1wbGVyIHRvIGp1c3QgaW50cm9kdWNlIGEgbmV3IHNwZWNpZmljIEFQSQo+PiB2YXJpYW50
IGZvciB0aGlzLCBzaW1pbGFyIHRvIHRoZSByZXNldCBjb3JlIGZvciBleGFtcGxlIChpdCB1c2Vz
IGEKPj4gc2VwYXJhdGUgZXhjbHVzaXZlIEFQSSksIHdpdGhvdXQgaGF2aW5nIHRvIG1vZGlmeSB0
aGUgYmluZGluZ3MgYXQgYWxsLgo+PiBJdCBpcyBqdXN0IGEgY2FzZSBvZiB5b3VyIGRyaXZlciB1
c2luZyB0aGUgcmlnaHQgQVBJLCBhbmQgdGhlIGNvcmUgY2FuCj4+IGJlIG1vZGlmaWVkIHRvIHVz
ZSB0aGUgYWRkaXRpb25hbCB0YWcgc2VtYW50aWNzIGJhc2VkIG9uIHRoZSBBUEkuIEl0Cj4+IHNo
b3VsZCBhdm9pZCBhbnkgY29uZnVzaW9uIHdpdGggc2F5IHVzaW5nIGEgZGlmZmVyZW50IHNlY29u
ZCBjZWxsIHZhbHVlCj4+IGZvciB0aGUgc2FtZSBsb2NrIGluIHR3byBkaWZmZXJlbnQgbm9kZXMu
Cj4+Cj4gCj4gQnV0IHRoaXMgaW1wbGllcyB0aGF0IHRoZXJlIGlzIGFuIGFjdHVhbCBuZWVkIHRv
IGhvbGQgdGhlc2UgbG9ja3MKPiBleGNsdXNpdmVseS4gR2l2ZW4gdGhhdCB0aGV5IGFyZSAoZXhj
ZXB0IGZvciB0aGUgcmF3IGNhc2UpIGFsbCB3cmFwcGVkCj4gYnkgTGludXggbG9ja2luZyBwcmlt
aXRpdmVzIHRoZXJlIHNob3VsZG4ndCBiZSBhIHByb2JsZW0gc2hhcmluZyBhIGxvY2sKPiAoZXhj
ZXB0IHBvc3NpYmx5IGZvciB0aGUgcmF3IGNhc2UpLgoKWWVzIGFncmVlZCwgdGhlIEhXTE9DS19S
QVcgYW5kIEhXTE9DS19JTl9BVE9NSUMgY2FzZXMgYXJlIHVucHJvdGVjdGVkLiBJCmFtIHN0aWxs
IHRyeWluZyB0byB1bmRlcnN0YW5kIGJldHRlciB0aGUgdXNlY2FzZSB0byBzZWUgaWYgdGhlIHNh
bWUgbG9jawppcyBiZWluZyBtdWx0aXBsZXhlZCBmb3IgZGlmZmVyZW50IHByb3RlY3Rpb24gY29u
dGV4dHMsIG9yIGlmIGFsbCBvZgp0aGVtIGFyZSBwcm90ZWN0aW5nIHRoZSBzYW1lIGNvbnRleHQu
Cgo+IAo+IEkgYWdyZWUgdGhhdCB3ZSBzaG91bGRuJ3Qgc3BlY2lmeSB0aGlzIHByb3BlcnR5IGlu
IERUIC0gaWYgYW55dGhpbmcgaXQKPiBzaG91bGQgYmUgYSB2YXJpYW50IG9mIHRoZSBBUEkuCj4g
Cj4+IElmIHlvdSBhcmUgc2hhcmluZyBhIGh3bG9jayBvbiB0aGUgTGludXggc2lkZSwgc3VyZWx5
IHlvdXIgZHJpdmVyIHNob3VsZAo+PiBiZSBhd2FyZSB0aGF0IGl0IGlzIGEgc2hhcmVkIGxvY2su
IFRoZSB0YWcgY2FuIGJlIHNldCBkdXJpbmcgdGhlIGZpcnN0Cj4+IHJlcXVlc3QgQVBJLCBhbmQg
eW91IGxvb2sgdGhyb3VnaCBib3RoIHRhZ3Mgd2hlbiBnaXZpbmcgb3V0IGEgaGFuZGxlLgo+Pgo+
IAo+IFdoeSB3b3VsZCB0aGUgZHJpdmVyIG5lZWQgdG8ga25vdyBhYm91dCBpdD8KCkp1c3QgdGhl
IHNlbWFudGljcyBpZiB3ZSB3ZXJlIHRvIHN1cHBvcnQgc2luZ2xlIHVzZXIgdnMgbXVsdGlwbGUg
dXNlcnMKb24gTGludXgtc2lkZSB0byBldmVuIGdldCBhIGhhbmRsZS4gWW91ciBwb2ludCBpcyB0
aGF0IHRoaXMgbWF5IGJlIG1vb3QKc2luY2Ugd2UgaGF2ZSBwcm90ZWN0aW9uIGFueXdheSBvdGhl
ciB0aGFuIHRoZSByYXcgY2FzZXMuIEJ1dCB3ZSBuZWVkIHRvCmJlIGFibGUgdG8gaGF2ZSB0aGUg
c2FtZSBBUEkgd29yayBhY3Jvc3MgYWxsIGNhc2VzLgoKU28gZmFyLCBpdCBoYWQgbW9zdGx5IGJl
ZW4gdGhhdCB0aGVyZSB3b3VsZCBiZSBvbmUgdXNlciBvbiBMaW51eApjb21wZXRpbmcgd2l0aCBv
dGhlciBlcXVpdmFsZW50IHBlZXIgZW50aXRpZXMgb24gZGlmZmVyZW50IHByb2Nlc3NvcnMuCkl0
IGlzIG5vdCBjb21tb24gdG8gaGF2ZSBtdWx0aXBsZSB1c2VycyBzaW5jZSB0aGVzZSBwcm90ZWN0
aW9uIHNjaGVtZXMKYXJlIHVzdWFsbHkgbmVlZGVkIG9ubHkgYXQgdGhlIGxvd2VzdCBsZXZlbHMg
b2YgYSBzdGFjaywgc28gdGhlCmV4Y2x1c2l2ZSBoYW5kbGUgc3R1ZmYgaGFkIGJlZW4gc3VmZmlj
aWVudC4KCj4gCj4+IE9idmlvdXNseSwgdGhlIGh3c3Bpbl9sb2NrX3JlcXVlc3QoKSBBUEkgdXNh
Z2Ugc2VtYW50aWNzIGFsd2F5cyBoYWQgdGhlCj4+IGltcGxpZWQgYWRkaXRpb25hbCBuZWVkIGZv
ciBjb21tdW5pY2F0aW5nIHRoZSBsb2NrIGlkIHRvIHRoZSBvdGhlciBwZWVyCj4+IGVudGl0eSwg
c28gYSByZWFsaXN0aWMgdXNhZ2UgaXMgbW9zdCBhbHdheXMgdGhlIHNwZWNpZmljIEFQSSB2YXJp
YW50LiBJCj4+IGRvdWJ0IHRoaXMgQVBJIHdvdWxkIGJlIG9mIG11Y2ggdXNlIGZvciB0aGUgc2hh
cmVkIGRyaXZlciB1c2FnZS4gVGhpcwo+PiBhbHNvIGltcGxpZXMgdGhhdCB0aGUgY2xpZW50IHVz
ZXIgZG9lcyBub3QgY2FyZSBhYm91dCBzcGVjaWZ5aW5nIGEgbG9jawo+PiBpbiBEVC4KPj4KPiAK
PiBBZmFpY3QgaWYgdGhlIGxvY2sgYXJlIHNoYXJlZCB0aGVuIHRoZXJlIHNob3VsZG4ndCBiZSBh
IHByb2JsZW0gd2l0aAo+IHNvbWUgY2xpZW50cyB1c2luZyB0aGUgcmVxdWVzdCBBUEkgYW5kIG90
aGVycyByZXF1ZXN0X3NwZWNpZmljKCkuIEFzIGFueQo+IGNvbGxpc2lvbnMgd291bGQgc2ltcGx5
IG1lYW4gdGhhdCB0aGVyZSBhcmUgbW9yZSBjb250ZW50aW9uIG9uIHRoZSBsb2NrLgo+IAo+IFdp
dGggdGhlIGN1cnJlbnQgZXhjbHVzaXZlIG1vZGVsIHRoYXQgaXMgbm90IHBvc3NpYmxlIGFuZCB0
aGUgc3VjY2VzcyBvZgo+IHRoZSByZXF1ZXN0X3NwZWNpZmljIHdpbGwgZGVwZW5kIG9uIHByb2Jl
IG9yZGVyLgo+IAo+IEJ1dCBwZXJoYXBzIGl0IHNob3VsZCBiZSBleHBsaWNpdGx5IHByb2hpYml0
ZWQgdG8gdXNlIGJvdGggQVBJcyBvbiB0aGUKPiBzYW1lIGh3c3BpbmxvY2sgaW5zdGFuY2U/CgpZ
ZWFoLCB0aGV5IGFyZSBtZWFudCB0byBiZSBjb21wbGltZW50YXJ5IHVzYWdlLCB0aG91Z2ggSSBk
b3VidCB3ZSB3aWxsCmV2ZXIgaGF2ZSBhbnkgcmVhbGlzdGljIHVzZXJzIGZvciB0aGUgZ2VuZXJp
YyBBUEkgaWYgd2UgaGF2ZW4ndCBoYWQgYQp1c2FnZSBzbyBmYXIuIEkgaGFkIHBvc3RlZCBhIGNv
bmNlcHQgb2YgcmVzZXJ2ZWQgbG9ja3MgbG9uZyBiYWNrIFsxXSB0bwprZWVwIGF3YXkgY2VydGFp
biBsb2NrcyBmcm9tIHRoZSBnZW5lcmljIHJlcXVlc3RvciwgYnV0IGRyb3BwZWQgaXQgc2luY2UK
d2UgZGlkIG5vdCBoYXZlIGFuIGFjdHVhbCB1c2UtY2FzZSBuZWVkaW5nIGl0LgoKcmVnYXJkcwpT
dW1hbgoKWzFdIGh0dHBzOi8vbHduLm5ldC9BcnRpY2xlcy82MTE5NDQvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
