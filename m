Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD3E366CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tbdUxO8guK7/beH4LaAYinVZv3arljZI0iD6pbEsYg=; b=UN0UHXRdMQ7km+
	p/Wu14ey949PlOViwofCH388G+nftsb1s69eF4B0LW//sCCML20EwoD6HY3ZcQYFFx1xHz6A6FSFt
	Z6O3jK9m0t7ZBLlgnb21izeyh+04Cmnh4UmAjnl1TI73mEx3BOKey3g3Ld65MxEokH/JrtffsxoGz
	jFvCOrX7srlvxasRtxTPGU2TrzV7LZVCY4MywXfXrPys4Yi0ImRpu6FpHyjnXUa7b9pUgycdGPmzO
	vmzhEDdEEJTLvGVlKC7THyVj0e46komYa+woFKZADinsqNOAdkzffLZWOP2YFATCFHrXkq1O23RBG
	ou4NlvRjExW/XgKIXKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdOe-0000yj-2F; Wed, 05 Jun 2019 21:24:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdOX-0000xx-0l
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:24:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id u22so97182pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5JsaaeOZ5jEkTZ+CQbpEkrv4dv3aPXsi9a1U9ZyHnWY=;
 b=Bc7m2lT8121T8y0BgV5ppFoVa+gTNbe8caW8/6FSqqVnPL3VNfAQQgQPJp3cHpvvjF
 6r5gPNbwx1Ymku5cSrDwzAdgqoIC2UPtydUfLSsijaxsGBsps5esDIwsGlFZ6C5ln361
 oJeALyzPlvtZ+vSvFaBd2lmlPimux8u8wYJGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5JsaaeOZ5jEkTZ+CQbpEkrv4dv3aPXsi9a1U9ZyHnWY=;
 b=SuBuc6Ac+AB17pVd4z6J1e5d2+8cwYeJQotczug3KzXanuAxZ2ir3rlAcclE/7ztrc
 FEqT3Hiu+f87YqOdFm5RUPbj459P6GFgsGZGOMX3tQfB6cgaotv0UT5FNHRWPm/aPMCs
 wxsO+4jrhfV9j2bV8euZjJrUCtUjoCnYDP48N4dtm+7Qw3O79KpiKoyfFUBbdu//3fY4
 qLjSM15uUoFcZ/T1pTpk0GbUP1OFMkyxYQmAz38WJGpJP+73hW1HsOH5RrQpDWfXilVg
 L7aIsioHSqr5bFBkZ7zaOwyRezo/EzELOjCNPcTg7j9Uq1DTInzIr4lAc1ORCyX0gO1g
 H8aQ==
X-Gm-Message-State: APjAAAXDAXzMlmTVGQwPzULiayKVXrn8pYv3mrpVUXm1fe9lhkMrBEBZ
 HT1rFKbhRkO0jONQGdgoQzYn+Q==
X-Google-Smtp-Source: APXvYqxhvfnBdnZg/Zs5AZJlWFyZ5sCBAfZb9xNeRH8QSl/Dzc/pRaTLtaX+thEqgOMLfVR0DiUjJQ==
X-Received: by 2002:aa7:8248:: with SMTP id e8mr9797660pfn.155.1559769868467; 
 Wed, 05 Jun 2019 14:24:28 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id h19sm3148232pfn.79.2019.06.05.14.24.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 14:24:27 -0700 (PDT)
Date: Wed, 5 Jun 2019 14:24:27 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as
 wake-up signal on veyron
Message-ID: <20190605212427.GP40515@google.com>
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605204320.22343-2-mka@chromium.org>
 <3079472.D8Re4Zsj2W@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3079472.D8Re4Zsj2W@diego>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_142429_088983_31B58BE5 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMTE6MTE6MTJQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gTWl0dHdvY2gsIDUuIEp1bmkgMjAxOSwgMjI6NDM6MjAgQ0VTVCBzY2hyaWVi
IE1hdHRoaWFzIEthZWhsY2tlOgo+ID4gVGhpcyBlbmFibGVzIHdha2UgdXAgb24gQmx1ZXRvb3Ro
IGFjdGl2aXR5IHdoZW4gdGhlIGRldmljZSBpcwo+ID4gc3VzcGVuZGVkLiBUaGUgQlRfSE9TVF9X
QUtFIHNpZ25hbCBpcyBvbmx5IGNvbm5lY3RlZCBvbiBkZXZpY2VzCj4gPiB3aXRoIEJUIG1vZHVs
ZSB0aGF0IGFyZSBjb25uZWN0ZWQgdGhyb3VnaCBVQVJULgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAKPiBIb3VzZWtlZXBp
bmcgcXVlc3Rpb24sIHdpdGggdGhlIHR3byBTaWduZWQtb2ZmLWJ5IGxpbmVzLCBpcyBEb3VnIHRo
ZQo+IG9yaWdpbmFsIGF1dGhvciwgb3Igd2FzIHRoaXMgQ28tZGV2ZWxvcGVyLWJ5PwoKR29vZCBx
dWVzdGlvbiwgaXQncyBkZXJpdmVkIGZyb20gRG91ZydzIHBhdGNoIGZvciBDck9TIDMuMTQgYW5k
Cmh0dHBzOi8vY3JyZXYuY29tL2MvMTU3NTU1NiBhbHNvIGZyb20gRG91Zy4gTGV0J3Mgc2F5IEkg
ZGlkIHRoZQpwb3J0aW5nIHRvIHVwc3RyZWFtLCBidXQgSSdtIHByZXR0eSBzdXJlIERvdWcgc3Bl
bnQgbW9yZSB0aW1lIG9uIGl0LgoKTWF5YmUgSSBzaG91bGQgcmVzZW5kIGl0IHdpdGggRG91ZyBh
cyBhdXRob3IgYW5kIGluY2x1ZGUgdGhlIG9yaWdpbmFsCmNvbW1pdCBtZXNzYWdlLCB3aGljaCBo
YXMgbW9yZSBpbmZvcm1hdGlvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
