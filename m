Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C494745C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 13:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xbpJUmpchu23ldcZJ3rvdVnCLVsKGA3yqyMO5IzkLg=; b=hRtY2l0h6SUowF
	XmnTIlm+on0Svwbkmqi2gVsh5pvUffBdpH3sJtjknacAmYmjy5vO3zQA2YAvhdZKW8V+IHLRSmb6K
	ERHuzftYGLYinmaiAH/aB31sR0HmrtUFJsZeQIBUH0cFx2vZv/XGNNJZR48lsihh5hH5KqVB/wDq8
	0kjpwKpdGTEq2PdKtW4Mlg5N6j/Fxqa7xrIHKMEcN86rnR1KyYn4iKV9S+BvGbh3/VfbqvbZMKdzk
	IPSPWx0xbhGFPRfSjA/qRDEJhBhxUhzWKfhxMEVn9Ep3kLo56CpE5krmpL0O9r7DyHgMVbCQVQqE/
	ykpWcrCaTZExAXHrdPug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcTKW-0003Qb-SE; Sun, 16 Jun 2019 11:28:13 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcTJs-0003Pn-Rc
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 11:27:34 +0000
Received: by mail-ot1-x333.google.com with SMTP id s20so6762321otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 04:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=erfU7rxivGb4lVNGkqCqD0p/OXnXjIQY0I8TQwxXibo=;
 b=TM6GAxz2tdvGBnARsJ072K6Ip7rmVvVyXjCwqMHF1sxXm4uJa2mKtuuHcOVOJYIQ9c
 iMxlaszf9XKPbVaCIkH5IuAlMZeeNkLt/NZe352noi5HuFVDuTUIpdWbILcgOLuG8NP4
 MeEvrslg3/jxe11A+Rf7MZsbvZhRjZljyMcPbnROxkp4jOj2gBIoeLSMp/SjH9/BtkCf
 3HzwRt46q2Chfo4B0IFAICokFwBvOdvnVA8bl9yo2kpdq5Q9VRv/3VKYh7i56UQoFigE
 HNywAt8QPDhVvv3mEfn/1UYRwk29R8hnEr0yv1Ojzf5018wHK3ZzAoZms7dFOCWIPtnH
 JCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=erfU7rxivGb4lVNGkqCqD0p/OXnXjIQY0I8TQwxXibo=;
 b=HY0vPZsDNGCd/NsE19cSDON/I4hXvSej8u/Erj2o14O4ddB/LZoJExRto6KZa3pSzr
 lvdtjwPEBqCrm/IXiObihfoLn+mOGtS1nLk2GtbYd0qR14KuCZHqcov0UKwwD3i6hbIh
 cqcuM+ZE7rBSahgV9rSjIHbvE1I3RqzTYUQLwGg6pZHv5dOn/6oxWh8OIQYC56PRNtCI
 zCH7YtHKrbzsG+drLn8uvzaLNJpkdyMP/sA6WvJl2p3dMHKTuT5znD6jbEmdyBQ8RHZT
 g1OTg95MZYzGOB4yVsj+6eVT2EaZ153nYbkkoCo8y3HsC28F95P3TMhj6gviSQay37K/
 GjRA==
X-Gm-Message-State: APjAAAX0Tzkt76Tn0nzbrMUB3gjcNgxmu09hPVtZfzxqQey8IPWkWeuX
 WP+XA7jUa5mstLeFkfBdNaG41MgTCpZqVN5DU3Q=
X-Google-Smtp-Source: APXvYqxxlKCJHbqOewgzT68GnL0QEJNSIftErIs6sehSFbNCIVo0qT6trodlTjQ6ngOIEmqb26jrL9hCS3KS0QmHhes=
X-Received: by 2002:a9d:6959:: with SMTP id p25mr31795546oto.118.1560684451265; 
 Sun, 16 Jun 2019 04:27:31 -0700 (PDT)
MIME-Version: 1.0
References: <1560084198-2930-1-git-send-email-ykaneko0929@gmail.com>
 <20190611123022.oo4arh76w72vlkg5@verge.net.au>
 <20190611140252.GL5016@pendragon.ideasonboard.com>
 <20190612121157.y6iiftulcsv3ty5w@verge.net.au>
