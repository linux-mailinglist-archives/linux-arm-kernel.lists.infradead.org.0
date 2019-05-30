Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFF42EA81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7lWhpEkvja3wDcChBDXyx17FpLvOogrW7sOMH3EFkpE=; b=SxyWAerSDsl8On6LWD6dyoyl7
	t3UPuYQ9Neu5NnVq697gJF9KnE8JfE8uQYDObZ/JHtW+tNmCMlbg+s50RVqqHpOE9RN3Fa0e7RdrW
	FpngcE1RJvonOjILA29Os06OnHc49k7QUvXazb1sE1X6DgTImwJO+/pM4QCDqO2gShxOtJWLoUqhM
	CFFTDybNNRNbNNAoC01O/Dh5Wlc4tNG337W0piHZpQgEl4iKlnSykkerJMJPZxntB0qPQxT2gB64w
	xFwJ9jpuBNcAdpAUJjhDKv9CXfVnu+i+FoNlWDIxtCxilfWw6ZgUsq5DscxYYt00HQwRybX5eKQjU
	uVB2xPE0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWATQ-00018a-Lu; Thu, 30 May 2019 02:07:20 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWATJ-000187-Ew
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 02:07:14 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cef3ac40000>; Wed, 29 May 2019 19:07:00 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 19:07:09 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 29 May 2019 19:07:09 -0700
Received: from [10.19.108.132] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 30 May
 2019 02:07:06 +0000
Subject: Re: [PATCH V4 7/8] clk: tegra: Remove the old emc_mux clock for
 Tegra210
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-8-josephl@nvidia.com>
 <6651442d-d501-9363-ff95-988e1a4a3982@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <75aa10d9-ac01-3581-49f8-020c742ea251@nvidia.com>
Date: Thu, 30 May 2019 10:06:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <6651442d-d501-9363-ff95-988e1a4a3982@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559182020; bh=UWdWtW4j+KOak+WZ2j6xAhxesQy6AFdueC5SP3hK5EE=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=KTAd8UyRioFQjhThEeu/VBvoQCLVHUIs+2Cd/VvGtn9gv+t0ZnTaME4auzC1NiY+y
 0unlBnBvoghWUh4+c0ciYIFFEgiFr/c9FOasaN59s9Ddz3JEW2EjrA+zQcRmikDfpT
 IKFCP8mCELck0vWq9YARfmEsgJcI7HIIGjV88zOz3qhXu/04pVnDlRJgCWm4KUQNPo
 SwISy6NZbe7GvFdfRM8iyHwcxhh1os4kV76pcRVusUVgBPtLoc4oslLNgiTGMlLdzu
 CGc9pGbvt5VA1BIz7wNd9tj1+tppbJGqaVFJPL853VgB+7Xf8+U3MFF2nw3ja8Wvus
 /N2P1b6PIAAqg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_190713_518739_835A810B 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
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

