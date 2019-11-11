Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60787F703E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 10:15:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5RPrus1FrtFfbrzGL7eD8qDKoAL21YeyNJQiVRRiAQ=; b=YcZ3sSNDW89n6H
	blb6TI9ahxVJCUnAz8Rc7XmoIUSz6xEoARoitNU0uFHzCuW68ZiDNJPx7fkO00BphEKrj2ysd7+sP
	B/pySCfp9o1CmP/zcoTr6Gn8FZBshoEsmQQJ8dvkXPh5BEkAm9RG3zcefCd62UTgEik/cGHhSRB+x
	GEzWtmsILcrF8Ii2hI3gwBHmSflt/d/4Nh6u63G/F++vbHjUiFbOhIsnzb4/UdxhVMRvony7XrkCA
	EGJQMf4bdYQ1JA0lU4WoyP+Zgp5jScNQDyPJ6O1uqI2tXrdC23uzlCPR/m059ALgZZ8JYQcCcsAKR
	t1zwopBR5I82Zng6jxvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU5n5-0005KQ-4G; Mon, 11 Nov 2019 09:15:19 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU5mp-0004UN-7h
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 09:15:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB9Etav002180;
 Mon, 11 Nov 2019 03:14:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573463695;
 bh=A9b+LfFAU9abDyZML7frujnSPbQT16TGgA6T2WhOOz4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=fQXw6SsF4mnZggBOhlgS28uuqZ4Tzagnl1FPaRYECHFiWK6vN9ubexYdHjs1HIhZ4
 8Fy986pCalwDYiZXODoSgiQJIoj+1iYER22prIGrZPa3Qcwdu5LLK1nqegB9+BFZr/
 Rf8UcyjnoItwQGskYC/OHAIMqer6vRO859N09DhI=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAB9Et3o062305
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 03:14:55 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 03:14:37 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 03:14:37 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB9Epbh106565;
 Mon, 11 Nov 2019 03:14:51 -0600
Subject: Re: [PATCH v4 10/15] dmaengine: ti: New driver for K3 UDMA - split#2:
 probe/remove, xlate and filter_fn
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-11-peter.ujfalusi@ti.com>
 <20191111053301.GO952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <9b0f8bec-4964-8136-4173-7b45e479c0c5@ti.com>
