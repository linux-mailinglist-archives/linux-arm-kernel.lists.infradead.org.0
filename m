Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DA51188F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z2/nssFeVvURWKCxOMLvvHoF4CCWcdJfzB4dSKXRdEU=; b=oJYE2Ec96NHWm8GMIfHEv5Q8o
	hG2ixGLhSrmjSLZwTRBeLsmOVv+xJijI2B3FxsqmogixZbk3ZQQaS2RPP3SVNzCQlyqWMgbR6ndSr
	MHrLOADCjN2rL6+PJbusmpWKIIEkNWfnYvizsV7bowZ+ikBw2d7sC0l2ieXb7/B2iLYrElP0k6nBC
	WMP8F9q2F3+cruH2bY2GozflVKZusDDtgJ1SoO7SV6zx0v9A9rrQ4iIJ7LBRJw0YtKBsm23PjJKto
	Iuo5ooK9wSlPgsnKZ93Vhn6WJhfdImUzV5gn++5wEZQgsPGd7HlyafJNnOy3TFsAvQs5imRj5cGgZ
	gNGGRKUkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ief3T-0008Ll-Pp; Tue, 10 Dec 2019 12:55:55 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ief3J-0008K9-0w; Tue, 10 Dec 2019 12:55:46 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ief3C-0003lx-3J; Tue, 10 Dec 2019 13:55:38 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xBACtbRu006041
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 10 Dec 2019 13:55:37 +0100
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
To: Anand Moon <linux.amoon@gmail.com>, Soeren Moch <smoch@web.de>
References: <20191209115746.12953-1-smoch@web.de>
 <CANAwSgS9ixhyOE2QYQ3CetA=BUVebMan2=9xBKF=U3YXAwCHNQ@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Organization: five technologies GmbH
Message-ID: <6e380c0a-007d-22db-af26-19defaf1ae83@fivetechno.de>
Date: Tue, 10 Dec 2019 13:55:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CANAwSgS9ixhyOE2QYQ3CetA=BUVebMan2=9xBKF=U3YXAwCHNQ@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1575982545;
 c4c86908; 
