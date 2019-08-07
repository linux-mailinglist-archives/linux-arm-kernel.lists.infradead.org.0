Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358B1841EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjHJpJzgZ9TzDIOJyhPei45PkZjPrUiNfUlkHj152CY=; b=Ba6BKEmDpW0G9S
	N7y+DdN+mqJ+q8ma2FV7Dwr/hEncQxWoLk1x+e+gVXCO5w7Ual59e6/3+9lOUToAckJ3b6cwtvN5h
	tlKFs0b0QXR1qNXb83W2jPZpqYN+9lmUbT57dd2nfbZLNjE8dlqG+KAAtnY7zHfC7b3mVGexVBpF4
	NO2RgPAgAGCHGij2BjhWjywO0MMugUOq5lGBwlqmeXxUsyZcETgE5hS2bU2xJ4mmcdsZFUjHteGDF
	sYCue4zp/ofJJrRH/UYBVdBU5t4bXqQ51WM0SF+SgqGG8bKi0PsltQRqRDHaJHEjguPZjlKIBUpB5
	JrUXW0AmXiRV+UhSpmKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB6H-0004d7-J5; Wed, 07 Aug 2019 01:50:49 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvB65-0004c4-Q2
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 01:50:39 +0000
Received: by mail-ot1-x341.google.com with SMTP id d17so98077526oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 18:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7RpV78oTAAejWieqOascL5/z0oVCeI4xKYQhUrtgXzQ=;
 b=o3yO/m4d4kTaJOV5TSSrKiYyCpZvdE/x1YolgmWT9ja3EcVmw+z1KxauHV+1oN8tRf
 KrI9LG5fSboeBLzDKtrLVFps4OXk1BateLtWNLgRvZam8AQtmkSmvoDWFEwVf6Sc888D
 e8W6lY6mkhi760Tmro4Vy36DItMFl3z3M4vI+aHh9A2OgGEXPIbfZwED/ytkZ+0eZZok
 QSSYKF+bS/seT8dLn1SFFlbLsDMgUyqHvMvqwCndXnKz1LGKR2O09Wp+A0ryq9+hmkp6
 tERMdyG3JKPXbXorg1viyAbOijwWtFYSFe7QqOFmC8fklf5QYWDg8NUbMHOx+1O7Kbgl
 i9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7RpV78oTAAejWieqOascL5/z0oVCeI4xKYQhUrtgXzQ=;
 b=UJu6TmGxNnkyqZBPwFMkTWFn33QKinzH7+JVJAa8Rdq/dWRm1M89BSiq32GLeNTrYH
 ykP61UP41d1ssHvkEj/d9Z+rQ+vtKEtzAnW+7bV+pVA+kjQBjr7r/3mLJrseZ/KNZnxv
 Pxes6gi49u0gyZXn1Mzq3NM3aNM0DChBy0AOx1ZquMPHIQBgIH/dCB/IROOveI5EeXaz
 jfReGlJve9mbax8UDOS2yWsk0ZqeI9nQMQU2/+UCEdJKypmyhs+ZkTlPkn2O5W3Db/3s
 wrD4OyRhjcZK/amN2L2hOLt/Y7Qxuv3qXimq1jFEj37N35Nhbyi1LoA7SR4Qqt+8Yg6c
 SRFg==
X-Gm-Message-State: APjAAAVHM0Dzu24JEZm49Tox+IGxuF0TW50vdfQtf2qVEoN5sPnmLCJo
 bBxZL2BJQ3DCiLx3U9LEBrjSstdGxdLQpSM2uGTFUA==
X-Google-Smtp-Source: APXvYqxrjIF/0doTwYAk5FHRzaDlYAmVGhgcHvI8POp9fRukf40ZMFq1iblyi2Qhcx8eAf5DzBt8jMu82IS3LufnWB0=
X-Received: by 2002:a9d:6201:: with SMTP id g1mr6119092otj.195.1565142636393; 
 Tue, 06 Aug 2019 18:50:36 -0700 (PDT)
