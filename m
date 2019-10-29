Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B67E90E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 21:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JW29AU9P/mi6Z79wgDQdK5dt+ugfa+G3nV4NENLLjIo=; b=HKdcd1BB6UO9Uk
	quMbwsjEhKOdJWG59SL9oWGKlIXhsRgZZTEA+fUl2rcDqvIseIDOeba6k9z6fxNOWL62XtF+Vs79m
	dTefEaSqxcvoMx9IFm0WLbZ1J+19UxU2gY9NPKUAZFWsLI6VBVX73Q41BsCpy8weGuthrNxEMEoD/
	WdqUunGz72+ryzExfKNB69am2ipgo7hlYT5KgHGweTPQY37RAn2BgQ5N3P119wB9A7hSzKtB3pxwk
	oM0S054o14hFUwEoVOqs59HupPCRRAG6aWbWsj4vCr1uulu7p33dfX0VG5lHac/bZndnVPC/+92RE
	Oha4meR4gAaWrt9o5pgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYIE-0001xB-C9; Tue, 29 Oct 2019 20:40:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYI2-0001wj-Di; Tue, 29 Oct 2019 20:40:31 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA5F12087F;
 Tue, 29 Oct 2019 20:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572381630;
 bh=+ErzTvkm89mf/Yo1sKBo6GnZ+47nBen0ZswGPxY1Rsc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uy+Xf+IqaUTwAbgRHSBRNXrCnp68ZxhUaVEeBdva8YPx8Notmy/Z0/NvpKnRgRifT
 k4YifzN9W3JY4PQADxbYxAMkAlbFs7bofoZo1O0LcwlsLzcg3pvVIrzBg2rez+ikG6
 cH3v0tyvYZ4nSCc+/EhZUE8AZJJqOJYntBdf0T9I=
Received: by mail-qt1-f180.google.com with SMTP id c26so20303qtj.10;
 Tue, 29 Oct 2019 13:40:29 -0700 (PDT)
X-Gm-Message-State: APjAAAW1ooe/FVBkgPT99z3aCvMz77XxJe8x69VPnJJqFuA89IWrIbPO
 5j8k2G/XVnUsA9nt3ba2i8QewQCZT4Z7jq4uGQ==
X-Google-Smtp-Source: APXvYqzKsg6BCPZBJRd4aHnInc5va9mSx60VPljcfauLF6SwALX1RSm+GHMmxEHZY2HZFAeZj60MjIXsq/m86CpLA3w=
X-Received: by 2002:ac8:741a:: with SMTP id p26mr1190108qtq.143.1572381628943; 
 Tue, 29 Oct 2019 13:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191021021035.7032-1-afaerber@suse.de>
 <20191021021035.7032-4-afaerber@suse.de>
 <20191029154129.GA24908@bogus> <6e6087af-6a62-f0ff-07af-48e4836c38e6@suse.de>
