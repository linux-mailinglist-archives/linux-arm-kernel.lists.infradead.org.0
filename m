Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBBF10A4A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 20:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cBZ2qVi0gSg7OShOYUfpCiqzD6fIykye0EA9oToREJE=; b=CcRXsdD/Mn2sYW4Oa1CGL15b6r
	cGbtkdToVotS5ulHa0RhUYVmoZ8BtWx69R0y4FbCGfuWEWdDl3EjTqp/EDfXXXdptHncqNbH8AKL+
	FHt9hhkJBTrJ128mCWdcdsvvO7/3kJ9jj4M8j2PdhveGTigENbOF6cHuki/OeUcMYqy10YWts3i5m
	lFfsMVAgPc1F3aIXS7QEQsmTuVjEq8GmaJummRQHaCcmzc9cK43JoKLyYrmQzkck2+yiPy+UlsaO2
	nKIudepHl7Vp2ZbpZPJGHXtpMJG0wq96/6UhLYd5aaaEGBhlQfPv6k7r2pkk65SebNEJ2wvKLGKB+
	RbD8f2KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZgd1-0008UY-Bs; Tue, 26 Nov 2019 19:36:03 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZgct-0008To-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 19:35:57 +0000
Received: by mail-ot1-x342.google.com with SMTP id q23so11136626otn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 11:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HT2M1Xfv+tvpjG1ucYQkF2fvfzcdx/n3wzuhyYktctM=;
 b=JOLm1AXku5RalOJtjRieB/kQKtK0udRdscDeEXxH1KAHd/fYWGsjz4xkUcLdpDNU4L
 3LF5fe0fVVNNP+dspxrYrGnLoyux4FgkHnDl0YpGt74hEHT9r9fZ5SLTycjn5+fy07Lk
 uq/Bkwg4bYsgKll9SLSzdzC1rkiciuWzGekJqBGenTIabcP8aqXBMUgPtuU1zOvRo6Iy
 jg/61mts1Vg1P41pVsgPAVb+vVUfGFy+4WeI0e+EFwSdLoATYfQHsd+3/aR5alvw3+XX
 Q0NpGmPM1EXKaiGqf9+ZtKOC735yL/I9wWudIFHWCSHwQqgLZhGZ1Y7V1blYW8MXGocZ
 ZPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=HT2M1Xfv+tvpjG1ucYQkF2fvfzcdx/n3wzuhyYktctM=;
 b=uRwt9Iu1bN/qcEN1FCoCcJ/YpokSFEiCPhifxB7pDINTW3y/yODueQgbSO+i29Z2iF
 FqRulZR6W0Pz/mc5Vhp/ehrQcKbVNx0ZMUHtikB18uVUZJDBjebAiaOdl5VHiMtHcFsM
 1OvBkHstzCAGtV5roR8+IkZvLlWsBIcmfoFdasQC/8CZ7Z2VAb6aPA527Lo5zUS2a3bq
 gkVbqbeoWZ5YrwfgRIk7Dox758SN3PrNcKGH6XzgdGMewsTWluJTPbWGhP5A9W1c2UpA
 0FB6GFSG7RDK9Z0ebrhKMmNHnVV4N2ppt9Om0/COZ9Zf7kSBVYFt1NA+wzyIzCT6FNrn
 nlrg==
X-Gm-Message-State: APjAAAXiy+piHn35/fO63ScN0rMvvA3nBYnu4oXTatvAlVuPeKPchUBk
 xGWVPAmLeKKSn8nHB6MtkEFjxneH36qF+/LrlNk=
X-Google-Smtp-Source: APXvYqxwy2YH1zXRvoLZhDl2LwHUaPWwfU4ZwllfPWEY5VmEMkXSvMDIFkZLaOj3kJ+NneohsrgZgOhpJ7pdvQg1LaY=
X-Received: by 2002:a9d:64ce:: with SMTP id n14mr472946otl.263.1574796954091; 
 Tue, 26 Nov 2019 11:35:54 -0800 (PST)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190901215214.f4vbxemdd7mf3gun@core.my.home>
 <20190902072735.zkrueocyz4glc26n@flea>
 <20190902105816.zurkkh2vjfexft7t@core.my.home>
