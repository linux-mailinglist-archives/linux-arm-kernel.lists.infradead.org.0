Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C464A1D46D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUFgQnVYBdr4yVWtApx7msXsJQavU+ynpg5RLcrRplU=; b=qTAtRuip6LBRhw
	9dO4/adF5qzRloWCUTVRh6K0/319CvCEnIjdmVlhieuJLQsrzh22Hd5N09Ogj2EV9p/vTlGwws2c/
	uEPk9Gt8fBO2YePggCFbOUJSRwCZ233F964BAXGscrDhN+7HLeG2mc75+4rmNTsKcpE+992W3oLk2
	cfFgsKe7frL6ICq6P7Rw4FpIcAFXhh77Gax62YqtwGtuYyxHS+KCgjbOnSM8SDm/bUVCJY/g1k8oD
	RLyIzigBfJ5uHLu0E+IglI8JwtZtSxT0CPkODW4bHDsF6jdMnW5PHfdl7mCr6BP1rjZdbLExxPGpD
	eBUUyCQnNeEE+EoUpweg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUVP-00017L-Ce; Fri, 15 May 2020 07:11:39 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUVF-00013Q-Aj
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:11:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id d7so1559303ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 00:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tt+z2QXtaemYOTrQbr/BmXHcmpgvLLmy4PAl95FbkpU=;
 b=L/Ca4AQayrVuzBB8yZyrO3D7tYVpozvH457DvHs352Wp1VSfJKm8r//QF6MSCmpbkH
 0GwKMVW57C2OfloktcoKGNArORBe5fgunch0drFGQ5xQZvaj+Eo8HRCS7xj+ctvvkO5o
 2Pe5cGM6oFzxGek6lVJCf1KttKUZYq8neXts0QXNfklSPVsqhXTtB/1JrNepfsrNYga7
 YpczpMFX1ULJhr9cmxc52UqZwthe1YHTnnpZ+ZjVS9E+vSf2AwDcRprBLx8kSPTvc3Py
 tBeq6vWaVZbzY8gqnDJ170TbOmDwO8jGNDHUHISIcc04uugvCAXmyyL9uypFw3DHPzIa
 ReJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tt+z2QXtaemYOTrQbr/BmXHcmpgvLLmy4PAl95FbkpU=;
 b=c/fkg4rJ+kGjyN7NI/8ATvuPsc4aEZ9AdC3cQPw1NnMAf9Xye4yG9niCLo2XimLgEJ
 1FMrgkXlW4EhVvahK7+ELb63gdmBKSAs294+OQTfmWPBdZ5/rz/vm4QaP9g5X5AvFgGM
 z5Wq/GFfe7Mn1jEKxEAoCkrXNKBs6bLZFu3WqxV6BU1lw8tgr735hHDXTJthB1ZZ4CC2
 kGHBhS3mjjoobjXKpQtFnX9JqBQmpDNIwUIw+6CwICzeBOGUS7JdCC3Iy/VIzUktGwEJ
 bdtejoWCAkwULgUW4sB2GC2Ec0V0zdIOfkzjB9R1GaaBoJHw1G8CMvzjThy8UcjRjLJa
 CBOA==
X-Gm-Message-State: AOAM533anthKIJVbYucZWGUT0ZAETKu5uN7BgolOVvUK5ZLOR2GMC924
 XMmJCAJh1m0LIRiYqgyIEJHhe1KSF8Rh+rcAZCTLEQ==
X-Google-Smtp-Source: ABdhPJw2UZPqM2c9AdQ/V2iFTXgewM1zVBwPnll86PitN+1yQpAcr0xdHMo5F1vMIZ2tP/UG8KrfG8WtcaA8puMhawg=
X-Received: by 2002:a02:a60f:: with SMTP id c15mr552139jam.24.1589526685801;
 Fri, 15 May 2020 00:11:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200514075942.10136-1-brgl@bgdev.pl>
 <20200514075942.10136-11-brgl@bgdev.pl>
 <CAK8P3a3=xgbvqrSpCK5h96eRH32AA7xnoK2ossvT0-cLFLzmXA@mail.gmail.com>
