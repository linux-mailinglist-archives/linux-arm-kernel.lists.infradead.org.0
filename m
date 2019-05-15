Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0257B1EA58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 10:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hXZR1cLqFAbbVotzo4dQKBwJcp8GNFIo+h/9/cRn4a0=; b=cTXUvaxIF2gA8NjAHU2f4h+LH
	PujBrfd41qchqXaCl7+MIhUIXomkCNDz/ZfVYBQD4eqq4nXTkHV8B3o46WJN5W41NmxfM+tFLpwf/
	PZShXws5Li5Oj3HwyDUkQ/HHTQVljq6oI+Uw0p/UJWslcuhrwsoCHINYnKBWboL135H0RIPB0GBA6
	4yDe8qr8dYZd7By+S6hb1+wnwjXjATtZnHn86Bjn54roooBFrP0rudJYEftyCFDgWiCDt87P1vXgq
	TDiuxpNl6b9UpB2ikzDgUNZDIYPwzndHR6lfFv81YtNuE2wB5GAB/gUKm+clvfUKpLLEEsCsS6Yxd
	shD/y/ZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpUW-0000tj-VH; Wed, 15 May 2019 08:42:24 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpUP-0000tB-0h
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 08:42:18 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cdbd0c00000>; Wed, 15 May 2019 01:41:36 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 15 May 2019 01:42:16 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 15 May 2019 01:42:16 -0700
Received: from [10.19.108.132] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 15 May
 2019 08:42:14 +0000
