Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8868A129220
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:11:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4LWL81CRmhbSr5JgBalXIojhDFdw7agCTGRgb2KZEQ=; b=NRXZjwsOIMzN37
	0CWi+y1Ktl4jh0uJqWdwR6QZIgnqphajCk9Xz3qkKbWQsqAp7G5jbiv+sk1nd0YjHvTR+9Tx0I7RB
	MbW1TU2dWiLP36+vM+kZj5naCteUv8SBpI+O0ouZkisENgYCJwSlJH60hsjvXWlNqoHn+YjeDHiSq
	9aYZBll1nEynkdqwCs+KmZmghuXyL1OddocYQgBZx7kkFassZGGhgOPrrIaA40Ifoxf4uVGnGRCxH
	IpDpte8GfLRY7rOmVcqgG2P4+I5W9CHcr6Unb9sSReZ3afCACGaGA3N1R4VIfsVbbiUfygsky0gj4
	p2XcGfzmp4OEvXQ3vuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHsC-0000FK-Ct; Mon, 23 Dec 2019 07:11:24 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHs2-0000EU-Pi
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:11:16 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBN7B4Cf088308;
 Mon, 23 Dec 2019 01:11:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577085064;
 bh=02Y5bx6iWO9Ds4+8bjzc1aI2WrawgyCHLyU/VpC8TA4=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=lftrXC8/DpJwn4Aso0DNv9JYSikjp4xa+4lEDZ8K4mMS3sGTr4XSiQvYnp4pLYSuH
 emlLOLHPhfy9CXMN3gbQHLrlYWlz0dKcfUx2YOIpr0ipSzjmm7F6/lJoztW2mLuZba
 7J0/QvgAdr1EpLS7GrofRWhCtadHOEZFbvjK/uV8=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBN7B4JB086044
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Dec 2019 01:11:04 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 01:11:02 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 01:11:02 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBN7AxHw061310;
 Mon, 23 Dec 2019 01:10:59 -0600
Subject: Re: [PATCH v7 06/12] dmaengine: ti: Add cppi5 header for K3 NAVSS/UDMA
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: Vinod Koul <vkoul@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-7-peter.ujfalusi@ti.com>
 <20191220095455.GM2536@vkoul-mobl>
 <d5bd6bcf-9c1e-8633-fdc4-ee787100b44c@ti.com>
