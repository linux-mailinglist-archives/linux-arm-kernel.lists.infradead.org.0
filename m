Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9148C1C4719
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bodz/Z65GTEysAdTiyOl1UgweU+onrfgA86LSseyOWc=; b=VPXEle5S4AFmrYTS3Ubt7PiLhj
	HeypxS3YEoVz1tP9zdAayPMi1d5X1LKiZszhI02Xz/Nkh21JqclX9GksJzqhgMvVavtBkafLRuzja
	5GnZrwK6EU5dVDBQSk3cqhMPNjA2GQsOCC9ePk3TZcKdqDY3WfZfJo9ig6q3vztm1ZbRBFgM3o73V
	RYgh1DawlKNBQ3O3CWBAevRNIoQ50tNaC0tk5Kz1LFA+laN0Ww+/As/lMxdcIV6HJ0o4nLziUvpMk
	v4zQr0KcQMR7LoPSRppkCGWyofncTx1UfoKvhAoBSTi21BRpDPoPbQ7zbsuT0fYeZVBQST1e9zrHX
	ogGeedJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgrO-00070G-AY; Mon, 04 May 2020 19:34:38 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgrH-0006z1-N8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 19:34:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id k18so13685898ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 12:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=VLedveHRjOWzxQFafIfJM9vIF9bwIvP2E6cViDidxC0=;
 b=vaJNJgNcxrb1V5Ckol5RMcTftci6iMEwDqjBnwg7I9WEAjRh9OiwFGM1XEAF9FFeFB
 TwTgyft86VFfbUnMYpmPxCfITWODOtjcvxiVdLsdtn/V7Mgb7iHrEOYEHNWkBobsIRJM
 cJpt09Z/GjDpK/iBDC14QsKMe8Y+bOfQmMKDsDe8XofsTdqihOsSRFZwhocx7VgajxY9
 ZAB+ToZsSEVpJzV3lGVsUNRfmktcvgncHQEbmz0Swp3YKoMOByPG8I205KNBzv1Eors6
 PHCPbMmVEUQ0gRcaClkxLC9inREdEBwepLrV9LmsSAHZAZ3O7OW/A8Kt1/bz1TB0Di9c
 JXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=VLedveHRjOWzxQFafIfJM9vIF9bwIvP2E6cViDidxC0=;
 b=WKJyVHw73gZYtqTQ7o+tA49kzqQz6QV88H4GSXyFpKyiL6Cr6ZiaLtXVOUpZGo18/g
 BH4gNMaSniy1QbbA3Co9/cmaWG5ghSvSCWG6e+pESgxvG4+3mLUzccW0FuSXRtYS5Ffv
 TWSi8AiiDQ9DWzUhZiDjKGbt8MftzxXc0aY1zoUqPQGSAPeVs9+qRmcleQClY80YmNAW
 EMJWqrwGhCkW4SSR6WtOTMjpSPmzbTNNYbbLofZHG9sROc02u47FDT9D7sgEhSiBAsqb
 1pU4EHEw9ywuMyAhuMWY5sY58cD3dWGx10sLtYlSUBruyyOKjEsl4JxODRBKbsWt007z
 bZ7A==
X-Gm-Message-State: AGi0PuYRGrSSWDPoNNx9+PYiksg2Ai66h4bk8wzQ9Ylbn1WsJrOaT9iK
 i6ZMdj0CW205eDeiL+WmGjz32rpAT67hirQKdPE=
X-Google-Smtp-Source: APiQypK9Olv8kCXFxHfdydxi6Zo3gzKdeDYOEOWdBFjLcGrNydDzLvq6rm7R+os2X1oVOh/CZoO1TcZcz7TI7xUtcgY=
X-Received: by 2002:a02:a004:: with SMTP id a4mr34524jah.18.1588620869486;
 Mon, 04 May 2020 12:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200428142629.8950-1-peron.clem@gmail.com>
 <20200504122742.er2jd67bvrn2rfgp@core.my.home>
