Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A018D1061
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VY2QFq6sgbxbQRKQJOSumhAh8g+uI9IIr7LObx6zTKo=; b=qoCcU1j4zWjQieFoni1dvTIpy
	HaHCbMKGs8dLGVyUe2NLh3k1Lj271U3O56UujwNjYUnSmhWXemgzHbGEVzlzzrjDwoRJkg/zfkuuo
	bGuWjZWFfBg1gIklYd4TvzgpkIbvRANdt9qtWVZVi896vTSQkNDmbEDHzaWDie5hnX+Dd85TlqUED
	Og3DbPr31sNeto0IVtOTA4eovqvlWTBzrbdAMaG5I26zE3uOyRIAcIp39e9lcTYBonBeoE/lr/HlC
	+eND9mybo2MLwfVnotGShX+4bLf4m2ecyD4FAZOvpYYeH65MGLtNF2XNtB8Y/Mcr5QsJDlH3OutTj
	Lha/8PX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICDN-0000Hl-KQ; Wed, 09 Oct 2019 13:41:17 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICDG-0000Gr-R8
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:41:12 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x99Df5sN105925;
 Wed, 9 Oct 2019 08:41:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570628465;
 bh=SsWCaK0u568BJNLYQT3qNkhvXINTJ8zHD7fBBHIwLt4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JTafH1Z3hknmtTUE2L6QNZjY+A5PGwZztPE6/rIM1fQf0BzitaE1wJ6FwU8Gwq9+p
 NA6GhortGRHuhA/FdFwjOovda8C5q7mUB5/qa73KoCo6QoSjNEhPcrYqdO3+A2Jk4V
 P3/mvLIuVgA6ctK8W1AaIxFrXDYhZ01xTczq7iUE=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x99Df4I7084862;
 Wed, 9 Oct 2019 08:41:05 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 08:41:03 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 08:41:03 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x99Df0HJ075056;
 Wed, 9 Oct 2019 08:41:00 -0500
