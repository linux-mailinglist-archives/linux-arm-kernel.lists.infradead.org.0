Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CFB19B424
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 18:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwHgsySSGs19hjN1FASvRjHtL3vfHepAFAqJx3t5m3c=; b=rZouGrit6N6KXB
	MduTCd5pZF0MoxGqclcsF3E2QGCWGEvyax0C3Q87RjTzpE1szTLvY6B+3djR2ErzaRhF01OeGDxiK
	gKkwXUajnPWGwkNHhC4T2QMhw393uBF5ismGtBoQBoUxohc4ls4YOiGiVFlozobi6BD5vSIdUBI7P
	PpWieRBUBQ4JmrND9xT+CTasS+XXLDWdhGPPO/yrgusP/fHb3qnsIeilI/x5Z5lWBFW2P+gTVvyce
	rVjyASQ5u3rGUbAkf4zov6UlPF5yBxU/qTtemIZt5zuA5vEqeU3f+d+P29v0puVaPV+5Xwb0zTDKD
	EfcMPnugU4yxfFpbvrLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJgg1-0006WS-FN; Wed, 01 Apr 2020 16:57:17 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJgfs-0006VW-Kj; Wed, 01 Apr 2020 16:57:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id x11so254216otp.6;
 Wed, 01 Apr 2020 09:57:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZyTZQ9ScLYyXr8uy25TVZM268D8wsSCH+8ypLUnJOFM=;
 b=sYgzQdNCQQjNxCUq2c1TZ1iJXz8uMrmCPofRUj/fpXd/lw+1E/QBQ3146F86yY3zK9
 KBP9XvgUidI2lCKNpu/+aFEW7HWwxb4C3RmS3Di0VktG6ZH0C/Sn3do8WHoMc8Camd3E
 bk9f0k8Ljgf5hQwSVeqlPZ6BHF19G2ZxjaoQ4laEUCTFgMAsvehMGxG+FYxsPx7Ghpjq
 L3FHAnsziVD/6/5qgAeydJdzOQBkPV357M1p5EIeLAXW4msX37ILxll11xN5sdviUVwm
 pCNcHa0YkvoVwZV/dkku9OVz47dvfnltReKEtvC4a826iqb9L8pd5BUIhE6vFwllP/73
 bprg==
X-Gm-Message-State: ANhLgQ0mgTx0bjZFsamC+fjwgvCzlhIRj0OYbcJCFw5QrZ8MId9VFFM9
 jW/tScsGPxFJad96j/Ra+ADXI3HHMIJ47fYo9gE=
X-Google-Smtp-Source: ADFU+vufihEvibArYWJjTrCmDu7dXZgc3PqH8LVxCwqiESC/QDCUaa5LpicQzIvHFS3WT4dVXp+EAe0ygrg1OSHe3UQ=
X-Received: by 2002:a9d:76c7:: with SMTP id p7mr6414778otl.145.1585760227154; 
 Wed, 01 Apr 2020 09:57:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
 <20200401153513.423683-3-mylene.josserand@collabora.com>
In-Reply-To: <20200401153513.423683-3-mylene.josserand@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 1 Apr 2020 18:56:55 +0200
Message-ID: <CAMuHMdXvFOKqmZ-MLJV4SAeLN-PDzqPvMvbVpcD=jyip9tbdnA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] clk: rockchip: rk3288: Handle clock tree for
 rk3288w
