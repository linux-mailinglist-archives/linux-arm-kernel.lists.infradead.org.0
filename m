Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F7D132F6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kD23GcjwyLCDS5LTSazAJKTF6Zx1Ptp+fqxHm+2KxcI=; b=rQw87EtCXGRXj6
	+nDSUyI97GEOR9KORDGno0AhZkc7njRz4BQCiq/nQp1rrSFuafrgmrwHTswV4ZFc78UrXhYwEEbZR
	apFuKjl59ntqcXK3i8tu1zvdMR+YPD89hSx91YMBDUSK4NdY8uw6W384tFUqPgwHGvT1NeTeD3dEn
	JpdJLU45x0ELqJLWRivufjARcdsonbNNLwu48vh1kn9FQmbZ0LufRTglqyL+BI4YCez5cbHcl840x
	ym45vWnFuM+NWQuOzE43xA7CWbbJdmruMNZi7snE99iMPOO+3RHtulsysF7Rd99fCIQ+2sG1XIkQQ
	pExhURyf/Nb4cIGu8teA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouXz-0000MW-TY; Tue, 07 Jan 2020 19:29:47 +0000
Received: from 9.mo179.mail-out.ovh.net ([46.105.76.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouXi-0000C9-LI
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:29:32 +0000
Received: from player718.ha.ovh.net (unknown [10.108.16.42])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 721A51545BB
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 20:29:24 +0100 (CET)
Received: from armadeus.com (91-171-241-78.subs.proxad.net [91.171.241.78])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player718.ha.ovh.net (Postfix) with ESMTPSA id 08099DDDD523;
 Tue,  7 Jan 2020 19:29:13 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [PATCH AUTOSEL 4.19 102/177] nvmem: imx-ocotp: reset error status
 on probe
From: =?utf-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
In-Reply-To: <2dc7001f362358dfdcbef080118b23cabaa03a40.camel@pengutronix.de>
Date: Tue, 7 Jan 2020 20:29:12 +0100
Message-Id: <CF40B493-27C8-4DF4-BB43-624CC797B12C@armadeus.com>
References: <20191210213221.11921-1-sashal@kernel.org>
 <20191210213221.11921-102-sashal@kernel.org>
 <dd048e02-81f7-8aed-34a7-f95a70859391@armadeus.com>
 <2dc7001f362358dfdcbef080118b23cabaa03a40.camel@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Ovh-Tracer-Id: 15857737239658386631
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvdehiedgtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurheptggguffhjgffgffkfhfvofesthhqmhdthhdtjeenucfhrhhomhepuforsggrshhtihgvnhgpufiihihmrghnshhkihcuoehsvggsrghsthhivghnrdhsiiihmhgrnhhskhhisegrrhhmrgguvghushdrtghomheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpphgrshhtvggsihhnrdgtohhmnecukfhppedtrddtrddtrddtpdeluddrudejuddrvdeguddrjeeknecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejudekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_112930_854611_B118B4F9 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.76.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVjYXMsCgo+IE9uIDcgSmFuIDIwMjAsIGF0IDE4OjUzLCBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gCj4gSGkgU8OpYmFzdGllbiwKPiAKPiBPbiBEaSwg
MjAyMC0wMS0wNyBhdCAxNTo1MCArMDEwMCwgU8OpYmFzdGllbiBTenltYW5za2kgd3JvdGU6Cj4+
IE9uIDEyLzEwLzE5IDEwOjMxIFBNLCBTYXNoYSBMZXZpbiB3cm90ZToKPj4+IEZyb206IEx1Y2Fz
IFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+Pj4gCj4+PiBbIFVwc3RyZWFtIGNvbW1p
dCBjMzNjNTg1ZjFiM2E5OWQ1MzkyMGJkYWM2MTRhY2E0NjFkOGRiMDZmIF0KPj4+IAo+Pj4gSWYg
c29mdHdhcmUgcnVubmluZyBiZWZvcmUgdGhlIE9DT1RQIGRyaXZlciBpcyBsb2FkZWQgbGVmdCB0
aGUKPj4+IGNvbnRyb2xsZXIgd2l0aCB0aGUgZXJyb3Igc3RhdHVzIHBlbmRpbmcsIHRoZSBkcml2
ZXIgd2lsbCBuZXZlcgo+Pj4gYmUgYWJsZSB0byBjb21wbGV0ZSB0aGUgcmVhZCB0aW1pbmcgc2V0
dXAuIFJlc2V0IHRoZSBlcnJvciBzdGF0dXMKPj4+IG9uIHByb2JlIHRvIG1ha2Ugc3VyZSB0aGUg
Y29udHJvbGxlciBpcyBpbiB1c2FibGUgc3RhdGUuCj4+PiAKPj4+IFNpZ25lZC1vZmYtYnk6IEx1
Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+Pj4gU2lnbmVkLW9mZi1ieTogU3Jp
bml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8ub3JnPgo+Pj4gTGlu
azogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDE5MTAyOTExNDI0MC4xNDkwNS02LXNyaW5p
dmFzLmthbmRhZ2F0bGFAbGluYXJvLm9yZwo+Pj4gU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1I
YXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPj4+IFNpZ25lZC1vZmYtYnk6IFNh
c2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KPj4+IC0tLQo+Pj4gZHJpdmVycy9udm1lbS9p
bXgtb2NvdHAuYyB8IDQgKysrKwo+Pj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+
Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAuYyBiL2RyaXZlcnMv
bnZtZW0vaW14LW9jb3RwLmMKPj4+IGluZGV4IGFmYjQyOWE0MTdmZTAuLjkyNmQ5Y2MwODBjZjQg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL252bWVtL2lteC1vY290cC5jCj4+PiArKysgYi9kcml2
ZXJzL252bWVtL2lteC1vY290cC5jCj4+PiBAQCAtNDY2LDYgKzQ2NiwxMCBAQCBzdGF0aWMgaW50
IGlteF9vY290cF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gCWlmIChJ
U19FUlIocHJpdi0+Y2xrKSkKPj4+IAkJcmV0dXJuIFBUUl9FUlIocHJpdi0+Y2xrKTsKPj4+IAo+
Pj4gKwljbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+Y2xrKTsKPj4+ICsJaW14X29jb3RwX2Nscl9l
cnJfaWZfc2V0KHByaXYtPmJhc2UpOwo+Pj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+
Y2xrKTsKPj4+ICsKPj4+IAlwcml2LT5wYXJhbXMgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEo
JnBkZXYtPmRldik7Cj4+PiAJaW14X29jb3RwX252bWVtX2NvbmZpZy5zaXplID0gNCAqIHByaXYt
PnBhcmFtcy0+bnJlZ3M7Cj4+PiAJaW14X29jb3RwX252bWVtX2NvbmZpZy5kZXYgPSBkZXY7Cj4+
PiAKPj4gCj4+IEhpLAo+PiAKPj4gVGhpcyBwYXRjaCBtYWtlcyBrZXJuZWwgNC4xOS57OTIsOTN9
IGhhbmcgYXQgYm9vdCBvbiBteSBpLk1YNlVMTCBiYXNlZAo+PiBib2FyZC4gSXQgaGFua3MgYXQK
Pj4gCj4+IFsgICAgMy43MzAwNzhdIGNwdSBjcHUwOiBMaW5rZWQgYXMgYSBjb25zdW1lciB0byBy
ZWd1bGF0b3IuMgo+PiBbICAgIDMuNzM3NzYwXSBjcHUgY3B1MDogTGlua2VkIGFzIGEgY29uc3Vt
ZXIgdG8gcmVndWxhdG9yLjMKPj4gCj4+IEZ1bGwgYm9vdCBsb2cgaXMgaGVyZTogaHR0cHM6Ly9w
YXN0ZWJpbi5jb20vVFM4RUZ4a3IKPj4gCj4+IFRoZSBjb25maWcgaXMgaW14X3Y2X3Y3X2RlZmNv
bmZpZy4KPj4gCj4+IFJldmVydGluZyBpdCBtYWtlcyB0aGUga2VybmVscyBib290IGFnYWluLgo+
IAo+IENhbiB5b3UgY2hlY2sgaWYgaXQgYWN0dWFsbHkgaGFuZ3MgaW4gaW14X29jb3RwX2Nscl9l
cnJfaWZfc2V0KCksIG9yIGlmCj4gdGhlIGNsa19kaXNhYmxlX3VucHJlcGFyZSgpIGlzIHRoZSBj
dWxwcml0Pwo+IAo+IElmIHRoZSBjbG9jayBkaXNhYmxlIGhhbmdzIHRoZSBzeXN0ZW0gdGhlcmUg
aXMgYSBtaXNzaW5nIGNsb2NrCj4gcmVmZXJlbmNlIHNvbWV3aGVyZSBlbHNlIHRoYXQgd2UgbmVl
ZCB0byB0cmFjayBkb3duLgoKWWVzLCB0aGUgc3lzdGVtIGhhbmdzIGluIHRoZSBpbXg2cS1jcHVm
cmVxIGRyaXZlciwgaGVyZToKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvY3B1ZnJlcS9pbXg2cS1jcHVm
cmVxLmM/aD12NC4xOS45MyNuMzIyCgpLZXJuZWwgNS40Ljggd29ya3MgdGhhbmtzIHRvIGNvbW1p
dHM6CgoyNzMzZmIwZDA2OTkgKOKAnGNwdWZyZXE6IGlteDZxOiByZWFkIE9DT1RQIHRocm91Z2gg
bnZtZW0gZm9yIGlteDZ1bC9pbXg2dWxs4oCdKQo5MmYwZWIwOGM2NmEgKCJBUk06IGR0czogaW14
NnVsOiB1c2UgbnZtZW0tY2VsbHMgZm9yIGNwdSBzcGVlZCBncmFkaW5n4oCdKQoKUmVnYXJkcywK
Ci0tIApTw6liYXN0aWVuIFN6eW1hbnNraSwgQXJtYWRldXMgU3lzdGVtcwpTb2Z0d2FyZSBlbmdp
bmVlcgoKPiAKPiBSZWdhcmRzLAo+IEx1Y2FzCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
