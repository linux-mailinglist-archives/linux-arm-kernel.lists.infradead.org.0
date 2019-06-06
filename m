Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF2A375B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iJAHPdNeW4JyGTCwVIlaR/JGf6MoJ+a5dyxGsxIGhEw=; b=opuMM2b0MngqUA74pdDe9TaPR
	vc2wNnt/ji1K95+N5oqD8uX+PBU9d95qcC8xGwMS2dKJjYL9zRBPekmliM74Y2vyCc6jlywuFGSO0
	Cc3peV3SzpNW66ROFb8OztWXa3kLU7B2443AwNsbGAtBWiLRDKJg3uo0RQcd05GxtQmsqWU5vG0t1
	fYV2Oaaa6B9YqWsetGJWTfprLh1uKDhVdwe8VHFzTmYB2S8xr5Bly2jmMFKaqKOKc+5lpoVxL7pRc
	RsXIUiobJsL3PmAv4igibcqnO5L8u9DNdIUynuFYEQtrIH6U+Nijq5sAvoVZ1PvQlBF7raNHgEK5W
	IQ+oMxONA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsoP-00014l-EL; Thu, 06 Jun 2019 13:52:13 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsnv-0000Wp-Hy
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:51:49 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56Dpg9E011082;
 Thu, 6 Jun 2019 08:51:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559829102;
 bh=BQtfaNSKuw+WIWaVy6ikWP+DQWdv+WGxHH2Tzr1NZac=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=h1I3usQep2ZUp3znIhr/K3gPIKOAQdM3HYBuEruhQ9L27gN9acgxhKBLO4CaOYDQY
 FGnUL411rSYTVLGwXljerxepJdehcAgrvZpglnS63S5YBetNJxzF+ZxlzV6w7TppSm
 3Zjwjl+wvjX99QTtivPdI0ORf43l/5nHywIyLt5s=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56DpgD3067255
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 08:51:42 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 08:51:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 08:51:42 -0500
Received: from [10.250.68.219] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56DpfvM072538;
 Thu, 6 Jun 2019 08:51:41 -0500
Subject: Re: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
To: Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth Menon
 <nm@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
 <acf9cf30-bcd6-76a0-5498-c334c7c43213@ti.com>
 <37a5bf73-2f93-8474-bca1-2e9fae4d6668@ti.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <706a01f7-6953-73ec-d72a-62b4aac5dafa@ti.com>
