Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DF5E4A92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kQjWZRoqxd3PqsQt6k6m0bhdUIm2T0+sVkuDDITuRSo=; b=avNbzScrV/DfJSjr1Bw4Gop59
	pwJ2dBQcsF5Cotgc0XY7XNTVJTAfppzv95h3OSLH+aIifja7izRe+eI00Dj+8Gv6rPb1FPjVDSHvV
	FguDbzWuz9nKLllo4OSMGWxYJkApHejz5iXY1MFIt1g09HSmODPttsHdatZNZAeOj81XiTD7Krc8Y
	3COI7DxBz/g1xuPwERXTCP3IIyAE2z3iVJDUUnDX45os6rx8lUqK/u3bzpuMwUUNQAK2XoWVTAt98
	65sn5X35hF2gLagDeD8EajDFEpBHb3yhZ+8bO5dYy5YnWNFApusazXk0oBe9gdjiNSuO3ByVVo/gZ
	HjoPJrzBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyCt-0003Uq-Uq; Fri, 25 Oct 2019 11:56:39 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyCk-0003UO-0b
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 11:56:31 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9PBuPLf019737;
 Fri, 25 Oct 2019 06:56:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572004585;
 bh=Zxenn+fmpG460N0SqQ6Tu2DGbjwSZ0VroN2GIMrsIAg=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=FPjQoP3Gpowa+D6OvDKpQbasvPFIDx4yo099WeqIeZ0WKN9yqa4PSc7BC8wEltjLF
 zaVujvZLSON4OAQRS+azkOxq3K5lAbTpIdeEcS9OWVRv/AxMLf3Wcbsw+CGm1t69CX
 2At3aK98Lb/ZhWsMZUx8NVIxIRwYnsMWnRcngtxU=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9PBuPkM117460
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 25 Oct 2019 06:56:25 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 25
 Oct 2019 06:56:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 25 Oct 2019 06:56:24 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9PBuM2V019986;
 Fri, 25 Oct 2019 06:56:22 -0500
Subject: Re: [PATCH 00/10] crypto: omap fixes towards 5.5
From: Tero Kristo <t-kristo@ti.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <CAKv+Gu_HNOTSvWRTzLMeECaM8qCi5w806ht_e68e5vgcU9aQvQ@mail.gmail.com>
 <8f97d690-a88a-55cb-eb67-206e01873d94@ti.com>