In-Reply-To: <20190902105816.zurkkh2vjfexft7t@core.my.home>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 26 Nov 2019 11:36:37 -0800
Message-ID: <CA+E=qVdzHGZsazfeZYBA2YZBZv_rSpk7NsV5wbiAFH80cjxajQ@mail.gmail.com>
Subject: Re: [PATCH v5 00/18] add thermal driver for h6
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Yangtao Li <tiny.windzz@gmail.com>, 
 rui.zhang@intel.com, Eduardo Valentin <edubezval@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>, 
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan.Cameron@huawei.com, 
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_113556_060995_9755EE93 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gTW9uLCBTZXAgMiwgMjAxOSBhdCAzOjU4IEFNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVn
b3VzLmNvbT4gd3JvdGU6Cj4KPiBIZWxsbyBNYXhpbWUsCj4KPiBPbiBNb24sIFNlcCAwMiwgMjAx
OSBhdCAwOToyNzozNUFNICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gSGksCj4gPgo+
ID4gT24gU3VuLCBTZXAgMDEsIDIwMTkgYXQgMTE6NTI6MTRQTSArMDIwMCwgT25kxZllaiBKaXJt
YW4gd3JvdGU6Cj4gPiA+IEhlbGxvIFlhbmd0YW8sCj4gPiA+Cj4gPiA+IE9uIFNhdCwgQXVnIDEw
LCAyMDE5IGF0IDA1OjI4OjExQU0gKzAwMDAsIFlhbmd0YW8gTGkgd3JvdGU6Cj4gPiA+ID4gVGhp
cyBwYXRjaHNldCBhZGQgc3VwcG9ydCBmb3IgQTY0LCBIMywgSDUsIEg2IGFuZCBSNDAgdGhlcm1h
bCBzZW5zb3IuCj4gPiA+ID4KPiA+ID4gPiBUaHggdG8gSWNlbm93eSBhbmQgVmFzaWx5Lgo+ID4g
PiA+Cj4gPiA+ID4gQlRZLCBkbyBhIGNsZWFudXAgaW4gdGhlcm1hbCBtYWtmaWxlLgoKSGV5IFlh
bmd0YW8sCgpBcmUgdGhlcmUgYW55IHBsYW5zIGZvciB2Nj8KClJlZ2FyZHMsClZhc2lseQoKPiA+
ID4gSSd2ZSBhZGRlZCBzdXBwb3J0IGZvciBBODNUIGFuZCBhbHNvIHNvbWUgY2xlYW51cHMsIGFj
Y29yZGluZyB0byBteQo+ID4gPiBmZWVkYmFjazoKPiA+ID4KPiA+ID4gaHR0cHM6Ly9tZWdvdXMu
Y29tL2dpdC9saW51eC9sb2cvP2g9dGhzLTUuMwo+ID4gPgo+ID4gPiBGZWVsIGZyZWUgdG8gcGlj
ayB1cCB3aGF0ZXZlciB5b3UgbGlrZSBmcm9tIHRoYXQgdHJlZS4KPiA+ID4KPiA+ID4gRm9yIG90
aGVycywgdGhlcmUgYXJlIGFsc28gRFRTIHBhdGNoZXMgaW4gdGhhdCB0cmVlIGZvciBIMywgSDUs
IEE4M1QsIGFuZCBINiwgc28KPiA+ID4gdGhhdCBzaG91bCBtYWtlIHRlc3Rpbmcgb2YgdGhpcyBk
cml2ZXIgZWFzaWVyLgo+ID4KPiA+IEknbSBub3QgY29udmluY2VkIHRoYXQgYWx3YXlzIGV4cGFu
ZGluZyB0aGUgbnVtYmVyIG9mIFNvQyBzdXBwb3J0ZWQgaXMKPiA+IHRoZSBiZXN0IHN0cmF0ZWd5
IHRvIGdldCB0aGlzIG1lcmdlZC4gVXN1YWxseSwga2VlcGluZyB0aGUgc2FtZQo+ID4gZmVhdHVy
ZSBzZXQgYWNyb3NzIHZlcnNpb24sIGNvbnNvbGlkYXRpbmcgdGhhdCwgYW5kIHRoZW4gb25jZSBp
dCdzIGluCj4gPiBzZW5kaW5nIHRoZSBuZXcgU29DIHN1cHBvcnQgd29ya3MgYmVzdC4KPgo+IFRo
YXQncyBmaW5lIGFuZCBhbGwsIGJ1dCBJJ3ZlIG1vc3RseSBhZGRlZCBEVCBkZXNjcmlwdGlvbnMg
Zm9yIGFscmVhZHkgc3VwcG9ydGVkCj4gU29DcyBhbmQgZml4ZWQgYnVncyBpbiB0aGUgZHJpdmVy
LCBzbyB0aGF0IHBlb3BsZSBjYW4gYWN0dWFsbHkgdGVzdCB0aGUgZXhpc3RpbmcKPiBkcml2ZXIu
Cj4KPiBJIHRoaW5rIGFkZGluZyBEVCBjaGFuZ2VzIHdpbGwgYWN0dWFsbHkgaGVscCBnZXQgbmVl
ZGVkIGV4cG9zdXJlIGZvciB0aGlzCj4gcGF0Y2ggc2VyaWVzLgo+Cj4gQTgzVCBzdXBwb3J0IHRo
YXQgSSBhZGRlZCwgd2FzIGFjdHVhbGx5IGp1c3QgYSBzbWFsbCBjaGFuZ2UgdG8gdGhlIGRyaXZl
ci4KPgo+IHJlZ2FyZHMsCj4gICAgICAgICBvLgo+Cj4gPiBNYXhpbWUKPiA+Cj4gPiAtLQo+ID4g
TWF4aW1lIFJpcGFyZCwgQm9vdGxpbgo+ID4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwo+ID4gaHR0cHM6Ly9ib290bGluLmNvbQo+ID4KPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
