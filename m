Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E97484200
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLKFuJNLYDbyZj+pI6YMbh9FstcyDCoYTXQkdLFkJJU=; b=ncWipXBi1mipBX
	fG09kEsZv90/x0u1TF5FyKFe8GwG8zErLIuKJPdP995yP2+AbyvkxQxWjTJYHF/LsTsbcImKN87Dc
	mBOU2fRIzD8p5+tyYuj2TW2TjrenvXAmHZP6B1xzieDiMQFhQO8UBYb/1Nzt/mfnyiVvDTb94qxux
	bonCl0GxwI1cKN35GGWWn0xPoM1U45MTss/QoOpcAXOfshmQhay/W9vB+M7htD+QXDMqEkGzfLGW3
	9a4RLt4miBVW+Jq++dUYzjeg7uPmA9EhtQrgNYWCTkJW+gKvjSROTuQyAgMAkb5zLZKKP0pkeN1rY
	kQqRCxnVdgT6TmG0C6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvBBk-0006Vt-Vy; Wed, 07 Aug 2019 01:56:28 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvBBZ-0006V5-H5
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 01:56:19 +0000
Received: by mail-qt1-x844.google.com with SMTP id r6so82522372qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 18:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=TPQP42+pQYWh0Slu97L0nfsZxfDP5jhuWgDQzSJxfXE=;
 b=IG6YNZg7Slo68V5Oy9qtynCxfD5ULuDe7IyFb+iLX/3UGlBGAoULYSvG94SrC+GTHk
 qg/QQG+dU7rtqGjNPYpJYpF59d8EZcFk65He0bHn6nPJrfMPOq2Z+m3UZN9y8X5RPnpH
 3urNssdBXGN88P3j2OmT1JzMwq8/ybI4vm7GWmtLIieCvFcaEZjAmg8IDldBXi9bYf7i
 jDLH5PynOJJHFtgwrlHM3MJhKZVFO3klFxJQngGu7rTtxQ3F81KDyO3lvTLzwsTSYpy/
 Lu1p8OReb5pQCGqFfRO2el7e/VX+o9m/A1GWJrtzqKolyiaOCHOL8uyEyo+2W7eZ5VAk
 ZXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=TPQP42+pQYWh0Slu97L0nfsZxfDP5jhuWgDQzSJxfXE=;
 b=SMM2sYlE4i5z8Z5AeYK68e2u9nb0ftxp8brLL73WEj6u90BAmbzRUzbFMhfElnWac+
 BwnHKa30FDTrLXiw91WiXlbmcVNVPBVdqlug3OvobCUgmDudnXfmxJ/kurZ9F9QyGabT
 Oh5rcbzzUAzknWv4SjDQYc5IQa+3++/cGNs3Y14KAc4d6Hos6wqLo4RZxE42wEoDVLdS
 Vrtvot5e2z+IRt3WI6ZW9HjHkBvp20/L+uiBV2R6VjNOKOOqHcj0G1nzbu42VC634NTy
 8bdjbKlV/HALX5UNVRwY2y173l4cJT0p8DArl4dovFKrDXO55VQ7HjDFLoWxryJfntO4
 Sx4Q==
X-Gm-Message-State: APjAAAXtLUK5u5lWMl2Iwp1VQt2/yuV7YtOPS9g8Zn52EzUg/dczCwEN
 FsWxDT08LuOZ7xwlXQLoklkitg==
X-Google-Smtp-Source: APXvYqyIaIhu5e32hd/7Re8yt4GL7booKvYcBaxEeDatwS40TpjLiqA7nDH/JO76OWc9ECzVMJokCw==
X-Received: by 2002:ac8:2834:: with SMTP id 49mr5845517qtq.326.1565142976057; 
 Tue, 06 Aug 2019 18:56:16 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id o43sm44875qto.63.2019.08.06.18.56.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 18:56:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: "of/platform: Pause/resume sync state during init and
 of_platform_populate()" with a warning on arm64
