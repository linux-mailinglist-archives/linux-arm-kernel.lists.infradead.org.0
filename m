Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35862EACB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lYtLZzupx54E8bVRM76VK/zRXMdBOEYaJaFFO4YgvR0=; b=UbnMH/1jgPILpWX3Rut+Vv0Ks
	oLoBdlawBOkCN2QpmnfxmrYEnRBphi2tYBu1+vYdJtv01SlMNAVn6bQlxuupaX+mpQK4UXVlduPjZ
	mEy+aY6XADG+Wj/Zl1AV0Mp92ZhE9RV+g43po7ExaLh4FYNWM94qJBEAbqPh4OzSCcR1l/bzSp0H9
	nQZLDA9ikKXLIo8I+MuxZ2pKd5kJpahvKkurfNAz0wyFLSccfEJ9CSHjTurS9Os6jcMYHp/OCi/6i
	Oc7VdpbXGvbFLDysHqy1irMa2La99aNWyFfWbcy1idUXlWneJEQBCUT6U4MHWVMCLPECo7Brq4P3w
	4VQiG5xug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWB48-0006Af-3f; Thu, 30 May 2019 02:45:16 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWB40-0005wE-MJ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 02:45:10 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cef43b10000>; Wed, 29 May 2019 19:45:05 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 19:45:06 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 29 May 2019 19:45:06 -0700
Received: from [10.19.108.132] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 30 May
 2019 02:45:03 +0000
