Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C961B2E83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBbA9FesWa/821izHBN1oLEhrY3ujNv31r6qv8+iWPA=; b=c0ESdvE3st5DX6
	TvHB5CIsHLbIKshwUvBwTjJRIZjp+A4z0BqqPml2IRBAKX4Tr59SdS506EibhaTiA0Phq1xtNppbQ
	No0kcvy+vndiu5BxCFVtw6i25fFz5+tAC3i9hhyHMGPzlwNiZe3t3wnC87Ij/OBLfVUJmYH2aho4S
	QJmSic6QMnfCu1Qc3ZESuUJY3BRvT59XGYuC1og71SYoawZ7xlEdu2NiwmcjarZzvi8Q7c1m1cEvQ
	r9lToVA9izRHycMe4jEQMFp+nmRzkJqepfYQwFkzpz9/bPS/EFaJewpCBh/sC4bQr2v1XwOkgBpNq
	XtpxDQw9SmvbhyPxmGZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwwc-0001Hr-1K; Tue, 21 Apr 2020 17:44:26 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwwS-0001HB-Oo
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:44:18 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4969t608RMz1r0GS;
 Tue, 21 Apr 2020 19:44:14 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4969t56WtFz1qtws;
 Tue, 21 Apr 2020 19:44:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id BkkacvUwQ2Im; Tue, 21 Apr 2020 19:44:12 +0200 (CEST)
X-Auth-Info: R/fVuDdL3sivlt74LKiNIIO6W1M9sFtlbYZNoV/k70U=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 21 Apr 2020 19:44:12 +0200 (CEST)
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200401132237.60880-1-marex@denx.de>
 <971b9046-2d77-fdc6-2916-8b02ffb601d5@denx.de>
 <b73cb2bf-e50b-ce52-8e53-d8b72fa273f0@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <37cfbbb1-64a2-aca6-8901-5bdff6df71e9@denx.de>
