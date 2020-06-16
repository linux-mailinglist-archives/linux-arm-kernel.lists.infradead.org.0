Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFDB1FB176
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BL9kdisR1ztBDXWe/fTk89VrmMz510c6pDHYZySqmmY=; b=o7BWtdN5xQB7HtjP0X1IcAeY0
	62xeJ9xVOlLryOZIXAH7JrvQs7SFljNvmqdbxGaAC+Z2d0vQB01KJd0w/ACOqCgHRXloG7qJEmrNu
	Fjx7Gj0PL64jo5J/c0iwLCrIbhLMzgztxD/RTDdmtLkO1ALWaN3C33tPwSPi7/VyXgnkt+QcARLbI
	+52ca2U4ySDlRJ3r7MWxegfzChk9jLgrX3/OJ+HFsBgBOwPOIY42eTXv9pkGPDLgJ1QgYAR19Lq6w
	NrQNjBYbFN09X+03jx9Ooiys69nGhgTNN7la1VNIUN932/CTmlreamkQlBFXkuD2N0xuPWhPZe/a/
	hNhvlvp1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBEF-0000NP-2r; Tue, 16 Jun 2020 13:02:15 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBE4-0000Jp-PC
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:02:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05GD1iBC109191;
 Tue, 16 Jun 2020 08:01:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592312504;
 bh=cdlD/WrN7TahxJji2FUOO0Xl9VnG8fNbbXxkmDzAEVM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NCuEU5x1lDAaJtUTj/3OmddtAFs/mhW3lYQ5z0ukARKP4LSQhU3dWH6N61ztt7yDk
 jCLNPw6X1CX89XkWKxFDHz+uNj3SV5/WBsb/HAaveD7tNQxcGKlDCk12UrLGd7tdKN
 DHBgKyyAh7VP8NLO4eFLvr3lXO+NFfq1yO/4BMaw=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05GD1ibX004634
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 08:01:44 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 16
 Jun 2020 08:01:43 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 16 Jun 2020 08:01:43 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05GD1eSK040773;
 Tue, 16 Jun 2020 08:01:40 -0500
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
To: Grygorii Strashko <grygorii.strashko@ti.com>, Tony Lindgren
 <tony@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
 <20200609151943.GL37466@atomide.com>
 <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
 <d03dd04f-6f2c-25ba-fe1f-d5fc0dfb5c68@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <592501c9-2d94-b266-ae76-e383d3bffa29@ti.com>
