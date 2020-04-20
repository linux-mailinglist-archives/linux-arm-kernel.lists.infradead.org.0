Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9451B068F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a13Hub1udQuUOV6oV7SzqCF1BuPMMdx/GqN93sW45zg=; b=PiloryGUJLpuLR
	cQqskRsu9A1Kzg9rCAi83SBqWGiJO4I8ksyRdjpKAuj5HkpmpwY49Xej2fkNEl3phwzLoDVlTxfY/
	NXTaOeMG3s8fhpWFWKjsPT3ry1k0p9GQc1kGeJZUk4/Nb8t0wxaTJyU7wnAYlhLE7OuRGz85JCHVf
	6C5ac9tVmOjekTinVnhU9i4/zEvFeUTs/E+tMgGE/NVk7SV27vl127DnaN9dkevrxISg+S8NKGVpA
	MYDstymWewrb8M52Elg4Dk/ZKGFymjou9FZLMZUUgeYC7fqJ5hL7NIDJI67fxpl6Tjqs0oY4EUJEl
	aRh2UzJOokHgAECgb2Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTe6-0006nA-6z; Mon, 20 Apr 2020 10:27:22 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTdx-0006mT-Fn
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1587378431; bh=o62eKdBWITau5Cn4J0cykM+HQVejW+cPPQs4pz5s9gE=;
 h=Date:From:To:Subject:References:X-My-GPG-KeyId:From;
 b=Ql7xHYAz0EL8wAdFvHCBeD7yJ1M+OZ3T1Qj8MgauhSeO4oCK/8hHaY7K8xg3d6IvP
 /7lrGbdhKlZW0z4cYThrhr/FAg8MusoUx23eP3pCMTHdE/pO3btP1XOBKzTZh2CLlI
 IBWwdCwX5nru7DaINj9TdP/+gt7pT60xLu1Uvdt8=