Date: Tue, 21 Apr 2020 19:07:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <b73cb2bf-e50b-ce52-8e53-d8b72fa273f0@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_104417_120620_494C44A1 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8yMS8yMCA2OjA0IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IEhpIE1hcmVrCgpI
aSwKCj4gT24gNC8yMS8yMCAxMjozMCBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDQvMS8y
MCAzOjIyIFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4+IFRoZSBBVjk2IGJvYXJkIGRldmljZSB0
cmVlIGlzIGNvbXBsZXRlbHkgYnJva2VuIGFuZCBkb2VzIG5vdCBtYXRjaCB0aGUKPj4+IGhhcmR3
YXJlLiBUaGlzIHNlcmllcyBmaXhlcyBpdCB1cC4KPj4+Cj4+PiBNYXJlayBWYXN1dCAoMjIpOgo+
Pj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5hdGUgcGlubXV4IGZvciBldGhlcm5l
dCBSR01JSQo+Pj4gwqDCoCBBUk06IGR0czogc3RtMzI6IFJlcGFpciBldGhlcm5ldCBvcGVyYXRp
b24gb24gQVY5Ngo+Pj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBtaXNzaW5nIGV0aGVybmV0
IFBIWSByZXNldCBvbiBBVjk2Cj4+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIG1pc3Npbmcg
ZXRoZXJuZXQgUEhZIHNrZXdzIG9uIEFWOTYKPj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQg
YWx0ZXJuYXRlIHBpbm11eCBmb3IgU0RNTUMxIGRpcmVjdGlvbiBwaW5zCj4+PiDCoMKgIEFSTTog
ZHRzOiBzdG0zMjogUmVwYWlyIFNETU1DMSBvcGVyYXRpb24gb24gQVY5Ngo+Pj4gwqDCoCBBUk06
IGR0czogc3RtMzI6IFJlcGFpciBQTUlDIGNvbmZpZ3VyYXRpb24gb24gQVY5Ngo+Pj4gwqDCoCBB
Uk06IGR0czogc3RtMzI6IFJlcGFpciBQTUlDIGludGVycnVwdCBvbiBBVjk2Cj4+PiDCoMKgIEFS
TTogZHRzOiBzdG0zMjogQWRkIGFsdGVybmF0ZSBwaW5tdXggZm9yIFNETU1DMiBwaW5zIDQtNwo+
Pj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBlTU1DIGF0dGFjaGVkIHRvIFNETU1DMiBvbiBB
Vjk2Cj4+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIFFTUEkgTk9SIG9uIEFWOTYKPj4+IMKg
wqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgY29uZmlndXJhdGlvbiBFRVBST00gb24gQVY5Ngo+Pj4g
wqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5hdGUgcGlubXV4IGZvciBTRE1NQzMgcGlu
cwo+Pj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEVuYWJsZSBXaUZpIG9uIEFWOTYKPj4+IMKgwqAg
QVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBpbm11eCBmb3IgVVNBUlQyIHBpbnMKPj4+
IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBFbmFibGUgQmx1ZXRvb3RoIG9uIEFWOTYKPj4+IMKgwqAg
QVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBpbm11eCBmb3IgTFREQyBwaW5zCj4+PiDC
oMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGJpbmRpbmdzIGZvciBIRE1JIHZpZGVvIG9uIEFWOTYK
Pj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBpbm11eCBmb3IgU0FJMiBw
aW5zCj4+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGJpbmRpbmdzIGZvciBhdWRpbyBvbiBB
Vjk2Cj4+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGJpbmRpbmdzIGZvciBVU0Igb24gQVY5
Ngo+Pj4gwqDCoCBBUk06IGR0czogc3RtMzI6IFJlbmFtZSBMRURzIHRvIG1hdGNoIHNpbGtzY3Jl
ZW4gb24gQVY5Ngo+Pj4KPj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNS1waW5jdHJs
LmR0c2nCoMKgwqAgfCAyODAgKysrKysrKysrKysrKysrKysKPj4+IMKgIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMgfCAzMjQgKysrKysrKysrKysrKysrKysrLS0K
Pj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNTcxIGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygt
KQo+Pgo+PiBBbGV4LCBjYW4geW91IHByb3ZpZGUgc29tZSByZXZpZXcgb2YgdGhpcyBzZXJpZXMg
PyBJdCdzIGJlZW4gcG9zdGVkIGZvcgo+PiB0aHJlZSB3ZWVrcyBub3cuCj4+Cj4gCj4gWWVzLCBJ
IHdhcyB3YWl0aW5nIGZvciBNYW5pJ3MgcmV2aWV3IGZpcnN0IChhbmQgSSB3YXMgYSBiaXQgYnVz
eSBzb3JyeSkuCgpJdCBzZWVtcyBtb3N0IG9mIHRoZSBwYXRjaGVzIGdvdCB0aGF0IHJldmlldy4K
Cj4gQWxsIHBhdGNoZXMgbG9va3MgZ29vZCBmb3IgbWUuIE1heWJlIEknbGwgc3F1YXNoIHNvbWUg
cGluY3RybCBwYXRjaGVzIHRvCj4gZGVjcmVhc2UgbnVtYmVyIG9mIHBhdGNoZXMuCgpPbmUgcGF0
Y2ggc2hvdWxkIGRvIG9uZSB0aGluZyBhbmQgb25lIHRoaW5nIG9ubHksIG5vID8KCj4gT25lIHJl
bWFpbmluZyBxdWVzdGlvbnMgYWJvdXQgcGF0Y2ggNyAoIlJlcGFpciBQTUlDIGNvbmZpZ3VyYXRp
b24gb24KPiBBVjk2KS4gSSBzYXcgYSBkaXNjdXNzaW9uIG9uIHUtYm9vdCB0aHJlYWQgd2l0aCBw
YXNjYWwgUC4sIGV4cGxhaW5pbmcKPiB0aGF0IDgwMG12IGlzIG5vdCB0aGUgbWluaW1hbCB2b2x0
YWdlIGFjY2VwdGFibGUgZm9yIHZkZGNvcmUuIFdoYXQgaXMKPiB0aGUgc3RhdHVzID8KCkl0IHNo
b3VsZCBsaWtlbHkgYmUgc2V0IHRvIDFWMiwgc2FtZSBhcyA3OTFiZTk0ZTI4NzggKCJBUk06IGR0
czogc3RtMzI6CmNoYW5nZSBkZWZhdWx0IG1pbmltYWwgYnVjazEgdmFsdWUgb24gc3RtMzJtcDE1
NyIpIGRvZXMuIEknbGwgYWRkIGl0CmludG8gdGhlIGxpc3Qgb2YgZml4ZXMgZm9yIFY1LgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
