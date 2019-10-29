Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C270DE9114
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 21:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdOplv89McwHeMSz9ozLtvOydfdlOgZLur7EnJumM3Q=; b=nFdDzjrO3Jbsb/
	PWAhMnlWO+EzElRGsgocToIeRzDpccBvhkC4wC/ui8cIOjzqtHY8wxajmIaAexKhx2OKD/W5ev50h
	K4ytk1MvCWexV19pZvZTbMoj1NaGCiYr7qsSsUfSjM6tT6x9ud6gLGnSZMcTe+k0Wg6YO0QqoRKVl
	7G9hxufKygelYz3zYMTNiI3SbaN7JaJpMerHRxuV2TPbJ6giKNnmeb2nvfR5O4LeCvaLOgateFkj6
	ZvsNYhqmH/v/G0wqUQEbH4vKmyKm87dMD2cNX4Oq7ruSpfJROCEPZvJKUDt+2vce8sK5dfay8UhNP
	fnXO4YKK1tNwMzjWosYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYTN-0005jc-PO; Tue, 29 Oct 2019 20:52:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYTB-0005hl-69; Tue, 29 Oct 2019 20:52:02 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6AB6217F9;
 Tue, 29 Oct 2019 20:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572382320;
 bh=v0+2wjHOV3TPOZBmkD3JlMqMySjlcS3TjLyd/H3+Vb0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jeoJsxjjNE6CGSF/eDsifXtRv6MFoyej58BzCWJ9dtainNbQLHgEBmBOdDbzmlzS3
 8mPLRij1NWGeikAECXh3rin5I3GSDRdDiraYmtN5V48K62fm2+iR+6UYtVtQYbGsuK
 QXNe/3IhAVfAR2fVXlHywPQiAUit8DyD+WOu+YwM=
Received: by mail-qt1-f173.google.com with SMTP id y39so156231qty.0;
 Tue, 29 Oct 2019 13:52:00 -0700 (PDT)
X-Gm-Message-State: APjAAAXMcN6azFRTakbQtl03Rr4QyvcDwtQNr3cek9Cppk/2zJfl6qY0
 nAoIAH08G8eQZJ0fdwwue8rnufChSjJ5tI6Sqg==
X-Google-Smtp-Source: APXvYqyeg1I39tq2DqoXkraIzTHFUcqmrXNzXXgnb3VS9R2ReFwbWaEL1h/jcRIEbWALZ20wYKpj3bIc8bfKSrVHldc=
X-Received: by 2002:ac8:65d5:: with SMTP id t21mr1315081qto.300.1572382319631; 
 Tue, 29 Oct 2019 13:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <1571983984-11771-1-git-send-email-xingyu.chen@amlogic.com>
 <1571983984-11771-3-git-send-email-xingyu.chen@amlogic.com>
 <20191025203030.GA28391@bogus>
 <1914e315-3cb7-9251-f871-0024e0e4f68b@amlogic.com>
