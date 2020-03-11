Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E1F181D74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EcIF7qc5fqu86Py58I4zAeFwupPNsRi40MR3ldRVcDo=; b=Js/sHNxKBJR63afIpMRLKhsAd
	Yo6glLXuySSDTwZan2YblmKVsbnAmQNg32eSOI8Jm92gj+dwl3Jo6HfDV+pNhk/KVii0G4p85RFOH
	+nJareHKzjtZ/X/ggb1+bO1U9SZujo9jUOG9Pw+1d0UW+kL8TXGzLefqd6e5+n+1XRsfHpnI4BcUG
	OWWHDV8LF9vtPkhlCPPbrxoFT7EiCYHNIlaWmLIbSdedU8nN4kRdSeDFmVSP2kvstKAGsWVdVzg75
	kKOyuRGbBtWLH0/bv4Jci3BV/dXIK1rr0CKT1VxlcmBqJG/RN/c6ByuYIa5DvDc/+Fg0+ixrHynvh
	Kuyz9TeuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3yw-0001J7-2U; Wed, 11 Mar 2020 16:13:18 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3yk-0001GZ-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:13:08 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 2AB209834BBA91B04D59;
 Wed, 11 Mar 2020 16:13:00 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML710-CAH.china.huawei.com (10.201.108.33) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 11 Mar 2020 16:12:59 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 11 Mar
 2020 16:12:59 +0000
Subject: Re: About commit "io: change inX() to have their own IO barrier
 overrides"
From: John Garry <john.garry@huawei.com>
To: Arnd Bergmann <arnd@arndb.de>
References: <2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com>
 <c1489f55-369d-2cff-ff36-b10fb5d3ee79@kernel.org>
 <8207cd51-5b94-2f15-de9f-d85c9c385bca@huawei.com>
 <6115fa56-a471-1e9f-edbb-e643fa4e7e11@kernel.org>
 <7c955142-1fcb-d99e-69e4-1e0d3d9eb8c3@huawei.com>
 <CAK8P3a0f9hnKGd6GJ8qFZSu+J-n4fY23TCGxQkmgJaxbpre50Q@mail.gmail.com>
 <90af535f-00ef-c1e3-ec20-aae2bd2a0d88@kernel.org>
 <CAK8P3a2Grd0JsBNsB19oAxrAFtOdpvjrpGcfeArKe7zD_jrUZw@mail.gmail.com>
 <ae0a1bf1-948f-7df0-9efb-cd1e94e27d2d@huawei.com>
 <CAK8P3a2wdCrBP=a8ZypWoC=HyCU3oYYNeCddWM7oT+xM9gTPhw@mail.gmail.com>
 <182a37c2-7437-b1bd-8b86-5c9ce2e29f00@huawei.com>
 <CAK8P3a22fEGdVKVVs_40Rc_vs9SQ2ikejwMtFpyR_o+74utWaA@mail.gmail.com>
 <15e7158d-184d-9591-89a6-cd6b10ef054d@huawei.com>
Message-ID: <96b407eb-f9cd-960c-02e5-5e2a4ece33d8@huawei.com>
Date: Wed, 11 Mar 2020 16:12:58 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <15e7158d-184d-9591-89a6-cd6b10ef054d@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml735-chm.china.huawei.com (10.201.108.86) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_091306_686223_338595A4 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Sinan Kaya <okaya@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "xuwei \(O\)" <xuwei5@hisilicon.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDMvMjAyMCAxNjo0MywgSm9obiBHYXJyeSB3cm90ZToKPiBPbiAwNi8wMy8yMDIwIDE2
OjI5LCBBcm5kIEJlcmdtYW5uIHdyb3RlOgo+Pj4gVGhlIGlkZWEgaXMgZ29vZCwgYnV0IGl0IHdv
dWxkIGJlIG5pY2UgaWYgd2UganVzdCBzb21laG93IHVzZSBhIGNvbW1vbgo+Pj4gYXNtLWdlbmVy
aWMgaW8uaCBkZWZpbml0aW9uIGRpcmVjdGx5IGluIGxvZ2ljX3Bpby5jLCBsaWtlOgo+Pj4KPj4+
IGFzbS1nZW5lcmljIGlvLmg6Cj4+Pgo+Pj4gI2lmbmRlZiBfX3Jhd19pbncgLy8gbmFtZT8KPj4+
ICNkZWZpbmUgX19yYXdfaW53IF9fcmF3X2ludwo+Pj4gc3RhdGljIGlubGluZSB1MTYgX19yYXdf
aW53KHVuc2lnbmVkIGxvbmcgYWRkcikKPj4+IHsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgdTE2IHZh
bDsKPj4+Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIF9faW9fcGJyKCk7Cj4+PiDCoMKgwqDCoMKgwqDC
oMKgIHZhbCA9IF9fbGUxNl90b19jcHUoX19yYXdfcmVhZHcoYWRkcikpOwo+Pj4gwqDCoMKgwqDC
oMKgwqDCoCBfX2lvX3Bhcih2YWwpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdmFsOwo+
Pj4gfQo+Pj4gI2VuZGlmCj4+Pgo+Pj4gI2luY2x1ZGUgPGxpbnV4L2xvZ2ljX3Bpby5oPgo+Pj4K
Pj4+ICNpZm5kZWYgaW53Cj4+PiAjZGVmaW5lIGludyBfX3Jhd19pbncKPj4+ICNlbmRpZgo+PiBZ
ZXMsIG1ha2VzIHNlbnNlLiBNYXliZSBfX2FyY2hfaW53KCkgdGhlbj8gTm90IGdyZWF0IGVpdGhl
ciwgYnV0IEkgdGhpbmsKPj4gdGhhdCdzIGJldHRlciB0aGFuIF9fcmF3X2ludygpIGJlY2F1c2Ug
X19yYXdfKiB3b3VsZCBzb3VuZCBsaWtlIGl0Cj4+IG1pcnJvcnMgX19yYXdfcmVhZGwoKSB0aGF0
IGxhY2tzIHRoZSBiYXJyaWVycyBhbmQgYnl0ZXN3YXBzLgo+IAo+IFJpZ2h0LCBJIGhhZCB0aGUg
c2FtZSBjb25jZXJuLiBBbmQgbWF5YmUgdGhlICJhcmNoIiBwcmVmaXggaXMgCj4gbWlzbGVhZGlu
Zy4gSnVzdCBfX2ludyBjb3VsZCBiZSBvaywgYW5kIGhvcGVmdWxseSBub3QgY29uZmxpY3Qgd2l0
aCB0aGUgCj4gYXJjaC9hcm0vbWFjaC0qIGRlZmluaXRpb25zLgo+IAoKSSB0aGluayB0aGF0IGl0
IGhhc24ndCBiZWVuIG1lbnRpb25lZCBhbHJlYWR5LCBidXQgaXQgbG9va3MgbGlrZSB0aGUgCm91
dFggbWV0aG9kcyBhbHNvIG5lZWQgdGhlIHNhbWUgdHJlYXRtZW50LCBmcm9tIGE3ODUxYWE1NGMu
Cgp0aGFua3MsCkpvaG4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
