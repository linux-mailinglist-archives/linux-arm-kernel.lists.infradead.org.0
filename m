Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3BB23BD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlOdxaLqpt+kilm9chm6r8m7Jt+tLfWrdnU0LLee910=; b=jtjROV6KeLdDZT
	XCiVIkfVV20Dn6oYbKxmjS0/mH8qnI/MixI20hYvLUUAuLpxoXmMrLqDIO25Aw8ZMWXpJxsDmRAcX
	yht2tUZFJaxV27oesjLoBl3sxot40BSp/98tZvE4s5p/v5w5AN44UyTNoMHG5omSpxiCW25HppK/o
	ef3dDDvbgmZzU7mNFhGD/tXut/LCBPVsP5zk2Ur689P24M6xIQxNnDGFvxcouugW8bcnxFsqUlLKz
	i+fzeC/HovyBKCsls5IakzcX2LpfZrEEV+nvm96YhZVoO9h2nOle4vPEU7LQ+qv41LcRkISeOPufH
	VR3qmsIhjWebCZheVynw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSk1u-0003Qc-M4; Mon, 20 May 2019 15:16:46 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSk1m-0003Pa-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:16:40 +0000
Received: by mail-yb1-xb42.google.com with SMTP id t62so5809191ybi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 08:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=39pc0LYY2SOLC+Eab1jH/LHKWZC4F4vmwoS5+aTUN+8=;
 b=FRzFebtGvRzGumqr5/EOZMft8/BWyHD6J6b4Z9ZwYcf9Sle5L3/dS0JH8ZFX9ODkm/
 cZF4ZKffFotK/pNY52v4dL69ZDldsGJ1oZVQtNMPkHuPjkovD6x3wvOWtx/toYy7SsJ7
 DOpNjJA6rgc3vK52YLl+aQqPuOs5L2Mcu0rpk70QWwQs5WTExgBaG+TnapM/U9FHgNGM
 u5wb2zy0aHDXNwvCMkvTzy6K6M8KqpRlrIstB8TMcDkkV83MBWFQVTnWKxH6bpZdlAZb
 hkGTvHaKocyyQsV9f1UN915n+tYk9S15RMUFJx0ryNZ1zCDAL8a2g3w+Lgahs7JV4dv9
 pWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=39pc0LYY2SOLC+Eab1jH/LHKWZC4F4vmwoS5+aTUN+8=;
 b=K7BDyamIZjUOfxQt/Wk8d/6qF4Ut06pIpkBqifPtysEokP3oRADf1IRZjNpxvXrZlw
 PHBkJMiwqRdFknZBwn/KakN566oZ9F87tEL5aFS4MnVeykbzo3cXGO7inUIDO6E/WP8U
 n4URl6EW/Y7+3Y6MY1eVtxlTu59JWoEBHwBlQVpNoY2NEyLyW0/m4qfQoLik8ePqO6LZ
 4sFpY74cj6XuL2lqdcQbQq4jqMGWA8/HuhTsiM2a9X4yuoSBwvc7cNiVNOWLJeEJGQNY
 u+idJAIyBLVSeMO3/roVkwNaa8I3R1kZED7J266JYyRKpLyP5wjPPS4Otfc8iz43qtaw
 cquQ==
X-Gm-Message-State: APjAAAWJpsa2Zi/+HeLa7wf7V4CX9pxSim+47LGTWQsSNaianrsO4wQt
 vDLEDJ3U818Cp1zJ0stmNJchxrJrqly93JLbT+0=
X-Google-Smtp-Source: APXvYqzow3lQOqwpzptZIX0AC+6atUp95ha3AFYPDLnPZl03o6N6jBbz43DrPfl2QMoZUmG26GkF95me2V3vml881DI=
X-Received: by 2002:a25:10c2:: with SMTP id 185mr33170384ybq.379.1558365396955; 
 Mon, 20 May 2019 08:16:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-2-peron.clem@gmail.com>
 <20190520073529.nxptfbibexrqyzfi@flea>
 <CAJiuCcdrW7RcEKePCr1DaL-be8dA5oOjvHdxYkiu=h37z2e7tw@mail.gmail.com>
 <20190520144258.eauhvvwfxuhiczie@flea>