MIME-Version: 1.0
References: <B4B0AD7F-FA0F-4DA0-9A8B-EAE1CEE11759@lca.pw>
 <CAGETcx_TYxgohR7C5SRRbSmfKNhS90i64KjtA38N19g_Kz3euA@mail.gmail.com>
 <6326D2D1-8641-48D1-BDD5-4F4B8BADB286@lca.pw>
In-Reply-To: <6326D2D1-8641-48D1-BDD5-4F4B8BADB286@lca.pw>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 6 Aug 2019 18:50:00 -0700
Message-ID: <CAGETcx_KZNMY1Zs=G=HGPfsUA4Fen_m8R4L9jNHtWrZerabwxg@mail.gmail.com>
Subject: Re: "of/platform: Pause/resume sync state during init and
 of_platform_populate()" with a warning on arm64
To: Qian Cai <cai@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_185037_872954_D83138BA 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIGZvciBjb25maXJtaW5nLiBJIGRpZG4ndCB0aGluayBBUk02NCBjb3VsZCBldmVuIGJv
b3Qgd2l0aG91dApEVC4gSSdsbCBzZW5kIGEgZml4IHJpZ2h0IGF3YXkuCgpBbnkgY2hhbmNlIHlv
dSBjYW4gbGV0IHVzIGtub3cgd2hhdCBkZXZpY2UgdGhpcyB3YXMgdGVzdGVkIG9uPwoKLVNhcmF2
YW5hCgoKCi1TYXJhdmFuYQoKT24gVHVlLCBBdWcgNiwgMjAxOSBhdCA2OjQ2IFBNIFFpYW4gQ2Fp
IDxjYWlAbGNhLnB3PiB3cm90ZToKPgo+Cj4KPiA+IE9uIEF1ZyA2LCAyMDE5LCBhdCA5OjIyIFBN
LCBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5ha0Bnb29nbGUuY29tPiB3cm90ZToKPiA+Cj4gPiBP
biBUdWUsIEF1ZyA2LCAyMDE5IGF0IDU6NDYgUE0gUWlhbiBDYWkgPGNhaUBsY2EucHc+IHdyb3Rl
Ogo+ID4+Cj4gPj4gSXQgbG9va3MgbGlrZSB0aGUgbGludXgtbmV4dCBjb21taXQg4oCcb2YvcGxh
dGZvcm06IFBhdXNlL3Jlc3VtZSBzeW5jIHN0YXRlIGR1cmluZyBpbml0IGFuZCBvZl9wbGF0Zm9y
bV9wb3B1bGF0ZSgp4oCdIFsxXQo+ID4+IEludHJvZHVjZWQgYSB3YXJuaW5nIHdoaWxlIGJvb3Rp
bmcgYXJtNjQuCj4gPj4KPiA+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5
MDczMTIyMTcyMS4xODc3MTMtNi1zYXJhdmFuYWtAZ29vZ2xlLmNvbS8KPiA+Pgo+ID4+IFsgICA5
My40NDkzMDBdWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBpYXMgNDQt
Yml0LCBvYXMgNDQtYml0IChmZWF0dXJlcyAweDAwMDAxNzBkKQo+ID4+IFsgICA5My40NjQ4NzNd
WyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4
IGVudHJpZXMgZm9yIGNtZHEKPiA+PiBbICAgOTMuNDg1NDgxXVsgICAgVDFdIGFybS1zbW11LXYz
IGFybS1zbW11LXYzLjQuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRyaWVzIGZvciBldnRxCj4g
Pj4gWyAgIDkzLjQ5NjMyMF1bICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My41LmF1dG86
IG9wdGlvbiBtYXNrIDB4Mgo+ID4+IFsgICA5My41MDI5MTddWyAgICBUMV0gYXJtLXNtbXUtdjMg
YXJtLXNtbXUtdjMuNS5hdXRvOiBpYXMgNDQtYml0LCBvYXMgNDQtYml0IChmZWF0dXJlcyAweDAw
MDAxNzBkKQo+ID4+IFsgICA5My42MjE4MThdWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUt
djMuNS5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMgZm9yIGNtZHEKPiA+PiBbICAgOTMu
NjQzMDAwXVsgICAgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjUuYXV0bzogYWxsb2NhdGVk
IDUyNDI4OCBlbnRyaWVzIGZvciBldnRxCj4gPj4gWyAgIDk0LjUxOTQ0NV1bICAgIFQxXSBsaWJw
aHk6IEZpeGVkIE1ESU8gQnVzOiBwcm9iZWQKPiA+PiBbICAgOTQuNTI0NjQ5XVsgICAgVDFdIEVG
SSBWYXJpYWJsZXMgRmFjaWxpdHkgdjAuMDggMjAwNC1NYXktMTcKPiA+PiBbICAgOTQuNjAxMTY2
XVsgICAgVDFdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTcKPiA+PiBbICAgOTQu
NzY2MDA4XVsgICAgVDFdIHpzd2FwOiBsb2FkZWQgdXNpbmcgcG9vbCBsem8vemJ1ZAo+ID4+IFsg
ICA5NC43NzQ3NDVdWyAgICBUMV0ga21lbWxlYWs6IEtlcm5lbCBtZW1vcnkgbGVhayBkZXRlY3Rv
ciBpbml0aWFsaXplZCAobWVtcG9vbCBzaXplOiAxNjM4NCkKPiA+PiBbICAgOTQuNzc0NzU2XVsg
VDE2OTldIGttZW1sZWFrOiBBdXRvbWF0aWMgbWVtb3J5IHNjYW5uaW5nIHRocmVhZCBzdGFydGVk
Cj4gPj4gWyAgIDk0LjgxMjMzOF1bIFQxMzY4XSBwY2llcG9ydCAwMDAwOjBmOjAwLjA6IEFkZGlu
ZyB0byBpb21tdSBncm91cCAwCj4gPj4gWyAgIDk0Ljk4NDQ2Nl1bICAgIFQxXSAtLS0tLS0tLS0t
LS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiA+PiBbICAgOTQuOTg5ODI3XVsgICAgVDFdIFVu
bWF0Y2hlZCBzeW5jX3N0YXRlIHBhdXNlL3Jlc3VtZSEKPiA+PiBbICAgOTQuOTg5ODk0XVsgICAg
VDFdIFdBUk5JTkc6IENQVTogMjUgUElEOiAxIGF0IGRyaXZlcnMvYmFzZS9jb3JlLmM6NjkxIGRl
dmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3Jlc3VtZSsweDEwMC8weDEyOAo+ID4+IFsg
ICA5NS4wMDYwNjJdWyAgICBUMV0gTW9kdWxlcyBsaW5rZWQgaW46Cj4gPj4gWyAgIDk1LjAwOTgx
NV1bICAgIFQxXSBDUFU6IDI1IFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNS4z
LjAtcmMzLW5leHQtMjAxOTA4MDYrICMxMQo+ID4+IFsgICA5NS4wMTgxNjFdWyAgICBUMV0gSGFy
ZHdhcmUgbmFtZTogSFBFIEFwb2xsbyA3MCAgICAgICAgICAgICAvQzAxX0FQQUNIRV9NQiAgICAg
ICAgICwgQklPUyBMNTBfNS4xM18xLjExIDA2LzE4LzIwMTkKPiA+PiBbICAgOTUuMDI4NTkzXVsg
ICAgVDFdIHBzdGF0ZTogNjA0MDAwMDkgKG5aQ3YgZGFpZiArUEFOIC1VQU8pCj4gPj4gWyAgIDk1
LjAzNDA3N11bICAgIFQxXSBwYyA6IGRldmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3Jl
c3VtZSsweDEwMC8weDEyOAo+ID4+IFsgICA5NS4wNDExMjRdWyAgICBUMV0gbHIgOiBkZXZpY2Vf
bGlua3Nfc3VwcGxpZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKPiA+PiBbICAgOTUu
MDQ4MTY3XVsgICAgVDFdIHNwIDogMzRmZjgwMDgwNmU2ZmJjMAo+ID4+IFsgICA5NS4wNTIxNzJd
WyAgICBUMV0geDI5OiAzNGZmODAwODA2ZTZmYzAwIHgyODogMDAwMDAwMDAwMDAwMDAwMAo+ID4+
IFsgICA5NS4wNTgxNzddWyAgICBUMV0geDI3OiAwMDAwMDAwMDAwMDAwMDAwIHgyNjogMDAwMDAw
MDAwMDAwMDAwMAo+ID4+IFsgICA5NS4wNjQxODFdWyAgICBUMV0geDI1OiAwMDAwMDAwMDAwMDAw
MDM4IHgyNDogMDAwMDAwMDAwMDAwMDAwMAo+ID4+IFsgICA5NS4wNzAxODVdWyAgICBUMV0geDIz
OiAwMDAwMDAwMDAwMDAwMDAwIHgyMjogMDAwMDAwMDAwMDAwMDAxOQo+ID4+IFsgICA5NS4wNzYx
ODldWyAgICBUMV0geDIxOiAwMDAwMDAwMDAwMDAwMDAwIHgyMDogZjlmZjgwOGI4MDRlNmM1MAo+
ID4+IFsgICA5NS4wODIxOTNdWyAgICBUMV0geDE5OiBmZmZmMTAwMDE0YTZlNjAwIHgxODogMDAw
MDAwMDAwMDAwMDA0MAo+ID4+IFsgICA5NS4wODgxOTddWyAgICBUMV0geDE3OiAwMDAwMDAwMDAw
MDAwMDAwIHgxNjogODZmZjgwMDk5ZDU4MWI1MAo+ID4+IFsgICA5NS4wOTQyMDFdWyAgICBUMV0g
eDE1OiAwMDAwMDAwMDAwMDAwMDAwIHgxNDogZmZmZjEwMDAxMDA4NmQxYwo+ID4+IFsgICA5NS4x
MDAyMDVdWyAgICBUMV0geDEzOiBmZmZmMTAwMDEwOWQ4Njg4IHgxMjogZmZmZmZmZmZmZmZmZmZm
Zgo+ID4+IFsgICA5NS4xMDYyMDldWyAgICBUMV0geDExOiAwMDAwMDAwMDAwMDAwMGY5IHgxMDog
ZmZmZjA4MDhiODA0ZTZjNgo+ID4+IFsgICA5NS4xMTIyMTNdWyAgICBUMV0geDkgOiA0YjcxYWQ1
MjJjODUxZDAwIHg4IDogNGI3MWFkNTIyYzg1MWQwMAo+ID4+IFsgICA5NS4xMTgyMTddWyAgICBU
MV0geDcgOiA2MTcwMjA2NTc0NjE3NDczIHg2IDogZmZmZjEwMDAxNDA3Njk3Mgo+ID4+IFsgICA5
NS4xMjQyMjFdWyAgICBUMV0geDUgOiAzNGZmODAwODA2ZTZmOGYwIHg0IDogMDAwMDAwMDAwMDAw
MDAwZgo+ID4+IFsgICA5NS4xMzAyMjVdWyAgICBUMV0geDMgOiBmZmZmMTAwMDEwMWJmYTVjIHgy
IDogMDAwMDAwMDAwMDAwMDAwMQo+ID4+IFsgICA5NS4xMzYyMjldWyAgICBUMV0geDEgOiAwMDAw
MDAwMDAwMDAwMDAxIHgwIDogMDAwMDAwMDAwMDAwMDAyMgo+ID4+IFsgICA5NS4xNDIyMzNdWyAg
ICBUMV0gQ2FsbCB0cmFjZToKPiA+PiBbICAgOTUuMTQ1Mzc0XVsgICAgVDFdICBkZXZpY2VfbGlu
a3Nfc3VwcGxpZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKPiA+PiBbICAgOTUuMTUy
MDc0XVsgICAgVDFdICBvZl9wbGF0Zm9ybV9zeW5jX3N0YXRlX2luaXQrMHgxMC8weDFjCj4gPj4g
WyAgIDk1LjE1NzU1N11bICAgIFQxXSAgZG9fb25lX2luaXRjYWxsKzB4MmY4LzB4NjAwCj4gPj4g
WyAgIDk1LjE2MjE3Ml1bICAgIFQxXSAgZG9faW5pdGNhbGxfbGV2ZWwrMHgzN2MvMHgzZmMKPiA+
PiBbICAgOTUuMTY2OTU5XVsgICAgVDFdICBkb19iYXNpY19zZXR1cCsweDM0LzB4NGMKPiA+PiBb
ICAgOTUuMTcxMzEzXVsgICAgVDFdICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDE4OC8weDI0Ywo+
ID4+IFsgICA5NS4xNzYzNjNdWyAgICBUMV0gIGtlcm5lbF9pbml0KzB4MTgvMHgzMzQKPiA+PiBb
ICAgOTUuMTgwNTQzXVsgICAgVDFdICByZXRfZnJvbV9mb3JrKzB4MTAvMHgxOAo+ID4+IFsgICA5
NS4xODQ4MDldWyAgICBUMV0gLS0tWyBlbmQgdHJhY2UgYTllYTY4YzkwMjU0MGZlNSBdLS0tCj4g
Pj4gWyAgIDk1LjI2OTA4NV1bICAgIFQxXSBGcmVlaW5nIHVudXNlZCBrZXJuZWwgbWVtb3J5OiAy
ODY3MksKPiA+PiBbICAxMDEuMDY5ODYwXVsgICAgVDFdIENoZWNrZWQgVytYIG1hcHBpbmdzOiBw
YXNzZWQsIG5vIFcrWCBwYWdlcyBmb3VuZAo+ID4+IFsgIDEwMS4wNzYyNjVdWyAgICBUMV0gUnVu
IC9pbml0IGFzIGluaXQgcHJvY2Vzcwo+ID4+IFsgIDEwMS4xODYzNTldWyAgICBUMV0gc3lzdGVt
ZFsxXTogU3lzdGVtIHRpbWUgYmVmb3JlIGJ1aWxkIHRpbWUsIGFkdmFuY2luZyBjbG9jay4KPiA+
Cj4gPgo+ID4gSSB0ZXN0ZWQgaXQgYWdhaW4gb24gbXkgZGV2aWNlIChvbiBhbiBvbGRlciBrZXJu
ZWwpIGFuZCBJIGRvbid0IHNlZQo+ID4gdGhpcyB3YXJuaW5nLiBJcyB0aGlzIG9uIGFuIEFSTTY0
IHRhcmdldCB3aXRob3V0IGEgcG9wdWxhdGVkIERUPwo+Cj4gUHJvYmFibHksIC9zeXMvZmlybXdh
cmUvZGV2aWNldHJlZSBpcyBhbGwgZW1wdHkuCj4KPiA+IFRoYXQncyB0aGUgb25seSB0aGluZyBJ
IGNhbiBzZWUgdGhhdCBjb3VsZCBjYXVzZSB0aGlzIHdhcm5pbmcuCj4gPgo+ID4gVGhpcyBpcyBs
aXRlcmFsbHkgdGhlIGNvZGUgd2l0aCB0aGUgbWF0Y2hpbmcgcGF1c2UvcmVzdW1lLiBJIGNhbid0
Cj4gPiB0aGluayBvZiBhbnkgb3RoZXIgd2F5IHRoZSBwYXVzZS9yZXN1bWUgY291bGQgaGF2ZSBl
bmRlZCB1cCBub3QKPiA+IG1hdGNoaW5nLgo+ID4KPiA+IHN0YXRpYyBpbnQgX19pbml0IG9mX3Bs
YXRmb3JtX2RlZmF1bHRfcG9wdWxhdGVfaW5pdCh2b2lkKQo+ID4gewo+ID4gICAgICAgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbm9kZTsKPiA+Cj4gPiAgICAgICAgaWYgKCFvZl9oYXZlX3BvcHVsYXRl
ZF9kdCgpKQo+ID4gICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gPgo+ID4gICAgICAg
IHBsYXRmb3JtX2J1c190eXBlLmFkZF9saW5rcyA9IG9mX2xpbmtfdG9fc3VwcGxpZXJzOwo+ID4g
ICAgICAgIGRldmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3BhdXNlKCk7IDw9PT09PT09
PT09PSBQQVVTRQo+ID4gICAgICAgIC8qCj4gPiAgICAgICAgICogSGFuZGxlIGNlcnRhaW4gY29t
cGF0aWJsZXMgZXhwbGljaXRseSwgc2luY2Ugd2UgZG9uJ3Qgd2FudCB0byBjcmVhdGUKPiA+ICAg
ICAgICAgKiBwbGF0Zm9ybV9kZXZpY2VzIGZvciBldmVyeSBub2RlIGluIC9yZXNlcnZlZC1tZW1v
cnkgd2l0aCBhCj4gPiAgICAgICAgICogImNvbXBhdGlibGUiLAo+ID4gICAgICAgICAqLwo+ID4g
ICAgICAgIGZvcl9lYWNoX21hdGNoaW5nX25vZGUobm9kZSwgcmVzZXJ2ZWRfbWVtX21hdGNoZXMp
Cj4gPiAgICAgICAgICAgICAgICBvZl9wbGF0Zm9ybV9kZXZpY2VfY3JlYXRlKG5vZGUsIE5VTEws
IE5VTEwpOwo+ID4KPiA+ICAgICAgICBub2RlID0gb2ZfZmluZF9ub2RlX2J5X3BhdGgoIi9maXJt
d2FyZSIpOwo+ID4gICAgICAgIGlmIChub2RlKSB7Cj4gPiAgICAgICAgICAgICAgICBvZl9wbGF0
Zm9ybV9wb3B1bGF0ZShub2RlLCBOVUxMLCBOVUxMLCBOVUxMKTsKPiA+ICAgICAgICAgICAgICAg
IG9mX25vZGVfcHV0KG5vZGUpOwo+ID4gICAgICAgIH0KPiA+Cj4gPiAgICAgICAgLyogUG9wdWxh
dGUgZXZlcnl0aGluZyBlbHNlLiAqLwo+ID4gICAgICAgIG9mX3BsYXRmb3JtX2RlZmF1bHRfcG9w
dWxhdGUoTlVMTCwgTlVMTCwgTlVMTCk7Cj4gPgo+ID4gICAgICAgIHJldHVybiAwOwo+ID4gfQo+
ID4gYXJjaF9pbml0Y2FsbF9zeW5jKG9mX3BsYXRmb3JtX2RlZmF1bHRfcG9wdWxhdGVfaW5pdCk7
Cj4gPgo+ID4gc3RhdGljIGludCBfX2luaXQgb2ZfcGxhdGZvcm1fc3luY19zdGF0ZV9pbml0KHZv
aWQpCj4gPiB7Cj4gPiAgICAgICAgZGV2aWNlX2xpbmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVfcmVz
dW1lKCk7IDw9PT09PT09PT0gUkVTVU1FCj4gPiAgICAgICAgcmV0dXJuIDA7Cj4gPiB9Cj4gPiBs
YXRlX2luaXRjYWxsX3N5bmMob2ZfcGxhdGZvcm1fc3luY19zdGF0ZV9pbml0KTsKPiA+Cj4gPiBU
aGFua3MsCj4gPiBTYXJhdmFuYQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