Date: Tue, 16 Jun 2020 16:01:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <d03dd04f-6f2c-25ba-fe1f-d5fc0dfb5c68@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_060204_909879_C7AA67D5 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDYvMjAyMCAxNzowMCwgR3J5Z29yaWkgU3RyYXNoa28gd3JvdGU6Cj4gCj4gCj4gT24g
MDkvMDYvMjAyMCAxODoyNiwgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4+IE9uIDA5LzA2LzIwMjAg
MTg6MTksIFRvbnkgTGluZGdyZW4gd3JvdGU6Cj4+Pj4gQnV0IHRoZXJlJ3MgYW4gZXh0cmEgcnVu
dGltZSBQTSByZWZlcmVuY2UgKGRldi5wb3dlci51c2FnZV9jb3VudCkgdGhhdCBzZWVtcwo+Pj4+
IHRvIGNvbWUgb3V0IG9mIG5vd2hlcmUuIFNvIHdoZW4gb21hcF9kcm1fc3VzcGVuZCBpcyBmaW5p
c2hlZCwgdGhlcmUncyBzdGlsbAo+Pj4+IHVzYWdlX2NvdW50IG9mIDEsIGFuZCBkaXNwYyBuZXZl
ciBzdXNwZW5kcyBmdWxseS4KPj4+Cj4+PiBIbW0gbm8gaWRlYSBhYm91dCB0aGF0LiBNeSBndWVz
cyBpcyB0aGF0IHRoZXJlIG1pZ2h0IGJlIGFuIGlzc3VlIHRoYXQgd2FzCj4+PiBtYXNrZWQgZWFy
bGllciB3aXRoIG9tYXBfZGV2aWNlIGNhbGxpbmcgdGhlIGNoaWxkIHJ1bnRpbWVfc3VzcGVuZC4K
Pj4KPj4gWWVzLiBJdCdzIGhvdyBQTSB3b3Jrcy4gSXQgY2FsbHMgcG1fcnVudGltZV9nZXRfbm9y
ZXN1bWUoKSBiZWZvcmUgc3RhcnRpbmcgdGhlIHN1c3BlbmQgb2YgYSAKPj4gZGV2aWNlLiBTbyBJ
IGd1ZXNzIG9tYXBkcm0ncyBzdXNwZW5kIGhhcyBiZWVuIGJyb2tlbiBhbGwgdGhlIHRpbWUsIGJ1
dCBpdCB3YXMgImZpeGVkIiBieSBvbWFwX2RldmljZS4KPj4KPiAKPiBJIHRoaW5rIEkgbWlnaHQg
aGF2ZSBhbiBpZGVhIHdoYXQgaXMgZ29pbmcgd3JvbmcuCj4gCj4gQmVmb3JlOgo+ICstLS0tLS0t
LS0tLS0tLS0tLS0tLS0tKwo+IHxvbWFwX2RldmljZV9wbV9kb21haW4gfAo+ICstLS0tLS0tLS0t
LS0tLS0rLS0tLS0tKy0tLS0tLSsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwg
ZGV2aWNlwqDCoMKgwqDCoCB8Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCArLS0t
LS0tLS0tLS0tLSsKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgb21hcF9kZXZp
Y2UgfAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKy0tLS0tLS0tLS0tLS0rCj4g
Cj4gb21hcF9kZXZpY2UgaXMgZW1iZWRkZWQgaW4gREQgZGV2aWNlIGFuZCBQTSBoYW5kbGVkIGJ5
IG9tYXBfZGV2aWNlX3BtX2RvbWFpbi4KPiAKPiBzdGF0aWMgaW50IF9vZF9zdXNwZW5kX25vaXJx
KHN0cnVjdCBkZXZpY2UgKmRldikKPiB7Cj4gLi4uCj4gCj4gIMKgwqDCoMKgcmV0ID0gcG1fZ2Vu
ZXJpY19zdXNwZW5kX25vaXJxKGRldik7Cj4gWzFdIF5eIGRldmljZSBzdXNwZW5kX25vaXJxIGNh
bGwKPiAKPiAgwqDCoMKgwqBpZiAoIXJldCAmJiAhcG1fcnVudGltZV9zdGF0dXNfc3VzcGVuZGVk
KGRldikpIHsKPiAgwqDCoMKgwqDCoMKgwqAgaWYgKHBtX2dlbmVyaWNfcnVudGltZV9zdXNwZW5k
KGRldikgPT0gMCkgewo+IFsyXSBeXiBkZXZpY2UgcG1fcnVudGltZV9zdXNwZW5kIGZvcmNlIGNh
bGwKPiAKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvbWFwX2RldmljZV9pZGxlKHBkZXYpOwo+
IFszXSBeXiBvbWFwX2RldmljZSBkaXNhYmxlCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2Qt
PmZsYWdzIHw9IE9NQVBfREVWSUNFX1NVU1BFTkRFRDsKPiAgwqDCoMKgwqDCoMKgwqAgfQo+ICDC
oMKgwqDCoH0KPiAKPiAgwqDCoMKgwqByZXR1cm4gcmV0Owo+IH0KPiAKPiBOb3c6Cj4gKy0tLS0t
LS0tLS0tLSsKPiB8dGkgc3lzYyBkZXYgfAo+ICstKy0tLS0tLS0tLS0rCj4gIMKgIHwKPiAgwqAg
fAo+ICDCoCB8wqDCoCArLS0tLS0tLS0tLS0tLSsKPiAgwqAgfMKgwqAgfCBkZXZpY2XCoMKgwqDC
oMKgIHwKPiAgwqAgKy0tPivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfAo+ICDCoMKgwqDCoMKg
ICstLS0tLS0tLS0tLS0tKwo+IAo+IFdpdGggbmV3IGFwcHJvYWNoIHRoZSBvbWFwX2RldmljZSBp
cyBub3QgZW1iZWRkZWQgaW4gREQgRGV2aWNlIGFueW1vcmUsCj4gaW5zdGVhZCB0aS1zeXNjICho
d21vZCByZXBsYWNlbWVudCkgYmVjYW1lIHBhcmVudCBvZiBERCBEZXZpY2UuCj4gCj4gQXMgcmVz
dWx0IHN1c3BlbmQgc2VxdWVuY2UgYmVjYW1lIHRoZSBmb2xsb3dpbmcKPiAoTm90ZS4gQWxsIFBN
IHJ1bnRpbWUgUFVUIGNhbGxzIGJlY2FtZSBOT1AgZHVyaW5nIHN1c3BlbmQgYnkgZGVzaWduKToK
PiAKPiBkZXZpY2UKPiB8LT4gc3VzcGVuZCgpIC0gaW4gY2FzZSBvZiBkc3Mgb21hcF9kcm1fc3Vz
cGVuZCgpIGFuZCBDbyBpZiBkZWZpbmVkCj4gfC0+IHN1c3BlbmRfbm9pcnEoKSAtIGluIGNhc2Ug
b2YgZHNzICpub3QgZGVmaW5lZCIsIGVxdWFsIHRvIHN0ZXAgWzFdIGFib3ZlCj4gLi4KPiAKPiB0
aSBzeXNjIGRldiAodGktc3lzYyBpcyBwYXJlbnQsIHNvIGNhbGxlZCBhZnRlciBkZXZpY2UpCj4g
fC0+IHN5c2Nfbm9pcnFfc3VzcGVuZAo+ICDCoMKgIHwtPiBwbV9ydW50aW1lX2ZvcmNlX3N1c3Bl
bmQoKQo+ICDCoMKgwqDCoHwtPiBzeXNjX3J1bnRpbWVfc3VzcGVuZCgpIC0gZXF1YWwgdG8gc3Rl
cCBbM10gYWJvdmUKPiAKPiBBbmQgc3RlcCBbMl0gaXMgbWlzc2luZyBhcyBvZiBub3chCj4gCj4g
SSB0aGluaywgc3VzcGVuZCBtaWdodCBiZSBmaXhlZCBpZiBhbGwgZGV2aWNlcywgd2hpY2ggYXJl
IG5vdyBjaGlsZCBvZiB0aS1zeXNjLCB3aWxsIGRvCj4gcG1fcnVudGltZV9mb3JjZV94eHgoKSBj
YWxscyBhdCBub2lycSBzdXNwZW5kIHN0YWdlIGJ5IGFkZGluZzoKPiAKPiAgwqDCoMKgwqBTRVRf
Tk9JUlFfU1lTVEVNX1NMRUVQX1BNX09QUyhwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQsCj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbV9ydW50aW1lX2ZvcmNl
X3Jlc3VtZSkKPiAKPiBBbSBJIG1pc3Npbmcgc210aD8KCklzbid0IHRoaXMgYWxtb3N0IGV4YWN0
bHkgdGhlIHNhbWUgbXkgcGF0Y2ggZG9lcz8gSSBqdXN0IHVzZWQgc3VzcGVuZF9sYXRlIGFuZCBy
ZXN1bWVfZWFybHkuIElzIApub2lycSBwaGFzZSBiZXR0ZXIgdGhhbiBsYXRlICYgZWFybHk/Cgog
IFRvbWkKCi0tIApUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIy
LCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBh
aWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
