Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54D127986
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXqPWp4frlMloONs/N15P2KXBFUsMM3MKL4ZKjZvxJU=; b=Q874Au+YNwrzyP
	JPc/e+3QP3SUK8YMEvxmtkVRxc6CwZhk1YTal/46xBS8pM4ssTF96KVTGavbmz5mAgXH6Fte2FoUv
	kXoRQQ0qu3suZ7VgXhNoi6MMbWW91yYNqDVt5fw9B/R1elKtALqh05MX+Gw3GEblWpCOhpySdhhsi
	Y5yfIeEoHxR7x878uhV8vl6lKsSMB6P31LoV+3xCxHJdE01hfM27Ho74GBVzovbOa2Xtet3yluU7T
	29Le+qo5KwxdE7NtOsWrOM7+UIdooaVeLBV2bI/1xfoIf1gld0Np9hpFl2tH65mWjKahfDVRB3egh
	TXQn23VjvDd7ltKTWCAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFjb-0005lh-PW; Fri, 20 Dec 2019 10:42:15 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFjP-0005lN-2E
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:42:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKAfu1p061714;
 Fri, 20 Dec 2019 04:41:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576838516;
 bh=2v2z+FS+yA7LYnWwxztL6URPv5REOEKRsiKuUYtz5xE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=dHt2yfVjBXdDDHSnVV4JabkC8Wkx8sVLr0nA12+xfaxXlDn2MLtSHGdx6hxK474nB
 dKIi6IGX6eLhZP/XKdwhe1ZG57BtZN1t5HwNlLUgc061NKIK5fnDOklWP0ZKopBg+J
 S750CPw72EoWAfXbN9EwXBZsDZgrv+dgFxRlayPY=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBKAfuG1103346
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 04:41:56 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 04:41:55 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 04:41:55 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKAfqQ1122772;
 Fri, 20 Dec 2019 04:41:52 -0600
Subject: Re: [PATCH v7 06/12] dmaengine: ti: Add cppi5 header for K3 NAVSS/UDMA
To: Vinod Koul <vkoul@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-7-peter.ujfalusi@ti.com>
 <20191220095455.GM2536@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <d5bd6bcf-9c1e-8633-fdc4-ee787100b44c@ti.com>