Subject: Re: [PATCH V4 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-5-josephl@nvidia.com>
 <403181d4-100b-679e-b1d8-c052c6d1f3ac@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <2f9722b4-df92-546b-9659-3b02768bbe41@nvidia.com>
Date: Thu, 30 May 2019 10:45:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <403181d4-100b-679e-b1d8-c052c6d1f3ac@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559184305; bh=X81QZH04L/9VwJkBELPZ7Robj6X5rUPnGeUKzjJL0b4=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=VYy3Fv7XH8DpzAaD+mTxdoLpSnr31ONSTg+14nw5CQ7BCnTPgzW2oDFImT4sg06dW
 VetDx8WwpXfvU2YK8rQLsJHW8lTUClcJaPl3Bkdk8h/PvNLDfV/ixNGReewyFP+s5A
 M/uDa+kcVbU9xFhRsF5mVydroui/0B9Py/J+cz5PNwOKgDeq7C0xPPfjtHYVx1TNDP
 y+CQzEMgA0EXJRmC6peOYFe518Ys0x5Icxc34dhRRjKgrGIy/lroNcDHjx1PXdQ9BP
 amz8V9A/Zpwii/HaIzBXvwXdOKijcM/IvP3sJtUP1cffiUqzFr/IByt2z/ftwbxrc7
 yaOPamiQ2CT2g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_194508_750631_AEB425B6 
X-CRM114-Status: GOOD (  28.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yOS8xOSA5OjI2IFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjkuMDUuMjAxOSAx
MToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4+IFRoaXMgaXMgdGhlIGluaXRpYWwgcGF0Y2gg
Zm9yIFRlZ3JhMjEwIEVNQyBjbG9jayBkcml2ZXIsIHdoaWNoIGRvZXNuJ3QKPj4gaW5jbHVkZSB0
aGUgc3VwcG9ydCBjb2RlIGFuZCBkZXRhaWwgc2VxdWVuY2UgZm9yIGNsb2NrIHNjYWxpbmcgeWV0
Lgo+Pgo+PiBUaGUgZHJpdmVyIGlzIGRlc2lnbmVkIHRvIHN1cHBvcnQgTFBERFI0IFNEUkFNLiBC
ZWNhdXNlIG9mIHRoZSBMUEREUjQKPj4gZGV2aWNlcyBuZWVkIHRvIGRvIGluaXRpYWwgdGltZSB0
cmFpbmluZyBiZWZvcmUgaXQgY2FuIGJlIHVzZWQsIHRoZQo+PiBmaXJtd2FyZSB3aWxsIGhlbHAg
dG8gZG8gdGhhdCBhdCBlYXJseSBib290IHN0YWdlLiBUaGVuLCB0aGUgdHJhaW5lZAo+PiB0YWJs
ZSBvZiB0aGUgcmF0ZXMgd2Ugc3VwcG9ydCB3aWxsIHBhc3MgdG8gdGhlIGtlcm5lbCB2aWEgRFQu
IFNvIHRoZQo+PiBkcml2ZXIgY2FuIGdldCB0aGUgdHJhaW5lZCB0YWJsZSBmb3IgY2xvY2sgc2Nh
bGluZyBzdXBwb3J0Lgo+Pgo+PiBGb3IgdGhlIGhpZ2hlciByYXRlIHN1cHBvcnQgKGFib3ZlIDgw
ME1IeiksIHRoZSBwZXJpb2RpYyB0cmFpbmluZyBpcwo+PiBuZWVkZWQgZm9yIHRoZSB0aW1pbmcg
Y29tcGVuc2F0aW9uLiBTbyBiYXNpY2FsbHksIHR3byBtZXRob2RvbG9naWVzIGZvcgo+PiBjbG9j
ayBzY2FsaW5nIGFyZSBzdXBwb3J0ZWQsIG9uZSBpcyBmb2xsb3dpbmcgdGhlIGNsb2NrIGNoYW5n
aW5nCj4+IHNlcXVlbmNlIHRvIHVwZGF0ZSB0aGUgRU1DIHRhYmxlIHRvIEVNQyByZWdpc3RlcnMg
YW5kIGFub3RoZXIgaXMgaWYgdGhlCj4+IHJhdGUgbmVlZHMgcGVyaW9kaWMgdHJhaW5pbmcsIHRo
ZW4gd2Ugd2lsbCBzdGFydCBhIHRpbWVyIHRvIGRvIHRoYXQKPj4gcGVyaW9kaWNhbGx5IHVudGls
IGl0IHNjYWxlcyB0byB0aGUgbG93ZXIgcmF0ZS4KPj4KPj4gQmFzZWQgb24gdGhlIHdvcmsgb2Yg
UGV0ZXIgRGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+PiAtLS0KPj4gdjQ6Cj4+
IC0gcmVtb3ZlIHRoZSBzdGF0aXN0aWMgZGF0YSBpbiBkZWJ1Z2ZzCj4+IC0gYWRkIHRlZ3JhMjEw
X2Nsa19yZWdpc3Rlcl9lbWMgQVBJIHRvIG1ha2UgaXQgY29tcGF0aWJsZSB3aXRoIHRoZSBjYXNl
Cj4+ICAgIGlmIHRoZSBrZXJuZWwgc3RpbGwgdXNlcyB0aGUgb2xkZXIgRFRCIHdoaWNoIGRvZXNu
J3QgaGF2ZSBFTUMgbm9kZS4KPj4gICAgQW5kIHRoZSBNQyBhbmQgRU1DIGNsb2NrIGNhbiBzdGls
bCBiZSByZWdpc3RlcmVkIHN1Y2Nlc3NmdWxseS4KPj4gdjM6Cj4+IC0gYWRkcmVzcyBhbG1vc3Qg
YWxsIHRoZSBjb21tZW50cyBmcm9tIHRoZSBwcmV2aW91cyB2ZXJzaW9uCj4+IC0gcmVtb3ZlIHRo
ZSBEVCBwYXJzZXIgb2YgRU1DIHRhYmxlCj4+IC0gVGhlIEVNQyB0YWJsZSBpcyBwYXNzaW5nIGFz
IGEgYmluYXJ5IGJsb2Igbm93Lgo+PiAtLS0KPj4gICBkcml2ZXJzL21lbW9yeS90ZWdyYS9LY29u
ZmlnICAgICAgICB8ICAxMCArCj4+ICAgZHJpdmVycy9tZW1vcnkvdGVncmEvTWFrZWZpbGUgICAg
ICAgfCAgIDEgKwo+PiAgIGRyaXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVtYy5jIHwgNjcx
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICBkcml2ZXJzL21lbW9yeS90ZWdyYS90
ZWdyYTIxMC1lbWMuaCB8IDE1NiArKysrKysrCj4+ICAgaW5jbHVkZS9zb2MvdGVncmEvZW1jLmgg
ICAgICAgICAgICAgfCAgIDIgKwo+PiAgIDUgZmlsZXMgY2hhbmdlZCwgODQwIGluc2VydGlvbnMo
KykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEyMTAt
ZW1jLmMKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEy
MTAtZW1jLmgKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL0tjb25maWcg
Yi9kcml2ZXJzL21lbW9yeS90ZWdyYS9LY29uZmlnCj4+IGluZGV4IDQ2ODAxMjRkZGNhYi4uOWQw
NTFiY2RiZWUzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lbW9yeS90ZWdyYS9LY29uZmlnCj4+
ICsrKyBiL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL0tjb25maWcKPj4gQEAgLTI2LDMgKzI2LDEzIEBA
IGNvbmZpZyBURUdSQTEyNF9FTUMKPj4gICAJICBUZWdyYTEyNCBjaGlwcy4gVGhlIEVNQyBjb250
cm9scyB0aGUgZXh0ZXJuYWwgRFJBTSBvbiB0aGUgYm9hcmQuCj4+ICAgCSAgVGhpcyBkcml2ZXIg
aXMgcmVxdWlyZWQgdG8gY2hhbmdlIG1lbW9yeSB0aW1pbmdzIC8gY2xvY2sgcmF0ZSBmb3IKPj4g
ICAJICBleHRlcm5hbCBtZW1vcnkuCj4+ICsKPj4gK2NvbmZpZyBURUdSQTIxMF9FTUMKPj4gKwli
b29sICJOVklESUEgVGVncmEyMTAgRXh0ZXJuYWwgTWVtb3J5IENvbnRyb2xsZXIgZHJpdmVyIgo+
PiArCWRlZmF1bHQgeQo+IAo+IFRoaXMgaXMgbm90IGVub3VnaCBzaW5jZSB5b3UncmUgbGVhdmlu
ZyBwb3NzaWJpbGl0eSB0byBkaXNhYmxlCj4gY29tcGlsYXRpb24gb2YgdGhlIGRyaXZlciwgYnV0
IHRoZSBjb21waWxhdGlvbiB3aWxsIGZhaWwgYmVjYXVzZSBvZiB0aGUKPiB1bnJlc29sdmVkIHN5
bWJvbCAodGVncmEyMTBfY2xrX3JlZ2lzdGVyX2VtYykuCj4gCj4+ICsJZGVwZW5kcyBvbiBURUdS
QV9NQyAmJiBBUkNIX1RFR1JBXzIxMF9TT0MKPj4gKwloZWxwCj4+ICsJICBUaGlzIGRyaXZlciBp
cyBmb3IgdGhlIEV4dGVybmFsIE1lbW9yeSBDb250cm9sbGVyIChFTUMpIGZvdW5kIG9uCj4+ICsJ
ICBUZWdyYTIxMCBjaGlwcy4gVGhlIEVNQyBjb250cm9scyB0aGUgZXh0ZXJuYWwgRFJBTSBvbiB0
aGUgYm9hcmQuCj4+ICsJICBUaGlzIGRyaXZlciBpcyByZXF1aXJlZCB0byBjaGFuZ2UgbWVtb3J5
IHRpbWluZ3MgLyBjbG9jayByYXRlIGZvcgo+PiArCSAgZXh0ZXJuYWwgbWVtb3J5Lgo+IAo+IEVp
dGhlciBURUdSQTIxMF9FTUMgS2NvbmZpZyBvcHRpb24gc2hhbGwgYmUgYWx3YXlzIGZvcmNlLXNl
bGVjdGVkIGZvcgo+IFQyMTAgb3IgeW91IHNob3VsZCBtb3ZlIGFsbCB0aGUgY2xrLXJlbGF0ZWQg
Y29kZSBpbnRvIGRyaXZlcnMvY2xrL3RlZ3JhLy4KPiAKPiBDb3VsZCB5b3UgcGxlYXNlIGdpdmUg
YSByYXRpb25hbGUgZm9yIGhhdmluZyBFTUMgY2xvY2sgY29kZSB3aXRoaW4gdGhlCj4gRU1DIGRy
aXZlcj8KCkkgZGlkbid0IGhhdmUgYSBzcGVjaWZpYyByZWFzb24gZm9yIHRoYXQgaW5pdGlhbGx5
LCBqdXN0IHdhbnRlZCB0aGUgCmNsb2NrIGNvZGUgYW5kIEVNQyBkcml2ZXIgdG9nZXRoZXIgZm9y
IGVhc2llciBtYWludGVuYW5jZS4KCkJ1dCBjb25zaWRlcmluZyB0aGUgZml4IGluIHY0LCB0aGF0
IG1ha2VzIGl0IGJhY2t3YXJkIGNvbXBhdGlibGUgd2l0aCAKdGhlIGNhc2UgaWYgdGhlIGtlcm5l
bCB1c2VzIHRoZSBvbGRlciBEVCB3aXRob3V0IEVNQyBub2RlLCBJIHRoaW5rIGl0J3MgCmJldHRl
ciB0byBtb3ZlIHRoZSBjbG9jayBjb2RlIGludG8gdGhlIGNsayBmb2xkZXIgbm93LgoKPiAKPiBb
c25pcF0KPiAKPj4gK3N0YXRpYyBpbnQgdGVncmEyMTBfZW1jX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4+ICt7Cj4+ICsJaW50IGk7Cj4+ICsJdW5zaWduZWQgbG9uZyB0YWJs
ZV9yYXRlOwo+PiArCXVuc2lnbmVkIGxvbmcgY3VycmVudF9yYXRlOwo+PiArCXN0cnVjdCBjbGsg
KmVtY19jbGs7Cj4+ICsJc3RydWN0IGRldmljZV9ub2RlICpucDsKPj4gKwlzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICptYzsKPj4gKwlzdHJ1Y3QgcmVzb3VyY2UgcmVzOwo+PiArCXN0cnVjdCB0ZWdy
YV9lbWMgKmVtYzsKPj4gKwl2b2lkICp0YWJsZV9hZGRyOwo+PiArCj4+ICsJZW1jX2NsayA9IGRl
dm1fY2xrX2dldCgmcGRldi0+ZGV2LCAiZW1jIik7Cj4+ICsJaWYgKElTX0VSUihlbWNfY2xrKSkK
Pj4gKwkJcmV0dXJuIFBUUl9FUlIoZW1jX2Nsayk7Cj4gCj4gUGxlYXNlIGFkZCBuZXdsaW5lIGlu
IGEgc3VjaCBwbGFjZXMgaW4gdGhlIGNvZGUgdG8gbWFrZSBpdCBtb3JlIHJlYWRhYmxlLgo+IAo+
PiArCWVtYyA9IGNsa19od190b19lbWMoX19jbGtfZ2V0X2h3KGVtY19jbGspKTsKPj4gKwo+PiAr
CW5wID0gb2ZfcGFyc2VfcGhhbmRsZShwZGV2LT5kZXYub2Zfbm9kZSwgIm52aWRpYSxtZW1vcnkt
Y29udHJvbGxlciIsIDApOwo+PiArCWlmICghbnApIHsKPj4gKwkJZGV2X2VycigmcGRldi0+ZGV2
LCAiY291bGQgbm90IGdldCBtZW1vcnkgY29udHJvbGxlclxuIik7Cj4+ICsJCXJldHVybiAtRU5P
RU5UOwo+PiArCX0KPj4gKwo+PiArCW1jID0gb2ZfZmluZF9kZXZpY2VfYnlfbm9kZShucCk7Cj4+
ICsJb2Zfbm9kZV9wdXQobnApOwo+PiArCWlmICghbWMpCj4+ICsJCXJldHVybiAtRU5PRU5UOwo+
PiArCj4+ICsJZW1jLT5tYyA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKG1jKTsKPj4gKwlpZiAoIWVt
Yy0+bWMpCj4+ICsJCXJldHVybiAtRVBST0JFX0RFRkVSOwo+PiArCj4+ICsJZW1jLT5lbWNfYmFz
ZVtSRUdfRU1DXSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPj4g
KwllbWMtPmVtY19iYXNlW1JFR19FTUMwXSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJj
ZShwZGV2LCAxKTsKPj4gKwllbWMtPmVtY19iYXNlW1JFR19FTUMxXSA9IGRldm1fcGxhdGZvcm1f
aW9yZW1hcF9yZXNvdXJjZShwZGV2LCAyKTsKPj4gKwo+PiArCWZvciAoaSA9IDA7IGkgPCBURUdS
QV9FTUNfU1JDX0NPVU5UOyBpKyspIHsKPj4gKwkJaWYgKCFJU19FUlIoZW1jX3NyY1tpXSkpCj4+
ICsJCQljbGtfcHV0KGVtY19zcmNbaV0pOwo+PiArCj4+ICsJCWVtY19zcmNbaV0gPSBkZXZtX2Ns
a19nZXQoJnBkZXYtPmRldiwgZW1jX3NyY19uYW1lc1tpXSk7Cj4+ICsJCWlmIChJU19FUlIoZW1j
X3NyY1tpXSkpIHsKPj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgIkNhbiBub3QgZmluZCBFTUMg
c291cmNlIGNsb2NrXG4iKTsKPj4gKwkJCXJldHVybiAtRU5PREFUQTsKPj4gKwkJfQo+PiArCX0K
Pj4gKwo+PiArCW5wID0gb2ZfcGFyc2VfcGhhbmRsZShwZGV2LT5kZXYub2Zfbm9kZSwgIm1lbW9y
eS1yZWdpb24iLCAwKTsKPj4gKwlpZiAoIW5wKSB7Cj4+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwg
ImNvdWxkIG5vdCBmaW5kIEVNQyB0YWJsZVxuIik7Cj4+ICsJCXJldHVybiAtRU5PREFUQTsKPj4g
Kwl9Cj4+ICsKPj4gKwlpZiAoIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAibnZpZGlhLHRl
Z3JhMjEwLWVtYy10YWJsZSIpIHx8Cj4+ICsJICAgICFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5w
KSkgewo+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJFTUMgdGFibGUgaXMgaW52YWxpZFxuIik7
Cj4+ICsJCXJldHVybiAtRU5PREFUQTsKPj4gKwl9Cj4+ICsKPj4gKwlvZl9hZGRyZXNzX3RvX3Jl
c291cmNlKG5wLCAwLCAmcmVzKTsKPj4gKwl0YWJsZV9hZGRyID0gbWVtcmVtYXAocmVzLnN0YXJ0
LCByZXNvdXJjZV9zaXplKCZyZXMpLCBNRU1SRU1BUF9XQik7Cj4+ICsJb2Zfbm9kZV9wdXQobnAp
Owo+PiArCWlmICghdGFibGVfYWRkcikgewo+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJjb3Vs
ZCBub3QgbWFwIEVNQyB0YWJsZVxuIik7Cj4+ICsJCXJldHVybiAtRU5PTUVNOwo+PiArCX0KPj4g
KwllbWMtPmVtY190YWJsZSA9IChzdHJ1Y3QgZW1jX3RhYmxlICopdGFibGVfYWRkcjsKPiAKPiBU
aGVyZSBpcyBubyBuZWVkIHRvIGNhc3QgYSB2b2lkLiBQbGVhc2UgbWFrZSBzdXJlIHRoYXQgeW91
IGRvbid0IGhhdmUKPiBhbnkgbm9uLXVwc3RyZWFtIHBhdGNoZXMgYXBwbGllZCB0aGF0IGFyZSBj
aGFuZ2luZyBjb21waWxlciBmbGFncywgYWxzbwo+IG1ha2Ugc3VyZSB0aGF0IHlvdSdyZSB1c2lu
ZyBwcm9wZXIgY29tcGlsZXIgKEdDQykgaWYgeW91J3JlIGdldHRpbmcgYQo+IHdhcm5pbmcgaGVy
ZS4KPiAKPj4gKwo+PiArCWZvciAoaSA9IDA7IGkgPCBURUdSQV9FTUNfTUFYX0ZSRVFTOyBpKysp
Cj4+ICsJCWlmIChlbWMtPmVtY190YWJsZVtpXS5yZXYgIT0gMCkKPj4gKwkJCWVtYy0+ZW1jX3Rh
YmxlX3NpemUrKzsKPj4gKwkJZWxzZQo+PiArCQkJYnJlYWs7Cj4+ICsKPj4gKwkvKiBjaGVjayB0
aGUgc3VwcG9ydGVkIHNlcXVlbmNlICovCj4+ICsJd2hpbGUgKHNlcS0+dGFibGVfcmV2KSB7Cj4+
ICsJCWlmIChzZXEtPnRhYmxlX3JldiA9PSBlbWMtPmVtY190YWJsZVswXS5yZXYpCj4+ICsJCQli
cmVhazsKPj4gKwkJc2VxKys7Cj4+ICsJfQo+PiArCWlmICghc2VxLT5zZXRfY2xvY2spIHsKPj4g
KwkJc2VxID0gTlVMTDsKPj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiSW52YWxpZCBFTUMgc2Vx
dWVuY2UgZm9yIHRhYmxlIFJldi4gJWRcbiIsCj4+ICsJCQllbWMtPmVtY190YWJsZVswXS5yZXYp
Owo+PiArCQlyZXR1cm4gLUVOT0RBVEE7Cj4+ICsJfQo+PiArCj4+ICsJZW1jX2Nsa19zZWwgPSBk
ZXZtX2tjYWxsb2MoJnBkZXYtPmRldiwKPj4gKwkJCQkgICBlbWMtPmVtY190YWJsZV9zaXplLAo+
PiArCQkJCSAgIHNpemVvZihzdHJ1Y3QgZW1jX3NlbCksCj4+ICsJCQkJICAgR0ZQX0tFUk5FTCk7
Cj4+ICsKPj4gKwkvKiBjYWxjdWxhdGUgdGhlIHJhdGUgZnJvbSBzb3VyY2UgY2xvY2sgKi8KPj4g
KwljdXJyZW50X3JhdGUgPSBlbWNfZ2V0X3NyY19jbGtfcmF0ZSgpIC8gMTAwMDsKPj4gKwo+PiAr
CS8qIHZhbGlkYXRlIHRoZSB0YWJsZSAqLwo+PiArCWZvciAoaSA9IDA7IGkgPCBlbWMtPmVtY190
YWJsZV9zaXplOyBpKyspIHsKPj4gKwkJdGFibGVfcmF0ZSA9IGVtYy0+ZW1jX3RhYmxlW2ldLnJh
dGU7Cj4+ICsJCWlmICghdGFibGVfcmF0ZSkKPj4gKwkJCWNvbnRpbnVlOwo+PiArCj4+ICsJCWlm
IChpICYmICgodGFibGVfcmF0ZSA8PSBlbWMtPmVtY190YWJsZVtpLTFdLnJhdGUpIHx8Cj4+ICsJ
CSAgIChlbWMtPmVtY190YWJsZVtpXS5taW5fdm9sdCA8Cj4+ICsJCSAgICBlbWMtPmVtY190YWJs
ZVtpLTFdLm1pbl92b2x0KSkpCj4+ICsJCQljb250aW51ZTsKPj4gKwo+PiArCQlpZiAoZW1jLT5l
bWNfdGFibGVbaV0ucmV2ICE9IGVtYy0+ZW1jX3RhYmxlWzBdLnJldikKPj4gKwkJCWNvbnRpbnVl
Owo+PiArCj4+ICsJCWlmIChmaW5kX21hdGNoaW5nX2lucHV0KCZlbWMtPmVtY190YWJsZVtpXSwg
JmVtY19jbGtfc2VsW2ldKSkKPj4gKwkJCWNvbnRpbnVlOwo+PiArCj4+ICsJCWlmICh0YWJsZV9y
YXRlID09IGN1cnJlbnRfcmF0ZSkKPj4gKwkJCWVtYy0+Y3VycmVudF90aW1pbmcgPSAmZW1jLT5l
bWNfdGFibGVbaV07Cj4+ICsJfQo+IAo+IEknbSBzdWdnZXN0aW5nIHRvIGZhY3RvciBvdXQgYWxs
IHRoZSB2YWxpZGF0aW9ucyBpbnRvIGEgc2VwYXJhdGUKPiBmdW5jdGlvbiBmb3IgY2xhcml0eS4K
PiAKCk9rYXksIHdpbGwgZml4LgoKVGhhbmtzLApKb3NlcGgKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
