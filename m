Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C841C6CAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=19Esgh4FWX7l0YBIelpbIODyw6L8NF48loUwzmfVOu0=; b=J9RunZ3xSN6yxsPSJgdxtjyLh
	flKd09qcxyoK6UCx0kx6FCa/s2D6HDJZ/HuD0TFbYkE3yUheGxqb6LF+KYbpzS+EoA/IlFOwWAaIj
	LZRhjjm9ybpUseEPcTf5rdvs8jgQyQCa4RjJKEza5ChtvwsnJKbMJ1yWvFao0luX/DyxXLkHqaec7
	H7TD4c1UlJpTp79qW5kGF+/KpgMtAvAkmx0t+nNWng6WCOtFhqK1D4QjKh3QBAbKf+sHB0It4DHGj
	if8U0tZq2vEDFW9gVcxLLh/kctBkBen2DJq0OGls1uasUp6kvhvyAB3diBRIes9lrN5RL64tReK4a
	1QmJJgi7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGAS-0004Ic-B2; Wed, 06 May 2020 09:16:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGAL-0004I3-Od
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:16:35 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D66720714;
 Wed,  6 May 2020 09:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588756592;
 bh=zALfP4xVA+WvMHMrj3CUbm45HqoM4nmq5AW9bGrPH2k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ffCmxnVjUNbGEYXs7ebndAaB16aD56h/wOafPQ9nhbc3AQTxKanXfu8za8iS2Sj82
 bmu9jj4FUSEsJyg0unDcCOcQAysGyMS0gP8Fbht+RdDADAC/HhmXIkK2bKk+Uum8ly
 YmjKIACtYOKj6oQTAulpDDWFMk09Q1iduE77w1Q8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWGAI-009tyT-Rk; Wed, 06 May 2020 10:16:30 +0100
MIME-Version: 1.0
Date: Wed, 06 May 2020 10:16:30 +0100
From: Marc Zyngier <maz@kernel.org>
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Subject: Re: [PATCH 07/16] arm64: dts: arm: Fix GIC compatible names
In-Reply-To: <629da7f9-9cc9-ec9e-f175-ef6c90b5e3f1@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-8-andre.przywara@arm.com>
 <86lfm6tf1f.wl-maz@kernel.org>
 <629da7f9-9cc9-ec9e-f175-ef6c90b5e3f1@arm.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <d9ebbc077d70805bed252656dede750b@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: andre.przywara@arm.com, robh@kernel.org, liviu.dudau@arm.com,
 sudeep.holla@arm.com, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_021633_842867_7EA8BA2E 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0wNiAwOTo0NSwgQW5kcsOpIFByenl3YXJhIHdyb3RlOgo+IE9uIDA1LzA1LzIw
