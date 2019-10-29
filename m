Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8993AE8990
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CEuPMNhCEbQjYY0hG8Epyz86+MDm88NqshOdL7G3WAw=; b=cgZVWEzMKUgE5Xtybu7/bE1wR
	4SAONvhjr9mH+6o2AsIuI54mKKetURFO7zEFcnSaAY5h0tLX0dS4Zyv89ud7AbPdetSVKmBpwNxEz
	rz9Pcc9LFXhP9u56McLrdYOxdj9FO9eDdNL2uyMvHzlRgeIEUNYkWlw9AiAWRNG1pYDrLzbRaLjQn
	JGsSnbRmejkcSrIpfA/8/GE54qgr4NVz3ujhcxbEyJatq2nJ1ZpsisI84vgWqdpAEDwYVULp4NCAu
	xlC+0N572a6Yw7eG9lzTClzhmfCj+ZPuL+WyXc+3ddiLC1+5jTQBRi6Czxwpw71mTpk3TJeZzm1LR
	Hrf2Q4taw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRb5-0003wk-LR; Tue, 29 Oct 2019 13:31:43 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRar-0003u2-NY
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:31:35 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B145089EF28F21D4DC20;
 Tue, 29 Oct 2019 21:31:27 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Tue, 29 Oct 2019
 21:31:19 +0800
Subject: Re: [PATCH 3/3] KVM: arm/arm64: vgic: Don't rely on the wrong pending
 table
To: Auger Eric <eric.auger@redhat.com>, Marc Zyngier <maz@kernel.org>
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-4-yuzenghui@huawei.com> <86mudjykfa.wl-maz@kernel.org>
 <f8a30e65-7077-301a-1558-7fc504b5e891@huawei.com>
 <e2141f6a-c530-46d5-d5d9-26806b02d55b@redhat.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <01638947-ce47-2e09-68f0-a95eb6e9b2d0@huawei.com>
Date: Tue, 29 Oct 2019 21:31:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <e2141f6a-c530-46d5-d5d9-26806b02d55b@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_063133_655084_B9D0A452 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRXJpYywKCk9uIDIwMTkvMTAvMjkgMjA6NDksIEF1Z2VyIEVyaWMgd3JvdGU6Cj4gT24gMTAv
MjkvMTkgMToyNyBQTSwgWmVuZ2h1aSBZdSB3cm90ZToKPj4gb2theSwgdGhlIHJlbWFpbmluZyBx
dWVzdGlvbiBpcyB0aGF0IGluIHZnaWNfdjNfc2F2ZV9wZW5kaW5nX3RhYmxlcygpOgo+Pgo+PiAg
wqDCoMKgwqBzdG9yZWQgPSB2YWwgJiAoMVUgPDwgYml0X25yKTsKPj4gIMKgwqDCoMKgaWYgKHN0
b3JlZCA9PSBpcnEtPnBlbmRpbmdfbGF0Y2gpCj4+ICDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsK
Pj4KPj4gIMKgwqDCoMKgaWYgKGlycS0+cGVuZGluZ19sYXRjaCkKPj4gIMKgwqDCoMKgwqDCoMKg
IHZhbCB8PSAxIDw8IGJpdF9ucjsKPj4gIMKgwqDCoMKgZWxzZQo+PiAgwqDCoMKgwqDCoMKgwqAg
dmFsICY9IH4oMSA8PCBiaXRfbnIpOwo+Pgo+PiBEbyB3ZSByZWFsbHkgaGF2ZSBhIHNjZW5hcmlv
IHdoZXJlIGlycS0+cGVuZGluZ19sYXRjaD09ZmFsc2UgYW5kCj4+IHN0b3JlZD09dHJ1ZSAoY29y
cmVzcG9uZHMgdG8gdGhlIGFib3ZlICJlbHNlIikgYW5kIHRoZW4gd2UgY2xlYXIKPj4gcGVuZGlu
ZyBzdGF0dXMgb2YgdGhpcyBMUEkgaW4gZ3Vlc3QgbWVtb3J5Pwo+PiBJIGNhbiBub3QgdGhpbmsg
b3V0IG9uZSBub3cuCj4gCj4gaWYgeW91IHNhdmUsIHJlc3RvcmUgYW5kIHNhdmUgYWdhaW4uIE9u
IHRoZSAxc3Qgc2F2ZSB0aGUgTFBJIG1heSBiZQo+IHBlbmRpbmcsIGl0IGdldHMgc3RvcmVkLiBP
biB0aGUgc2Vjb25kIHNhdmUgdGhlIExQSSBtYXkgYmUgbm90IHBlbmRpbmcKPiBhbnltb3JlPwoK
SSBhc3N1bWUgeW91IG1lYW4gdGhlICJyZXN0b3JlIiBieSB2Z2ljX2l0c19yZXN0b3JlX2l0ZSgp
LgoKV2hpbGUgcmVzdG9yaW5nIGEgTFBJLCB3ZSB3aWxsIHN5bmMgdGhlIHBlbmRpbmcgc3RhdHVz
IGZyb20gZ3Vlc3QKcGVuZGluZyB0YWJsZSAoaW50byB0aGUgc29mdHdhcmUgcGVuZGluZ19sYXRj
aCksIGFuZCBjbGVhciB0aGUKY29ycmVzcG9uZGluZyBiaXQgaW4gZ3Vlc3QgbWVtb3J5LgpTZWUg
dmdpY192M19scGlfc3luY19wZW5kaW5nX3N0YXR1cygpLgoKU28gb24gdGhlIHNlY29uZCBzYXZl
LCB0aGUgTFBJIGNhbiBiZSBub3QgcGVuZGluZywgdGhlIGd1ZXN0IHBlbmRpbmcKdGFibGUgd2ls
bCBhbHNvIGluZGljYXRlIG5vdCBwZW5kaW5nLgoKClRoYW5rcywKWmVuZ2h1aQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
