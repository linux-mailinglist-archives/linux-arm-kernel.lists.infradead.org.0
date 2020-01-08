Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFB5133C71
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:48:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzbNOOK5qUxSKDyXC0gpk65fgRdRznO89t/gR7K7yP4=; b=FFtgYT1zOtEaTK
	2/CT4wGyu4LRAu5PGQGjT6qEFOiEqVoCMQ9JKaLzsgpJrmRWxUE1SbIQ3yy8V2kzixHVDPbF3rY99
	JPQKpVn828DC4PxB30RpAEPD42tfKqWjWtXyKdgNC6l9Vtu+5Xm1CY4TgaGttpPOO9BAORiZQ5N/v
	dCwMpH0I29+DsG67g1P6f1HsvKNqBSOEEx6NQIsAOCrbzvXKRvG5HxzPgtlamBPsVrUQYk3SUMSR9
	kFlBZBNuCZbuVBviT01Lib14mzK+kj9iSeRuqjrPanuenbFrFDNo+Te14pTN3+QJcV5T41lFVmOPj
	kK8vVHpizwQDpDkQUJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip656-0004CZ-Ug; Wed, 08 Jan 2020 07:48:44 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip64z-0004Bi-16
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:48:38 +0000
Received: from [192.168.2.10] ([62.249.185.68])
 by smtp-cloud9.xs4all.net with ESMTPA
 id p64iiZca3T6sRp64niGj5G; Wed, 08 Jan 2020 08:48:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578469711; bh=xtNwc5IfKrwfQUKrHwCTvQzYkoWCY+xfQHgdy/TuFfA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=cKsmt6ptKe8rmZ3M5DfNPORxnghlyTukfpvDVlr5xs958YNpwd8sawStoYR631BzY
 3AN11LRYWIw7OSu4i/7ecVereC+lCfHOPm+8jFTZ/eSwMJQbdSmfUqhyiJ1f7B1zrt
 W5uISl8yEH1JiPB/WeoI4dazTgE6jgSErj2gzBoFsA80Na4P8NHmRPYLYG/TW0vi36
 l7eLp8EovbH9v2iXTuESbD/hGHwd887/rdX16KPP3aeQ/GOoHV9WywY9srl+RHCIoR
 Z1AS7b8J8YU+uvSOJq7Oog6fVY2UGObK2BMVuqPwtId0KzOkUWAcbzscX9Ixs94GR9
 zPQq+egnV5rbg==
Subject: Re: [PATCH v2 2/4] media: cedrus: hevc: Add support for scaling matrix
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-3-jernej.skrabec@siol.net>
 <4ac91ed5-a220-6a04-b1da-de27a306f8f2@xs4all.nl>
 <2627039.Y6S9NjorxK@jernej-laptop>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <96703589-15c1-0ce8-10dc-81996cac9875@xs4all.nl>
Date: Wed, 8 Jan 2020 08:48:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2627039.Y6S9NjorxK@jernej-laptop>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCPPd8rbiZD36So4MR0BPIFX90J8IGWdlAbPEr1wlkVaRNcyZs7sjBwhi76joK6Pl2987dpiW7hadXr971MUho0RLuWfygrekxWuNkn08ZgadsBkn8vv
 ewxVX3JNjBpQw4bfd05TUdeDHSnoGpB1QuifsgI6LR7yBjF7EEpfU02eajqtHNbrORtbOHOirWFJTcuddAxPgvetNBkzypDTbDSFC2uCLHvBsjpkP8p/KBaM
 Q4Ya/CJOFmLiMgA7UKoF7lhNUQ1cX7WIETzySN9jIWjC2SfILbGI7uzDL9xyJB5vsOAj7Ri3x6orEJJ05gCU4yEonD/00RFi0yHNcoyLsZB/FpyPkU0n/onD
 OMjeORGX3h8ao6vTzJsup0ka6s6XX23aWEVG33DMaMKzFUGY304H1WwTruoES2OOXUrc6+E8N2bb8oLYj7vKZ2mqsWJ8PCb07JHNzxQ6Hj2ZmfAZASCbxd0c
 C4k3DLVDfB6wyjfCl4Q4hea6VElGPeMGlkuhWmyQYsXlbUm2WH3Cti8pVpY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_234837_528323_6D92DE6F 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.30 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS83LzIwIDY6MTAgUE0sIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiBIaSEKPiAKPiBEbmUg
