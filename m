Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D733114424
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G8vJK2NMaOlmz63CRpiCyAP2BMQBY/Fn0src6HqsnxA=; b=IEZMcGt2N4+MgVRT+8fNg9Fbx
	4GyYS9EOwy7udk+XA66DGefmOtkBkFO42Mz98xL+KEYdOxsi41UeeUw1r/SHWtxgHiEgfUWvoQP2o
	eaGgPGdcqhsP+k2jTi/vUa9W/OXxJ1lBVkwOQgzTiZinjive8I9UzVj7Lfdw+qlCi89BOTcnV6nUJ
	xB+APSWYYW/82ECy6tdnVaJ10sg+XneaAN5VTerhUXweVnOgSlBkCQleUT8DuLnD35LH+oWCUuWXm
	QgJf6SEgxl/nkpHV/DxlGUdpcfs5pnYM4Btdi6IAyR0P1m4uOA5DgW12vkTqX0MLERkhhHE7IDLiT
	tLZ5LVgAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ictTe-0005sR-R8; Thu, 05 Dec 2019 15:55:38 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ictTW-0005rx-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 15:55:32 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ictTP-0000IK-0l; Thu, 05 Dec 2019 16:55:23 +0100
To: John Garry <john.garry@huawei.com>
Subject: Re: PSCI checker query
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 05 Dec 2019 15:55:22 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
References: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
Message-ID: <50f79699a2de7856eb201c8cc1dc51d7@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: john.garry@huawei.com, mark.rutland@arm.com,
 lorenzo.pieralisi@arm.com, wanghuiqiang@huawei.com, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_075530_936295_070D05D6 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Linuxarm <linuxarm@huawei.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9obiwKCk9uIDIwMTktMTItMDUgMTI6MzgsIEpvaG4gR2Fycnkgd3JvdGU6Cj4gSGkgZ3V5