MjAgMTk6MjUsIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gVHVlLCAwNSBNYXkgMjAyMCAxNzo1
MjowMyArMDEwMCwKPj4gQW5kcmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3YXJhQGFybS5jb20+IHdy
b3RlOgo+Pj4gCj4+PiBUaGUgR0lDIERUIGJpbmRpbmcgb25seSBhbGxvd3MgYSBjZXJ0YWluIGNv
bWJpbmF0aW9uIG9mIERUIGNvbXBhdGlibGUKPj4+IHN0cmluZ3MsIG1vc3RseSBqdXN0IGNvbnNp
c3Rpbmcgb2Ygb25lIG5hbWUuCj4+PiAKPj4+IERyb3AgdGhlIGNvbWJpbmF0aW9uIG9mIG11bHRp
cGxlIG5hbWVzIGFuZCBnbyB3aXRoIHRoZQo+Pj4gImFybSxjb3J0ZXgtYTE1LWdpYyIgbmFtZSBm
b3IgR0lDdjIsIGFzIHRoaXMgc2VlbXMgdG8gYmUgdGhlIG1vc3QgCj4+PiB3aWRlbHkKPj4+IGFj
Y2VwdGVkIHN0cmluZy4gImFybSxnaWMtNDAwIiB3b3VsZCBiZSBtb3JlIGNvcnJlY3QsIGJ1dCB3
YXMgCj4+PiBpbnRyb2R1Y2VkCj4+PiBtdWNoIGxhdGVyIGludG8gdGhlIGtlcm5lbCdzIEdJQyBk
cml2ZXIuCj4+PiAKPj4+IFNpZ25lZC1vZmYtYnk6IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5
d2FyYUBhcm0uY29tPgo+Pj4gLS0tCj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9hcm0vZm91bmRh
dGlvbi12OC1naWN2Mi5kdHNpIHwgMiArLQo+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2p1
bm8tYmFzZS5kdHNpICAgICAgICAgICB8IDIgKy0KPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fy
bS9ydHNtX3ZlLWFlbXY4YS5kdHMgICAgICAgfCAyICstCj4+PiAgMyBmaWxlcyBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+PiAKPj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FybS9mb3VuZGF0aW9uLXY4LWdpY3YyLmR0c2kgCj4+PiBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYXJtL2ZvdW5kYXRpb24tdjgtZ2ljdjIuZHRzaQo+Pj4gaW5kZXggMTVm
ZTgxNzM4ZTk0Li42MWExNzUwZmNkZDYgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FybS9mb3VuZGF0aW9uLXY4LWdpY3YyLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYXJtL2ZvdW5kYXRpb24tdjgtZ2ljdjIuZHRzaQo+Pj4gQEAgLTYsNyArNiw3IEBACj4+
PiAKPj4+ICAvIHsKPj4+ICAJZ2ljOiBpbnRlcnJ1cHQtY29udHJvbGxlckAyYzAwMTAwMCB7Cj4+
PiAtCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTE1LWdpYyIsICJhcm0sY29ydGV4LWE5LWdp
YyI7Cj4+PiArCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTE1LWdpYyI7Cj4+PiAgCQkjaW50
ZXJydXB0LWNlbGxzID0gPDM+Owo+Pj4gIAkJI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4+PiAgCQlp
bnRlcnJ1cHQtY29udHJvbGxlcjsKPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FybS9qdW5vLWJhc2UuZHRzaSAKPj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9hcm0vanVuby1i
YXNlLmR0c2kKPj4+IGluZGV4IDNmZWVmZDYxZWI3Ni4uNjIzOTJhYjFmODgwIDEwMDY0NAo+Pj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hcm0vanVuby1iYXNlLmR0c2kKPj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYXJtL2p1bm8tYmFzZS5kdHNpCj4+PiBAQCAtNjksNyArNjksNyBA
QAo+Pj4gIAl9Owo+Pj4gCj4+PiAgCWdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJAMmMwMTAwMDAg
ewo+Pj4gLQkJY29tcGF0aWJsZSA9ICJhcm0sZ2ljLTQwMCIsICJhcm0sY29ydGV4LWExNS1naWMi
Owo+Pj4gKwkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWExNS1naWMiOwo+PiAKPj4gV2h5PyBH
SUMtNDAwIGlzIGRlZmluaXRlbHkgdGhlIG1vc3QgY29ycmVjdCBjb21wYXRpYmxlIHN0cmluZy4g
SSdkCj4+IHJhdGhlciBzZWUgdGhpcyBjb21wYXRpYmxlIGJlaW5nIGdlbmVyYWxpc2VkIHRvIHRo
ZSBtb2RlbHMgcmF0aGVyIHRoYW4KPj4gb25seSByZWZlcmVuY2luZyB0aGUgQTE1IEdJQy4KPiAK
PiBJIGFncmVlIHRoYXQgZ2ljLTQwMCBpcyB0aGUgZmFyIGJldHRlciBuYW1lLCBidXQgaXQgd2Fz
IG9ubHkgaW50cm9kdWNlZAo+IGluIHYzLjE2LiBTbyBvbWl0dGluZyBhcm0sY29ydGV4LWExNS1n
aWMgd291bGQgYnJlYWsgYW55IGtlcm5lbHMgYmVmb3JlCj4gdGhhdCwgd2hpY2ggSSB3b3VsZCBs
aWtlIHRvIGF2b2lkLgoKSSBhbSBub3QgdGFsa2luZyBhYm91dCBkcm9wcGluZyB0aGUgQTE1IEdJ
Qy4gSSdtIHNheWluZyB0aGF0IGJvdGggc2hvdWxkCnN0YXkuIElzIHRoZXJlIGFueXRoaW5nIGlu
IHRoZSBEVCBiaW5kaW5nIHRoYXQgZm9yYmlkcyBtdWx0aXBsZSBuYW1lcyBpbgp0aGUgY29tcGF0
aWJsZSBwcm9wZXJ0eT8KCj4gSXQncyBhY3R1YWxseSBhIHBpdHkgdGhhdCB3ZSBhcmUgc28gcGlj
a3kgYWJvdXQgdGhlIGNvbXBhdGlibGUgCj4gbGlzdGluZ3MsCj4gYmVjYXVzZSB0aGUgZXhpc3Rp
bmcgY29tYmluYXRpb24gaXMgYWN0dWFsbHkgcXVpdGUgbmljZTogd2UgZ2V0Cj4gY29tcGF0aWJp
bGl0eSB3aXRoIG9sZGVyIERUIGNvbnN1bWVycywgYnV0IHN0aWxsIGNhbiBzYXkgd2hhdCBpdAo+
IGFjdHVhbGx5IGlzLgo+IEkgd29uZGVyIGlmIEkgc2hvdWxkIGludHJvZHVjZSB0aGlzIGNvbWJp
bmF0aW9uIHRvIHRoZSBHSUMgRFQgYmluZGluZwo+IGluc3RlYWQsIGl0IHNlZW1zIGxpa2UgdGhl
cmUgYXJlIG90aGVyIHVzZXJzIGluIHRoZSB0cmVlIGFzIHdlbGwuCj4gCj4gV2hhdCBkbyB5b3Ug
dGhpbms/CgpJJ2Qgc2F5IHRoYXQgaWYgdGhlIGJpbmRpbmcgZm9yYmlkcyBtdWx0aXBsZSBjb21w
YXRpYmxlIHN0cmluZ3MsIHRoZQpiaW5kaW5nIGlzIGxpa2VseSB0byBiZSB3cm9uZy4gV2Ugc2hv
dWxkIGZpeCBpdCwgYW5kIG5vdCBtYWtlIHRoZSBEVHMKd29yc2UgYXMgYSByZXN1bHQgb2YgYSBi
aW5kaW5nIGlzc3VlLgoKVGhhbmtzLAoKICAgICAgICAgTS4KLS0gCkphenogaXMgbm90IGRlYWQu
IEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
