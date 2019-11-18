Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20719100141
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:27:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NrxNs4rhpO7RZwstbSO+ZUe24x9RSTOdYIeG7nklCtI=; b=ITp2oaQBGFNfrhcoqJXtg6ljw
	0zZuCJd7kmUmbhm7cFxyWAx8WcGn3+h+8qM/AeeEJIzHY1iacC88fqi6tRDAp8Ml+5c/vXZpqgEx8
	lnvKyeoDKTGTSq2fZqFrL1K9+NTerqR8KEdTOqK1qvMFeCz2DQi8pwzBmwxzN051be/VcmXpVi/4T
	tOgKOquLUo+jjd6TRH2VH3xr4J/bWUJLlkGtJqX/1hQTze4SXV698XjzacTk5y5Cs8YWJQM0/QE6t
	nIiqCH2hMrETmZ+/psAdNLsmKI3W+o47kmMbipIW2deTVEHYIsVzp8oXXBIHcabRIEHrYkx7NNhgz
	RMDcGbVMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdJS-0000km-LH; Mon, 18 Nov 2019 09:27:14 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdJK-0000jh-7k; Mon, 18 Nov 2019 09:27:07 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iWdJF-0005vm-TH; Mon, 18 Nov 2019 10:27:01 +0100
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v3 8/8] ARM: realtek: Enable RTD1195 arch timer
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 18 Nov 2019 09:27:01 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <7015e4c4-f999-d2e8-fd1f-e15e74a0d092@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-9-afaerber@suse.de> <20191117110214.6b160b2e@why>
 <7015e4c4-f999-d2e8-fd1f-e15e74a0d092@suse.de>