Message-ID: <dc251d90-2e1f-ae3e-2a29-4191e8eefb7a@ti.com>
Date: Mon, 23 Dec 2019 09:11:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d5bd6bcf-9c1e-8633-fdc4-ee787100b44c@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_231114_916822_408DD26B 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmlub2QsCgpPbiAyMC8xMi8yMDE5IDEyLjQyLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBI
aSBWaW5vZCwKPiAKPiBPbiAyMC8xMi8yMDE5IDExLjU0LCBWaW5vZCBLb3VsIHdyb3RlOgo+PiBP
biAwOS0xMi0xOSwgMTE6NDMsIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+Pgo+Pj4gKyNkZWZpbmUg
Q1BQSTVfSU5GTzJfREVTQ19SRVRQVVNIUE9MSUNZCQlCSVQoMTYpCj4+PiArI2RlZmluZSBDUFBJ
NV9JTkZPMl9ERVNDX1JFVFBfTUFTSwkJR0VOTUFTSygxOCwgMTYpCj4+PiArCj4+PiArI2RlZmlu
ZSBDUFBJNV9JTkZPMl9ERVNDX1JFVFFfU0hJRlQJCSgwKQo+Pj4gKyNkZWZpbmUgQ1BQSTVfSU5G
TzJfREVTQ19SRVRRX01BU0sJCUdFTk1BU0soMTUsIDApCj4+PiArCj4+PiArI2RlZmluZSBDUFBJ
NV9JTkZPM19ERVNDX1NSQ1RBR19TSElGVAkJKDE2VSkKPj4+ICsjZGVmaW5lIENQUEk1X0lORk8z
X0RFU0NfU1JDVEFHX01BU0sJCUdFTk1BU0soMzEsIDE2KQo+Pj4gKyNkZWZpbmUgQ1BQSTVfSU5G
TzNfREVTQ19EU1RUQUdfU0hJRlQJCSgwKQo+Pj4gKyNkZWZpbmUgQ1BQSTVfSU5GTzNfREVTQ19E
U1RUQUdfTUFTSwkJR0VOTUFTSygxNSwgMCkKPj4+ICsKPj4+ICsjZGVmaW5lIENQUEk1X0JVRklO
Rk8xX0hERVNDX0RBVEFfTEVOX1NISUZUCSgwKQo+Pj4gKyNkZWZpbmUgQ1BQSTVfQlVGSU5GTzFf
SERFU0NfREFUQV9MRU5fTUFTSwlHRU5NQVNLKDI3LCAwKQo+Pj4gKwo+Pj4gKyNkZWZpbmUgQ1BQ
STVfT0JVRklORk8wX0hERVNDX0JVRl9MRU5fU0hJRlQJKDApCj4+PiArI2RlZmluZSBDUFBJNV9P
QlVGSU5GTzBfSERFU0NfQlVGX0xFTl9NQVNLCUdFTk1BU0soMjcsIDApCj4+Cj4+IEkgdGhpbmsg
eW91IGNhbiByZW1vdmUgdGhlIFNISUZUIGRlZmluZXMgYW5kIHVzZSBmZnMoKSB0byBnZXQgdGhl
IGJpdAo+PiBwb3NpdGlvbiBmb3Igc2hpZnQKPiAKPiBSaWdodC4gSSdsbCBjb252ZXJ0IHRvIHVz
ZSBmZnMoKQoKSSByYXRoZXIga2VlcCB0aGUgZGVmaW5lcy4KV2hpbGUgZmZzKCkgaXMgc2ltcGxl
LCBpdCBpcyBnb2luZyB0byBoYXZlIGVmZmVjdCBpbiBzcGVlZHMgZ2lnYWJpdCBvcgpiZXlvbmQu
Cgo+Pj4gK3N0YXRpYyBpbmxpbmUgdTMyIGNwcGk1X2hkZXNjX2NhbGNfc2l6ZShib29sIGVwaWIs
IHUzMiBwc2RhdGFfc2l6ZSwKPj4+ICsJCQkJCXUzMiBzd19kYXRhX3NpemUpCj4+PiArewo+Pj4g
Kwl1MzIgZGVzY19zaXplOwo+Pj4gKwo+Pj4gKwlpZiAocHNkYXRhX3NpemUgPiBDUFBJNV9JTkZP
MF9IREVTQ19QU0RBVEFfTUFYX1NJWkUpCj4+PiArCQlyZXR1cm4gMDsKPj4+ICsKPj4+ICsJZGVz
Y19zaXplID0gc2l6ZW9mKHN0cnVjdCBjcHBpNV9ob3N0X2Rlc2NfdCkgKyBwc2RhdGFfc2l6ZSAr
Cj4+PiArCQkgICAgc3dfZGF0YV9zaXplOwo+Pgo+PiBJIHRoaW5rIHRoZXJlIHdhcyBhbiBBUEkg
Zm9yIHRoaXMga2luZCBvZiBtZW0gYWxsb2NhdGlvbiBvZiBzdHJ1Y3QgYW5kCj4+IGJ1ZmZlciBh
dHRhY2hlZC4uLgo+IAo+IFRoZSByZXR1cm5lZCBzaXplIGlzIG5vdCBvbmx5IHVzZWQgd2hlbiBh
bGxvY2F0aW5nIG1lbW9yeSBvciBzZXR0aW5nIHVwCj4gdGhlIGRtYV9wb29sLCBidXQgZm9yIFVE
TUFQJ3MgZmV0Y2ggc2l6ZSBwYXJhbWV0ZXIuCj4gCj4+PiArc3RhdGljIGlubGluZSB2b2lkIGNw
cGk1X2hkZXNjX3Jlc2V0X2hiZGVzYyhzdHJ1Y3QgY3BwaTVfaG9zdF9kZXNjX3QgKmRlc2MpCj4+
PiArewo+Pj4gKwlkZXNjLT5oZHIgPSAoc3RydWN0IGNwcGk1X2Rlc2NfaGRyX3QpIHsgMCB9Owo+
Pj4gKwlkZXNjLT5uZXh0X2Rlc2MgPSAwOwo+Pgo+PiB3b3VsZCB0aGlzIG5vdCBiZSBzdXBlcmZs
dW91cz8gT3IgaWYgeW91IHdhbnQgYSBtZW1zZXQgY2FsbD8KPiAKPiBUaGUgaW50ZW50aW9uIGlz
IHRvIHJlc2V0IHRoZSBoZWFkZXIgYW5kIHRoZSBuZXh0IGRlc2NyaXB0b3IgbGluayBidXQKPiBs
ZWF2ZSB0aGUgYmFja2luZyBidWZmZXIgaW5mb3JtYXRpb24gaW50YWN0LiBUaGlzIGFsbG93cyB0
aGUgcmV1c2Ugb2YgYQo+IGRlc2NyaXB0b3IrYnVmZmVyIGFuZCB3ZSBvbmx5IG5lZWQgdG8gc2V0
IHRoZSBoZWFkZXIgYml0cyArIG5leHQKPiBkZXNjcmlwdG9yIHBvaW50ZXIgaWYgYW55Lgo+IAo+
Pj4gK3N0YXRpYyBpbmxpbmUgdTMyICpjcHBpNV9oZGVzY19nZXRfcHNkYXRhMzIoc3RydWN0IGNw
cGk1X2hvc3RfZGVzY190ICpkZXNjKQo+Pj4gK3sKPj4+ICsJcmV0dXJuICh1MzIgKiljcHBpNV9o
ZGVzY19nZXRfcHNkYXRhKGRlc2MpOwo+Pgo+PiB5b3UgZG9udCBuZWVkIGNhc3RzIGF3YXkgZnJv
bSB2b2lkICoKPiAKPiBIcm0sIG9yIGp1c3QgcmVtb3ZlIHRoaXMsIGNsaWVudHMgY2FuIHVzZSB0
aGUgY3BwaTVfaGRlc2NfZ2V0X3BzZGF0YSgpCj4gZGlyZWN0bHkuCj4gCj4gCj4gLSBQw6l0ZXIK
PiAKPiBUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4
MCBIZWxzaW5raS4KPiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2th
L0RvbWljaWxlOiBIZWxzaW5raQo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxh
bmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVz
cyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