Date: Fri, 20 Dec 2019 12:42:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220095455.GM2536@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_024203_191063_ED4BFF19 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmlub2QsCgpPbiAyMC8xMi8yMDE5IDExLjU0LCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDA5
LTEyLTE5LCAxMTo0MywgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gCj4+ICsjZGVmaW5lIENQUEk1
X0lORk8yX0RFU0NfUkVUUFVTSFBPTElDWQkJQklUKDE2KQo+PiArI2RlZmluZSBDUFBJNV9JTkZP
Ml9ERVNDX1JFVFBfTUFTSwkJR0VOTUFTSygxOCwgMTYpCj4+ICsKPj4gKyNkZWZpbmUgQ1BQSTVf
SU5GTzJfREVTQ19SRVRRX1NISUZUCQkoMCkKPj4gKyNkZWZpbmUgQ1BQSTVfSU5GTzJfREVTQ19S
RVRRX01BU0sJCUdFTk1BU0soMTUsIDApCj4+ICsKPj4gKyNkZWZpbmUgQ1BQSTVfSU5GTzNfREVT
Q19TUkNUQUdfU0hJRlQJCSgxNlUpCj4+ICsjZGVmaW5lIENQUEk1X0lORk8zX0RFU0NfU1JDVEFH
X01BU0sJCUdFTk1BU0soMzEsIDE2KQo+PiArI2RlZmluZSBDUFBJNV9JTkZPM19ERVNDX0RTVFRB
R19TSElGVAkJKDApCj4+ICsjZGVmaW5lIENQUEk1X0lORk8zX0RFU0NfRFNUVEFHX01BU0sJCUdF
Tk1BU0soMTUsIDApCj4+ICsKPj4gKyNkZWZpbmUgQ1BQSTVfQlVGSU5GTzFfSERFU0NfREFUQV9M
RU5fU0hJRlQJKDApCj4+ICsjZGVmaW5lIENQUEk1X0JVRklORk8xX0hERVNDX0RBVEFfTEVOX01B
U0sJR0VOTUFTSygyNywgMCkKPj4gKwo+PiArI2RlZmluZSBDUFBJNV9PQlVGSU5GTzBfSERFU0Nf
QlVGX0xFTl9TSElGVAkoMCkKPj4gKyNkZWZpbmUgQ1BQSTVfT0JVRklORk8wX0hERVNDX0JVRl9M
RU5fTUFTSwlHRU5NQVNLKDI3LCAwKQo+IAo+IEkgdGhpbmsgeW91IGNhbiByZW1vdmUgdGhlIFNI
SUZUIGRlZmluZXMgYW5kIHVzZSBmZnMoKSB0byBnZXQgdGhlIGJpdAo+IHBvc2l0aW9uIGZvciBz
aGlmdAoKUmlnaHQuIEknbGwgY29udmVydCB0byB1c2UgZmZzKCkKCj4gCj4+ICtzdGF0aWMgaW5s
aW5lIHUzMiBjcHBpNV9oZGVzY19jYWxjX3NpemUoYm9vbCBlcGliLCB1MzIgcHNkYXRhX3NpemUs
Cj4+ICsJCQkJCXUzMiBzd19kYXRhX3NpemUpCj4+ICt7Cj4+ICsJdTMyIGRlc2Nfc2l6ZTsKPj4g
Kwo+PiArCWlmIChwc2RhdGFfc2l6ZSA+IENQUEk1X0lORk8wX0hERVNDX1BTREFUQV9NQVhfU0la
RSkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4gKwlkZXNjX3NpemUgPSBzaXplb2Yoc3RydWN0IGNw
cGk1X2hvc3RfZGVzY190KSArIHBzZGF0YV9zaXplICsKPj4gKwkJICAgIHN3X2RhdGFfc2l6ZTsK
PiAKPiBJIHRoaW5rIHRoZXJlIHdhcyBhbiBBUEkgZm9yIHRoaXMga2luZCBvZiBtZW0gYWxsb2Nh
dGlvbiBvZiBzdHJ1Y3QgYW5kCj4gYnVmZmVyIGF0dGFjaGVkLi4uCgpUaGUgcmV0dXJuZWQgc2l6
ZSBpcyBub3Qgb25seSB1c2VkIHdoZW4gYWxsb2NhdGluZyBtZW1vcnkgb3Igc2V0dGluZyB1cAp0
aGUgZG1hX3Bvb2wsIGJ1dCBmb3IgVURNQVAncyBmZXRjaCBzaXplIHBhcmFtZXRlci4KCj4+ICtz
dGF0aWMgaW5saW5lIHZvaWQgY3BwaTVfaGRlc2NfcmVzZXRfaGJkZXNjKHN0cnVjdCBjcHBpNV9o
b3N0X2Rlc2NfdCAqZGVzYykKPj4gK3sKPj4gKwlkZXNjLT5oZHIgPSAoc3RydWN0IGNwcGk1X2Rl
c2NfaGRyX3QpIHsgMCB9Owo+PiArCWRlc2MtPm5leHRfZGVzYyA9IDA7Cj4gCj4gd291bGQgdGhp
cyBub3QgYmUgc3VwZXJmbHVvdXM/IE9yIGlmIHlvdSB3YW50IGEgbWVtc2V0IGNhbGw/CgpUaGUg
aW50ZW50aW9uIGlzIHRvIHJlc2V0IHRoZSBoZWFkZXIgYW5kIHRoZSBuZXh0IGRlc2NyaXB0b3Ig
bGluayBidXQKbGVhdmUgdGhlIGJhY2tpbmcgYnVmZmVyIGluZm9ybWF0aW9uIGludGFjdC4gVGhp
cyBhbGxvd3MgdGhlIHJldXNlIG9mIGEKZGVzY3JpcHRvcitidWZmZXIgYW5kIHdlIG9ubHkgbmVl
ZCB0byBzZXQgdGhlIGhlYWRlciBiaXRzICsgbmV4dApkZXNjcmlwdG9yIHBvaW50ZXIgaWYgYW55
LgoKPj4gK3N0YXRpYyBpbmxpbmUgdTMyICpjcHBpNV9oZGVzY19nZXRfcHNkYXRhMzIoc3RydWN0
IGNwcGk1X2hvc3RfZGVzY190ICpkZXNjKQo+PiArewo+PiArCXJldHVybiAodTMyICopY3BwaTVf
aGRlc2NfZ2V0X3BzZGF0YShkZXNjKTsKPiAKPiB5b3UgZG9udCBuZWVkIGNhc3RzIGF3YXkgZnJv
bSB2b2lkICoKCkhybSwgb3IganVzdCByZW1vdmUgdGhpcywgY2xpZW50cyBjYW4gdXNlIHRoZSBj
cHBpNV9oZGVzY19nZXRfcHNkYXRhKCkKZGlyZWN0bHkuCgoKLSBQw6l0ZXIKClRleGFzIEluc3Ry
dW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1
bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5r
aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
