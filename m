Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF3C1C5F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9IPj95/AiVfYC/fOFv1xtzoH7tnzsCreuOXzDcW42LA=; b=uof68u3OSHHA0TzZzvMaPw3oG
	KdMr2CuvhJkS1LEMVmrBwUJcogQh5OZ1yPqFSf1QvQmYTTzfvOcmNz8smIPvhWGvDbWGWVmOT7fyN
	ZKo305nk39xI6tDgCbojfAz8CXJyDM/64KA0pfdW23HAs7dwxAJ9vSir9ODprW2aYCWd6FKR5Hwk8
	+yEHF1zcAjRcu3nHUuwF1P9U3XvDa6yoFGt+r0MWf7WjVcyWtKaoVZPbeEkpucvT5InM/9TE29JLE
	3Np6Nb7RdaMH9G63eXdQjuIoXoQ/gx+g39wgslBFsnGcK0a9oausBVoHA23ZWyY43J/GyucDwrGyt
	ibww7Bz4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTdu-0001Er-Py; Tue, 14 May 2019 09:22:38 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTdn-0001ET-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:22:32 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cda88ae0001>; Tue, 14 May 2019 02:21:50 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 14 May 2019 02:22:29 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 14 May 2019 02:22:29 -0700
Received: from [10.19.108.132] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 14 May
 2019 09:22:27 +0000
