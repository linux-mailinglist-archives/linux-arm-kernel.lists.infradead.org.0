Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7CE10B44B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPuboQnMUmhrk7UPuWsetUBkJYDoM7rDE51PQLW8RQg=; b=crS9vvGvcM3D3D
	YkPM53sRrE5OVwHETJTPRopsk5IxcA21vJ4U4NCz1sTFGkJTgwoZbGYQcBaGS1vJXDPocH7syShpV
	6VZOG/daak8KRxMsudJ+BENbQrR/6rJYyZJiGCMmBooY9+RH4Ie/0sSzD+pGbP+iyfRXJe32gk/GR
	ieKu55jUa5/TbWsqeQCuZLQE2Z6o33hQn5IiOK0Nc3Bsie/mKaKztwnqGhGT6kL0tJnTEPtbmcBO8
	3OJEElE1FlPGTPMt5b5vHg+1jne1XSV+Dd19ulTQr/uI5/o3Bz1oWn1c+uVCn3F3qWdMxMoovf7db
	gkMJe2lotfoeYQxLDSjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0yb-0007t4-M1; Wed, 27 Nov 2019 17:19:41 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0yP-0007sb-83
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:19:31 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0A0C920005;
 Wed, 27 Nov 2019 17:19:16 +0000 (UTC)