Date: Thu, 6 Jun 2019 09:51:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <37a5bf73-2f93-8474-bca1-2e9fae4d6668@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_065144_316714_EF40D1AE 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi81LzE5IDE6MDEgUE0sIFN1bWFuIEFubmEgd3JvdGU6Cj4gT24gNi81LzE5IDExOjUzIEFN
LCBBbmRyZXcgRi4gRGF2aXMgd3JvdGU6Cj4+IE9uIDYvNS8xOSAxMjozNCBQTSwgU3VtYW4gQW5u
YSB3cm90ZToKPj4+IEhpIFRlcm8sCj4+Pgo+Pj4gVGhlIGZvbGxvd2luZyBzZXJpZXMgYWRkcyB0
aGUgRFQgbm9kZXMgZm9yIHRoZSBNQ1UgU1JBTSBwcmVzZW50IHdpdGhpbgo+Pj4gdGhlIE1DVSBk
b21haW4gZm9yIGJvdGggQU02NXggYW5kIEo3MjFFIFNvQ3MuIFRoZSBmaXJzdCAyIHBhdGNoZXMg
ZW5hYmxlCj4+PiB0aGUgTUNVIFNSQU0gbm9kZSB0byBiZSBwcm9iZWQgcHJvcGVybHkgb24gQU02
NXggU29DcywgYW5kIHRoZSB0aGlyZAo+Pj4gcGF0Y2ggdGhlIGVxdWl2YWxlbnQgZm9yIEo3MjFF
IFNvQ3MuIFRoZSB0aGlyZCBwYXRjaCBkZXBlbmRzIG9uIHRoZQo+Pj4gYmFzZSBKNzIxRSBzdXBw
b3J0IHBhdGNoIHNlcmllcyBmcm9tIE5pc2hhbnRoIFsxXS4KPj4+Cj4+PiBUaGUgbGFzdCBwYXRj
aCBpcyBub3QgcmVsYXRlZCB0byBNQ1UgU1JBTSwgYnV0IGFkZHMgdGhlIHJhbmdlcyBmb3IgdGhl
Cj4+PiBSNUYgY2x1c3RlciB0aGF0IGlzIGFsc28gcHJlc2VudCBpbiB0aGUgTUNVIGRvbWFpbiBp
biBwcmVwYXJhdGlvbiBmb3IKPj4+IHRoZSBSNUYgbm9kZXMuCj4+Pgo+Pgo+PiBXaHkgbm90IGhh
dmUgdGhpcyBsYXN0IHBhdGNoIGFzIHBhcnQgb2YgdGhlIHNlcmllcyBhZGRpbmcgdGhlIFI1RiBu
b2Rlcz8KPiAKPiBUaGUgcGF0Y2ggY2FuIGJlIGFwcGxpZWQgaW5kZXBlbmRlbnRseSBhcyBpcywg
bm8gcmVhc29uIHRvIHdhaXQgdW50aWwgSQo+IHBvc3QgdGhvc2UuCj4gCgpObyByZWFzb24gbm90
IHRvIHdhaXQgZWl0aGVyLi4gcGx1cyBpdCB3b3VsZCBrZWVwIHJlbGF0ZWQgY2hhbmdlcyBpbiB0
aGUgCnNhbWUgc2VyaWVzLgoKQW55d2F5LCBJIGRvbid0IGhhdmUgYW55IHByb2JsZW0gd2l0aCB0
aGlzLCB3YXMganVzdCBhc2tpbmcgYXMgSSB3YXMgbm90IApzdXJlIGlmIEkgd2FzIG1pc3Npbmcg
c29tZSBoaWRkZW4gZGVwZW5kZW5jeSBiZXR3ZWVuIHRoZSBub2Rlcy4KCkFuZHJldwoKPiByZWdh
cmRzCj4gU3VtYW4KPiAKPj4KPj4gQW5kcmV3Cj4+Cj4+PiByZWdhcmRzCj4+PiBTdW1hbgo+Pj4K
Pj4+IFsxXQo+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LWFy
bS1rZXJuZWwvbGlzdC8/c2VyaWVzPTEyMTE4OQo+Pj4KPj4+IFN1bWFuIEFubmEgKDQpOgo+Pj4g
IMKgwqAgYXJtNjQ6IGR0czogdGk6IGszLWFtNjU6IEFkZCBNQ1UgU1JBTSByYW5nZXMgaW4gaW50
ZXJjb25uZWN0IG5vZGVzCj4+PiAgwqDCoCBhcm02NDogZHRzOiB0aTogazMtYW02NS1tY3U6IEFk
ZCB0aGUgTUNVIFJBTSBub2RlCj4+PiAgwqDCoCBhcm02NDogZHRzOiB0aTogazMtajcyMWU6IEFk
ZCB0aGUgTUNVIFNSQU0gbm9kZQo+Pj4gIMKgwqAgYXJtNjQ6IGR0czogdGk6IGszLWFtNjU6IEFk
ZCBSNUYgcmFuZ2VzIGluIGludGVyY29ubmVjdCBub2Rlcwo+Pj4KPj4+ICDCoCBhcmNoL2FybTY0
L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWN1LmR0c2nCoMKgwqDCoMKgwqDCoMKgIHwgOCArKysrKysr
Kwo+Pj4gIMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS5kdHNpwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgNiArKysrKysKPj4+ICDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2sz
LWo3MjFlLW1jdS13YWtldXAuZHRzaSB8IDggKysrKysrKysKPj4+ICDCoCAzIGZpbGVzIGNoYW5n
ZWQsIDIyIGluc2VydGlvbnMoKykKPj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
