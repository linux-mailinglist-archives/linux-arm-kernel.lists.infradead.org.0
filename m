Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2FBA00B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 13:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZ7gacRKrDLPVC4gO2t5Sip/VwhKKT20htOgfVxC3i8=; b=FwqzQsWr6Upul8
	lGLmqt8Lw8KrzyIgBdTrIx8ZoOkUCB0OkpGfHhUK3lMsNGEkLZis7XyLXbLbmgRye7NmWFZFUk4nQ
	QXK8RG+K90aRcQ5JGgcDNNFL0kpVYZWi8H06JrmGU+D/K81q8BqBNB6x3nVPo91loiEUG1C9Ax++q
	GRWFpnG1jcJvvAEQJOKT1txnBUN2d1YSOud0SmhATDUZ9PXMmyyE9TXPgqkY/5GnedMMbqe03gbxX
	geirqz/bioiKiGIJ8x4D1pOz/s1TqHI8ZVyVDsNgw9TxLdWZlQ9D9Skx6klElrskYCftk3PdJXxQa
	xF8z8zlNJM/kHcMpmE4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2w7h-0002LO-QV; Wed, 28 Aug 2019 11:28:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2w7V-0002L3-1x
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:28:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id r17so1534337wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 04:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HBe9uhXsvc42/D9IbsN1QjJ/vNtE9JFruELezUW/IVE=;
 b=kPwXiUXJEkwfVmv68JI5YMEOIgHCa9fmH+SN1kL8U5dpuHprEAYDwDGSVYsXK0WDJL
 7LSFT1u19tj+Uy/6L2r6rvGxJ6PmUd+/RpUi3UZDaos4I7s7uqf2dV8H95uVVo8dxklB
 AP2Z+fRoEgC+3svvTqUQ/YpsXhnN2GrtN6HcOIA9w0Okmyw9GHM+pZjdhCPm4WGWeT5y
 cttGD+luQLibwh2khYMijEVbho4qWih+bDJM7ycO38BbXEBpbUXRgXxEv//zELSHco9Q
 q+xCx6bKl697AlRBMozv8SQXkQqqjbXqZU4l362DVsGp5kthwVXqnveuJwDXwmsxw/WE
 61JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HBe9uhXsvc42/D9IbsN1QjJ/vNtE9JFruELezUW/IVE=;
 b=ZwZzFIpT4D0bHYn4tsMlSeVMGh92h+7TS5hcrlc53Os6mIrlR/9nRDwxdbemp9DiJi
 EgIGB+vRHxkYef4nE6lnlth9YxKMpKDRUxeV/mcD+JoP3g/qdVz2OWciRh9c5f8NSBnX
 S+z2AyaWjVruIczacEILj898Imj6culX+htiVtfGi6+W2szeie1fx4T7ZY877ry4rgDj
 3IIuVMPbC2lxbdDNgLJ45NBxLHqua6kQf1HzavVQaDMJYxL81KAu+6dyHt+JsNrDMPXT
 PppXBaNffe/PW9XnhgGrn1AFqI7miCn8K1lOmr/jiqIZ3AWJv00iB21DNTzw67Oj0Sjo
 sWjg==
X-Gm-Message-State: APjAAAV6MyDn5A3jEIzIIjp6wH4gxbRLNYyfFS/61jpIAwR0dLe/ho2a
 JLT/KD26FkDFuNuz6ZBv1Snm/OE0p9nJqA==
X-Google-Smtp-Source: APXvYqy+yYg4LvcInHrUQUoZ3zEtYh/4aIWJ9YMJHeUth1FYpOMaPofGk8nU5kXu2ZaTmt4vUL+tvA==
X-Received: by 2002:a05:600c:296:: with SMTP id
 22mr4013088wmk.148.1566991686860; 
 Wed, 28 Aug 2019 04:28:06 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm2751226wmg.45.2019.08.28.04.28.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 04:28:05 -0700 (PDT)
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: Robin Murphy <robin.murphy@arm.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
 <CAAObsKD8bij1ANLqX6y11Y6mDEXiymNjrDkmHmvGWiFLKWu_FA@mail.gmail.com>
 <4ff02295-6c34-791b-49f4-6558a92ad7a3@arm.com>
 <CAAObsKBt1tPw9RKGi_Xey=1zy9Tu3N+A=1te2R8=NuJ5tDBqVg@mail.gmail.com>
 <dc3872a4-8cd9-462b-9f73-0d69a810d985@arm.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <92e9b697-ea0d-9b13-5512-b0a16a39df20@baylibre.com>
