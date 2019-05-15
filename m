Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2861E8D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 09:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cLXR/dvgRH+ftPXCYrUFM3/H8ZRThWd50bDJ+b+T2mM=; b=i0A5foILU/9UjFcDCyfaZrWem
	l6CEG5+dEOyP2PF33AY3SDUgjOes4ZQO4nVPlYaeCmQN6qs0Qq2AvfWVlf2xwlqnAaW/ke7MQFCNV
	a1e1OioEhsSHFJLCZb9Y3FHSOY06esIrUiPHZxPy9usIwho6PynSuTQF/wrwg+zACGHH+IyQ6x/mG
	5j2MJW/3DYvvmNLFwd6cXumiPVoGw0w0c0B9M1hon9N+L9EtRrORYqyEYKc38QdYJciJeo5S1XNzV
	zONdSQLeCsnnT7Zfv3Bbem09U/3J+cL2xcetfHzu3K2kiun4Qu60iA3APwltUwpry6fp487lFQ50D
	ZlmH1uOLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQoAI-0001FJ-UY; Wed, 15 May 2019 07:17:26 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQoAC-0001Es-7o
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 07:17:21 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cdbbcd60000>; Wed, 15 May 2019 00:16:39 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 15 May 2019 00:17:19 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 15 May 2019 00:17:19 -0700
Received: from [10.19.108.132] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 15 May
 2019 07:17:16 +0000
