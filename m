Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0061428157
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYFKOukXkkqIo6KEzHVgVYkVPP464/fjacDbck0Zrpo=; b=PG0TZ2V+m+KNt+
	c0dSsTjL4zh3IIYzoO7VxqwWxCFB4ABF4wR+VPeDOI++H9D3tcQB+V0Qhv9sBCxytyiFCaz+RUQlE
	VWJgjt+ldbpTViTGJcUVg1FGxD/PwkEs5L+ZzoKYBfM+d7kc3WdsbZVPUvw/u0B5KZZxy402wsYwi
	8oGriEmpD49yZjXEGY3QZxtUPvAh+pYkmRNwub0RFixdx7f8gLnmKH0joggb+VT6CozWZCSvLvujN
	jE+A7GzNR7VI/HmMB1Znb3MDYi7glHPtbUP8FZm1kSBDQu7H4vvFLwC3TIXsoxcBKl8NjBdcqASl1
	yyZPzPAhZt+W1ad6Q+tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpjt-00009J-9n; Thu, 23 May 2019 15:34:41 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpjj-00008b-V7
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:34:34 +0000
Received: by mail-it1-x142.google.com with SMTP id h20so10418198itk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z4KPzzFsdGcBdAr5bNG6JKh38d9/uHM4E4WIv1LXSx4=;
 b=YYadS9fNuoSsvmLh28CLlcNFOR4c0CO8CCadSPs02K2zUwG2Cov8aiLX/U+yGOAYGb
 R0KBvuagNFrO3HD3wgaOQmMm7OmGrpBAQIXWnTCLJHVsCCfbxaCPWs4UY9IihyiTZ9AV
 uBcmQrLpB4/R7JKLsgyCs+fsVwWCPv4y//sJAxbmyMXQ+LUs5zjs32+s55uwg0ecp9nQ
 F7Wim0HYNflr/5CcCtu/014icVLBvPbutqSzx0vGItbbaCLKx426zzLOFgd8n2W4sjk5
 qjrsJirsR3I42TOvUNtsBdkmd/5nLzCTshPBzcfQvDpnqGk6fNBgrMY8tda01I3Xolk1
 XT2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z4KPzzFsdGcBdAr5bNG6JKh38d9/uHM4E4WIv1LXSx4=;
 b=onPsLV8+3lKhc9cXQ8OjILiKa+IErajFHpecHrMwV5yBsBhLol4DNiqkSCUYvU8Flg
 eCagafBYYvs4VMmYIBHkqTbgU3wMVC1pCoK2iWmluj1oGt0DLCdwHKpf9LxLejFai6Ch
 pZeGcl4hmqYGZtD8R5pevlL4rp8DT4ETYpobFO0REasCsl6IrcRrIm8A4fi0e3GGhsJ/
 6lOdlKvERa9e6AR3BYocLeD+6Q6v31Xm9zJbxQlFGO8D1Y4dBYWHFCvPV18CUsJZ1HRJ
 w8K2W9dqby67QemFWS5gOiKAoL49C0nqu9O+qN5XUfJ4B6UKdfNM82kVLQgRLM7W5AVY
 7/og==
X-Gm-Message-State: APjAAAWYBU322oc1JdtMuwdJ8P2NhE9kmEI7jvfpNML0m7kodQL7Q7KX
 NU/mo2qLmUDWvoOBYgVhAMrLaP79Gt+RpnhaO0i25g==
X-Google-Smtp-Source: APXvYqwOyTiWj7DRNZuwkOCP8cSldAHhrwF14HATAzXUOruWpcjC64EzkCng07uLWqWchLgSG8+SA02W9UGBjHjD4ik=
X-Received: by 2002:a24:e409:: with SMTP id o9mr14808892ith.4.1558625670960;
 Thu, 23 May 2019 08:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190417144709.19588-1-brgl@bgdev.pl>
 <20190417144709.19588-2-brgl@bgdev.pl>
 <187fdcd8-4cc8-3871-ee66-1ebd7408b1fe@linaro.org>
 <CAMRc=MdQ_GORGaw1szwvBRqKzkZQCZNnEcwkNzmGduEbiDR4Lw@mail.gmail.com>
 <ca00f49f-0fa2-1907-feac-ba798dce365b@linaro.org>
