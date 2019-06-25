Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560F754F72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zdvm7MuPza/55iKkL7xPyPLYFfKSuDHgHMUhRc+fKeI=; b=bf/5ai9uy5siUV
	PylZtOTlb1AUevnG5G/Pxgu4sOVc3mspjD1ekGL+oorJPTL6wx0/5dDN/kaaSnnOFpon8xB4O4hZH
	XY15tHe1kd53Elb7g6kXrQC20DSqlpS3V8nh0ZD7ruBwqJUazh1r6mKk/iBqLRAkdoNfOFQt9hFxX
	u6maDaxgEfnckBkKM/9JBPi3yqPQn3do8ltO3eRO4ZafySPZ/LL2uDm/Q+pneX0EwQVKvuiHxnRpN
	ll4PpABidWHkImcWzJfk8TlmObKPlLEfcDFcvK7zvGTtWPe+o5AL0lpig7kJb2Pu4j3NYlvazy/BC
	uacw/uMQR05TvV3cef1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl0Y-0006hd-Ix; Tue, 25 Jun 2019 12:57:10 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl0N-0006gx-9V
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:57:01 +0000
Received: by mail-io1-xd44.google.com with SMTP id j6so315318ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3YFQvShEgo/eebyeDibGlCQwhkEBGMsZu0gPXVEbujg=;
 b=v/AI51EDEx9Z1iETrPxvW5mlGH0YzQoMWRW0ir5uW8xFt3sAoUjnrVR887vDu4rBL2
 bYVsC1+NZkVvx3EkMpw6wvO8VpDo/QUxpcif4GvyCXeytAq5i4NLz8Bka8gnMNlRqcpK
 LsgBh3ni1lCgFRqQSM0OG02wN3JTB8Q7Ww9CCN2/8E3Y09gMdobSTZk1nGQZ1Xo806al
 cuKESdWaYhMkUVVi/J5BMOvxVQmGxovE20f4zIBv4EVyQE6Zpj2O8FB3WFsTGzy+bdjl
 BvulxCiRkUtMMONs4I7KDGOXNtetcDS9ombeEuh60kMDl5GzxbJYi0R/4dBWWr9UldNU
 rWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3YFQvShEgo/eebyeDibGlCQwhkEBGMsZu0gPXVEbujg=;
 b=n75awMAMHimJQbjmEvTBs6Faa/8NKfcDsCsUVl1LTBNfaO9KziBaR8wQkj2RYh+Rtk
 /KT4ANsuMY6hMOS6LH9bB9OkVFpKd2fyKHRNNRRsps817ozA8R01bu1IWAlrXeYXMUbt
 qg6m18eljAmEjPnmNP9ONSimIokDaL59vT/rV3XJf6LesrYU94Jra6pTHykoJOFTvMTi
 FcnmHXuqxWMl2Avs7b8F/HJVHE3HnUQnq3vu0m7jg7A7LiLxmm3GR8aCnl5CO58TfrAS
 iE9Uyw/MQYaqQ+aWW6WkdhD+ix+iH2/Xn31DdbzFyw2mbZt6cgsB1FAGkQFfhfovS2AM
 rmaQ==
X-Gm-Message-State: APjAAAVYsCLz84qcuZDyA4raBc4mzykzKkqxsaN30TZzHZzRAe1fyuOz
 wrAq45PrTJhhpl6GxSp0sUZX78cm1IcKw3mxol6t/Q==
X-Google-Smtp-Source: APXvYqy5XGmjY9EjciRNAvxBXV3gjPCrN6YZ4D+eKtrbAJb9JuZ3MgS9wl8gZijlL2mpfcYj3v8lUado/ficMRCLfkg=
X-Received: by 2002:a02:c519:: with SMTP id s25mr55045250jam.11.1561467418451; 
 Tue, 25 Jun 2019 05:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190623032909.16375-1-f.fainelli@gmail.com>
 <20190625111634.5ucqrq2vufzvvyys@localhost>