In-Reply-To: <20200504122742.er2jd67bvrn2rfgp@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 4 May 2020 21:34:17 +0200
Message-ID: <CAJiuCcdSmgp75ByEDDtH0AtqGsUyc9QrAcD9xqLZduh2ijnrqQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2] arm64: dts: allwinner: h6: Use dummy
 regulator for Tanix TX6
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-sunxi <linux-sunxi@googlegroups.com>, Piotr Oniszczuk <warpme@o2.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_123431_755815_99A680AE 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

SGkgT25kcmVqLAoKT24gTW9uLCA0IE1heSAyMDIwIGF0IDE0OjI3LCBPbmTFmWVqIEppcm1hbiA8
bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+Cj4gSGkgQ2zDqW1lbnQsCj4KCjxzbmlwPgoKPgo+
IFNvIEkgZ3Vlc3MgaWdub3JpbmcgdGhlIHZvbHRhZ2UgYW5kIG5vdCBkaXNhYmxpbmcgdGhpcyBP
UFAgbWF5IG9yIG1heSBub3Qgd29yawo+IGJhc2VkIG9uIFNvQyBiaW4uCj4KPiBPbiBPcmFuZ2Ug
UGkgT25lLCB0aGVyZSdzIGEgcmVndWxhdG9yIHRoYXQgc3VwcG9ydHMgdHdvIHZvbHRhZ2VzICh0
aGF0IGNhbid0Cj4gc3VwcG9ydCBhbGwgdGhlIGxpc3RlZCBPUFBzIGZvciBIMyksIGFuZCBjcHVm
cmVxLWR0IGNhbiBkZWFsIHdpdGggdGhhdAo+IGF1dG9tYWdpY2FsbHksIGlmIHlvdSBzcGVjaWZ5
IE9QUCB2b2x0YWdlcyB2aWEgYSB0cmlwcGxldCBvZiBbcHJlZmVyZWQgbWluIG1heF0uCj4gS2Vy
bmVsbCB3aWxsIGxvZyB0aGlzIGluIGRtZXNnIG9uIGJvb3Q6Cj4KPiBbICAgIDAuNjcyNDQwXSBj
b3JlOiBfb3BwX3N1cHBvcnRlZF9ieV9yZWd1bGF0b3JzOiBPUFAgbWludVY6IDEzMjAwMDAgbWF4
dVY6IDEzMjAwMDAsIG5vdCBzdXBwb3J0ZWQgYnkgcmVndWxhdG9yCj4gWyAgICAwLjY3MjQ1NF0g
Y3B1IGNwdTA6IF9vcHBfYWRkOiBPUFAgbm90IHN1cHBvcnRlZCBieSByZWd1bGF0b3JzICgxMTA0
MDAwMDAwKQo+IFsgICAgMC42NzI1MjNdIGNvcmU6IF9vcHBfc3VwcG9ydGVkX2J5X3JlZ3VsYXRv
cnM6IE9QUCBtaW51VjogMTMyMDAwMCBtYXh1VjogMTMyMDAwMCwgbm90IHN1cHBvcnRlZCBieSBy
ZWd1bGF0b3IKPiBbICAgIDAuNjcyNTMwXSBjcHUgY3B1MDogX29wcF9hZGQ6IE9QUCBub3Qgc3Vw
cG9ydGVkIGJ5IHJlZ3VsYXRvcnMgKDEyMDAwMDAwMDApCj4gWyAgICAwLjY3MjYyMV0gY29yZTog
X29wcF9zdXBwb3J0ZWRfYnlfcmVndWxhdG9yczogT1BQIG1pbnVWOiAxMzQwMDAwIG1heHVWOiAx
MzQwMDAwLCBub3Qgc3VwcG9ydGVkIGJ5IHJlZ3VsYXRvcgo+IFsgICAgMC42NzI2MjhdIGNwdSBj
cHUwOiBfb3BwX2FkZDogT1BQIG5vdCBzdXBwb3J0ZWQgYnkgcmVndWxhdG9ycyAoMTI5NjAwMDAw
MCkKPiBbICAgIDAuNjcyNzEyXSBjb3JlOiBfb3BwX3N1cHBvcnRlZF9ieV9yZWd1bGF0b3JzOiBP
UFAgbWludVY6IDE0MDAwMDAgbWF4dVY6IDE0MDAwMDAsIG5vdCBzdXBwb3J0ZWQgYnkgcmVndWxh
dG9yCj4gWyAgICAwLjY3MjcxOV0gY3B1IGNwdTA6IF9vcHBfYWRkOiBPUFAgbm90IHN1cHBvcnRl
ZCBieSByZWd1bGF0b3JzICgxMzY4MDAwMDAwKQo+Cj4gQW5kIHRoZSBsaXN0IG9mIGF2YWlsYWJs
ZSBPUFBzIHdpbGwgYmUgcmVkdWNlZCBhdCBydW50aW1lIHRvIGEgc3VwcG9ydGFibGUKPiBzZXQg
YnkgdGhlIENQVSByZWd1bGF0b3IuCj4KPiBJZiB5b3UgbG9vayBhdDoKPgo+ICAgaHR0cHM6Ly9t
ZWdvdXMuY29tL2dpdC9saW51eC9jb21taXQvP2g9dGhzLTUuNyZpZD1kMjMxNzcwMTk1OTEzY2Y1
NDNjMGNmOTUzOWRlZWUyZWNlYzA2NjgwCj4KPiB5b3UnbGwgc2VlIGEgYnVuY2ggb2YgT1BQcyBm
b3IgSDMgdGhhdCBhcmUgc3BlY2lmaWVkIGFzIGEgcmFuZ2UuIFNvCj4gZm9yIGV4YW1wbGUgaWYg
eW91IHdhbnQgNDgwTUh6LCBhbmQgeW91ciByZWd1bGF0b3IgY2FuJ3QgcHJvZHVjZQo+IDEuMDRW
IGV4YWN0bHksIGNwdWZyZXEgd2lsbCBzZXQgdGhlIHZvbHRhZ2UgdG8gc29tZXRoaW5nIHN1cHBv
cnRhYmxlCj4gaW4gdGhlIHJhbmdlLgo+Cj4gSSB0aGluayB0aGUgcHJvcGVyIGZpeCBpcyB0byBm
aXggdGhlIE9QUCB0YWJsZSBmb3IgSDYsIHNvIHRoYXQgaXQgdXNlcwo+IHZvbHRhZ2UgcmFuZ2Vz
IGZvciBlYWNoIE9QUCBhbmQgbm90IGEgc2luZ2xlIGZpeGVkIHZvbHRhZ2UsIHRvIHN1cHBvcnQK
PiBib2FyZHMgdGhhdCBkb24ndCBoYXZlIHRoZSBzdGFuZGFyZCBQTUlDIHRoYXQgZ29lcyB3aXRo
IEg2LgoKVGhhbmtzIGZvciB0aGUgc3VnZ2VzdGlvbiBhbmQgSSBhZ3JlZSB3aXRoIHlvdSwgdGhp
cyBpcyBhIGdvb2Qgd2F5IHRvCmtlZXAgdGhlIHNhbWUgT1BQIHRhYmxlIGZvciBhbGwgdGhlIEg2
IGRldmljZXMgYW5kIGhhbmRsZSBib3RoIGJvYXJkCndpdGggUE1JQyBhbmQgd2l0aCBmaXhlZCBy
ZWd1bGF0b3IuCgpJIHdpbGwgcHJvcG9zZSBhIHBhdGNoLgoKVGhhbmtzIGNsZW1lbnQKCj4KPiBy
ZWdhcmRzLAo+ICAgICAgICAgby4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
