Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F521C552
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8vZYhqtmobFu+X05KXG4rg+iNYE61FfKMNmX+uOkffg=; b=p95LeL3YLJwUIHiKkCzNtFTUf
	IGcp4KGQpsvQGXl4Yngecj0dTlRNf0MymbLIKVk60RF+SshPwaZVa1NTb4948LHb0AAsIdImAKJw5
	Rw83XMEzndPiHl7HojARYTL4iHLtSKHBoGQoqg8qwNoatqYDQHiHZiXmM8iR5iJVtVjPdbAo2SZ3w
	Pmi96mbOC/NsquusD2RBoJOMDFGtrjNcuZB21Kn0aj6OuZ8XA0/QS2ItxAQansxwLtOYG03igoWSy
	03mR/BpjtuMSTqQlbao9d+x3p3E4Ep6rxJu4zhsJZwpsWccw9qLm/zMofOyys7+KNJeX94RbS9LIT
	BCeHQAGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQT76-0000j6-6s; Tue, 14 May 2019 08:48:44 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQT6R-0008Va-Do
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:48:06 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cda80c80001>; Tue, 14 May 2019 01:48:08 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 14 May 2019 01:48:02 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 14 May 2019 01:48:02 -0700
Received: from [10.19.108.132] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 14 May
 2019 08:47:59 +0000
Subject: Re: [PATCH V3 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-6-josephl@nvidia.com>
 <dc580a9b-4d37-ae20-888d-3956b284c43b@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <54203d4d-aced-543e-6ebb-6ffacb7c8a85@nvidia.com>
Date: Tue, 14 May 2019 16:47:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <dc580a9b-4d37-ae20-888d-3956b284c43b@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557823689; bh=2pDfR96ft+DkHmObeX7LimIgSYODRuPau+zOD02fwpc=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=e+dJOnSHOc5lSyMjLif3L9flzVZF7VkRCma6Vq9NP8sL9qeXsttDnqKBDpVH9zep+
 sg4j2QjNmORbgyyXYK1mOyjAIskuDCuTtKDxj0mONmo3j7r/Vi9Dso1/zgo56pl3Eb
 xO5p3msARxfr30PhrJZYbhDrnhYo36eJKi3xrk4B0WJrrWcT2jH1pwZa2QXzkOcDer
 y1dk9K/jgQMHcQpx8WNo9Bsyx3iT/0D/BA/zlEI3MUhZQQIjj+EoTb8Iq5KSoDwVg7
 /Ewv5T687dhkWU48rVnJtNbZmP0pOSsp/eoY9wudqW/xdLreBOdNGXdFfRZnoFE3ai
 aIW0xf+EP8T2Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_014803_821226_FA0CD62C 
X-CRM114-Status: GOOD (  11.35  )
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

T24gNS8xNC8xOSAxOjAyIEFNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMTAuMDUuMjAxOSAx
MTo0NywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgcmVxdWly
ZWQgQVBJcyBhbmQgdmFyaWFibGVzIGZvciB0aGUgRU1DIHNjYWxpbmcKPj4gc2VxdWVuY2UgY29k
ZSBvbiBUZWdyYTIxMC4KPj4KPj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgUGV0ZXIgRGUgU2Nocmlq
dmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvc2Vw
aCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+PiAtLS0Kc25pcC4KPj4gK3ZvaWQgZG9fY2xvY2tf
Y2hhbmdlKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgdTMyIGNsa3NyYykKPj4gK3sKPj4gKwlpbnQg
ZXJyOwo+PiArCj4+ICsJbWNfcmVhZGwoZW1jLT5tYywgTUNfRU1FTV9BRFJfQ0ZHKTsKPj4gKwll
bWNfcmVhZGwoZW1jLCBFTUNfSU5UU1RBVFVTKTsKPj4gKwo+PiArCXRlZ3JhMjEwX2Nsa19lbWNf
dXBkYXRlX3NldHRpbmcoY2xrc3JjKTsKPj4gKwo+PiArCWVyciA9IHdhaXRfZm9yX3VwZGF0ZShl
bWMsIEVNQ19JTlRTVEFUVVMsCj4+ICsJCQkgICAgICBFTUNfSU5UU1RBVFVTX0NMS0NIQU5HRV9D
T01QTEVURSwgdHJ1ZSwgUkVHX0VNQyk7Cj4+ICsJaWYgKGVycikgewo+PiArCQlwcl9lcnIoIiVz
OiBjbG9jayBjaGFuZ2UgY29tcGxldGlvbiBlcnJvcjogJWQiLCBfX2Z1bmNfXywgZXJyKTsKPj4g
KwkJV0FSTl9PTigxKTsKPj4gKwl9Cj4+ICt9Cj4+ICsKPj4gK3N0cnVjdCBlbWNfdGFibGUgKmdl
dF90aW1pbmdfZnJvbV9mcmVxKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywKPj4gKwkJCQkgICAgICAg
dW5zaWduZWQgbG9uZyByYXRlKQo+PiArewo+PiArCWludCBpOwo+PiArCj4+ICsJZm9yIChpID0g
MDsgaSA8IGVtYy0+ZW1jX3RhYmxlX3NpemU7IGkrKykKPj4gKwkJaWYgKGVtYy0+ZW1jX3RhYmxl
W2ldLnJhdGUgPT0gcmF0ZSkKPj4gKwkJCXJldHVybiAmZW1jLT5lbWNfdGFibGVbaV07Cj4+ICsK
Pj4gKwlyZXR1cm4gTlVMTDsKPj4gK30KPj4gKwo+PiAraW50IHdhaXRfZm9yX3VwZGF0ZShzdHJ1
Y3QgdGVncmFfZW1jICplbWMsIHUzMiBzdGF0dXNfcmVnLCB1MzIgYml0X21hc2ssCj4+ICsJCSAg
ICBib29sIHVwZGF0ZWRfc3RhdGUsIGludCBjaGFuKQo+PiArewo+IAo+IFRoaXMgYW5kIGFsbCBv
dGhlciBnbG9iYWwgZnVuY3Rpb25zIGhhdmUgdmVyeSBnZW5lcmljIG5hbWVzLiBFaXRoZXIKPiBz
cXVhc2ggaXQgYWxsIGludG8gYSBzaW5nbGUgc291cmNlIGZpbGUgYW5kIG1ha2UgYWxsIGZ1bmN0
aW9ucyBzdGF0aWMsCj4gb3IgY2hhbmdlIHRoZSBuYW1lcyB0byBzb21ldGhpbmcgbW9yZSB1bmlx
dWUuCj4gCgpPa2F5LCB3aWxsIGZpeCBpdC4KClRoYW5rcywKSm9zZXBoCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
