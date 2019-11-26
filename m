Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE9D109911
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 07:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jK8jnocfrlR8pvcfYfQcePnjKzofFvMoD2iEZNcpoFY=; b=FQP1oK9pJistVP
	nhapRHQ+fMduJCGRbheetVid9/UZVPUoUzKEu1GUjT2h6CNfTQprVjRzw5DoNlLNiJEktREK5aWo9
	N+UwlQa+6AAHpsR4p+WF8A83qbMHVq6zdfqoNDseXHPPquV+5VgtWd+PGUvP1JlCYi3K8+AXWlGvL
	/vCo1cDRfYZ1TFUXR8zeTNniK/cRcauJpBpGqkRcfJv603d2eaJCvSU3UGMHWbOTUxGjIg4J/IbGX
	f330wcK2sxPmgE+a0AvOqs0GIjHbYo7tv0WH9e/binHyhGzfSNleD5nmGqmvj2C5kljs3sQ5PtpSn
	08vIaoDTStn4nT54rXjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZU2i-0006LG-ES; Tue, 26 Nov 2019 06:09:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZU2a-0006Kh-Pj
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 06:09:38 +0000
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90F8720722
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 06:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574748575;
 bh=pHxQw4eAkDVM2NOdyDU2Qf2aPQMBOwtOkM9PYH46Vws=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kiBuFTigYwZGLvOACGTXFW13iDjzjtD3cPkIOnekL34wG1IppWnQZpwTnlvmjcWTV
 sjZhepeFmfbcT3aa0oJirH+VZRIrULYBuu4/NJM3r2zz107qZwcSd3j2D6mpZZUDPD
 VUzLSTlamDYz0Sb7zz+ucMU3kzft7sObn55ekn3I=
Received: by mail-lf1-f44.google.com with SMTP id l14so13022693lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 22:09:35 -0800 (PST)
X-Gm-Message-State: APjAAAUMobfVxsdzmyzzhO89BfXKlE9nGzfrKlnjRHmu56xhiQfmNwJM
 eny4FCYm7UkJRMqJwCEdZVvMzl5Zr9ttDzTNx5A=
X-Google-Smtp-Source: APXvYqz+mGoODbXvuWOpDuoB4deHWZfXkDpLgYpz6o9dXanE8DhcvBX9SLi7XUWlKABR+ahnXp9G2qAt2UtBvsZP3es=
X-Received: by 2002:ac2:51b5:: with SMTP id f21mr23141783lfk.159.1574748573659; 
 Mon, 25 Nov 2019 22:09:33 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191121072643epcas2p452071a503725c7764acf5084d24425b1@epcas2p4.samsung.com>
 <001001d5a03d$05de1f70$119a5e50$@samsung.com>
 <CAJKOXPckbRowhCmnJfT8-DT3gYaTpDOf0wVxmxdf-tZpOyM5ew@mail.gmail.com>
 <028901d5a3f6$e2d72310$a8856930$@samsung.com>
