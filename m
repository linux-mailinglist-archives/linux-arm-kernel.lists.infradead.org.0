Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA80128B53
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 20:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoQzFGBLA65LWK02rKTqZLV7jGYSgaPqJoVniy0shY8=; b=pgIVHst6w/PD9/
	5FuUWGwewVzxmO3sFthH24GwwYOfwQKjUv1rMuMQaznUux3NONMRRz2uY8zaYTk6qix77p60G39vt
	W0VhbhT1SmX41/tdN9iErGOT64ieVdWODaY1jrawzOKqpUEJ69PqTsNwGifb7aTqC43VwKwdvW183
	pjtx9GPiJNVqNQN77M5VxYx7uoma//+ll2YnijyqLk111zAoJHv1WhnekQGY/xIQb0ND6EvuIETZX
	FdSfut9wdyi+AU5CNfptSyXdADSsu96WU/zYd3ZCNuBMKcNJndcFkKkLOcz8DD4Q00Hqw+Y1qElSI
	bMcC1MuDqT830ygPgQ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iikuM-0007v3-QM; Sat, 21 Dec 2019 19:59:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iikuD-0007ub-LJ
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 19:59:19 +0000
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3B842070C
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 19:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576958357;
 bh=K8P+SJ21R3JHk498XjXOMP6LxTqhDvmGYqqs/KmRl9Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ptKyI3oU5S2lAQzBjV7OqNUgmdsgMd/lJP7vwB+RHm0wESga7ABGi5sXDLHsbsLPJ
 l6SL8sIxH95m/BiYS5zMFaLPaLtMTKR42Zni0uKKtpuIdL59zrHeMKILZqEkyKNTeh
 /UEWSuC0iayUPx/BdIoNLbjCudAnZIiSaqi23Xfc=
Received: by mail-lj1-f178.google.com with SMTP id o13so2179718ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 11:59:16 -0800 (PST)
X-Gm-Message-State: APjAAAVnYwmPGPJX/Og3yESRyZK0YpVJMDEx8OpIx47E6T+yVPTPuZ9b
 T9O0TyhjhALb6BuU3DGAzQ6/o+YpD1ZSgnNimf4=
X-Google-Smtp-Source: APXvYqy4CX77Tuj5gPlFleP9Wx+nBMTeZ13ppF519kqIT7DFPKAJCQrhO/tVn94t00RSUZXOuFms1m8gIzbMJJWNgYY=
X-Received: by 2002:a05:651c:106f:: with SMTP id
 y15mr13929811ljm.63.1576958355057; 
 Sat, 21 Dec 2019 11:59:15 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191220120140eucas1p14ad33c20882f8f48e02337ea16754d91@eucas1p1.samsung.com>
 <20191220115653.6487-1-a.swigon@samsung.com>
