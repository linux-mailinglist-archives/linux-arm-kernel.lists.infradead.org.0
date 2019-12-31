Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBB712D805
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wh7j4aqHXw631Rn68nRP6CV0LBAtFTHOR4iyvJaPGyM=; b=X5g4MbTyD6G0fv
	uIzYCXmY7tHOkIC8lW+dNrLRmthTyTZZsOXgm1dc10smCYZv5L7ZHwAAY8JEcgMNvH9SfXclQmptI
	CzISEPGNPTXwesYYX8cjqH/HC5jMFwLwfhxaRn4/yBB50YKpIskTJ+toU/Pk/pgPnrOdxL1RewilH
	mS4LFKe5xiHBQXUQFlGyAvlccqvT4sPhYyRwMBMjp5RM4Ki+FU1IfrtYgW6hhh1QC1OV+h/dNXcsk
	bV4tSrCadnMu4yhqui4fVyTUozRgd4dvupEwLUeMbdvrpoQcX80+ugM+zW1wX/aZ7ImHSOWvWe4pK
	JjZGEtll+qD8Oa6Pff8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEuy-0006nA-Nz; Tue, 31 Dec 2019 10:38:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEum-0006mf-AN
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:38:17 +0000
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A9A9206EE
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 10:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577788695;
 bh=m7kqKRaz9I7n5UoZ+mA+Vd26mdg3UIRo076jMwTZUKs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q3XoN1vz6LEKRxchVQUr7q5oeq2tsBMYmGeUf4u/OvhOMxaAKr4vG/QYUDqaVVHwX
 QGqDAcHdwH5Mob7lbwJF9zVBS0hCj69c3rl/IKR5Ux6RX3MBMMNew0m75CxF8EULHk
 mjKvIEbQ3et3gumhM7Po42lSgQbrtY8SxP2QHFpg=
Received: by mail-lj1-f172.google.com with SMTP id l2so35971151lja.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 02:38:15 -0800 (PST)
X-Gm-Message-State: APjAAAVYNyCPljdXGjk/bvvg4aPnm5GbwcqMjo+oCVJsV1H6jqDVTJYJ
 2kK8Y3acBUisooT+qpBRwqOVsrW4lSsMEwUdWbM=
X-Google-Smtp-Source: APXvYqzMKfKZfiRH2jKjUg/iq48Ir3TkHa0dR/6uA47j3MXuIg/2O24VXSsRqlCLUUsAC2Ywf0ObYtS3A/s2A3dYGAc=
X-Received: by 2002:a05:651c:232:: with SMTP id
 z18mr37049562ljn.85.1577788693398; 
 Tue, 31 Dec 2019 02:38:13 -0800 (PST)
MIME-Version: 1.0
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com> <20191230154405.GC4918@pi3>
 <2922135223b01126277ef92a53e6b294bc17bb5c.camel@samsung.com>
 <20191231092254.GA6939@pi3>
 <99427c18b1fcca3bc21e69609500abdbbef59167.camel@samsung.com>
 <20191231100234.GA7024@pi3>
 <29ed54c7700e35fb95fff4f4f5580eba24ffbb35.camel@samsung.com>
