Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D421BBA54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 11:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=laigBP9j4yvgfNTa805SmEDkSErLEkDZOjwpIxNuEV0=; b=M9ktQuLdNPUCDAtBMpjpZ5p6o
	Sn4gfIxnX8U6JQtMuWg+v38k8lN9Rv4CzqodySwVWngIP7eXzCyj8oiT70ayVmhexOvzVFNIfcO7c
	dIZY/K9GYRRn6HlPI316M6Qw0MQfXAfSJipKlQ3dNZT4XyG7kwppYBjQBMv0cJY0RFSautDerv4FR
	7N2u1srZzYH++EunzgYzSuOA9Lc18fIxlKs8IhxzfYx/+RH4m8k0mbc3frkdsETAY95wrPWVcF+w9
	SOEgvLUyg+5el/GcxAnZkkmSknkeoqqIILyAsM1XsQRHqzjqh5c5Jx0E6/z0KgtyQ7qWY62VJ1GwQ
	Cq9pWZV8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMsH-0005Aa-2A; Tue, 28 Apr 2020 09:49:57 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMs2-00057y-Uu
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 09:49:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03S9nVvV082105;
 Tue, 28 Apr 2020 04:49:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588067371;
 bh=vi0lak+PESiDwZ0/mkWQsOclkMxH3g4XyeOihRduJy0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=BV2Zxe4iPkNu9gqmZtuR65pMPOlIdfT97ro6vS3YbgPm2ft2TJUXz7uNUjFjrMRQC
 bsuhpdiehprVO7oAn7t1LvTtcfkfzR6Ob62FFWFZes+xUeE2O97t3nlCpHbVi83wMH
 HblNblvH7SfOJO0jzx3pMKO4p0Wu6nP+1TWjcxLc=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03S9nVL8026251
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 Apr 2020 04:49:31 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 28
 Apr 2020 04:49:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 28 Apr 2020 04:49:31 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03S9nS0F037890;
 Tue, 28 Apr 2020 04:49:29 -0500
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
To: =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
 <robh+dt@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