In-Reply-To: <20190520144258.eauhvvwfxuhiczie@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 May 2019 17:16:25 +0200
Message-ID: <CAJiuCccUQ0grMo_RC4DN1AfzSPQq14KjUbNpFFvfQ+GBWDvG+w@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_081638_667969_A1B9FA1D 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
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
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBNYXkgMjAxOSBhdCAxNjo0MywgTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFy
ZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDoxNDox
MEFNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gKyAgICAgLSAi
YWxsd2lubmVyLHN1bjRpLWExMC13ZHQiCj4gPiA+ID4gKyAgICAgLSAiYWxsd2lubmVyLHN1bjUw
aS1hNjQtd2R0IiwiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCj4gPiA+ID4gKyAgICAgLSAiYWxs
d2lubmVyLHN1bjUwaS1oNi13ZHQiLCJhbGx3aW5uZXIsc3VuNTBpLWE2NC13ZHQiLAo+ID4gPiA+
ICsgICAgICAgImFsbHdpbm5lcixzdW42aS1hMzEtd2R0Igo+ID4gPgo+ID4gPiBJcyB0aGVyZSBh
IHJlYXNvbiB0byBrZWVwIHRoZSBBNjQgY29tcGF0aWJsZT8KPiA+Cj4gPiBZZXMsIEE2NCBhbmQg
SDYgaGFzIHRoZSBleGFjdCBzYW1lIG1lbW9yeSBtYXBwaW5nIGxvb2tpbmcgYXQgdGhlIGRhdGFz
aGVldC4KPiA+IFNvIGlmIHRoZXJlIGlzIGFuIGVycmF0YSBvciBhIG5ldyBmZWF0dXJlIGZvciB0
aGUgQTY0LCBpdCBzaG91bGQgYmUKPiA+IGFsc28gY29tcGF0aWJsZSB3aXRoIHRoZSBINi4KPiA+
IFdoaWNoIGlzIG5vdCB0aGUgY2FzZSB3aXRoIEEzMSAoV0RUX0tFWV9GSUVMRCBpcyBub3QgcHJl
c2V0KQo+Cj4gVGhlIHRoaW5nIGlzLCBpZiB5b3UgdXNlIHRob3NlIHRocmVlIGNvbXBhdGlibGVz
LCB0aGVuIHlvdSdyZSBzYXlpbmcKPiB0aGF0IGl0J3Mgb2sgZm9yIHRoZSBPUyB0byB1c2UgZmly
c3QgdGhlIEg2IGRyaXZlciwgdGhlbiB0aGUgQTY0Cj4gZHJpdmVyLCBhbmQgdGhlbiB0aGUgQTMx
IGRyaXZlci4KPgo+IElmIHRoZSBBMzEgaXNuJ3QgY29tcGF0aWJsZSwgdGhlbiBpdCBzaG91bGRu
J3QgYmUgbGlzdGVkIHRoZXJlLiBBbmQgaWYKPiBpdCBpcywgdGhlbiB5b3UgY2FuIHNraXAgdGhl
IEE2NCBjb21wYXRpYmxlLgoKSGkgTWF4aW1lLAoKSSdtIGp1c3Qgc3VwcG9zaW5nIHRoYXQgQTMx
IGlzIHRoZSB2ZXJzaW9uIDEuMCBvZiB0aGUgSVAsIEE2NCBpcyB0aGUKdmVyc2lvbiAxLjEgYW5k
IEg2IGlzIDEuMi4KQW5kIGlmIGFuIGlzc3VlIGlzIGZvdW5kIGZvciBBNjQgdGhlcmUgaXMgbW9y
ZSBjaGFuY2UgdGhhdCB3ZSB3aWxsCmhhdmUgdG8gZml4IGl0IGFsc28gZm9yIEg2LgpCdXQgYmlu
ZGluZ3MgdGhlIGRyaXZlciB3aXRoIDoKImFsbHdpbm5lcixzdW41MGktaDYtd2R0IiwiYWxsd2lu
bmVyLHN1bjUwaS1hMzEtd2R0IiBpcyBhbHNvIGZpbmUgZm9yCm1lLgoKUmVnYXJkcywKQ2xlbWVu
dAo+Cj4gTWF4aW1lCj4KPiAtLQo+IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBM
aW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
