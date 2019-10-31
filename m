Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D1EB79A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8GMXWcIX+gmlSaICToBkF4+7bihDtOWVTlbfJc+nXU=; b=uuT0nSB9U8/G3U
	iLXBe3HftTJLbO+0sO06WnP7MW+TtgyNOlNeTkh936guxTLrgRv5q6Z8S2Tr5TqBi7wNezlchNvI2
	oYpktLwE5NNEXKQ2EsR8djibydCx0kx9x6R+1WNdm1Fy/qBL5/bpeuhKLKyKKMF7ERpIFzjuUA0Sr
	HXdEblZu8jXLz/BYT7arAYIua6FXBqUiU5KJDQ18eLhRR8FmS0g0gTd9jqac/RxKmY/YcWz60uSn2
	hXpgMJRdJMyBX0j1aB4ILKMc8qpeX5ppsE04u6ILFU3HaU7hYVcXMwLKLS8Hwv1llVPGovatPNp1T
	6WPTHX3VpEiiLFB3PU2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFc7-000592-Qf; Thu, 31 Oct 2019 18:56:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFbx-00058G-34
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 18:55:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id z19so2817374wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 11:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KEZ2MGdwSvgyihy3BgAVtU7EXgoX4IyUpv+yaDE4EcM=;
 b=ZYtnp5VtI2P7IqkhTg1B8qmX/LGKFnyoyP1OI02dcs9Y9z49dyvvKdcCH9EFsu7iyJ
 t3/OP80zD06K5ZwZsq3mCVndr+GGQO6XZ+W2cyUIPfufhkG7kSrg8Mp7cfm2aDfxLUgV
 eu11mNVUZvgFNT+OXFwpttyldXIHuSXsgwyUzXzLiEAZj5GUUmmBi7xHjroJUTFmlxXp
 7qra1V80Vh6JiZ2mfcX/uIaSdLZJ7w/AN54R2pbz3oBnrULe1IxtgUwIpFIIrkVsqFw5
 cbpacAfI5X7UrSZxxYKVBLQNgtp6ojnq1PgdlRoTMg4cI/bS+xYJaB0eEiO5W/GRwdOf
 /sdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KEZ2MGdwSvgyihy3BgAVtU7EXgoX4IyUpv+yaDE4EcM=;
 b=MLNIxLe7oKidIhcv/LLtJvgzdYlhRBqgvhDz1VqpWc2DIaajuLttzRzpxpWJNTTwb1
 JpVMdVkIh2j4CVCqmVFoSm+shN6tRYD0nGd1LQT/RLoD6sFMQgQdum9+t0+TKbs86YeL
 ejbe9eshpIH/EZ2DwMCssQ212ladk8RuFtQsSPfzXK+oWlqVWEcMSZPTGPrLp3pX/nC1
 WbkVP9bawskiP/2yzaUSTAzZ3mKDknBoXwG39jlzprVesqOklkKCv2wdGZYtnQz5Jm9P
 FUy7hnls9XjaM/t2dkAbkr2iK5aIYa8B4P6Wg05kpB+YHj0pZiXLNfpIMqmQmgAgEkzg
 wTUQ==
X-Gm-Message-State: APjAAAVTFy+e1g5pIn99g9q5H8siiuwi+W7r7F09DoUNvOEFSxp/v7xB
 vVjV52IcdhZOxq7DTm7M54njl3HGdkwXXv8K+do=
X-Google-Smtp-Source: APXvYqzQvRT21L0PVgbV5c5C9W19QRhbCaQ8fQ/tMOUZwJgzzYQuw10WGZvoatXernuYn4EhUroIbjQ5XFwa10cGKYc=
X-Received: by 2002:a1c:480a:: with SMTP id v10mr6775812wma.138.1572548154853; 
 Thu, 31 Oct 2019 11:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191031181359.282617-1-megous@megous.com>