Subject: Re: [PATCH V3 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-5-josephl@nvidia.com>
 <74fad66b-a6e9-ffc9-c1c9-e88b841e9209@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <648df201-eb63-6d26-3f90-02eba7624921@nvidia.com>
Date: Wed, 15 May 2019 16:42:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <74fad66b-a6e9-ffc9-c1c9-e88b841e9209@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557909696; bh=C7xXcozLI+jx0KXwiuZAkErgLLPLVV+AR0ujYOyyXbk=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=FIuXRldTF38OabLIO5+oGDEtJRdXzfSj+3ZspsMc0mvDAWhSUNGSsQp7uIz2NrMw4
 5nL2LvEdE5K6Uv/fV5w9oOCNRAJYFYnMVc9eBC0ugbXlAMk/Usl7NztCN64YYv8NVa
 Y9+eLoHaiK4eUlqHMkZk/lCgEuM2RpeSRcL+93ql+gtZ67wfn+XemzaV5SI/Pe1JDH
 DwAIWBddYAID5jkD7lB6FC1dK+ikb4sqpzS6EtGUiQ6+ldGnl8lmmMCMO+NnYSEPo7
 Ymwr91ofwCDF4vKjINTXUFXjV7JJU/Tu3Yo8Ki/tr56x0ydP6idWni4hDZPdSgwOl+
 plTaFBVtVqDRQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_014217_074786_8C1B2461 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gNS8xNS8xOSAxOjA0IEFNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMTAuMDUuMjAxOSAx
MTo0NywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4+IFRoaXMgaXMgdGhlIGluaXRpYWwgcGF0Y2gg
Zm9yIFRlZ3JhMjEwIEVNQyBjbG9jayBkcml2ZXIsIHdoaWNoIGRvZXNuJ3QKPj4gaW5jbHVkZSB0
aGUgc3VwcG9ydCBjb2RlIGFuZCBkZXRhaWwgc2VxdWVuY2UgZm9yIGNsb2NrIHNjYWxpbmcgeWV0
Lgo+Pgo+PiBUaGUgZHJpdmVyIGlzIGRlc2lnbmVkIHRvIHN1cHBvcnQgTFBERFI0IFNEUkFNLiBC
ZWNhdXNlIG9mIHRoZSBMUEREUjQKPj4gZGV2aWNlcyBuZWVkIHRvIGRvIGluaXRpYWwgdGltZSB0
cmFpbmluZyBiZWZvcmUgaXQgY2FuIGJlIHVzZWQsIHRoZQo+PiBmaXJtd2FyZSB3aWxsIGhlbHAg
dG8gZG8gdGhhdCBhdCBlYXJseSBib290IHN0YWdlLiBUaGVuLCB0aGUgdHJhaW5lZAo+PiB0YWJs
ZSBmb3IgdGhlIHJhdGVzIHdlIHN1cHBvcnQgd2lsbCBwYXNzIHRvIHRoZSBrZXJuZWwgdmlhIERU
LiBTbyB0aGUKPj4gZHJpdmVyIGNhbiBnZXQgdGhlIHRyYWluZWQgdGFibGUgZm9yIGNsb2NrIHNj
YWxpbmcgc3VwcG9ydC4KPj4KPj4gRm9yIHRoZSBoaWdoZXIgcmF0ZSBzdXBwb3J0IChhYm92ZSA4
MDBNSHopLCB0aGUgcGVyaW9kaWMgdHJhaW5pbmcgaXMKPj4gbmVlZGVkIGZvciB0aGUgdGltaW5n
IGNvbXBlbnNhdGlvbi4gU28gYmFzaWNhbGx5LCB0d28gbWV0aG9kb2xvZ2llcyBmb3IKPj4gY2xv
Y2sgc2NhbGluZyBhcmUgc3VwcG9ydGVkLCBvbmUgaXMgZm9sbG93aW5nIHRoZSBjbG9jayBjaGFu
Z2luZwo+PiBzZXF1ZW5jZSB0byB1cGRhdGUgdGhlIEVNQyB0YWJsZSB0byBFTUMgcmVnaXN0ZXJz
IGFuZCBhbm90aGVyIGlzIGlmIHRoZQo+PiByYXRlIG5lZWRzIHBlcmlvZGljIHRyYWluaW5nLCB0
aGVuIHdlIHdpbGwgc3RhcnQgYSB0aW1lciB0byBkbyB0aGF0Cj4+IHBlcmlvZGljYWxseSB1bnRp
bCBpdCBzY2FsZXMgdG8gdGhlIGxvd2VyIHJhdGUuCj4+Cj4+IEJhc2VkIG9uIHRoZSB3b3JrIG9m
IFBldGVyIERlIFNjaHJpanZlciA8cGRlc2NocmlqdmVyQG52aWRpYS5jb20+Lgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBKb3NlcGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPj4gLS0tCj4gCj4gW3Nu
aXBdCj4gCj4+ICtzdGF0aWMgaW50IHRlZ3JhMjEwX2VtY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+PiArewo+PiArCWludCBpOwo+PiArCXVuc2lnbmVkIGxvbmcgdGFibGVf
cmF0ZTsKPj4gKwl1bnNpZ25lZCBsb25nIGN1cnJlbnRfcmF0ZTsKPj4gKwlzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wOwo+PiArCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKm1jOwo+PiArCXN0cnVjdCB0
ZWdyYV9lbWMgKmVtYzsKPj4gKwlzdHJ1Y3QgY2xrX2luaXRfZGF0YSBpbml0Owo+PiArCXN0cnVj
dCBjbGsgKmNsazsKPj4gKwlzdHJ1Y3QgcmVzb3VyY2UgKnIsIHJlczsKPj4gKwl2b2lkICp0YWJs
ZV9hZGRyOwo+PiArCj4+ICsJZW1jID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigq
ZW1jKSwgR0ZQX0tFUk5FTCk7Cj4+ICsJaWYgKCFlbWMpCj4+ICsJCXJldHVybiAtRU5PTUVNOwo+
PiArCj4+ICsJbnAgPSBvZl9wYXJzZV9waGFuZGxlKHBkZXYtPmRldi5vZl9ub2RlLCAibnZpZGlh
LG1lbW9yeS1jb250cm9sbGVyIiwgMCk7Cj4+ICsJaWYgKCFucCkgewo+PiArCQlkZXZfZXJyKCZw
ZGV2LT5kZXYsICJjb3VsZCBub3QgZ2V0IG1lbW9yeSBjb250cm9sbGVyXG4iKTsKPj4gKwkJcmV0
dXJuIC1FTk9FTlQ7Cj4+ICsJfQo+PiArCj4+ICsJbWMgPSBvZl9maW5kX2RldmljZV9ieV9ub2Rl
KG5wKTsKPj4gKwlvZl9ub2RlX3B1dChucCk7Cj4+ICsJaWYgKCFtYykKPj4gKwkJcmV0dXJuIC1F
Tk9FTlQ7Cj4+ICsKPj4gKwllbWMtPm1jID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEobWMpOwo+PiAr
CWlmICghZW1jLT5tYykKPj4gKwkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4+ICsKPj4gKwllbWMt
PnJhbV9jb2RlID0gdGVncmFfcmVhZF9yYW1fY29kZSgpOwo+IAo+IGVtYy0+cmFtX2NvZGUgaXNu
J3QgdXNlZCBhbnl3aGVyZSBpbiB0aGUgY29kZS4KPiAKPiBJIGhhdmVuJ3QgY2hlY2tlZCBvdGhl
ciBmaWVsZHMuIFBsZWFzZSByZW1vdmUgZXZlcnl0aGluZyB0aGF0IGlzIHVudXNlZC4KCkdvb2Qg
Y2F0Y2gsIEkgbWlzc2VkIHRoaXMgd2hlbiBjbGVhbiB1cCB0aGUgY29kZSBmb3IgVjMuCgo+IAo+
PiArCXIgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDApOwo+
PiArCWVtYy0+ZW1jX2Jhc2VbUkVHX0VNQ10gPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYt
PmRldiwgcik7Cj4+ICsJciA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNF
X01FTSwgMSk7Cj4+ICsJZW1jLT5lbWNfYmFzZVtSRUdfRU1DMF0gPSBkZXZtX2lvcmVtYXBfcmVz
b3VyY2UoJnBkZXYtPmRldiwgcik7Cj4+ICsJciA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2
LCBJT1JFU09VUkNFX01FTSwgMik7Cj4+ICsJZW1jLT5lbWNfYmFzZVtSRUdfRU1DMV0gPSBkZXZt
X2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcik7Cj4gCj4gVXNlIGRldm1fcGxhdGZvcm1f
aW9yZW1hcF9yZXNvdXJjZSgpLgo+IAo+PiArCWZvciAoaSA9IDA7IGkgPCBURUdSQV9FTUNfU1JD
X0NPVU5UOyBpKyspIHsKPj4gKwkJZW1jX3NyY1tpXSA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2
LAo+PiArCQkJCQkJZW1jX3NyY19uYW1lc1tpXSk7Cj4+ICsJCWlmIChJU19FUlIoZW1jX3NyY1tp
XSkpIHsKPj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgIkNhbiBub3QgZmluZCBFTUMgc291cmNl
IGNsb2NrXG4iKTsKPj4gKwkJCXJldHVybiAtRU5PREFUQTsKPj4gKwkJfQo+PiArCX0KPj4gKwo+
PiArCW5wID0gb2ZfcGFyc2VfcGhhbmRsZShwZGV2LT5kZXYub2Zfbm9kZSwgIm1lbW9yeS1yZWdp
b24iLCAwKTsKPj4gKwlpZiAoIW5wKSB7Cj4+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgImNvdWxk
IG5vdCBmaW5kIEVNQyB0YWJsZVxuIik7Cj4+ICsJCWdvdG8gZW1jX2Nsa19yZWdpc3RlcjsKPj4g
Kwl9Cj4+ICsKPj4gKwlpZiAoIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAibnZpZGlhLHRl
Z3JhMjEwLWVtYy10YWJsZSIpIHx8Cj4+ICsJICAgICFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5w
KSkgewo+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJFTUMgdGFibGUgaXMgaW52YWxpZFxuIik7
Cj4+ICsJCWdvdG8gZW1jX2Nsa19yZWdpc3RlcjsKPj4gKwl9Cj4+ICsKPj4gKwlvZl9hZGRyZXNz
X3RvX3Jlc291cmNlKG5wLCAwLCAmcmVzKTsKPj4gKwl0YWJsZV9hZGRyID0gbWVtcmVtYXAocmVz
LnN0YXJ0LCByZXNvdXJjZV9zaXplKCZyZXMpLCBNRU1SRU1BUF9XQik7Cj4+ICsJb2Zfbm9kZV9w
dXQobnApOwo+PiArCWlmICghdGFibGVfYWRkcikgewo+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYs
ICJjb3VsZCBub3QgbWFwIEVNQyB0YWJsZVxuIik7Cj4+ICsJCWdvdG8gZW1jX2Nsa19yZWdpc3Rl
cjsKPj4gKwl9Cj4+ICsJZW1jLT5lbWNfdGFibGUgPSAoc3RydWN0IGVtY190YWJsZSAqKXRhYmxl
X2FkZHI7Cj4+ICsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgVEVHUkFfRU1DX01BWF9GUkVRUzsgaSsr
KQo+PiArCQlpZiAoZW1jLT5lbWNfdGFibGVbaV0ucmV2ICE9IDApCj4+ICsJCQllbWMtPmVtY190
YWJsZV9zaXplKys7Cj4+ICsJCWVsc2UKPj4gKwkJCWJyZWFrOwo+PiArCj4+ICsJLyogSW5pdCBF
TUMgcmF0ZSBzdGF0aXN0aWMgZGF0YSAqLwo+PiArCWVtY19zdGF0cy5jbGtjaGFuZ2VfY291bnQg
PSAwOwo+PiArCXNwaW5fbG9ja19pbml0KCZlbWNfc3RhdHMuc3BpbmxvY2spOwo+PiArCWVtY19z
dGF0cy5sYXN0X3VwZGF0ZSA9IGdldF9qaWZmaWVzXzY0KCk7Cj4+ICsJZW1jX3N0YXRzLmxhc3Rf
c2VsID0gVEVHUkFfRU1DX01BWF9GUkVRUzsKPj4gKwo+PiArCS8qIENoZWNrIHRoZSBzdXBwb3J0
ZWQgc2VxdWVuY2UgKi8KPj4gKwl3aGlsZSAoc2VxLT50YWJsZV9yZXYpIHsKPj4gKwkJaWYgKHNl
cS0+dGFibGVfcmV2ID09IGVtYy0+ZW1jX3RhYmxlWzBdLnJldikKPj4gKwkJCWJyZWFrOwo+PiAr
CQlzZXErKzsKPj4gKwl9Cj4+ICsJaWYgKCFzZXEtPnNldF9jbG9jaykgewo+PiArCQlzZXEgPSBO
VUxMOwo+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJJbnZhbGlkIEVNQyBzZXF1ZW5jZSBmb3Ig
dGFibGUgUmV2LiAlZFxuIiwKPj4gKwkJCWVtYy0+ZW1jX3RhYmxlWzBdLnJldik7Cj4+ICsJCWdv
dG8gZW1jX2Nsa19yZWdpc3RlcjsKPiAKPiBXaHkgZG8geW91IHdhbnQgdG8gcmVnaXN0ZXIgRU1D
IGNsb2NrIGlmIHNvbWV0aGluZyBmYWlscz8gS01TRyB3aWxsIGJlCj4gZmxvb2RlZCB3aXRoIGVy
cm9ycyBjb21pbmcgZnJvbSBjbGtfc2V0X3JhdGUuCj4gCgpTZWUgcGF0Y2ggNyBpbiB0aGUgc2Vy
aWVzLCB0aGUgbGVnYWN5IEVNQyBjbG9jayB3aWxsIGJlIHJlbW92ZWQgbGF0ZXIsIApzbyB3ZSBu
ZWVkIHRvIHJlZ2lzdGVyIHRoZSBFTUMgY2xvY2sgd2hldGhlciB0aGUgdGFibGUgaXMgcmVhZHkg
b3Igbm90LiAKSW4gdGhhdCBjYXNlLCBJIG1lYW4gaWYgdGhlIHRhYmxlIGlzIG5vdCBhdmFpbGFi
bGUsIGl0IHdpbGwgc3RpbGwgCnJlZ2lzdGVyIEVNQyBjbG9jayBhdCB0aGUgcmF0ZSB0aGF0IGJv
b3QgbG9hZGVyIGNvbmZpZ3VyZWQgYmVmb3JlIGtlcm5lbCAKYm9vdGluZy4gU28gdGhlIE1DIGNs
b2NrIGNhbiBzdGlsbCB3b3JrIGFzIGV4cGVjdGVkLCB3aGljaCBpcyB1bmRlciBFTUMgCmNsb2Nr
LgoKQW5kIEkgZGlkIHRlc3QgdGhhdCwgY291bGRuJ3Qgb2JzZXJ2ZSBhbnkgS01TRyBpbiB0aGF0
IGNhc2UuCgpUaGFua3MsCkpvc2VwaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