Subject: Re: [PATCH V3 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-5-josephl@nvidia.com>
 <50d5719c-63fb-279b-cf8a-388010e7bdb3@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <27db5517-e2fc-ff24-7a96-932202160478@nvidia.com>
Date: Tue, 14 May 2019 17:22:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <50d5719c-63fb-279b-cf8a-388010e7bdb3@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557825710; bh=pBILzDqoND4hRcXAHGdRCas6NqBGMrFhgSUAE3rs7mg=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=cM6AYk95y4Ben/jUtGt4Dy9jxtTIFavon8+RT9ADCALtiQC3EusOzmAdJuHgZJ9O0
 ScqpqgDaWqfgNrBpPiWZjxFwpXch/96kVIYqtH7u7+0NhPnUP6gpLV50/276CqqNxD
 skLGAuD/c9GbbwhvKAveHbSth9mPwekLXrTBbnswMZAGud2/U0oA+UH5e0jSDm+Obp
 GFvMejXm3CVgcghsXeHY7VtL4NWiUqeO1k7Pf3vEX5uKPxCHMDwEuVG9eI7G/PzYxn
 n8Lmpd/3Cr3T2uHjRkdS3ftDLAYoKk6MvLvKKUB6U0GjBOPOIAi93N+gV5aZXTkTaT
 wHrqTDegZxVbQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_022231_292781_0B69AB8A 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gNS8xNC8xOSAxMjo1NCBBTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDEwLjA1LjIwMTkg
MTE6NDcsIEpvc2VwaCBMbyDQv9C40YjQtdGCOgo+PiBUaGlzIGlzIHRoZSBpbml0aWFsIHBhdGNo
IGZvciBUZWdyYTIxMCBFTUMgY2xvY2sgZHJpdmVyLCB3aGljaCBkb2Vzbid0Cj4+IGluY2x1ZGUg
dGhlIHN1cHBvcnQgY29kZSBhbmQgZGV0YWlsIHNlcXVlbmNlIGZvciBjbG9jayBzY2FsaW5nIHll
dC4KPj4KPj4gVGhlIGRyaXZlciBpcyBkZXNpZ25lZCB0byBzdXBwb3J0IExQRERSNCBTRFJBTS4g
QmVjYXVzZSBvZiB0aGUgTFBERFI0Cj4+IGRldmljZXMgbmVlZCB0byBkbyBpbml0aWFsIHRpbWUg
dHJhaW5pbmcgYmVmb3JlIGl0IGNhbiBiZSB1c2VkLCB0aGUKPj4gZmlybXdhcmUgd2lsbCBoZWxw
IHRvIGRvIHRoYXQgYXQgZWFybHkgYm9vdCBzdGFnZS4gVGhlbiwgdGhlIHRyYWluZWQKPj4gdGFi
bGUgZm9yIHRoZSByYXRlcyB3ZSBzdXBwb3J0IHdpbGwgcGFzcyB0byB0aGUga2VybmVsIHZpYSBE
VC4gU28gdGhlCj4+IGRyaXZlciBjYW4gZ2V0IHRoZSB0cmFpbmVkIHRhYmxlIGZvciBjbG9jayBz
Y2FsaW5nIHN1cHBvcnQuCj4+Cj4+IEZvciB0aGUgaGlnaGVyIHJhdGUgc3VwcG9ydCAoYWJvdmUg
ODAwTUh6KSwgdGhlIHBlcmlvZGljIHRyYWluaW5nIGlzCj4+IG5lZWRlZCBmb3IgdGhlIHRpbWlu
ZyBjb21wZW5zYXRpb24uIFNvIGJhc2ljYWxseSwgdHdvIG1ldGhvZG9sb2dpZXMgZm9yCj4+IGNs
b2NrIHNjYWxpbmcgYXJlIHN1cHBvcnRlZCwgb25lIGlzIGZvbGxvd2luZyB0aGUgY2xvY2sgY2hh
bmdpbmcKPj4gc2VxdWVuY2UgdG8gdXBkYXRlIHRoZSBFTUMgdGFibGUgdG8gRU1DIHJlZ2lzdGVy
cyBhbmQgYW5vdGhlciBpcyBpZiB0aGUKPj4gcmF0ZSBuZWVkcyBwZXJpb2RpYyB0cmFpbmluZywg
dGhlbiB3ZSB3aWxsIHN0YXJ0IGEgdGltZXIgdG8gZG8gdGhhdAo+PiBwZXJpb2RpY2FsbHkgdW50
aWwgaXQgc2NhbGVzIHRvIHRoZSBsb3dlciByYXRlLgo+Pgo+PiBCYXNlZCBvbiB0aGUgd29yayBv
ZiBQZXRlciBEZSBTY2hyaWp2ZXIgPHBkZXNjaHJpanZlckBudmlkaWEuY29tPi4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4+IC0tLQo+PiB2MzoK
Pj4gLSBhZGRyZXNzIGFsbW9zdCBhbGwgdGhlIGNvbW1lbnRzIGZyb20gdGhlIHByZXZpb3VzIHZl
cnNpb24KPj4gLSByZW1vdmUgdGhlIERUIHBhcnNlciBvZiBFTUMgdGFibGUKPj4gLSBUaGUgRU1D
IHRhYmxlIGlzIHBhc3NpbmcgYXMgYSBiaW5hcnkgYmxvYiBub3cuCj4+IC0tLQpzbmlwLgo+PiAr
I2lmZGVmIENPTkZJR19ERUJVR19GUwo+PiArc3RhdGljIGludCBlbWNfc3RhdHNfc2hvdyhzdHJ1
Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKmRhdGEpCj4+ICt7Cj4+ICsJaW50IGk7Cj4+ICsJc3RydWN0
IHRlZ3JhX2VtYyAqZW1jID0gKHN0cnVjdCB0ZWdyYV9lbWMgKilzLT5wcml2YXRlOwo+IAo+IFRo
ZXJlIGlzIG5vIG5lZWQgZm9yIGNhc3Rpbmcgb2YgdGhlIHZvaWQqLgo+IAo+PiArCj4+ICsJaWYg
KCFlbWMtPmVtY190YWJsZV9zaXplIHx8ICFzZXEpCj4+ICsJCXJldHVybiAwOwo+PiArCj4+ICsJ
ZW1jX2xhc3Rfc3RhdHNfdXBkYXRlKFRFR1JBX0VNQ19NQVhfRlJFUVMpOwo+PiArCj4+ICsJc2Vx
X3ByaW50ZihzLCAiJS0xMHMgJS0xMHNcbiIsICJyYXRlIGtIeiIsICJ0aW1lIik7Cj4+ICsJZm9y
IChpID0gMDsgaSA8IGVtYy0+ZW1jX3RhYmxlX3NpemU7IGkrKykgewo+PiArCQlpZiAoZW1jX2Ns
a19zZWxbaV0uaW5wdXQgPT0gTlVMTCkKPj4gKwkJCWNvbnRpbnVlOwo+PiArCj4+ICsJCXNlcV9w
cmludGYocywgIiUtMTB1ICUtMTBsbHVcbiIsCj4+ICsJCQkgICBlbWMtPmVtY190YWJsZVtpXS5y
YXRlLAo+PiArCQkJICAgamlmZmllc182NF90b19jbG9ja190KAo+PiArCQkJICAgZW1jX3N0YXRz
LnRpbWVfYXRfY2xvY2tbaV0pKTsKPj4gKwl9Cj4+ICsJc2VxX3ByaW50ZihzLCAiJS0xNXMgJWxs
dVxuIiwgInRyYW5zaXRpb25zOiIsCj4+ICsJCSAgIGVtY19zdGF0cy5jbGtjaGFuZ2VfY291bnQp
Owo+PiArCXNlcV9wcmludGYocywgIiUtMTVzICVsbHVcbiIsICJ0aW1lLXN0YW1wOiIsCj4+ICsJ
CSAgIGppZmZpZXNfNjRfdG9fY2xvY2tfdChlbWNfc3RhdHMubGFzdF91cGRhdGUpKTsKPiAKPiBE
ZXZmcmVxIHN1YnN5c3RlbSBoYXMgdGhlIHRyYW5zaXRpb24gc3RhdHMgdG9vIGFuZCBpdCBpcyBh
IGJpdCBtb3JlIGFkdmFuY2VkIHRoYW4gd2hhdCB5b3UgaGF2ZSBoZXJlLgo+IAo+ICAgY2F0IC9z
eXMvY2xhc3MvZGV2ZnJlcS9kZXZmcmVxMC90cmFuc19zdGF0Cj4gICAgICAgIEZyb20gIDogICBU
bwo+ICAgICAgICAgICAgICA6ICA1MDAwMDAwMCAxMDAwMDAwMDAgMTUwMDAwMDAwIDMwMDAwMDAw
MCA2MDAwMDAwMDAgICB0aW1lKG1zKQo+ICAgKiAgNTAwMDAwMDA6ICAgICAgICAgMCAgICAgICAg
IDQgICAgICAgICA0ICAgICAgICAgMCAgICAgICAgNDYgMTE4MDk2MjEwCj4gICAgIDEwMDAwMDAw
MDogICAgICAgIDIxICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgNSAgICAg
MTU0NjAKPiAgICAgMTUwMDAwMDAwOiAgICAgICAgMTAgICAgICAgICA5ICAgICAgICAgMCAgICAg
ICAgIDAgICAgIDEwNTYwICAyMDIxMzk0MAo+ICAgICAzMDAwMDAwMDA6ICAgICAgICAxMyAgICAg
ICAgIDYgICAgICA1MDU4ICAgICAgICAgMCAgICAgMjIzNzUgICA2ODQ4NjkwCj4gICAgIDYwMDAw
MDAwMDogICAgICAgIDExICAgICAgICAgNyAgICAgIDU1MTcgICAgIDI3NDUyICAgICAgICAgMCAg
MTE5NTg5OTAKPiAgIFRvdGFsIHRyYW5zaXRpb24gOiA3MTA5OAo+IAo+IEhlbmNlIEknbSBxdWVz
dGlvbmluZyB0aGUgbmVjZXNzaXR5IG9mIHRoZSBkZWJ1Zy1pbmZvIGR1cGxpY2F0aW9uLgo+IAoK
T2theSwgd2lsbCByZW1vdmUgdGhlIHN0YXRpc3RpYyBkYXRhIGluIHRoZSBuZXh0IHZlcnNpb24u
IEJUVywgSSB0aGluayAKd2Ugd2lsbCB1c2UgSW50ZXJjb25uZWN0IGZyYW1ld29yayBmb3IgdGhl
IEVNQyBCVyBtYW5hZ2VyIGZvciB0aGUgVGVncmEgCmNoaXBzID49IFQyMTAuCgpUaGFua3MsCkpv
c2VwaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