In-Reply-To: <ca00f49f-0fa2-1907-feac-ba798dce365b@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 23 May 2019 17:34:20 +0200
Message-ID: <CAMRc=Mf37TZZO00tbXhAyxzNBYx9C-farKNQ=9vmVWZY59KC2w@mail.gmail.com>
Subject: Re: [RFC 1/2] clocksource: davinci-timer: add support for clockevents
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083432_046924_B944512B 
X-CRM114-Status: GOOD (  29.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjMgbWFqIDIwMTkgbyAxNToyNSBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPgo+IEhpIEJhcnRvc3osCj4KPgo+Cj4gT24gMjMv
MDUvMjAxOSAxNDo1OCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPgo+IFsgLi4uIF0KPgo+
ID4+PiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWRhdmluY2kuYwo+ID4+PiBAQCAt
MCwwICsxLDI3MiBAQAo+ID4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seQo+ID4+PiArLy8KPiA+Pj4gKy8vIFRJIERhVmluY2kgY2xvY2tzb3VyY2UgZHJpdmVyCj4g
Pj4+ICsvLwo+ID4+PiArLy8gQ29weXJpZ2h0IChDKSAyMDE5IFRleGFzIEluc3RydW1lbnRzCj4g
Pj4+ICsvLyBBdXRob3I6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJy
ZS5jb20+Cj4gPj4+ICsvLyAod2l0aCB0aW55IHBhcnRzIGFkb3B0ZWQgZnJvbSBjb2RlIGJ5IEtl
dmluIEhpbG1hbiA8a2hpbG1hbkBiYXlsaWJyZS5jb20+KQo+ID4+Cj4gPj4gVGhlIGhlYWRlciBm
b3JtYXQgaXMgd3JvbmcsIGl0IHNob3VsZCBiZToKPiA+Pgo+ID4+IC8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiA+PiAvKgo+ID4+ICAqIFRJIERhVmluY2kgY2xvY2tz
b3VyY2UgZHJpdmVyCj4gPj4gICoKPiA+PiAgKiAuLi4KPiA+PiAgKiAuLi4KPiA+PiAgKgo+ID4+
ICAqLwo+ID4KPiA+IEl0J3Mgbm90IHdyb25nLiBJdCBsb29rcyBsaWtlIGl0J3MgYXQgdGhlIG1h
aW50YWluZXJzIGRpc2NyZXRpb24gYW5kCj4gPiBJJ3ZlIGJlZW4gYXNrZWQgdG8gdXNlIGJvdGgg
Zm9ybXMgYnkgZGlmZmVyZW50IG1haW50YWluZXJzLiBTZWVtcyB5b3UKPiA+IGp1c3QgY2FuJ3Qg
Z2V0IGl0IHJpZ2h0LiA6KSBJJ3ZlIGNoYW5nZWQgaXQgaW4gdjIgdGhvdWdoLgo+Cj4gUmlnaHQs
IEkndmUgYmVlbiB0aHJvdWdoIHRoZSBkb2N1bWVudGF0aW9uIGJ1dCBpdCBpcyBzdGlsbCB1bmNs
ZWFyIGZvcgo+IG1lLiBTbyBsZXQncyBzdGljayB0byB3aGF0ZXZlciB5b3Ugd2FudCBmb3Igbm93
Lgo+Cj4gWyAuLi4gXQo+Cj4gPj4+ICtzdGF0aWMgaW50Cj4gPj4+ICtkYXZpbmNpX2Nsb2NrZXZl
bnRfc2V0X25leHRfZXZlbnRfc3RkKHVuc2lnbmVkIGxvbmcgY3ljbGVzLAo+ID4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgY2xvY2tfZXZlbnRfZGV2aWNlICpk
ZXYpCj4gPj4+ICt7Cj4gPj4+ICsgICAgIHN0cnVjdCBkYXZpbmNpX2Nsb2NrZXZlbnQgKmNsb2Nr
ZXZlbnQ7Cj4gPj4+ICsgICAgIHVuc2lnbmVkIGludCBlbmFtb2RlOwo+ID4+PiArCj4gPj4+ICsg
ICAgIGNsb2NrZXZlbnQgPSB0b19kYXZpbmNpX2Nsb2NrZXZlbnQoZGV2KTsKPiA+Pj4gKyAgICAg
ZW5hbW9kZSA9IGNsb2NrZXZlbnQtPmVuYW1vZGVfZGlzYWJsZWQ7Cj4gPj4+ICsKPiA+Pj4gKyAg
ICAgZGF2aW5jaV9jbG9ja2V2ZW50X3VwZGF0ZShjbG9ja2V2ZW50LCBEQVZJTkNJX1RJTUVSX1JF
R19UQ1IsCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tldmVudC0+
ZW5hbW9kZV9tYXNrLAo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
ZXZlbnQtPmVuYW1vZGVfZGlzYWJsZWQpOwo+ID4+Cj4gPj4gV2hhdCBpcyBmb3IgdGhpcyBmdW5j
dGlvbiB3aXRoIHRoZSBEQVZJTkNJX1RJTUVSX1JFR19UQ1IgcGFyYW1ldGVyPwo+ID4KPiA+IEkn
bSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIHF1ZXN0aW9uLiA6KAo+Cj4gSSBtZWFudCBkYXZp
bmNpX2Nsb2NrZXZlbnRfdXBkYXRlIGlzIGFsd2F5cyBjYWxsZWQgd2l0aCB0aGUKPiBEQVZJTkNJ
X1RJTUVSX1JFR19UQ1IgcGFyYW1ldGVyLgo+Cj4gU28gaXQgY2FuIGJlIGNoYW5nZWQgdG86Cj4g
c3RhdGljIHZvaWQgZGF2aW5jaV9jbG9ja2V2ZW50X3VwZGF0ZShzdHJ1Y3QgZGF2aW5jaV9jbG9j
a2V2ZW50Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
KmNsb2NrZXZlbnQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVu
c2lnbmVkIGludCBtYXNrLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB1bnNpZ25lZCBpbnQgdmFsKQo+IHsKPiAgICAgICAgIGRhdmluY2lfcmVnX3VwZGF0ZShjbG9j
a2V2ZW50LT5iYXNlLCBEQVZJTkNJX1RJTUVSX1JFR19UQ1IsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgbWFzaywgdmFsKTsKPiB9Cj4KClllcywgdGhpcyBpcyBwcmV0dHkgbXVj
aCB3aGF0IEkgZGlkIGluIHYyLgoKPgo+IEFsdGVybmF0aXZlbHkgZGF2aW5jaV9jbG9ja2V2ZW50
X3VwZGF0ZSBjYW4gYmUgcmVwbGFjZWQgYnkgYSBkaXJlY3QgY2FsbAo+IHRvIGRhdmluY2lfcmVn
X3VwZGF0ZS4KPgo+IFsgLi4uIF0KPgo+ID4+PiArICAgICBjbG9ja2V2ZW50LT5kZXYuY3B1bWFz
ayA9IGNwdW1hc2tfb2YoMCk7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgY2xvY2tldmVudC0+YmFzZSA9
IGJhc2U7Cj4gPj4+ICsgICAgIGNsb2NrZXZlbnQtPnRpbV9vZmYgPSBEQVZJTkNJX1RJTUVSX1JF
R19USU0xMjsKPiA+Pj4gKyAgICAgY2xvY2tldmVudC0+cHJkX29mZiA9IERBVklOQ0lfVElNRVJf
UkVHX1BSRDEyOwo+ID4+PiArCj4gPj4+ICsgICAgIHNoaWZ0ID0gREFWSU5DSV9USU1FUl9FTkFN
T0RFX1NISUZUX1RJTTEyOwo+ID4+PiArICAgICBjbG9ja2V2ZW50LT5lbmFtb2RlX2Rpc2FibGVk
ID0gREFWSU5DSV9USU1FUl9FTkFNT0RFX0RJU0FCTEVEIDw8IHNoaWZ0Owo+ID4+PiArICAgICBj
bG9ja2V2ZW50LT5lbmFtb2RlX29uZXNob3QgPSBEQVZJTkNJX1RJTUVSX0VOQU1PREVfT05FU0hP
VCA8PCBzaGlmdDsKPiA+Pj4gKyAgICAgY2xvY2tldmVudC0+ZW5hbW9kZV9wZXJpb2RpYyA9IERB
VklOQ0lfVElNRVJfRU5BTU9ERV9QRVJJT0RJQyA8PCBzaGlmdDsKPiA+Pj4gKyAgICAgY2xvY2tl
dmVudC0+ZW5hbW9kZV9tYXNrID0gREFWSU5DSV9USU1FUl9FTkFNT0RFX01BU0sgPDwgc2hpZnQ7
Cj4gPj4KPiA+PiBJIGRvbid0IHNlZSB3aGVyZSAnc2hpZnQnIGNhbiBiZSBkaWZmZXJlbnQgZnJv
bSBUSU0xMiBoZXJlIG5laXRoZXIgaW4KPiA+PiB0aGUgc2Vjb25kIHBhdGNoIGZvciB0aG9zZSB2
YWx1ZXMuIFdoeSBjcmVhdGUgdGhlc2UgZmllbGRzIGluc3RlYWQgb2YKPiA+PiBwcmUtY29tcHV0
ZWQgbWFjcm9zPwo+ID4+Cj4gPgo+ID4gVGhlIHZhcmlhYmxlICdzaGlmdCcgaGVyZSBpcyBvbmx5
IHRvIGF2b2lkIGJyZWFraW5nIHRoZSBsaW5lcyAoanVzdCBhIGhlbHBlcikuCj4gPgo+ID4gVGhl
IHNoaWZ0IGl0c2VsZiBjYW4gYmUgZGlmZmVyZW50IHRob3VnaCBpbiB0aGUgc2Vjb25kIHBhdGNo
IC0KPiA+IHNwZWNpZmljYWxseSB3aGVuIGNhbGxpbmcgZGF2aW5jaV9jbG9ja3NvdXJjZV9pbml0
KCkuCj4gPgo+ID4gSWYgSSB3ZXJlIHRvIHVzZSBwcmVkZWZpbmVkIHZhbHVlcyBmb3IgY2xvY2tl
dmVudCwgd2UnZCBzdGlsbCBuZWVkCj4gPiBhbm90aGVyIHNldCBvZiB2YWx1ZXMgZm9yIGNsb2Nr
c291cmNlLiBJIHRoaW5rIGl0J3MgY2xlYXJlciB0aGUgd2F5IGl0Cj4gPiBpcy4KPgo+IEFoIHll
cywgSSBzZWUsIGl0IGlzIHBhc3NlZCBhcyBwYXJhbWV0ZXIuIE9rLCBsZXQncyBrZWVwIGl0IHRo
aXMgd2F5IGlmCj4geW91IHByZWZlci4KPgo+ID4+PiArICAgICBpZiAodGltZXJfY2ZnLT5jbXBf
b2ZmKSB7Cj4gPj4+ICsgICAgICAgICAgICAgY2xvY2tldmVudC0+Y21wX29mZiA9IHRpbWVyX2Nm
Zy0+Y21wX29mZjsKPiA+Pj4gKyAgICAgICAgICAgICBjbG9ja2V2ZW50LT5kZXYuc2V0X25leHRf
ZXZlbnQgPQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkYXZpbmNpX2Nsb2Nr
ZXZlbnRfc2V0X25leHRfZXZlbnRfY21wOwo+ID4+PiArICAgICB9IGVsc2Ugewo+ID4+PiArICAg
ICAgICAgICAgIGNsb2NrZXZlbnQtPmRldi5zZXRfbmV4dF9ldmVudCA9Cj4gPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGRhdmluY2lfY2xvY2tldmVudF9zZXRfbmV4dF9ldmVudF9z
dGQ7Cj4gPj4+ICsgICAgIH0KPiA+Pj4gKwo+ID4+PiArICAgICBydiA9IHJlcXVlc3RfaXJxKHRp
bWVyX2NmZy0+aXJxW0RBVklOQ0lfVElNRVJfQ0xPQ0tFVkVOVF9JUlFdLnN0YXJ0LAo+ID4+PiAr
ICAgICAgICAgICAgICAgICAgICAgIGRhdmluY2lfdGltZXJfaXJxX3RpbWVyLCBJUlFGX1RJTUVS
LAo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICJjbG9ja2V2ZW50IiwgY2xvY2tldmVudCk7
Cj4gPj4KPiA+PiBNYXkgYmUgcmVwbGFjZSAiY2xvY2tldmVudCIgYnkgZWcuICJ0aW0xMiI/Cj4g
Pj4KPiA+Cj4gPiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSBnb29kIGlkZWEuIE5vdyBpZiB5b3Ug
bG9vayBhdCAvcHJvYy9pbnRlcnJ1cHRzCj4gPiB5b3UgY2FuIHRlbGwgaW1tZWRpYXRlbHkgd2hh
dCB0aGUgaW50ZXJydXB0IGlzIGZvciAoImNsb2NrZXZlbnQiKS4KPiA+IFdpdGggInRpbTEyIiBp
dCdzIG5vIGxvbmdlciB0aGF0IGNsZWFyLgo+Cj4gWWVzLCAidGltMTIiIGNhbiBiZSBjb25mdXNp
bmcuIEhvd2V2ZXIsIGl0IGlzIGdvb2QgcHJhY3RpY2UgdG8gYWRkIGEKPiBkZXZpY2UgbmFtZSBh
c2lkZSB3aXRoIGl0cyBwdXJwb3NlIGluIGNhc2UgdGhlcmUgYXJlIHNldmVyYWwgdGltZXJzCj4g
ZGVmaW5lZCBvbiB0aGUgc3lzdGVtLiAiY2xvY2tldmVudCIgaXMgYSBrZXJuZWwgaW50ZXJuYWwg
cmVwcmVzZW50YXRpb24KPiBvZiBhIHRpbWVyLCBzbyBtYXkgYmUgYSBuYW1lIGxpa2UgInRpbWVy
L3RpbTEyIiBvciBzb21ldGhpbmcgaW4gdGhlIHNhbWUKPiBzcGlyaXQgd291bGQgYmUgbW9yZSBh
ZGVxdWF0ZS4KPgoKSSdsbCB3YWl0IGZvciB5b3VyIGNvbW1lbnRzIG9uIHYyIGJlZm9yZSBjaGFu
Z2luZyBpdCBpbiB0aGUgZmluYWwgc3VibWlzc2lvbi4KClRoYW5rcywKQmFydAoKPgo+Cj4KPiAt
LQo+ICA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCj4KPiBGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFj
ZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo+IDxodHRwOi8vdHdpdHRlci5jb20v
IyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPiA8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1i
bG9nLz4gQmxvZwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
