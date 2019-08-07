Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA6084393
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 07:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f27sIMju9ZCVZ0IoBlIOKXY1QZo2PBv/Ob7vM8O3iPQ=; b=Wu8r0617hBBV5Q
	jT7pVVaeVo0/diShgSXGJLw/KTseQDXw1zAiCcR43skH/W8/iGhJ4doFTDbetchj2xxfgBKhGS4bB
	51+IMQSWn0fQRv527IpnzYWlrrw0Uefhn4KRfGp7esr5rehdLXiXZ+uub5frsWMT8yf1RSfSQJxBZ
	U7od4FUZy8isIDizQoUG0xoXtiSvIlaOuWMx8NWWDhHJtW+Yyq6Eb2+seujF1jk3S3+VSXMIrl9b5
	muWaM8caSZKyvekxccXDaDRO4JGWEuU5369ZHkgA4AsoZVrTjcB4//ksvXOROAHxNHnERcS4VusoD
	EsenoI2z/goTzAk1GHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvEDu-0000Ve-Qx; Wed, 07 Aug 2019 05:10:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvEDl-0000V8-Tq
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 05:10:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so89960164wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 22:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=J8q3C8XNtyFn5o0cwi/6TaYLXcXbfFKt+Egf2sjlgy4=;
 b=kORicJpztHIAwdM1j6OiXotMjAmnbeuzPVZK1OaRQqPj3TihOURdk3RfNJcrNYn71+
 rkYlRYB8UN8FvSCEU7NhsxslbjiCQZziRQytKjphOWY3pDterZ5KGGg5JrXEVIlSOHYl
 n+cJhGcjrw0vhAqoc/2wyY/qPptwNTsyJtbx/ulhiGkEHKSHXx00c2GlqpDuB1Jq/T4F
 pdyjiC2s65LPItL7nqmur9LPmsu9wFUROtYC+RWRagdcw3lV3E35Fn8Ln3xOo5oUUtO2
 ADawuzcz2reCB0yu9FvBoFKqzXWCsfhbE/Q4FV+6aiBn4BOjUH5DqiO8KMApy2GknrLT
 FECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=J8q3C8XNtyFn5o0cwi/6TaYLXcXbfFKt+Egf2sjlgy4=;
 b=nELfGaNA9PwCFJ7p9JPSlXqMmy2aabWC91823PvdwmrRX7YtYF0Rb2fAR/kViPlThG
 3k6OSNATnOqENM+Yo1poJwiOnCljxn/x8L584X6a6CUpWtN/MzgT8rxeQoz6fthVHy9p
 cLNYml5+QJKNqdmVcL3LgaxSeHPcEnnFSfvMRuah9wMzb0z9A8YLj291F8ESENrSlhH9
 GW4nT3TESE8JL4rsxstphxZYfQIS8FSO6dprkKpqYWgvzs8sk+KCHfkLKfwoFjxh0pf5
 OKllNvqJR91g5Vwn28jMmSymiPwml6Ztaw5keQ06wLSs+/ddlwgRhuiBsBbHcwlF7zWT
 1XQw==
X-Gm-Message-State: APjAAAXvJ/BaN1+PK9x1l2OB28xIKuHW+fLCAvx4yXYAZWU84OuMvM+H
 i3P6Oqg8lKNkU3mBgoDGvwqIFGe4OMVkVw==
X-Google-Smtp-Source: APXvYqyjCQmPGVso7ydC60Zaa2gys5Ws3aDZ25TP0UeAxXRLDn2hGC0AAUKFdh/ro7Y4q3pZ1dRHLg==
X-Received: by 2002:a5d:4941:: with SMTP id r1mr7822802wrs.225.1565154643044; 
 Tue, 06 Aug 2019 22:10:43 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id o20sm227955236wrh.8.2019.08.06.22.10.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 22:10:41 -0700 (PDT)
Date: Tue, 6 Aug 2019 22:10:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
Message-ID: <20190807051040.GA117554@archlinux-threadripper>
References: <20190731185023.20954-1-natechancellor@gmail.com>
 <20190803060155.89548-1-natechancellor@gmail.com>
 <20190806.141133.1365654857955536268.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806.141133.1365654857955536268.davem@davemloft.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_221045_991151_68991043 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 lkp@intel.com, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org, willy@infradead.org,
 broonie@kernel.org, linux-next@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDI6MTE6MzNQTSAtMDcwMCwgRGF2aWQgTWlsbGVyIHdy
