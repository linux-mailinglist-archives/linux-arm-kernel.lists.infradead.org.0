Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E64381DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 01:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4npr/E0UJ1ilkYdXfe/hy9drSCPelOuZYV1kHzx6l6c=; b=kiBbGPzjIB6HLj
	ygvhomugeR79YblMahNIs0/s+rhjEcB4bkXujbFNFNyxEho1rVxwDfeLUxJ1M3OsAUsYNYVR93nxD
	Y3xeHa2hImvWUTfC+J66ag3wE6jW1A7beBSyUBAiXWBYFL/K66wq0iyeJed/FY/vQn+I/ydrJkmTd
	1Ng31yfKHLLDCA7yG2KgvTz3nftcFvEtcgxRspOtUUO+jduI8spnbVC6iQR+RHKXIy9q1MjrgssWv
	31TAcSkKHJtN7p/p3FJHvJnmk04Gp78+dadVnK0glj/edhY7ZX8L88E/N7ISu4cQRtOhrlzz6Tj4U
	ze0lE5RyGOF0iYrvK3SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1uX-0006KK-OW; Thu, 06 Jun 2019 23:35:09 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1uC-0006Im-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 23:34:50 +0000
Received: by mail-io1-xd41.google.com with SMTP id u19so7668ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 16:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qR1bZGe4vZm5UNM1Z3o+ewA8qVQUfKgaPaOusQDXksw=;
 b=I/ACQPIJwUGFXqdnJIbKbjzdmB0UBGRIgx5tpAiVHCXp/jq+cxts/g7R6X7z458Qrn
 oafYfY0GoAEmiecfYTfwNOBXIasDEPAmDImaUF7+ffjBO3r1ylpEVF/6BhoHsQNwzDrT
 cqVC1GatOBNJb6HoaHjbfJkRo261MMOibkOYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qR1bZGe4vZm5UNM1Z3o+ewA8qVQUfKgaPaOusQDXksw=;
 b=jWH+c/ZAMnNzbdDjGdGdeH8OLy6+exed0lnTvpTMYmekAb5eRfgPwXx869ESKOjDII
 HQ0A5KWEp2T1H/2SMHXI5nmItBX2vum9baPuKymgNdBMcjIFwC3j64ouPhCkqA6/Dzfr
 h1sGF0xF1Jsk/05iBKLX2iVCsxJHscsDx0bN1PPAlvFeKAGf2aHihHu5s3TA6AldUdBt
 jp5z7YMktBWF/e9n7E2Vygsu2krjDFEfgRjH6tWMxbpqBk8rbI6/UG27D7nUW+V8r7mW
 HAA/S4dZLJASy0idkydFdYbBVqiI6N/V0G/KDFcRA58wKbu26iKMbkayaRUdTFB8pZCb
 7mpA==
X-Gm-Message-State: APjAAAVk5YXTVDOfsGoAwwozoo6u5yld17eu/z7WuEPCkFF9sfsSacSZ
 n6kUuQTGYTvro+AMOF0fG0Dd78q2Nwo=
X-Google-Smtp-Source: APXvYqzfyzlYbEngw3fR9gkheYmbKE4gAwKXYdyB+UvOVxEFBCbrAd7l+V9ggdLbnM7Xnrz+A9tBPw==
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr5039752iol.269.1559864087128; 
 Thu, 06 Jun 2019 16:34:47 -0700 (PDT)
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com.
 [209.85.166.181])
 by smtp.gmail.com with ESMTPSA id j23sm115000itk.30.2019.06.06.16.34.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 16:34:46 -0700 (PDT)
Received: by mail-it1-f181.google.com with SMTP id a186so105525itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 16:34:46 -0700 (PDT)
X-Received: by 2002:a24:5a06:: with SMTP id v6mr2374588ita.160.1559864085929; 
 Thu, 06 Jun 2019 16:34:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605212427.GP40515@google.com>
 <2828678.vPWIEPrON5@diego> <3394571.WlNFeu2Orz@phil>
 <20190606175654.GQ40515@google.com>