Message-ID: <bf22f7dd-5446-d736-611b-6465df45b74d@ti.com>
Date: Fri, 25 Oct 2019 14:56:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8f97d690-a88a-55cb-eb67-206e01873d94@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_045630_134118_5EFE22A9 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-omap@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUvMTAvMjAxOSAxNDo1NSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMjUvMTAvMjAxOSAx
NDozMywgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4+IE9uIFRodSwgMTcgT2N0IDIwMTkgYXQgMTQ6
MjYsIFRlcm8gS3Jpc3RvIDx0LWtyaXN0b0B0aS5jb20+IHdyb3RlOgo+Pj4KPj4+IEhpLAo+Pj4K
Pj4+IFRoaXMgc2VyaWVzIGZpeGVzIGEgbnVtYmVyIG9mIGJ1Z3Mgd2l0aCBvbWFwIGNyeXB0byBp
bXBsZW1lbnRhdGlvbi4KPj4+IFRoZXNlIGhhdmUgYmVjb21lIGV2aWRlbnQgd2l0aCB0aGUgY2hh
bmdlcyB0byB0aGUgY3J5cHRvbWFuYWdlciwgd2hlcmUKPj4+IGl0IGFkZHMgc29tZSBuZXcgdGVz
dCBjYXNlcyBhbmQgbW9kaWZpZXMgc29tZSBleGlzdGluZywgbmFtZWx5IHRoZSBzcGxpdAo+Pj4g
dXBkYXRlIHRlc3RzLiBBbHNvLCB3aGlsZSBmaXhpbmcgdGhlIGNyeXB0b21hbmFnZXIgaW5kdWNl
ZCBidWdzLCBzb21lCj4+PiBvdGhlciBzdXJmYWNlZCB3aXRoIHRjcnlwdC9JUFNlYyB0ZXN0cywg
c28gZml4ZWQgdGhlbSBhc3dlbGwuCj4+Pgo+Pj4gUGF0Y2ggIzkgaXMgYWdhaW5zdCBjcnlwdG8g
Y29yZSBtb2RpZnlpbmcgdGhlIGNyeXB0b193YWl0X3JlcQo+Pj4gY29tbW9uIEFQSSB0byBoYXZl
IGEgdGltZW91dCBmb3IgaXQgYWxzbywgY3VycmVudGx5IGl0IHdhaXRzIGZvcmV2ZXIKPj4+IGFu
ZCBpdCBpcyBraW5kIG9mIGRpZmZpY3VsdCB0byBzZWUgd2hhdCB0ZXN0IGZhaWxzIHdpdGggY3J5
cHRvIG1hbmFnZXIuCj4+PiBUaGlzIGlzIG5vdCByZWFsbHkgbmVlZGVkIGZvciBhbnl0aGluZywg
YnV0IGl0IGlzIGtpbmQgb2YgbmljZSB0byBoYXZlCj4+PiAobWFrZXMgZGVidWdnaW5nIGVhc2ll
ci4pCj4+Pgo+Pj4gVGhpcyBzZXJpZXMgaGFzIGJlZW4gdGVzdGVkIG9uIHRvcCBvZiA1LjQtcmMy
LCB3aXRoIGZvbGxvd2luZyBzZXR1cHMsCj4+PiBvbiBBTTU3eHgtYmVhZ2xlLXgxNSBib2FyZDoK
Pj4+Cj4+PiAtIGNyeXB0byBtYW5hZ2VyIHNlbGYgdGVzdHMKPj4+IC0gdGNyeXB0IHBlcmZvcm1h
bmNlIHRlc3QKPj4+IC0gaXBzZWMgdGVzdCB3aXRoIHN0cm9uZ3N3YW4KPj4+Cj4+PiBUaGlzIHNl
cmllcyBkZXBlbmRzIG9uIHRoZSBza2NpcGhlciBBUEkgc3dpdGNoIHBhdGNoIGZyb20gQXJkIEJp
ZXNoZXV2ZWwKPj4+IFsxXS4KPj4+Cj4+Cj4+IEhpIFRlcm8sCj4+Cj4+IE9uIG15IEJlYWdsZUJv
bmUgV2hpdGUsIEkgYW0gaGl0dGluZyB0aGUgZm9sbG93aW5nIGlzc3VlcyBhZnRlcgo+PiBhcHBs
eWluZyB0aGVzZSBwYXRjaGVzOgo+Pgo+PiBbwqDCoMKgIDcuNDkzOTAzXSBhbGc6IHNrY2lwaGVy
OiBlY2ItYWVzLW9tYXAgZW5jcnlwdGlvbiB1bmV4cGVjdGVkbHkKPj4gc3VjY2VlZGVkIG9uIHRl
c3QgdmVjdG9yICJyYW5kb206IGxlbj01MzEga2xlbj0zMiI7Cj4+IGV4cGVjdGVkX2Vycm9yPS0y
MiwgY2ZnPSJyYW5kb206IGlucGxhY2UgbWF5X3NsZWVwIHVzZV9maW51cAo+PiBzcmNfZGl2cz1b
NDQuNzIlQCs0MDI4LCA8Zmx1c2g+MTQuNzAlQGFsaWdubWFzayszLCAxOS40NSVAKzQwNzAsCj4+
IDIxLjEzJUArMjcyOF0iCj4+IFvCoMKgwqAgNy42NTExMDNdIGFsZzogc2tjaXBoZXI6IGNiYy1h
ZXMtb21hcCBlbmNyeXB0aW9uIHVuZXhwZWN0ZWRseQo+PiBzdWNjZWVkZWQgb24gdGVzdCB2ZWN0
b3IgInJhbmRvbTogbGVuPTExMTgga2xlbj0zMiI7Cj4+IGV4cGVjdGVkX2Vycm9yPS0yMiwgY2Zn
PSJyYW5kb206IG1heV9zbGVlcCB1c2VfZmluYWwKPj4gc3JjX2RpdnM9WzxyZWltcG9ydD40MS44
NyVAKzMxLCA8Zmx1c2g+NTguMTMlQCsyNTEwXSIKPj4KPj4gVGhlc2UgYXJlIHNpbXBseSBhIHJl
c3VsdCBvZiB0aGUgRUNCIGFuZCBDQkMgaW1wbGVtZW50YXRpb25zIG5vdAo+PiByZXR1cm5pbmcg
LUVJTlZBTCB3aGVuIHRoZSBpbnB1dCBpcyBub3QgYSBtdWx0aXBsZSBvZiB0aGUgYmxvY2sgc2l6
ZS4KPj4KPj4gW8KgwqDCoCA3Ljg0NTUyN10gYWxnOiBza2NpcGhlcjogYmxvY2tzaXplIGZvciBj
dHItYWVzLW9tYXAgKDE2KSBkb2Vzbid0Cj4+IG1hdGNoIGdlbmVyaWMgaW1wbCAoMSkKPj4KPj4g
VGhpcyBtZWFucyBjcmFfYmxvY2tzaXplIGlzIG5vdCBzZXQgdG8gMSBhcyBpdCBzaG91bGQuIElm
IHlvdXIgZHJpdmVyCj4+IHVzZXMgdGhlIHNrY2lwaGVyIHdhbGsgQVBJLCBpdCBzaG91bGQgc2V0
IHRoZSB3YWxrc2l6ZSB0bwo+PiBBRVNfQkxPQ0tfU0laRSB0byBlbnN1cmUgdGhhdCB0aGUgaW5w
dXQgaXMgaGFuZGxlZCBjb3JyZWN0bHkuIElmIHlvdQo+PiBkb24ndCwgdGhlbiB5b3UgY2FuIGRp
c3JlZ2FyZCB0aGF0IHBhcnQuCj4+Cj4+IFvCoMKgwqAgOC4zMDY0OTFdIGFsZzogYWVhZDogZ2Nt
LWFlcy1vbWFwIHNldGF1dGhzaXplIHVuZXhwZWN0ZWRseQo+PiBzdWNjZWVkZWQgb24gdGVzdCB2
ZWN0b3IgInJhbmRvbTogYWxlbj0zIHBsZW49MzEgYXV0aHNpemU9NiBrbGVuPTkiOwo+PiBleHBl
Y3RlZF9lcnJvcj0tMjIKPj4KPj4gQW5vdGhlciBtaXNzaW5nIHNhbml0eSBjaGVjay4gR0NNIG9u
bHkgcGVybWl0cyBjZXJ0YWluIGF1dGhzaXplcy4KPj4KPj4gW8KgwqDCoCA5LjA3NDcwM10gb21h
cF9jcnlwdG9fY29weV9zZ3M6IENvdWxkbid0IGFsbG9jYXRlIHBhZ2VzIGZvcgo+PiB1bmFsaWdu
ZWQgY2FzZXMuCj4+Cj4+IFRoaXMgaXMgbm90IGEgYnVnLCBidXQgSSdtIG5vdCBzdXJlIGlmIHRo
ZSBiZWxvdyBpcyByZWxhdGVkIG9yIG5vdC4KPj4KPj4gSSdsbCBwcmVzZXJ2ZSB0aGUgYmluYXJp
ZXMsIGluIGNhc2UgeW91IG5lZWQgbWUgdG8gb2JqZHVtcCBhbnl0aGluZy4KPiAKPiBXaGF0IGFy
ZSB0aGVzZSB0ZXN0cyB5b3UgYXJlIGV4ZWN1dGluZz8gRm9yIG1lLCB0aGUgdGVzdG1nciBzZWxm
IHRlc3QgCj4gc3VpdGUgaXMgcGFzc2luZyBqdXN0IGZpbmUuIEFueSBleHRyYSB0ZXN0cyB5b3Ug
aGF2ZSBlbmFibGVkIHNvbWVob3c/Cj4gCj4gSSBhbSBhbHNvIHJ1bm5pbmcgZnVsbCB0ZXN0IG9u
IGRpZmZlcmVudCBib2FyZCB0aG91Z2ggKGFtNTd4eCksIEkgCj4gaGF2ZW4ndCBiZWVuIGV4cGxp
Y2l0bHkgcnVubmluZyBhbnl0aGluZyBvbiBhbTMzNXguCgpPaCwgYW5kIGJ0dywgZGlkIHlvdSB0
cnkgd2l0aG91dCBteSBzZXJpZXM/IEkgdGhpbmsgdGhlIHNlbGZ0ZXN0cyBhcmUgCmZhaWxpbmcg
cmF0aGVyIG1pc2VyYWJseSB3aXRob3V0IHRoZW0uLi4KCi1UZXJvCi0tClRleGFzIEluc3RydW1l
bnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLiBZLXR1bm51
cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