Date: Mon, 11 Nov 2019 11:16:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111053301.GO952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_011503_362930_1037E0DA 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDcuMzMsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPj4gK3N0YXRpYyBib29sIHVkbWFfZG1hX2Zp
bHRlcl9mbihzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4sIHZvaWQgKnBhcmFtKQo+PiArewo+PiArCXN0
cnVjdCBwc2lsX2VuZHBvaW50X2NvbmZpZyAqZXBfY29uZmlnOwo+PiArCXN0cnVjdCB1ZG1hX2No
YW4gKnVjOwo+PiArCXN0cnVjdCB1ZG1hX2RldiAqdWQ7Cj4+ICsJdTMyICphcmdzOwo+PiArCj4+
ICsJaWYgKGNoYW4tPmRldmljZS0+ZGV2LT5kcml2ZXIgIT0gJnVkbWFfZHJpdmVyLmRyaXZlcikK
Pj4gKwkJcmV0dXJuIGZhbHNlOwo+PiArCj4+ICsJdWMgPSB0b191ZG1hX2NoYW4oY2hhbik7Cj4+
ICsJdWQgPSB1Yy0+dWQ7Cj4+ICsJYXJncyA9IHBhcmFtOwo+PiArCXVjLT5yZW1vdGVfdGhyZWFk
X2lkID0gYXJnc1swXTsKPj4gKwo+PiArCWlmICh1Yy0+cmVtb3RlX3RocmVhZF9pZCAmIEszX1BT
SUxfRFNUX1RIUkVBRF9JRF9PRkZTRVQpCj4+ICsJCXVjLT5kaXIgPSBETUFfTUVNX1RPX0RFVjsK
Pj4gKwllbHNlCj4+ICsJCXVjLT5kaXIgPSBETUFfREVWX1RPX01FTTsKPiAKPiBDYW4geW91IGV4
cGxhaW4gdGhpcyBhIGJpdD8KClRoZSBVRE1BUCBpbiBLMyB3b3JrcyBiZXR3ZWVuIHR3byBQU0kt
TCBlbmRwb2ludC4gVGhlIHNvdXJjZSBhbmQKZGVzdGluYXRpb24gbmVlZHMgdG8gYmUgcGFpcmVk
IHRvIGFsbG93IGRhdGEgZmxvdy4KU291cmNlIHRocmVhZCBJRHMgYXJlIGluIHJhbmdlIG9mIDB4
MDAwMCAtIDB4N2ZmZiwgd2hpbGUgZGVzdGluYXRpb24KdGhyZWFkIElEcyBhcmUgMHg4MDAwIC0g
MHhmZmZmLgoKSWYgdGhlIHJlbW90ZSB0aHJlYWQgSUQgaGF2ZSB0aGUgYml0IDMxIHNldCAoMHg4
MDAwKSB0aGVuIHRoZSB0cmFuc2ZlcgppcyBNRU1fVE9fREVWIGFuZCBJIG5lZWQgdG8gcGljayBv
bmUgdW51c2VkIHRjaGFuIGZvciBpdC4gSWYgdGhlIHJlbW90ZQppcyB0aGUgc291cmNlIHRoZW4g
aXQgY2FuIGJlIGhhbmRsZWQgYnkgcmNoYW4uCgpkbWFzID0gPCZtYWluX3VkbWFwIDB4YzQwMD4s
IDwmbWFpbl91ZG1hcCAweDQ0MDA+OwpkbWEtbmFtZXMgPSAidHgiLCAicngiOwoKMHhjNDAwIGlz
IGEgZGVzdGluYXRpb24gdGhyZWFkIElELCBzbyBpdCBpcyBNRU1fVE9fREVWCjB4NDQwMCBpcyBh
IHNvdXJjZSB0aHJlYWQgSUQsIHNvIGl0IGlzIERFVl9UT19NRU0KCkV2ZW4gaW4gTUVNX1RPX01F
TSBjYXNlIEkgbmVlZCB0byBwYWlyIHR3byBVRE1BUCBjaGFubmVsczoKVURNQVAgc291cmNlIHRo
cmVhZHMgYXJlIHN0YXJ0aW5nIGF0IG9mZnNldCAweDEwMDAsIFVETUFQIGRlc3RpbmF0aW9uCnRo
cmVhZHMgYXJlIDB4OTAwMCsKCkNoYW5naW5nIGRpcmVjdGlvbiBydW50aW1lIGlzIGhhcmRseSBw
b3NzaWJsZSBhcyBpdCB3b3VsZCBpbnZvbHZlCnRlYXJpbmcgZG93biB0aGUgY2hhbm5lbCwgcmVt
b3ZpbmcgaW50ZXJydXB0cywgZGVzdHJveWluZyByaW5ncywKcmVtb3ZpbmcgdGhlIFBTSS1MIHBh
aXJpbmcgYW5kIHJlZG9pbmcgZXZlcnl0aGluZy4KCj4+ICtzdGF0aWMgaW50IHVkbWFfcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICt7Cj4+ICsJc3RydWN0IHVkbWFfZGV2
ICp1ZCA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+PiArCj4+ICsJb2ZfZG1hX2NvbnRy
b2xsZXJfZnJlZShwZGV2LT5kZXYub2Zfbm9kZSk7Cj4+ICsJZG1hX2FzeW5jX2RldmljZV91bnJl
Z2lzdGVyKCZ1ZC0+ZGRldik7Cj4+ICsKPj4gKwkvKiBNYWtlIHN1cmUgdGhhdCB3ZSBkaWQgcHJv
cGVyIGNsZWFudXAgKi8KPj4gKwljYW5jZWxfd29ya19zeW5jKCZ1ZC0+cHVyZ2Vfd29yayk7Cj4+
ICsJdWRtYV9wdXJnZV9kZXNjX3dvcmsoJnVkLT5wdXJnZV93b3JrKTsKPiAKPiBraWxsIHRoZSB2
Y2hhbiB0YXNrbGV0cyBhdCBpdCB0b28gcGxlYXNlCgpPaCwgSSBoYXZlIG1pc3NlZCB0aGF0LCBJ
J2xsIGFkZCBpdC4KCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jr
a2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1
MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