In-Reply-To: <20190606175654.GQ40515@google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Jun 2019 16:34:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U-BOF79yJOW7S1CRudTqDN0BA8Ur3mJfg3C-+8P6fCew@mail.gmail.com>
Message-ID: <CAD=FV=U-BOF79yJOW7S1CRudTqDN0BA8Ur3mJfg3C-+8P6fCew@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_163448_580515_8E45C659 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIEp1biA2LCAyMDE5IGF0IDEwOjU2IEFNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgSnVuIDA2LCAyMDE5IGF0IDEyOjQ2
OjAzUE0gKzAyMDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gQW0gTWl0dHdvY2gsIDUuIEp1
bmkgMjAxOSwgMjM6NTI6MDAgQ0VTVCBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+ID4gPiBBbSBN
aXR0d29jaCwgNS4gSnVuaSAyMDE5LCAyMzoyNDoyNyBDRVNUIHNjaHJpZWIgTWF0dGhpYXMgS2Fl
aGxja2U6Cj4gPiA+ID4gT24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMTE6MTE6MTJQTSArMDIwMCwg
SGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiA+ID4gPiBBbSBNaXR0d29jaCwgNS4gSnVuaSAyMDE5
LCAyMjo0MzoyMCBDRVNUIHNjaHJpZWIgTWF0dGhpYXMgS2FlaGxja2U6Cj4gPiA+ID4gPiA+IFRo
aXMgZW5hYmxlcyB3YWtlIHVwIG9uIEJsdWV0b290aCBhY3Rpdml0eSB3aGVuIHRoZSBkZXZpY2Ug
aXMKPiA+ID4gPiA+ID4gc3VzcGVuZGVkLiBUaGUgQlRfSE9TVF9XQUtFIHNpZ25hbCBpcyBvbmx5
IGNvbm5lY3RlZCBvbiBkZXZpY2VzCj4gPiA+ID4gPiA+IHdpdGggQlQgbW9kdWxlIHRoYXQgYXJl
IGNvbm5lY3RlZCB0aHJvdWdoIFVBUlQuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPiA+ID4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gSG91c2VrZWVwaW5nIHF1ZXN0aW9uLCB3aXRoIHRoZSB0d28gU2ln
bmVkLW9mZi1ieSBsaW5lcywgaXMgRG91ZyB0aGUKPiA+ID4gPiA+IG9yaWdpbmFsIGF1dGhvciwg
b3Igd2FzIHRoaXMgQ28tZGV2ZWxvcGVyLWJ5Pwo+ID4gPiA+Cj4gPiA+ID4gR29vZCBxdWVzdGlv
biwgaXQncyBkZXJpdmVkIGZyb20gRG91ZydzIHBhdGNoIGZvciBDck9TIDMuMTQgYW5kCj4gPiA+
ID4gaHR0cHM6Ly9jcnJldi5jb20vYy8xNTc1NTU2IGFsc28gZnJvbSBEb3VnLiBMZXQncyBzYXkg
SSBkaWQgdGhlCj4gPiA+ID4gcG9ydGluZyB0byB1cHN0cmVhbSwgYnV0IEknbSBwcmV0dHkgc3Vy
ZSBEb3VnIHNwZW50IG1vcmUgdGltZSBvbiBpdC4KPiA+ID4gPgo+ID4gPiA+IE1heWJlIEkgc2hv
dWxkIHJlc2VuZCBpdCB3aXRoIERvdWcgYXMgYXV0aG9yIGFuZCBpbmNsdWRlIHRoZSBvcmlnaW5h
bAo+ID4gPiA+IGNvbW1pdCBtZXNzYWdlLCB3aGljaCBoYXMgbW9yZSBpbmZvcm1hdGlvbi4KPiA+
ID4KPiA+ID4gSXQncyBqdXN0IHRoYXQgdGhlIGZpcnN0IFNpZ25lZC1vZmYgc2hvdWxkIGJlIGZy
b20gdGhlIG9yaWdpbmFsIGF1dGhvci4KPiA+ID4gKEFuZCB0aGUgc2VuZGVyIHRoZSBzZWNvbmQp
Cj4gPiA+IEluIHRoZSBjby1kZXZlbG9wZWQtYnkgY2FzZSAoc2VlIEtlcm5lbCBkb2N1bWVudGF0
aW9uKSB0aGUgb3JkZXIKPiA+ID4gZG9lc24ndCBtYXR0ZXIuCj4gPgo+ID4gSG9sZGluZyBvZmYg
b24gdGhpcyBwYXRjaCB0aWxsIHdlIGNvdWxkIGNsYXJpZnkgdGhlIGF1dGhvcnNoaXAuCj4KPiBJ
J2Qgc2F5IGxldCdzIGF0dHJpYnV0ZSB0aGUgYXV0aG9yc2hpcCB0byBEb3VnLiBGVFIsIHRoZSBv
cmlnaW5hbAo+IGRvd25zdHJlYW0gQ2hyb21lIE9TIHBhdGNoIGlzIGh0dHBzOi8vY3JyZXYuY29t
L2MvMjc4MTkwLgo+Cj4gTm90IHN1cmUgaWYgdGhlIGluZm9ybWF0aW9uIGluIHRoZSBjb21taXQg
bWVzc2FnZSBvZiB0aGUgb3JpZ2luYWwKPiBwYXRjaCBpcyByZWxldmFudCBmb3IgdGhlIHVwc3Ry
ZWFtIHZlcnNpb24sIGluIHRoZSBlbmQgaXQgc2VlbXMgTFBNCj4gd2FzIG5ldmVyIGltcGxlbWVu
dGVkLCBzbyBpdCBzaG91bGQgYmUgc3VmZmljaWVudCB0byBzYXkgd2hhdCBpcwo+IGFjdHVhbGx5
IGRvbmUgdG9kYXkuCj4KPiBJbiBzdW1tYXJ5LCBJIHByb3Bvc2UgdG8gdGFrZSB0aGUgcGF0Y2gg
d2l0aCB0aGUgY3VycmVudCBjb21taXQKPiBtZXNzYWdlLCB3aXRoIERvdWcgYXMgdGhlIGF1dGhv
ci4gSGVpa28sIGNhbiB5b3UgY2hhbmdlIHRoZSBhdXRob3JzaGlwCj4gb3Igc2hvdWxkIEkgc2Vu
ZCBhIG5ldyB2ZXJzaW9uPwo+Cj4gRG91ZyBpZiB5b3UgaGF2ZSBvYmplY3Rpb25zIG9yIHdhbnQg
dXBkYXRlcyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UKPiAoeW91cnMgdGVuZCB0byBiZSBtb3JlIHZl
cmJvc2UgOy0pLCBob2xsZXIuCgpJdCdzIGZpbmUgd2l0aCBtZS4KCi1Eb3VnCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
