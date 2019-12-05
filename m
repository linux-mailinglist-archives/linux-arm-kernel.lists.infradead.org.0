Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BBC11452F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAv1yAuW5Pvjm86CfrrxXztk3TS/JFVCE4Hsg1r6hVQ=; b=dqZZqcul9Vg7Oj
	ZlZOf/kHJXdHc1RDITebBM0CKa8/3Zzzi/T7szloHljdQMDC0n7BnhLQq5c5ml1GSMM4bpK/WVTEq
	3yeegVaD+bfp40MGuGfkB43g5yZutfsuimLh/RRyVOkdOrdisMSFqmINm9SSJOa87Qf94SpQ831bJ
	YkVx0JZvcKiV7Pq+RLZovYa64V4Qj2bPlGMZ0U4jXMpItYZSI5WjxAvYi325KuH/FCDBI4QFf4GrT
	LqaPZfJpAK5v8/OYP2Wy/lSlwwp2XcLi2KVTWKF9UaPMvfEPH+mmE6wE4+RgbHW6E3XX17X8a2iba
	mpnc9kjTe7JmTtm0uObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuNu-0001Dd-Te; Thu, 05 Dec 2019 16:53:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuNn-0001DC-1m
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:53:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C32131B;
 Thu,  5 Dec 2019 08:53:37 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 732FC3F52E;
 Thu,  5 Dec 2019 08:53:36 -0800 (PST)
Date: Thu, 5 Dec 2019 16:53:31 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Marc Zyngier <maz@kernel.org>, John Garry <john.garry@huawei.com>
Subject: Re: PSCI checker query
Message-ID: <20191205165331.GA21023@bogus>
References: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
 <50f79699a2de7856eb201c8cc1dc51d7@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50f79699a2de7856eb201c8cc1dc51d7@www.loen.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_085339_180253_C61DFCFF 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 wanghuiqiang <wanghuiqiang@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMDM6NTU6MjJQTSArMDAwMCwgTWFyYyBaeW5naWVyIHdy