In-Reply-To: <20191031181359.282617-1-megous@megous.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 31 Oct 2019 19:55:43 +0100
Message-ID: <CAJiuCcdZqpoXKuupk_w3F1npZgCHDgb=+Fdd1ukKA22K2PJ6Ww@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] cpufreq: sun50i: Fix CPU speed bin detection
To: megous@megous.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_115557_135198_2DE130AC 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kcmVqLAoKT24gVGh1LCAzMSBPY3QgMjAxOSBhdCAxOToxNCwgT25kcmVqIEppcm1hbiA8
bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+Cj4gSSBoYXZlIGZhaWx1cmVzIHRvIGJvb3Qgb24g
T3JhbmdlIFBpIDMsIGJlY2F1c2UgdGhpcyBkcml2ZXIgZGV0ZXJtaW5lZAo+IHRoYXQgbXkgU29D
IGlzIGZyb20gdGhlIG5vcm1hbCBiaW4sIGJ1dCBteSBTb0Mgb25seSB3b3JrcyByZWxpYWJseSB3
aXRoCj4gdGhlIE9QUCB2YWx1ZXMgZm9yIHRoZSBzbG93ZXN0IGJpbi4KPgo+IExvb2tpbmcgYXQg
QlNQIGNvZGUsIEkgZm91bmQgdGhhdCBlZnVzZSB2YWx1ZXMgaGF2ZSBmb2xsb3dpbmcgbWVhbmlu
Z3MKPiBvbiBINjoKPgo+IC0gMGIwMDAgaW52YWxpZCAoaW50ZXJwcmV0ZWQgaW4gdmVuZG9yJ3Mg
QlNQIGFzIG5vcm1hbCBiaW4pCj4gLSAwYjAwMSBzbG93ZXN0IGJpbgo+IC0gMGIwMTEgbm9ybWFs
IGJpbgo+IC0gMGIxMTEgZmFzdGVzdCBiaW4KCk1heWJlIGhhdmUgc29tZSBkZWZpbmVzIHdpbGwg
YmUgbW9yZSByZWFkYWJsZSBubyA/Cmh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9k
cml2ZXJzL3NvYy9zdW54aS9zdW54aS1zaWQuYz9oPWg2LTQuOS1ic3AjbjIxMwoKI2RlZmluZSBT
VU41MElfTlZFTV9JTlZBTElEX0NQVV9PUFAgKDBiMDAwKQojZGVmaW5lIFNVTjUwSV9OVkVNX0xP
V19DUFVfT1BQICgwYjAwMSkKI2RlZmluZSBTVU41MElfTlZFTV9OT1JNQUxfQ1BVX09QUCAoMGIw
MTEpCiNkZWZpbmUgU1VONTBJX05WRU1fSElHSF9DUFVfT1BQICgwYjExMSkKClJlZ2FyZHMsCkNs
w6ltZW50Cgo+Cj4gTGV0J3MgcGxheSBpdCBzYWZlIGFuZCBpbnRlcnByZXQgMCBhcyB0aGUgc2xv
d2VzdCBiaW4sIGJ1dCBmaXggZGV0ZWN0aW9uCj4gb2Ygb3RoZXIgYmlucyB0byBtYXRjaCB2ZW5k
b3IgY29kZS4KPgo+IEZpeGVzOiBmMzI4NTg0ZjdiZmYgKCJjcHVmcmVxOiBBZGQgc3VuNTBpIG52
bWVtIGJhc2VkIENQVSBzY2FsaW5nIGRyaXZlciIpCj4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEpp
cm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gLS0tCj4KPiBTZWUgaHR0cHM6Ly9tZWdvdXMuY29t
L2dpdC9saW51eC90cmVlL2RyaXZlcnMvc29jL3N1bnhpL3N1bnhpLXNpZC5jP2g9aDYtNC45LWJz
cCNuNDg0Cj4gYW5kIGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9kcml2ZXJzL2Nw
dWZyZXEvc3VueGktY3B1ZnJlcS5jP2g9aDYtNC45LWJzcCNuNDI4Cj4gKDEgaXMgc3Vic3RyYWN0
ZWQgZnJvbSBzb2NfYmluIG51bWJlciBoZXJlISkKPgo+ICBkcml2ZXJzL2NwdWZyZXEvc3VuNTBp
LWNwdWZyZXEtbnZtZW0uYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1ZnJlcS9zdW41
MGktY3B1ZnJlcS1udm1lbS5jIGIvZHJpdmVycy9jcHVmcmVxL3N1bjUwaS1jcHVmcmVxLW52bWVt
LmMKPiBpbmRleCBkZjM1ZWYzZWY1NjcuLjQxZGFkMDNlMjQ1YyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2NwdWZyZXEvc3VuNTBpLWNwdWZyZXEtbnZtZW0uYwo+ICsrKyBiL2RyaXZlcnMvY3B1ZnJl
cS9zdW41MGktY3B1ZnJlcS1udm1lbS5jCj4gQEAgLTcxLDkgKzcxLDEyIEBAIHN0YXRpYyBpbnQg
c3VuNTBpX2NwdWZyZXFfZ2V0X2VmdXNlKHUzMiAqdmVyc2lvbnMpCj4gICAgICAgICBlZnVzZV92
YWx1ZSA9ICgqc3BlZWRiaW4gPj4gTlZNRU1fU0hJRlQpICYgTlZNRU1fTUFTSzsKPiAgICAgICAg
IHN3aXRjaCAoZWZ1c2VfdmFsdWUpIHsKPiAgICAgICAgIGNhc2UgMGIwMDAxOgo+IC0gICAgICAg
ICAgICAgICAqdmVyc2lvbnMgPSAxOwo+ICsgICAgICAgICAgICAgICAqdmVyc2lvbnMgPSAwOwo+
ICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgIGNhc2UgMGIwMDExOgo+ICsgICAgICAg
ICAgICAgICAqdmVyc2lvbnMgPSAxOwo+ICsgICAgICAgICAgICAgICBicmVhazsKPiArICAgICAg
IGNhc2UgMGIwMTExOgo+ICAgICAgICAgICAgICAgICAqdmVyc2lvbnMgPSAyOwo+ICAgICAgICAg
ICAgICAgICBicmVhazsKPiAgICAgICAgIGRlZmF1bHQ6Cj4gLS0KPiAyLjIzLjAKPgo+IC0tCj4g
WW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0
aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+IFRvIHVuc3Vic2NyaWJlIGZy
b20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4g
ZW1haWwgdG8gbGludXgtc3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiBUbyB2
aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29n
bGUuY29tL2QvbXNnaWQvbGludXgtc3VueGkvMjAxOTEwMzExODEzNTkuMjgyNjE3LTEtbWVnb3Vz
JTQwbWVnb3VzLmNvbS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