From: Qian Cai <cai@lca.pw>
In-Reply-To: <CAGETcx_KZNMY1Zs=G=HGPfsUA4Fen_m8R4L9jNHtWrZerabwxg@mail.gmail.com>
Date: Tue, 6 Aug 2019 21:56:14 -0400
Message-Id: <0A027A3B-6DE4-4C83-9884-063F74AAED94@lca.pw>
References: <B4B0AD7F-FA0F-4DA0-9A8B-EAE1CEE11759@lca.pw>
 <CAGETcx_TYxgohR7C5SRRbSmfKNhS90i64KjtA38N19g_Kz3euA@mail.gmail.com>
 <6326D2D1-8641-48D1-BDD5-4F4B8BADB286@lca.pw>
 <CAGETcx_KZNMY1Zs=G=HGPfsUA4Fen_m8R4L9jNHtWrZerabwxg@mail.gmail.com>
To: Saravana Kannan <saravanak@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_185617_632572_0AF794A0 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Cgo+IE9uIEF1ZyA2LCAyMDE5LCBhdCA5OjUwIFBNLCBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5h
a0Bnb29nbGUuY29tPiB3cm90ZToKPiAKPiBUaGFua3MgZm9yIGNvbmZpcm1pbmcuIEkgZGlkbid0
IHRoaW5rIEFSTTY0IGNvdWxkIGV2ZW4gYm9vdCB3aXRob3V0Cj4gRFQuIEknbGwgc2VuZCBhIGZp
eCByaWdodCBhd2F5Lgo+IAo+IEFueSBjaGFuY2UgeW91IGNhbiBsZXQgdXMga25vdyB3aGF0IGRl
dmljZSB0aGlzIHdhcyB0ZXN0ZWQgb24/CgpJdCBpcyBhIEhQRSBBcG9sbG8gNzAgYXJtNjQgc2Vy
dmVyLgoKaHR0cHM6Ly9oMjAxOTUud3d3Mi5ocGUuY29tL3YyL2dldGh0bWwuYXNweD9kb2NuYW1l
PWEwMDAzOTk3OGVudwoKPiAKPiAtU2FyYXZhbmEKPiAKPiAKPiAKPiAtU2FyYXZhbmEKPiAKPiBP
biBUdWUsIEF1ZyA2LCAyMDE5IGF0IDY6NDYgUE0gUWlhbiBDYWkgPGNhaUBsY2EucHc+IHdyb3Rl
Ogo+PiAKPj4gCj4+IAo+Pj4gT24gQXVnIDYsIDIwMTksIGF0IDk6MjIgUE0sIFNhcmF2YW5hIEth
bm5hbiA8c2FyYXZhbmFrQGdvb2dsZS5jb20+IHdyb3RlOgo+Pj4gCj4+PiBPbiBUdWUsIEF1ZyA2
LCAyMDE5IGF0IDU6NDYgUE0gUWlhbiBDYWkgPGNhaUBsY2EucHc+IHdyb3RlOgo+Pj4+IAo+Pj4+
IEl0IGxvb2tzIGxpa2UgdGhlIGxpbnV4LW5leHQgY29tbWl0IOKAnG9mL3BsYXRmb3JtOiBQYXVz
ZS9yZXN1bWUgc3luYyBzdGF0ZSBkdXJpbmcgaW5pdCBhbmQgb2ZfcGxhdGZvcm1fcG9wdWxhdGUo
KeKAnSBbMV0KPj4+PiBJbnRyb2R1Y2VkIGEgd2FybmluZyB3aGlsZSBib290aW5nIGFybTY0Lgo+
Pj4+IAo+Pj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMTkwNzMxMjIxNzIx
LjE4NzcxMy02LXNhcmF2YW5ha0Bnb29nbGUuY29tLwo+Pj4+IAo+Pj4+IFsgICA5My40NDkzMDBd
WyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBpYXMgNDQtYml0LCBvYXMg
NDQtYml0IChmZWF0dXJlcyAweDAwMDAxNzBkKQo+Pj4+IFsgICA5My40NjQ4NzNdWyAgICBUMV0g
YXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMg
Zm9yIGNtZHEKPj4+PiBbICAgOTMuNDg1NDgxXVsgICAgVDFdIGFybS1zbW11LXYzIGFybS1zbW11
LXYzLjQuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRyaWVzIGZvciBldnRxCj4+Pj4gWyAgIDkz
LjQ5NjMyMF1bICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My41LmF1dG86IG9wdGlvbiBt
YXNrIDB4Mgo+Pj4+IFsgICA5My41MDI5MTddWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUt
djMuNS5hdXRvOiBpYXMgNDQtYml0LCBvYXMgNDQtYml0IChmZWF0dXJlcyAweDAwMDAxNzBkKQo+
Pj4+IFsgICA5My42MjE4MThdWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNS5hdXRv
OiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMgZm9yIGNtZHEKPj4+PiBbICAgOTMuNjQzMDAwXVsg
ICAgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjUuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBl
bnRyaWVzIGZvciBldnRxCj4+Pj4gWyAgIDk0LjUxOTQ0NV1bICAgIFQxXSBsaWJwaHk6IEZpeGVk
IE1ESU8gQnVzOiBwcm9iZWQKPj4+PiBbICAgOTQuNTI0NjQ5XVsgICAgVDFdIEVGSSBWYXJpYWJs
ZXMgRmFjaWxpdHkgdjAuMDggMjAwNC1NYXktMTcKPj4+PiBbICAgOTQuNjAxMTY2XVsgICAgVDFd
IE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTcKPj4+PiBbICAgOTQuNzY2MDA4XVsg
ICAgVDFdIHpzd2FwOiBsb2FkZWQgdXNpbmcgcG9vbCBsem8vemJ1ZAo+Pj4+IFsgICA5NC43NzQ3
NDVdWyAgICBUMV0ga21lbWxlYWs6IEtlcm5lbCBtZW1vcnkgbGVhayBkZXRlY3RvciBpbml0aWFs
aXplZCAobWVtcG9vbCBzaXplOiAxNjM4NCkKPj4+PiBbICAgOTQuNzc0NzU2XVsgVDE2OTldIGtt
ZW1sZWFrOiBBdXRvbWF0aWMgbWVtb3J5IHNjYW5uaW5nIHRocmVhZCBzdGFydGVkCj4+Pj4gWyAg
IDk0LjgxMjMzOF1bIFQxMzY4XSBwY2llcG9ydCAwMDAwOjBmOjAwLjA6IEFkZGluZyB0byBpb21t
dSBncm91cCAwCj4+Pj4gWyAgIDk0Ljk4NDQ2Nl1bICAgIFQxXSAtLS0tLS0tLS0tLS1bIGN1dCBo
ZXJlIF0tLS0tLS0tLS0tLS0KPj4+PiBbICAgOTQuOTg5ODI3XVsgICAgVDFdIFVubWF0Y2hlZCBz
eW5jX3N0YXRlIHBhdXNlL3Jlc3VtZSEKPj4+PiBbICAgOTQuOTg5ODk0XVsgICAgVDFdIFdBUk5J
Tkc6IENQVTogMjUgUElEOiAxIGF0IGRyaXZlcnMvYmFzZS9jb3JlLmM6NjkxIGRldmljZV9saW5r
c19zdXBwbGllcl9zeW5jX3N0YXRlX3Jlc3VtZSsweDEwMC8weDEyOAo+Pj4+IFsgICA5NS4wMDYw
NjJdWyAgICBUMV0gTW9kdWxlcyBsaW5rZWQgaW46Cj4+Pj4gWyAgIDk1LjAwOTgxNV1bICAgIFQx
XSBDUFU6IDI1IFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90IHRhaW50ZWQgNS4zLjAtcmMzLW5l
eHQtMjAxOTA4MDYrICMxMQo+Pj4+IFsgICA5NS4wMTgxNjFdWyAgICBUMV0gSGFyZHdhcmUgbmFt
ZTogSFBFIEFwb2xsbyA3MCAgICAgICAgICAgICAvQzAxX0FQQUNIRV9NQiAgICAgICAgICwgQklP
UyBMNTBfNS4xM18xLjExIDA2LzE4LzIwMTkKPj4+PiBbICAgOTUuMDI4NTkzXVsgICAgVDFdIHBz
dGF0ZTogNjA0MDAwMDkgKG5aQ3YgZGFpZiArUEFOIC1VQU8pCj4+Pj4gWyAgIDk1LjAzNDA3N11b
ICAgIFQxXSBwYyA6IGRldmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3Jlc3VtZSsweDEw
MC8weDEyOAo+Pj4+IFsgICA5NS4wNDExMjRdWyAgICBUMV0gbHIgOiBkZXZpY2VfbGlua3Nfc3Vw
cGxpZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKPj4+PiBbICAgOTUuMDQ4MTY3XVsg
ICAgVDFdIHNwIDogMzRmZjgwMDgwNmU2ZmJjMAo+Pj4+IFsgICA5NS4wNTIxNzJdWyAgICBUMV0g
eDI5OiAzNGZmODAwODA2ZTZmYzAwIHgyODogMDAwMDAwMDAwMDAwMDAwMAo+Pj4+IFsgICA5NS4w
NTgxNzddWyAgICBUMV0geDI3OiAwMDAwMDAwMDAwMDAwMDAwIHgyNjogMDAwMDAwMDAwMDAwMDAw
MAo+Pj4+IFsgICA5NS4wNjQxODFdWyAgICBUMV0geDI1OiAwMDAwMDAwMDAwMDAwMDM4IHgyNDog
MDAwMDAwMDAwMDAwMDAwMAo+Pj4+IFsgICA5NS4wNzAxODVdWyAgICBUMV0geDIzOiAwMDAwMDAw
MDAwMDAwMDAwIHgyMjogMDAwMDAwMDAwMDAwMDAxOQo+Pj4+IFsgICA5NS4wNzYxODldWyAgICBU
MV0geDIxOiAwMDAwMDAwMDAwMDAwMDAwIHgyMDogZjlmZjgwOGI4MDRlNmM1MAo+Pj4+IFsgICA5
NS4wODIxOTNdWyAgICBUMV0geDE5OiBmZmZmMTAwMDE0YTZlNjAwIHgxODogMDAwMDAwMDAwMDAw
MDA0MAo+Pj4+IFsgICA5NS4wODgxOTddWyAgICBUMV0geDE3OiAwMDAwMDAwMDAwMDAwMDAwIHgx
NjogODZmZjgwMDk5ZDU4MWI1MAo+Pj4+IFsgICA5NS4wOTQyMDFdWyAgICBUMV0geDE1OiAwMDAw
MDAwMDAwMDAwMDAwIHgxNDogZmZmZjEwMDAxMDA4NmQxYwo+Pj4+IFsgICA5NS4xMDAyMDVdWyAg
ICBUMV0geDEzOiBmZmZmMTAwMDEwOWQ4Njg4IHgxMjogZmZmZmZmZmZmZmZmZmZmZgo+Pj4+IFsg
ICA5NS4xMDYyMDldWyAgICBUMV0geDExOiAwMDAwMDAwMDAwMDAwMGY5IHgxMDogZmZmZjA4MDhi
ODA0ZTZjNgo+Pj4+IFsgICA5NS4xMTIyMTNdWyAgICBUMV0geDkgOiA0YjcxYWQ1MjJjODUxZDAw
IHg4IDogNGI3MWFkNTIyYzg1MWQwMAo+Pj4+IFsgICA5NS4xMTgyMTddWyAgICBUMV0geDcgOiA2
MTcwMjA2NTc0NjE3NDczIHg2IDogZmZmZjEwMDAxNDA3Njk3Mgo+Pj4+IFsgICA5NS4xMjQyMjFd
WyAgICBUMV0geDUgOiAzNGZmODAwODA2ZTZmOGYwIHg0IDogMDAwMDAwMDAwMDAwMDAwZgo+Pj4+
IFsgICA5NS4xMzAyMjVdWyAgICBUMV0geDMgOiBmZmZmMTAwMDEwMWJmYTVjIHgyIDogMDAwMDAw
MDAwMDAwMDAwMQo+Pj4+IFsgICA5NS4xMzYyMjldWyAgICBUMV0geDEgOiAwMDAwMDAwMDAwMDAw
MDAxIHgwIDogMDAwMDAwMDAwMDAwMDAyMgo+Pj4+IFsgICA5NS4xNDIyMzNdWyAgICBUMV0gQ2Fs
bCB0cmFjZToKPj4+PiBbICAgOTUuMTQ1Mzc0XVsgICAgVDFdICBkZXZpY2VfbGlua3Nfc3VwcGxp
ZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKPj4+PiBbICAgOTUuMTUyMDc0XVsgICAg
VDFdICBvZl9wbGF0Zm9ybV9zeW5jX3N0YXRlX2luaXQrMHgxMC8weDFjCj4+Pj4gWyAgIDk1LjE1
NzU1N11bICAgIFQxXSAgZG9fb25lX2luaXRjYWxsKzB4MmY4LzB4NjAwCj4+Pj4gWyAgIDk1LjE2
MjE3Ml1bICAgIFQxXSAgZG9faW5pdGNhbGxfbGV2ZWwrMHgzN2MvMHgzZmMKPj4+PiBbICAgOTUu
MTY2OTU5XVsgICAgVDFdICBkb19iYXNpY19zZXR1cCsweDM0LzB4NGMKPj4+PiBbICAgOTUuMTcx
MzEzXVsgICAgVDFdICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDE4OC8weDI0Ywo+Pj4+IFsgICA5
NS4xNzYzNjNdWyAgICBUMV0gIGtlcm5lbF9pbml0KzB4MTgvMHgzMzQKPj4+PiBbICAgOTUuMTgw
NTQzXVsgICAgVDFdICByZXRfZnJvbV9mb3JrKzB4MTAvMHgxOAo+Pj4+IFsgICA5NS4xODQ4MDld
WyAgICBUMV0gLS0tWyBlbmQgdHJhY2UgYTllYTY4YzkwMjU0MGZlNSBdLS0tCj4+Pj4gWyAgIDk1
LjI2OTA4NV1bICAgIFQxXSBGcmVlaW5nIHVudXNlZCBrZXJuZWwgbWVtb3J5OiAyODY3MksKPj4+
PiBbICAxMDEuMDY5ODYwXVsgICAgVDFdIENoZWNrZWQgVytYIG1hcHBpbmdzOiBwYXNzZWQsIG5v
IFcrWCBwYWdlcyBmb3VuZAo+Pj4+IFsgIDEwMS4wNzYyNjVdWyAgICBUMV0gUnVuIC9pbml0IGFz
IGluaXQgcHJvY2Vzcwo+Pj4+IFsgIDEwMS4xODYzNTldWyAgICBUMV0gc3lzdGVtZFsxXTogU3lz
dGVtIHRpbWUgYmVmb3JlIGJ1aWxkIHRpbWUsIGFkdmFuY2luZyBjbG9jay4KPj4+IAo+Pj4gCj4+
PiBJIHRlc3RlZCBpdCBhZ2FpbiBvbiBteSBkZXZpY2UgKG9uIGFuIG9sZGVyIGtlcm5lbCkgYW5k
IEkgZG9uJ3Qgc2VlCj4+PiB0aGlzIHdhcm5pbmcuIElzIHRoaXMgb24gYW4gQVJNNjQgdGFyZ2V0
IHdpdGhvdXQgYSBwb3B1bGF0ZWQgRFQ/Cj4+IAo+PiBQcm9iYWJseSwgL3N5cy9maXJtd2FyZS9k
ZXZpY2V0cmVlIGlzIGFsbCBlbXB0eS4KPj4gCj4+PiBUaGF0J3MgdGhlIG9ubHkgdGhpbmcgSSBj
YW4gc2VlIHRoYXQgY291bGQgY2F1c2UgdGhpcyB3YXJuaW5nLgo+Pj4gCj4+PiBUaGlzIGlzIGxp
dGVyYWxseSB0aGUgY29kZSB3aXRoIHRoZSBtYXRjaGluZyBwYXVzZS9yZXN1bWUuIEkgY2FuJ3QK
Pj4+IHRoaW5rIG9mIGFueSBvdGhlciB3YXkgdGhlIHBhdXNlL3Jlc3VtZSBjb3VsZCBoYXZlIGVu
ZGVkIHVwIG5vdAo+Pj4gbWF0Y2hpbmcuCj4+PiAKPj4+IHN0YXRpYyBpbnQgX19pbml0IG9mX3Bs
YXRmb3JtX2RlZmF1bHRfcG9wdWxhdGVfaW5pdCh2b2lkKQo+Pj4gewo+Pj4gICAgICAgc3RydWN0
IGRldmljZV9ub2RlICpub2RlOwo+Pj4gCj4+PiAgICAgICBpZiAoIW9mX2hhdmVfcG9wdWxhdGVk
X2R0KCkpCj4+PiAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+Pj4gCj4+PiAgICAgICBw
bGF0Zm9ybV9idXNfdHlwZS5hZGRfbGlua3MgPSBvZl9saW5rX3RvX3N1cHBsaWVyczsKPj4+ICAg
ICAgIGRldmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3BhdXNlKCk7IDw9PT09PT09PT09
PSBQQVVTRQo+Pj4gICAgICAgLyoKPj4+ICAgICAgICAqIEhhbmRsZSBjZXJ0YWluIGNvbXBhdGli
bGVzIGV4cGxpY2l0bHksIHNpbmNlIHdlIGRvbid0IHdhbnQgdG8gY3JlYXRlCj4+PiAgICAgICAg
KiBwbGF0Zm9ybV9kZXZpY2VzIGZvciBldmVyeSBub2RlIGluIC9yZXNlcnZlZC1tZW1vcnkgd2l0
aCBhCj4+PiAgICAgICAgKiAiY29tcGF0aWJsZSIsCj4+PiAgICAgICAgKi8KPj4+ICAgICAgIGZv
cl9lYWNoX21hdGNoaW5nX25vZGUobm9kZSwgcmVzZXJ2ZWRfbWVtX21hdGNoZXMpCj4+PiAgICAg
ICAgICAgICAgIG9mX3BsYXRmb3JtX2RldmljZV9jcmVhdGUobm9kZSwgTlVMTCwgTlVMTCk7Cj4+
PiAKPj4+ICAgICAgIG5vZGUgPSBvZl9maW5kX25vZGVfYnlfcGF0aCgiL2Zpcm13YXJlIik7Cj4+
PiAgICAgICBpZiAobm9kZSkgewo+Pj4gICAgICAgICAgICAgICBvZl9wbGF0Zm9ybV9wb3B1bGF0
ZShub2RlLCBOVUxMLCBOVUxMLCBOVUxMKTsKPj4+ICAgICAgICAgICAgICAgb2Zfbm9kZV9wdXQo
bm9kZSk7Cj4+PiAgICAgICB9Cj4+PiAKPj4+ICAgICAgIC8qIFBvcHVsYXRlIGV2ZXJ5dGhpbmcg
ZWxzZS4gKi8KPj4+ICAgICAgIG9mX3BsYXRmb3JtX2RlZmF1bHRfcG9wdWxhdGUoTlVMTCwgTlVM
TCwgTlVMTCk7Cj4+PiAKPj4+ICAgICAgIHJldHVybiAwOwo+Pj4gfQo+Pj4gYXJjaF9pbml0Y2Fs
bF9zeW5jKG9mX3BsYXRmb3JtX2RlZmF1bHRfcG9wdWxhdGVfaW5pdCk7Cj4+PiAKPj4+IHN0YXRp
YyBpbnQgX19pbml0IG9mX3BsYXRmb3JtX3N5bmNfc3RhdGVfaW5pdCh2b2lkKQo+Pj4gewo+Pj4g
ICAgICAgZGV2aWNlX2xpbmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVfcmVzdW1lKCk7IDw9PT09PT09
PT0gUkVTVU1FCj4+PiAgICAgICByZXR1cm4gMDsKPj4+IH0KPj4+IGxhdGVfaW5pdGNhbGxfc3lu
YyhvZl9wbGF0Zm9ybV9zeW5jX3N0YXRlX2luaXQpOwo+Pj4gCj4+PiBUaGFua3MsCj4+PiBTYXJh
dmFuYQo+PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
