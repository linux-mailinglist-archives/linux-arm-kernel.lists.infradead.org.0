Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD23C837F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9DpWQMw9odVRqxcxCfedPBJnZtivKw4LsLU2C8UX7o=; b=S6szk5Cr7bfzB3
	xwIAXiek0GWMXvrfxuFlb8fxtQ8MNPZM5xutFC3vv7bM7DIHeTLg3D7RHRE7hl6V4KRnpJoIVN464
	1X/CqbIjBMNvfEDWXrpUTCec2VUmT8TImmlCUFH39YGNnT5bpihIOpGDwoTpA/6UUZixy7567JMyV
	ALumul5l4Kf6NgAYc3Z2+4emLyruxpdZ15hz0CpjMCr6v0KpQwb3GrjTeD++xdsIfLuPuEasvl+xJ
	wL5DbiRzqCwhuBSrIR0j6oghORpSH0kwpEqThHMPu9jeLMKJeloTfInRcH0vUBZYDmDu4WcAgYusB
	9WBRRFIYzlMhB758WGhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv3Q5-0006MM-15; Tue, 06 Aug 2019 17:38:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv3Pw-0006LR-IV
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:38:38 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x76HcKok007671;
 Tue, 6 Aug 2019 12:38:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565113100;
 bh=rJsG4X64+05xGE5m7rzAm+zLsHKU8QbIpns9wHygRi8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JTGcrXJxmNXfgFaTAASCC8SBU0IJYQKQ9sqs1KXIxaYUufOHQoFVSZnbd2BvK5njh
 fZDQwADBbTvkxFkt4XnG0TMlvWO9YT7XMiXlARvBBWS9RhxLIADyRSPZ4qRVjNxKi0
 gL+fxOYLnghoOyTN4v2RUhKvKlg4GCqEtToiwFrg=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x76HcKZA075961
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 6 Aug 2019 12:38:20 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 6 Aug
 2019 12:38:19 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 6 Aug 2019 12:38:19 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x76HcJ61094917;
 Tue, 6 Aug 2019 12:38:19 -0500
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Fabien DESSENNE
 <fabien.dessenne@st.com>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