In-Reply-To: <20191220115653.6487-1-a.swigon@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 22 Dec 2019 04:58:38 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0a=tFf0GwdeN7Lnp_1aV8iMoB8d+T-s+pF=bNgO9PLAw@mail.gmail.com>
Message-ID: <CAGTfZH0a=tFf0GwdeN7Lnp_1aV8iMoB8d+T-s+pF=bNgO9PLAw@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/7] PM / devfreq: Simple QoS for exynos-bus using
 interconnect
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_115917_739505_597C6153 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIsCgpJIGFncmVlIHRoaXMgYXBwcm9hY2guIE9uIG5leHQgdmVyc2lvbiwgcGxlYXNl
IHVwZGF0ZSBleHlub3MtYnVzCmR0LWJpbmRpbmcgZG9jdW1lbnQgd2l0aCBleGFtcGxlLgoKT24g
RnJpLCBEZWMgMjAsIDIwMTkgYXQgOTowMSBQTSBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ft
c3VuZy5jb20+IHdyb3RlOgo+Cj4gVGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29u
bmVjdFsxXVsyXSBmcmFtZXdvcmsgc3VwcG9ydCB0byB0aGUKPiBleHlub3MtYnVzIGRldmZyZXEg
ZHJpdmVyLiBFeHRlbmRpbmcgdGhlIGRldmZyZXEgZHJpdmVyIHdpdGgKPiBpbnRlcmNvbm5lY3Qg
ZnVuY3Rpb25hbGl0eSBzdGFydGVkIGFzIGEgcmVzcG9uc2UgdG8gdGhlIGlzc3VlIHJlZmVyZW5j
ZWQKPiBpbiBbM10uIFRoZSBwYXRjaGVzIGNhbiBiZSBzdWJkaXZpZGVkIGludG8gdGhyZWUgZ3Jv
dXBzOgo+Cj4gKGEpIFR3ZWFraW5nIHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrIHRvIHN1cHBv
cnQgdGhlIGV4eW5vcy1idXMgdXNlCj4gY2FzZSAocGF0Y2hlcyAwMS0tMDMvMDcpLiBFeHBvcnRp
bmcgb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkgYWxsb3dzIHRvCj4gYXZvaWQgaGFyZGNvZGlu
ZyBldmVyeSBzaW5nbGUgZ3JhcGggZWRnZSBpbiB0aGUgRFQgb3IgZHJpdmVyIHNvdXJjZSwgYW5k
Cj4gcmVsYXhpbmcgdGhlIHJlcXVpcmVtZW50IG9uICNpbnRlcmNvbm5lY3QtY2VsbHMgcmVtb3Zl
cyB0aGUgbmVlZCB0bwo+IHByb3ZpZGUgZHVtbXkgbm9kZSBJRHMgaW4gdGhlIERULiBBIG5ldyBm
aWVsZCBpbiBzdHJ1Y3QgaWNjX3Byb3ZpZGVyIGlzCj4gdXNlZCB0byBleHBsaWNpdGx5IGFsbG93
IGNvbmZpZ3VyaW5nIG5vZGUgcGFpcnMgZnJvbSB0d28gZGlmZmVyZW50Cj4gcHJvdmlkZXJzLgo+
Cj4gKGIpIEltcGxlbWVudGluZyBpbnRlcmNvbm5lY3QgcHJvdmlkZXJzIGluIHRoZSBleHlub3Mt
YnVzIGRldmZyZXEgZHJpdmVyCj4gYW5kIGFkZGluZyByZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZv
ciBvbmUgc2VsZWN0ZWQgcGxhdGZvcm0sIG5hbWVseQo+IEV4eW5vczQ0MTIgKHBhdGNoZXMgMDQt
LTA1LzA3KS4gRHVlIHRvIHRoZSBmYWN0IHRoYXQgdGhpcyBhaW1zIHRvIGJlIGEKPiBnZW5lcmlj
IGRyaXZlciBmb3IgdmFyaW91cyBFeHlub3MgU29Dcywgbm9kZSBJRHMgYXJlIGdlbmVyYXRlZAo+
IGR5bmFtaWNhbGx5IChyYXRoZXIgdGhhbiBoYXJkY29kZWQpLgo+Cj4gKGMpIEltcGxlbWVudGlu
ZyBhIHNhbXBsZSBpbnRlcmNvbm5lY3QgY29uc3VtZXIgZm9yIGV4eW5vcy1taXhlcgo+IHRhcmdl
dGVkIGF0IHNvbHZpbmcgdGhlIGlzc3VlIHJlZmVyZW5jZWQgaW4gWzNdLCBhZ2FpbiB3aXRoIERU
Cj4gcHJvcGVydGllcyBvbmx5IGZvciBFeHlub3M0NDEyIChwYXRjaGVzIDA2LS0wNy8wNykuCj4K
PiBJbnRlZ3JhdGlvbiBvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrcyBpcyBh
Y2hpZXZlZCBieSB1c2luZwo+IHRoZSBkZXZfcG1fcW9zXyooKSBBUEkuIFdoZW4gQ09ORklHX0lO
VEVSQ09OTkVDVCBpcyAnbicgKHN1Y2ggYXMgaW4KPiBleHlub3NfZGVmY29uZmlnKSBhbGwgaW50
ZXJjb25uZWN0IEFQSSBmdW5jdGlvbnMgYXJlIG5vLW9wcy4KPgo+IFRoaXMgc2VyaWVzIGRlcGVu
ZHMgb24gdGhlc2UgdGhyZWUgcGF0Y2hlcyAobWVyZ2VkIGludG8gZGV2ZnJlcS1uZXh0WzZdKToK
PiAqIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEyNzkwODcvCj4gKiBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMjc5MDkzLwo+ICogaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTI5Mzc2NS8KPiBhbmQgb24gdGhpcyBzZXJpZXM6Cj4g
KiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMzA0NTQ1Lwo+ICh3aGljaCBk
b2VzIG5vdCBhcHBseSBjbGVhbmx5IG9uIG5leHQtMjAxOTEyMjAsIGFkZGluZwo+IC0tZXhjbHVk
ZT1hcmNoL2FybS9ib290L2R0cy9leHlub3M1NDIyLW9kcm9pZC1jb3JlLmR0c2kgdG8gJ2dpdCBh
bScgaXMgYQo+IHF1aWNrIHdvcmthcm91bmQpCj4KPiAtLS0KPiBDaGFuZ2VzIHNpbmNlIHYyIFs1
XToKPiAqIFVzZSBpY2Nfc3RkX2FnZ3JlZ2F0ZSgpLgo+ICogSW1wbGVtZW50IGEgZGlmZmVyZW50
IG1vZGlmaWNhdGlvbiBvZiBhcHBseV9jb25zdHJhaW50cygpIGluCj4gICBkcml2ZXJzL2ludGVy
Y29ubmVjdC9jb3JlLmMgKHBhdGNoIDAzKS4KPiAqIFVzZSAnZXh5bm9zLGludGVyY29ubmVjdC1w
YXJlbnQtbm9kZScgaW4gdGhlIERUIGluc3RlYWQgb2YKPiAgICdkZXZmcmVxJy8ncGFyZW50Jywg
ZGVwZW5kaW5nIG9uIHRoZSBidXMuCj4gKiBSZWJhc2Ugb24gRFQgcGF0Y2hlcyB0aGF0IGRlcHJl
Y2F0ZSB0aGUgJ2RldmZyZXEnIERUIHByb3BlcnR5Lgo+ICogSW1wcm92ZSBlcnJvciBoYW5kbGlu
ZywgaW5jbHVkaW5nIGZyZWVpbmcgZ2VuZXJhdGVkIElEcyBvbiBmYWlsdXJlLgo+ICogUmVtb3Zl
IGV4eW5vc19idXNfaWNjX2Nvbm5lY3QoKSBhbmQgYWRkIGV4eW5vc19idXNfaWNjX2dldF9wYXJl
bnQoKS4KPgo+IC0tLQo+IENoYW5nZXMgc2luY2UgdjEgWzRdOgo+ICogUmViYXNlIG9uIGNvdXBs
ZWQgcmVndWxhdG9ycyBwYXRjaGVzLgo+ICogVXNlIGRldl9wbV9xb3NfKigpIEFQSSBpbnN0ZWFk
IG9mIG92ZXJyaWRpbmcgZnJlcXVlbmN5IGluCj4gICBleHlub3NfYnVzX3RhcmdldCgpLgo+ICog
VXNlIElEUiBmb3Igbm9kZSBJRCBhbGxvY2F0aW9uLgo+ICogUmV2ZXJzZSBvcmRlciBvZiBtdWx0
aXBsaWNhdGlvbiBhbmQgZGl2aXNpb24gaW4KPiAgIG1peGVyX3NldF9tZW1vcnlfYmFuZHdpZHRo
KCkgKHBhdGNoIDA3KSB0byBhdm9pZCBpbnRlZ2VyIG92ZXJmbG93Lgo+Cj4gLS0tCj4gQXJ0dXIg
xZp3aWdvxYQKPiBTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCj4gU2Ftc3VuZyBFbGVjdHJv
bmljcwo+Cj4gLS0tCj4gUmVmZXJlbmNlczoKPiBbMV0gRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5l
Y3QvaW50ZXJjb25uZWN0LnJzdAo+IFsyXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaW50ZXJjb25uZWN0L2ludGVyY29ubmVjdC50eHQKPiBbM10gaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMDg2MTc1Ny8gKG9yaWdpbmFsIGlzc3VlKQo+IFs0XSBodHRwczov
L3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDU0NDE3LyAodjEgb2YgdGhpcyBSRkMpCj4g
WzVdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTExNTI1OTUvICh2MiBvZiB0
aGlzIFJGQykKPiBbNl0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvY2hhbndvby9saW51eC5naXQvbG9nLz9oPWRldmZyZXEtbmV4dAo+Cj4gQXJ0dXIgxZp3
aWdvxYQgKDYpOgo+ICAgaW50ZXJjb25uZWN0OiBFeHBvcnQgb2ZfaWNjX2dldF9mcm9tX3Byb3Zp
ZGVyKCkKPiAgIGludGVyY29ubmVjdDogUmVsYXggcmVxdWlyZW1lbnQgaW4gb2ZfaWNjX2dldF9m
cm9tX3Byb3ZpZGVyKCkKPiAgIGludGVyY29ubmVjdDogQWxsb3cgaW50ZXItcHJvdmlkZXIgcGFp
cnMgdG8gYmUgY29uZmlndXJlZAo+ICAgYXJtOiBkdHM6IGV4eW5vczogQWRkIGludGVyY29ubmVj
dCBiaW5kaW5ncyBmb3IgRXh5bm9zNDQxMgo+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQWRkIGlu
dGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHRvIGV4eW5vcy1idXMKPiAgIGFybTogZHRzOiBleHlu
b3M6IEFkZCBpbnRlcmNvbm5lY3RzIHRvIEV4eW5vczQ0MTIgbWl4ZXIKPgo+IE1hcmVrIFN6eXBy
b3dza2kgKDEpOgo+ICAgZHJtOiBleHlub3M6IG1peGVyOiBBZGQgaW50ZXJjb25uZWN0IHN1cHBv
cnQKPgo+ICAuLi4vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgICAgfCAg
IDUgKwo+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgICAgICAgICAgICAgfCAg
IDEgKwo+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jICAgICAgICAgICAgICAgICAgfCAx
NDQgKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21p
eGVyLmMgICAgICAgICB8ICA3MSArKysrKysrKy0KPiAgZHJpdmVycy9pbnRlcmNvbm5lY3QvY29y
ZS5jICAgICAgICAgICAgICAgICAgIHwgIDE2ICstCj4gIGluY2x1ZGUvbGludXgvaW50ZXJjb25u
ZWN0LXByb3ZpZGVyLmggICAgICAgICB8ICAgOCArCj4gIDYgZmlsZXMgY2hhbmdlZCwgMjMyIGlu
c2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjE3LjEKPgoKCi0tIApCZXN0
IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
