Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0050D115593
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFYN7KwDhGJWFHzUXQSF/SfhdSyEiAWKB7opOc3+xj4=; b=N1qKO1JEXjHon1
	Ub7fIyl8/bHqG0eFNvFAzrSxypHYmqepkkpxBVdb3hVy9zPEaaliDPeXHj3LDzw5MEZMlbfcgwbNl
	0nhHW4ZrDlv+mGsCAM3O57a5wCkqhl2oga8ORszDd2JsRy26CfT3uMGvVQxOOM1rjiNalLvnVYqiQ
	hQ8nqIePqvSsBDSJqPgvKy0ojGFoZAYGa/dSpm4bt66yPyQkA9Mf8jymnH9TlpE/QB63eOzKXkeHr
	vgBMpi96tzyriQpe8GNvncN6ICaoGcNLdjZZHYlKlL9Ey7QjMJDHsLA+IwyETjnwRWBgqQnpBWUZ+
	qA/Awud6u7Luc/lgOeQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGbc-00022R-Te; Fri, 06 Dec 2019 16:37:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGbD-0001ma-IA
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:37:00 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FB7E2173E;
 Fri,  6 Dec 2019 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575650219;
 bh=2H3ziaS3wSxYN2KRy/3/wq9E68TWEGzBwD5gyjiUZKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SMLxrM14iP7T5hwxwaGBH+jV7xzG2sSAxPyomobXXe93MRL/+gyC6rYj5zWawvMv7
 wJ28xDTpb+r1h6LV3Miyk3tpgsq2DYLWo9Lp846xgWLWDtN0DutBNoO1eywkVV/iDA
 LGFS8MoTVGdP6JZ1KT80jsnd12PZ2yP/wR6LJIzs=
Date: Fri, 6 Dec 2019 17:36:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH 2/3] x86 cpuinfo: implement sysfs nodes for x86
Message-ID: <20191206163656.GC86904@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-3-trenn@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206162421.15050-3-trenn@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083659_632432_DA827445 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, Thomas Renninger <trenn@suse.com>,
 linux-kernel@vger.kernel.org, fschnitzlein@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMDYsIDIwMTkgYXQgMDU6MjQ6MjBQTSArMDEwMCwgVGhvbWFzIFJlbm5pbmdl