cywKPgo+IEkgZW5hYmxlZCB0aGUga2VybmVsIFBTQ0kgY2hlY2tlciBhbmQgaXQga2lsbHMgbXkg
SHVhd2VpIEQwNToKClsuLi5dCgo+IFsgICAxOC41MjE0NTldIENQVTUyOiBzaHV0ZG93bgo+IFsg
ICAxOC41MjQyNTZdIHBzY2k6IENQVTUyIGtpbGxlZC4KPiBbICAgMTguNTI4NjM0XSBDUFU1Mzog
c2h1dGRvd24KPiBbICAgMTguNTMxNDYxXSBwc2NpOiBDUFU1MyBraWxsZWQuCj4gWyAgIDE4LjUz
NTg0N10gQ1BVNTQ6IHNodXRkb3duCj4gWyAgIDE4LjUzODY0NV0gcHNjaTogQ1BVNTQga2lsbGVk
Lgo+IFsgICAxOC41NDI5NzddIENQVTU1OiBzaHV0ZG93bgo+IFsgICAxOC41NDU3NjFdIHBzY2k6
IENQVTU1IGtpbGxlZC4KPiBbICAgMTguNTUwMDUwXSBDUFU1Njogc2h1dGRvd24KPiBbICAgMTgu
NTUyODM2XSBwc2NpOiBDUFU1NiBraWxsZWQuCj4gWyAgIDE4LjU1NzA1OV0gQ1BVNTc6IHNodXRk
b3duCj4gWyAgIDE4LjU1OTg1NV0gcHNjaTogQ1BVNTcga2lsbGVkLgo+IFsgICAxOC41NjQwMTJd
IENQVTU4OiBzaHV0ZG93bgo+IFsgICAxOC41NjY4MDldIHBzY2k6IENQVTU4IGtpbGxlZC4KPiBb
ICAgMTguNTcwOTQxXSBDUFU1OTogc2h1dGRvd24KPiBbICAgMTguNTczNzI1XSBwc2NpOiBDUFU1
OSBraWxsZWQuCj4gWyAgIDE4LjU3Nzc3OF0gQ1BVNjA6IHNodXRkb3duCj4gWyAgIDE4LjU4MDU3
Nl0gcHNjaTogQ1BVNjAga2lsbGVkLgo+IFsgICAxOC41ODQ1OTJdIENQVTYxOiBzaHV0ZG93bgo+
IFsgICAxOC41ODc0MDBdIHBzY2k6IENQVTYxIGtpbGxlZC4KPiBbICAgMTguNTkxMzUxXSBDUFU2
Mjogc2h1dGRvd24KPiBbICAgMTguNTk0MTQ4XSBwc2NpOiBDUFU2MiBraWxsZWQuCj4gWyAgIDE4
LjU5Nzk5N10gdXNiIDEtMi4xOiBuZXcgZnVsbC1zcGVlZCBVU0IgZGV2aWNlIG51bWJlciA0IHVz
aW5nCj4gZWhjaS1wbGF0Zm9ybQo+IHJ4eO+/vQo+ICAgICDvv71j77+977+9IO+/vSDvv73vv73v
v73vv73vv73vv71hQ++/vUJW77+977+9IDgl77+977+9IO+/ve+/ve+/ve+/ve+/ve+/vSDvv73v
v73vv73vv70gYu+/ve+/vVHvv73vv73vv73vv70+77+977+9eyjvv71aaEbvv70KPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiQO+/
ve+/vXIg77+9Cj4g1YTvv73vv70g77+9QO+/ve+/ve+/vVEKPgo+Cj4gW2N1dCByZW1haW5pbmcg
Z2FyYmFnZV0KCkkgZ2V0IHRoZSBzYW1lIGdhcmJhZ2UsIGFuZCBhIGNvdXBsZSBvZjoKClsgICAx
MC45ODYzMDNdIENQVTA6IGZhaWxlZCB0byBjb21lIG9ubGluZQpbICAgMTAuOTg2NDA1XSBDUFUw
OiBmYWlsZWQgaW4gdW5rbm93biBzdGF0ZSA6IDB4MApbICAgMTAuOTg2NTg1XSBwc2NpX2NoZWNr
ZXI6IEVycm9yIG9jY3VycmVkICgtNSkgd2hpbGUgdHJ5aW5nIHRvIHBvd2VyIAp1cCBDUFUgMApb
Li4uXQpbICAgMTIuNDY4ODY0XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0K
WyAgIDEyLjQ2ODk5NV0gV0FSTklORzogQ1BVOiAyIFBJRDogMSBhdCAKZHJpdmVycy9maXJtd2Fy
ZS9wc2NpL3BzY2lfY2hlY2tlci5jOjEzNSBkb3duX2FuZF91cF9jcHVzKzB4MWQ0LzB4MWY0Clsg
ICAxMi40NjkyNDJdIE1vZHVsZXMgbGlua2VkIGluOgpbICAgMTIuNDY5MzI0XSBDUFU6IDIgUElE
OiAxIENvbW06IHN3YXBwZXIvMCBUYWludGVkOiBHICAgICAgICBXICAgICAgICAKNS40LjAtMDAw
NzktZzBhODgxY2E1ZGU5YSAjMjE0ClsgICAxMi40Njk1NTZdIEhhcmR3YXJlIG5hbWU6IEh1YXdl
aSBUZWNobm9sb2dpZXMgQ28uLCBMdGQuIEQwNS9EMDUsIApCSU9TIEhpc2lsaWNvbiBEMDUgSVQy
MSBOZW1vIDIuMCBSQzAgMDQvMTgvMjAxOApbICAgMTIuNDY5ODE2XSBwc3RhdGU6IDIwMDAwMDA1
IChuekN2IGRhaWYgLVBBTiAtVUFPKQpbICAgMTIuNDY5OTM5XSBwYyA6IGRvd25fYW5kX3VwX2Nw
dXMrMHgxZDQvMHgxZjQKWyAgIDEyLjQ3MDA1MV0gbHIgOiBkb3duX2FuZF91cF9jcHVzKzB4MWI0
LzB4MWY0ClsgICAxMi40NzAxNjJdIHNwIDogZmZmZjgwMDAxMTcyYmNkMApbICAgMTIuNDcwMjQ2
XSB4Mjk6IGZmZmY4MDAwMTE3MmJjZDAgeDI4OiBmZmZmODAwMDEwZDczMDEwClsgICAxMi40NzAz
ODJdIHgyNzogZmZmZjAwMWZiNjUyNDY2MCB4MjY6IDAwMDAwMDAwMDAwMDAwMDEKWyAgIDEyLjQ3
MDUxOF0geDI1OiBmZmZmODAwMDEwZDcyZWIwIHgyNDogZmZmZjgwMDAxMTM0YTM5MApbICAgMTIu
NDcwNjU0XSB4MjM6IGZmZmY4MDAwMTE3MmJkOTggeDIyOiAwMDAwMDAwMDAwMDAwMTAwClsgICAx
Mi40NzA3ODldIHgyMTogMDAwMDAwMDAwMDAwMDAwMCB4MjA6IDAwMDAwMDAwMDAwMDAwMDEKWyAg
IDEyLjQ3MDkyNV0geDE5OiBmZmZmODAwMDExNzJiZDk4IHgxODogMDAwMDAwMDAwMDAwMDAwMQpb
ICAgMTIuNDcxMDYxXSB4MTc6IDAwMDAwMDAwMDAwMDAwMDAgeDE2OiAwMDAwMDAwMDAwMDAwMDAw
ClsgICAxMi40NzExOTZdIHgxNTogMDAwMDAwMDAwMDAwMDAwMCB4MTQ6IDAwMDAwMDAwMDAwMDAw
MDAKWyAgIDEyLjQ3MTMzMV0geDEzOiAwMDAwMDAwMDAwMDAwMDAwIHgxMjogMDAwMDAwMDAwMDAw
MDAwMApbICAgMTIuNDcxNDY3XSB4MTE6IDAwMDAwMDAwMDAwMDAwMDAgeDEwOiAwMDAwMDAwMDAw
MDAwYTYwClsgICAxMi40NzE2MDJdIHg5IDogZmZmZjgwMDAxMTcyYjk0MCB4OCA6IGZmZmYwMDJm
YjdlODE5NDAKWyAgIDEyLjQ3MTczN10geDcgOiAwMDAwMDAwMDAwMDAwMDAwIHg2IDogMDAwMDAw
MDAwMDAwMDAwMQpbICAgMTIuNDcxODczXSB4NSA6IGZmZmY4MDAwMTEzNWMwZTggeDQgOiAwMDAw
MDAwMDAwMDAwMDAwClsgICAxMi40NzIwMDhdIHgzIDogMDAwMDAwMDAwMDAwMDAwMCB4MiA6IDAw
MDAwMDAwMDAwMDAxMDAKWyAgIDEyLjQ3MjE0M10geDEgOiAwMDAwMDAwMDAwMDAwMDQwIHgwIDog
MDAwMDAwMDAwMDAwMDAzZgpbICAgMTIuNDcyMjc5XSBDYWxsIHRyYWNlOgpbICAgMTIuNDcyMzQ0
XSAgZG93bl9hbmRfdXBfY3B1cysweDFkNC8weDFmNApbICAgMTIuNDcyNDUxXSAgcHNjaV9jaGVj
a2VyKzB4MjUwLzB4NGNjClsgICAxMi40NzI1NDddICBkb19vbmVfaW5pdGNhbGwrMHg1NC8weDIy
MApbICAgMTIuNDcyNjQ2XSAga2VybmVsX2luaXRfZnJlZWFibGUrMHgxZWMvMHgyYjQKWyAgIDEy
LjQ3Mjc2MF0gIGtlcm5lbF9pbml0KzB4MTgvMHgxMDgKWyAgIDEyLjQ3Mjg1MV0gIHJldF9mcm9t
X2ZvcmsrMHgxMC8weDE4ClsgICAxMi40NzI5NDJdIC0tLVsgZW5kIHRyYWNlIGMzMjg4MTVlYjM5
ZmM1MDUgXS0tLQoKd2hlcmUgdGhlIHBzY2kgY2hlY2tlciBpcyB1bmhhcHB5IGFib3V0IHRoZSBu
dW1iZXIgb2YgQ1BVcy4gU28gQ1BVMCAKZG9lc24ndApjb21lIGJhY2sgdXAsIGFuZCBwcm9iYWJs
eSBoYXMgdGFrZW4gZG93biBhIGZldyB0aGluZ3Mgd2l0aCBpdC4KClRoZSBjb25zb2xlIHNlZW1z
IHRvIGJlIG9uIGEgcmF0aGVyIGJpemFycmUgYmF1ZCByYXRlLCBhbmQgSSBjYW4ndCAKbWFuYWdl
CnRvIHJlc2V0IGl0LiBPbiByZWJvb3QsIHRoZSBjb25zb2xlIHJlY292ZXJzIHRob3VnaCwgc28g
dGhlIGZpcm13YXJlIGlzCmFibGUgdG8gcmVzdG9yZSBzb21lIGxldmVsIG9mIHNhbml0eSAoeWF5
ISkuCgpZb3UgY2FuIGFsc28gcmVwcm9kdWNlIGl0IGFzOgoKcm9vdEBob3QtcG9vcDovaG9tZS9t
YXojIGVjaG8gMCA+L3N5cy9kZXZpY2VzL3N5c3RlbS9jcHUvY3B1MC9vbmxpbmUKcm9vdEBob3Qt
cG9vcDovaG9tZS9tYXojIGVjaG8gMSA+L3N5cy9kZXZpY2VzL3N5c3RlbS9jcHUvY3B1MC9vbmxp
bmUKYmFzaDogZWNobzogd3JpdGUgZXJyb3I6IElucHV0L291dHB1dCBlcnJvcgoKVGhlIGtlcm5l
bCBsb2cgc2F5czoKClsgICA0Ny4xNDUwMDZdIElSUSAyNTQ6IG5vIGxvbmdlciBhZmZpbmUgdG8g
Q1BVMApbICAgNDcuMTQ5MzgwXSBJUlEgMzgyOiBubyBsb25nZXIgYWZmaW5lIHRvIENQVTAKWyAg
IDQ3LjE1Mzg0NF0gQ1BVMDogc2h1dGRvd24KWyAgIDQ3LjE1NjU1MV0gcHNjaTogQ1BVMCBraWxs
ZWQuClsgICA2MC45MDQ1MzFdIENQVTA6IGZhaWxlZCB0byBjb21lIG9ubGluZQpbICAgNjAuOTA0
NjM0XSBDUFUwOiBmYWlsZWQgaW4gdW5rbm93biBzdGF0ZSA6IDB4MAoKYW5kIHRoZSBjb25zb2xl
IGlzIGRlYWQuIEkgZ3Vlc3Mgbm9ib2R5IGV2ZXIgdHVybmVkIENQVTAgb2ZmLi4uIDotLwoKICAg
ICAgICAgTS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