b3RlOgo+IEhpIEpvaG4sCj4KPiBPbiAyMDE5LTEyLTA1IDEyOjM4LCBKb2huIEdhcnJ5IHdyb3Rl
Ogo+ID4gSGkgZ3V5cywKPiA+Cj4gPiBJIGVuYWJsZWQgdGhlIGtlcm5lbCBQU0NJIGNoZWNrZXIg
YW5kIGl0IGtpbGxzIG15IEh1YXdlaSBEMDU6Cj4KPiBbLi4uXQo+Cj4gPiBbICAgMTguNTIxNDU5
XSBDUFU1Mjogc2h1dGRvd24KPiA+IFsgICAxOC41MjQyNTZdIHBzY2k6IENQVTUyIGtpbGxlZC4K
PiA+IFsgICAxOC41Mjg2MzRdIENQVTUzOiBzaHV0ZG93bgo+ID4gWyAgIDE4LjUzMTQ2MV0gcHNj
aTogQ1BVNTMga2lsbGVkLgo+ID4gWyAgIDE4LjUzNTg0N10gQ1BVNTQ6IHNodXRkb3duCj4gPiBb
ICAgMTguNTM4NjQ1XSBwc2NpOiBDUFU1NCBraWxsZWQuCj4gPiBbICAgMTguNTQyOTc3XSBDUFU1
NTogc2h1dGRvd24KPiA+IFsgICAxOC41NDU3NjFdIHBzY2k6IENQVTU1IGtpbGxlZC4KPiA+IFsg
ICAxOC41NTAwNTBdIENQVTU2OiBzaHV0ZG93bgo+ID4gWyAgIDE4LjU1MjgzNl0gcHNjaTogQ1BV
NTYga2lsbGVkLgo+ID4gWyAgIDE4LjU1NzA1OV0gQ1BVNTc6IHNodXRkb3duCj4gPiBbICAgMTgu
NTU5ODU1XSBwc2NpOiBDUFU1NyBraWxsZWQuCj4gPiBbICAgMTguNTY0MDEyXSBDUFU1ODogc2h1
dGRvd24KPiA+IFsgICAxOC41NjY4MDldIHBzY2k6IENQVTU4IGtpbGxlZC4KPiA+IFsgICAxOC41
NzA5NDFdIENQVTU5OiBzaHV0ZG93bgo+ID4gWyAgIDE4LjU3MzcyNV0gcHNjaTogQ1BVNTkga2ls
bGVkLgo+ID4gWyAgIDE4LjU3Nzc3OF0gQ1BVNjA6IHNodXRkb3duCj4gPiBbICAgMTguNTgwNTc2
XSBwc2NpOiBDUFU2MCBraWxsZWQuCj4gPiBbICAgMTguNTg0NTkyXSBDUFU2MTogc2h1dGRvd24K
PiA+IFsgICAxOC41ODc0MDBdIHBzY2k6IENQVTYxIGtpbGxlZC4KPiA+IFsgICAxOC41OTEzNTFd
IENQVTYyOiBzaHV0ZG93bgo+ID4gWyAgIDE4LjU5NDE0OF0gcHNjaTogQ1BVNjIga2lsbGVkLgo+
ID4gWyAgIDE4LjU5Nzk5N10gdXNiIDEtMi4xOiBuZXcgZnVsbC1zcGVlZCBVU0IgZGV2aWNlIG51
bWJlciA0IHVzaW5nCj4gPiBlaGNpLXBsYXRmb3JtCj4gPiByeHjvv70KPiA+ICAgICDvv71j77+9
77+9IO+/vSDvv73vv73vv73vv73vv73vv71hQ++/vUJW77+977+9IDgl77+977+9IO+/ve+/ve+/
ve+/ve+/ve+/vSDvv73vv73vv73vv70gYu+/ve+/vVHvv73vv73vv73vv70+77+977+9eyjvv71a
aEbvv70KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJA77+977+9ciDvv70KPiA+INWE77+977+9IO+/vUDvv73vv73vv71RCj4g
Pgo+ID4KPiA+IFtjdXQgcmVtYWluaW5nIGdhcmJhZ2VdCj4KPiBJIGdldCB0aGUgc2FtZSBnYXJi
YWdlLCBhbmQgYSBjb3VwbGUgb2Y6Cj4KPiBbICAgMTAuOTg2MzAzXSBDUFUwOiBmYWlsZWQgdG8g
Y29tZSBvbmxpbmUKPiBbICAgMTAuOTg2NDA1XSBDUFUwOiBmYWlsZWQgaW4gdW5rbm93biBzdGF0
ZSA6IDB4MAo+IFsgICAxMC45ODY1ODVdIHBzY2lfY2hlY2tlcjogRXJyb3Igb2NjdXJyZWQgKC01
KSB3aGlsZSB0cnlpbmcgdG8gcG93ZXIgdXAKPiBDUFUgMAo+IFsuLi5dCj4gWyAgIDEyLjQ2ODg2
NF0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gWyAgIDEyLjQ2ODk5NV0g
V0FSTklORzogQ1BVOiAyIFBJRDogMSBhdAo+IGRyaXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpX2No
ZWNrZXIuYzoxMzUgZG93bl9hbmRfdXBfY3B1cysweDFkNC8weDFmNAo+IFsgICAxMi40NjkyNDJd
IE1vZHVsZXMgbGlua2VkIGluOgo+IFsgICAxMi40NjkzMjRdIENQVTogMiBQSUQ6IDEgQ29tbTog
c3dhcHBlci8wIFRhaW50ZWQ6IEcgICAgICAgIFcKPiA1LjQuMC0wMDA3OS1nMGE4ODFjYTVkZTlh
ICMyMTQKPiBbICAgMTIuNDY5NTU2XSBIYXJkd2FyZSBuYW1lOiBIdWF3ZWkgVGVjaG5vbG9naWVz
IENvLiwgTHRkLiBEMDUvRDA1LCBCSU9TCj4gSGlzaWxpY29uIEQwNSBJVDIxIE5lbW8gMi4wIFJD
MCAwNC8xOC8yMDE4Cj4gWyAgIDEyLjQ2OTgxNl0gcHN0YXRlOiAyMDAwMDAwNSAobnpDdiBkYWlm
IC1QQU4gLVVBTykKPiBbICAgMTIuNDY5OTM5XSBwYyA6IGRvd25fYW5kX3VwX2NwdXMrMHgxZDQv
MHgxZjQKPiBbICAgMTIuNDcwMDUxXSBsciA6IGRvd25fYW5kX3VwX2NwdXMrMHgxYjQvMHgxZjQK
PiBbICAgMTIuNDcwMTYyXSBzcCA6IGZmZmY4MDAwMTE3MmJjZDAKPiBbICAgMTIuNDcwMjQ2XSB4
Mjk6IGZmZmY4MDAwMTE3MmJjZDAgeDI4OiBmZmZmODAwMDEwZDczMDEwCj4gWyAgIDEyLjQ3MDM4
Ml0geDI3OiBmZmZmMDAxZmI2NTI0NjYwIHgyNjogMDAwMDAwMDAwMDAwMDAwMQo+IFsgICAxMi40
NzA1MThdIHgyNTogZmZmZjgwMDAxMGQ3MmViMCB4MjQ6IGZmZmY4MDAwMTEzNGEzOTAKPiBbICAg
MTIuNDcwNjU0XSB4MjM6IGZmZmY4MDAwMTE3MmJkOTggeDIyOiAwMDAwMDAwMDAwMDAwMTAwCj4g
WyAgIDEyLjQ3MDc4OV0geDIxOiAwMDAwMDAwMDAwMDAwMDAwIHgyMDogMDAwMDAwMDAwMDAwMDAw
MQo+IFsgICAxMi40NzA5MjVdIHgxOTogZmZmZjgwMDAxMTcyYmQ5OCB4MTg6IDAwMDAwMDAwMDAw
MDAwMDEKPiBbICAgMTIuNDcxMDYxXSB4MTc6IDAwMDAwMDAwMDAwMDAwMDAgeDE2OiAwMDAwMDAw
MDAwMDAwMDAwCj4gWyAgIDEyLjQ3MTE5Nl0geDE1OiAwMDAwMDAwMDAwMDAwMDAwIHgxNDogMDAw
MDAwMDAwMDAwMDAwMAo+IFsgICAxMi40NzEzMzFdIHgxMzogMDAwMDAwMDAwMDAwMDAwMCB4MTI6
IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgMTIuNDcxNDY3XSB4MTE6IDAwMDAwMDAwMDAwMDAwMDAg
eDEwOiAwMDAwMDAwMDAwMDAwYTYwCj4gWyAgIDEyLjQ3MTYwMl0geDkgOiBmZmZmODAwMDExNzJi
OTQwIHg4IDogZmZmZjAwMmZiN2U4MTk0MAo+IFsgICAxMi40NzE3MzddIHg3IDogMDAwMDAwMDAw
MDAwMDAwMCB4NiA6IDAwMDAwMDAwMDAwMDAwMDEKPiBbICAgMTIuNDcxODczXSB4NSA6IGZmZmY4
MDAwMTEzNWMwZTggeDQgOiAwMDAwMDAwMDAwMDAwMDAwCj4gWyAgIDEyLjQ3MjAwOF0geDMgOiAw
MDAwMDAwMDAwMDAwMDAwIHgyIDogMDAwMDAwMDAwMDAwMDEwMAo+IFsgICAxMi40NzIxNDNdIHgx
IDogMDAwMDAwMDAwMDAwMDA0MCB4MCA6IDAwMDAwMDAwMDAwMDAwM2YKPiBbICAgMTIuNDcyMjc5
XSBDYWxsIHRyYWNlOgo+IFsgICAxMi40NzIzNDRdICBkb3duX2FuZF91cF9jcHVzKzB4MWQ0LzB4
MWY0Cj4gWyAgIDEyLjQ3MjQ1MV0gIHBzY2lfY2hlY2tlcisweDI1MC8weDRjYwo+IFsgICAxMi40
NzI1NDddICBkb19vbmVfaW5pdGNhbGwrMHg1NC8weDIyMAo+IFsgICAxMi40NzI2NDZdICBrZXJu
ZWxfaW5pdF9mcmVlYWJsZSsweDFlYy8weDJiNAo+IFsgICAxMi40NzI3NjBdICBrZXJuZWxfaW5p
dCsweDE4LzB4MTA4Cj4gWyAgIDEyLjQ3Mjg1MV0gIHJldF9mcm9tX2ZvcmsrMHgxMC8weDE4Cj4g
WyAgIDEyLjQ3Mjk0Ml0gLS0tWyBlbmQgdHJhY2UgYzMyODgxNWViMzlmYzUwNSBdLS0tCj4KPiB3
aGVyZSB0aGUgcHNjaSBjaGVja2VyIGlzIHVuaGFwcHkgYWJvdXQgdGhlIG51bWJlciBvZiBDUFVz
LiBTbyBDUFUwIGRvZXNuJ3QKPiBjb21lIGJhY2sgdXAsIGFuZCBwcm9iYWJseSBoYXMgdGFrZW4g
ZG93biBhIGZldyB0aGluZ3Mgd2l0aCBpdC4KPgo+IFRoZSBjb25zb2xlIHNlZW1zIHRvIGJlIG9u
IGEgcmF0aGVyIGJpemFycmUgYmF1ZCByYXRlLCBhbmQgSSBjYW4ndCBtYW5hZ2UKPiB0byByZXNl
dCBpdC4gT24gcmVib290LCB0aGUgY29uc29sZSByZWNvdmVycyB0aG91Z2gsIHNvIHRoZSBmaXJt
d2FyZSBpcwo+IGFibGUgdG8gcmVzdG9yZSBzb21lIGxldmVsIG9mIHNhbml0eSAoeWF5ISkuCj4K
PiBZb3UgY2FuIGFsc28gcmVwcm9kdWNlIGl0IGFzOgo+Cj4gcm9vdEBob3QtcG9vcDovaG9tZS9t
YXojIGVjaG8gMCA+L3N5cy9kZXZpY2VzL3N5c3RlbS9jcHUvY3B1MC9vbmxpbmUKPiByb290QGhv
dC1wb29wOi9ob21lL21heiMgZWNobyAxID4vc3lzL2RldmljZXMvc3lzdGVtL2NwdS9jcHUwL29u
bGluZQo+IGJhc2g6IGVjaG86IHdyaXRlIGVycm9yOiBJbnB1dC9vdXRwdXQgZXJyb3IKPgo+IFRo
ZSBrZXJuZWwgbG9nIHNheXM6Cj4KPiBbICAgNDcuMTQ1MDA2XSBJUlEgMjU0OiBubyBsb25nZXIg
YWZmaW5lIHRvIENQVTAKPiBbICAgNDcuMTQ5MzgwXSBJUlEgMzgyOiBubyBsb25nZXIgYWZmaW5l
IHRvIENQVTAKPiBbICAgNDcuMTUzODQ0XSBDUFUwOiBzaHV0ZG93bgo+IFsgICA0Ny4xNTY1NTFd
IHBzY2k6IENQVTAga2lsbGVkLgo+IFsgICA2MC45MDQ1MzFdIENQVTA6IGZhaWxlZCB0byBjb21l
IG9ubGluZQo+IFsgICA2MC45MDQ2MzRdIENQVTA6IGZhaWxlZCBpbiB1bmtub3duIHN0YXRlIDog
MHgwCj4KPiBhbmQgdGhlIGNvbnNvbGUgaXMgZGVhZC4gSSBndWVzcyBub2JvZHkgZXZlciB0dXJu
ZWQgQ1BVMCBvZmYuLi4gOi0vCj4KCkZvciBhIG1vbWVudCwgSSB0aG91Z2h0IFBTQ0kgY2hlY2tl
ciBmb3VuZCBzb21lIGlzc3VlIHRoYXQgbm9ybWFsIGhvdHBsdWcKb3BlcmF0aW9uIGRpZG4ndC4g
R3Vlc3Mgd2hhdCwgSSBhbSB3cm9uZyA6KS4gTm9ybWFsIEhQIHRlc3RzIGZyb20gdGhlCmtlcm5l
bCB0cmlnZ2VycyB0aGlzLCB3aGljaCBpcyBnb29kIGFzIG5vdCBhbGwgbm9ybWFsbHkgcnVuIHRo
aXMgUFNDSQp0ZXN0cy4KCkFueXdheXMsIGxvb2tzIGxpa2UgdGhlIGZpcm13YXJlIGlzIGJyb2tl
bi4gSWYgdGhlcmUgYXJlIGhhcmR3YXJlCmxpbWl0YXRpb25zLCB0aGUgZmlybXdhcmUgY2FuIGZh
aWwgdG8gcG93ZXJvZmYgYXMgYSB3b3JrYXJvdW5kLiBJZgppdCBpcyBhbnl0aGluZyB0byBkbyB3
aXRoIHNvbWUgc2VjdXJlIHNlcnZpY2Ugb3IgT1MsIHdlIGhhdmUgUFNDSQp3YXlzIHRvIGNvbnZl
eSB0aGUgc2FtZSBhbmQgd2Ugbm93IGF2b2lkIHN0YXJ0aW5nIHRoZSBDUFUgZG93biBzZXF1ZW5j
ZQpieSBtYXJraW5nIGl0IG5vdCBob3RwbHVnZ2FibGUuIFBTQ0kgdGVzdHMgbWF5IG5vdCBiZSBh
YmxlIHRvIHVzZSBpdApidXQgSSBleHBlY3QgdGhlIGZpcm13YXJlIHRvIHJldHVybiBlcnJvciBm
b3IgQ1BVX0RPV04gaW4gdGhhdCBjYXNlLgoKLS0KUmVnYXJkcywKU3VkZWVwCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
