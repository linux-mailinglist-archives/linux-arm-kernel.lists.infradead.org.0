Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8A238C42
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0r0aGr2OW3cUm5MvEW6HDbYc/qlDMDgFOoQhn4aQsNM=; b=KoNtIR21d3CBQEllPEXGp/HZf
	8lT7D1OlDC2AYkGxjlSUYmaT9NDtqe8lULAjW2mAKAq04RuvLLqgmQ4wMScWjqByDRG3hprKq9nXc
	ovrYZ95az498ALMvbWgUNH1Sukzks8jTuKlHznoxUW+xWkIF1xEN6v9dwjwfixaDdz+hsfXG1DpSj
	c0klBkf61TUiLeBb2lp5JZTIjUDqOChbtQF8yJrGHdH/7tNzrr5rXYCVmqwgkvdwlxscQhj3Hnz7d
	Y3m/Qt4C802Sk6xCOwlENGS9PLs/LM8zIOyiwMeFYOtQCqh+SQtRZr/wFc/yKzAsnNZ48OlY8kiVh
	+CTAGJQuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFa6-0000rJ-LX; Fri, 07 Jun 2019 14:10:58 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFZw-0000qr-LG
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:10:49 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cfa70640000>; Fri, 07 Jun 2019 07:10:44 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 07 Jun 2019 07:10:46 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 07 Jun 2019 07:10:46 -0700
Received: from [10.25.74.159] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 7 Jun
 2019 14:10:40 +0000
Subject: Re: [PATCH V8 14/15] PCI: tegra: Add Tegra194 PCIe support
To: Dmitry Osipenko <digetx@gmail.com>, <lorenzo.pieralisi@arm.com>,
 <bhelgaas@google.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <kishon@ti.com>,
 <catalin.marinas@arm.com>, <will.deacon@arm.com>, <jingoohan1@gmail.com>,
 <gustavo.pimentel@synopsys.com>
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-15-vidyas@nvidia.com>
 <f30e7fc6-3f64-d321-c32c-5e273115a869@gmail.com>
 <cbdac43f-32f7-c992-832b-ed40bef2375b@gmail.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <06f2f74e-d618-8688-14ae-beb4920bcbf6@nvidia.com>
Date: Fri, 7 Jun 2019 19:40:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <cbdac43f-32f7-c992-832b-ed40bef2375b@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559916644; bh=kCVs7s3ql5eXfQ55yWGJage7yhSr4zC1epcNDEDiQoA=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=iFEBpn0KD8A+Ae9ZNga92KTXdb4eRIXGYSolKJ129/Ih0D1VroYuNzwTITR4m0AJB
 1r+6arN8Ukdw/epqAKK07/e42nCmH11KLtIC+51rgz6DmxeQ1dTBExseCXKFJIEBA6
 uAur9CD7FEeYayB+wmanCY8ksw08o4OQB78/VE23vi0QIrdUDQi/bjQkjTvulbCHsB
 aKLyXU8kv5fS8lDWRSvru8XKx+qmRfYVD3XWiK6mLx4+oa3+bTIXQXR4H8pbF3eVbd
 WHLImrSDuG6C3CVREjsuPbYC5pG530GYSWCdinsboCchx2TI+pbAmxcF767bW+Wr87
 iHohkMdb9oy+g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_071048_713947_A3392312 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi83LzIwMTkgMTI6MjIgQU0sIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAwNi4wNi4yMDE5
