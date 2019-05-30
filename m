Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B3C2EACF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9Ix1z94pBOWt54xGPj80bCkL2yflufp/C9zJj6k3WF4=; b=g3ev5TtHvdHazez4jHMMqOxPW
	/tSKEXFqUfYSPcTwD14ougpht30bJoL29Fgxq/aSbrcslhXFBM1B/A6WJfNIyl687+cqNo4rB0R6+
	rmdCzghYtz8HhIBe+cpVVmGWT1v8E4zA7reftEFW9e8l0iIwwyt5qZ1WZMVxVwmclh7TC5TTCu27t
	37oMO6vqLaOD66ypnwtelzLr86STDEpBu7POM1P+oSXJ4etZGbYY0hx1EFkk4gtWnmV4Cs5fdhXfJ
	Zeh7tScobMYEt97uvfn43WttllhZFoD3Eo+HHAhFByjpfFb4ZyIf1FxBrquCPBKLjKNpycZ8JEfX3
	z3Hr0ohGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWB4s-0006j7-6I; Thu, 30 May 2019 02:46:02 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWB4l-0006in-Ao
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 02:45:56 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cef43e20000>; Wed, 29 May 2019 19:45:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 19:45:55 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 29 May 2019 19:45:55 -0700
Received: from [10.19.108.132] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 30 May
 2019 02:45:52 +0000
Subject: Re: [PATCH V4 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-6-josephl@nvidia.com>
 <5bd95d0b-e1a5-e717-4d5a-b9ef5d5fa4a5@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <f59d78aa-aa70-574f-a8b6-1364861f8319@nvidia.com>
Date: Thu, 30 May 2019 10:45:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5bd95d0b-e1a5-e717-4d5a-b9ef5d5fa4a5@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559184354; bh=hNctZqd1otSqNs4iEYk392pZ2UDSFDTLmtvDt7XF5Xk=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=JOLYJx6HdqU5nCvkSdqZg8FqBov9nv6dJeAGfZ8VUDRUhBDKKzq0vaSs1smiafYmY
 qexLAIESRrzTn4N4SgJNi1Q47FO6/zHgtgpjIagCiPJjSB3Hek71XxSLpUfkYV9SQw
 DHHpDZG9ZhHEQDKMmThegRM+zKN7NjzDRt+Vrg5YpiIRAp29lSFHcnEFbzMrs61OHn
 VSJGaJ8JsriaLzSIjF86/mht5p7Mt2m08gZCOvVanQDMSbm4smEis7zTOzYkMfsvIS
 Kc4Ddo4Q2aYMKCKJpZdRmoe3JT5ne7AjiBPnC70GF737cA0q0/PVX4jIqDzikwVOok
 GEO1bQPd886cA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_194555_384025_32AB6F8F 
X-CRM114-Status: GOOD (  10.17  )
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

T24gNS8yOS8xOSA5OjM3IFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMjkuMDUuMjAxOSAx
MToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgcmVxdWly
ZWQgQVBJcyBhbmQgdmFyaWFibGVzIGZvciB0aGUgRU1DIHNjYWxpbmcKPj4gc2VxdWVuY2UgY29k
ZSBvbiBUZWdyYTIxMC4KPj4KPj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgUGV0ZXIgRGUgU2Nocmlq
dmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvc2Vw
aCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+PiAtLS0KPj4gdjQ6Cj4+IC0gZml4IHRoZSBBUEkg
d2l0aCBnZW5lcmljIG5hbWluZwo+PiAtIHVzZSAndTE2JyBpbiAnc3RydWN0IGVtY190YWJsZV9y
ZWdpc3Rlcl9vZmZzZXQnCj4+IC0tLQo+IAo+IFtzbmlwXQo+IAo+PiArdm9pZCBlbWNfd3JpdGVs
KHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgdTMyIHZhbCwgdW5zaWduZWQgbG9uZyBvZmZzZXQpCj4+
ICt7Cj4+ICsJd3JpdGVsX3JlbGF4ZWQodmFsLCBlbWMtPmVtY19iYXNlW1JFR19FTUNdICsgb2Zm
c2V0KTsKPj4gK30KPj4gKwo+PiAgIHUzMiBlbWNfcmVhZGwoc3RydWN0IHRlZ3JhX2VtYyAqZW1j
LCB1bnNpZ25lZCBsb25nIG9mZnNldCkKPj4gICB7Cj4+ICAgCXJldHVybiByZWFkbF9yZWxheGVk
KGVtYy0+ZW1jX2Jhc2VbUkVHX0VNQ10gKyBvZmZzZXQpOwo+PiAgIH0KPj4gICAKPj4gK3UzMiBl
bWMxX3JlYWRsKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgdW5zaWduZWQgbG9uZyBvZmZzZXQpCj4+
ICt7Cj4+ICsJcmV0dXJuIHJlYWRsX3JlbGF4ZWQoZW1jLT5lbWNfYmFzZVtSRUdfRU1DMV0gKyBv
ZmZzZXQpOwo+PiArfQo+IAo+IFBsZWFzZSBtYWtlIGFsbCB0aGUgZ2xvYmFsIG9uZS1saW5lIGZ1
bmN0aW9ucyBzdGF0aWMgYW5kIGlubGluZWQsIHRoZW4KPiBtb3ZlIHRoZW0gb3V0IGludG8gdGhl
IGhlYWRlci4gVGhpcyB3aWxsIGFsbG93IGNvbXBpbGVyIHRvIG9wdGltaXplIGNvZGUKPiBiZXR0
ZXIgYW5kIGFsc28gd2lsbCBoaWRlIHRoZXNlIGdlbmVyaWMtbG9va2luZyBnbG9iYWwgc3ltYm9s
IG5hbWVzIGZyb20KPiB1bnJlbGF0ZWQgcGFydGllcyBpbiB0aGUgbXVsdGlwbGF0Zm9ybSBrZXJu
ZWwgYnVpbGQuCgpPa2F5LCB3aWxsIGRvLgoKVGhhbmtzLApKb3NlcGgKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