Subject: Re: [PATCH v3 08/14] dmaengine: ti: New driver for K3 UDMA - split#1:
 defines, structs, io func
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-9-peter.ujfalusi@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <8bd7db20-811d-b7c7-38ec-75f1c9d94b8f@ti.com>
Date: Wed, 9 Oct 2019 16:40:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001061704.2399-9-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_064110_981598_114BB75E 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMTAvMjAxOSAwOToxNiwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gU3BsaXQgcGF0Y2gg
Zm9yIHJldmlldyBjb250YWluaW5nOiBkZWZpbmVzLCBzdHJ1Y3RzLCBpbyBhbmQgbG93IGxldmVs
Cj4gZnVuY3Rpb25zIGFuZCBpbnRlcnJ1cHQgY2FsbGJhY2tzLgo+IAo+IERNQSBkcml2ZXIgZm9y
Cj4gVGV4YXMgSW5zdHJ1bWVudHMgSzMgTkFWU1MgVW5pZmllZCBETUEg4oCTIFBlcmlwaGVyYWwg
Um9vdCBDb21wbGV4IChVRE1BLVApCj4gCj4gVGhlIFVETUEtUCBpcyBpbnRlbmRlZCB0byBwZXJm
b3JtIHNpbWlsYXIgKGJ1dCBzaWduaWZpY2FudGx5IHVwZ3JhZGVkKSBmdW5jdGlvbnMKPiBhcyB0
aGUgcGFja2V0LW9yaWVudGVkIERNQSB1c2VkIG9uIHByZXZpb3VzIFNvQyBkZXZpY2VzLiBUaGUg
VURNQS1QIG1vZHVsZQo+IHN1cHBvcnRzIHRoZSB0cmFuc21pc3Npb24gYW5kIHJlY2VwdGlvbiBv
ZiB2YXJpb3VzIHBhY2tldCB0eXBlcy4gVGhlIFVETUEtUCBpcwo+IGFyY2hpdGVjdGVkIHRvIGZh
Y2lsaXRhdGUgdGhlIHNlZ21lbnRhdGlvbiBhbmQgcmVhc3NlbWJseSBvZiBTb0MgRE1BIGRhdGEK
PiBzdHJ1Y3R1cmUgY29tcGxpYW50IHBhY2tldHMgdG8vZnJvbSBzbWFsbGVyIGRhdGEgYmxvY2tz
IHRoYXQgYXJlIG5hdGl2ZWx5Cj4gY29tcGF0aWJsZSB3aXRoIHRoZSBzcGVjaWZpYyByZXF1aXJl
bWVudHMgb2YgZWFjaCBjb25uZWN0ZWQgcGVyaXBoZXJhbC4gTXVsdGlwbGUKPiBUeCBhbmQgUngg
Y2hhbm5lbHMgYXJlIHByb3ZpZGVkIHdpdGhpbiB0aGUgRE1BIHdoaWNoIGFsbG93IG11bHRpcGxl
IHNlZ21lbnRhdGlvbgo+IG9yIHJlYXNzZW1ibHkgb3BlcmF0aW9ucyB0byBiZSBvbmdvaW5nLiBU
aGUgRE1BIGNvbnRyb2xsZXIgbWFpbnRhaW5zIHN0YXRlCj4gaW5mb3JtYXRpb24gZm9yIGVhY2gg
b2YgdGhlIGNoYW5uZWxzIHdoaWNoIGFsbG93cyBwYWNrZXQgc2VnbWVudGF0aW9uIGFuZAo+IHJl
YXNzZW1ibHkgb3BlcmF0aW9ucyB0byBiZSB0aW1lIGRpdmlzaW9uIG11bHRpcGxleGVkIGJldHdl
ZW4gY2hhbm5lbHMgaW4gb3JkZXIKPiB0byBzaGFyZSB0aGUgdW5kZXJseWluZyBETUEgaGFyZHdh
cmUuIEFuIGV4dGVybmFsIERNQSBzY2hlZHVsZXIgaXMgdXNlZCB0bwo+IGNvbnRyb2wgdGhlIG9y
ZGVyaW5nIGFuZCByYXRlIGF0IHdoaWNoIHRoaXMgbXVsdGlwbGV4aW5nIG9jY3VycyBmb3IgVHJh
bnNtaXQKPiBvcGVyYXRpb25zLiBUaGUgb3JkZXJpbmcgYW5kIHJhdGUgb2YgUmVjZWl2ZSBvcGVy
YXRpb25zIGlzIGluZGlyZWN0bHkgY29udHJvbGxlZAo+IGJ5IHRoZSBvcmRlciBpbiB3aGljaCBi
bG9ja3MgYXJlIHB1c2hlZCBpbnRvIHRoZSBETUEgb24gdGhlIFJ4IFBTSS1MIGludGVyZmFjZS4K
PiAKPiBUaGUgVURNQS1QIGFsc28gc3VwcG9ydHMgYWN0aW5nIGFzIGJvdGggYSBVVEMgYW5kIFVE
TUEtQyBmb3IgaXRzIGludGVybmFsCj4gY2hhbm5lbHMuIENoYW5uZWxzIGluIHRoZSBVRE1BLVAg
Y2FuIGJlIGNvbmZpZ3VyZWQgdG8gYmUgZWl0aGVyIFBhY2tldC1CYXNlZCBvcgo+IFRoaXJkLVBh
cnR5IGNoYW5uZWxzIG9uIGEgY2hhbm5lbCBieSBjaGFubmVsIGJhc2lzLgo+IAo+IFRoZSBpbml0
aWFsIGRyaXZlciBzdXBwb3J0czoKPiAtIE1FTV9UT19NRU0gKFRSIG1vZGUpCj4gLSBERVZfVE9f
TUVNIChQYWNrZXQgLyBUUiBtb2RlKQo+IC0gTUVNX1RPX0RFViAoUGFja2V0IC8gVFIgbW9kZSkK
PiAtIEN5Y2xpYyAoUGFja2V0IC8gVFIgbW9kZSkKPiAtIE1ldGFkYXRhIGZvciBkZXNjcmlwdG9y
cwo+IAo+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5j
b20+CgpEaWQgcmV2aWV3IHRoaXMgdG8gYmVzdCBvZiBteSBhYmlsaXR5IGJ1dCBjb3VsZCBub3Qg
ZmluZCBhbnl0aGluZyAKb2J2aW91c2x5IGJyb2tlbiwgdGh1czoKClJldmlld2VkLWJ5OiBUZXJv
IEtyaXN0byA8dC1rcmlzdG9AdGkuY29tPgoKLS0KVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBP
eSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1c2luZXNzIElE
OiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