Date: Wed, 27 Nov 2019 18:19:15 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: AT91: sama5d2: lockdep splat in sama5d2_pmc_of_clk_init_driver()
Message-ID: <20191127171915.GK299836@piout.net>
References: <20190726145406.GA16744@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726145406.GA16744@qmqm.qmqm.pl>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_091929_565562_37BED72A 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Matthias Wieloch <matthias.wieloch@few-bauer.de>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyNi8wNy8yMDE5IDE2OjU0OjA2KzAyMDAsIE1pY2hhxYIgTWlyb3PFgmF3IHdyb3Rl
Ogo+IERlYXIgRGV2ZWxvcGVycwo+IAo+IFNpbmNlIHVwZ3JhZGluZyB0byB2NS4yLjIgZnJvbSB2
NS4xLnggSSBrZWVwIGdldHRpbmcgbG9ja2RlcCBjb21wbGFpbnRzCj4gKGJlbG93KSBmcm9tIGNs
ayBpbml0aWFsaXphdGlvbiBvbiBTQU1BNUQyIGJvYXJkLiBIYXZlIHlvdSBzZWVuIHRoaXM/Cj4g
Q2FuIHlvdSBoZWxwIG1lIGluIGZpbmRpbmcgYSBmaXg/Cj4gCgpJJ20gZ29pbmcgdG8gc2VuZCB0
aGF0IHBhdGNoIHRoYXQgZml4ZXMgaXQ6CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9z
YW1hNWQyLmMgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDIuYwppbmRleCAwZGUxMTA4NzM3ZGIu
LmZmN2UzZjcyNzA4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQyLmMKKysr
IGIvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQyLmMKQEAgLTE2Miw3ICsxNjIsNyBAQCBzdGF0aWMg
dm9pZCBfX2luaXQgc2FtYTVkMl9wbWNfc2V0dXAoc3RydWN0IGRldmljZV9ub2RlICpucCkKICAg
ICAgICAgICAgICAgIHJldHVybjsKICAgICAgICBtYWlueHRhbF9uYW1lID0gb2ZfY2xrX2dldF9w
YXJlbnRfbmFtZShucCwgaSk7CiAKLSAgICAgICByZWdtYXAgPSBzeXNjb25fbm9kZV90b19yZWdt
YXAobnApOworICAgICAgIHJlZ21hcCA9IGRldmljZV9ub2RlX3RvX3JlZ21hcChucCk7CiAgICAg
ICAgaWYgKElTX0VSUihyZWdtYXApKQogICAgICAgICAgICAgICAgcmV0dXJuOwogCgoKPiBCZXN0
IFJlZ2FyZHMsCj4gTWljaGHFgiBNaXJvc8WCYXcKPiAKPiAtLS0tLS0tIGRtZXNnIFNUQVJUIC0t
LS0tLQo+IAo+IFsgICAgMC4wMDAwMDBdIEJvb3RpbmcgTGludXggb24gcGh5c2ljYWwgQ1BVIDB4
MAo+IFsgICAgMC4wMDAwMDBdIExpbnV4IHZlcnNpb24gNS4yLjMrIChtaXJxQHFtcW0pIChnY2Mg
dmVyc2lvbiA4LjMuMCAoRGViaWFuIDguMy4wLTIpKSAjMzEyIEZyaSBKdWwgMjYgMTU6MzI6MDYg
Q0VTVCAyMDE5Cj4gWyAgICAwLjAwMDAwMF0gQ1BVOiBBUk12NyBQcm9jZXNzb3IgWzQxMGZjMDUx
XSByZXZpc2lvbiAxIChBUk12NyksIGNyPTEwYzUzYzdkCj4gWyAgICAwLjAwMDAwMF0gQ1BVOiBQ
SVBUIC8gVklQVCBub25hbGlhc2luZyBkYXRhIGNhY2hlLCBWSVBUIGFsaWFzaW5nIGluc3RydWN0
aW9uIGNhY2hlCj4gWyAgICAwLjAwMDAwMF0gT0Y6IGZkdDogTWFjaGluZSBtb2RlbDogU0FNQTVE
MiBwcm90bzMKPiBbICAgIDAuMDAwMDAwXSBwcmludGs6IGJvb3Rjb25zb2xlIFtlYXJseWNvbjBd
IGVuYWJsZWQKPiBbICAgIDAuMDAwMDAwXSBNZW1vcnkgcG9saWN5OiBEYXRhIGNhY2hlIHdyaXRl
YmFjawo+IFsgICAgMC4wMDAwMDBdIE9uIG5vZGUgMCB0b3RhbHBhZ2VzOiA2NTUzNgo+IFsgICAg
MC4wMDAwMDBdICAgTm9ybWFsIHpvbmU6IDUxMiBwYWdlcyB1c2VkIGZvciBtZW1tYXAKPiBbICAg
IDAuMDAwMDAwXSAgIE5vcm1hbCB6b25lOiAwIHBhZ2VzIHJlc2VydmVkCj4gWyAgICAwLjAwMDAw
MF0gICBOb3JtYWwgem9uZTogNjU1MzYgcGFnZXMsIExJRk8gYmF0Y2g6MTUKPiBbICAgIDAuMDAw
MDAwXSBDUFU6IEFsbCBDUFUocykgc3RhcnRlZCBpbiBTVkMgbW9kZS4KPiBbICAgIDAuMDAwMDAw
XSBwY3B1LWFsbG9jOiBzMCByMCBkMzI3NjggdTMyNzY4IGFsbG9jPTEqMzI3NjgKPiBbICAgIDAu
MDAwMDAwXSBwY3B1LWFsbG9jOiBbMF0gMCAKPiBbICAgIDAuMDAwMDAwXSBCdWlsdCAxIHpvbmVs
aXN0cywgbW9iaWxpdHkgZ3JvdXBpbmcgb24uICBUb3RhbCBwYWdlczogNjUwMjQKPiBbICAgIDAu
MDAwMDAwXSBLZXJuZWwgY29tbWFuZCBsaW5lOiBjb25zb2xlPXR0eVMwLDExNTIwMCByb290PS9k
ZXYvbW1jYmxrMHAxIHJvb3Rmc3R5cGU9c3F1YXNoZnMgZGVidWcgbG9nbGV2ZWw9OSBlYXJseXBy
aW50awo+IFsgICAgMC4wMDAwMDBdIERlbnRyeSBjYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDMy
NzY4IChvcmRlcjogNSwgMTMxMDcyIGJ5dGVzKQo+IFsgICAgMC4wMDAwMDBdIElub2RlLWNhY2hl
IGhhc2ggdGFibGUgZW50cmllczogMTYzODQgKG9yZGVyOiA0LCA2NTUzNiBieXRlcykKPiBbICAg
IDAuMDAwMDAwXSBNZW1vcnk6IDIzOTc1MksvMjYyMTQ0SyBhdmFpbGFibGUgKDgxOTJLIGtlcm5l
bCBjb2RlLCA1NzhLIHJ3ZGF0YSwgMjMxMksgcm9kYXRhLCAxMDI0SyBpbml0LCA3MTAzSyBic3Ms
IDIyMzkySyByZXNlcnZlZCwgMEsgY21hLXJlc2VydmVkKQo+IFsgICAgMC4wMDAwMDBdIGZ0cmFj
ZTogYWxsb2NhdGluZyAyNTQyOSBlbnRyaWVzIGluIDUwIHBhZ2VzCj4gWyAgICAwLjAwMDAwMF0g
UnVubmluZyBSQ1Ugc2VsZiB0ZXN0cwo+IFsgICAgMC4wMDAwMDBdIE5SX0lSUVM6IDE2LCBucl9p
cnFzOiAxNiwgcHJlYWxsb2NhdGVkIGlycXM6IDE2Cj4gWyAgICAwLjAwMDAwMF0gTDJDLTMxMCBJ
RCBwcmVmZXRjaCBlbmFibGVkLCBvZmZzZXQgMiBsaW5lcwo+IFsgICAgMC4wMDAwMDBdIEwyQy0z
MTAgZHluYW1pYyBjbG9jayBnYXRpbmcgZW5hYmxlZCwgc3RhbmRieSBtb2RlIGVuYWJsZWQKPiBb
ICAgIDAuMDAwMDAwXSBMMkMtMzEwIGNhY2hlIGNvbnRyb2xsZXIgZW5hYmxlZCwgOCB3YXlzLCAx
Mjgga0IKPiBbICAgIDAuMDAwMDAwXSBMMkMtMzEwOiBDQUNIRV9JRCAweDQxMDAwMGM5LCBBVVhf
Q1RSTCAweDM2MDIwMDAwCj4gWyAgICAwLjAwMDAwMF0gcmFuZG9tOiBnZXRfcmFuZG9tX2J5dGVz
IGNhbGxlZCBmcm9tIHN0YXJ0X2tlcm5lbCsweDJiOC8weDQ1MCB3aXRoIGNybmdfaW5pdD0wCj4g
Cj4gWyAgICAwLjAwMDAwMF0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09Cj4gWyAgICAwLjAwMDAwMF0gV0FSTklORzogcG9zc2libGUgY2lyY3Vs
YXIgbG9ja2luZyBkZXBlbmRlbmN5IGRldGVjdGVkCj4gWyAgICAwLjAwMDAwMF0gNS4yLjMrICMz
MTIgTm90IHRhaW50ZWQKPiBbICAgIDAuMDAwMDAwXSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBbICAgIDAuMDAwMDAwXSBzd2FwcGVyLzAg
aXMgdHJ5aW5nIHRvIGFjcXVpcmUgbG9jazoKPiBbICAgIDAuMDAwMDAwXSAocHRydmFsKSAocG1j
X3Bjcl9sb2NrKXsuLi4ufSwgYXQ6IGNsa19zYW05eDVfcGVyaXBoZXJhbF9lbmFibGUrMHgyOC8w
eGFjCj4gWyAgICAwLjAwMDAwMF0gCj4gICAgICAgICAgICAgICAgYnV0IHRhc2sgaXMgYWxyZWFk
eSBob2xkaW5nIGxvY2s6Cj4gWyAgICAwLjAwMDAwMF0gKHB0cnZhbCkgKGVuYWJsZV9sb2NrKXsu
Li4ufSwgYXQ6IGNsa19lbmFibGVfbG9jaysweDM4LzB4ZjQKPiBbICAgIDAuMDAwMDAwXSAKPiAg
ICAgICAgICAgICAgICB3aGljaCBsb2NrIGFscmVhZHkgZGVwZW5kcyBvbiB0aGUgbmV3IGxvY2su
Cj4gCj4gWyAgICAwLjAwMDAwMF0gCj4gICAgICAgICAgICAgICAgdGhlIGV4aXN0aW5nIGRlcGVu
ZGVuY3kgY2hhaW4gKGluIHJldmVyc2Ugb3JkZXIpIGlzOgo+IFsgICAgMC4wMDAwMDBdIAo+ICAg
ICAgICAgICAgICAgIC0+ICMyIChlbmFibGVfbG9jayl7Li4uLn06Cj4gWyAgICAwLjAwMDAwMF0g
ICAgICAgIGNsa19lbmFibGVfbG9jaysweDM4LzB4ZjQKPiBbICAgIDAuMDAwMDAwXSAgICAgICAg
Y2xrX2NvcmVfZW5hYmxlX2xvY2srMHgxNC8weDM0Cj4gWyAgICAwLjAwMDAwMF0gICAgICAgIHJl
Z21hcF9tbWlvX3JlYWQrMHg1NC8weDZjCj4gWyAgICAwLjAwMDAwMF0gICAgICAgIF9yZWdtYXBf
cmVhZCsweDY4LzB4MTYwCj4gWyAgICAwLjAwMDAwMF0gICAgICAgIHJlZ21hcF9yZWFkKzB4NDQv
MHg2NAo+IFsgICAgMC4wMDAwMDBdICAgICAgICBhdDkxX2Nsa19yZWdpc3Rlcl9zYW05eDVfbWFp
bisweGIwLzB4MTA4Cj4gWyAgICAwLjAwMDAwMF0gICAgICAgIHNhbWE1ZDJfcG1jX29mX2Nsa19p
bml0X2RyaXZlcisweDE1Yy8weDY1NAo+IFsgICAgMC4wMDAwMDBdICAgICAgICBvZl9jbGtfaW5p
dCsweDE1NC8weDIxYwo+IFsgICAgMC4wMDAwMDBdICAgICAgICB0aW1lX2luaXQrMHgzMC8weDM4
Cj4gWyAgICAwLjAwMDAwMF0gICAgICAgIHN0YXJ0X2tlcm5lbCsweDJlYy8weDQ1MAo+IFsgICAg
MC4wMDAwMDBdICAgICAgICAweDAKPiBbICAgIDAuMDAwMDAwXSAKPiAgICAgICAgICAgICAgICAt
PiAjMSAoc3lzY29uOjExMzooJnN5c2Nvbl9jb25maWcpLT5sb2NrKXsuLi4ufToKPiBbICAgIDAu
MDAwMDAwXSAgICAgICAgcmVnbWFwX2xvY2tfc3BpbmxvY2srMHgxNC8weDFjCj4gWyAgICAwLjAw
MDAwMF0gICAgICAgIHJlZ21hcF93cml0ZSsweDM0LzB4NjQKPiBbICAgIDAuMDAwMDAwXSAgICAg
ICAgY2xrX3NhbTl4NV9wZXJpcGhlcmFsX3JlY2FsY19yYXRlKzB4NjAvMHhmNAo+IFsgICAgMC4w
MDAwMDBdICAgICAgICBfX2Nsa19yZWdpc3RlcisweDI4Yy8weDdmNAo+IFsgICAgMC4wMDAwMDBd
ICAgICAgICBjbGtfaHdfcmVnaXN0ZXIrMHgyMC8weDJjCj4gWyAgICAwLjAwMDAwMF0gICAgICAg
IGF0OTFfY2xrX3JlZ2lzdGVyX3NhbTl4NV9wZXJpcGhlcmFsKzB4ZWMvMHgxNGMKPiBbICAgIDAu
MDAwMDAwXSAgICAgICAgc2FtYTVkMl9wbWNfb2ZfY2xrX2luaXRfZHJpdmVyKzB4NDJjLzB4NjU0
Cj4gWyAgICAwLjAwMDAwMF0gICAgICAgIG9mX2Nsa19pbml0KzB4MTU0LzB4MjFjCj4gWyAgICAw
LjAwMDAwMF0gICAgICAgIHRpbWVfaW5pdCsweDMwLzB4MzgKPiBbICAgIDAuMDAwMDAwXSAgICAg
ICAgc3RhcnRfa2VybmVsKzB4MmVjLzB4NDUwCj4gWyAgICAwLjAwMDAwMF0gICAgICAgIDB4MAo+
IFsgICAgMC4wMDAwMDBdIAo+ICAgICAgICAgICAgICAgIC0+ICMwIChwbWNfcGNyX2xvY2spey4u
Li59Ogo+IFsgICAgMC4wMDAwMDBdICAgICAgICBfcmF3X3NwaW5fbG9ja19pcnFzYXZlKzB4NDQv
MHg1OAo+IFsgICAgMC4wMDAwMDBdICAgICAgICBjbGtfc2FtOXg1X3BlcmlwaGVyYWxfZW5hYmxl
KzB4MjgvMHhhYwo+IFsgICAgMC4wMDAwMDBdICAgICAgICBjbGtfY29yZV9lbmFibGUrMHg4OC8w
eDI1OAo+IFsgICAgMC4wMDAwMDBdICAgICAgICBjbGtfY29yZV9lbmFibGVfbG9jaysweDIwLzB4
MzQKPiBbICAgIDAuMDAwMDAwXSAgICAgICAgY2xrX3ByZXBhcmVfZW5hYmxlKzB4MWMvMHgzNAo+
IFsgICAgMC4wMDAwMDBdICAgICAgICB0Y2JfY2xrc3JjX2luaXQrMHgxM2MvMHg0YjgKPiBbICAg
IDAuMDAwMDAwXSAgICAgICAgdGltZXJfcHJvYmUrMHg3OC8weGUwCj4gWyAgICAwLjAwMDAwMF0g
ICAgICAgIHN0YXJ0X2tlcm5lbCsweDJlYy8weDQ1MAo+IFsgICAgMC4wMDAwMDBdICAgICAgICAw
eDAKPiBbICAgIDAuMDAwMDAwXSAKPiAgICAgICAgICAgICAgICBvdGhlciBpbmZvIHRoYXQgbWln
aHQgaGVscCB1cyBkZWJ1ZyB0aGlzOgo+IAo+IFsgICAgMC4wMDAwMDBdIENoYWluIGV4aXN0cyBv
ZjoKPiAgICAgICAgICAgICAgICAgIHBtY19wY3JfbG9jayAtLT4gc3lzY29uOjExMzooJnN5c2Nv
bl9jb25maWcpLT5sb2NrIC0tPiBlbmFibGVfbG9jawo+IAo+IFsgICAgMC4wMDAwMDBdICBQb3Nz
aWJsZSB1bnNhZmUgbG9ja2luZyBzY2VuYXJpbzoKPiAKPiBbICAgIDAuMDAwMDAwXSAgICAgICAg
Q1BVMCAgICAgICAgICAgICAgICAgICAgQ1BVMQo+IFsgICAgMC4wMDAwMDBdICAgICAgICAtLS0t
ICAgICAgICAgICAgICAgICAgICAtLS0tCj4gWyAgICAwLjAwMDAwMF0gICBsb2NrKGVuYWJsZV9s
b2NrKTsKPiBbICAgIDAuMDAwMDAwXSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9j
ayhzeXNjb246MTEzOigmc3lzY29uX2NvbmZpZyktPmxvY2spOwo+IFsgICAgMC4wMDAwMDBdICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2NrKGVuYWJsZV9sb2NrKTsKPiBbICAgIDAu
MDAwMDAwXSAgIGxvY2socG1jX3Bjcl9sb2NrKTsKPiBbICAgIDAuMDAwMDAwXSAKPiAgICAgICAg
ICAgICAgICAgKioqIERFQURMT0NLICoqKgo+IAo+IFsgICAgMC4wMDAwMDBdIDEgbG9jayBoZWxk
IGJ5IHN3YXBwZXIvMDoKPiBbICAgIDAuMDAwMDAwXSAgIzA6IChwdHJ2YWwpIChlbmFibGVfbG9j
ayl7Li4uLn0sIGF0OiBjbGtfZW5hYmxlX2xvY2srMHgzOC8weGY0Cj4gWyAgICAwLjAwMDAwMF0g
Cj4gICAgICAgICAgICAgICAgc3RhY2sgYmFja3RyYWNlOgo+IFsgICAgMC4wMDAwMDBdIENQVTog
MCBQSUQ6IDAgQ29tbTogc3dhcHBlciBOb3QgdGFpbnRlZCA1LjIuMysgIzMxMgo+IFsgICAgMC4w
MDAwMDBdIEhhcmR3YXJlIG5hbWU6IEF0bWVsIFNBTUE1Cj4gWyAgICAwLjAwMDAwMF0gWzxjMDEw
ZWRjMD5dICh1bndpbmRfYmFja3RyYWNlKSBmcm9tIFs8YzAxMGMxYTg+XSAoc2hvd19zdGFjaysw
eDE4LzB4MWMpCj4gWyAgICAwLjAwMDAwMF0gWzxjMDEwYzFhOD5dIChzaG93X3N0YWNrKSBmcm9t
IFs8YzAxNTE1YzQ+XSAocHJpbnRfY2lyY3VsYXJfYnVnKzB4MjIwLzB4MjVjKQo+IFsgICAgMC4w
MDAwMDBdIFs8YzAxNTE1YzQ+XSAocHJpbnRfY2lyY3VsYXJfYnVnKSBmcm9tIFs8YzAxNTQyNjQ+
XSAoX19sb2NrX2FjcXVpcmUrMHgxNjAwLzB4MWE4MCkKPiBbICAgIDAuMDAwMDAwXSBbPGMwMTU0
MjY0Pl0gKF9fbG9ja19hY3F1aXJlKSBmcm9tIFs8YzAxNTRmMDg+XSAobG9ja19hY3F1aXJlKzB4
YzQvMHgxNjgpCj4gWyAgICAwLjAwMDAwMF0gWzxjMDE1NGYwOD5dIChsb2NrX2FjcXVpcmUpIGZy
b20gWzxjMDgzMzBhOD5dIChfcmF3X3NwaW5fbG9ja19pcnFzYXZlKzB4NDQvMHg1OCkKPiBbICAg
IDAuMDAwMDAwXSBbPGMwODMzMGE4Pl0gKF9yYXdfc3Bpbl9sb2NrX2lycXNhdmUpIGZyb20gWzxj
MDQyZmFiYz5dIChjbGtfc2FtOXg1X3BlcmlwaGVyYWxfZW5hYmxlKzB4MjgvMHhhYykKPiBbICAg
IDAuMDAwMDAwXSBbPGMwNDJmYWJjPl0gKGNsa19zYW05eDVfcGVyaXBoZXJhbF9lbmFibGUpIGZy
b20gWzxjMDQyNDk5MD5dIChjbGtfY29yZV9lbmFibGUrMHg4OC8weDI1OCkKPiBbICAgIDAuMDAw
MDAwXSBbPGMwNDI0OTkwPl0gKGNsa19jb3JlX2VuYWJsZSkgZnJvbSBbPGMwNDI1YzRjPl0gKGNs
a19jb3JlX2VuYWJsZV9sb2NrKzB4MjAvMHgzNCkKPiBbICAgIDAuMDAwMDAwXSBbPGMwNDI1YzRj
Pl0gKGNsa19jb3JlX2VuYWJsZV9sb2NrKSBmcm9tIFs8YzA1OGQ3ODg+XSAoY2xrX3ByZXBhcmVf
ZW5hYmxlKzB4MWMvMHgzNCkKPiBbICAgIDAuMDAwMDAwXSBbPGMwNThkNzg4Pl0gKGNsa19wcmVw
YXJlX2VuYWJsZSkgZnJvbSBbPGMwYzM1OGJjPl0gKHRjYl9jbGtzcmNfaW5pdCsweDEzYy8weDRi
OCkKPiBbICAgIDAuMDAwMDAwXSBbPGMwYzM1OGJjPl0gKHRjYl9jbGtzcmNfaW5pdCkgZnJvbSBb
PGMwYzM1NzE4Pl0gKHRpbWVyX3Byb2JlKzB4NzgvMHhlMCkKPiBbICAgIDAuMDAwMDAwXSBbPGMw
YzM1NzE4Pl0gKHRpbWVyX3Byb2JlKSBmcm9tIFs8YzBjMDBkYzQ+XSAoc3RhcnRfa2VybmVsKzB4
MmVjLzB4NDUwKQo+IFsgICAgMC4wMDAwMDBdIFs8YzBjMDBkYzQ+XSAoc3RhcnRfa2VybmVsKSBm
cm9tIFs8MDAwMDAwMDA+XSAoMHgwKQo+IFsgICAgMC4wMDAwMDBdIGNsb2Nrc291cmNlOiB0aW1l
ckBmODAwYzAwMDogbWFzazogMHhmZmZmZmZmZiBtYXhfY3ljbGVzOiAweGZmZmZmZmZmLCBtYXhf
aWRsZV9uczogMTg0MjE3ODc0MzI1IG5zCj4gWyAgICAwLjAwMDAyMV0gc2NoZWRfY2xvY2s6IDMy
IGJpdHMgYXQgMTBNSHosIHJlc29sdXRpb24gOTZucywgd3JhcHMgZXZlcnkgMjA2OTg2Mzc2MTQz
bnMKPiBbICAgIDAuMDA5NzYyXSBMb2NrIGRlcGVuZGVuY3kgdmFsaWRhdG9yOiBDb3B5cmlnaHQg
KGMpIDIwMDYgUmVkIEhhdCwgSW5jLiwgSW5nbyBNb2xuYXIKPiBbICAgIDAuMDE4MzY1XSAuLi4g
TUFYX0xPQ0tERVBfU1VCQ0xBU1NFUzogIDgKPiBbICAgIDAuMDIyOTExXSAuLi4gTUFYX0xPQ0tf
REVQVEg6ICAgICAgICAgIDQ4Cj4gWyAgICAwLjAyNzU0Nl0gLi4uIE1BWF9MT0NLREVQX0tFWVM6
ICAgICAgICA4MTkxCj4gWyAgICAwLjAzMjM2N10gLi4uIENMQVNTSEFTSF9TSVpFOiAgICAgICAg
ICA0MDk2Cj4gWyAgICAwLjAzNzE5MF0gLi4uIE1BWF9MT0NLREVQX0VOVFJJRVM6ICAgICAzMjc2
OAo+IFsgICAgMC4wNDIxMDldIC4uLiBNQVhfTE9DS0RFUF9DSEFJTlM6ICAgICAgNjU1MzYKPiBb
ICAgIDAuMDQ3MDI4XSAuLi4gQ0hBSU5IQVNIX1NJWkU6ICAgICAgICAgIDMyNzY4Cj4gWyAgICAw
LjA1MTk0NF0gIG1lbW9yeSB1c2VkIGJ5IGxvY2sgZGVwZW5kZW5jeSBpbmZvOiA0NDExIGtCCj4g
WyAgICAwLjA1NzkxM10gIHBlciB0YXNrLXN0cnVjdCBtZW1vcnkgZm9vdHByaW50OiAxNTM2IGJ5
dGVzCj4gWyAgICAwLjA2Mzk2NV0gQ2FsaWJyYXRpbmcgZGVsYXkgbG9vcC4uLiAzNTguNDAgQm9n
b01JUFMgKGxwaj0xNzkyMDApCj4gWyAgICAwLjA4MTEzM10gcGlkX21heDogZGVmYXVsdDogMzI3
NjggbWluaW11bTogMzAxCj4gWyAgICAwLjA4NjgzMV0gTW91bnQtY2FjaGUgaGFzaCB0YWJsZSBl
bnRyaWVzOiAxMDI0IChvcmRlcjogMCwgNDA5NiBieXRlcykKPiBbICAgIDAuMDk0MjAxXSBNb3Vu
dHBvaW50LWNhY2hlIGhhc2ggdGFibGUgZW50cmllczogMTAyNCAob3JkZXI6IDAsIDQwOTYgYnl0
ZXMpCj4gWyAgICAwLjEwNDMzMV0gQ1BVOiBUZXN0aW5nIHdyaXRlIGJ1ZmZlciBjb2hlcmVuY3k6
IG9rCj4gWyAgICAwLjExMjYxMV0gU2V0dGluZyB1cCBzdGF0aWMgaWRlbnRpdHkgbWFwIGZvciAw
eDIwMTAwMDAwIC0gMHgyMDEwMDA2MAo+IFsgICAgMC4xMjI3MDRdIGRldnRtcGZzOiBpbml0aWFs
aXplZAo+IFsgICAgMC4xNTEwNDddIFZGUCBzdXBwb3J0IHYwLjM6IGltcGxlbWVudG9yIDQxIGFy
Y2hpdGVjdHVyZSAyIHBhcnQgMzAgdmFyaWFudCA1IHJldiAxCj4gWyAgICAwLjE2MDQ2Nl0gY2xv
Y2tzb3VyY2U6IGppZmZpZXM6IG1hc2s6IDB4ZmZmZmZmZmYgbWF4X2N5Y2xlczogMHhmZmZmZmZm
ZiwgbWF4X2lkbGVfbnM6IDE5MTEyNjA0NDYyNzUwMDAgbnMKPiBbICAgIDAuMTcxMzQxXSBmdXRl
eCBoYXNoIHRhYmxlIGVudHJpZXM6IDI1NiAob3JkZXI6IDEsIDExMjY0IGJ5dGVzKQo+IFsgICAg
MC4xNzg3MzhdIHBpbmN0cmwgY29yZTogaW5pdGlhbGl6ZWQgcGluY3RybCBzdWJzeXN0ZW0KPiBb
ICAgIDAuMTg2NDA1XSByZWd1bGF0b3ItZHVtbXk6IG5vIHBhcmFtZXRlcnMsIGVuYWJsZWQKPiBb
ICAgIDAuMTk0MjA2XSBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE2Cj4gWyAgICAw
LjIwNzIwOF0gRE1BOiBwcmVhbGxvY2F0ZWQgMjU2IEtpQiBwb29sIGZvciBhdG9taWMgY29oZXJl
bnQgYWxsb2NhdGlvbnMKPiBbICAgIDAuMjkyMjIzXSBBVDkxOiBQTTogc3RhbmRieTogc3RhbmRi
eSwgc3VzcGVuZDogdWxwMAo+IFsgICAgMC4zMDAwOTJdIGF0bWVsX3RjYjogcHJvYmUgb2YgZjgw
MGMwMDAudGltZXIgZmFpbGVkIHdpdGggZXJyb3IgLTE2Cj4gWyAgICAwLjQyMjMxOV0gcmFuZG9t
OiBmYXN0IGluaXQgZG9uZQo+IFsgICAgMC40OTYyMThdIGF0X3hkbWFjIGYwMDEwMDAwLmRtYS1j
b250cm9sbGVyOiAxNiBjaGFubmVscywgbWFwcGVkIGF0IDB4KHB0cnZhbCkKPiBbICAgIDAuNTEx
NTczXSBhdF94ZG1hYyBmMDAwNDAwMC5kbWEtY29udHJvbGxlcjogMTYgY2hhbm5lbHMsIG1hcHBl
ZCBhdCAweChwdHJ2YWwpCj4gWyAgICAwLjUyMTczMV0gQVQ5MTogRGV0ZWN0ZWQgU29DIGZhbWls
eTogc2FtYTVkMgo+IFsgICAgMC41MjY3MzhdIEFUOTE6IERldGVjdGVkIFNvQzogc2FtYTVkMjcs
IHJldmlzaW9uIDIKPiBbLi4uXQoKLS0gCkFsZXhhbmRyZSBCZWxsb25pLCBCb290bGluCkVtYmVk
ZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
