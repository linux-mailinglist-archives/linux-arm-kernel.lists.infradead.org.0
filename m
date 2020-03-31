Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E0E1999DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrQDP78IwC5wOCZy1dl4dTWKZ3n0Hou+/R84sxFqeRc=; b=RedBiSqbbfbinB
	4oyAOz5dpH2M7/v6GYo2hYacvfZwKWf4QovkKTN3B9AUNzaCr6sGLh0Rq9fj2UgJaGLfkgSfjFl0D
	HyK7JsT0IIhMG++7YelxSV6fKWTUhkMUkXfHZVHPyaaM8W67A1oDBhHGQqpb8JQZladcMbEktP9tC
	LztxEaQOM5rfpHfVTHDfTEBPtRmxIaz/JVa9Wr2pjXR63J8b4rKZfCNQe8hPGGSy+ZR9YMcvh7OmG
	qL8YAC4lls3rcaygvquRlhIEOfppGzHTHDntzzsJpl9kJbd0ph+aDvXG8KuiA0NkZGZlcxuIgQEv4
	BNLvXuBmJrQjGIfO7yqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIwU-0002Xq-Tr; Tue, 31 Mar 2020 15:36:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIvW-00022X-1v
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:35:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id h6so11909456lfp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=xWWQQMjnoOXj+s35rdwO3AKWUNgB5UP2RN102SZyf9M=;
 b=n6iR0Ax8nI25kt13ZeGCsBvnzPWCNcQh25Y3upu8+faElg1UmeSUZvzyCrEobwnxwc
 gVNVJMeJVkjTnoRkX4CJnvEJrV5P1NW4deeOfm9g0Nercdv7CYLH2hH8ny2ka87gesHx
 oyxIlVkIQuVkmpz7Tc/HGKF1aNxOjdpCvGTO1KhDoc0zeQuX/SOzgZ/pfeRUVUzuRBsp
 XpFEKvQf+En0EZlW9iwD/63G2LR5zEzozv6vJ0Hy/LjskoC+GbEHzEV/d1aTUQgQQ9JP
 cnMtBYNuvuGC9QJ2dMRo9w3h5iQSX3UHfPwiWqcWYzdtVloTd6TanNL1PTGtFWZycgcU
 N+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=xWWQQMjnoOXj+s35rdwO3AKWUNgB5UP2RN102SZyf9M=;
 b=aCQhD8vn0T7VbQoHLsfNd7aieEbqIpTPc4sfRRxUlAMndYc0lz1QXs5KCHaC2kqTJP
 GXPYFIa0AmkFgWSDFfms3MkoI7sG5o80Es1nIuZHJcXSatJaMXN/HxkzzjxLC4Oj6aOS
 ozVyNW4HCjMLna4wMFMBPLORgImhbvS8T9YhJaItZxJWBE78qG3jnHshQ5uRBk/4bH4L
 ZsTzYOyYDEvyT2Kb/W3lFdGWDucwqvBgHxGDYd5D2LM41KSMPBCaLr+vqZxU7xxu8joB
 6r81DOyytjXk+eVVDnSNtf0ky+0Vm/oOw8gVd05dR4YPlycKnOzlSEnn7nZo6NiVVIy8
 93sw==
X-Gm-Message-State: AGi0PubGd1wAnO49nsifOstbfdr6M0Y90PCgFMqnIWIcdYZbnHqmdIGH
 8tGVa+M3LCaD0iexQHvh3l6+6KTG
X-Google-Smtp-Source: APiQypLmVLtT8c3Ae8yFJGreZRae3ELGPZCOey9sa+nDWvoHUeTggKwcWmX/TR05X/+9guBOCeUrhg==
X-Received: by 2002:ac2:4113:: with SMTP id b19mr2153946lfi.70.1585668599197; 
 Tue, 31 Mar 2020 08:29:59 -0700 (PDT)
Received: from pablo-laptop ([2a02:a315:5445:5300:c0c9:238d:e5e0:ede5])
 by smtp.googlemail.com with ESMTPSA id j125sm8827924lfj.38.2020.03.31.08.29.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 08:29:58 -0700 (PDT)
Message-ID: <d9fe575926342b355f76e1f38fef62f0d7d38075.camel@gmail.com>
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
From: =?UTF-8?Q?Pawe=C5=82?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Paul Cercueil
 <paul@crapouillou.net>
Date: Tue, 31 Mar 2020 17:29:56 +0200
In-Reply-To: <6ca59c1b-2676-e69d-e4eb-4667a81d155f@samsung.com>
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200318142549eucas1p1793027850923ebad20b4691cba676671@eucas1p1.samsung.com>
 <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
 <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
 <X7728Q.UX8A28S31JO92@crapouillou.net>
 <6ca59c1b-2676-e69d-e4eb-4667a81d155f@samsung.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083542_101286_EECB596B 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pawel.mikolaj.chmiel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDIwLTAzLTMxIGF0IDE1OjU1ICswMjAwLCBNYXJlayBTenlwcm93c2tpIHdyb3Rl