In-Reply-To: <6e6087af-6a62-f0ff-07af-48e4836c38e6@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Tue, 29 Oct 2019 15:40:17 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+QgAyR7vUJRBRrO56uKJXi4=meW2qnPpZUCAqBBP7PMA@mail.gmail.com>
Message-ID: <CAL_Jsq+QgAyR7vUJRBRrO56uKJXi4=meW2qnPpZUCAqBBP7PMA@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: Prepare Realtek RTD1195 and MeLE X1000
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_134030_509300_629028E6 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTA6NTIgQU0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPiB3cm90ZToKPgo+IEFtIDI5LjEwLjE5IHVtIDE2OjQxIHNjaHJpZWIgUm9iIEhl
cnJpbmc6Cj4gPiBPbiBNb24sIE9jdCAyMSwgMjAxOSBhdCAwNDoxMDozNUFNICswMjAwLCBBbmRy
ZWFzIEbDpHJiZXIgd3JvdGU6Cj4gPj4gQWRkIERldmljZSBUcmVlcyBmb3IgUmVhbHRlayBSVEQx
MTk1IFNvQyBhbmQgTWVMRSBYMTAwMCBUViBib3guCj4gPj4KPiA+PiBSZXVzZSB0aGUgZXhpc3Rp
bmcgUlREMTI5NSB3YXRjaGRvZyBjb21wYXRpYmxlIGZvciBub3cuCj4gPj4KPiA+PiBTaWduZWQt
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gPj4gLS0tCj4gPj4g
IGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgfCAgIDIgKwo+ID4+ICBh
cmNoL2FybS9ib290L2R0cy9ydGQxMTk1LW1lbGUteDEwMDAuZHRzIHwgIDMwICsrKysrKysrCj4g
Pj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSAgICAgICAgICAgfCAxMjggKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4+ICAzIGZpbGVzIGNoYW5nZWQsIDE2MCBpbnNl
cnRpb25zKCspCj4gPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9ydGQx
MTk1LW1lbGUteDEwMDAuZHRzCj4gPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290
L2R0cy9ydGQxMTk1LmR0c2kKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9NYWtlZmlsZSBiL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlCj4gPj4gaW5kZXggNzNkMzM2
MTFjMzcyLi44OWE5NTE0ODVkYTggMTAwNjQ0Cj4gPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
TWFrZWZpbGUKPiA+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQo+ID4+IEBAIC04
NTgsNiArODU4LDggQEAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkgKz0gXAo+ID4+ICBkdGItJChD
T05GSUdfQVJDSF9SREEpICs9IFwKPiA+PiAgICAgIHJkYTg4MTBwbC1vcmFuZ2VwaS0yZy1pb3Qu
ZHRiIFwKPiA+PiAgICAgIHJkYTg4MTBwbC1vcmFuZ2VwaS1pOTYuZHRiCj4gPj4gK2R0Yi0kKENP
TkZJR19BUkNIX1JFQUxURUspICs9IFwKPiA+PiArICAgIHJ0ZDExOTUtbWVsZS14MTAwMC5kdGIK
PiA+PiAgZHRiLSQoQ09ORklHX0FSQ0hfUkVBTFZJRVcpICs9IFwKPiA+PiAgICAgIGFybS1yZWFs
dmlldy1wYjExNzYuZHRiIFwKPiA+PiAgICAgIGFybS1yZWFsdmlldy1wYjExbXAuZHRiIFwKPiA+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS1tZWxlLXgxMDAwLmR0cyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14MTAwMC5kdHMKPiA+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+ID4+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2U5YTI1NTk1MGQzCj4gPj4gLS0t
IC9kZXYvbnVsbAo+ID4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14MTAw
MC5kdHMKPiA+PiBAQCAtMCwwICsxLDMwIEBACj4gPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCj4gPj4gKy8qCj4gPj4gKyAq
IENvcHlyaWdodCAoYykgMjAxNyBBbmRyZWFzIEbDpHJiZXIKPiA+Cj4gPiAyMDE5Pwo+Cj4gTm9w
ZSwgSSBhbSBmbHVzaGluZyBvdXQgb2xkIHF1ZXVlcywgYW5kIHVwZGF0aW5nIFNQRFggbGluZSBk
b2VzIG5vdAo+IHJlYWxseSB3YXJyYW50IGEgY29weXJpZ2h0IGJ1bXAgSU1PLiBUaGUgY2hhbmdl
cyBiZWxvdyB3b3VsZCB0aG91Z2guCj4KPiA+PiArICovCj4gPj4gKwo+ID4+ICsvZHRzLXYxLzsK
PiA+PiArCj4gPj4gKyNpbmNsdWRlICJydGQxMTk1LmR0c2kiCj4gPj4gKwo+ID4+ICsvIHsKPiA+
PiArICAgIGNvbXBhdGlibGUgPSAibWVsZSx4MTAwMCIsICJyZWFsdGVrLHJ0ZDExOTUiOwo+ID4+
ICsgICAgbW9kZWwgPSAiTWVMRSBYMTAwMCI7Cj4gPj4gKwo+ID4+ICsgICAgYWxpYXNlcyB7Cj4g
Pj4gKyAgICAgICAgICAgIHNlcmlhbDAgPSAmdWFydDA7Cj4gPj4gKyAgICB9Owo+ID4+ICsKPiA+
PiArICAgIGNob3NlbiB7Cj4gPj4gKyAgICAgICAgICAgIHN0ZG91dC1wYXRoID0gInNlcmlhbDA6
MTE1MjAwbjgiOwo+ID4+ICsgICAgfTsKPiA+PiArCj4gPj4gKyAgICBtZW1vcnkgewo+ID4KPiA+
IG1lbW9yeUAwCj4KPiBXaWxsIHRlc3QuCj4KPiA+Cj4gPj4gKyAgICAgICAgICAgIGRldmljZV90
eXBlID0gIm1lbW9yeSI7Cj4gPj4gKyAgICAgICAgICAgIHJlZyA9IDwweDAgMHg0MDAwMDAwMD47
Cj4gPj4gKyAgICB9Owo+ID4+ICt9Owo+ID4+ICsKPiA+PiArJnVhcnQwIHsKPiA+PiArICAgIHN0
YXR1cyA9ICJva2F5IjsKPiA+PiArfTsKPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCj4gPj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiA+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjQ3NTc0MGM2N2QyNgo+
ID4+IC0tLSAvZGV2L251bGwKPiA+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0
c2kKPiA+PiBAQCAtMCwwICsxLDEyOCBAQAo+ID4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQo+ID4+ICsvKgo+ID4+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMTcgQW5kcmVhcyBGw6RyYmVyCj4gPj4gKyAqLwo+ID4+ICsKPiA+PiAr
L21lbXJlc2VydmUvIDB4MDAwMDAwMDAgMHgwMDAwYzAwMDsgLyogYm9vdCBjb2RlICovCj4gPj4g
Ky9tZW1yZXNlcnZlLyAweDAwMDBjMDAwIDB4MDAwZjQwMDA7Cj4gPj4gKy9tZW1yZXNlcnZlLyAw
eDAxYjAwMDAwIDB4MDA0MDAwMDA7IC8qIGF1ZGlvICovCj4gPj4gKy9tZW1yZXNlcnZlLyAweDAx
ZmZlMDAwIDB4MDAwMDQwMDA7IC8qIHJwYyByaW5nYnVmICovCj4gPj4gKy9tZW1yZXNlcnZlLyAw
eDEwMDAwMDAwIDB4MDAxMDAwMDA7IC8qIHNlY3VyZSAqLwo+ID4+ICsvbWVtcmVzZXJ2ZS8gMHgx
N2ZmZjAwMCAweDAwMDAxMDAwOwo+ID4+ICsvbWVtcmVzZXJ2ZS8gMHgxODAwMDAwMCAweDAwMTAw
MDAwOyAvKiByYnVzICovCj4gPj4gKy9tZW1yZXNlcnZlLyAweDE4MTAwMDAwIDB4MDEwMDAwMDA7
IC8qIG5vciAqLwo+ID4KPiA+IFlvdSBzaG91bGRuJ3QgaGF2ZSB0aGUgc2FtZSBlbnRyaWVzIGhl
cmUgYW5kIGluIC9yZXNlcnZlZC1tZW1vcnkuIFRoZXJlCj4gPiB3YXMgYSB0aW1lIGJlZm9yZSAv
cmVzZXJ2ZWQtbWVtb3J5IHdhcyBmdWxseSBzdXBwb3J0ZWQsIGJ1dCB3ZSBzaG91bGQgYmUKPiA+
IHdlbGwgcGFzdCB0aGF0IG5vdy4KPgo+IEkgYW0gZGVhbGluZyB3aXRoIGEgdjIwMTIuMDcgYmFz
ZWQgZG93bnN0cmVhbSBVLUJvb3QgdGhhdCBJIGRvIG5vdCBoYXZlCj4gc291cmNlcyBmb3IsIHNv
IEkgd291bGRuJ3QgYmUgc28gc3VyZSB0aGVyZS4uLiBJdCB3aWxsIG9ubHkgcmVzcGVjdAo+IG1l
bXJlc2VydmUgSSB0aGluaywgd2hlcmVhcyByZXNlcnZlZC1tZW1vcnkgYmVsb3cgaXMgZm9yIHRo
ZSBrZXJuZWwsIG5vPwoKU2lnaC4uLiBXZWxsLCB0aGF0IG1heSBiZSB0b28gb2xkLiA6KAoKSSBj
b3VsZCBiZSB3cm9uZyB0b28gYW5kIG5vIG9uZSBldmVyIGFkZGVkIC9yZXNlcnZlZC1tZW1vcnkg
c3VwcG9ydApmb3IgdS1ib290LiBUaGUgaW50ZW50IHdhcyBuZXZlciB0aGF0IG9uZSB3YXMgZm9y
IHUtYm9vdCBhbmQgdGhlIG90aGVyCmZvciB0aGUga2VybmVsLiBUaGUga2VybmVsIGhhbmRsZXMg
Ym90aC4gcmVzZXJ2ZWQtbWVtb3J5IHdhcyB0bwpvdmVyY29tZSB0aGUgbGltaXRhdGlvbnMgb2Yg
bWVtcmVzZXJ2ZS4KCj4gPj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJv
bGxlci9hcm0tZ2ljLmg+Cj4gPj4gKwo+ID4+ICsvIHsKPiA+PiArICAgIGNvbXBhdGlibGUgPSAi
cmVhbHRlayxydGQxMTk1IjsKPiA+PiArICAgIGludGVycnVwdC1wYXJlbnQgPSA8JmdpYz47Cj4g
Pj4gKyAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+PiArICAgICNzaXplLWNlbGxzID0gPDE+
Owo+ID4+ICsKPiA+PiArICAgIGNwdXMgewo+ID4+ICsgICAgICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPiA+PiArICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gPj4gKwo+ID4+
ICsgICAgICAgICAgICBjcHUwOiBjcHVAMCB7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgZGV2
aWNlX3R5cGUgPSAiY3B1IjsKPiA+PiArICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0g
ImFybSxjb3J0ZXgtYTciOwo+ID4+ICsgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDA+Owo+
ID4+ICsgICAgICAgICAgICAgICAgICAgIGNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDAwMDAwPjsK
PiA+PiArICAgICAgICAgICAgfTsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgIGNwdTE6IGNwdUAx
IHsKPiA+PiArICAgICAgICAgICAgICAgICAgICBkZXZpY2VfdHlwZSA9ICJjcHUiOwo+ID4+ICsg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNyI7Cj4gPj4gKyAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MT47Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAg
Y2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMDAwMDA+Owo+ID4+ICsgICAgICAgICAgICB9Owo+ID4+
ICsgICAgfTsKPiA+PiArCj4gPj4gKyAgICByZXNlcnZlZC1tZW1vcnkgewo+ID4+ICsgICAgICAg
ICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+PiArICAgICAgICAgICAgI3NpemUtY2VsbHMg
PSA8MT47Cj4gPj4gKyAgICAgICAgICAgIHJhbmdlczsKPiA+PiArCj4gPj4gKyAgICAgICAgICAg
IHNlY3VyZUAxMDAwMDAwMCB7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MTAw
MDAwMDAgMHgxMDAwMDA+Owo+ID4+ICsgICAgICAgICAgICAgICAgICAgIG5vLW1hcDsKPiA+PiAr
ICAgICAgICAgICAgfTsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgIHJidXNAMTgwMDAwMDAgewo+
ID4+ICsgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDE4MDAwMDAwIDB4MTAwMDAwPjsKPiA+
PiArICAgICAgICAgICAgICAgICAgICBuby1tYXA7Cj4gPgo+ID4gVGhpcyBkb2Vzbid0IGxvb2sg
cmlnaHQgYXMgaXQgb3ZlcmxhcHMgdGhlIHJlZ2lzdGVyIHNwYWNlLgo+Cj4gV2lsbCB0cnkgZHJv
cHBpbmcgaXQuIEphbWVzPwo+Cj4gPj4gKyAgICAgICAgICAgIH07Cj4gPj4gKwo+ID4+ICsgICAg
ICAgICAgICBub3JAMTgxMDAwMDAgewo+ID4+ICsgICAgICAgICAgICAgICAgICAgIHJlZyA9IDww
eDE4MTAwMDAwIDB4MTAwMDAwMD47Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgbm8tbWFwOwo+
ID4+ICsgICAgICAgICAgICB9Owo+Cj4gU2FtZSBpc3N1ZSBoZXJlLCBJIGd1ZXNzPwoKWWVzLgoK
Um9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