IDE5OjM1LCBEbWl0cnkgT3NpcGVua28g0L/QuNGI0LXRgjoKPj4gMjYuMDUuMjAxOSA3OjM3LCBW
aWR5YSBTYWdhciDQv9C40YjQtdGCOgo+Pj4gQWRkIHN1cHBvcnQgZm9yIFN5bm9wc3lzIERlc2ln
bldhcmUgY29yZSBJUCBiYXNlZCBQQ0llIGhvc3QgY29udHJvbGxlcgo+Pj4gcHJlc2VudCBpbiBU
ZWdyYTE5NCBTb0MuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVmlkeWEgU2FnYXIgPHZpZHlhc0Bu
dmlkaWEuY29tPgo+Pj4gLS0tCj4+PiBDaGFuZ2VzIHNpbmNlIFt2N106Cj4+PiAqIEFkZHJlc3Nl
ZCByZXZpZXcgY29tbWVudHMgZnJvbSBUaGllcnJ5Cj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSBbdjZd
Ogo+Pj4gKiBSZW1vdmVkIGNvZGUgYXJvdW5kICJudmlkaWEsZGlzYWJsZS1hc3BtLXN0YXRlcyIg
RFQgcHJvcGVydHkKPj4+ICogUmVmYWN0b3JlZCBjb2RlIHRvIHJlbW92ZSBjb2RlIGR1cGxpY2F0
aW9uCj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSBbdjVdOgo+Pj4gKiBBZGRyZXNzZWQgcmV2aWV3IGNv
bW1lbnRzIGZyb20gVGhpZXJyeQo+Pj4KPj4+IENoYW5nZXMgc2luY2UgW3Y0XToKPj4+ICogTm9u
ZQo+Pj4KPj4+IENoYW5nZXMgc2luY2UgW3YzXToKPj4+ICogTm9uZQo+Pj4KPj4+IENoYW5nZXMg
c2luY2UgW3YyXToKPj4+ICogQ2hhbmdlZCAnbnZpZGlhLGluaXQtc3BlZWQnIHRvICdudmlkaWEs
aW5pdC1saW5rLXNwZWVkJwo+Pj4gKiBDaGFuZ2VkICdudmlkaWEscGV4LXdha2UnIHRvICdudmlk
aWEsd2FrZS1ncGlvcycKPj4+ICogUmVtb3ZlZCAucnVudGltZV9zdXNwZW5kKCkgJiAucnVudGlt
ZV9yZXN1bWUoKSBpbXBsZW1lbnRhdGlvbnMKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIFt2MV06Cj4+
PiAqIE1hZGUgQ09ORklHX1BDSUVfVEVHUkExOTQgYXMgJ20nIGJ5IGRlZmF1bHQgZnJvbSBpdHMg
cHJldmlvdXMgJ3knIHN0YXRlCj4+PiAqIE1vZGlmaWVkIGNvZGUgYXMgcGVyIGNoYW5nZXMgbWFk
ZSB0byBEVCBkb2N1bWVudGF0aW9uCj4+PiAqIFJlZmFjdG9yZWQgY29kZSB0byBhZGRyZXNzIEJq
b3JuICYgVGhpZXJyeSdzIHJldmlldyBjb21tZW50cwo+Pj4gKiBBZGRlZCBnb3RvIHRvIGF2b2lk
IHJlY3Vyc2lvbiBpbiB0ZWdyYV9wY2llX2R3X2hvc3RfaW5pdCgpIEFQSQo+Pj4gKiBNZXJnZWQg
LnNjYW5fYnVzKCkgb2YgZHdfcGNpZV9ob3N0X29wcyBpbXBsZW1lbnRhdGlvbiB0byB0ZWdyYV9w
Y2llX2R3X2hvc3RfaW5pdCgpIEFQSQo+Pj4KPj4+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvS2NvbmZpZyAgICAgICAgIHwgICAxMCArCj4+PiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL01ha2VmaWxlICAgICAgICB8ICAgIDEgKwo+Pj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXRlZ3JhMTk0LmMgfCAxNjIxICsrKysrKysrKysrKysrKysrKysrCj4+PiAgIDMg
ZmlsZXMgY2hhbmdlZCwgMTYzMiBpbnNlcnRpb25zKCspCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXRlZ3JhMTk0LmMKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPj4+IGluZGV4IGE2Y2UxZWU1MWI0Yy4uODg0MTEyYWZj
MTFiIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+
Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+Pj4gQEAgLTIyMCw2
ICsyMjAsMTYgQEAgY29uZmlnIFBDSV9NRVNPTgo+Pj4gICAJICBhbmQgdGhlcmVmb3JlIHRoZSBk
cml2ZXIgcmUtdXNlcyB0aGUgRGVzaWduV2FyZSBjb3JlIGZ1bmN0aW9ucyB0bwo+Pj4gICAJICBp
bXBsZW1lbnQgdGhlIGRyaXZlci4KPj4+ICAgCj4+PiArY29uZmlnIFBDSUVfVEVHUkExOTQKPj4+
ICsJdHJpc3RhdGUgIk5WSURJQSBUZWdyYTE5NCAoYW5kIGxhdGVyKSBQQ0llIGNvbnRyb2xsZXIi
Cj4+PiArCWRlcGVuZHMgb24gKFRFR1JBX0JQTVAgJiYgQVJDSF9URUdSQSkgfHwgQ09NUElMRV9U
RVNUCj4+Cj4+IFRFR1JBX0JQTVAgd2lsbCBiZSBlbm91Z2ggaGVyZSBhcyBpdCBkZXBlbmRzIG9u
IG90aGVyIHJlbGV2YW50IG9wdGlvbnMuCj4+Cj4+IEhlbmNlIEkgbWVhbjoKPj4KPj4gCWRlcGVu
ZHMgb24gVEVHUkFfQlBNUCB8fCBDT01QSUxFX1RFU1QKPiAKPiBNYXliZSBpdCdzIHdvcnRoIHRv
IGV2ZW4gY2hhbmdlIFRFR1JBX0JQTVAgdG8gQVJDSF9URUdSQV8xOTRfU09DLgo+IEFsdGhvdWdo
IHRoZW4geW91J2xsIGhhdmUgdG8gZXh0ZW5kIGl0IHdpdGggb3RoZXIgcGxhdGZvcm1zIGxhdGVy
IG9uLAo+IGJ1dCBwcm9iYWJseSB0aGF0J3MgZmluZS4KSSByZWNlaXZlZCBhbiBleHBsaWNpdCBj
b21tZW50IHByZXZpb3VzbHkgdG8gbWFrZSB0aGlzIGRlcGVuZGVudCBvbiBURUdSQV9CUE1QCmFz
IHRoZSBkcml2ZXIgaXMgdXNpbmcgQVBJcyB0byBnZXQgY2VydGFpbiBqb2JzIGRvbmUgYnkgQlBN
UC1GVy4gQnV0LCBzaW5jZQp3ZSBjYW4ndCBib290IGtlcm5lbCBpbiB0aGUgZmlyc3QgcGxhY2Ug
d2l0aG91dCBoYXZpbmcgQlBNUC1GVyBpbiBwbGFjZSwgSSB0aGluawppdCBzaG91bGQgYmUgZmlu
ZSB0byBtYWtlIGl0IGRlcGVuZGVudCBvbiBBUkNIX1RFR1JBXzE5NF9TT0MgZGlyZWN0bHkuCgo+
IAo+Pgo+Pj4gKwlkZXBlbmRzIG9uIFBDSV9NU0lfSVJRX0RPTUFJTgo+Pgo+PiBZb3UgcHJvYmFi
bHkgd2FudCB0byBzL2RlcGVuZHMgb24vc2VsZWN0LyBQQ0lfTVNJX0lSUV9ET01BSU4sIGRvbid0
IHlvdT8KPj4KPiAKPiBJIGFjdHVhbGx5IGxvb2tlZCB1cCB0aGUgUENJX01TSV9JUlFfRE9NQUlO
IGFuZCBpdCBpcyBjb3JyZWN0IGluIHlvdXIKPiBjYXNlLCBteSBiYWQuCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