Message-ID: <e99e40d8c95147861ab600c5d5287f8f@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: afaerber@suse.de, linux-realtek-soc@lists.infradead.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.tai@realtek.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_012706_422140_0BE4418F 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-kernel@vger.kernel.org, James Tai <james.tai@realtek.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMS0xNyAxNzowOCwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEFtIDE3LjExLjE5
IHVtIDEyOjAyIHNjaHJpZWIgTWFyYyBaeW5naWVyOgo+PiBPbiBTdW4sIDE3IE5vdiAyMDE5IDA4
OjIxOjA5ICswMTAwCj4+IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6
Cj4+Cj4+PiBXaXRob3V0IHRoaXMgbWFnaWMgd3JpdGUgdGhlIHRpbWVyIGRvZXNuJ3Qgd29yayBh
bmQgYm9vdCBnZXRzIAo+Pj4gc3R1Y2suCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBG
w6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+Pj4gLS0tCj4+PiAgV2hhdCBpcyB0aGUgbmFtZSBv
ZiB0aGUgcmVnaXN0ZXIgMHhmZjAxODAwMD8KPj4+ICBJcyAweDEgYSBCSVQoMCkgd3JpdGUsIG9y
IGhvdyBhcmUgdGhlIHJlZ2lzdGVyIGJpdHMgZGVmaW5lZD8KPj4+ICBJcyB0aGlzIGEgcmVzZXQg
b3IgYSBjbG9jayBnYXRlPyBIb3cgc2hvdWxkIHdlIG1vZGVsIGl0IGluIERUPwo+Cj4gICAgIF5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eCgpTb3JyeT8gRG8geW91IGV4cGVjdCBtZSB0byBjb21lIHVwIHdpdGggYW5zd2VyIHRvIHRo
ZXNlIHF1ZXN0aW9ucz8KCj4+Pgo+Pj4gIHYyIC0+IHYzOiBVbmNoYW5nZWQKPj4+Cj4+PiAgdjI6
IE5ldwo+Pj4KPj4+ICBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jIHwgMTYgKysrKysr
KysrKysrKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMgCj4+PiBiL2FyY2gv
YXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMKPj4+IGluZGV4IGIzMWE0MDY2YmU4Ny4uMDUzMjM3
OWM3NGY1IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwo+
Pj4gKysrIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwo+Pj4gQEAgLTUsNiArNSw5
IEBACj4+PiAgICogQ29weXJpZ2h0IChjKSAyMDE3LTIwMTkgQW5kcmVhcyBGw6RyYmVyCj4+PiAg
ICovCj4+Pgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIuaD4KPj4+ICsjaW5jbHVk
ZSA8bGludXgvY2xvY2tzb3VyY2UuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4KPj4+ICAj
aW5jbHVkZSA8bGludXgvbWVtYmxvY2suaD4KPj4+ICAjaW5jbHVkZSA8YXNtL21hY2gvYXJjaC5o
Pgo+Pj4KPj4+IEBAIC0yNCw2ICsyNywxOCBAQCBzdGF0aWMgdm9pZCBfX2luaXQgcnRkMTE5NV9y
ZXNlcnZlKHZvaWQpCj4+PiAgCXJ0ZDExOTVfbWVtYmxvY2tfcmVtb3ZlKDB4MTgxMDAwMDAsIDB4
MDEwMDAwMDApOwo+Pj4gIH0KPj4+Cj4+PiArc3RhdGljIHZvaWQgX19pbml0IHJ0ZDExOTVfaW5p
dF90aW1lKHZvaWQpCj4+PiArewo+Pj4gKwl2b2lkIF9faW9tZW0gKmJhc2U7Cj4+PiArCj4+PiAr
CWJhc2UgPSBpb3JlbWFwKDB4ZmYwMTgwMDAsIDQpOwo+Pj4gKwl3cml0ZWwoMHgxLCBiYXNlKTsK
Pj4+ICsJaW91bm1hcChiYXNlKTsKPj4+ICsKPj4+ICsJb2ZfY2xrX2luaXQoTlVMTCk7Cj4+PiAr
CXRpbWVyX3Byb2JlKCk7Cj4+PiArfQo+Pgo+PiBHYXdkLi4uIFdoeSBpc24ndCB0aGlzIHNldCBm
cm9tIHRoZSBib290bG9hZGVyPyBCeSB0aGUgdGltZSB0aGUgCj4+IGtlcm5lbAo+PiBzdGFydHMs
IGV2ZXJ5dGhpbmcgc2hvdWxkIGJlIHVwIGFuZCBydW5uaW5nLiBXaGF0IGlzIGl0IGdvaW5nIHRv
IGRvCj4+IHdoZW4geW91IGtleGVjPyBTaG91bGRuJ3QgdGhpcyBiZSBhIHJlYWQvbW9kaWZ5L3dy
aXRlIHNlcXVlbmNlPwo+Cj4gQWdhaW4sIEkgY2FuJ3QgY29tbWVudCBvbiB3aHkgdGhlaXIgQlNQ
IGJvb3Rsb2FkZXJzIGRvbid0IGRvIHRoaW5ncyAKPiB0aGUKPiBleHBlY3RlZCB3YXkuIFRoZSBs
aXN0IG9mIGlzc3VlcyBpcyBsb25nLCBhbmQgdGhlIG5ld2VzdCBVLUJvb3QgSSd2ZQo+IHNlZW4g
Zm9yIFJURDEzOTUgd2FzIHYyMDE1LjA3IGJhc2VkLCBzdGlsbCBkb3duc3RyZWFtIGFuZCBwcmUt
RUJCUi4KPiBBbmQgYmVmb3JlIHdlIGdldCBhIC5kdHMgbWVyZ2VkIGludG8gdGhlIGtlcm5lbCB3
aXRoIGFsbCBuZWVkZWQgbm9kZXMKPiAobmV0d29yaywgZU1NQywgZXRjLiksIHRoZXJlIGlzIHpl
cm8gY2hhbmNlIG9mIGEgbWFpbmxpbmUgVS1Cb290IAo+IGFueXdheS4KClsuLi5dCgpJIGNlcnRh
aW5seSBkaXNwdXRlIHRoYXQuIElmIHlvdSdyZSBhYmxlIHRvIHN1cHBvcnQgYWxsIG9mIHRoaXMg
aW4gdGhlCmtlcm5lbCwgeW91J3JlIG1vc3QgcHJvYmFibHkgYWJsZSB0byBkbyBpdCBpbiB1LWJv
b3QsIGFuZCB0aGF0J3MgdGhlIApyaWdodApwbGFjZSB0byBkbyBpdCAoYW5kIHRoYXQgY2FuIGJl
IGEgcHJldHR5IHNpbXBsZSB1LWJvb3QgaWYgeW91IHVzZSB0aGUKb3JpZ2luYWwgb25lIGFzIGEg
Zmlyc3Qtc3RhZ2UgbG9hZGVyKS4KCkknbSBub3QgdHJ5aW5nIHRvIHVuZGVybWluZSB5b3VyIGVm
Zm9ydCBpbiBzdXBwb3J0aW5nIHRoZXNlIHBsYXRmb3JtcwppbiBtYWlubGluZS4gVGhpcyBpcyBj
ZXJ0YWlubHkgY29tbWVuZGFibGUuIEJ1dCB5b3UncmUgdW5mb3J0dW5hdGVseQpwdXNoaW5nIGlu
IGEgZGlyZWN0aW9uIHRoYXQgd2UndmUgdHJpZWQgaGFyZCB0byBtb3ZlIGF3YXkgZnJvbSBmb3IK
YSBnb29kIDggeWVhcnMuCgpMb29rIGF0IHdoYXQgd2UgZGlkIG9uIHRoZSBBbGx3aW5uZXIgZnJv
bnQ6IHdlIGdvdCBhIHRlcnJpYmxlIHBpZWNlIG9mCmNyYXAsIGFuZCB0dXJuZWQgaXQgaW50byBv
bmUgb2YgdGhlIGJlc3Qgc3VwcG9ydGVkIHBsYXRmb3JtLCBiZWNhdXNlCndlJ3ZlIHB1dCB0aGUg
ZWZmb3J0IHdoZXJlIGl0IG1hdHRlcmVkLiBJIHBlcnNvbmFsbHkgd3JvdGUgUFNDSSBzdXBwb3J0
CmFuZCBIWVAgZW5hYmxlbWVudCBpbiB1LWJvb3QsIGFkZHJlc3NpbmcgaW4gb25lIGdvIG1vc3Qg
b2YgdGhlIGlzc3VlcyAKeW91Cm1lbnRpb24gaGVyZS4gSXQgZGlkbid0IHRha2UgdGhhdCBtdWNo
IHRpbWUsIGFuZCBpdCBpcyBub3cgdGhlcmUgZm9yIAp5b3UKdG8gbWFrZSB1c2Ugb2YuCgpUaGFu
a3MsCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMgZnVu
bnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
