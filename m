Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6441227B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dch3h8h2yO0YJAvDVrka5ihQKh7eEwmwuuvCChp8kI4=; b=hKZ6Hy4OgMqC9ecAHgDrHAGo+S
	SDYAq29nbz/3AaLqMmXdYXbjEKmyh8yZdG3um6fA51GtdNCEPI21AzatD/GAMTC3tTyiNlJzBh8z+
	jRahYLtqZ4K88+muBdQXFsxBqk4aOCLO8pfwmZLQcZAIgpi8FSLugr64yfDsRvW6r1nNFaxxJ8Epw
	SIy1mjuMudIeFne2rFoxvhHL8yB33r0hzihR2AS/Mt3oRxreYV7TqUpq9C0ianu2xHjtBpVF8ys3/
	WI+L9KsadW5HLNU7wKZK7xl+nqLqXKwiUriopkwSqOfsAsx4ETSWBdaEFtSdTkk6RygKZjAMnkH/j
	UFY/NzPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9B1-0003ej-Ji; Tue, 17 Dec 2019 09:29:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9An-0003cZ-Oq
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:29:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so10478418wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 01:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=alzctH88nkGm93shdXD815TJhUtkbcFmRm1xB1d3sFA=;
 b=tc/PfHiqx1g9OhIykMghdMOuoCxnyJdDyPEmSV0knr75jcrkVRJZfKmHAYXm0FBKDs
 UYcH2/HU30rCIORaulUyRPU2g20qK1XerGUoLQvh5R/AVgf6VVEscmumSNrBSMV2Qa3h
 ra0DnMItw09nmDb4xque4pdDav7HoQeaCKg7vpm/fsrICZonkm40JYK5j0VJ6ROlMzTD
 6ow4dYP5+wQH/Q3bqg5XlisumxdsJXmQU5VlttKhl7EA0dbEVuzAeDyGnQVIBHfvwqhG
 OhKCA5abYNyJxzr33sL7Z2jL1BOIUcPqfFWI3maLedUfMIYXp9Vi1jawxUDhzqA0CaKQ
 +riw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=alzctH88nkGm93shdXD815TJhUtkbcFmRm1xB1d3sFA=;
 b=t2e7QVud5NqoNVHJiJij3vBXiz9rG6Eue6gn+AeIBTDfpZyj7zqk4xoLCi40ZUVXoA
 YDUuIZZaSJUrWJ1vgZWoyMkeYUjnBeyaNVuoOMWiIA/kNdajsirTSFtgJjmXzQ+GVLm5
 VMeeVxPMasNsUxLvfvpcrKnAd/vCYeaXIeoeoDERADjt/Jcw1kxfRNtgDdxp2tfHQhKy
 yqgvAZrwF/RUvbNl9s+sJITR8qq2SAYAW+8EiKdY7ppS4LWy5Z+CMH7BxEQViiGj6ake
 861d4yB9IVcHGvcJ1309ppt6OUCS//pjLidktUyyJHJv5AQrwHEKwAhGkm/acokPXBXH
 aZKg==
X-Gm-Message-State: APjAAAXfv5KASIlt396vXRCDXBUTnMtxffMtavrZ26VuInFifyO5QDVL
 mEY9bvlo4ngxhvi/Rimq0POIEw==
X-Google-Smtp-Source: APXvYqy/DS/azJ653mUdjjacLdbuxYCf410YHUG5mlvieCYQz0Ahh9MbX5t88z0FLKKawrQe+Eanww==
X-Received: by 2002:a5d:6349:: with SMTP id b9mr37238202wrw.346.1576574979348; 
 Tue, 17 Dec 2019 01:29:39 -0800 (PST)
Received: from localhost (uluru.liltaz.com. [163.172.81.188])
 by smtp.gmail.com with ESMTPSA id q8sm2258746wmq.3.2019.12.17.01.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 01:29:38 -0800 (PST)
References: <20191206074052.15557-1-jian.hu@amlogic.com>
 <20191206074052.15557-3-jian.hu@amlogic.com>
 <1j8snhluhg.fsf@starbuckisacylon.baylibre.com>
 <741284be-2ae8-1102-22bc-c510e822c883@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4 2/6] clk: meson: add support for A1 PLL clock ops