In-Reply-To: <20190612121157.y6iiftulcsv3ty5w@verge.net.au>
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Date: Sun, 16 Jun 2019 20:27:20 +0900
Message-ID: <CAH1o70KAnhfvdbXCMeNZxEm9d1pgN7qmuMJBLjjVnPFwAhz48A@mail.gmail.com>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77990: Fix register range of
 display node
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_042732_895372_0415C256 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2ltb24tc2FuLAoKMjAxOeW5tDbmnIgxMuaXpSjmsLQpIDIxOjEyIFNpbW9uIEhvcm1hbiA8
aG9ybXNAdmVyZ2UubmV0LmF1PjoKPgo+IE9uIFR1ZSwgSnVuIDExLCAyMDE5IGF0IDA1OjAyOjUy
UE0gKzAzMDAsIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiBIZWxsbywKPiA+Cj4gPiBPbiBU
dWUsIEp1biAxMSwgMjAxOSBhdCAwMjozMDoyN1BNICswMjAwLCBTaW1vbiBIb3JtYW4gd3JvdGU6
Cj4gPiA+ICsgTGF1cmVudAo+ID4gPgo+ID4gPiBPbiBTdW4sIEp1biAwOSwgMjAxOSBhdCAwOTo0
MzoxOFBNICswOTAwLCBZb3NoaWhpcm8gS2FuZWtvIHdyb3RlOgo+ID4gPiA+IEZyb206IFRha2Vz
aGkgS2loYXJhIDx0YWtlc2hpLmtpaGFyYS5kZkByZW5lc2FzLmNvbT4KPiA+ID4gPgo+ID4gPiA+
IFNpbmNlIHRoZSBSOEE3Nzk5MCBTb0MgdXNlcyBEVXswLDF9LCB0aGUgcmFuZ2UgZnJvbSB0aGUg
YmFzZSBhZGRyZXNzIHRvCj4gPiA+ID4gdGhlIDB4NDAwMCBhZGRyZXNzIGlzIHVzZWQuCj4gPiA+
ID4gVGhpcyBwYXRjaCBmaXhlZCBpdC4KPiA+ID4gPgo+ID4gPiA+IEZpeGVzOiAxM2VlMmJmYzU0
NDQgKCJhcm02NDogZHRzOiByZW5lc2FzOiByOGE3Nzk5MDogQWRkIGRpc3BsYXkgb3V0cHV0IHN1
cHBvcnQiKQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFRha2VzaGkgS2loYXJhIDx0YWtlc2hpLmtp
aGFyYS5kZkByZW5lc2FzLmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBZb3NoaWhpcm8gS2Fu
ZWtvIDx5a2FuZWtvMDkyOUBnbWFpbC5jb20+Cj4gPiA+Cj4gPiA+IFRoYW5rcywKPiA+ID4KPiA+
ID4gVGhpcyBsb29rcyBmaW5lIHRvIG1lIGJ1dCBJIHdpbGwgd2FpdCB0byBzZWUgaWYgdGhlcmUg
YXJlIG90aGVyIHJldmlld3MKPiA+ID4gYmVmb3JlIGFwcGx5aW5nLgo+ID4gPgo+ID4gPiBSZXZp
ZXdlZC1ieTogU2ltb24gSG9ybWFuIDxob3JtcytyZW5lc2FzQHZlcmdlLm5ldC5hdT4KPiA+Cj4g
PiBSZXZpZXdlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgo+Cj4gVGhhbmtzLCBJIGhhdmUgYXBwbGllZCB0aGlzIGZvciBpbmNsdXNpb24g
aW4gdjUuMy4KPgo+ID4gPiBJcyBhIHNpbWlsYXIgZml4IGFsc28gYXBwcm9wcmlhdGUgZm9yIEQz
IChyOGE3Nzk5NSkKPiA+Cj4gPiBZZXMgaXQgaXMuCj4KPiBOaWNlLgo+Cj4gS2FuZWtvLXNhbiwg
Y291bGQgeW91IHByZXBhcmUgYSBwYXRjaD8KCkdvdCBpdCwgd2lsbCBkby4KClJlZ2FyZHMsCkth
bmVrbwoKPgo+ID4gPiBBbmQgYSB2YXJpYW50IHRoYXQgcmVkdWNlcyB0aGUgcmVnaXN0ZXIgc2l6
ZSB0byAweDUwMDAKPiA+ID4gZm9yIE0zLVcgKHI4YTc3OTY1KS4KPiA+Cj4gPiBNMy1XIGhhcyBy
ZWdpc3RlcnMgYXQgMHhmZWI2MDAwMC4gWW91IGNvdWxkIHJlZHVjZSB0aGUgc2l6ZSBmcm9tCj4g
PiAweDgwMDAwIHRvIDB4NzAwMDAgYnV0IEkgZG9uJ3QgdGhpbmsgaXQncyB3b3J0aCBpdC4KPgo+
IEdvdCBpdCwgbGV0cyBsZWF2ZSBNMy1XIGFzIGlzLgo+Cj4gLi4uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
