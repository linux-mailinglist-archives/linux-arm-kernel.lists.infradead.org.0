Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DFE12D75C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUky3PAyGbJxqRhk7GV2fcvbFnPdsP/J+pJaowi8WMw=; b=lcgVB9UvFxjESZ
	TRSM5KTwRwNrGlFDmvbrKnh6AK7IPtVGQwaJXDUlEIYWDXBLCwv8fb/OIMknAmqIhj9DdEjW2/eIX
	Ro8xrgK6joIAgRIEKKmhKAtgw3GCK+ECO18bs6tvzg1+7c81GP9H0wVHopZKr1BxpP3u3E431yp6o
	p/I2+H90L4SCBYg3mfOAMKTpt2Xm5IP5GS2S1vfv5DR/vzrp2+BEPGxn5cU46v8+ntlqYiV9lTnD+
	wTITuVdnKuTeg7squXrdzXU8zsrfA9VBDrMH87rF387T9qy2TbqsKBYz5npcQB3IGYCs5qVIx2B+e
	J821WIbCUl0LTIQdZIKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDk6-0003z8-HZ; Tue, 31 Dec 2019 09:23:10 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDjv-0003yY-DT
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 09:23:00 +0000
Received: by mail-ed1-f67.google.com with SMTP id c26so34820580eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 01:22:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zcMF0DszYjdAAeSzpwgiwYYj0Rmxb5AATwzX117pufo=;
 b=N8y9bOV/6/hdt1JxPDGL+uyKmRE15RR1gBpX8Z6+rqjnoXQGS49ZB57dN1T+gdIKTz
 9ZNLNqd0qbAxb6GZXZpv8d4hzeFsXqeAH1UJkaoUvZ5jxT2PGR5AqfSuEuz+4C95x9ro
 PuEwaBQvcvTgwHYJEjrA39ph2plRzwdI3MT+Oz1XaAh2zXYHiF/nq65dpU1xF2o7qPRY
 dozCtBSlo/WN3VhmV0nQN34WMCl8snTEp1/6nb9JGBXjdBOb8eqdx1ql+6HGMtKRP1yR
 kTojnozQh1Qq8uUMoINhpK2VT+jPf9kLEBpAvQxkfCH7j1vnI82rgWRG+U2gB8l+sQab
 5lJA==
X-Gm-Message-State: APjAAAWRCuCzm0oOT5imAlW8NRaUy8IcUWwuvRwjgey13i2pR71HpD6q
 sj4wZRI/fSOTrtcDCCvO0kc=
X-Google-Smtp-Source: APXvYqzgzVpvRf+8IP6z3ujB3SZIWKfFAGfLl8aejvQf9p703WelAn4funQmIQW8H6z6pzmhM0Yc6w==
X-Received: by 2002:a17:906:1fd5:: with SMTP id
 e21mr44856105ejt.97.1577784177492; 
 Tue, 31 Dec 2019 01:22:57 -0800 (PST)
Received: from pi3 ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id x15sm5693555edl.48.2019.12.31.01.22.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 01:22:56 -0800 (PST)
Date: Tue, 31 Dec 2019 10:22:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@samsung.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
Message-ID: <20191231092254.GA6939@pi3>
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com>
 <20191230154405.GC4918@pi3>
 <2922135223b01126277ef92a53e6b294bc17bb5c.camel@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2922135223b01126277ef92a53e6b294bc17bb5c.camel@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_012259_457105_954E4C83 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMzEsIDIwMTkgYXQgMDg6MTg6MDFBTSArMDEwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gSGksCj4gCj4gT24gTW9uLCAyMDE5LTEyLTMwIGF0IDE2OjQ0ICswMTAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gT24gRnJpLCBEZWMgMjAsIDIwMTkgYXQgMTI6NTY6
NTBQTSArMDEwMCwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gPiA+IFRoaXMgcGF0Y2ggYWRkcyB0
aGUgZm9sbG93aW5nIHByb3BlcnRpZXMgdG8gdGhlIEV4eW5vczQ0MTIgRFQ6Cj4gPiA+ICAgLSBl
eHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1ub2RlOiB0byBkZWNsYXJlIGNvbm5lY3Rpb25zIGJl
dHdlZW4KPiA+ID4gICAgIG5vZGVzIGluIG9yZGVyIHRvIGd1YXJhbnRlZSBQTSBRb1MgcmVxdWly
ZW1lbnRzIGJldHdlZW4gbm9kZXM7Cj4gPiA+ICAgLSAjaW50ZXJjb25uZWN0LWNlbGxzOiByZXF1
aXJlZCBieSB0aGUgaW50ZXJjb25uZWN0IGZyYW1ld29yay4KPiA+ID4gCj4gPiA+IE5vdGUgdGhh
dCAjaW50ZXJjb25uZWN0LWNlbGxzIGlzIGFsd2F5cyB6ZXJvIGFuZCBub2RlIElEcyBhcmUgbm90
Cj4gPiA+IGhhcmRjb2RlZCBhbnl3aGVyZS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFy
dHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBhcmNo
L2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSB8IDUgKysrKysKPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+IAo+ID4gVGhlIG9yZGVyIG9m
IHBhdGNoZXMgaXMgY29uZnVzaW5nLiBQYXRjaGVzIDQgYW5kIDYgYXJlIHNwbGl0IC0gZG8gdGhl
Cj4gPiBkZXBlbmQgb24gNT8gSSBkb3VidCBidXQuLi4KPiAKPiBMZXQgbWUgZWxhYm9yYXRlOgo+
IAo+IFRoZSBvcmRlciBvZiB0aGUgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBpcyBzdWNoIHRoYXQg
ZXZlcnkgc3Vic2VxdWVudAo+IHBhdGNoIGFkZHMgc29tZSBmdW5jdGlvbmFsaXR5IChhbmQsIG9m
IGNvdXJzZSwgYXBwbHlpbmcgcGF0Y2hlcyBvbmUtYnktb25lCj4geWllbGRzIGEgd29ya2luZyBr
ZXJuZWwgYXQgZXZlcnkgc3RlcCkuIFNwZWNpZmljYWxseSBmb3IgcGF0Y2hlcyAwNC0tMDc6Cj4g
Cj4gIC0tIHBhdGNoIDA0IGFkZHMgaW50ZXJjb25uZWN0IF9wcm92aWRlcl8gcHJvcGVydGllcyBm
b3IgRXh5bm9zNDQxMjsKPiAgLS0gcGF0Y2ggMDUgaW1wbGVtZW50cyBpbnRlcmNvbm5lY3QgcHJv
dmlkZXIgbG9naWMgKGRlcGVuZHMgb24gcGF0Y2ggMDQpOwo+ICAtLSBwYXRjaCAwNiBhZGRzIGlu
dGVyY29ubmVjdCBfY29uc3VtZXJfIHByb3BlcnRpZXMgZm9yIEV4eW5vczQ0MTIgbWl4ZXI7Cj4g
IC0tIHBhdGNoIDA3IGltcGxlbWVudHMgaW50ZXJjb25uZWN0IGNvbnN1bWVyIGxvZ2ljIChkZXBl
bmRzIG9uIHBhdGNoZXMKPiAgICAgMDUgJiAwNik7Cj4gCj4gTXkgcmVhc29uaW5nIGlzIHRoYXQg
dGhpcyBvcmRlciBhbGxvd3MgdG8gZS5nLiwgbWVyZ2UgdGhlIGludGVyY29ubmVjdAo+IHByb3Zp
ZGVyIGZvciBleHlub3MtYnVzIGFuZCBsZWF2ZSB0aGUgY29uc3VtZXJzIGZvciBsYXRlciAobm90
IGxpbWl0ZWQgdG8KPiB0aGUgbWl4ZXIpLiBJIGhvcGUgdGhpcyBtYWtlcyBzZW5zZS4KCkl0IGlz
IHdyb25nLiBUaGUgZHJpdmVyIHNob3VsZCBub3QgZGVwZW5kIG9uIERUUyBjaGFuZ2VzIGJlY2F1
c2U6CjEuIERUUyBhbHdheXMgZ28gdGhyb3VnaCBzZXBhcmF0ZSBicmFuY2ggYW5kIHRyZWUsIHNv
IGxhc3QgcGF0Y2gKICAgd2lsbCBoYXZlIHRvIHdhaXQgdXAgdG8gMyBjeWNsZXMgKCEhISksCjIu
IFlvdSBicmVhayBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LgoKSW4gY2VydGFpbiBjYXNlcyBkZXBl
bmRlbmN5IG9uIERUUyBjaGFuZ2VzIGlzIG9rOgoxLiBDbGVhbmluZyB1cCBkZXByZWNhdGVkIHBy
b3BlcnRpZXMsCjIuIElnbm9yaW5nIHRoZSBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IGZvciBlLmcu
IG5ldyBwbGF0Zm9ybXMuCgpOb25lIG9mIHRoZXNlIGFyZSBhcHBsaWNhYmxlIGhlcmUuCgpZb3Ug
bmVlZCB0byByZXdvcmsgaXQsIHB1dCBEVFMgY2hhbmdlcyBhdCB0aGUgZW5kLiBUaGlzIGNsZWFy
bHkgc2hvd3MKdGhhdCB0aGVyZSBpcyBubyB3cm9uZyBkZXBlbmRlbmN5LgoKPiAKPiA+IEFkanVz
dCB0aGUgdGl0bGUgdG8gbWF0Y2ggdGhlIGNvbnRlbnRzIC0geW91IGFyZSBub3QgYWRkaW5nIGJp
bmRpbmdzIGJ1dAo+ID4gcHJvcGVydGllcyB0byBidXMgbm9kZXMuIEFsc28gdGhlIHByZWZpeCBp
cyBBUk06IChsb29rIGF0IHJlY2VudAo+ID4gY29tbWl0cykuCj4gCj4gT0suCj4gCj4gPiA+IAo+
ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29t
bW9uLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRz
aQo+ID4gPiBpbmRleCA0Y2UzZDc3YTY3MDQuLmQ5ZDcwZWFjZmNhZiAxMDA2NDQKPiA+ID4gLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4g
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+
ID4gQEAgLTkwLDYgKzkwLDcgQEAKPiA+ID4gICZidXNfZG1jIHsKPiA+ID4gIAlleHlub3MscHBt
dS1kZXZpY2UgPSA8JnBwbXVfZG1jMF8zPiwgPCZwcG11X2RtYzFfMz47Cj4gPiA+ICAJdmRkLXN1
cHBseSA9IDwmYnVjazFfcmVnPjsKPiA+ID4gKwkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+
ID4gCj4gPiBUaGlzIGRvZXMgbm90IGxvb2sgbGlrZSBwcm9wZXJ0eSBvZiBPZHJvaWQgYnV0IEV4
eW5vczQ0MTIgb3IgRXh5bm9zNC4KPiAKPiBTdHJhbmdlbHkgZW5vdWdoLCB0aGlzIGZpbGUgaXMg
d2hlcmUgdGhlICdleHlub3MscGFyZW50LWJ1cycgKGFrYS4gJ2RldmZyZXEnKQo+IHByb3BlcnRp
ZXMgYXJlIGxvY2F0ZWQgKGFuZCBldmVyeXRoaW5nIGluIHRoaXMgUkZDIGNvbmNlcm5zIGRldmZy
ZXEpLgoKSSBjYW5ub3QgZmluZCBleHlub3MscGFyZW50LWJ1cyBpbiBleHlub3M0NDEyLW9kcm9p
ZC1jb21tb24uZHRzaS4gQ2FuCnlvdSBlbGFib3JhdGU/CgpCZXN0IHJlZ2FyZHMsCktyenlzenRv
ZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