Date: Mon, 20 Apr 2020 12:27:11 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>
Subject: Re: [linux-sunxi] [PATCH v3 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200420102711.4ozfiiakvgisukpk@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
 <20200420094801.ltsittj3gdrbbr3u@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420094801.ltsittj3gdrbbr3u@core.my.home>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_032713_855257_95C7A6F7 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMTE6NDg6MDFBTSArMDIwMCwgbWVnb3VzIGhsYXZuaSB3
cm90ZToKPiBIZWxsbyBDbMOpbWVudCwKPiAKPiBPbiBTdW4sIEFwciAxOSwgMjAyMCBhdCAwMzo1
MDowNFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBIaSBTdW54aSBtYWludGFp
bmVycyBhbmQgbWVtYmVycywKPiA+IAo+ID4gTm93IHRoYXQgcmVxdWlyZWQgZHJpdmVycyBhcmUg
bWVyZ2VkIHdlIGNhbiBjb250aWJ1dGUgb24gRFZGUwo+ID4gc3VwcG9ydCBmb3IgQWxsd2lubmVy
IEg2Lgo+ID4gCj4gCj4gWyBzbmlwIF0KPiAKPiA+IAo+ID4gQ2hhbmdlcyBzaW5jZSB2MiAodGhh
bmtzIHRvIE1heGltZSBSaXBhcmQpOgo+ID4gICAtIENoYW5nZSBPcmFuZ2UgUGkgYm9hcmRzIHRv
IE9yYW5nZSBQaSAzCj4gPiAgIC0gQ2hhbmdlIHNvYyBzcGVlZCBudm1lbSBub2RlIG5hbWUKPiA+
ICAgLSBGaXggZGV2aWNlIHRyZWUgd2FybmluZ3MKPiA+ICAgLSBEcm9wIEdQVSBvcHAgdGFibGVz
Cj4gCj4gTG9va3MgbGlrZSB5b3UgbWF5IGhhdmUgYWxzbyBpbmFkdmVyZW50bHkgZHJvcHBlZCB0
aGUgc2Vjb25kIHBhdGNoIGZyb20gdjIKPiBzZXJpZXMgdGhhdCBpbXBsZW1lbnRlZCBDUFUgdGhl
cm1hbCB0cmlwIHBvaW50cy4KCkFsc28gaXQgbG9va3MgbGlrZSB0aGUgcGF0Y2ggMSBmcm9tIHYy
IGltcGxlbWVudGluZyB0aGUgY2xvY2sgcHJvcGVydGllcwppcyBtaXNzaW5nIGZyb20gdjMsIGFu
ZCBJIGRvbid0IHNlZSBpdCBiZWluZyBhbHJlYWR5IGFwcGxpZWQgYW55d2hlcmUuCldpdGhvdXQg
dGhhdCBjcHVmcmVxIGRvZXNuJ3Qgd29yay4KCkFsc28sIHRoZXJtYWwgdHJpcCBwb2ludHMgbmVl
ZCB0byBiZSBpbiB0aGUgb3BwLmR0c2kgdG8gYXZvaWQgZHRjIHdhcm5pbmdzCmR1cmluZyBidWls
ZC4KCmh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvY29tbWl0Lz9oPXRocy01LjcmaWQ9Y2Fj
ZWZkN2RlY2Y1YWUwY2U0MmFiNGQ0OGExM2E1ODU1MjkyOWViZAoKcmVnYXJkcywKCW8uCgo+ID4g
Q2hhbmdlcyBzaW5jZSB2MSAodGhhbmtzIHRvIE9uZMWZZWogSmlybWFuKToKPiA+ICAgLSBSZW1v
dmUgUG9sbGluZyB0aGVybWFsCj4gPiAgIC0gQWRkIE9yYW5nZSBQaSBib2FyZHMKPiA+ICAgLSBS
ZW1vdmUgbWluaW1hbCB2b2x0YWdlIGNoYW5nZSBmb3IgQmVlbGluayBHUzEKPiA+ICAgLSBBZGQg
cmFtcC1kZXBsYXkgZm9yIEdQVSBhbmQgQ1BVIHJlZ3VsYXRvcnMKPiA+ICAgLSBQdXNoIHRvIHRo
ZXJtYWwgcG9pbnQgdG8gODXCsEMgKEFsbHdpbm5lciBzZXQgdGhlbSB0byAxMDDCsEMgYW5kIDEx
NcKwQykKPiA+ICAgLSBBZGRlZCAxLjZHSHogYW5kIDEuN0dIeiB0byBPUFAgdGFibGUuCj4gPiAK
PiA+IENsw6ltZW50IFDDqXJvbiAoNik6Cj4gPiAgIGFybTY0OiBjb25maWdzOiBFbmFibGUgc3Vu
NTBpIGNwdWZyZXEgbnZtZW0KPiA+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogRW5hYmxl
IENQVSBvcHAgdGFibGVzIGZvciBCZWVsaW5rIEdTMQo+ID4gICBhcm02NDogZHRzOiBhbGx3aW5u
ZXI6IGg2OiBFbmFibGUgQ1BVIG9wcCB0YWJsZXMgZm9yIE9yYW5nZSBQaSAzCj4gPiAgIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBDUFUgb3BwIHRhYmxlcyBmb3IgVGFuaXggVFg2
Cj4gPiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogU29ydCBQaW5lIEg2NCBkZXZpY2UtdHJlZSBu
b2Rlcwo+ID4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIGFuZCBHUFUg
b3BwIHRhYmxlcyBmb3IgUGluZSBINjQKPiAKPiBZb3UgbWF5IGFsc28gd2FudCB0byBmaXggdGl0
bGUgb2YgdGhpcyBwYXRjaCB0byBkcm9wIHRoZSBHUFUgcmVmZXJlbmNlLgo+IAo+IHRoYW5rIHlv
dSBhbmQgcmVnYXJkcywKPiAJby4KPiAKPiA+IE9uZHJlaiBKaXJtYW4gKDEpOgo+ID4gICBhcm02
NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBBZGQgQ1BVIE9wZXJhdGluZyBQZXJmb3JtYW5jZSBQb2lu
dHMgdGFibGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