X-HE-SMSGID: 1ief3C-0003lx-3J
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_045545_211603_1A7B8C41 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5hbmQsCgpBbSAxMC4xMi4xOSB1bSAxMzo0MiBzY2hyaWViIEFuYW5kIE1vb246Cj4gSGkg
U29lcmVuLAo+IAo+IE9uIE1vbiwgOSBEZWMgMjAxOSBhdCAxNzoyOCwgU29lcmVuIE1vY2ggPHNt
b2NoQHdlYi5kZT4gd3JvdGU6Cj4+Cj4+IFdpdGggdGhlIGRldmljZSB0cmVlIHByb3BlcnR5ICJy
b2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlciIgd2UKPj4gZXhwbGljaXRseSByZXF1ZXN0
IHRvIHVzZSB0aGlzIFBNSUMgdG8gcG93ZXIgb2ZmIHRoZSBzeXN0ZW0uIFNvIGFsd2F5cwo+PiBy
ZWdpc3RlciBvdXIgcG93ZXJvZmYgZnVuY3Rpb24sIGV2ZW4gaWYgc29tZSBvdGhlciBoYW5kbGVy
IChwcm9iYWJseQo+PiBQU0NJIHBvd2Vyb2ZmKSB3YXMgcmVnaXN0ZXJlZCBiZWZvcmUuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFNvZXJlbiBNb2NoIDxzbW9jaEB3ZWIuZGU+Cj4+IC0tLQo+PiBDYzog
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPj4gQ2M6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+Cj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxpbnV4
LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4gLS0tCj4+ICBkcml2ZXJzL21mZC9yazgwOC5jIHwg
MTEgKystLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDkgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9yazgwOC5jIGIvZHJpdmVy
cy9tZmQvcms4MDguYwo+PiBpbmRleCBhNjlhNjc0MmVjZGMuLjYxNmU0NGU3ZWY5OCAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9tZmQvcms4MDguYwo+PiArKysgYi9kcml2ZXJzL21mZC9yazgwOC5j
Cj4+IEBAIC01NTAsNyArNTUwLDcgQEAgc3RhdGljIGludCByazgwOF9wcm9iZShzdHJ1Y3QgaTJj
X2NsaWVudCAqY2xpZW50LAo+PiAgICAgICAgIGNvbnN0IHN0cnVjdCBtZmRfY2VsbCAqY2VsbHM7
Cj4+ICAgICAgICAgaW50IG5yX3ByZV9pbml0X3JlZ3M7Cj4+ICAgICAgICAgaW50IG5yX2NlbGxz
Owo+PiAtICAgICAgIGludCBwbV9vZmYgPSAwLCBtc2IsIGxzYjsKPj4gKyAgICAgICBpbnQgbXNi
LCBsc2I7Cj4+ICAgICAgICAgdW5zaWduZWQgY2hhciBwbWljX2lkX21zYiwgcG1pY19pZF9sc2I7
Cj4+ICAgICAgICAgaW50IHJldDsKPj4gICAgICAgICBpbnQgaTsKPj4gQEAgLTY3NCwxNiArNjc0
LDkgQEAgc3RhdGljIGludCByazgwOF9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+
PiAgICAgICAgICAgICAgICAgZ290byBlcnJfaXJxOwo+PiAgICAgICAgIH0KPj4KPj4gLSAgICAg
ICBwbV9vZmYgPSBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsCj4+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgInJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyIik7Cj4+IC0g
ICAgICAgaWYgKHBtX29mZiAmJiAhcG1fcG93ZXJfb2ZmKSB7Cj4+ICsgICAgICAgaWYgKG9mX3By
b3BlcnR5X3JlYWRfYm9vbChucCwgInJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyIikp
IHsKPj4gICAgICAgICAgICAgICAgIHJrODA4X2kyY19jbGllbnQgPSBjbGllbnQ7Cj4+ICAgICAg
ICAgICAgICAgICBwbV9wb3dlcl9vZmYgPSByazgwOC0+cG1fcHdyb2ZmX2ZuOwo+PiAtICAgICAg
IH0KPj4gLQo+PiAtICAgICAgIGlmIChwbV9vZmYgJiYgIXBtX3Bvd2VyX29mZl9wcmVwYXJlKSB7
Cj4+IC0gICAgICAgICAgICAgICBpZiAoIXJrODA4X2kyY19jbGllbnQpCj4+IC0gICAgICAgICAg
ICAgICAgICAgICAgIHJrODA4X2kyY19jbGllbnQgPSBjbGllbnQ7Cj4+ICAgICAgICAgICAgICAg
ICBwbV9wb3dlcl9vZmZfcHJlcGFyZSA9IHJrODA4LT5wbV9wd3JvZmZfcHJlcF9mbjsKPj4gICAg
ICAgICB9Cj4+Cj4gCj4gSSBnYXZlIHRoaXMgYSB0cnkgb24gbXkgUm9jazk2MCBhbmQgT2Ryb2lk
IE4xCj4gYm90aCBnb3Qga2VybmVsIHBhbmljIGJlbG93LgoKSSBzZWUgdGhlIHNhbWUgb24gcmsz
Mzk5LXJvYy1wYy4KCj4gCj4gWyAgIDU4LjMwNTg2OF0geGhjaS1oY2QgeGhjaS1oY2QuMC5hdXRv
OiBVU0IgYnVzIDUgZGVyZWdpc3RlcmVkCj4gWyAgIDU4LjMwNjc0N10gcmVib290OiBQb3dlciBk
b3duCj4gWyAgIDU4LjMwNzEwNl0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0t
Cj4gWyAgIDU4LjMwNzUxMF0gTm8gYXRvbWljIEkyQyB0cmFuc2ZlciBoYW5kbGVyIGZvciAnaTJj
LTAnCj4gWyAgIDU4LjMwODAwN10gV0FSTklORzogQ1BVOiAwIFBJRDogMSBhdCBkcml2ZXJzL2ky
Yy9pMmMtY29yZS5oOjQxCj4gaTJjX3RyYW5zZmVyKzB4ZTQvMHhmOAo+IFsgICA1OC4zMDg2OTZd
IE1vZHVsZXMgbGlua2VkIGluOiBzbmRfc29jX2hkbWlfY29kZWMgZHdfaGRtaV9pMnNfYXVkaW8K
PiByb2NrY2hpcGRybSBhbmFsb2dpeF9kcCBicmNtZm1hYyBudm1lIGR3X21pcGlfZHNpIG52bWVf
Y29yZSBkd19oZG1pCj4gcGFuZnJvc3QgY2VjIGJyY211dGlsIGRybV9rbXNfaGVscGVyIGdwdV9z
Y2hlZCBjZmc4MDIxMSBoY2lfdWFydCBkcm0KPiBidGJjbSBjcmN0MTBkaWZfY2Ugc25kX3NvY19z
aW1wbGVfY2FyZCBibHVldG9vdGggc25kX3NvY19yb2NrY2hpcF9pMnMKPiBzbmRfc29jX3NpbXBs
ZV9jYXJkX3V0aWxzIHNuZF9zb2Nfcm9ja2NoaXBfcGNtIHBoeV9yb2NrY2hpcF9wY2llCj4gZWNk
aF9nZW5lcmljIHJ0Y19yazgwOCBlY2MgcGNpZV9yb2NrY2hpcF9ob3N0IHJma2lsbCByb2NrY2hp
cF90aGVybWFsCj4gaXBfdGFibGVzIHhfdGFibGVzIGlwdjYgbmZfZGVmcmFnX2lwdjYKPiBbICAg
NTguMzEyMTUwXSBDUFU6IDAgUElEOiAxIENvbW06IHNodXRkb3duIE5vdCB0YWludGVkIDUuNS4w
LXJjMS1kaXJ0eSAjMQo+IFsgICA1OC4zMTI3MjVdIEhhcmR3YXJlIG5hbWU6IDk2Ym9hcmRzIFJv
Y2s5NjAgKERUKQo+IFsgICA1OC4zMTMxMzFdIHBzdGF0ZTogNjAwMDAwODUgKG5aQ3YgZGFJZiAt
UEFOIC1VQU8pCj4gWyAgIDU4LjMxMzU1MV0gcGMgOiBpMmNfdHJhbnNmZXIrMHhlNC8weGY4Cj4g
WyAgIDU4LjMxMzg4OV0gbHIgOiBpMmNfdHJhbnNmZXIrMHhlNC8weGY4Cj4gWyAgIDU4LjMxNDIy
NV0gc3AgOiBmZmZmODAwMDEwMDRiYjAwCj4gWyAgIDU4LjMxNDUxNl0geDI5OiBmZmZmODAwMDEw
MDRiYjAwIHgyODogZmZmZjAwMDA3ZDIwODAwMAo+IFsgICA1OC4zMTQ5ODFdIHgyNzogMDAwMDAw
MDAwMDAwMDAwMCB4MjY6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgNTguMzE1NDQ2XSB4MjU6IDAw
MDAwMDAwMDAwMDAwMDAgeDI0OiAwMDAwMDAwMDAwMDAwMDA4Cj4gWyAgIDU4LjMxNTkxMF0geDIz
OiAwMDAwMDAwMDAwMDAwMDAwIHgyMjogZmZmZjgwMDAxMDA0YmM3NAo+IFsgICA1OC4zMTYzNzVd
IHgyMTogMDAwMDAwMDAwMDAwMDAwMiB4MjA6IGZmZmY4MDAwMTAwNGJiNTgKPiBbICAgNTguMzE2
ODQxXSB4MTk6IGZmZmYwMDAwNzg0ZjA4ODAgeDE4OiAwMDAwMDAwMDAwMDAwMDEwCj4gWyAgIDU4
LjMxNzMwNV0geDE3OiAwMDAwMDAwMDAwMDAwMDAxIHgxNjogMDAwMDAwMDAwMDAwMDAxOQo+IFsg
ICA1OC4zMTc3NzBdIHgxNTogZmZmZmZmZmZmZmZmZmZmZiB4MTQ6IGZmZmY4MDAwMTE4Mzk4YzgK
PiBbICAgNTguMzE4MjM2XSB4MTM6IGZmZmY4MDAwOTAwNGI4NjcgeDEyOiBmZmZmODAwMDEwMDRi
ODZmCj4gWyAgIDU4LjMxODcwMV0geDExOiBmZmZmODAwMDExODUxMDAwIHgxMDogZmZmZjgwMDAx
MDA0YjdmMAo+IFsgICA1OC4zMTkxNjZdIHg5IDogMDAwMDAwMDBmZmZmZmZkMCB4OCA6IGZmZmY4
MDAwMTA2OTlhZDgKPiBbICAgNTguMzE5NjMxXSB4NyA6IDAwMDAwMDAwMDAwMDAyNjUgeDYgOiBm
ZmZmODAwMDExYTIwYmU5Cj4gWyAgIDU4LjMyMDA5Nl0geDUgOiAwMDAwMDAwMDAwMDAwMDAwIHg0
IDogMDAwMDAwMDAwMDAwMDAwMAo+IFsgICA1OC4zMjA1NjFdIHgzIDogMDAwMDAwMDBmZmZmZmZm
ZiB4MiA6IGZmZmY4MDAwMTE4NTFhYjgKPiBbICAgNTguMzIxMDI2XSB4MSA6IGQzNzVjMGQ0ZjQ3
NTFmMDAgeDAgOiAwMDAwMDAwMDAwMDAwMDAwCj4gWyAgIDU4LjMyMTQ5MV0gQ2FsbCB0cmFjZToK
PiBbICAgNTguMzIxNzEwXSAgaTJjX3RyYW5zZmVyKzB4ZTQvMHhmOAo+IFsgICA1OC4zMjIwMjBd
ICByZWdtYXBfaTJjX3JlYWQrMHg1Yy8weDk4Cj4gWyAgIDU4LjMyMjM1MF0gIF9yZWdtYXBfcmF3
X3JlYWQrMHhjYy8weDEzOAo+IFsgICA1OC4zMjI2OTRdICBfcmVnbWFwX2J1c19yZWFkKzB4M2Mv
MHg3MAo+IFsgICA1OC4zMjMwMzRdICBfcmVnbWFwX3JlYWQrMHg2MC8weGUwCj4gWyAgIDU4LjMy
MzM0MV0gIF9yZWdtYXBfdXBkYXRlX2JpdHMrMHhjOC8weDEwOAo+IFsgICA1OC4zMjM3MDddICBy
ZWdtYXBfdXBkYXRlX2JpdHNfYmFzZSsweDYwLzB4OTAKPiBbICAgNTguMzI0MDk5XSAgcms4MDhf
ZGV2aWNlX3NodXRkb3duKzB4MzgvMHg1MAo+IFsgICA1OC4zMjQ0NzZdICBtYWNoaW5lX3Bvd2Vy
X29mZisweDI0LzB4MzAKPiBbICAgNTguMzI0ODIzXSAga2VybmVsX3Bvd2VyX29mZisweDY0LzB4
NzAKPiBbICAgNTguMzI1MTU5XSAgX19kb19zeXNfcmVib290KzB4MTVjLzB4MjQwCj4gWyAgIDU4
LjMyNTUwNF0gIF9fYXJtNjRfc3lzX3JlYm9vdCsweDIwLzB4MjgKPiBbICAgNTguMzI1ODU4XSAg
ZWwwX3N2Y19jb21tb24uY29uc3Rwcm9wLjIrMHg4OC8weDE1MAo+IFsgICA1OC4zMjYyNzldICBl
bDBfc3ZjX2hhbmRsZXIrMHgyMC8weDgwCj4gWyAgIDU4LjMyNjYwN10gIGVsMF9zeW5jX2hhbmRs
ZXIrMHgxMTgvMHgxODgKPiBbICAgNTguMzI2OTYwXSAgZWwwX3N5bmMrMHgxNDAvMHgxODAKPiBb
ICAgNTguMzI3MjUxXSAtLS1bIGVuZCB0cmFjZSBiMWRlMzlkMDNkNzI0ZDAxIF0tLS0KPiAKPiAt
QW5hbmQKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCj4gCgpHcnXDnywKLS0gCk1hcmt1cyBSZWljaGwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