In-reply-to: <741284be-2ae8-1102-22bc-c510e822c883@amlogic.com>
Date: Tue, 17 Dec 2019 10:29:37 +0100
Message-ID: <1jk16vb8qm.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_012945_810751_3BC05565 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIFR1ZSAxNyBEZWMgMjAxOSBhdCAwOTo0MSwgSmlhbiBIdSA8amlhbi5odUBhbWxvZ2ljLmNv
bT4gd3JvdGU6Cgo+IE9uIDIwMTkvMTIvMTIgMTg6MTYsIEplcm9tZSBCcnVuZXQgd3JvdGU6Cj4+
Cj4+IE9uIEZyaSAwNiBEZWMgMjAxOSBhdCAwODo0MCwgSmlhbiBIdSA8amlhbi5odUBhbWxvZ2lj
LmNvbT4gd3JvdGU6Cj4+Cj4+PiBUaGUgQTEgUExMIGRlc2lnbiBpcyBkaWZmZXJlbnQgd2l0aCBw
cmV2aW91cyBTb0NzLiBUaGUgUExMCj4+PiBpbnRlcm5hbCBhbmFsb2cgbW9kdWxlcyBQb3dlci1v
biBzZXF1ZW5jZSBpcyBkaWZmZXJlbnQKPj4+IHdpdGggcHJldmlvdXMsIGFuZCB0aHVzIHJlcXVp
cmVzIGEgc3RyaWN0IHJlZ2lzdGVyIHNlcXVlbmNlIHRvCj4+PiBlbmFibGUgdGhlIFBMTC4KPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKaWFuIEh1IDxqaWFuLmh1QGFtbG9naWMuY29tPgo+Pj4gLS0t
Cj4+PiAgIGRyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwuYyB8IDIxICsrKysrKysrKysrKysrKysr
KysrKwo+Pj4gICBkcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmggfCAgMSArCj4+PiAgIGRyaXZl
cnMvY2xrL21lc29uL3Bhcm0uaCAgICB8ICAxICsKPj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL21lc29uL2Nsay1w
bGwuYyBiL2RyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwuYwo+Pj4gaW5kZXggZGRiMWU1NjM0NzM5
Li40YWZmMzFhNTE1ODkgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxs
LmMKPj4+ICsrKyBiL2RyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwuYwo+Pj4gQEAgLTMxOCw2ICsz
MTgsMjMgQEAgc3RhdGljIGludCBtZXNvbl9jbGtfcGxsX2VuYWJsZShzdHJ1Y3QgY2xrX2h3ICpo
dykKPj4+ICAgCXN0cnVjdCBjbGtfcmVnbWFwICpjbGsgPSB0b19jbGtfcmVnbWFwKGh3KTsKPj4+
ICAgCXN0cnVjdCBtZXNvbl9jbGtfcGxsX2RhdGEgKnBsbCA9IG1lc29uX2Nsa19wbGxfZGF0YShj
bGspOwo+Pj4gICArCS8qCj4+PiArCSAqIFRoZSBBMSBkZXNpZ24gaXMgZGlmZmVyZW50IHdpdGgg
cHJldmlvdXMgU29Dcy5UaGUgUExMCj4+PiArCSAqIGludGVybmFsIGFuYWxvZyBtb2R1bGVzIFBv
d2VyLW9uIHNlcXVlbmNlIGlzIGRpZmZlcmVudCB3aXRoCj4+PiArCSAqIHByZXZpb3VzLCBhbmQg
dGh1cyByZXF1aXJlcyBhIHN0cmljdCByZWdpc3RlciBzZXF1ZW5jZSB0bwo+Pj4gKwkgKiBlbmFi
bGUgdGhlIFBMTC4KPj4KPj4gVGhlIGNvZGUgZG9lcyBzb21ldGhpbmcgbW9yZSwgbm90IGNvbXBs
ZXRseSBkaWZmZXJlbnQuIFRoaXMgY29tbWVudCBpcwo+PiBub3QgYWxpZ25lZCB3aXRoIHdoYXQg
dGhlIGNvZGUgZG9lcwo+IG9rLCBJIHdpbGwgY29ycmVjdCB0aGUgY29tbWVudC4KPj4KPj4+ICsJ
ICovCj4+PiArCWlmIChNRVNPTl9QQVJNX0FQUExJQ0FCTEUoJnBsbC0+Y3VycmVudF9lbikpIHsK
Pj4+ICsJCS8qIEVuYWJsZSB0aGUgcGxsICovCj4+PiArCQltZXNvbl9wYXJtX3dyaXRlKGNsay0+
bWFwLCAmcGxsLT5lbiwgMSk7Cj4+PiArCQl1ZGVsYXkoMTApOwo+Pj4gKwkJLyogRW5hYmxlIHRo
ZSBwbGwgc2VsZi1hZGFwdGlvbiBtb2R1bGUgY3VycmVudCAqLwo+Pj4gKwkJbWVzb25fcGFybV93
cml0ZShjbGstPm1hcCwgJnBsbC0+Y3VycmVudF9lbiwgMSk7Cj4+PiArCQl1ZGVsYXkoNDApOwo+
Pj4gKwkJbWVzb25fcGFybV93cml0ZShjbGstPm1hcCwgJnBsbC0+cnN0LCAxKTsKPj4+ICsJCW1l
c29uX3Bhcm1fd3JpdGUoY2xrLT5tYXAsICZwbGwtPnJzdCwgMCk7Cj4+Cj4+IEhlcmUgeW91IGVu
YWJsZSB0aGUgUExMIGFuZCBzZWxmIGFkYXB0YXRpb24gbW9kdWxlIHRoZW4gcmVzZXQgdGhlIFBM
TC4KPj4gSG93ZXZlcjoKPj4gIzEgd2hlbiB5b3UgZW50ZXIgdGhpcyBmdW5jdGlvbiwgdGhlIFBM
TCBzaG91bGQgYWxyZWFkeSBieSBpbiByZXNldAo+PiBhbmQgZGlzYWJsZWQKPj4gIzIgdGhlIGNv
ZGUgYWZ0ZXIgdGhhdCB3aWxsIHJlc2V0IHRoZSBQTEwgYWdhaW4KPiBGb3IgQTEgUExMcywgVGhl
cmUgaXMgbm8gcmVzZXQgYml0LCBJdCB3aWxsIG5vdCByZXNldCB0aGUgUExMLgo+IEFuZCBpbiBW
MiwgeW91IG1lbnRpb25lZCBQQVJNICdyc3QnIGNhbiBiZSB1c2VkIGZvciBvbmUgdG9nZ2xpbmcs
IEFuZCAncnN0Jwo+IGlzIHVzZWQgZm9yIEJJVCg2KSBpbiBDVFJMMi4KPgoKb2ggbXkgISBXaGF0
IGlzIGl0IHRoZW4gPyBXaHkgZG8geW91IG5lZWQgdG8gdG9nZ2xlIGl0ID8gV2hhdCBkb2VzIGlz
IGRvID8KCj4gUXVvdGUgVjIgdGhlIEhJRkkgUExMIGluaXRfcmVncyBkZWZpbml0aW9u77yaCj4K
Pgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19zZXF1ZW5jZSBhMV9oaWZpX2luaXRfcmVnc1td
ID0gewo+ICsJeyAucmVnID0gQU5BQ1RSTF9ISUZJUExMX0NUUkwxLCAuZGVmID0gMHgwMTgwMDAw
MCB9LAo+ICsJeyAucmVnID0gQU5BQ1RSTF9ISUZJUExMX0NUUkwyLCAuZGVmID0gMHgwMDAwMTEw
MCB9LAo+ICsJeyAucmVnID0gQU5BQ1RSTF9ISUZJUExMX0NUUkwzLCAuZGVmID0gMHgxMDBhMTEw
MCB9LAo+ICsJeyAucmVnID0gQU5BQ1RSTF9ISUZJUExMX0NUUkw0LCAuZGVmID0gMHgwMDMwMjAw
MCB9LAo+ICsJeyAucmVnID0gQU5BQ1RSTF9ISUZJUExMX0NUUkwwLCAuZGVmID0gMHgwMWYxODQ0
MCB9LAo+ICsJeyAucmVnID0gQU5BQ1RSTF9ISUZJUExMX0NUUkwwLCAuZGVmID0gMHgxMWYxODQ0
MCwgLmRlbGF5X3VzID0gMTAgfSwKPiArCXsgLnJlZyA9IEFOQUNUUkxfSElGSVBMTF9DVFJMMCwg
LmRlZiA9IDB4MTVmMTg0NDAsIC5kZWxheV91cyA9IDQwIH0sCj4gKwl7IC5yZWcgPSBBTkFDVFJM
X0hJRklQTExfQ1RSTDIsIC5kZWYgPSAweDAwMDAxMTQwIH0sCj4gKwl7IC5yZWcgPSBBTkFDVFJM
X0hJRklQTExfQ1RSTDIsIC5kZWYgPSAweDAwMDAxMTAwIH0sCj4gK307Cj4KPiBTbyBtYXliZSBh
bm90aGVyIG5ldyBQQVJNIHNob3VsZCBiZSBkZWZpbmVkIHRvIGF2b2lkIHRoZSBhbWJpZ3VpdHku
Cj4gV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgaXQ/CgpUaGlzIGlzIG5vdCB0aGUgcG9pbnQgb2Yg
bXkgY29tbWVudCBKaWFuICEKCkknbSBhc3N1bWluZyBoZXJlIHRoYXQgeW91IGhhdmUgdGVzdGVk
IHlvdXIgdjQgYmVmb3JlIHNlbmRpbmcgYW5kIHRoYXQKaXQgd29yayAoaG9wZWZ1bGx5KQoKVGhl
IGZhY3QgaXMgdGhhdCB3aXRoIHRoaXMgY29kZSwgd2hlbiBkaXNhYmxlZCB0aGUgYml0IGJlaGlu
ZCByc3QKKHdoYXRldmVyIGl0IGlzKSBpcyBzZXQuIFNvIHdoZW4geW91IGdldCB0byBlbmFibGUg
dGhlIGJpdCBpcyBhbHJlYWR5IHNldC4KVGhlIGNvZGUgeW91IHNlbnQgZG9lcyB0aGUgc2FtZSBh
cyB0aGUgc25pcCBJIGdhdmUgeW91IGluIHRoZSByZXBseS4KCk5vdywgaWYgeW91ciBQTEwgaXMg
VEhBVCBkaWZmZXJlbnQsIG1heWJlIGl0IHdvdWxkIGJlIGJlc3QgaWYgeW91IGNvdWxkCmNsZWFy
bHkgZXhwbGFpbiBob3cgaXQgd29ya3MsIHdoYXQgYml0IHNob3VsZCBiZSBzZXQgYW5kIHdoeS4g
VGhlbiB3ZQp3aWxsIGJlIGFibGUgdG8gZmlndXJlIG91dCBob3cgdGhlIGRyaXZlciBoYXMgdG8g
YmUgcmVzdHJ1Y3R1cmVkLgoKPgo+Pgo+PiBTbyBpZiB3aGF0IHlvdSBzdWJtaXRlZCB3b3Jrcywg
aW5zZXJ0aW5nIHRoZSBmb2xsb3dpbmcgc2hvdWxkIGFjY29tcGxpc2gKPj4gdGhlIHNhbWUgdGhp
bmc6Cj4+Cj4+IC0tLTg8LS0tCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9tZXNvbi9jbGst
cGxsLmMgYi9kcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmMKPj4gaW5kZXggNDg5MDkyZGRlM2E2
Li45YjM4ZGYwYTc2ODIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwu
Ywo+PiArKysgYi9kcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmMKPj4gQEAgLTMzMCw2ICszMzAs
MTMgQEAgc3RhdGljIGludCBtZXNvbl9jbGtfcGxsX2VuYWJsZShzdHJ1Y3QgY2xrX2h3ICpodykK
Pj4gICAgICAgICAgLyogRW5hYmxlIHRoZSBwbGwgKi8KPj4gICAgICAgICAgbWVzb25fcGFybV93
cml0ZShjbGstPm1hcCwgJnBsbC0+ZW4sIDEpOwo+Pgo+PiArICAgICAgIGlmIChNRVNPTl9QQVJN
X0FQUExJQ0FCTEUoJnBsbC0+Y3VycmVudF9lbikpIHsKPj4gKyAgICAgICAgICAgICAgIHVkZWxh
eSgxMCk7Cj4+ICsgICAgICAgICAgICAgICAvKiBFbmFibGUgdGhlIHBsbCBzZWxmLWFkYXB0aW9u
IG1vZHVsZSBjdXJyZW50ICovCj4+ICsgICAgICAgICAgICAgICBtZXNvbl9wYXJtX3dyaXRlKGNs
ay0+bWFwLCAmcGxsLT5jdXJyZW50X2VuLCAxKTsKPj4gKyAgICAgICAgICAgICAgIHVkZWxheSg0
MCk7Cj4+ICsgICAgICAgfQo+PiArCj4+ICAgICAgICAgIC8qIFRha2UgdGhlIHBsbCBvdXQgcmVz
ZXQgKi8KPj4gICAgICAgICAgbWVzb25fcGFybV93cml0ZShjbGstPm1hcCwgJnBsbC0+cnN0LCAw
KTsKPj4gLS0tPjgtLS0KPj4KPj4KPj4KPj4KPj4+ICsJfQo+Pj4gKwo+Pj4gICAJLyogZG8gbm90
aGluZyBpZiB0aGUgUExMIGlzIGFscmVhZHkgZW5hYmxlZCAqLwo+Pj4gICAJaWYgKGNsa19od19p
c19lbmFibGVkKGh3KSkKPj4+ICAgCQlyZXR1cm4gMDsKPj4KPj4gSW4gYW55IGNhc2UsIG5vdGhp
bmcgc2hvdWxkIGJlIGRvbmUgb24gdGhlIGNsb2NrIGJlZm9yZSB0aGlzIGNoZWNrCj4+IG90aGVy
d2lzZSB5b3UgbWlnaHQganVzdCBicmVhayB0aGUgY2xvY2sKPj4KPiBPSywgSSB3aWxsIHB1dCB0
aGUgZW5hYmxlZCBjaGVjayBhaGVhZC4KPj4+IEBAIC0zNDcsNiArMzY0LDEwIEBAIHN0YXRpYyB2
b2lkIG1lc29uX2Nsa19wbGxfZGlzYWJsZShzdHJ1Y3QgY2xrX2h3ICpodykKPj4+ICAgICAJLyog
RGlzYWJsZSB0aGUgcGxsICovCj4+PiAgIAltZXNvbl9wYXJtX3dyaXRlKGNsay0+bWFwLCAmcGxs
LT5lbiwgMCk7Cj4+PiArCj4+PiArCS8qIERpc2FibGUgUExMIGludGVybmFsIHNlbGYtYWRhcHRp
b24gbW9kdWxlIGN1cnJlbnQgKi8KPj4+ICsJaWYgKE1FU09OX1BBUk1fQVBQTElDQUJMRSgmcGxs
LT5jdXJyZW50X2VuKSkKPj4+ICsJCW1lc29uX3Bhcm1fd3JpdGUoY2xrLT5tYXAsICZwbGwtPmN1
cnJlbnRfZW4sIDApOwo+Pj4gICB9Cj4+PiAgICAgc3RhdGljIGludCBtZXNvbl9jbGtfcGxsX3Nl
dF9yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LCB1bnNpZ25lZCBsb25nCj4+PiByYXRlLAo+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwuaCBiL2RyaXZlcnMvY2xrL21lc29u
L2Nsay1wbGwuaAo+Pj4gaW5kZXggMzY3ZWZkMGY2NDEwLi4zMGYwMzkyNDJhNjUgMTAwNjQ0Cj4+
PiAtLS0gYS9kcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmgKPj4+ICsrKyBiL2RyaXZlcnMvY2xr
L21lc29uL2Nsay1wbGwuaAo+Pj4gQEAgLTM2LDYgKzM2LDcgQEAgc3RydWN0IG1lc29uX2Nsa19w
bGxfZGF0YSB7Cj4+PiAgIAlzdHJ1Y3QgcGFybSBmcmFjOwo+Pj4gICAJc3RydWN0IHBhcm0gbDsK
Pj4+ICAgCXN0cnVjdCBwYXJtIHJzdDsKPj4+ICsJc3RydWN0IHBhcm0gY3VycmVudF9lbjsKPj4+
ICAgCWNvbnN0IHN0cnVjdCByZWdfc2VxdWVuY2UgKmluaXRfcmVnczsKPj4+ICAgCXVuc2lnbmVk
IGludCBpbml0X2NvdW50Owo+Pj4gICAJY29uc3Qgc3RydWN0IHBsbF9wYXJhbXNfdGFibGUgKnRh
YmxlOwo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL21lc29uL3Bhcm0uaCBiL2RyaXZlcnMv
Y2xrL21lc29uL3Bhcm0uaAo+Pj4gaW5kZXggM2M5ZWYxYjUwNWNlLi5jNTNmYjI2NTc3ZTMgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2Nsay9tZXNvbi9wYXJtLmgKPj4+ICsrKyBiL2RyaXZlcnMv
Y2xrL21lc29uL3Bhcm0uaAo+Pj4gQEAgLTIwLDYgKzIwLDcgQEAKPj4+ICAgCSgoKHJlZykgJiBD
TFJQTUFTSyh3aWR0aCwgc2hpZnQpKSB8ICgodmFsKSA8PCAoc2hpZnQpKSkKPj4+ICAgICAjZGVm
aW5lIE1FU09OX1BBUk1fQVBQTElDQUJMRShwKQkJKCEhKChwKS0+d2lkdGgpKQo+Pj4gKyNkZWZp
bmUgTUVTT05fUEFSTV9DVVJSRU5UKHApCQkJKCEhKChwKS0+d2lkdGgpKQo+Pgo+PiBXaHkgZG8g
d2UgbmVlZCB0aGF0ID8KPiBPSywgSSB3aWxsIHJlbW92ZSBpdCAsYW5kIHVzZSAnTUVTT05fUEFS
TV9BUFBMSUNBQkxFJyBpbnN0ZWFkCj4+Cj4+PiAgICAgc3RydWN0IHBhcm0gewo+Pj4gICAJdTE2
CXJlZ19vZmY7Cj4+Cj4+IC4KPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