Subject: Re: [PATCH V3 1/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-2-josephl@nvidia.com>
 <fd68f906-79b4-6eda-b1fa-abaf3b4c6a12@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <63360b18-6a17-ab3f-6c54-6e11e24885d0@nvidia.com>
Date: Wed, 15 May 2019 15:17:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <fd68f906-79b4-6eda-b1fa-abaf3b4c6a12@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557904599; bh=rvmmtMaDz2XaVLEijpVuOgwxP0IUeQ7iihHR6HcMzMU=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=a2qSGk4gKxUaZ3GAI9557ok/St7di3j7E+S/1xLLPItkQWok5/yNI9bIcGgy1oPWt
 flKon0UEMX/TARGfN54tRSRDgwsEIbXiM9nCsZxipiYytw7oG0OX58Q4q4NMsofplv
 ygRbceZlgrjJl1A65JLdfdMgTOlyYGgSubSOCLiHxLsHIqLmh4ZNBbYuDXMVmC30k4
 p/XtllqlZ4GwIWGalS/ZYWgrwk+2FJUa0joB37Tr91SjdhcFTv3Nqlxl1HNq3+SKdd
 sKeE/tsAbvBRst/mOT0Gir54nk+rgr5ylnuIqFOgMwwGm69E+ZfpFcOezckDHatz2s
 U2jnfk4YYjXKw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_001720_294251_E0154B4F 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
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

T24gNS8xNS8xOSAxMjoyOCBBTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDEwLjA1LjIwMTkg
MTE6NDcsIEpvc2VwaCBMbyDQv9C40YjQtdGCOgo+PiBBZGQgdGhlIGJpbmRpbmcgZG9jdW1lbnQg
Zm9yIHRoZSBleHRlcm5hbCBtZW1vcnkgY29udHJvbGxlciAoRU1DKSB3aGljaAo+PiBjb21tdW5p
Y2F0ZXMgd2l0aCBleHRlcm5hbCBMUEREUjQgZGV2aWNlcy4gSXQgaW5jbHVkZXMgdGhlIGJpbmRp
bmdzIG9mCj4+IHRoZSBFTUMgbm9kZSBhbmQgYSBzdWItbm9kZSBvZiBFTUMgdGFibGUgd2hpY2gg
dW5kZXIgdGhlIHJlc2VydmVkIG1lbW9yeQo+PiBub2RlLiBUaGUgRU1DIHRhYmxlIGNvbnRhaW5z
IHRoZSBkYXRhIG9mIHRoZSByYXRlcyB0aGF0IEVNQyBzdXBwb3J0ZWQuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+PiAtLS0KPj4gdjM6Cj4+IC0g
ZHJvcCB0aGUgYmluZGluZ3Mgb2YgRU1DIHRhYmxlCj4+IC0gYWRkIG1lbW9yeS1yZWdpb24gYW5k
IHJlc2VydmVkLW1lbW9yeSBub2RlIGZvciBFTUMgdGFibGUKPj4gLS0tCj4+ICAgLi4uL252aWRp
YSx0ZWdyYTIxMC1lbWMudHh0ICAgICAgICAgICAgICAgICAgIHwgNTUgKysrKysrKysrKysrKysr
KysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspCj4+ICAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJv
bGxlcnMvbnZpZGlhLHRlZ3JhMjEwLWVtYy50eHQKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvbnZpZGlhLHRlZ3Jh
MjEwLWVtYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNv
bnRyb2xsZXJzL252aWRpYSx0ZWdyYTIxMC1lbWMudHh0Cj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZDY1YWVlZjIzMjljCj4+IC0tLSAvZGV2L251bGwKPj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lbW9yeS1jb250cm9sbGVy
cy9udmlkaWEsdGVncmEyMTAtZW1jLnR4dAo+PiBAQCAtMCwwICsxLDU1IEBACj4+ICtOVklESUEg
VGVncmEyMTAgU29DIEVNQyAoZXh0ZXJuYWwgbWVtb3J5IGNvbnRyb2xsZXIpCj4+ICs9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4+ICsKPj4gK0Rl
dmljZSBub2RlCj4+ICs9PT09PT09PT09PQo+PiArUmVxdWlyZWQgcHJvcGVydGllcyA6Cj4+ICst
IGNvbXBhdGlibGUgOiBzaG91bGQgYmUgIm52aWRpYSx0ZWdyYTIxMC1lbWMiLgo+PiArLSByZWcg
OiBwaHlzaWNhbCBiYXNlIGFkZHJlc3MgYW5kIGxlbmd0aCBvZiB0aGUgY29udHJvbGxlcidzIHJl
Z2lzdGVycy4KPj4gKy0gY2xvY2tzIDogcGhhbmRsZXMgb2YgdGhlIHBvc3NpYmxlIHNvdXJjZSBj
bG9ja3MuCj4+ICstIGNsb2NrLW5hbWVzIDogbmFtZXMgb2YgdGhlIHBvc3NpYmxlIHNvdXJjZSBj
bG9ja3MuCj4+ICstIGludGVycnVwdHMgOiBTaG91bGQgY29udGFpbiB0aGUgRU1DIGdlbmVyYWwg
aW50ZXJydXB0Lgo+PiArLSBtZW1vcnktcmVnaW9uIDogcGhhbmRsZSB0byB0aGUgcmVzZXJ2ZWQg
bWVtb3J5IChzZWUKPj4gKyAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2Vy
dmVkLW1lbW9yeS9yZXNlcnZlZC1tZW1vcnkudHh0KSB3aGljaAo+PiArICBjb250YWlucyBhIHN1
Yi1ub2RlIG9mIEVNQyB0YWJsZS4KPj4gKy0gbnZpZGlhLG1lbW9yeS1jb250cm9sbGVyIDogcGhh
bmRsZSBvZiB0aGUgbWVtb3J5IGNvbnRyb2xsZXIuCj4+ICsKPj4gK1Jlc2VydmVkIG1lbW9yeSBu
b2RlCj4+ICs9PT09PT09PT09PT09PT09PT09PQo+PiArU2hvdWxkIGNvbnRhaW4gYSBzdWItbm9k
ZSBvZiBFTUMgdGFibGUgd2l0aCByZXF1aXJlZCBwcm9wZXJ0aWVzOgo+PiArLSBjb21wYXRpYmxl
IDogc2hvdWxkIGJlICJudmlkaWEsdGVncmEyMTAtZW1jLXRhYmxlIi4KPj4gKy0gcmVnIDogcGh5
c2ljYWwgYWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSBsb2NhdGlvbiBvZiBFTUMgdGFibGUuCj4+
ICsKPj4gK0V4YW1wbGU6Cj4+ICsJcmVzZXJ2ZWQtbWVtb3J5IHsKPj4gKwkJI2FkZHJlc3MtY2Vs
bHMgPSA8Mj47Cj4+ICsJCSNzaXplLWNlbGxzID0gPDI+Owo+PiArCQlyYW5nZXM7Cj4+ICsKPj4g
KwkJZW1jX3RhYmxlOiBlbWMtdGFibGVAOGJlMDAwMDAgewo+PiArCQkJY29tcGF0aWJsZSA9ICJu
dmlkaWEsdGVncmEyMTAtZW1jLXRhYmxlIjsKPj4gKwkJCXJlZyA9IDwweDAgMHg4YmUwMDAwMCAw
eDAgMHgxMDAwMD47Cj4+ICsJCQlzdGF0dXMgPSAib2theSI7Cj4+ICsJCX07Cj4gCj4gWW91IGVz
c2VudGlhbGx5IG1vdmVkIHRoZSB2MSBiaW5kaW5nIGludG8gb2JzY3VyZSBhbmQgdW5kb2N1bWVu
dGVkIGJsb2IsCj4gaWdub3JpbmcgcHJldmlvdXMgcmV2aWV3IGNvbW1lbnRzLiBUaGlzIGlzIGEg
dmVyeSBvZGQgbW92ZS4uLiBwbGVhc2UKPiBleHBsYWluIHdoYXQgaXMgZ29pbmcgb24uCj4gCgpE
aXNjdXNzZWQgd2l0aCBUaGllcnJ5IG9mZmxpbmUgd2hpY2ggd2F5IHdlIHByZWZlciB0byBwYXNz
IHRoZSBFTUMgdGFibGUgCnRvIHRoZSBrZXJuZWwuIFNvbWUgcmVhc29ucyBiZWxvdyB3ZSBkZWNp
ZGUgdG8gY2hvc2UgdGhpcyBvbmUgKHZpYSAKYmluYXJ5IGJsb2IpLgoKLSBUaGUgRU1DIHRhYmxl
IGlzIG11Y2ggYmlnZ2VyIHRoYW4gdGhlIHByZXZpb3VzIFRlZ3JhIGdlbmVyYXRpb25zIAooTFBE
RFI0IHYucy4gTFBERFIyLzMpLiBJdCdzIGhhcmRlciB0byBzZXR0bGUgaW4gdGhlIHJldmlldyBw
cm9jZXNzLiBBbmQgCmlmIHRoZXJlIGlzIGEgbmV3IGZpeCBvZiB0aGUgdGFibGUgaW4gdGhlIGZ1
dHVyZSwgd2UnbGwgbmVlZCB0byBnbyAKdGhyb3VnaCB0aGF0IGFnYWluLgotIEJlY2F1c2UgaXQn
cyBMUEREUjQgd2Ugd2FudCB0byBzdXBwb3J0IGhlcmUsIHRvIHN1cHBvcnQgaGlnaGVyIHJhdGVz
LCAKdGhlIGRldmljZXMgaGF2ZSBtdXN0IGJlIGdvbmUgdGhyb3VnaCB0aGUgdHJhaW5pbmcgcHJv
Y2Vzcywgd2hpY2ggaXMgCmRvbmUgaW4gdGhlIGZpcm13YXJlLiBXaGljaCBtZWFucyBXZSBhbHJl
YWR5IGhhdmUgdGhlIHRhYmxlIHNvbWV3aGVyZSBpbiAKdGhlIG1lbW9yeSBhbmQga2VybmVsIGNh
biBqdXN0IHJlLXVzZSB0aGF0LiBObyBuZWVkIHRvIGNvbnZlcnQgdGhlbSBiYWNrIAp0byBEVCBh
bmQgcGFzcyB0byB0aGUga2VybmVsLiBUaGlzIGlzIG11Y2ggZWFzaWVyIHRvIG1haW50YWluIGlu
IHRoZSAKZnV0dXJlIGlmIHRoZXJlIGlzIHNvbWV0aGluZyBuZWVkcyB0byBmaXguCi0gV2l0aCB0
aGUgbWVjaGFuaXNtIGFib3ZlLCB3ZSBkb24ndCBuZWVkIHRvIG1haW50YWluIHRoZSBodWdlIEVN
QyB0YWJsZSAKaW4gdGhlIERUIGZpbGUgbGlrZSBiZWxvdy4KaHR0cDovL3BhdGNod29yay5vemxh
YnMub3JnL3BhdGNoLzEwNjM4ODYvCmh0dHA6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8x
MDYzODg5LwoKQW5kIHNvcnJ5LCBtYXliZSBpdCdzIG5vdCBjbGVhciBhdCB0aGF0IG1vbWVudCwg
YnV0IEkgZGlkIG1lbnRpb24gdGhhdCAKd2Ugd2FudCB0byBnbyB3aXRoIHRoZSBuZXcgbWV0aG9k
ICh2aWEgYmluYXJ5IGJsb2IpIGluIHRoZSBwcmV2aW91cyByZXZpZXcuClBsZWFzZSBzZWUgaHR0
cDovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEwODQ0NjcvCgpUaGFua3MsCkpvc2VwaAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