To: =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095711_160185_48EE85EC 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kever.yang@rock-chips.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTXlsw6huZSwKCk9uIFdlZCwgQXByIDEsIDIwMjAgYXQgNTozNSBQTSBNeWzDqG5lIEpvc3Nl
cmFuZAo8bXlsZW5lLmpvc3NlcmFuZEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiBUaGUgcmV2aXNp
b24gcmszMjg4dyBoYXMgYSBkaWZmZXJlbnQgY2xvY2sgdHJlZSBhYm91dAo+ICJoY2xrX3ZpbyIg
Y2xvY2ssIGFjY29yZGluZyB0byB0aGUgQlNQIGtlcm5lbCBjb2RlLgo+Cj4gVGhpcyBwYXRjaCBo
YW5kbGVzIHRoaXMgZGlmZmVyZW5jZSBieSBkZXRlY3Rpbmcgd2hpY2ggU09DIGl0IGlzCj4gYW5k
IGNyZWF0aW5nIHRoZSBkaXYgYWNjb3JkaW5nbHkuIEJlY2F1c2Ugd2UgYXJlIHVzaW5nCj4gc29j
X2RldmljZV9tYXRjaCBmdW5jdGlvbiwgd2UgbmVlZCB0byBkZWxheSB0aGUgcmVnaXN0cmF0aW9u
Cj4gb2YgdGhpcyBjbG9jayBsYXRlciB0aGFuIG90aGVycyB0byBoYXZlIHRpbWUgdG8gZ2V0IFNv
QyByZXZpc2lvbi4KPgo+IE90aGVyd2lzZSwgYmVjYXVzZSBvZiBDTEtfT0ZfREVDTEFSRSB1c2Vz
LCBjbG9jayB0cmVlIHdpbGwgYmUKPiBjcmVhdGVkIHRvbyBzb29uIHRvIGhhdmUgdGltZSB0byBk
ZXRlY3QgU29DJ3MgcmV2aXNpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBNeWzDqG5lIEpvc3NlcmFu
ZCA8bXlsZW5lLmpvc3NlcmFuZEBjb2xsYWJvcmEuY29tPgoKVGhhbmtzIGZvciB5b3VyIHBhdGNo
IQoKPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMKPiArKysgYi9kcml2
ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMKPiBAQCAtOTE0LDEwICs5MjMsMTUgQEAgc3Rh
dGljIHN0cnVjdCBzeXNjb3JlX29wcyByazMyODhfY2xrX3N5c2NvcmVfb3BzID0gewo+ICAgICAg
ICAgLnJlc3VtZSA9IHJrMzI4OF9jbGtfcmVzdW1lLAo+ICB9Owo+Cj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgcmszMjg4d1tdID0gewo+ICsgICAgICAgeyAuc29j
X2lkID0gIlJLMzJ4eCIsIC5yZXZpc2lvbiA9ICJSSzMyODh3IiB9LAo+ICsgICAgICAgeyAvKiBz
ZW50aW5lbCAqLyB9Cj4gK307Cj4gKwo+ICtzdGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92
aWRlciAqY3R4Owo+ICsKPiAgc3RhdGljIHZvaWQgX19pbml0IHJrMzI4OF9jbGtfaW5pdChzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3By
b3ZpZGVyICpjdHg7Cj4gLQo+ICAgICAgICAgcmszMjg4X2NydV9iYXNlID0gb2ZfaW9tYXAobnAs
IDApOwo+ICAgICAgICAgaWYgKCFyazMyODhfY3J1X2Jhc2UpIHsKPiAgICAgICAgICAgICAgICAg
cHJfZXJyKCIlczogY291bGQgbm90IG1hcCBjcnUgcmVnaW9uXG4iLCBfX2Z1bmNfXyk7Cj4gQEAg
LTk1NSwzICs5NjksMTcgQEAgc3RhdGljIHZvaWQgX19pbml0IHJrMzI4OF9jbGtfaW5pdChzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICAgICAgICAgcm9ja2NoaXBfY2xrX29mX2FkZF9wcm92aWRl
cihucCwgY3R4KTsKPiAgfQo+ICBDTEtfT0ZfREVDTEFSRShyazMyODhfY3J1LCAicm9ja2NoaXAs
cmszMjg4LWNydSIsIHJrMzI4OF9jbGtfaW5pdCk7Cj4gKwo+ICtzdGF0aWMgaW50IF9faW5pdCBy
azMyODhfaGNsa3Zpb19yZWdpc3Rlcih2b2lkKQo+ICt7CgpUaGlzIGZ1bmN0aW9uIHdpbGwgYWx3
YXlzIGJlIGNhbGxlZCwgZXZlbiB3aGVuIHJ1bm5pbmcgYSAobXVsdGktcGxhdGZvcm0pCmtlcm5l
bCBvbiBhIG5vbi1yazMyODggcGxhdGZvcm0uICBTbyB5b3UgbmVlZCBzb21lIHByb3RlY3Rpb24g
YWdhaW5zdAp0aGF0LgoKPiArICAgICAgIC8qIENoZWNrIGZvciB0aGUgcmszMjg4dyByZXZpc2lv
biBhcyBjbG9jayB0cmVlIGlzIGRpZmZlcmVudCAqLwo+ICsgICAgICAgaWYgKHNvY19kZXZpY2Vf
bWF0Y2gocmszMjg4dykpCj4gKyAgICAgICAgICAgICAgIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9i
cmFuY2hlcyhjdHgsIHJrMzI4OHdfaGNsa3Zpb19icmFuY2gsCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKHJrMzI4OHdfaGNsa3Zpb19i
cmFuY2gpKTsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgcm9ja2NoaXBfY2xrX3Jl
Z2lzdGVyX2JyYW5jaGVzKGN0eCwgcmszMjg4X2hjbGt2aW9fYnJhbmNoLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQVJSQVlfU0laRShyazMyODhfaGNs
a3Zpb19icmFuY2gpKTsKCk5vdGUgdGhhdCBzb2NfZGV2aWNlX21hdGNoKCkgcmV0dXJucyBhIHN0
cnVjdCBzb2NfZGV2aWNlX2F0dHJpYnV0ZQpwb2ludGVyLiAgSWYgeW91IHdvdWxkIHN0b3JlIHRo
ZSByb2NrY2hpcF9jbGtfYnJhbmNoIGFycmF5IHBvaW50ZXIgYW5kCnNpemUgaW4gcmszMjg4d1su
Li5dLmRhdGEgKGkuZS4gYSBwb2ludGVyIHRvIGEgc3RydWN0IGNvbnRhaW5pbmcgdGhhdAppbmZv
KSwgZm9yIGJvdGggdGhlIHI4MzI4OHcgYW5kIG5vcm1hbCByazMyODggdmFyaWFudHMsIHlvdSBj
b3VsZApzaW1wbGlmeSB0aGlzIHRvOgoKICAgIGF0dHIgPSBzb2NfZGV2aWNlX21hdGNoKHJrMzI4
OHcpOwogICAgaWYgKGF0dHIpIHsKICAgICAgICAgICAgc3RydWN0IHJrMzI4OF9icmFuY2hfYXJy
YXkgKnAgPSBhdHRyLT5kYXRhOwogICAgICAgICAgICByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJh
bmNoZXMoY3R4LCBwLT5icmFuY2hlcywgcC0+bGVuKTsKICAgIH0KClRoYXQgd291bGQgaGFuZGxl
IHRoZSBub3QtcnVubmluZy1vbi1yazMyODggaXNzdWUgYXMgd2VsbC4KCj4gKwo+ICsgICAgICAg
cmV0dXJuIDA7Cj4gK30KPiArc3Vic3lzX2luaXRjYWxsKHJrMzI4OF9oY2xrdmlvX3JlZ2lzdGVy
KTsKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0t
IApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMy
IC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGgg
dGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRh
bGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5n
IGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2
YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
