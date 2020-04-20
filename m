Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FEC1B0747
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDwbKS3cK2L88xIoqhIdVKJOVanxvJ9Ug5xjMqHKLks=; b=OtyABrrFzic9Pj
	CM7raneT9fOxEbYVmXb/EXdPmmTyw4Cjuin+lTH1QIPysXV6cnx8i8x3L8UnKNXO5GvSC32OsF+GH
	YA0Gu76LSkWbA5l9Gb6pBDyNXXoRwf6JzMZLKtFrGlwrFrHB5gf9G+a1BCfam3uhGogGzqj+DQT5+
	Nxu+oG9UBPNg3wgC/dArDBgddKpIMK+xQgodlWHvTxIoT4d7FGAzOwtzNbjK4/91UXwZKu6pQDIIA
	RThNhxVSD6yPl9eC5VQTzEX9jGR2NsFMx2bAV9sLCA5B1vI/+MvulxOCx9iE7mU8gUy99L6DgXYsW
	uZgpbn4cRdWlBNORrANg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUVS-0006u6-PS; Mon, 20 Apr 2020 11:22:30 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUVK-0006s8-Ip
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:22:24 +0000
Received: by mail-il1-f194.google.com with SMTP id q10so7995312ile.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 04:22:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pccoCR8bT7vHRl0vUz7N7kMnUn1VVOEIOeGXPVDk95E=;
 b=kcrIhdN9mxqyOVQqssmeXysJSkAiL6ynplDmYBud/sabP7/bS4ilAoOdKNq/2c9+ap
 mfjr/oZNqeoqVHR46cdIBd0qOHsXyEDB6nDwrWYHy6MH8ZwUZOWQb+22094v5MJKmfmj
 HkkrHp8SdrQceRqAdFIBy8xwdUDPnIa2gRglpgvgwI+KAsiwAa93joxKh+1upwpsoUIy
 cUlSvs9f3LGSVwLELnbLtyG+Kh/sm8iHrMnH4k1zSurm47xZS6fP3ao4e39d2tg4E3dc
 wv90lal1+TMVVSxr6yboRimOySKJYppMIHLPGeAnpe55V7gpsPY7KM66G6S3VVpa6g36
 Kftg==
X-Gm-Message-State: AGi0Pubz3j/51zwYQi0brTPIyGNWnVCe9PJTVn2weKTkpnvXJvov4y6s
 mxQhfvgLTtRFtYMd/FXb+2i+bgU7o0gb0JpZw991wlEg
X-Google-Smtp-Source: APiQypJih+IGWE6cV7mZ3c/9zRUrKM5YERvG07E+axOwrqifX1twhy4o7Zuo5eRqjkk28lKbGEBAK3L9NVPhHoqv4C0=
X-Received: by 2002:a92:50f:: with SMTP id q15mr9239890ile.4.1587381740415;
 Mon, 20 Apr 2020 04:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200420110715.12032-1-matwey@sai.msu.ru>
 <752db40d-5aed-4a97-a050-bc1376547f87@xilinx.com>
In-Reply-To: <752db40d-5aed-4a97-a050-bc1376547f87@xilinx.com>
From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
Date: Mon, 20 Apr 2020 14:22:09 +0300
Message-ID: <CAJs94EYAppZSWR1ahKhpm5BiF6W6AGPu1OXJLRvFAx93sHRzwA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: zynq: Fix ethernet PHY for v5 schematics
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_042222_619982_6D361324 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matwey.kornilov[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Anton Gerasimov <tossel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

0L/QvSwgMjAg0LDQv9GALiAyMDIwINCzLiDQsiAxNDoxOSwgTWljaGFsIFNpbWVrIDxtaWNoYWwu
c2ltZWtAeGlsaW54LmNvbT46Cj4KPiBPbiAyMC4gMDQuIDIwIDEzOjA3LCBNYXR3ZXkgVi4gS29y
bmlsb3Ygd3JvdGU6Cj4gPiBUaGVyZSBhcmUgYXQgbGVhc3QgdHdvIGRpZmZlcmVudCB2ZXJzaW9u
cyBleGlzdGluZyBmb3IgTVlJUiBadHVybjoKPiA+Cj4gPiAgKiB2NCBzY2hlbWF0aWNzIGhhcyBB
dGhlcm9zIEFSODAzNSBQSFkgYXQgMGIwMDAKPiA+ICAgICAgaHR0cDovL3d3dy5teWlydGVjaC5j
b20vZG93bmxvYWQvWnlucTcwMDAvWi1UVVJOQk9BUkRfc2NoZW1hdGljLnBkZgo+ID4gICogdjUg
c2NoZW1hdGljcyBoYXMgTWljcmVsIEtTWjkwMzEgUEhZIGF0IDBiMDExCj4gPiAgICAgIHY1IHNj
aGVtYXRpY3MgYXZhaWxhYmxlIGF0IERWRCBkaXNrIHN1cHBsaWVkIHdpdGggdGhlIGJvYXJkCj4g
Pgo+ID4gU3BlY2lmeSBib3RoIFBIWXMgdG8gbWFrZSBldGhlcm5ldCBpbnRlcmZhY2Ugd29ya2lu
ZyBmb3IgYW55IGJvYXJkCj4gPiByZXZpc2lvbi4gVGhpcyBjb21taXQgcmVsaWVzIG9uIG9mX21k
aW9idXNfcmVnaXN0ZXIoKSBiZWhhdmlvdXIuCj4KPiB0eXBvIC0gYmVoYXZpb3IuCj4KPiBJIHRo
aW5rIGl0IHdpbGwgYmUgdmVyeSB1c2VmdWwgdG8gZGVzY3JpYmUgdGhhdCBjdXJyZW50IGJlaGF2
aW9yLgo+IEFsc28gd291bGQgYmUgZ29vZCB0byB0ZXN0IGl0IG9uIHY0LgoKSSBkb24ndCBoYXZl
IHY0IGJvYXJkLCBzbyBJIHdpbGwgaGlnaGx5IGFwcHJlY2lhdGUgaWYgc29tZWJvZHkgdGVzdAp0
aGUgcGF0Y2ggd2l0aCB2NCBib2FyZC4KCj4KPiBUaGFua3MsCj4gTWljaGFsCgoKCi0tIApXaXRo
IGJlc3QgcmVnYXJkcywKTWF0d2V5IFYuIEtvcm5pbG92LgpTdGVybmJlcmcgQXN0cm9ub21pY2Fs
IEluc3RpdHV0ZSwgTG9tb25vc292IE1vc2NvdyBTdGF0ZSBVbml2ZXJzaXR5LCBSdXNzaWEKMTE5
MjM0LCBNb3Njb3csIFVuaXZlcnNpdGV0c2t5IHByLWsgMTMsICs3ICg0OTUpIDkzOTIzODIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