T24gNS8yOS8xOSA4OjQ5IFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjkuMDUuMjAxOSAx
MToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4+IFJlbW92ZSB0aGUgb2xkIGVtY19tdXggY2xv
Y2sgYW5kIGRvbid0IHVzZSB0aGUgY29tbW9uIEVNQyBjbG9jawo+PiBkZWZpbml0aW9uLiBUaGlz
IHdpbGwgYmUgcmVwbGFjZWQgYnkgYSBuZXcgY2xvY2sgZGVmaW5lZCBpbiB0aGUKPj4gRU1DIGRy
aXZlci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+
Cj4+IC0tLQo+PiB2NDoKPj4gLSBtYWtlIHN1cmUgdGhlIGJlaGF2aW9yIGlzIGNvbXBhdGlibGUg
d2l0aCBjYXNlIGlmIHRoZSBrZXJuZWwgc3RpbGwKPj4gICAgdXNlcyB0aGUgb2xkZXIgRFRCIHdo
aWNoIGRvZXNuJ3QgaGF2ZSBFTUMgbm9kZS4gQW5kIHRoZSBNQyBhbmQgRU1DCj4+ICAgIGNsb2Nr
IGNhbiBzdGlsbCBiZSByZWdpc3RlcmVkIHN1Y2Nlc3N1ZmxseS4KPj4gdjM6Cj4+IC0gc3BsaXQg
dG8gMyBwYXRjaGVzIGZyb20gdGhlIHByZXZpb3VzIHZlcnNpb24KPj4gLS0tCj4+ICAgZHJpdmVy
cy9jbGsvdGVncmEvY2xrLXRlZ3JhMjEwLmMgfCA0MiArKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTIxMC5j
IGIvZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMjEwLmMKPj4gaW5kZXggMWQ1MjM1NDgyMGNh
Li44YjIwOWU4YjVlYWYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdy
YTIxMC5jCj4+ICsrKyBiL2RyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTIxMC5jCj4+IEBAIC0y
OCw2ICsyOCw3IEBACj4+ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3RlZ3JhMjEwLWNh
ci5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4KPj4gICAjaW5jbHVkZSA8bGludXgv
c2l6ZXMuaD4KPj4gKyNpbmNsdWRlIDxzb2MvdGVncmEvZW1jLmg+Cj4+ICAgI2luY2x1ZGUgPHNv
Yy90ZWdyYS9wbWMuaD4KPj4gICAKPj4gICAjaW5jbHVkZSAiY2xrLmgiCj4+IEBAIC0zMjQsMTIg
KzMyNSw2IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHRlZ3JhMjEwX2lucHV0X2ZyZXFbXSA9IHsK
Pj4gICAJWzhdID0gMTIwMDAwMDAsCj4+ICAgfTsKPj4gICAKPj4gLXN0YXRpYyBjb25zdCBjaGFy
ICptdXhfcGxsbWNwX2Nsa21bXSA9IHsKPj4gLQkicGxsX20iLCAicGxsX2MiLCAicGxsX3AiLCAi
Y2xrX20iLCAicGxsX21fdWQiLCAicGxsX21iIiwgInBsbF9tYiIsCj4+IC0JInBsbF9wIiwKPj4g
LX07Cj4+IC0jZGVmaW5lIG11eF9wbGxtY3BfY2xrbV9pZHggTlVMTAo+PiAtCj4+ICAgI2RlZmlu
ZSBQTExfRU5BQkxFCQkJKDEgPDwgMzApCj4+ICAgCj4+ICAgI2RlZmluZSBQTExDWF9NSVNDMV9J
RERRCQkoMSA8PCAyNykKPj4gQEAgLTIzNDYsNyArMjM0MSw2IEBAIHN0YXRpYyBzdHJ1Y3QgdGVn
cmFfY2xrIHRlZ3JhMjEwX2Nsa3NbdGVncmFfY2xrX21heF0gX19pbml0ZGF0YSA9IHsKPj4gICAJ
W3RlZ3JhX2Nsa19pMmMyXSA9IHsgLmR0X2lkID0gVEVHUkEyMTBfQ0xLX0kyQzIsIC5wcmVzZW50
ID0gdHJ1ZSB9LAo+PiAgIAlbdGVncmFfY2xrX3VhcnRjXzhdID0geyAuZHRfaWQgPSBURUdSQTIx
MF9DTEtfVUFSVEMsIC5wcmVzZW50ID0gdHJ1ZSB9LAo+PiAgIAlbdGVncmFfY2xrX21pcGlfY2Fs
XSA9IHsgLmR0X2lkID0gVEVHUkEyMTBfQ0xLX01JUElfQ0FMLCAucHJlc2VudCA9IHRydWUgfSwK
Pj4gLQlbdGVncmFfY2xrX2VtY10gPSB7IC5kdF9pZCA9IFRFR1JBMjEwX0NMS19FTUMsIC5wcmVz
ZW50ID0gdHJ1ZSB9LAo+PiAgIAlbdGVncmFfY2xrX3VzYjJdID0geyAuZHRfaWQgPSBURUdSQTIx
MF9DTEtfVVNCMiwgLnByZXNlbnQgPSB0cnVlIH0sCj4+ICAgCVt0ZWdyYV9jbGtfYnNldl0gPSB7
IC5kdF9pZCA9IFRFR1JBMjEwX0NMS19CU0VWLCAucHJlc2VudCA9IHRydWUgfSwKPj4gICAJW3Rl
Z3JhX2Nsa191YXJ0ZF84XSA9IHsgLmR0X2lkID0gVEVHUkEyMTBfQ0xLX1VBUlRELCAucHJlc2Vu
dCA9IHRydWUgfSwKPj4gQEAgLTI5NTcsNiArMjk1MSwyNyBAQCBzdGF0aWMgaW50IHRlZ3JhMjEw
X2luaXRfcGxsdSh2b2lkKQo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCj4+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IGNsa19kaXZfdGFibGUgbWNfZGl2X3RhYmxlX3RlZ3JhMjEwW10gPSB7Cj4+
ICsJeyAudmFsID0gMCwgLmRpdiA9IDIgfSwKPj4gKwl7IC52YWwgPSAxLCAuZGl2ID0gNCB9LAo+
PiArCXsgLnZhbCA9IDIsIC5kaXYgPSAxIH0sCj4+ICsJeyAudmFsID0gMywgLmRpdiA9IDIgfSwK
Pj4gKwl7IC52YWwgPSAwLCAuZGl2ID0gMCB9LAo+PiArfTsKPj4gKwo+PiArc3RhdGljIHZvaWQg
dGVncmEyMTBfY2xrX3JlZ2lzdGVyX21jKGNvbnN0IGNoYXIgKm5hbWUsCj4+ICsJCQkJICAgICBj
b25zdCBjaGFyICpwYXJlbnRfbmFtZSkKPj4gK3sKPj4gKwlzdHJ1Y3QgY2xrICpjbGs7Cj4+ICsK
Pj4gKwljbGsgPSBjbGtfcmVnaXN0ZXJfZGl2aWRlcl90YWJsZShOVUxMLCBuYW1lLCBwYXJlbnRf
bmFtZSwKPj4gKwkJCQkJIENMS19JU19DUklUSUNBTCwKPj4gKwkJCQkJIGNsa19iYXNlICsgQ0xL
X1NPVVJDRV9FTUMsCj4+ICsJCQkJCSAxNSwgMiwgQ0xLX0RJVklERVJfUkVBRF9PTkxZLAo+PiAr
CQkJCQkgbWNfZGl2X3RhYmxlX3RlZ3JhMjEwLCAmZW1jX2xvY2spOwo+IAo+IFRoaXMgZG9lc24n
dCBsb29rIHJpZ2h0LCB5b3UncmUgbWl4aW5nIHVwIHRoZSBNQyBkaXZpZGVyIHdpdGggdGhlIEVN
Qwo+IGRpdmlkZXIgaGVyZS4gVGhlIE1DIGNsb2NrIGlzIGFsd2F5cyBzb3VyY2VkIGZyb20gRU1D
IGFuZCB0aGVyZSBpcyBvbmx5Cj4gb25lIGJpdCBmb3IgdGhlIE1DIGRpdmlkZXIsIHRoZSBiaXQg
MTYgTUNfRU1DX1NBTUVfRlJFUS4KPiAKPiBXaGVuIEVNQyBjbG9jayBpcyBkaXZpZGVkIGRvd24g
YnkgMiAoYml0IDE1IEVNQ19DTEtfRElWMl9FTiksIHRoZW4gdGhlCj4gY2xrLWZyYW1ld29yayB3
aWxsIHRha2UgY2FyZSBvZiBpdCBieSBjYWxjdWxhdGluZyB0aGUgTUMgcmF0ZSBiYXNlZCBvbgo+
IHRoZSBhY3R1YWwgcGFyZW50IEVNQyByYXRlLgo+IAo+PiArCWNsa3NbVEVHUkEyMTBfQ0xLX01D
XSA9IGNsazsKPj4gK30KPj4gKwo+PiAgIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3Qgc29yMV9v
dXRfcGFyZW50c1tdID0gewo+PiAgIAkvKgo+PiAgIAkgKiBCaXQgMCBvZiB0aGUgbXV4IHNlbGVj
dHMgc29yMV9wYWRfY2xrb3V0LCBpcnJlc3BlY3RpdmUgb2YgYml0IDEsIHNvCj4+IEBAIC0zMDQw
LDE1ICszMDU1LDEyIEBAIHN0YXRpYyBfX2luaXQgdm9pZCB0ZWdyYTIxMF9wZXJpcGhfY2xrX2lu
aXQodm9pZCBfX2lvbWVtICpjbGtfYmFzZSwKPj4gICAJCQlDTEtfU09VUkNFX0xBLCAwKTsKPj4g
ICAJY2xrc1tURUdSQTIxMF9DTEtfTEFdID0gY2xrOwo+PiAgIAo+PiAtCS8qIGVtYyBtdXggKi8K
Pj4gLQljbGsgPSBjbGtfcmVnaXN0ZXJfbXV4KE5VTEwsICJlbWNfbXV4IiwgbXV4X3BsbG1jcF9j
bGttLAo+PiAtCQkJICAgICAgIEFSUkFZX1NJWkUobXV4X3BsbG1jcF9jbGttKSwgMCwKPj4gLQkJ
CSAgICAgICBjbGtfYmFzZSArIENMS19TT1VSQ0VfRU1DLAo+PiAtCQkJICAgICAgIDI5LCAzLCAw
LCAmZW1jX2xvY2spOwo+PiArCS8qIGVtYyAqLwo+PiArCWNsayA9IHRlZ3JhMjEwX2Nsa19yZWdp
c3Rlcl9lbWMoKTsKPj4gKwljbGtzW1RFR1JBMjEwX0NMS19FTUNdID0gY2xrOwo+PiAgIAo+PiAt
CWNsayA9IHRlZ3JhX2Nsa19yZWdpc3Rlcl9tYygibWMiLCAiZW1jX211eCIsIGNsa19iYXNlICsg
Q0xLX1NPVVJDRV9FTUMsCj4+IC0JCQkJICAgICZlbWNfbG9jayk7Cj4+IC0JY2xrc1tURUdSQTIx
MF9DTEtfTUNdID0gY2xrOwo+PiArCS8qIG1jICovCj4+ICsJdGVncmEyMTBfY2xrX3JlZ2lzdGVy
X21jKCJtYyIsICJlbWMiKTsKPj4gICAKPj4gICAJLyogY21sMCAqLwo+PiAgIAljbGsgPSBjbGtf
cmVnaXN0ZXJfZ2F0ZShOVUxMLCAiY21sMCIsICJwbGxfZSIsIDAsIGNsa19iYXNlICsgUExMRV9B
VVgsCj4+Cj4gCj4gWW91IHNob3VsZCBsZWF2ZSB0aGUgY29tbW9uIHRlZ3JhX2Nsa19yZWdpc3Rl
cl9tYygpIHVzYWdlIGFzLWlzIGFuZCBvbmx5Cj4gcy9lbWNfbXV4L2VtYy8gaW4gdGhlIGFyZ3Vt
ZW50LgoKQWgsIHllcywgdGhhdCB3YXMgd3JvbmcgbWl4aW5nIHVwIHdpdGggdHdvIGlycmVsZXZh
bnQgYml0cy4gRml4ZWQgaW4gbXkgCmxvY2FsIHBhdGNoLgoKVGhhbmtzLApKb3NlcGgKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