In-Reply-To: <29ed54c7700e35fb95fff4f4f5580eba24ffbb35.camel@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 31 Dec 2019 11:38:02 +0100
X-Gmail-Original-Message-ID: <CAJKOXPezRMb0OnpcRWrRheKbBjyzqNXG3TDX-MQkjAm2sTSr1w@mail.gmail.com>
Message-ID: <CAJKOXPezRMb0OnpcRWrRheKbBjyzqNXG3TDX-MQkjAm2sTSr1w@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_023816_408489_4A88A886 
X-CRM114-Status: GOOD (  31.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, Seung Woo Kim <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAzMSBEZWMgMjAxOSBhdCAxMToyMywgQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNh
bXN1bmcuY29tPiB3cm90ZToKPiA+Cj4gPiBUaGUgb3JkZXIgb2YgcGF0Y2hlcyBzaG91bGQgcmVm
bGVjdCBmaXJzdCBvZiBhbGwgcmVhbCBkZXBlbmRlbmN5Lgo+ID4gV2hldGhlciBpdCBjb21waWxl
cywgd29ya3MgYXQgYWxsIGFuZCBkb2VzIG5vdCBicmVhayBhbnl0aGluZy4gIExvZ2ljYWwKPiA+
IGRlcGVuZGVuY3kgb2YgIndoZW4gdGhlIGZlYXR1cmUgd2lsbCBzdGFydCB3b3JraW5nIiBpcwo+
ID4gaXJyZWxldmFudCB0byBEVFMgYmVjYXVzZSBEVFMgZ29lcyBpbiBzZXBhcmF0ZSB3YXkgYW5k
IGRyaXZlciBpcwo+ID4gaW5kZXBlbmRlbnQgb2YgaXQuCj4KPiBUaGUgb3JkZXIgb2YgcGF0Y2hl
cyBkb2VzIGluZGVlZCByZWZsZWN0IHJlYWwgZGVwZW5kZW5jeS4gSSBjYW4gYWxzbyByZW9yZGVy
Cj4gdGhlbSAocHJlc2VydmluZyB0aGUgZGVwZW5kZW5jaWVzKSBzbyB0aGF0IERUUyBwYXRjaGVz
IGdvIGZpcnN0IGluIHRoZSBzZXJpZXMKPiBpZiB0aGlzIGlzIHRoZSBtb3JlIHByZWZlcnJlZCB3
YXkuCgpJdCBsb29rcyB3cm9uZyB0aGVuLiBEcml2ZXIgc2hvdWxkIG5vdCBkZXBlbmQgb24gRFRT
LiBJIGNhbm5vdCBmaW5kCnRoZSBwYXRjaCBjaGFuZ2luZyBiaW5kaW5ncyAoc2hvdWxkIGJlIGZp
cnN0IGluIHBhdGNoc2V0KSB3aGljaCBjb3VsZAphbHNvIHBvaW50IHRvIHRoaXMgcHJvYmxlbS4K
Ckl0IHNlZW1zIHlvdSBhZGRlZCByZXF1aXJlbWVudCBmb3IgaW50ZXJjb25uZWN0IHByb3BlcnRp
ZXMgd2hpbGUgaXQKc2hvdWxkIGJlIHJhdGhlciBvcHRpb25hbC4KCj4gPiA+IEkgc3RpbGwgdGhp
bmsgdGhlIG9yZGVyIG9mIHRoZXNlIHBhdGNoZXMgaXMgdGhlIG1vc3QgbG9naWNhbCBvbmUgZm9y
IHNvbWVvbmUKPiA+ID4gcmVhZGluZyB0aGlzIFJGQyBhcyBhIHdob2xlLgo+ID4KPiA+IEkgYW0g
c29ycnkgYnV0IGl0IGJyaW5ncyBvbmx5IGNvbmZ1c2lvbi4gRFRTIGlzIG9ydGhvZ29uYWwgb2Yg
dGhlCj4gPiBkcml2ZXIgY29kZS4gWW91IGNvdWxkIGV2ZW4gcG9zdCB0aGUgcGF0Y2hzZXQgd2l0
aG91dCBEVFMgKGFsdGhvdWdoIHRoZW4KPiA+IGl0IHdvdWxkIHJhaXNlIHF1ZXN0aW9ucyB3aGVy
ZSBpcyB0aGUgdXNlciBvZiBpdCwgYnV0IHN0aWxsLCB5b3UKPiA+IGNvdWxkKS4KPiA+Cj4gPiBG
dXJ0aGVyLCBEVFMgZGVzY3JpYmVzIGFsc28gaGFyZHdhcmUgc28geW91IGNvdWxkIHNlbmQgY2Vy
dGFpbiBEVFMKPiA+IHBhdGNoZXMgd2l0aG91dCBkcml2ZXIgaW1wbGVtZW50YXRpb24gdG8gZGVz
Y3JpYmUgdGhlIGhhcmR3YXJlLgo+ID4KPiA+IERyaXZlciBjb2RlIGFuZCBEVFMgYXJlIGtpbmQg
b2YgZGlmZmVyZW50IHdvcmxkcyBzbyBtaXhpbmcgdGhlbSB1cCBmb3IKPiA+IGxvZ2ljYWwgcmV2
aWV3IGRvZXMgbm90IHJlYWxseSBtYWtlIGFueSBzZW5zZS4KPiA+Cj4gPiBOb3QgbWVudGlvbmlu
ZyBpdCBpcyBkaWZmZXJlbnQgdGhhbiBtb3N0IG9mIG90aGVyIHBhdGNoZXMgb24gbWFpbGluZwo+
ID4gbGlzdHMuCj4gPgo+ID4gQlRXLCBpdCBpcyB0aGUgc2FtZSBhcyBiaW5kaW5ncyB3aGljaCBz
aG91bGQgKGFsbW9zdCkgYWx3YXlzIGdvIGZpcnN0IGFzCj4gPiBzZXBhcmF0ZSBwYXRjaGVzLgo+
Cj4gVGhhbmtzIGZvciBlbGFib3JhdGluZyBvbiB0aGlzLCBJIGFwcHJlY2lhdGUgaXQuCj4gUmVn
YXJkaW5nIHlvdXIgb3JpZ2luYWwgY29uY2VybiwgcGF0Y2hlcyAwNCAmIDA2IGFyZSBzZXBhcmF0
ZSBmb3Igc2V2ZXJhbAo+IHJlYXNvbnMsIG9uZSBvZiB3aGljaCBpcyB0aGF0IHRoZXkgYXJlIHJl
bGF0ZWQgdG8gdHdvIGRpZmZlcmVudCBkcml2ZXJzCj4gKGV4eW5vcy1idXMgdnMuIGV4eW5vcy1t
aXhlcikuCgpJdCdzIG9rYXkgdGhlbiAoZm9yIHRoZW0gdG8gYmUgc3BsaXQpLgoKPgo+ID4gPgo+
ID4gPiA+IEluIGNlcnRhaW4gY2FzZXMgZGVwZW5kZW5jeSBvbiBEVFMgY2hhbmdlcyBpcyBvazoK
PiA+ID4gPiAxLiBDbGVhbmluZyB1cCBkZXByZWNhdGVkIHByb3BlcnRpZXMsCj4gPiA+ID4gMi4g
SWdub3JpbmcgdGhlIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgZm9yIGUuZy4gbmV3IHBsYXRmb3Jt
cy4KPiA+ID4gPgo+ID4gPiA+IE5vbmUgb2YgdGhlc2UgYXJlIGFwcGxpY2FibGUgaGVyZS4KPiA+
ID4gPgo+ID4gPiA+IFlvdSBuZWVkIHRvIHJld29yayBpdCwgcHV0IERUUyBjaGFuZ2VzIGF0IHRo
ZSBlbmQuIFRoaXMgY2xlYXJseSBzaG93cwo+ID4gPiA+IHRoYXQgdGhlcmUgaXMgbm8gd3Jvbmcg
ZGVwZW5kZW5jeS4KPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQWRqdXN0IHRoZSB0aXRs
ZSB0byBtYXRjaCB0aGUgY29udGVudHMgLSB5b3UgYXJlIG5vdCBhZGRpbmcgYmluZGluZ3MgYnV0
Cj4gPiA+ID4gPiA+IHByb3BlcnRpZXMgdG8gYnVzIG5vZGVzLiBBbHNvIHRoZSBwcmVmaXggaXMg
QVJNOiAobG9vayBhdCByZWNlbnQKPiA+ID4gPiA+ID4gY29tbWl0cykuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gT0suCj4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpIGIvYXJj
aC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4gPiA+ID4g
PiBpbmRleCA0Y2UzZDc3YTY3MDQuLmQ5ZDcwZWFjZmNhZiAxMDA2NDQKPiA+ID4gPiA+ID4gPiAt
LS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+ID4g
PiA+ID4gPiA+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1v
bi5kdHNpCj4gPiA+ID4gPiA+ID4gQEAgLTkwLDYgKzkwLDcgQEAKPiA+ID4gPiA+ID4gPiAgJmJ1
c19kbWMgewo+ID4gPiA+ID4gPiA+ICAgICBleHlub3MscHBtdS1kZXZpY2UgPSA8JnBwbXVfZG1j
MF8zPiwgPCZwcG11X2RtYzFfMz47Cj4gPiA+ID4gPiA+ID4gICAgIHZkZC1zdXBwbHkgPSA8JmJ1
Y2sxX3JlZz47Cj4gPiA+ID4gPiA+ID4gKyAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoaXMgZG9lcyBub3QgbG9vayBsaWtlIHByb3BlcnR5IG9m
IE9kcm9pZCBidXQgRXh5bm9zNDQxMiBvciBFeHlub3M0Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IFN0
cmFuZ2VseSBlbm91Z2gsIHRoaXMgZmlsZSBpcyB3aGVyZSB0aGUgJ2V4eW5vcyxwYXJlbnQtYnVz
JyAoYWthLiAnZGV2ZnJlcScpCj4gPiA+ID4gPiBwcm9wZXJ0aWVzIGFyZSBsb2NhdGVkIChhbmQg
ZXZlcnl0aGluZyBpbiB0aGlzIFJGQyBjb25jZXJucyBkZXZmcmVxKS4KPiA+ID4gPgo+ID4gPiA+
IEkgY2Fubm90IGZpbmQgZXh5bm9zLHBhcmVudC1idXMgaW4gZXh5bm9zNDQxMi1vZHJvaWQtY29t
bW9uLmR0c2kuIENhbgo+ID4gPiA+IHlvdSBlbGFib3JhdGU/Cj4gPiA+Cj4gPiA+IEN1cnJlbnRs
eSBhIG5hbWUgY2hhbmdlIGlzIGJlaW5nIG1hZGU6ICdkZXZmcmVxJyAtPiAnZXh5bm9zLHBhcmVu
dC1idXMnCj4gPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEzMDQ1NDkv
Cj4gPiA+IChhIGRlcGVuZGVuY3kgb2YgdGhpcyBSRkM7IGFsc28gYXZhaWxhYmxlIGluIGRldmZy
ZXEtdGVzdGluZyBicmFuY2gpCj4gPgo+ID4gSSBzZWUuIFRoYXQgcHJvcGVydHkgYWxzbyBkb2Vz
IG5vdCBsb29rIGxpa2UgYm9hcmQgKE9kcm9pZCkgc3BlY2lmaWMgc28KPiA+IGl0IHNob3VsZCBi
ZSBtb3ZlZCB0byBFeHlub3M0NDEyIERUU0kuCj4KPiBNYWtlcyBzZW5zZSB0byBtZS4gSnVzdCBm
cm9tIGxvb2tpbmcgYXQgdGhlIHBhdGNoIEkgcmVmZXJlbmNlZCBhYm92ZSwgdGhlcmUgaXMKPiBh
IHNpZ25pZmljYW50IGxldmVsIG9mIGNvZGUgZHVwbGljYXRpb24gYmV0d2Vlbgo+ICogYXJjaC9h
cm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1pdG9wLXNjcC1jb3JlLmR0c2kKPiAqIGFyY2gvYXJtL2Jv
b3QvZHRzL2V4eW5vczQ0MTItbWlkYXMuZHRzaQo+ICogYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiB3aXRoIHJlbGF0aW9uIHRvIHRoZSBkZXZmcmVxKi9l
eHlub3MsKiBwcm9wZXJ0aWVzLgoKSWYgeW91IGhhdmUgaW4gbWluZCBhbGwgdGhlIG5vZGVzIHdp
dGggInN0YXR1cz1va2F5IiwgaXQncyBmaW5lIHRvCmR1cGxpY2F0ZSB0aGVtLgoKQmVzdCByZWdh
cmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
