Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8235B241EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjHkMUQTQ5JOKBk4eVzAx9nspshZYjN3u0Nejh/0FgY=; b=eW6mKQwh3sxz6E
	0LL4lZ4Ek4vvaVmiNGYGHViP8MFVHjWmg3NFC71iSaVhzhwxnm5ZfOpG5XjQ7XIiTlZXSGCz7t0CC
	mlXYRXPs7NIyGQSBCZ8L+kQqhP/V/HkDRd9HGLx5C9WqQsY32w9FZpsPbgWf1PqvpCcP2KMWb5Te+
	RNaNqZbV+kSrlksHKGz4lcviWGOILh215bIcpIp+oojNP8Lusj484JCltAFWdTUsWO7BxOFRZREBf
	AQAB6CUIAjtvnaqNOFBaVbTVlra0Mi+AJ/sv3fd8MTFzBXWfLgdxTUN0KFI7Yqqif0jvwRBe88Urg
	jejNuGSGHnJXuTNOR5sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoib-0008Oe-Ry; Mon, 20 May 2019 20:17:09 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoiT-0008Nb-Bd
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 20:17:03 +0000
Received: by mail-ua1-x941.google.com with SMTP id d4so5758528uaj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 13:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6B2h64c7BAIXdqgTD3mb8/lcaBqFTG1vyJC0fwpx6wE=;
 b=KQMm8dHlW0EX+V6h+USfLko9QjquRn3QzW/5J7l+0b/pQy5Dvztidqe8NZWI0647aR
 L+PuY1rYGscMwG+2Fo1tk6DfjcAF7p0K4i5eFnOfAg7Bpnw5pktbNUrmUsFEF+4M1AQW
 bDUzBrJzXsa9FJ/B/992ypQfJjcTM2UtqhbRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6B2h64c7BAIXdqgTD3mb8/lcaBqFTG1vyJC0fwpx6wE=;
 b=b+YF4z+3nj1HfhRCfanAbYp/l4bKALrPhj8pQb/KEhyFDok1YOi8Z6o2U+pJeWj2n4
 yDBrBsqg0+VBak1PuY7L/flcX2Swz8/o/PfEKH+VbjtwOdpR3r8e/xH3p4K9uL7smJx6
 HxmLfF/q8cOH4a7Xl9EePQVijVBZ7z6agrlSqnrjeyF80RTUr7IFRhs2rUU/Al78C0Ad
 TGms16YPj1W9UT0qnN2l4QnyqXrsOlpCmUfNzUSgpMNZsrDIbs1DrvIq43Tu9akg6R89
 pX6pdywXgwOR3Im/pd1jSU9xdWOk3B5fwviXLYvK+vTdFdlo+6V0UhS//352QUln2sMG
 T14w==
X-Gm-Message-State: APjAAAWRtwiTRJsHeO2r4Xjcq/rPwxuecvBPedSaFSZ/7q9a0gMe+0d8
 ROvG1aKbKFVQadJCuvttqJlQahBLwRY=
X-Google-Smtp-Source: APXvYqyOsJNsmdnaLSo9SfsQYXiKmlsBbVDYL6f9Ni/BE5sQQZS/xU4xPd5TVhrBev8f+AdiNwpvlQ==
X-Received: by 2002:ab0:224f:: with SMTP id z15mr5497714uan.88.1558383418917; 
 Mon, 20 May 2019 13:16:58 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42])
 by smtp.gmail.com with ESMTPSA id m39sm437215uae.14.2019.05.20.13.16.58
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:16:58 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id d128so9733940vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 13:16:58 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr31757112vsk.149.1558383417594; 
 Mon, 20 May 2019 13:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190520170132.91571-1-mka@chromium.org>