In-Reply-To: <028901d5a3f6$e2d72310$a8856930$@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 26 Nov 2019 14:09:22 +0800
X-Gmail-Original-Message-ID: <CAJKOXPdy=oxkwspt3CpF-qV5XRPMKrupMOpbWXJT3e7trqvXkw@mail.gmail.com>
Message-ID: <CAJKOXPdy=oxkwspt3CpF-qV5XRPMKrupMOpbWXJT3e7trqvXkw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: samsung: modularize samsung pinctrl driver
To: Hyunki Koo <hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_220936_877210_DE6BEC6C 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linus.walleij@linaro.org, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-gpio@vger.kernel.org, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyNiBOb3YgMjAxOSBhdCAwOToxNCwgSHl1bmtpIEtvbyA8aHl1bmtpMDAua29vQHNh
bXN1bmcuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgMjEgTm92IDIwMTkgYXQgMTY6MzgsIEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBU
aGFua3MgZm9yIHRoZSBwYXRjaC4gRmV3IGNvbW1lbnRzIGJlbG93Ogo+ID4KPiA+IE9uIFRodSwg
MjEgTm92IDIwMTkgYXQgMTU6MjYsIOq1rO2YhOq4sCA8aHl1bmtpMDAua29vQHNhbXN1bmcuY29t
PiB3cm90ZToKPiA+Pgo+ID4+IEVuYWJsZSBzYW1zdW5nIHBpbmN0cmwgZHJpdmVyIHRvIGJlIGNv
bXBpbGVkIGFzIG1vZHVsZXMuCj4gPgo+ID4gV2h5PyBXaGF0J3MgdGhlIGJlbmVmaXQ/IEFyZSBw
bGF0Zm9ybXMgY2FwYWJsZSBvZiBzdWNoIGJvb3Q/IFBpbmN0cmwgaXMgbmVlZGVkIGVhcmx5IC0g
ZXZlbiBiZWZvcmUgbW91bnRpbmcgcm9vdGZzLi4uCj4gPiBXaGF0IGFib3V0IG1vZHVsZSB1bmxv
YWRpbmc/IElzIGl0IHJlYXNvbmFibGU/Cj4gPiBQbGVhc2UgYW5zd2VyIHRvIGFsbCB0aGlzIGFs
c28gaW4gY29tbWl0IG1lc3NhZ2UuCj4gPgo+Cj4gU29ycnkgdG8gbGF0ZSBhbmQgVGhhbmsgeW91
IGZvciB5b3VyIGNvbW1lbnQsIEkgd291bGQgbGlrZSB0byBhcHBseSBHS0kgb24gdGhlIHBpbmN0
cmwgZHJpdmVyCj4gU28gSSB3b3VsZCBsaWtlIHRvIGN1dCBvZmYgZGVwZW5kZW5jeSBmcm9tIEFS
Q0hfRVhZTk9TLgoKVGhpcyBpcyBkcml2ZXIgZm9yIEV4eW5vcyBhbmQgUzNDIHNvIHdoeSBjdXR0
aW5nIG9mZiB0aGUgZGVwZW5kZW5jeT8gSQptZWFuLCB3YWl0LCBpdCBpcyBhIGRyaXZlciBmb3Ig
RXh5bm9zIHNvIGl0IGNhbm5vdCB3b3JrIG9uIG90aGVyCmJvYXJkcy4uLgoKPiBJIHdpbGwgc3Bs
aXQgaW50byB0d28gcGFydCwKPiBGaXJzdCwgY3V0IG9mZiB0aGUgZGVwZW5kZW5jeSB3aXRoIEFS
Q0hfRVhZTk9TIGluIGFyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybS4KPiBTZWNvbmQsIEkgd2ls
bCBtYWtlIHRoZSBwaW5jdHJsIGRyaXZlciBhcyBhIG1vZHVsZS4KClRoZW4geW91IGFyZSBkb2lu
ZyBpdCBpbiB3cm9uZyBvcmRlciAtIHRoaXMgcGF0Y2ggbWFrZXMgaXQgYXMgYSBtb2R1bGUKYnV0
IHlvdSBzZW5kIGl0IGFzIGZpcnN0IG9uZS4KCllvdSBkaWQgbm90IHJlc29sdmUgaG93ZXZlciBt
eSBxdWVzdGlvbnMgYWJvdXQ6CjEuIFdpbGwgdGhpcyBldmVuIHdvcms/IFdpbGwgcGxhdGZvcm1z
IGJvb3Q/CjIuIEhvdyBhcmUgeW91IGdvaW5nIHRvIGhhbmRsZSBtb2R1bGUgdW5sb2FkaW5nIHNp
bmNlIG9uIHB1cnBvc2Ugd2UKYWRkZWQgc3VwcHJlc3NfYmluZD8KCj4KPiA+Pgo+ID4+IENoYW5n
ZS1JZDogSTkyYTk5NTNjOTI4MzFhMzE2ZjdmNTAxNDY4OThmZjE5ODMxNTQ5ZWMKPiA+Cj4gPiBU
aGlzIGRvZXMgbm90IGJlbG9uZyB0byBHaXQuCj4gPgo+ID4+IFNpZ25lZC1vZmYtYnk6IEh5dW5r
aSBLb28gPGh5dW5raTAwLmtvb0BzYW1zdW5nLmNvbT4KPiA+Cj4gPllvdSAiRnJvbSIgbmFtZSBp
cyBkaWZmZXJlbnQgdGhhbiB3cml0dGVuIGhlcmUgaW4gU2lnbmVkLW9mZi1ieS4gVGhleSBzaG91
bGQgbWF0Y2ggYW5kIEkgZG8gbm90IGtub3cgS29yZWFuIHRvIGJlIGFibGUgdG8gdGVsbCB3aGV0
aGVyIHRoZXkgcmVhbGx5IG1hdGNoIG9yIG5vdCA6KS4KPiA+SG93IGFib3V0IHVzaW5nIExhdGlu
IHRyYW5zbGl0ZXJhdGlvbiBhbHNvIGluICJGcm9tIiBmaWVsZD8KPiA+Cj4gPj4gLS0tCj4gPj4g
IGRyaXZlcnMvcGluY3RybC9zYW1zdW5nL0tjb25maWcgICAgICAgICAgICAgICAgfCAgNSArLS0t
LQo+ID4+ICBkcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9NYWtlZmlsZSAgICAgICAgICAgICAgIHwg
MTMgKysrKysrKy0tLS0tLQo+ID4+ICBkcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9waW5jdHJsLWV4
eW5vcy1hcm0uYyAgIHwgIDIgKysKPiA+PiAgZHJpdmVycy9waW5jdHJsL3NhbXN1bmcvcGluY3Ry
bC1leHlub3MtYXJtNjQuYyB8ICAyICsrCj4gPj4gIGRyaXZlcnMvcGluY3RybC9zYW1zdW5nL3Bp
bmN0cmwtZXh5bm9zLmMgICAgICAgfCAgMiArKwo+ID4+ICBkcml2ZXJzL3BpbmN0cmwvc2Ftc3Vu
Zy9waW5jdHJsLXNhbXN1bmcuYyAgICAgIHwgMTMgKysrKysrKysrKysrKwo+ID4+ICA2IGZpbGVz
IGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9zYW1zdW5nL0tjb25maWcKPiA+PiBiL2RyaXZlcnMv
cGluY3RybC9zYW1zdW5nL0tjb25maWcgaW5kZXggNDI1ZmFkZDZjMzQ2Li4yNWUxNjk4NGVmMjMK
PiA+PiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9LY29uZmlnCj4g
Pj4gKysrIGIvZHJpdmVycy9waW5jdHJsL3NhbXN1bmcvS2NvbmZpZwo+ID4+IEBAIC0zLDE0ICsz
LDEzIEBACj4gPj4gICMgU2Ftc3VuZyBQaW4gY29udHJvbCBkcml2ZXJzCj4gPj4gICMKPiA+PiAg
Y29uZmlnIFBJTkNUUkxfU0FNU1VORwo+ID4+IC0gICAgICAgYm9vbAo+ID4+ICsgICAgICAgdHJp
c3RhdGUgIlBpbmN0cmwgZHJpdmVyIGRhdGEgZm9yIFNhbXN1bmcgU29DcyIKPiA+PiAgICAgICAg
IHNlbGVjdCBQSU5NVVgKPiA+PiAgICAgICAgIHNlbGVjdCBQSU5DT05GCj4gPj4KPiA+PiAgY29u
ZmlnIFBJTkNUUkxfRVhZTk9TCj4gPj4gICAgICAgICBib29sICJQaW5jdHJsIGRyaXZlciBkYXRh
IGZvciBTYW1zdW5nIEVYWU5PUyBTb0NzIgo+ID4+ICAgICAgICAgZGVwZW5kcyBvbiBPRiAmJiBH
UElPTElCICYmIChBUkNIX0VYWU5PUyB8fCBBUkNIX1M1UFYyMTApCj4gPj4gLSAgICAgICBzZWxl
Y3QgUElOQ1RSTF9TQU1TVU5HCj4gPj4gICAgICAgICBzZWxlY3QgUElOQ1RSTF9FWFlOT1NfQVJN
IGlmIEFSTSAmJiAoQVJDSF9FWFlOT1MgfHwgQVJDSF9TNVBWMjEwKQo+ID4+ICAgICAgICAgc2Vs
ZWN0IFBJTkNUUkxfRVhZTk9TX0FSTTY0IGlmIEFSTTY0ICYmIEFSQ0hfRVhZTk9TCj4gPj4KPiA+
PiBAQCAtMjUsOSArMjQsNyBAQCBjb25maWcgUElOQ1RSTF9FWFlOT1NfQVJNNjQgIGNvbmZpZyBQ
SU5DVFJMX1MzQzI0WFgKPiA+PiAgICAgICAgIGJvb2wgIlNhbXN1bmcgUzNDMjRYWCBTb0MgcGlu
Y3RybCBkcml2ZXIiCj4gPj4gICAgICAgICBkZXBlbmRzIG9uIEFSQ0hfUzNDMjRYWCAmJiBPRgo+
ID4+IC0gICAgICAgc2VsZWN0IFBJTkNUUkxfU0FNU1VORwo+ID4+Cj4gPj4gIGNvbmZpZyBQSU5D
VFJMX1MzQzY0WFgKPiA+PiAgICAgICAgIGJvb2wgIlNhbXN1bmcgUzNDNjRYWCBTb0MgcGluY3Ry
bCBkcml2ZXIiCj4gPj4gICAgICAgICBkZXBlbmRzIG9uIEFSQ0hfUzNDNjRYWAo+ID4+IC0gICAg
ICAgc2VsZWN0IFBJTkNUUkxfU0FNU1VORwo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0
cmwvc2Ftc3VuZy9NYWtlZmlsZQo+ID4+IGIvZHJpdmVycy9waW5jdHJsL3NhbXN1bmcvTWFrZWZp
bGUKPiA+PiBpbmRleCBlZDk1MWRmNmExMTIuLmIzYWMwMTgzOGI4YSAxMDA2NDQKPiA+PiAtLS0g
YS9kcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9NYWtlZmlsZQo+ID4+ICsrKyBiL2RyaXZlcnMvcGlu
Y3RybC9zYW1zdW5nL01ha2VmaWxlCj4gPj4gQEAgLTEsOSArMSwxMCBAQAo+ID4+ICAjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPj4gICMgU2Ftc3VuZyBwaW4gY29udHJvbCBk
cml2ZXJzCj4gPj4KPiA+PiAtb2JqLSQoQ09ORklHX1BJTkNUUkxfU0FNU1VORykgICs9IHBpbmN0
cmwtc2Ftc3VuZy5vCj4gPj4gLW9iai0kKENPTkZJR19QSU5DVFJMX0VYWU5PUykgICArPSBwaW5j
dHJsLWV4eW5vcy5vCj4gPj4gLW9iai0kKENPTkZJR19QSU5DVFJMX0VYWU5PU19BUk0pICAgICAg
ICs9IHBpbmN0cmwtZXh5bm9zLWFybS5vCj4gPj4gLW9iai0kKENPTkZJR19QSU5DVFJMX0VYWU5P
U19BUk02NCkgICAgICs9IHBpbmN0cmwtZXh5bm9zLWFybTY0Lm8KPiA+PiAtb2JqLSQoQ09ORklH
X1BJTkNUUkxfUzNDMjRYWCkgICs9IHBpbmN0cmwtczNjMjR4eC5vCj4gPj4gLW9iai0kKENPTkZJ
R19QSU5DVFJMX1MzQzY0WFgpICArPSBwaW5jdHJsLXMzYzY0eHgubwo+ID4+ICtvYmotJChDT05G
SUdfUElOQ1RSTF9TQU1TVU5HKSAgKz0gcGluY3RybC1zYW1zdW5nLXN1cGVyLm8KPiA+PiArcGlu
Y3RybC1zYW1zdW5nLXN1cGVyLSQoQ09ORklHX1BJTkNUUkxfU0FNU1VORykgICAgICAgICs9IHBp
bmN0cmwtc2Ftc3VuZy5vCj4gPj4gK3BpbmN0cmwtc2Ftc3VuZy1zdXBlci0kKENPTkZJR19QSU5D
VFJMX0VYWU5PUykgKz0gcGluY3RybC1leHlub3Mubwo+ID4+ICtwaW5jdHJsLXNhbXN1bmctc3Vw
ZXItJChDT05GSUdfUElOQ1RSTF9FWFlOT1NfQVJNKSAgICAgKz0gcGluY3RybC1leHlub3MtCj4g
Pj4gYXJtLm8KPiA+PiArcGluY3RybC1zYW1zdW5nLXN1cGVyLSQoQ09ORklHX1BJTkNUUkxfRVhZ
Tk9TX0FSTTY0KSAgICs9IHBpbmN0cmwtZXh5bm9zLQo+ID4+IGFybTY0Lm8KPiA+PiArcGluY3Ry
bC1zYW1zdW5nLXN1cGVyLSQoQ09ORklHX1BJTkNUUkxfUzNDMjRYWCkgICAgICAgICs9IHBpbmN0
cmwtczNjMjR4eC5vCj4gPj4gK3BpbmN0cmwtc2Ftc3VuZy1zdXBlci0kKENPTkZJR19QSU5DVFJM
X1MzQzY0WFgpICAgICAgICArPSBwaW5jdHJsLXMzYzY0eHgubwo+ID4KPiA+IEkgZG9uJ3QgZ2V0
IHdoeSB5b3UgbmVlZCB0byByZW5hbWUgb2JqIHRvIHBpbmN0cmwtc2Ftc3VuZy1zdXBlcj8KPgo+
IEkgd291bGQgbGlrZSB0byBtYWtlIHBpbmN0cmwgYXMgYSBzdXBlciBtb2R1bGUuIEl0IGlzIG1h
bnkgZGVwZW5kZW5jeSBiZXR3ZWVuIHBpbmN0cmwtZXh5bm9zLCBwaW5jdHItZXh5bm9zLWFybTY0
IGFuZCBwaW5jdHJsLXNhbXN1bmcKCk1pZ2h0IGJlIGEgc3R1cGlkIHF1ZXN0aW9uIGJ1dCB3aGF0
IGlzICJTdXBlciBtb2R1bGUiPwoKU2Vjb25kLCB0aGUgZGVwZW5kZW5jaWVzIGFyZSB0aGVyZSBi
ZWNhdXNlIHRoaXMgaXMgYSBpbnRlZ3JhbCBwYXJ0IG9mIHRoZW0uCgpJIHRoaW5rIEkgbWlzcyBz
b21lIGJpZ2dlciBwaWN0dXJlIGhlcmUgYmVjYXVzZSBJIHN0aWxsIGRvIG5vdAp1bmRlcnN0YW5k
IHdoYXQgeW91IHdhbnQgdG8gYWNoaWV2ZSBpbiB0aGUgZW5kICh3aHkgZG9pbmcgdGhpcyk/CgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