ciB3cm90ZToKPiBGcm9tOiBGZWxpeCBTY2huaXpsZWluIDxmc2Nobml6bGVpbkBzdXNlLmRlPgo+
IAo+IEVuYWJsZSBzeXNmcyBjcHVpbmZvIGZvciB4ODYgYmFzZWQgY3B1cy4KPiBFeHBvcnQgb2Z0
ZW4gdXNlZCBjcHUgaW5mb3JtYXRpb24gdG8gc3lzZnM6Cj4gc3RlcHBpbmcsIGZsYWdzLCBidWdz
LCBib2dvbWlwcywgZmFtaWx5LCB2ZW5kb3JfaWQsCj4gbW9kZWwsIGFuZCBtb2RlbF9uYW1lIGFy
ZSBleHBvcnRlZC4KPiAKPiBTeXNmcyBkb2N1bWVudGF0aW9uIGlzIHVwZGF0ZWQgdG8gcmVmbGVj
dCBjaGFuZ2VzLgo+IAo+IEV4YW1wbGUgKG9uIGEga3ZtIGluc3RhbmNlIHJ1bm5pbmcgbm8gYW4g
aW50ZWwgY3B1KToKPiAvc3lzL2RldmljZXMvc3lzdGVtL2NwdS9jcHUxL2luZm8vOlswXSMgaGVh
ZCAqCj4gPT0+IGJvZ29taXBzIDw9PQo+IDUxODcuNzIKPiAKPiA9PT4gYnVncyA8PT0KPiBjcHVf
bWVsdGRvd24gc3BlY3RyZV92MSBzcGVjdHJlX3YyIHNwZWNfc3RvcmVfYnlwYXNzIGwxdGYgbWRz
IHN3YXBncyBpdGxiX211bHRpaGl0Cj4gCj4gPT0+IGNwdV9mYW1pbHkgPD09Cj4gNgo+IAo+ID09
PiBmbGFncyA8PT0KPiBmcHUgdm1lIGRlIHBzZSB0c2MgbXNyIHBhZSBtY2UgY3g4IGFwaWMgc2Vw
IG10cnIgcGdlIG1jYSBjbW92IHBhdCBwc2UzNiBjbGZsdXNoIG1teCBmeHNyIHNzZSBzc2UyIHNz
IHN5c2NhbGwgbnggcGRwZTFnYiByZHRzY3AgbG0gY29uc3RhbnRfdHNjIHJlcF9nb29kIG5vcGwg
eHRvcG9sb2d5IGNwdWlkIHRzY19rbm93bl9mcmVxIHBuaSBwY2xtdWxxZHEgc3NzZTMgZm1hIGN4
MTYgcGNpZCBzc2U0XzEgc3NlNF8yIHgyYXBpYyBtb3ZiZSBwb3BjbnQgdHNjX2RlYWRsaW5lX3Rp
bWVyIGFlcyB4c2F2ZSBhdnggZjE2YyByZHJhbmQgaHlwZXJ2aXNvciBsYWhmX2xtIGFibSBjcHVp
ZF9mYXVsdCBpbnZwY2lkX3NpbmdsZSBwdGkgc3NiZCBpYnJzIGlicGIgZnNnc2Jhc2UgdHNjX2Fk
anVzdCBibWkxIGF2eDIgc21lcCBibWkyIGVybXMgaW52cGNpZCB4c2F2ZW9wdCBhcmF0IHVtaXAK
Ck9uZSBmaWxlIHdpdGggYWxsIG9mIHRoYXQ/ICBXZSBhcmUgZ29pbmcgdG8gcnVuIGludG8gcHJv
YmxlbXMKZXZlbnR1YWxseSwgdGhhdCBzaG91bGQgYmUgc3BsaXQgdXAuCgpKdXN0IGxpa2UgYnVn
cywgdGhhdCdzIGdvaW5nIHRvIGp1c3QgZ3JvdyBvdmVyIHRpbWUgYW5kIGV2ZW50dWFsbHkKb3Zl
cmZsb3cgUEFHRV9TSVpFIDooCgpNYWtlIHRoaXM6CiAg4pSc4pSA4pSAIGZsYWdzCiAg4pSCwqDC
oCDilJzilIDilIAgZnB1CiAg4pSCwqDCoCDilJzilIDilIAgdm1lCi4uLgoKTXVjaCBzaW1wbGVy
IHRvIHBhcnNlLCByaWdodD8KCnN5c2ZzIGZpbGVzIG5lZWQgdG8gYmUgb25lLXZhbHVlLXBlci1m
aWxlLCBhbmQgdGhhdCdzIGEgbG90IG9mIGRpZmZlcmVudAp2YWx1ZXMgaW4gYSBzaW5nbGUgZmls
ZS4KCkhvdyBkaWQgSSBtaXNzIHRoYXQgYmVmb3JlPwoKPiBAQCAtMCwwICsxLDk5IEBACj4gKy8q
Cj4gKyAqIENvcHlyaWdodCAoQykgMjAxNyBTVVNFIExpbnV4IEdtYkgKPiArICogV3JpdHRlbiBi
eTogRmVsaXggU2Nobml6bGVpbiA8ZnNjaG5pemxlaW5Ac3VzZS5jb20+Cj4gKyAqCj4gKyAqIFRo
aXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQv
b3IKPiArICogbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVi
bGljIExpY2Vuc2UgdmVyc2lvbgo+ICsgKiAyIGFzIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0
d2FyZSBGb3VuZGF0aW9uLgo+ICsgKgo+ICsgKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQg
aW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwgYnV0Cj4gKyAqIFdJVEhPVVQgQU5Z
IFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKPiArICogTUVS
Q0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRo
ZSBHTlUKPiArICogR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgoKQm9p
bGVycGxhdGUgYW5kIFNQRFguCgpZb3UgZGlkIHJ1biB0aGVzZSB0aHJvdWdoIGNoZWNrcGF0Y2gu
cGwsIHJpZ2h0PyAgSXQgc2hvdWxkIGhhdmUKY29tcGxhaW5lZCBhYm91dCB0aGlzLgoKdGhhbmtz
LAoKZ3JlZyBrLWgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