In-Reply-To: <1914e315-3cb7-9251-f871-0024e0e4f68b@amlogic.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 29 Oct 2019 15:51:47 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLr-Cgu4yZFGTfO=qpFPLBZ1gb-1+DZ35eQX3dUsadm4g@mail.gmail.com>
Message-ID: <CAL_JsqLr-Cgu4yZFGTfO=qpFPLBZ1gb-1+DZ35eQX3dUsadm4g@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Xingyu Chen <xingyu.chen@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_135201_276405_1FB79B43 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jian Hu <jian.hu@amlogic.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMzozNSBBTSBYaW5neXUgQ2hlbiA8eGluZ3l1LmNoZW5A
YW1sb2dpYy5jb20+IHdyb3RlOgo+Cj4gSGksIFJvYgo+Cj4gT24gMjAxOS8xMC8yNiA0OjMwLCBS
b2IgSGVycmluZyB3cm90ZToKPiA+IE9uIEZyaSwgT2N0IDI1LCAyMDE5IGF0IDAyOjEzOjAyUE0g
KzA4MDAsIFhpbmd5dSBDaGVuIHdyb3RlOgo+ID4+IFRoZSBiaW5kaW5nIHRhcmdldHMgdGhlIE1l
c29uLUEvQyBzZXJpZXMgY29tcGF0aWJsZSBTb0NzLCBpbiB3aGljaCB0aGUKPiA+PiB3YXRjaGRv
ZyByZWdpc3RlcnMgYXJlIGluIHNlY3VyZSB3b3JsZC4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6
IFhpbmd5dSBDaGVuIDx4aW5neXUuY2hlbkBhbWxvZ2ljLmNvbT4KPiA+PiAtLS0KPiA+PiAgIC4u
Li9iaW5kaW5ncy93YXRjaGRvZy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbCAgIHwgMzQgKysr
KysrKysrKysrKysrKysrKysrKwo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMo
KykKPiA+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvd2F0Y2hkb2cvYW1sb2dpYyxtZXNvbi1zZWMtd2R0LnlhbWwKPiA+Pgo+ID4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvYW1sb2dp
YyxtZXNvbi1zZWMtd2R0LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
d2F0Y2hkb2cvYW1sb2dpYyxtZXNvbi1zZWMtd2R0LnlhbWwKPiA+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+ID4+IGluZGV4IDAwMDAwMDAwLi4wYmJjODA3Cj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9hbWxvZ2lj
LG1lc29uLXNlYy13ZHQueWFtbAo+ID4+IEBAIC0wLDAgKzEsMzQgQEAKPiA+PiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiA+PiArIyBDb3B5cmlnaHQgKGMp
IDIwMTkgQW1sb2dpYywgSW5jCj4gPj4gKyVZQU1MIDEuMgo+ID4+ICstLS0KPiA+PiArJGlkOiAi
aHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcG93ZXIvYW1sb2dpYyxtZXNvbi1zZWMtd2R0
LnlhbWwjIgo+ID4+ICskc2NoZW1hOiAiaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1h
cy9jb3JlLnlhbWwjIgo+ID4+ICsKPiA+PiArdGl0bGU6IEFtbG9naWMgTWVzb24gU2VjdXJlIFdh
dGNoZG9nIFRpbWVyCj4gPj4gKwo+ID4+ICttYWludGFpbmVyczoKPiA+PiArICAtIFhpbmd5dSBD
aGVuIDx4aW5neXUuY2hlbkBhbWxvZ2ljLmNvbT4KPiA+PiArCj4gPj4gK2Rlc2NyaXB0aW9uOiB8
Kwo+ID4+ICsgIFNlY3VyZSBXYXRjaGRvZyBUaW1lciB1c2VkIGluIE1lc29uLUEvQyBzZXJpZXMg
Q29tcGF0aWJsZSBTb0NzCj4gPj4gKwo+ID4+ICtwcm9wZXJ0aWVzOgo+ID4+ICsgIGNvbXBhdGli
bGU6Cj4gPj4gKyAgICBlbnVtOgo+ID4+ICsgICAgICAtIGFtbG9naWMsbWVzb24tc2VjLXdkdAo+
ID4KPiA+IElmIHRoZXJlIGFyZSBubyBvdGhlciBwcm9wZXJ0aWVzLCB0aGVuIHlvdSBkb24ndCBu
ZWVkIHRoaXMuIEp1c3QgaGF2ZQo+ID4gdGhlIHNlY3VyZSBmaXJtd2FyZSBkcml2ZXIgaW5zdGFu
dGlhdGUgdGhlIHdhdGNoZG9nLgo+IEknYW0gdmVyeSBzb3JyeSBpIGRvbid0IHVuZGVyc3RhbmQg
aG93IHRvIGluaXRpYWxpemUgdGhlIHdhdGNoZG9nIGRyaXZlcgo+IGlmIHRoZSBjb21wYXRpYmxl
IHByb3BlcnR5IGlzIHJlbW92ZWQsIENvdWxkIHlvdSBnaXZlIG1lIG1vcmUKPiBzdWdnZXN0aW9u
cyBvciBleGFtcGxlcyDvvJ8gVGhhbmsgeW91IHZlcnkgbXVjaC4KCnBsYXRmb3JtX2RldmljZV9y
ZWdpc3Rlcl9zaW1wbGUoKSBmcm9tIHRoZSBzZWN1cmUgZmlybXdhcmUgZHJpdmVyLgoKUm9iCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