In-Reply-To: <20190520170132.91571-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 13:16:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VGA_i=vM4_OrqXnv0WC__Fcdced3oOZjzcPO=i8Q+SdA@mail.gmail.com>
Message-ID: <CAD=FV=VGA_i=vM4_OrqXnv0WC__Fcdced3oOZjzcPO=i8Q+SdA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Limit GPU frequency on veyron
 mickey to 300 MHz when the CPU gets very hot
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_131701_479414_5AB5F1E1 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDowMSBBTSBNYXR0aGlhcyBLYWVobGNrZSA8
bWthQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4KPiBPbiByazMyODggdGhlIENQVSBhbmQgR1BVIHRl
bXBlcmF0dXJlcyBhcmUgY29ycmVsYXRlZC4gTGltaXQgdGhlIEdQVQo+IGZyZXF1ZW5jeSBvbiB2
ZXlyb24gbWlja2V5IHRvIDMwMCBNSHogZm9yIENQVSB0ZW1wZXJhdHVyZXMgPj0gODXCsEMuCj4K
PiBUaGlzIG1hdGNoZXMgdGhlIGNvbmZpZ3VyYXRpb24gb2YgdGhlIGRvd25zdHJlYW0gQ2hyb21l
IE9TIDMuMTQga2VybmVsLAo+IHRoZSAnb2ZmaWNpYWwnIGtlcm5lbCBmb3IgbWlja2V5Lgo+Cj4g
U2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4gLS0t
Cj4gTm90ZTogdGhpcyBwYXRjaCBkZXBlbmRzIG9uICJBUk06IGR0czogcm9ja2NoaXA6IEFkZCAj
Y29vbGluZy1jZWxscwo+IGVudHJ5IGZvciByazMyODggR1BVIiAoaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwNzUwMDUvKQo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0
cy9yazMyODgtdmV5cm9uLW1pY2tleS5kdHMgfCA2ICsrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LXZleXJvbi1taWNrZXkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNr
ZXkuZHRzCj4gaW5kZXggZDg4OWFiM2M4MjM1Li5mMTE4ZDkyYTQ5ZDAgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCj4gKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCj4gQEAgLTEyNSw2ICsxMjUsMTIg
QEAKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3B1MiA4IFRI
RVJNQUxfTk9fTElNSVQ+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPCZjcHUzIDggVEhFUk1BTF9OT19MSU1JVD47Cj4gICAgICAgICAgICAgICAgIH07Cj4gKwo+
ICsgICAgICAgICAgICAgICAvKiBBdCB2ZXJ5IGhvdCwgZG9uJ3QgbGV0IEdQVSBnbyBvdmVyIDMw
MCBNSHogKi8KPiArICAgICAgICAgICAgICAgY3B1X3ZlcnlfaG90X2xpbWl0X2dwdSB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmY3B1X2FsZXJ0X3ZlcnlfaG90PjsKPiArICAg
ICAgICAgICAgICAgICAgICAgICBjb29saW5nLWRldmljZSA9IDwmZ3B1IDIgMj47Cj4gKyAgICAg
ICAgICAgICAgIH07CgpUd28gdGhpbmdzOgoKQSkgSWYgSSdtIHJlYWRpbmcgdGhpbmdzIHByb3Bl
cmx5LCB5b3UncmUgYWN0dWFsbHkgbGltaXRpbmcgdGhpbmdzIHRvCjQwMCBNSHouICBUaGlzIGlz
IGJlY2F1c2UgeW91IGRvbid0IGhhdmUgPGh0dHBzOi8vY3JyZXYuY29tL2MvMTU3NDU3OT4Kd2hp
Y2ggZGVsZXRlcyB0aGUgNTAwIE1IeiBHUFUgb3BlcmF0aW5nIHBvaW50LiAgU28gb24gdXBzdHJl
YW0gdGhlCmF2YWlsYWJsZSBwb2ludHMgYXJlOgoKMDogNjAwIE1IegoxOiA1MDAgTUh6CjI6IDQw
MCBNSHoKMzogMzAwIE1Iego0OiAyMDAgTUh6CjU6IDEwMCBNSHoKCi4uLmFuZCBkb3duc3RyZWFt
OgoKMDogNjAwIE1IegoxOiA0MDAgTUh6CjI6IDMwMCBNSHoKMzogMjAwIE1Iego0OiAxMDAgTUh6
CgpUaGlua2luZyBhYm91dCBpdCBtb3JlLCBJIGJldCBIZWlrbyB3b3VsZCBhY3R1YWxseSBiZSBP
SyBkZWxldGluZyB0aGUKNTAwIE1IeiBHUFUgb3BlcmF0aW5nIHBvaW50IGZvciB2ZXlyb24uICBU
ZWNobmljYWxseSBpdCdzIG5vdCBuZWVkZWQKdXBzdHJlYW0gYmVjYXVzZSB1cHN0cmVhbSBkb2Vz
bid0IGhhdmUgb3VyIGhhY2tzIHRvIGFsbG93IHJlLXB1cnBvc2luZwpOUExMIGZvciBIRE1JIChz
byB0aGV5IF9jYW5fIG1ha2UgNTAwIE1IeikgYnV0IG1heWJlIHdlIGNhbiBtYWtlIHRoZQphcmd1
bWVudCB0aGF0IHRoZXNlIGxhcHRvcHMgaGF2ZSBvbmx5IGV2ZXIgYmVlbiB0ZXN0ZWQgd2l0aCB0
aGUgNTAwCk1IeiBvcGVyYXRpbmcgcG9pbnQgcmVtb3ZlZCBhbmQgYWxzbyB0aGF0IGV2ZW50dWFs
bHkgc29tZW9uamUgd2lsbApwcm9iYWJseSBmaWd1cmUgb3V0IGEgd2F5IHRvIHJlLXB1cnBvc2Ug
TlBMTCBmb3IgSERNSSBldmVuIHVwc3RyZWFtLi4uCgoKQikgSXQgc2VlbXMgbGlrZSBpbiB0aGUg
c2FtZSBwYXRjaCB5b3UnZCB3YW50IHRvIGludHJvZHVjZQoiY3B1X3dhcm1fbGltaXRfZ3B1Iiwg
QUtBOgoKY3B1X3dhcm1fbGltaXRfZ3B1IHsKICB0cmlwID0gPCZjcHVfYWxlcnRfd2FybT47CiAg
Y29vbGluZy1kZXZpY2UgPQogIDwmZ3B1IDEgMT47Cn07CgoKLURvdWcKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