Ogo+IEhpIFBhdWwsCj4gCj4gT24gMjAyMC0wMy0zMSAxNTowOSwgUGF1bCBDZXJjdWVpbCB3cm90
ZToKPiA+IENjOiBQYXdlxYIgQ2htaWVsIDxwYXdlbC5taWtvbGFqLmNobWllbEBnbWFpbC5jb20+
Cj4gPiAKPiA+IEhpIE1hcmVrLAo+ID4gCj4gPiBMZSBtYXIuIDMxIG1hcnMgMjAyMCDDoCA3OjM2
LCBNYXJlayBTenlwcm93c2tpIAo+ID4gPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4gYSDDqWNy
aXQgOgo+ID4gPiBIaSBQYXVsLAo+ID4gPiAKPiA+ID4gT24gMjAyMC0wMy0xOCAxNToyNSwgUGF1
bCBDZXJjdWVpbCB3cm90ZToKPiA+ID4gPiA+ID4gICArICAgIH07Cj4gPiA+ID4gPiA+ICAgKwo+
ID4gPiA+ID4gPiAgICsgICAgdHNwX3JlZzogcmVndWxhdG9yLTEgewo+ID4gPiA+ID4gPiAgICsg
ICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gPiA+ID4gICArICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJUU1BfRklYRURfVk9MVEFHRVMiOwo+ID4gPiA+ID4gPiAg
ICsgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiA+ID4g
PiAgICsgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiA+
ID4gPiAgICsgICAgICAgIGdwaW8gPSA8JmdwbDAgMyBHUElPX0FDVElWRV9ISUdIPjsKPiA+ID4g
PiA+ID4gICArICAgICAgICBzdGFydHVwLWRlbGF5LXVzID0gPDcwMDAwPjsKPiA+ID4gPiA+ID4g
ICArICAgICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPiA+ID4gPiA+ICAgKyAgICAgICAgcmVn
dWxhdG9yLWJvb3Qtb247Cj4gPiA+ID4gPiA+ICAgKyAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1v
bjsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gIGFsd2F5cy1vbiBhbmQgYm9vdC1vbiBzaG91bGQgbm90
IGJlIG5lZWRlZC4gWW91IGhhdmUgYSBjb25zdW1lciAKPiA+ID4gPiA+IGZvciB0aGlzCj4gPiA+
ID4gPiAgcmVndWxhdG9yLgo+ID4gPiA+IAo+ID4gPiA+ICBBYm91dCB0aGlzOiB0aGUgdG91Y2hz
Y3JlZW4gZHJpdmVyIGRvZXMgbm90IHVzZSBhIHJlZ3VsYXRvciwgc28gSQo+ID4gPiA+ICBiZWxp
ZXZlIHRoYXQncyB3aHkgdGhlc2UgcHJvcGVydGllcyB3ZXJlIGhlcmUuCj4gPiA+ID4gCj4gPiA+
ID4gIEkgc2VudCBwYXRjaGVzIHVwc3RyZWFtIHRvIGFkZHJlc3MgdGhlIGlzc3VlOgo+ID4gPiA+
ICBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3VybD9rPWU4YWVkYzI5LWI1MzA3MmIzLWU4
YWY1NzY2LTBjYzQ3YTMzNmZhZS03NTk1NzlmZDU3NmQ4MzgyJnU9aHR0cHM6Ly9sa21sLm9yZy9s
a21sLzIwMjAvMy8xNS85NCAKPiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiAgSSBiZWxpZXZlIHRo
aXMgbWVhbnMgSSBjYW5ub3QgbWVyZ2UgdGhlIGk5MTAwIGRldmljZXRyZWUgdW50aWwgaXQgaXMK
PiA+ID4gPiAgYWNrZWQuCj4gPiA+IAo+ID4gPiBPbmUgbW9yZSBpbmZvcm1hdGlvbiAtIHNpbWls
YXIgY2hhbmdlIGhhcyBiZWVuIGFscmVhZHkgcG9zdGVkLCBidXQgaXQKPiA+ID4gbG9va3MgaXQg
Z290IGxvc3QgdGhlbjogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDU1MDkw
My8KPiA+IAo+ID4gSSB3YXMgYXdhcmUgb2YgdGhpcyBwYXRjaCwgYnV0IGRpZG4ndCBrbm93IGl0
IHdhcyBzZW50IHVwc3RyZWFtLgo+ID4gCj4gPiBUaGlzIG90aGVyIHBhdGNoIHVzZXMgdHdvIHJl
Z3VsYXRvcnMsIHZkZC9hdmRkIGJ1dCBkb2Vzbid0IGdpdmUgYW55IAo+ID4gcmVhc29uIHdoeS4K
PiA+IAo+IEkndmUgY2hlY2tlZCB0aGUgVW5pdmVyc2FsQzIxMCBzY2hlbWF0aWMsIHdoaWNoIHVz
ZXMgdGhlIHNhbWUgCj4gdG91Y2hzY3JlZW4gY2hpcC4gVGhlcmUgYXJlIDIgc3VwcGxpZXMgdG8g
dGhlIHRvdWNoc2NyZWVuIGNoaXA6IDIuOFYgVkREIAo+IGFuZCAzLjNWIEFWREQuIEJvdGggYXJl
IGVuYWJsZWQgYnkgdGhlIHNhbWUgR1BJTyBwaW4gdGhvdWdoLiBUaGVyZSBpcyAKPiBob3dldmVy
IG5vIHJlc2V0IEdQSU8gcGluIHRoZXJlLgpIaQpEb24ndCByZW1lbWJlciBub3cgaG93IGl0IHdv
cmtlZCBvbiBHYWxheHkgUzEsIGJ1dCBpdCBsb29rcyBsaWtlIGl0IGhhcwp0aGUgc2FtZSBzZXR1
cCAtIHR3byByZWd1bGF0b3JzIGVuYWJsZWQgYnkgb25lIEdQSU8gcGluLgo+IAo+ID4gUGF3ZcWC
LCBpcyB0aGF0IHJlYWxseSBuZWVkZWQ/Cj4gPiAKPiBCZXN0IHJlZ2FyZHMKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