From: Suman Anna <s-anna@ti.com>
Message-ID: <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
Date: Tue, 6 Aug 2019 12:38:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190805174659.GA23928@tuxbook-pro>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_103836_720358_CC515F64 
X-CRM114-Status: GOOD (  38.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

SGkgRmFiaWVuLAoKT24gOC81LzE5IDEyOjQ2IFBNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4g
T24gTW9uIDA1IEF1ZyAwMTo0OCBQRFQgMjAxOSwgRmFiaWVuIERFU1NFTk5FIHdyb3RlOgo+IAo+
Pgo+PiBPbiAwMS8wOC8yMDE5IDk6MTQgUE0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPj4+IE9u
IFdlZCAxMyBNYXIgMDg6NTAgUERUIDIwMTksIEZhYmllbiBEZXNzZW5uZSB3cm90ZToKPj4+Cj4+
Pj4gVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gZG9lcyBub3QgYWxsb3cgdHdvIGRpZmZlcmVu
dCBkZXZpY2VzIHRvIHVzZQo+Pj4+IGEgY29tbW9uIGh3c3BpbmxvY2suIFRoaXMgcGF0Y2ggc2V0
IHByb3Bvc2VzIHRvIGhhdmUsIGFzIGFuIG9wdGlvbiwgc29tZQo+Pj4+IGh3c3BpbmxvY2tzIHNo
YXJlZCBiZXR3ZWVuIHNldmVyYWwgdXNlcnMuCj4+Pj4KPj4+PiBCZWxvdyBpcyBhbiBleGFtcGxl
IHRoYXQgZXhwbGFpbiB0aGUgbmVlZCBmb3IgdGhpczoKPj4+PiAJZXh0aTogaW50ZXJydXB0LWNv
bnRyb2xsZXJANTAwMGQwMDAgewo+Pj4+IAkJY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1wMS1leHRp
IiwgInN5c2NvbiI7Cj4+Pj4gCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsKPj4+PiAJCSNpbnRlcnJ1
cHQtY2VsbHMgPSA8Mj47Cj4+Pj4gCQlyZWcgPSA8MHg1MDAwZDAwMCAweDQwMD47Cj4+Pj4gCQlo
d2xvY2tzID0gPCZoc2VtIDE+Owo+Pj4+IAl9Owo+Pj4+IFRoZSB0d28gZHJpdmVycyAoc3RtMzJt
cDEtZXh0aSBhbmQgc3lzY29uKSByZWZlciB0byB0aGUgc2FtZSBod2xvY2suCj4+Pj4gV2l0aCB0
aGUgY3VycmVudCBod3NwaW5sb2NrIGltcGxlbWVudGF0aW9uLCBvbmx5IHRoZSBmaXJzdCBkcml2
ZXIgc3VjY2VlZHMKPj4+PiBpbiByZXF1ZXN0aW5nIChod3NwaW5fbG9ja19yZXF1ZXN0X3NwZWNp
ZmljKSB0aGUgaHdsb2NrLiBUaGUgc2Vjb25kIHJlcXVlc3QKPj4+PiBmYWlscy4KCkhlbHAgbWUg
dW5kZXJzdGFuZCB0aGUgcHJvYmxlbSB0aGF0IHlvdSBhcmUgdHJ5aW5nIHRvIHNvbHZlIGhlcmUu
IElzCnRoaXMgYSBjYXNlIG9mIHlvdSBoYXZpbmcgdHdvIGNsaWVudHMgb24gTGludXgtc2lkZSBu
ZWVkaW5nIHRvIHVzZSB0aGUKc2FtZSBsb2NrIGJ1dCBzdGlsbCByZXF1aXJpbmcgdGhlIGFyYml0
cmF0aW9uIHdpdGggc29mdHdhcmUgcnVubmluZyBvbgpzb21lIG90aGVyIHJlbW90ZSBwcm9jZXNz
b3I/IEFyZSB0aGV5IHRhbGtpbmcgdG8gdGhlIHNhbWUgZW50aXR5IG9uIHRoZQpyZW1vdGUtc2lk
ZSBvciBkaWZmZXJlbnQgcGVlcnMuCgpJIHNlZSB0aGUgc2VyaWVzIGlzIGFsbCBhYm91dCBnZXR0
aW5nIGEgaGFuZGxlIHNvIHRoYXQgdGhleSBjYW4gdXNlIHRoZQpBUEksIGFuZCBpcyB0aGUgZXhw
ZWN0ZWQgdXNhZ2UgdGhhdCB0aGUgc2FtZSBlbnRpdHkgd2lsbCBsb2NrIGFuZCB1bmxvY2sKYmVm
b3JlIHRoZSBvdGhlciBkcml2ZXIgY2FuIGxvY2sgaXQuCgo+Pj4+Cj4+Pj4KPj4+PiBUaGUgcHJv
cG9zZWQgYXBwcm9hY2ggZG9lcyBub3QgbW9kaWZ5IHRoZSBBUEksIGJ1dCBleHRlbmRzIHRoZSBE
VCAnaHdsb2NrcycKPj4+PiBwcm9wZXJ0eSB3aXRoIGEgc2Vjb25kIG9wdGlvbmFsIHBhcmFtZXRl
ciAodGhlIGZpcnN0IG9uZSBpZGVudGlmaWVzIGFuCj4+Pj4gaHdsb2NrKSB0aGF0IHNwZWNpZmll
cyB3aGV0aGVyIGFuIGh3bG9jayBpcyByZXF1ZXN0ZWQgZm9yIGV4Y2x1c2l2ZSB1c2FnZQo+Pj4+
IChjdXJyZW50IGJlaGF2aW9yKSBvciBjYW4gYmUgc2hhcmVkIGJldHdlZW4gc2V2ZXJhbCB1c2Vy
cy4KPj4+PiBFeGFtcGxlczoKPj4+PiAJaHdsb2NrcyA9IDwmaHNlbSA4PjsJUmVmIHRvIGh3bG9j
ayAjOCBmb3IgZXhjbHVzaXZlIHVzYWdlCj4+Pj4gCWh3bG9ja3MgPSA8JmhzZW0gOCAwPjsJUmVm
IHRvIGh3bG9jayAjOCBmb3IgZXhjbHVzaXZlICgwKSB1c2FnZQo+Pj4+IAlod2xvY2tzID0gPCZo
c2VtIDggMT47CVJlZiB0byBod2xvY2sgIzggZm9yIHNoYXJlZCAoMSkgdXNhZ2UKPj4+Pgo+Pj4+
IEFzIGEgY29uc3RyYWludCwgdGhlICNod2xvY2stY2VsbHMgdmFsdWUgbXVzdCBiZSAxIG9yIDIu
Cj4+Pj4gSW4gdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24sIHRoaXMgY2FuIGhhdmUgdGhlb3Jp
Y2FsbHkgYW55IHZhbHVlIGJ1dDoKPj4+PiAtIGFsbCBvZiB0aGUgZXhpc2l0aW5nIGRyaXZlcnMg
dXNlIHRoZSBzYW1lIHZhbHVlIDogMS4KPj4+PiAtIHRoZSBmcmFtZXdvcmsgc3VwcG9ydHMgb25s
eSBvbmUgdmFsdWUgOiAxIChzZWUgaW1wbGVtZW50YXRpb24gb2YKPj4+PiAgICBvZl9od3NwaW5f
bG9ja19zaW1wbGVfeGxhdGUoKSkKPj4+PiBIZW5jZSwgaXQgc2hhbGwgbm90IGJlIGEgcHJvYmxl
bSB0byByZXN0cmljdCB0aGlzIHZhbHVlIHRvIDEgb3IgMiBzaW5jZQo+Pj4+IGl0IHdvbid0IGJy
ZWFrIGFueSBkcml2ZXIuCj4+Pj4KPj4+IEhpIEZhYmllbiwKPj4+Cj4+PiBZb3VyIHNlcmllcyBs
b29rcyBnb29kLCBidXQgaXQgbWFrZXMgbWUgd29uZGVyIHdoeSB0aGUgaGFyZHdhcmUgbG9ja3MK
Pj4+IHNob3VsZCBiZSBhbiBleGNsdXNpdmUgcmVzb3VyY2UuCj4+Pgo+Pj4gSG93IGFib3V0IGp1
c3QgbWFraW5nIGFsbCAoc3BlY2lmaWMpIGxvY2tzIHNoYXJlZD8KPj4KPj4gSGkgQmpvcm4sCj4+
Cj4+IE1ha2luZyBhbGwgbG9ja3Mgc2hhcmVkIGlzIGEgcG9zc2libGUgaW1wbGVtZW50YXRpb24g
KG15IGZpcnN0IAo+PiBpbXBsZW1lbnRhdGlvbgo+PiB3YXMgZ29pbmcgdGhpcyB3YXkpIGJ1dCB0
aGVyZSBhcmUgc29tZSBkcmF3YmFja3Mgd2UgbXVzdCBiZSBhd2FyZSBvZjoKPj4KPj4gQS8gVGhp
cyB0aGVvcmV0aWNhbGx5IGJyZWFrIHRoZSBsZWdhY3kgYmVoYXZpb3IgKHRoZSBsZWdhY3kgd29y
a3Mgd2l0aAo+PiBleGNsdXNpdmUgKFVOVVNFRCByYWRpeCB0YWcpIHVzYWdlKS4gQXMgYSBjb25z
ZXF1ZW5jZSwgYW4gZXhpc3RpbmcgZHJpdmVyCj4+IHRoYXQgaXMgY3VycmVudGx5IGZhaWxpbmcg
dG8gcmVxdWVzdCBhIGxvY2sgKGFscmVhZHkgY2xhaW1lZCBieSBhbm90aGVyCj4+IHVzZXIpIHdv
dWxkIG5vdyB3b3JrIGZpbmUuIE5vdCBzdXJlIHRoYXQgdGhlcmUgYXJlIHN1Y2ggZHJpdmVycywg
c28gdGhpcwo+PiBwb2ludCBpcyBwcm9iYWJseSBub3QgYSByZWFsIGlzc3VlLgo+Pgo+IAo+IFJp
Z2h0LCBpdCdzIHBvc3NpYmxlIHRoYXQgYSBwcmV2aW91c2x5IG1pc2NvbmZpZ3VyZWQgc3lzdGVt
IG5vdwo+IHN1Y2Nlc3NmdWxseSBwcm9iZXMgbW9yZSB0aGFuIG9uZSBkZXZpY2UgdGhhdCB1c2Vz
IGEgcGFydGljdWxhcgo+IHNwaW5sb2NrLiBCdXQgc3VjaCBzeXN0ZW0gd291bGQgYmUgc3VmZmVy
aW5nIGZyb20gaXNzdWVzIHJlbGF0ZWQgdG8gZS5nLgo+IHByb2JlIG9yZGVyaW5nLgo+IAo+IFNv
IEkgdGhpbmsgd2Ugc2hvdWxkIGlnbm9yZSB0aGlzIGlzc3VlLgo+IAo+PiBCLyBUaGlzIHdvdWxk
IGludHJvZHVjZSBzb21lIGluY29uc2lzdGVuY3kgYmV0d2VlbiB0aGUgdHdvICdyZXF1ZXN0JyBB
UEkKPj4gd2hpY2ggYXJlIGh3c3Bpbl9sb2NrX3JlcXVlc3QoKSBhbmQgaHdzcGluX2xvY2tfcmVx
dWVzdF9zcGVjaWZpYygpLgo+PiBod3NwaW5fbG9ja19yZXF1ZXN0KCkgbG9va3MgZm9yIGFuIHVu
dXNlZCBsb2NrLCBzbyByZXF1ZXN0cyBmb3IgYW4gZXhjbHVzaXZlCj4+IHVzYWdlLiBPbiB0aGUg
b3RoZXIgc2lkZSwgcmVxdWVzdF9zcGVjaWZpYygpIHdvdWxkIHJlcXVlc3Qgc2hhcmVkIGxvY2tz
Lgo+PiBXb3JzdCB0aGUgZm9sbG93aW5nIHNlcXVlbmNlIGNhbiB0cmFuc2Zvcm0gYW4gZXhjbHVz
aXZlIHVzYWdlIGludG8gYSBzaGFyZWQKPj4KPiAKPiBUaGVyZSBpcyBhbHJlYWR5IGFuIGluY29u
c2lzdGVuY3kgaW4gYmV0d2VlbiB0aGVzZTsgYXMgd2l0aCBhYm92ZSBhbnkKPiBzeXN0ZW0gdGhh
dCB1c2VzIGJvdGggcmVxdWVzdCgpIGFuZCByZXF1ZXN0X3NwZWNpZmljKCkgd2lsbCBiZSBzdWZm
ZXJpbmcKPiBmcm9tIGludGVybWl0dGVudCBmYWlsdXJlcyBkdWUgdG8gcHJvYmUgb3JkZXJpbmcu
Cj4gCj4+IG9uZToKPj4gIMKgIC1od3NwaW5fbG9ja19yZXF1ZXN0KCkgLT4gcmV0dXJucyBJZCMw
IChleGNsdXNpdmUpCj4+ICDCoCAtaHdzcGluX2xvY2tfcmVxdWVzdCgpIC0+IHJldHVybnMgSWQj
MSAoZXhjbHVzaXZlKQo+PiAgwqAgLWh3c3Bpbl9sb2NrX3JlcXVlc3Rfc3BlY2lmaWMoMCkgLT4g
cmV0dXJucyBJZCMwIGFuZCBtYWtlcyBJZCMwIHNoYXJlZAo+PiBIb25lc3RseSBJIGFtIG5vdCBz
dXJlIHRoYXQgdGhpcyBpcyBhIHJlYWwgaXNzdWUsIGJ1dCBpdCdzIGJldHRlciB0byBoYXZlIGl0
Cj4+IGluIG1pbmQgYmVmb3JlIHdlIHRha2UgYXkgZGVjaXNpb24KCldvdWxkbid0IGl0IGJlIGFj
dHVhbGx5IHNpbXBsZXIgdG8ganVzdCBpbnRyb2R1Y2UgYSBuZXcgc3BlY2lmaWMgQVBJCnZhcmlh
bnQgZm9yIHRoaXMsIHNpbWlsYXIgdG8gdGhlIHJlc2V0IGNvcmUgZm9yIGV4YW1wbGUgKGl0IHVz
ZXMgYQpzZXBhcmF0ZSBleGNsdXNpdmUgQVBJKSwgd2l0aG91dCBoYXZpbmcgdG8gbW9kaWZ5IHRo
ZSBiaW5kaW5ncyBhdCBhbGwuCkl0IGlzIGp1c3QgYSBjYXNlIG9mIHlvdXIgZHJpdmVyIHVzaW5n
IHRoZSByaWdodCBBUEksIGFuZCB0aGUgY29yZSBjYW4KYmUgbW9kaWZpZWQgdG8gdXNlIHRoZSBh
ZGRpdGlvbmFsIHRhZyBzZW1hbnRpY3MgYmFzZWQgb24gdGhlIEFQSS4gSXQKc2hvdWxkIGF2b2lk
IGFueSBjb25mdXNpb24gd2l0aCBzYXkgdXNpbmcgYSBkaWZmZXJlbnQgc2Vjb25kIGNlbGwgdmFs
dWUKZm9yIHRoZSBzYW1lIGxvY2sgaW4gdHdvIGRpZmZlcmVudCBub2Rlcy4KCklmIHlvdSBhcmUg
c2hhcmluZyBhIGh3bG9jayBvbiB0aGUgTGludXggc2lkZSwgc3VyZWx5IHlvdXIgZHJpdmVyIHNo
b3VsZApiZSBhd2FyZSB0aGF0IGl0IGlzIGEgc2hhcmVkIGxvY2suIFRoZSB0YWcgY2FuIGJlIHNl
dCBkdXJpbmcgdGhlIGZpcnN0CnJlcXVlc3QgQVBJLCBhbmQgeW91IGxvb2sgdGhyb3VnaCBib3Ro
IHRhZ3Mgd2hlbiBnaXZpbmcgb3V0IGEgaGFuZGxlLgoKT2J2aW91c2x5LCB0aGUgaHdzcGluX2xv
Y2tfcmVxdWVzdCgpIEFQSSB1c2FnZSBzZW1hbnRpY3MgYWx3YXlzIGhhZCB0aGUKaW1wbGllZCBh
ZGRpdGlvbmFsIG5lZWQgZm9yIGNvbW11bmljYXRpbmcgdGhlIGxvY2sgaWQgdG8gdGhlIG90aGVy
IHBlZXIKZW50aXR5LCBzbyBhIHJlYWxpc3RpYyB1c2FnZSBpcyBtb3N0IGFsd2F5cyB0aGUgc3Bl
Y2lmaWMgQVBJIHZhcmlhbnQuIEkKZG91YnQgdGhpcyBBUEkgd291bGQgYmUgb2YgbXVjaCB1c2Ug
Zm9yIHRoZSBzaGFyZWQgZHJpdmVyIHVzYWdlLiBUaGlzCmFsc28gaW1wbGllcyB0aGF0IHRoZSBj
bGllbnQgdXNlciBkb2VzIG5vdCBjYXJlIGFib3V0IHNwZWNpZnlpbmcgYSBsb2NrCmluIERULgoK
cmVnYXJkcwpTdW1hbgoKPiAKPiBUaGUgY2FzZSB3aGVyZSBJIGNhbiBzZWUgYQo+IHByb2JsZW0g
d2l0aCB0aGlzIHdvdWxkIGJlIGlmIHRoZSB0d28gY2xpZW50cyBzb21laG93IHdvdWxkIG5lc3Qg
dGhlaXIKPiBsb2NraW5nIHJlZ2lvbnMuCj4gCj4gQnV0IGdlbmVyYWxseSBJIHRoaW5rIHRoaXMg
Y291bGQgY29uc2lkZXIgdGhpcyBhbiBpbXByb3ZlbWVudCwgYmVjYXVzZQo+IHRoZSByZXF1ZXN0
X3NwZWNpZmljKCkgd291bGQgbm93IGJlIGFibGUgdG8gYWNxdWlyZSBpdHMgaHdsb2NrLCB3aXRo
Cj4gc29tZSBhZGRpdGlvbmFsIGNvbnRlbnRpb24gZHVlIHRvIHRoZSBtdWx0aXBsZSB1c2UuCj4g
Cj4+IEkgY291bGQgbm90IGZpbmQgYW55IGRyaXZlciB1c2luZyB0aGUgaHdzcGluX2xvY2tfcmVx
dWVzdCgpIEFQSSwgd2UKPj4gbWF5IGRlY2lkZSB0byByZW1vdmUgKG9yIHRvIG1ha2UgZGVwcmVj
YXRlZCkgdGhpcyBBUEksIGhhdmluZwo+PiBldmVyeXRoaW5nICdzaGFyZWQgd2l0aG91dCBhbnkg
Y29uZGl0aW9ucycuCj4+Cj4gCj4gSXQgd291bGQgYmUgbmljZSB0byBoYXZlIGFuIHVwc3RyZWFt
IHVzZXIgb2YgdGhpcyBBUEkuCj4gCj4+Cj4+IEkgY2FuIHNlZSB0aHJlZSBvcHRpb25zOgo+PiAx
LSBLZWVwIG15IGluaXRpYWwgcHJvcG9zaXRpb24KPj4gMi0gSGF2ZSBod3NwaW5fbG9ja19yZXF1
ZXN0X3NwZWNpZmljKCkgdXNpbmcgc2hhcmVkIGxvY2tzIGFuZAo+PiAgwqDCoCBod3NwaW5fbG9j
a19yZXF1ZXN0KCkgdXNpbmcgdW51c2VkIChzbyAnaW5pdGlhbGx5JyBleGNsdXNpdmUpIGxvY2tz
Lgo+PiAzLSBIYXZlIGh3c3Bpbl9sb2NrX3JlcXVlc3Rfc3BlY2lmaWMoKSB1c2luZyBzaGFyZWQg
bG9ja3MgYW5kCj4+ICDCoMKgIHJlbW92ZS9tYWtlIGRlcHJlY2F0ZWQgaHdzcGluX2xvY2tfcmVx
dWVzdCgpLgo+Pgo+PiBKdXN0IGxldCBtZSBrbm93IHdoYXQgaXMgeW91ciBwcmVmZXJlbmNlLgo+
Pgo+IAo+IEkgdGhpbmsgd2Ugc2hvdWxkIHN0YXJ0IHdpdGggIzIgYW5kIHdvdWxkIGxpa2UgaW5w
dXQgZnJvbSBlLmcuIFN1bWFuCj4gcmVnYXJkaW5nICMzLgo+IAo+IFJlZ2FyZHMsCj4gQmpvcm4K
PiAKPj4gQlIKPj4KPj4gRmFiaWVuCj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+IEJqb3JuCj4+Pgo+
Pj4+IEZhYmllbiBEZXNzZW5uZSAoNik6Cj4+Pj4gICAgZHQtYmluZGluZ3M6IGh3bG9jazogYWRk
IHN1cHBvcnQgb2Ygc2hhcmVkIGxvY2tzCj4+Pj4gICAgaHdzcGlubG9jazogYWxsb3cgc2hhcmlu
ZyBvZiBod3NwaW5sb2Nrcwo+Pj4+ICAgIGR0LWJpbmRpbmdzOiBod2xvY2s6IHVwZGF0ZSBTVE0z
MiAjaHdsb2NrLWNlbGxzIHZhbHVlCj4+Pj4gICAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgaHdzcGlu
bG9jayBub2RlIGZvciBzdG0zMm1wMTU3IFNvQwo+Pj4+ICAgIEFSTTogZHRzOiBzdG0zMjogQWRk
IGh3bG9jayBmb3IgaXJxY2hpcCBvbiBzdG0zMm1wMTU3Cj4+Pj4gICAgQVJNOiBkdHM6IHN0bTMy
OiBod2xvY2tzIGZvciBHUElPIGZvciBzdG0zMm1wMTU3Cj4+Pj4KPj4+PiAgIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2h3bG9jay9od2xvY2sudHh0ICAgICAgICAgIHwgMjcgKysrKystLQo+Pj4+
ICAgLi4uL2JpbmRpbmdzL2h3bG9jay9zdCxzdG0zMi1od3NwaW5sb2NrLnR4dCAgICAgICAgfCAg
NiArLQo+Pj4+ICAgRG9jdW1lbnRhdGlvbi9od3NwaW5sb2NrLnR4dCAgICAgICAgICAgICAgICAg
ICAgICAgfCAxMCArKy0KPj4+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTctcGluY3Ry
bC5kdHNpICAgICAgICAgIHwgIDIgKwo+Pj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1
N2MuZHRzaSAgICAgICAgICAgICAgICAgfCAxMCArKysKPj4+PiAgIGRyaXZlcnMvaHdzcGlubG9j
ay9od3NwaW5sb2NrX2NvcmUuYyAgICAgICAgICAgICAgIHwgODIgKysrKysrKysrKysrKysrKyst
LS0tLQo+Pj4+ICAgZHJpdmVycy9od3NwaW5sb2NrL2h3c3BpbmxvY2tfaW50ZXJuYWwuaCAgICAg
ICAgICAgfCAgMiArCj4+Pj4gICA3IGZpbGVzIGNoYW5nZWQsIDEwOCBpbnNlcnRpb25zKCspLCAz
MSBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IC0tIAo+Pj4+IDIuNy40Cj4+Pj4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