dG9yZWssIDA3LiBqYW51YXIgMjAyMCBvYiAxNjowMToxNiBDRVQgamUgSGFucyBWZXJrdWlsIG5h
cGlzYWwoYSk6Cj4+IE9uIDEyLzEzLzE5IDU6MDQgUE0sIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+
Pj4gSEVWQyBmcmFtZXMgbWF5IHVzZSBzY2FsaW5nIGxpc3QgZmVhdHVyZS4gQWRkIHN1cHBvcnQg
Zm9yIGl0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BzaW9sLm5ldD4KPj4+IC0tLQo+Pj4KPj4+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1cy5jICAgfCAgNyArKwo+Pj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzLmggICB8ICAxICsKPj4+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54
aS9jZWRydXMvY2VkcnVzX2RlYy5jICAgfCAgMiArCj4+PiAgLi4uL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMgIHwgNzAgKysrKysrKysrKysrKysrKysrLQo+Pj4gIC4u
Li9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfcmVncy5oICB8ICAyICsKPj4+ICA1
IGZpbGVzIGNoYW5nZWQsIDgxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuYwo+
Pj4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5jIGluZGV4Cj4+
PiBjNmRkZDQ2ZWZmODIuLmJmNjhiYzZiMjBjOCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmMKPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmMKPj4+IEBAIC0xMTYsNiArMTE2LDEzIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgY2VkcnVzX2NvbnRyb2wgY2VkcnVzX2NvbnRyb2xzW10KPj4+ID0g
ez4gCj4+PiAgCQkuY29kZWMJCT0gQ0VEUlVTX0NPREVDX0gyNjUsCj4+PiAgCQkucmVxdWlyZWQJ
PSB0cnVlLAo+Pj4gIAkKPj4+ICAJfSwKPj4+Cj4+PiArCXsKPj4+ICsJCS5jZmcgPSB7Cj4+PiAr
CQkJLmlkCT0gCj4gVjRMMl9DSURfTVBFR19WSURFT19IRVZDX1NDQUxJTkdfTUFUUklYLAo+Pj4g
KwkJfSwKPj4+ICsJCS5jb2RlYwkJPSBDRURSVVNfQ09ERUNfSDI2NSwKPj4+ICsJCS5yZXF1aXJl
ZAk9IHRydWUsCj4+Cj4+IFNob3VsZCB0aGlzIGJlIHRydWU/IFRoaXMgbWVhbnMgdGhhdCBleGlz
dGluZyBhcHBsaWNhdGlvbnMgYXJlIG5vdwo+PiBzdWRkZW5seSByZXF1aXJlZCB0byBhbHdheXMg
cGFzcyB0aGUgc2NhbGluZyBtYXRyaXggZm9yIGV2ZXJ5IGJ1ZmZlci4KPj4KPj4gRXNwZWNpYWxs
eSBzaW5jZSB0aGUgY29tbWl0IGxvZyBzYXlzOiAnSEVWQyBmcmFtZXMgKm1heSogdXNlIHNjYWxp
bmcgbGlzdAo+PiBmZWF0dXJlJywgaW5kaWNhdGluZyB0aGF0IHRoaXMgaXMgYW4gb3B0aW9uYWwg
ZmVhdHVyZS4KPiAKPiBUcnVlLiBDYW4geW91IGZpeCB0aGlzIHdoZW4gYXBwbHlpbmcgaWYgdGhp
cyBpcyB0aGUgb25seSBpc3N1ZT8KCkknbGwgZG8gdGhhdC4KClJlZ2FyZHMsCgoJSGFucwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