In-Reply-To: <20190625111634.5ucqrq2vufzvvyys@localhost>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 25 Jun 2019 14:56:46 +0200
Message-ID: <CAOesGMg9-0=YFJOTZ9vzBwKfN1PCW8ouJrN_u2_fLwd=xAp2pg@mail.gmail.com>
Subject: Re: [GIT PULL 1/6 v2] Broadcom devicetree changes for 5.2
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055659_328444_400D566F 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>, Lukas Wunner <lukas@wunner.de>,
 Kevin Hilman <khilman@kernel.org>, Eric Anholt <eric@anholt.net>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Broadcom Kernel Feedback List <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMjowNCBQTSBPbG9mIEpvaGFuc3NvbiA8b2xvZkBsaXhv
bS5uZXQ+IHdyb3RlOgo+Cj4gT24gU2F0LCBKdW4gMjIsIDIwMTkgYXQgMDg6Mjk6MDlQTSAtMDcw
MCwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPiA+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5j
ZSBjb21taXQgZThiZDc2ZGNjZDc5MmIzNzFhOTM0MzM2YzNlN2Q4YzM4OTc1NWQ5ZjoKPiA+Cj4g
PiAgIEFSTTogZHRzOiBiY206IEFkZCBtaXNzaW5nIGRldmljZV90eXBlID0gIm1lbW9yeSIgcHJv
cGVydHkgKDIwMTktMDUtMjAgMDk6Mjk6NDcgLTA3MDApCj4gPgo+ID4gYXJlIGF2YWlsYWJsZSBp
biB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4gPgo+ID4gICBodHRwczovL2dpdGh1Yi5jb20vQnJv
YWRjb20vc3RibGludXguZ2l0IHRhZ3MvYXJtLXNvYy9mb3ItNS4zL2RldmljZXRyZWUtdjIKPiA+
Cj4gPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZGZhODRiYjk5Mjg1YjQzMzVlNWIy
YTIzYjc3Mjk5MTM2MmU0N2VlNjoKPiA+Cj4gPiAgIEFSTTogZHRzOiBCQ001MzAxWDogRml4IG1v
c3QgRFRDIFc9MSB3YXJuaW5ncyAoMjAxOS0wNi0yMiAxOToyODo0MSAtMDcwMCkKPiA+Cj4gPiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gPiBUaGlzIHB1bGwgcmVxdWVzdCBjb250YWluIEJyb2FkY29tIEFSTS1iYXNlZCBT
b0NzIERldmljZSBUcmVlIGNoYW5nZXMKPiA+IGZvciA1LjMgcGxlYXNlIHB1bGwgdGhlIGZvbGxv
d2luZzoKPiA+Cj4gPiAtIEx1a2FzIGVuYWJsZXMgRE1BIHN1cHBvcnQgZm9yIHRoZSBCQ00yODM1
IChSYXNwYmVycnkgUGkpIFNQSQo+ID4gICBjb250cm9sbGVyCj4gPgo+ID4gLSBGbG9yaWFuIGZp
eGVzIGEgbnVtYmVyIG9mIGR0YyBXPTEgd2FybmluZ3MgaW4gdGhlIEJyb2FkY29tIERUUyBmaWxl
cwo+ID4gICBhbmQgcHJvdmlkZXMgYSBmaXggZm9yIGRldmljZXMgZmFpbGluZyB0byBib290IGFm
dGVyIHRoZSByZW1vdmFsIG9mCj4gPiAgIHNrZWx0b24uZHRzaSAodGhhdCBjb21taXQgaGFzIGJl
ZW4gc3VibWl0dGVkIGFzIGEgc2VwYXJhdGUgZml4KQo+ID4KPiA+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IEZsb3Jp
YW4gRmFpbmVsbGkgKDgpOgo+ID4gICAgICAgTWVyZ2UgdGFnICd0YWdzL2JjbTI4MzUtZHQtbmV4
dC0yMDE5LTA2LTAxJyBpbnRvIGRldmljZXRyZWUvbmV4dAo+ID4gICAgICAgQVJNOiBkdHM6IEZp
eCBCQ003NDQ1IERUQyB3YXJuaW5ncwo+ID4gICAgICAgQVJNOiBkdHM6IEN5Z251czogRml4IG1v
c3QgRFRDIFc9MSB3YXJuaW5ncwo+ID4gICAgICAgQVJNOiBkdHM6IGJjbS1tb2JpbGU6IEZpeCBt
b3N0IERUQyBXPTEgd2FybmluZ3MKPiA+ICAgICAgIEFSTTogZHRzOiBCQ001MzU3MzogRml4IERU
QyBXPTEgd2FybmluZ3MKPiA+ICAgICAgIEFSTTogZHRzOiBCQ002M3h4OiBGaXggRFRDIFc9MSB3
YXJuaW5ncwo+ID4gICAgICAgQVJNOiBkdHM6IE5TUDogRml4IHRoZSBidWxrIG9mIFc9MSBEVEMg
d2FybmluZ3MKPiA+ICAgICAgIEFSTTogZHRzOiBCQ001MzAxWDogRml4IG1vc3QgRFRDIFc9MSB3
YXJuaW5ncwo+ID4KPiA+IEx1a2FzIFd1bm5lciAoMSk6Cj4gPiAgICAgICBBUk06IGJjbTI4M3g6
IEVuYWJsZSBETUEgc3VwcG9ydCBmb3IgU1BJIGNvbnRyb2xsZXIKCkZsb3JpYW4sCgpMb29rcyBs
aWtlIHlvdSBtaXNzZWQgYWRkaW5nIHlvdXIgb3duIFMtby1iIHdoZW4geW91IGFwcGxpZWQgb3IK
cmViYXNlZCB0aGlzIHBhdGNoLiBJdCdzIGRvd24gaW4gdGhlIHN0YWNrIG9mIG1lcmdlcyBub3cs
IHNvIEknbGwgbGV0Cml0IGJlIGJ1dCBrZWVwIGluIG1pbmQgZm9yIHRoZSBmdXR1cmUuCgoKY29t
bWl0IGNiYmU4ODMzMzA2MjNiYTg4MDE5ZjhiY2U0OGFmNTlhZGRmNzIzN2MKQXV0aG9yOiAgICAg
THVrYXMgV3VubmVyIDxsdWthc0B3dW5uZXIuZGU+CkF1dGhvckRhdGU6IFRodSBNYXkgOSAxOTow
MzowMCAyMDE5ICswMjAwCkNvbW1pdDogICAgIEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlA
Z21haWwuY29tPgpDb21taXREYXRlOiBTYXQgSnVuIDIyIDE5OjI4OjM0IDIwMTkgLTA3MDAKCiAg
ICBBUk06IGJjbTI4M3g6IEVuYWJsZSBETUEgc3VwcG9ydCBmb3IgU1BJIGNvbnRyb2xsZXIKWy4u
Ll0KICAgIFRlc3RlZC1ieTogTmljb2xhcyBTYWVueiBKdWxpZW5uZSA8bnNhZW56anVsaWVubmVA
c3VzZS5kZT4KICAgIFNpZ25lZC1vZmYtYnk6IEx1a2FzIFd1bm5lciA8bHVrYXNAd3VubmVyLmRl
PgogICAgUmV2aWV3ZWQtYnk6IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5uZXQ+CiAgICBSZXZp
ZXdlZC1ieTogTWFydGluIFNwZXJsIDxrZXJuZWxAbWFydGluLnNwZXJsLm9yZz4KICAgIFNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+CiAgICBDYzogTWFydGlu
IFNwZXJsIDxrZXJuZWxAbWFydGluLnNwZXJsLm9yZz4KICAgIENjOiBOb3JhbGYgVHLDuG5uZXMg
PG5vcmFsZkB0cm9ubmVzLm9yZz4KCgotT2xvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