Date: Wed, 28 Aug 2019 13:28:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <dc3872a4-8cd9-462b-9f73-0d69a810d985@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_042809_105699_8E3A7C0B 
X-CRM114-Status: GOOD (  26.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 David Airlie <airlied@linux.ie>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9ieW4sCgpPbiAzMS8wNS8yMDE5IDE1OjQ3LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24g
MzEvMDUvMjAxOSAxMzowNCwgVG9tZXUgVml6b3NvIHdyb3RlOgo+PiBPbiBXZWQsIDI5IE1heSAy
MDE5IGF0IDE5OjM4LCBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToK
Pj4+Cj4+PiBPbiAyOS8wNS8yMDE5IDE2OjA5LCBUb21ldSBWaXpvc28gd3JvdGU6Cj4+Pj4gT24g
VHVlLCAyMSBNYXkgMjAxOSBhdCAxODoxMSwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdt
YWlsLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4gW3NuaXBdCj4+Pj4+IFvCoCAzNDUuMjA0ODEzXSBw
YW5mcm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQo+Pj4+PiBbwqAgMzQ1LjIwOTYx
N10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBW
QQo+Pj4+PiAweDAwMDAwMDAwMDI0MDA0MDAKPj4+Pgo+Pj4+IMKgIEZyb20gd2hhdCBJIGNhbiBz
ZWUgaGVyZSwgMHgwMDAwMDAwMDAyNDAwNDAwIHBvaW50cyB0byB0aGUgZmlyc3QgYnl0ZQo+Pj4+
IG9mIHRoZSBmaXJzdCBzdWJtaXR0ZWQgam9iIGRlc2NyaXB0b3IuCj4+Pj4KPj4+PiBTbyBtYXBw
aW5nIGJ1ZmZlcnMgZm9yIHRoZSBHUFUgZG9lc24ndCBzZWVtIHRvIGJlIHdvcmtpbmcgYXQgYWxs
IG9uCj4+Pj4gNjQtYml0IFQtNzYwLgo+Pj4+Cj4+Pj4gU3RldmVuLCBSb2JpbiwgZG8geW91IGhh
dmUgYW55IGlkZWEgb2Ygd2h5IHRoaXMgY291bGQgYmU/Cj4+Pgo+Pj4gSSB0cmllZCByb2xsaW5n
IGJhY2sgdG8gdGhlIG9sZCBwYW5mcm9zdC9ub25kcm0gc2hpbSwgYW5kIGl0IHdvcmtzIGZpbmUK
Pj4+IHdpdGgga2Jhc2UsIGFuZCBJIGFsc28gZm91bmQgdGhhdCBULTgyMCBmYWxscyBvdmVyIGlu
IHRoZSBleGFjdCBzYW1lCj4+PiBtYW5uZXIsIHNvIHRoZSBmYWN0IHRoYXQgaXQgc2VlbWVkIHRv
IGJlIGNvbW1vbiB0byB0aGUgc21hbGxlciAzMy1iaXQKPj4+IGRlc2lnbnMgcmF0aGVyIHRoYW4g
YW55dGhpbmcgdG8gZG8gd2l0aCB0aGUgb3RoZXIKPj4+IGpvYl9kZXNjcmlwdG9yX3NpemUvdjQv
djUgY29tcGxpY2F0aW9uIHR1cm5lZCBvdXQgdG8gYmUgdGVsbGluZy4KPj4KPj4gSXMgdGhpcyBj
b21wbGljYXRpb24gc29tZXRoaW5nIHlvdSBjYW4gZXhwbGFpbj8gSSBkb24ndCBrbm93IHdoYXQg
djQKPj4gYW5kIHY1IGFyZSBtZWFudCBoZXJlLgo+IAo+IEkgd2FzIGFsbHVkaW5nIHRvIEJBU0Vf
SFdfRkVBVFVSRV9WNCwgd2hpY2ggSSBiZWxpZXZlIHJlZmVycyB0byB0aGUgTWlkZ2FyZCBhcmNo
aXRlY3R1cmUgdmVyc2lvbiAtIHRoZSBvbGRlciB2ZXJzaW9ucyBpbXBsZW1lbnRlZCBieSBUNnh4
IGFuZCBUNzIwIHNlZW0gdG8gYmUgY29sbGVjdGl2ZWx5IHRyZWF0ZWQgYXMgInY0Iiwgd2hpbGUg
VDc2MCBhbmQgVDh4eCB3b3VsZCBlZmZlY3RpdmVseSBiZSAidjUiLgo+IAo+Pj4gWyBhcyBhbiBh
c2lkZSwgYXJlIDY0LWJpdCBqb2JzIGFjdHVhbGx5IGtub3duIG5vdCB0byB3b3JrIG9uIHY0IEdQ
VXMsIG9yCj4+PiBpcyBpdCBqdXN0IHRoYXQgbm9ib2R5J3MgeWV0IG9ic2VydmVkIGEgNjQtYml0
IGJsb2IgZHJpdmluZyBvbmU/IF0KPj4KPj4gSSdtIGxvb2tpbmcgcmlnaHQgbm93IGF0IGdldHRp
bmcgUGFuZnJvc3Qgd29ya2luZyBvbiBUNzIwIHdpdGggNjQtYml0Cj4+IGRlc2NyaXB0b3JzLCB3
aXRoIHRoZSB1bHRpbWF0ZSBnb2FsIG9mIG1ha2luZyBQYW5mcm9zdAo+PiA2NC1iaXQtZGVzY3Jp
cHRvciBvbmx5IHNvIHdlIGNhbiBoYXZlIGEgc2luZ2xlIGJ1aWxkIG9mIE1lc2EgaW4KPj4gZGlz
dHJvcy4KPiAKPiBDb29sLCBJJ2xsIGtlZXAgYW4gZXllIG91dCwgYW5kIGhvcGUgdGhhdCBpdCBt
aWdodCBiZSBlbm91Z2ggZm9yIFQ2MjAgb24gSnVubywgdG9vIDopCj4gCj4+PiBMb25nIHN0b3J5
IHNob3J0LCBpdCBhcHBlYXJzIHRoYXQgJ01hbGkgTFBBRScgaXMgYWxzbyBsYWNraW5nIHRoZSBz
dGFydAo+Pj4gbGV2ZWwgbm90aW9uIG9mIFZNU0EsIGFuZCBleHBlY3RzIGEgZnVsbCA0LWxldmVs
IHRhYmxlIGV2ZW4gZm9yIDw0MCBiaXRzCj4+PiB3aGVuIGxldmVsIDAgZWZmZWN0aXZlbHkgcmVk
dW5kYW50LiBUaHVzIHdhbGtpbmcgdGhlIDMtbGV2ZWwgdGFibGUgdGhhdAo+Pj4gaW8tcGd0YWJs
ZSBjb21lcyBiYWNrIHdpdGggZW5kcyB1cCBnb2luZyB3aWxkbHkgd3JvbmcuIFRoZSBoYWNrIGJl
bG93Cj4+PiBzZWVtcyB0byBkbyB0aGUgam9iIGZvciBtZTsgaWYgQ2zDqW1lbnQgY2FuIGNvbmZp
cm0gKG9uIFQtNzIwIHlvdSdsbAo+Pj4gc3RpbGwgbmVlZCB0aGUgdXNlcnNwYWNlIGhhY2sgdG8g
Zm9yY2UgMzItYml0IGpvYnMgYXMgd2VsbCkgdGhlbiBJIHRoaW5rCj4+PiBJJ2xsIGNvb2sgdXAg
YSBwcm9wZXIgcmVmYWN0b3Jpbmcgb2YgdGhlIGFsbG9jYXRvciB0byBwdXQgdGhpbmdzIHJpZ2h0
Lgo+Pgo+PiBNbWFwcyBzZWVtIHRvIHdvcmsgd2l0aCB0aGlzIHBhdGNoLCB0aGFua3MuCj4+Cj4+
IFRoZSBtYWluIGNvbXBsaWNhdGlvbiBJJ20gZmFjaW5nIHJpZ2h0IG5vdyBzZWVtcyB0byBiZSB0
aGF0IHRoZSBTRkJECj4+IGRlc2NyaXB0b3Igb24gVDcyMCBzZWVtcyB0byBiZSBkaWZmZXJlbnQg
ZnJvbSB0aGUgb25lIHdlIGFscmVhZHkgaGFkCj4+ICh0ZXN0ZWQgb24gVDZ4eD8pLgo+IAo+IE9L
IC0gd2l0aCB0aGUgMzItYml0IGhhY2sgcG9pbnRlZCB0byB1cC10aHJlYWQsIGEgcXVpY2sga21z
Y3ViZSB0ZXN0IGdhdmUgbWUgdGhlIGltcHJlc3Npb24gdGhhdCBUNzIwIHdvcmtzIGZpbmUsIGJ1
dCBvbiBjbG9zZXIgaW5zcGVjdGlvbiBzb21lIHBhcnRzIG9mIGdsbWFyazIgZG8gc2VlbSB0byBn
byBhIGJpdCB3b25reSAoYWx0aG91Z2ggSSBzdXNwZWN0IGF0IGxlYXN0IHNvbWUgb2YgaXQgaXMg
anVzdCBkb3duIHRvIHRoZSBGUEdBIHNldHVwIGJlaW5nIGJvdGggdmVyeSBzbG93IGFuZCBsYWNr
aW5nIGluIG1lbW9yeSBiYW5kd2lkdGgpLCBhbmQgdGhlICJudjEyLTFpbWciIG1vZGUgb2Yga21z
Y3ViZSB0dXJucyBvdXQgdG8gcmVuZGVyIGluIHNvbWUgZGVsaWdodGZ1bGx5IHdyb25nIGNvbG91
cnMuCj4gCj4gSSdsbCB0cnkgdG8gZ2V0IGEgJ3Byb3BlcicgdmVyc2lvbiBvZiB0aGUgaW8tcGd0
YWJsZSBwYXRjaCBwb3N0ZWQgc29vbi4KCkknbSB0cnlpbmcgdG8gY29sbGVjdCBhbGwgdGhlIGZp
eGVzIG5lZWRlZCB0byBtYWtlIFQ4MjAgd29yayBhZ2FpbiwgYW5kCkkgd2FzIHdvbmRlcmluZyBp
ZiB5b3UgZmluYWxseSBoYXZlIGEgcHJvcGVyIHBhdGNoIGZvciB0aGlzIGFuZCAiY2ZnLT5pYXMg
PiA0OCIKaGFjayA/IE9yIG9uZSBJIGNhbiB0ZXN0ID8KClRoYW5rcywKTmVpbAoKPiAKPiBUaGFu
a3MsCj4gUm9iaW4uCj4gCj4+Cj4+IENoZWVycywKPj4KPj4gVG9tZXUKPj4KPj4+IFJvYmluLgo+
Pj4KPj4+Cj4+PiAtLS0tLT44LS0tLS0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2lv
LXBndGFibGUtYXJtLmMgYi9kcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLmMKPj4+IGluZGV4
IDU0Njk2OGQ4YTM0OS4uZjI5ZGE2ZThkYzA4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9pb21t
dS9pby1wZ3RhYmxlLWFybS5jCj4+PiArKysgYi9kcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJt
LmMKPj4+IEBAIC0xMDIzLDEyICsxMDIzLDE0IEBAIGFybV9tYWxpX2xwYWVfYWxsb2NfcGd0YWJs
ZShzdHJ1Y3QKPj4+IGlvX3BndGFibGVfY2ZnICpjZmcsIHZvaWQgKmNvb2tpZSkKPj4+IMKgwqDC
oMKgwqDCoMKgwqAgaW9wID0gYXJtXzY0X2xwYWVfYWxsb2NfcGd0YWJsZV9zMShjZmcsIGNvb2tp
ZSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIGlmIChpb3ApIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHU2NCBtYWlyLCB0dGJyOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGFybV9scGFlX2lvX3BndGFibGUgKmRhdGEgPSBpb19wZ3RhYmxlX29w
c190b19kYXRhKCZpb3AtPm9wcyk7Cj4+Pgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZGF0YS0+bGV2ZWxzID0gNDsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC8qIENvcHkgdmFsdWVzIGFzIHVuaW9uIGZpZWxkcyBvdmVybGFwICovCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYWlyID0gY2ZnLT5hcm1fbHBhZV9zMV9jZmcubWFpclsw
XTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHR0YnIgPSBjZmctPmFybV9s
cGFlX3MxX2NmZy50dGJyWzBdOwo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4+PiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