b3RlOgo+IEZyb206IE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+
Cj4gRGF0ZTogRnJpLCAgMiBBdWcgMjAxOSAyMzowMTo1NiAtMDcwMAo+IAo+ID4gQWZ0ZXIgY29t
bWl0IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0ZXN0IGJ1aWxkIG9uCj4g
PiAhTUlQUyIpLCB0aGUgZm9sbG93aW5nIGNvbWJpbmF0aW9uIG9mIGNvbmZpZ3MgY2F1c2UgYSBm
ZXcgS2NvbmZpZwo+ID4gd2FybmluZ3MgYW5kIGJ1aWxkIGVycm9ycyAoZGlzdGlsbGVkIGZyb20g
YXJtIGFsbHllc2NvbmZpZyBhbmQgUmFuZHkncwo+ID4gcmFuZGNvbmZpZyBidWlsZHMpOgo+ID4g
Cj4gPiAgICAgQ09ORklHX05FVERFVklDRVM9eQo+ID4gICAgIENPTkZJR19TVEFHSU5HPXkKPiA+
ICAgICBDT05GSUdfQ09NUElMRV9URVNUPXkKPiA+IAo+ID4gYW5kIENPTkZJR19PQ1RFT05fRVRI
RVJORVQgYXMgZWl0aGVyIGEgbW9kdWxlIG9yIGJ1aWx0LWluLgo+ID4gCj4gPiBXQVJOSU5HOiB1
bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNRElPX09DVEVPTgo+ID4gICBE
ZXBlbmRzIG9uIFtuXTogTkVUREVWSUNFUyBbPXldICYmIE1ESU9fREVWSUNFIFs9eV0gJiYgTURJ
T19CVVMgWz15XQo+ID4gJiYgNjRCSVQgWz1uXSAmJiBIQVNfSU9NRU0gWz15XSAmJiBPRl9NRElP
IFs9bl0KPiA+ICAgU2VsZWN0ZWQgYnkgW3ldOgo+ID4gICAtIE9DVEVPTl9FVEhFUk5FVCBbPXld
ICYmIFNUQUdJTkcgWz15XSAmJiAoQ0FWSVVNX09DVEVPTl9TT0MgfHwKPiA+IENPTVBJTEVfVEVT
VCBbPXldKSAmJiBORVRERVZJQ0VTIFs9eV0KPiA+IAo+ID4gSW4gZmlsZSBpbmNsdWRlZCBmcm9t
IC4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5jOjE0Ogo+ID4gLi4vZHJpdmVycy9uZXQv
cGh5L21kaW8tY2F2aXVtLmg6MTExOjM2OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YK
PiA+IGZ1bmN0aW9uIOKAmHdyaXRlceKAmTsgZGlkIHlvdSBtZWFuIOKAmHdyaXRlbOKAmT8KPiA+
IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ID4gICAxMTEgfCAjZGVm
aW5lIG9jdF9tZGlvX3dyaXRlcSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2b2lkICopYWRkcikK
PiA+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KPiA+
IAo+ID4gQ09ORklHXzY0QklUIGlzIG5vdCBzdHJpY3RseSBuZWNlc3NhcnkgaWYgdGhlIHByb3Bl
ciByZWFkcS93cml0ZXEKPiA+IGRlZmluaXRpb25zIGFyZSBpbmNsdWRlZCBmcm9tIGlvLTY0LW5v
bmF0b21pYy1sby1oaS5oLgo+ID4gCj4gPiBDT05GSUdfT0ZfTURJTyBpcyBub3QgbmVlZGVkIHdo
ZW4gQ09ORklHX0NPTVBJTEVfVEVTVCBpcyBlbmFibGVkIGJlY2F1c2UKPiA+IG9mIGNvbW1pdCBm
OWRjOWFjNTE2MTAgKCJvZi9tZGlvOiBBZGQgZHVtbXkgZnVuY3Rpb25zIGluIG9mX21kaW8uaC4i
KS4KPiA+IAo+ID4gRml4ZXM6IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0
ZXN0IGJ1aWxkIG9uICFNSVBTIikKPiA+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8
bGtwQGludGVsLmNvbT4KPiA+IFJlcG9ydGVkLWJ5OiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5l
bC5vcmc+Cj4gPiBSZXBvcnRlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5v
cmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JA
Z21haWwuY29tPgo+IAo+IEFwcGxpZWQgdG8gbmV0LW5leHQuCj4gCj4gUGxlYXNlIG1ha2UgaXQg
Y2xlYXIgd2hhdCB0cmVlIHlvdXIgY2hhbmdlcyBhcmUgdGFyZ2V0dGluZyBpbiB0aGUgZnV0dXJl
LAo+IHRoYW5rIHlvdS4KClNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLCBJJ2xsIGRvIG15IGJlc3Qg
dG8gYWRkIGEgcGF0Y2ggc3VmZml4IGluIHRoZQpmdXR1cmUuCgpUaGFuayB5b3UgZm9yIHBpY2tp
bmcgdGhpcyB1cCEKTmF0aGFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