Date: Tue, 28 Apr 2020 12:49:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024943_093946_E50D1916 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 jason@lakedaemon.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgvMDQvMjAyMCAxMjoyMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKCj4gMikgVGhlIGRl
ZmluaXRpb24gb2YgdGksZGVza2V3IGluIHRoZSBvcmlnaW5hbCBiaW5kaW5nIHNlZW1zIHRvIGJl
Cj4gdGFpbG9yZWQgdG8gdGhlIGN1cnJlbnQgZHJpdmVyIGFuZCB0aGUgd2F5IGl0J3MgZGVmaW5l
ZCBtYXkgbm90IGJlIHZlcnkKPiBEVC1mcmllbmRseS4KPiAKPiAgICBUaGlzIHBhcmFtZXRlciBt
YXBzIHRvIGEgMy1iaXQgZmllbGQgaW4gYSBoYXJkd2FyZSByZWdpc3RlciB0aGF0IHRha2VzCj4g
ICAgYSB2YWx1ZSBmcm9tIDAgdG8gNywgc28gdGhlIFstNCwgM10gcmFuZ2UgZGVzY3JpYmVkIGZv
ciB0aGlzIHdvdWxkIG1hcAo+ICAgIHRvIFswMDAsIDExMV06IC00IC0+IDAwMCwgLTMgLT4gMDAx
LCAtMiAtPiAwMTAsIC4uLiAzIC0+IDExMS4KPiAKPiAgICBUaGVuLCB0aGUgZHJpdmVyIHBhcnNl
cyB0aGUgcGFyYW1ldGVyICh1bnNpZ25lZCkgYW5kIGNhc3RzIGl0IHRvIGEKPiAgICBzaWduZWQg
aW50ZWdlciB0byBnZXQgYSBudW1iZXIgaW4gdGhlIFstNCwgM10gcmFuZ2UuCgpJbnRlcmVzdGlu
Z2x5IHRoZSBjdXJyZW50IGV4YW1wbGUgaGFzIHRpLGRlc2tldyA9IDw0Pi4uLgoKPiAgICBBIHZl
bmRvci1zcGVjaWZpYyBwcm9wZXJ0eSBtdXN0IGhhdmUgYSB0eXBlIGRlZmluaXRpb24gaW4ganNv
bi1zY2hlbWEsCj4gICAgc28gaWYgSSB0cmFuc2xhdGUgdGhlIG9yaWdpbmFsIGJpbmRpbmdzIHNl
bWFudGljcyBkaXJlY3RseSwgSSBzaG91bGQKPiAgICBkZWZpbmUgdGksZGVza2V3IGFzIGFuIGlu
dDMyLCBidXQgdGhpcyBtYWtlcyBkdF9iaW5kaW5nX2NoZWNrIGZhaWwgaWYKPiAgICB0aGUgcHJv
cGVydHkgaGFzIGEgbmVnYXRpdmUgdmFsdWUgaW4gdGhlIGV4YW1wbGUgYmVjYXVzZSBvZiB0aGUK
PiAgICBpbnRlcm5hbCByZXByZXNlbnRhdGlvbiBvZiBjZWxscyBhcyB1bnNpZ25lZCBpbnRlZ2Vy
czoKPiAKPiAgICAgICB0aSxkZXNrZXc6MDowOiA0Mjk0OTY3MjkzIGlzIGdyZWF0ZXIgdGhhbiB0
aGUgbWF4aW11bSBvZiAyMTQ3NDgzNjQ3CgpJIGRvbid0IHF1aXRlIHVuZGVyc3RhbmQgdGhpcy4g
V2UgY2Fubm90IGhhdmUgbmVnYXRpdmUgbnVtYmVycyBpbiBkdHMgZmlsZXM/IE9yIHdlIGNhbiwg
YnV0IApkdF9iaW5kaW5nX2NoZWNrIGRvZXNuJ3QgaGFuZGxlIHRoZW0gY29ycmVjdGx5PyBPciB0
aGF0IGludDMyIGlzIG5vdCBzdXBwb3J0ZWQgaW4geWFtbCBiaW5kaW5ncz8KCj4gICAgU28gSSBj
YW4gdGhpbmsgb2YgdHdvIHNvbHV0aW9ucyB0byB0aGlzOgo+IAo+ICAgIGEpIEtlZXAgdGhlIHRp
LGRlc2tldyBwcm9wZXJ0eSBhcyBhbiB1aW50MzIgYW5kIGRvY3VtZW50IHRoZSB2YWxpZAo+ICAg
IHJhbmdlIChbLTQsIDNdKSBpbiB0aGUgcHJvcGVydHkgZGVzY3JpcHRpb24gKHRoaXMgaXMgd2hh
dCB0aGlzIHBhdGNoCj4gICAgZG9lcyBjdXJyZW50bHkpLgo+IAo+ICAgIGIpIFJlZGVmaW5lIHRo
aXMgcHJvcGVydHkgdG8gYmUgY2xvc2VyIHRvIHRoZSBkYXRhc2hlZXQgZGVzY3JpcHRpb24KPiAg
ICAoaWUuIHVuc2lnbmVkIGludGVnZXJzIGZyb20gMCB0byA3KSBhbmQgYWRhcHQgdGhlIGRyaXZl
ciBhY2NvcmRpbmdseS4KPiAgICBUaGlzIHdvdWxkIGFsc28gbGV0IHVzIGRlZmluZSBpdHMgcmFu
Z2UgcHJvcGVybHkgdXNpbmcgbWluaW11bSBhbmQKPiAgICBtYXhpbXVtIHByb3BlcnRpZXMgZm9y
IGl0Lgo+IAo+ICAgIEkgdGhpbmsgKGIpIGlzIHRoZSByaWdodCB0aGluZyB0byBkbyBidXQgSSB3
YW50IHRvIGtub3cgeW91cgo+ICAgIG9waW5pb24uIEJlc2lkZXMsIEkgZG9uJ3QgaGF2ZSB0aGlz
IGhhcmR3YXJlIGF0IGhhbmQgYW5kIGlmIEkgdXBkYXRlZAo+ICAgIHRoZSBkcml2ZXIgSSB3b3Vs
ZG4ndCBiZSBhYmxlIHRvIHRlc3QgaXQuCgpJIGRvbid0IHRoaW5rIGFueW9uZSBoYXMgdXNlZCBk
ZXNrZXcgcHJvcGVydHksIHNvIEkgZ3Vlc3MgY2hhbmdpbmcgaXQgaXMgbm90IG91dCBvZiB0aGUg
cXVlc3Rpb24uCgpMYXVyZW50LCBkaWQgeW91IGhhdmUgYSBib2FyZCB0aGF0IG5lZWRzIGRlc2tl
dyB3aGVuIHlvdSBhZGRlZCBpdCB0byB0ZnA0MTA/CgogIFRvbWkKCi0tIApUZXhhcyBJbnN0cnVt
ZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5u
dXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
