Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484CD242B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 23:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P26idGcilC6EhCjMxlyx10vRtou9144tYmRJBoeyfLs=; b=CXaz10d7JiDCis
	EtoVcsXyPSOzs5vKeZQSnhsS1PhXlj6MMyvek1fe4WHKyyDY7AQTqOntxGWgUSoN1G0mA6hSTnkkU
	FZvNLFeti5LSWWv/bYLHaMjUpIe7ivS4zWQdNIDSe2NhMHG2EPfsGxiourzgXlO3rJFD0uCLj3I7J
	L5a95tKYN7W7XkDKdPnuCjCLJBi1YbojjNqtGiXfr33nZViBpFrTVykyrpmunxdgzh1d9yMrOE7U/
	wwNyxjaGYi1nOimOmwKAr7DujJchZL+/Y8cXz7nhnnEI1fdWhIoeIfOycTFM8zoEFEj7S0G3FlUmg
	4lkdTncMagW8ayXnOdpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSpib-0003h9-Fg; Mon, 20 May 2019 21:21:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSpiS-0003fh-D7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 21:21:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so7360297pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 14:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ancjtzq6elCyj2UruyD0ZmMo8pzIwOlqJRkQDWD0+Q4=;
 b=Ra1/NDHLCkHjBDWAQ/jViNFoVW0b3IxT96gXTCODELWtAKgg1lkNuII+jnLv5j4Teo
 640nloVeyk2sSL3B0cPg5gaPNrgeMGAbytdo8Np/1g/H8h5KBoIZIphwZ4GQcFi9BSlb
 9o3GTLE3vFvoqjaPr2B41+y0m6SfPg5hGYHkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ancjtzq6elCyj2UruyD0ZmMo8pzIwOlqJRkQDWD0+Q4=;
 b=ZVSMdPnUm8fYSmpSNi0oE4GxXvYyO6zZA4d4NOaQLsUJitOWpODvGiS1D/RtA7AG2V
 3R87RDn2NIRmuA7hbFSwNKm7WRW9/jxSTGeNJ9vzT/71t/2ns+vnfTpW9LfqeQyj4oT1
 N4qNzZxj6o9IZ6fPE8Jdh9BOoDPGhvxFt3N+Nx9NiN+/+YWfAj7BiXUnl6E6Nqm28krg
 CSHwa62vAlK4wxOQW576wFwRc30BU9wIigSvtW+9dfbQp3qU/uI3i/AFIMo/JrSMKVJX
 Nngscc2horSyinCrXGMrJTNPl1Xar5bRU5iBZMk+yYfORNuot6gVDmkYN0Jy3HsFeFlp
 nBXQ==
X-Gm-Message-State: APjAAAWEK1YiPC0gCoZLdXL79ns84NtafoBQgGyhlTKkK8UR1kKlb2JC
 +FAG4HTpIlS21TFCaYpol6a7cw==
X-Google-Smtp-Source: APXvYqw9S1yPYrd1SlaEZuoSglSNY/CGY6wMOXe8ZG9S0Iy0ayQfjzKwK/uXFS+P+TQk+jsW4OUzLA==
X-Received: by 2002:a63:6dca:: with SMTP id
 i193mr75790021pgc.353.1558387263271; 
 Mon, 20 May 2019 14:21:03 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id a26sm34931443pfl.177.2019.05.20.14.21.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 14:21:02 -0700 (PDT)
Date: Mon, 20 May 2019 14:21:02 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
Message-ID: <20190520212102.GH40515@google.com>
References: <20190520170132.91571-1-mka@chromium.org>
 <20190520170132.91571-2-mka@chromium.org>
 <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_142106_215835_C418FA02 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMDE6MjE6MzNQTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3
cm90ZToKPiBIaSwKPiAKPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDowMSBBTSBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPgo+ID4gbWlja2V5IGNyYW1z
IGEgbG90IG9mIGhhcmR3YXJlIGludG8gYSB0aW55IHBhY2thZ2UsIHdoaWNoIHJlcXVpcmVzCj4g
PiBtb3JlIGFnZ3Jlc3NpdmUgdGhlcm1hbCB0aHJvdHRsaW5nIHRoYW4gZm9yIGRldmljZXMgd2l0
aCBhIGxhcmdlcgo+ID4gZm9vdHByaW50LiBDb25maWd1cmUgdGhlIEdQVSB0aGVybWFsIHpvbmUg
dG8gdGhyb3R0bGUgdGhlIEdQVQo+ID4gcHJvZ3Jlc3NpdmVseSBhdCB0ZW1wZXJhdHVyZXMgPj0g
NjDCsEMuIEhlYXQgZGlzc2lwYXRlZCBieSB0aGUKPiA+IENQVXMgYWxzbyBhZmZlY3RzIHRoZSBH
UFUgdGVtcGVyYXR1cmUsIGhlbmNlIHdlIGNhcCB0aGUgQ1BVCj4gPiBmcmVxdWVuY3kgdG8gMS40
IEdIeiBmb3IgdGVtcGVyYXR1cmVzIGFib3ZlIDY1wrBDLiBGdXJ0aGVyIHRocm90dGxpbmcKPiA+
IG9mIHRoZSBDUFVzIG1heSBiZSBwZXJmb3JtZWQgYnkgdGhlIENQVSB0aGVybWFsIHpvbmUuCj4g
Pgo+ID4gVGhlIGNvbmZpZ3VyYXRpb24gbWF0Y2hlcyB0aGF0IG9mIHRoZSBkb3duc3RyYW0gQ2hy
b21lIE9TIDMuMTQKPiAKPiBzL2Rvd25zdHJhbS9kb3duc3RyZWFtCgphY2sKCj4gCj4gPiArICAg
ICAgIGNvb2xpbmctbWFwcyB7Cj4gPiArICAgICAgICAgICAgICAgLyogQWZ0ZXIgMXN0IGxldmVs
IHRocm90dGxlIHRoZSBHUFUgZG93biB0byBhcyBsb3cgYXMgNDAwIE1IeiAqLwo+ID4gKyAgICAg
ICAgICAgICAgIGdwdV93YXJtaXNoX2xpbWl0X2dwdSB7Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICB0cmlwID0gPCZncHVfYWxlcnRfd2FybWlzaD47Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBjb29saW5nLWRldmljZSA9IDwmZ3B1IFRIRVJNQUxfTk9fTElNSVQgMT47Cj4gCj4gQXMg
cGVyIG15IGNvbW1lbnQgaW4gcGF0Y2ggIzEsIHlvdSBhcmUgcHJvYmFibHkgZW5kaW5nIHVwIHRo
cm90dGxpbmcKPiB0byA1MDAgTUh6LCBub3QgNDAwIE1Iei4gIEJlbG93IHdpbGwgYWxsIGhhdmUg
c2ltaWxhciBwcm9ibGVtcyB1bmxlc3MKPiB3ZSBhY3R1YWxseSBkZWxldGUgdGhlIDUwMCBNSHog
b3BlcmF0aW5nIHBvaW50LgoKVGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dC4gQXMgcGVyIGRp
c3Vzc2lvbiBvbiBwYXRjaCAjMSB3ZSdsbApkaXNhYmxlIHRoZSA1MDAgTUh6IE9QUCB0byBzdGF5
IGluIHN5bmMgd2l0aCBkb3duc3RyZWFtIGFuZCBhdm9pZApwcm9ibGVtcyBpbiBjYXNlIHNvbWVv
bmUgZGVjaWRlcyB0byByZS1wdXJwb3NlIE5QTEwuCgo+ID4gKyAgICAgICAgICAgICAgIH07Cj4g
PiArCj4gPiArICAgICAgICAgICAgICAgLyoKPiA+ICsgICAgICAgICAgICAgICAgKiBTbGlnaHRs
eSBhZnRlciB3ZSB0aHJvdHRsZSB0aGUgR1BVLCB3ZSdsbCBhbHNvIG1ha2Ugc3VyZSB0aGF0Cj4g
PiArICAgICAgICAgICAgICAgICogdGhlIENQVSBjYW4ndCBnbyBmYXN0ZXIgdGhhbiAxLjQgR0h6
LiAgTm90ZSB0aGF0IHdlIHdvbid0Cj4gPiArICAgICAgICAgICAgICAgICogdGhyb3R0bGUgdGhl
IENQVSBsb3dlciB0aGFuIDEuNCBHSHogZHVlIHRvIEdQVSBoZWF0LS13ZSdsbAo+ID4gKyAgICAg
ICAgICAgICAgICAqIGxldCB0aGUgQ1BVIGRvIHRoZSByZXN0IGl0c2VsZi4KPiA+ICsgICAgICAg
ICAgICAgICAgKi8KPiA+ICsgICAgICAgICAgICAgICBncHVfd2FybV9saW1pdF9jcHUgewo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmZ3B1X2FsZXJ0X3dhcm0+Owo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmNwdTAgNCA0PjsKPiAKPiBT
aG91bGRuJ3QgeW91IGxpc3QgY3B1MSwgY3B1MiwgYW5kIGNwdTMgdG9vPyAgVGhhdCdkIG1hdGNo
IHdoYXQKPiB1cHN0cmVhbSBkaWQgZWxzZXdoZXJlIGluIHRoaXMgZmlsZT8KCmFjaywgc2hvdWxk
IGhhdmUgbm90aWNlZCwgSSAneWVsbGVkJyBhdCBvdGhlcnMgYmVmb3JlIGZvciBub3QgZG9pbmcg
dGhpcyAuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