In-Reply-To: <CAK8P3a3=xgbvqrSpCK5h96eRH32AA7xnoK2ossvT0-cLFLzmXA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 15 May 2020 09:11:14 +0200
Message-ID: <CAMRc=MeypzZBHo6dJGKm4JujYyejqHxtdo7Ts95DXuL0VuMYCw@mail.gmail.com>
Subject: Re: [PATCH v3 10/15] net: ethernet: mtk-eth-mac: new driver
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_001129_376803_74627E8A 
X-CRM114-Status: GOOD (  35.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Jonathan Corbet <corbet@lwn.net>, Networking <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMTQgbWFqIDIwMjAgbyAxODoxOSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiBu
YXBpc2HFgihhKToKPgo+IE9uIFRodSwgTWF5IDE0LCAyMDIwIGF0IDEwOjAwIEFNIEJhcnRvc3og
R29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+ID4KPiA+IEZyb206IEJhcnRvc3og
R29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPgo+ID4gVGhpcyBhZGRz
IHRoZSBkcml2ZXIgZm9yIHRoZSBNZWRpYVRlayBFdGhlcm5ldCBNQUMgdXNlZCBvbiB0aGUgTVQ4
KiBTb0MKPiA+IGZhbWlseS4gRm9yIG5vdyB3ZSBvbmx5IHN1cHBvcnQgZnVsbC1kdXBsZXguCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJh
eWxpYnJlLmNvbT4KPgo+IExvb2tzIHZlcnkgbmljZSBvdmVyYWxsLiBKdXN0IGEgZmV3IHRoaW5n
cyBJIG5vdGljZWQsIGFuZCBzb21lIGlkZWFzCj4gdGhhdCBtYXkgb3IgbWF5IG5vdCBtYWtlIHNl
bnNlOgo+Cj4gPiArLyogVGhpcyBpcyBkZWZpbmVkIHRvIDAgb24gYXJtNjQgaW4gYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9wcm9jZXNzb3IuaCBidXQKPiA+ICsgKiB0aGlzIElQIGRvZXNuJ3Qgd29y
ayB3aXRob3V0IHRoaXMgYWxpZ25tZW50IGJlaW5nIGVxdWFsIHRvIDIuCj4gPiArICovCj4gPiAr
I2lmZGVmIE5FVF9JUF9BTElHTgo+ID4gKyN1bmRlZiBORVRfSVBfQUxJR04KPiA+ICsjZW5kaWYK
PiA+ICsjZGVmaW5lIE5FVF9JUF9BTElHTiAgICAgICAgICAgICAgICAgICAgICAgICAgIDIKPgo+
IE1heWJlIHlvdSBzaG91bGQganVzdCBkZWZpbmUgeW91ciBvd24gbWFjcm8gaW5zdGVhZCBvZiBy
ZXBsYWNpbmcKPiB0aGUgbm9ybWFsIG9uZSB0aGVuPwo+CgpJIGRpZCBpbiBhbiBlYXJsaWVyIHZl
cnNpb24gYW5kIHdhcyB0b2xkIHRvIHVzZSBORVRfSVBfQUxJR04gYnV0IHRoZW4KZm91bmQgb3V0
IGl0cyB2YWx1ZSBvbiBhcm02NCBkb2Vzbid0IHdvcmsgZm9yIG1lIHNvIEkgZGlkIHRoZSB0aGlu
Zwp0aGF0IHdvbid0IG1ha2UgYW55Ym9keSBoYXBweSAtIHJlZGVmaW5lIHRoZSBleGlzdGluZyBj
b25zdGFudC4gOikKCj4gPiArc3RhdGljIHZvaWQgbXRrX21hY19sb2NrKHN0cnVjdCBtdGtfbWFj
X3ByaXYgKnByaXYpCj4gPiArewo+ID4gKyAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmcHJpdi0+
bG9jaywgcHJpdi0+bG9ja19mbGFncyk7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB2b2lkIG10
a19tYWNfdW5sb2NrKHN0cnVjdCBtdGtfbWFjX3ByaXYgKnByaXYpCj4gPiArewo+ID4gKyAgICAg
ICBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwcml2LT5sb2NrLCBwcml2LT5sb2NrX2ZsYWdzKTsK
PiA+ICt9Cj4KPiBUaGlzIGxvb2tzIHdyb25nOiB5b3Ugc2hvdWxkIG5vdCBoYXZlIHNoYXJlZCAn
ZmxhZ3MnIHBhc3NlZCBpbnRvCj4gc3Bpbl9sb2NrX2lycXNhdmUoKSwgYW5kIEkgZG9uJ3QgZXZl
biBzZWUgYSBuZWVkIHRvIHVzZSB0aGUKPiBpcnFzYXZlIHZhcmlhbnQgb2YgdGhlIGxvY2sgaW4g
dGhlIGZpcnN0IHBsYWNlLgo+Cj4gTWF5YmUgc3RhcnQgYnkgb3Blbi1jb2RpbmcgdGhlIGxvY2sg
YW5kIHJlbW92ZSB0aGUgd3JhcHBlcnMKPiBhYm92ZS4KPgo+IFRoZW4gc2VlIGlmIHlvdSBjYW4g
dXNlIGEgY2hlYXBlciBzcGluX2xvY2tfYmgoKSBvciBwbGFpbiBzcGluX2xvY2soKQo+IGluc3Rl
YWQgb2YgaXJxc2F2ZS4KPgoKVGhpcyBpcyBmcm9tIGFuIGVhcmxpZXIgdmVyc2lvbiB3aGVyZSBJ
IGRpZCBhIGxvdCBtb3JlIGluIGhhcmQgaXJxCmNvbnRleHQuIE5vdyB0aGF0IGFsbW9zdCBhbGwg
b2YgdGhlIHByb2Nlc3NpbmcgaGFwcGVucyBpbiBzb2Z0LWlycQpjb250ZXh0IEkgZ3Vlc3MgeW91
J3JlIHJpZ2h0IC0gSSBjYW4gZ28gd2l0aCBhIHJlZ3VsYXIgc3Bpbl9sb2NrKCkuCgo+IEZpbmFs
bHksIHNlZSBpZiB0aGlzIGNhbiBiZSBkb25lIGluIGEgbG9ja2xlc3Mgd2F5IGJ5IHJlbHlpbmcg
b24KPiBhcHByb3ByaWF0ZSBiYXJyaWVycyBhbmQgc2VwYXJhdGluZyB0aGUgd3JpdGVycyBpbnRv
IHNlcGFyYXRlCj4gY2FjaGUgbGluZXMuIEZyb20gYSBicmllZiBsb29rIGF0IHRoZSBkcml2ZXIg
SSB0aGluayBpdCBjYW4gYmUgZG9uZQo+IHdpdGhvdXQgdG9vIG11Y2ggdHJvdWJsZS4KPgoKVW5m
b3J0dW5hdGVseSBJIGRvIG5lZWQgc29tZSBsb2NraW5nLiBBY2Nlc3NpbmcgUlggYW5kIFRYIGRl
c2NyaXB0b3JzCmF0IHRoZSBzYW1lIHRpbWUgc2VlbXMgdG8gdXBzZXQgdGhlIGNvbnRyb2xsZXIu
IEkgZXhwZXJpbWVudGVkIGEgbG90CndpdGggYmFycmllcnMgYnV0IGl0IHR1cm5lZCBvdXQgdGhh
dCBJIGdvdCBhIGxvdCBvZiB3ZWlyZCBidWdzIGF0IGhpZ2gKdGhyb3VnaHB1dC4KCj4gPiArc3Rh
dGljIHVuc2lnbmVkIGludCBtdGtfbWFjX2ludHJfcmVhZF9hbmRfY2xlYXIoc3RydWN0IG10a19t
YWNfcHJpdiAqcHJpdikKPiA+ICt7Cj4gPiArICAgICAgIHVuc2lnbmVkIGludCB2YWw7Cj4gPiAr
Cj4gPiArICAgICAgIHJlZ21hcF9yZWFkKHByaXYtPnJlZ3MsIE1US19NQUNfUkVHX0lOVF9TVFMs
ICZ2YWwpOwo+ID4gKyAgICAgICByZWdtYXBfd3JpdGUocHJpdi0+cmVncywgTVRLX01BQ19SRUdf
SU5UX1NUUywgdmFsKTsKPiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIHZhbDsKPiA+ICt9Cj4KPiBE
byB5b3UgYWN0dWFsbHkgbmVlZCB0byByZWFkIHRoZSByZWdpc3Rlcj8gVGhhdCBpcyB1c3VhbGx5
IGEgcmVsYXRpdmVseQo+IGV4cGVuc2l2ZSBvcGVyYXRpb24sIHNvIGlmIHBvc3NpYmxlIHRyeSB0
byB1c2UgY2xlYXIgdGhlIGJpdHMgd2hlbgo+IHlvdSBkb24ndCBjYXJlIHdoaWNoIGJpdHMgd2Vy
ZSBzZXQuCj4KCkkgZG8gY2FyZSwgSSdtIGFmcmFpZC4gVGhlIHJldHVybmVkIHZhbHVlIGlzIGJl
aW5nIHVzZWQgaW4gdGhlIG5hcGkKcG9sbCBjYWxsYmFjayB0byBzZWUgd2hpY2ggcmluZyB0byBw
cm9jZXNzLgoKPiA+ICsvKiBBbGwgcHJvY2Vzc2luZyBmb3IgVFggYW5kIFJYIGhhcHBlbnMgaW4g
dGhlIG5hcGkgcG9sbCBjYWxsYmFjay4gKi8KPiA+ICtzdGF0aWMgaXJxcmV0dXJuX3QgbXRrX21h
Y19oYW5kbGVfaXJxKGludCBpcnEsIHZvaWQgKmRhdGEpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1
Y3QgbXRrX21hY19wcml2ICpwcml2Owo+ID4gKyAgICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqbmRl
djsKPiA+ICsKPiA+ICsgICAgICAgbmRldiA9IGRhdGE7Cj4gPiArICAgICAgIHByaXYgPSBuZXRk
ZXZfcHJpdihuZGV2KTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKG5ldGlmX3J1bm5pbmcobmRldikp
IHsKPiA+ICsgICAgICAgICAgICAgICBtdGtfbWFjX2ludHJfbWFza19hbGwocHJpdik7Cj4gPiAr
ICAgICAgICAgICAgICAgbmFwaV9zY2hlZHVsZSgmcHJpdi0+bmFwaSk7Cj4gPiArICAgICAgIH0K
PiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOwo+Cj4KPiA+ICtzdGF0aWMgaW50
IG10a19tYWNfbmV0ZGV2X3N0YXJ0X3htaXQoc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqbmRldikK
PiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBtdGtfbWFjX3ByaXYgKnByaXYgPSBuZXRkZXZfcHJp
dihuZGV2KTsKPiA+ICsgICAgICAgc3RydWN0IG10a19tYWNfcmluZyAqcmluZyA9ICZwcml2LT50
eF9yaW5nOwo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBtdGtfbWFjX2dldF9kZXYo
cHJpdik7Cj4gPiArICAgICAgIHN0cnVjdCBtdGtfbWFjX3JpbmdfZGVzY19kYXRhIGRlc2NfZGF0
YTsKPiA+ICsKPiA+ICsgICAgICAgZGVzY19kYXRhLmRtYV9hZGRyID0gbXRrX21hY19kbWFfbWFw
X3R4KHByaXYsIHNrYik7Cj4gPiArICAgICAgIGlmIChkbWFfbWFwcGluZ19lcnJvcihkZXYsIGRl
c2NfZGF0YS5kbWFfYWRkcikpCj4gPiArICAgICAgICAgICAgICAgZ290byBlcnJfZHJvcF9wYWNr
ZXQ7Cj4gPiArCj4gPiArICAgICAgIGRlc2NfZGF0YS5za2IgPSBza2I7Cj4gPiArICAgICAgIGRl
c2NfZGF0YS5sZW4gPSBza2ItPmxlbjsKPiA+ICsKPiA+ICsgICAgICAgbXRrX21hY19sb2NrKHBy
aXYpOwo+ID4gKyAgICAgICBtdGtfbWFjX3JpbmdfcHVzaF9oZWFkX3R4KHJpbmcsICZkZXNjX2Rh
dGEpOwo+ID4gKwo+ID4gKyAgICAgICBpZiAobXRrX21hY19yaW5nX2Z1bGwocmluZykpCj4gPiAr
ICAgICAgICAgICAgICAgbmV0aWZfc3RvcF9xdWV1ZShuZGV2KTsKPiA+ICsgICAgICAgbXRrX21h
Y191bmxvY2socHJpdik7Cj4gPiArCj4gPiArICAgICAgIG10a19tYWNfZG1hX3Jlc3VtZV90eChw
cml2KTsKPiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIE5FVERFVl9UWF9PSzsKPiA+ICsKPiA+ICtl
cnJfZHJvcF9wYWNrZXQ6Cj4gPiArICAgICAgIGRldl9rZnJlZV9za2Ioc2tiKTsKPiA+ICsgICAg
ICAgbmRldi0+c3RhdHMudHhfZHJvcHBlZCsrOwo+ID4gKyAgICAgICByZXR1cm4gTkVUREVWX1RY
X0JVU1k7Cj4gPiArfQo+Cj4gSSB3b3VsZCBhbHdheXMgYWRkIEJRTCBmbG93IGNvbnRyb2wgaW4g
bmV3IGRyaXZlcnMsIHVzaW5nCj4gbmV0ZGV2X3NlbnRfcXVldWUgaGVyZS4uLgo+CgpPaywgd2ls
bCBkby4KCj4gPiArc3RhdGljIGludCBtdGtfbWFjX3R4X2NvbXBsZXRlX29uZShzdHJ1Y3QgbXRr
X21hY19wcml2ICpwcml2KQo+ID4gK3sKPiA+ICsgICAgICAgc3RydWN0IG10a19tYWNfcmluZyAq
cmluZyA9ICZwcml2LT50eF9yaW5nOwo+ID4gKyAgICAgICBzdHJ1Y3QgbXRrX21hY19yaW5nX2Rl
c2NfZGF0YSBkZXNjX2RhdGE7Cj4gPiArICAgICAgIGludCByZXQ7Cj4gPiArCj4gPiArICAgICAg
IHJldCA9IG10a19tYWNfcmluZ19wb3BfdGFpbChyaW5nLCAmZGVzY19kYXRhKTsKPiA+ICsgICAg
ICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKwo+ID4gKyAg
ICAgICBtdGtfbWFjX2RtYV91bm1hcF90eChwcml2LCAmZGVzY19kYXRhKTsKPiA+ICsgICAgICAg
ZGV2X2tmcmVlX3NrYl9pcnEoZGVzY19kYXRhLnNrYik7Cj4gPiArCj4gPiArICAgICAgIHJldHVy
biAwOwo+ID4gK30KPgo+IC4uLiBhbmQgbmV0ZGV2X2NvbXBsZXRlZF9xdWV1ZSgpICBoZXJlLgo+
CgpTYW1lIGhlcmUuCgo+ID4gK3N0YXRpYyB2b2lkIG10a19tYWNfdHhfY29tcGxldGVfYWxsKHN0
cnVjdCBtdGtfbWFjX3ByaXYgKnByaXYpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgbXRrX21h
Y19yaW5nICpyaW5nID0gJnByaXYtPnR4X3Jpbmc7Cj4gPiArICAgICAgIHN0cnVjdCBuZXRfZGV2
aWNlICpuZGV2ID0gcHJpdi0+bmRldjsKPiA+ICsgICAgICAgaW50IHJldDsKPiA+ICsKPiA+ICsg
ICAgICAgZm9yICg7Oykgewo+ID4gKyAgICAgICAgICAgICAgIG10a19tYWNfbG9jayhwcml2KTsK
PiA+ICsKPiA+ICsgICAgICAgICAgICAgICBpZiAoIW10a19tYWNfcmluZ19kZXNjc19hdmFpbGFi
bGUocmluZykpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIG10a19tYWNfdW5sb2NrKHBy
aXYpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiArICAgICAgICAgICAg
ICAgfQo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgIHJldCA9IG10a19tYWNfdHhfY29tcGxldGVf
b25lKHByaXYpOwo+ID4gKyAgICAgICAgICAgICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG10a19tYWNfdW5sb2NrKHByaXYpOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4gPiArICAgICAgICAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICAgICAg
ICAgIGlmIChuZXRpZl9xdWV1ZV9zdG9wcGVkKG5kZXYpKQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgbmV0aWZfd2FrZV9xdWV1ZShuZGV2KTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICBt
dGtfbWFjX3VubG9jayhwcml2KTsKPiA+ICsgICAgICAgfQo+ID4gK30KPgo+IEl0IGxvb2tzIGxp
a2UgbW9zdCBvZiB0aGUgc3R1ZmYgaW5zaWRlIG9mIHRoZSBsb29wIGNhbiBiZSBwdWxsZWQgb3V0
Cj4gYW5kIG9ubHkgZG9uZSBvbmNlIGhlcmUuCj4KCkkgZGlkIHRoYXQgaW4gb25lIG9mIHRoZSBw
cmV2aW91cyBzdWJtaXNzaW9ucyBidXQgaXQgd2FzIHBvaW50ZWQgb3V0CnRvIG1lIHRoYXQgYSBw
YXJhbGxlbCBUWCBwYXRoIG1heSBmaWxsIHVwIHRoZSBxdWV1ZSBiZWZvcmUgSSB3YWtlIGl0LgoK
PiA+ICtzdGF0aWMgaW50IG10a19tYWNfcG9sbChzdHJ1Y3QgbmFwaV9zdHJ1Y3QgKm5hcGksIGlu
dCBidWRnZXQpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgbXRrX21hY19wcml2ICpwcml2Owo+
ID4gKyAgICAgICB1bnNpZ25lZCBpbnQgc3RhdHVzOwo+ID4gKyAgICAgICBpbnQgcmVjZWl2ZWQg
PSAwOwo+ID4gKwo+ID4gKyAgICAgICBwcml2ID0gY29udGFpbmVyX29mKG5hcGksIHN0cnVjdCBt
dGtfbWFjX3ByaXYsIG5hcGkpOwo+ID4gKwo+ID4gKyAgICAgICBzdGF0dXMgPSBtdGtfbWFjX2lu
dHJfcmVhZF9hbmRfY2xlYXIocHJpdik7Cj4gPiArCj4gPiArICAgICAgIC8qIENsZWFuIHVwIFRY
ICovCj4gPiArICAgICAgIGlmIChzdGF0dXMgJiBNVEtfTUFDX0JJVF9JTlRfU1RTX1ROVEMpCj4g
PiArICAgICAgICAgICAgICAgbXRrX21hY190eF9jb21wbGV0ZV9hbGwocHJpdik7Cj4gPiArCj4g
PiArICAgICAgIC8qIFJlY2VpdmUgdXAgdG8gJGJ1ZGdldCBwYWNrZXRzICovCj4gPiArICAgICAg
IGlmIChzdGF0dXMgJiBNVEtfTUFDX0JJVF9JTlRfU1RTX0ZOUkMpCj4gPiArICAgICAgICAgICAg
ICAgcmVjZWl2ZWQgPSBtdGtfbWFjX3Byb2Nlc3NfcngocHJpdiwgYnVkZ2V0KTsKPiA+ICsKPiA+
ICsgICAgICAgLyogT25lIG9mIHRoZSBjb3VudGVyIHJlYWNoZWQgMHg4MDAwMDAwIC0gdXBkYXRl
IHN0YXRzIGFuZCByZXNldCBhbGwKPiA+ICsgICAgICAgICogY291bnRlcnMuCj4gPiArICAgICAg
ICAqLwo+ID4gKyAgICAgICBpZiAoc3RhdHVzICYgTVRLX01BQ19SRUdfSU5UX1NUU19NSUJfQ05U
X1RIKSB7Cj4gPiArICAgICAgICAgICAgICAgbXRrX21hY191cGRhdGVfc3RhdHMocHJpdik7Cj4g
PiArICAgICAgICAgICAgICAgbXRrX21hY19yZXNldF9jb3VudGVycyhwcml2KTsKPiA+ICsgICAg
ICAgfQo+ID4gKwo+ID4gKyAgICAgICBpZiAocmVjZWl2ZWQgPCBidWRnZXQpCj4gPiArICAgICAg
ICAgICAgICAgbmFwaV9jb21wbGV0ZV9kb25lKG5hcGksIHJlY2VpdmVkKTsKPiA+ICsKPiA+ICsg
ICAgICAgbXRrX21hY19pbnRyX3VubWFza19hbGwocHJpdik7Cj4gPiArCj4gPiArICAgICAgIHJl
dHVybiByZWNlaXZlZDsKPiA+ICt9Cj4KPiBJIHRoaW5rIHlvdSB3YW50IHRvIGxlYXZlIChhdCBs
ZWFzdCBzb21lIG9mKSB0aGUgaW50ZXJydXB0cyBtYXNrZWQKPiBpZiB5b3VyIGJ1ZGdldCBpcyBl
eGhhdXN0ZWQsIHRvIGF2b2lkIGdlbmVyYXRpbmcgdW5uZWNlc3NhcnkKPiBpcnFzLgo+CgpUaGUg
bmV0d29ya2luZyBzdGFjayBzaG91bGRuJ3QgcXVldWUgYW55IG5ldyBUWCBwYWNrZXRzIGlmIHRo
ZSBxdWV1ZQppcyBzdG9wcGVkIC0gaXMgdGhpcyByZWFsbHkgd29ydGggY29tcGxpY2F0aW5nIHRo
ZSBjb2RlPyBMb29rcyBsaWtlCnByZW1hdHVyZSBvcHRpbWl6YXRpb24gSU1PLgoKPiBJdCBtYXkg
YWxzbyBiZSBmYXN0ZXIgdG8gbm90IG1hc2svdW5tYXNrIGF0IGFsbCBidXQganVzdAo+IGNsZWFy
IHRoZSBpbnRlcnJ1cHRzIHRoYXQgeW91IGhhdmUgZmluaXNoZWQgcHJvY2Vzc2luZwo+CgpCYXJ0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
