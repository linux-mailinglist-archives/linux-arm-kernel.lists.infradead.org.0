Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36511BC515
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZH0CvmjlB3en0w7tC+lbZMflSi7FYzhYlzF9gulIc70=; b=PHugWj7ZUDsMQ3
	XwoLa4n4WC+olh8D8Yi4zZCotoL1y/FtuRcyDbRi0V2Tmwt5NmLeK9h938SMagDVL2HB21riGxPVR
	yHOGnF2SeokZg6CHNU7d0r4At6Bk1yZmK8ZyjKlVLkIi63PdqfInn3yFrJ0Qpa+yRMEahJ68hoABR
	7lF/v/14rA5TJBnTE53VftloWTvNrA6Lc+2Iasd3NpAQ2DpQCVUYNV6lJ5f5doNp62RFUtPl/aWcl
	JKtcM5/aL0lNN8EeALrei1SmhUHhjOtXKGwmzua0F4m8FHS6BBZ2cR3gE8d5TToFI/jFyxFPYt7jy
	XT+himi8cnqnqeGwoSJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTT1d-0006DT-Lv; Tue, 28 Apr 2020 16:24:01 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTT1Q-0006CP-3m
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:23:49 +0000
Received: by mail-io1-xd43.google.com with SMTP id k23so8331744ios.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j6RRU0nrN7yUPwoTU3WwW56lws6VJ5/MsTtHloArhl0=;
 b=AVPckYKwTeUisgWMXpahkhhvCC0B7KCgpPE6LKFrZcDSoFrpV7e9aReBGpKH/Fomx2
 PLRSSFlRLBDnumFZpkYSJNBW/iSoL66EK4Cbx/t/yziGMfC8r3ByxTf0S3KvMExFrzSx
 vdKXUJHTDxbvPYE1oBg8rw9hS6mGMi8XDuL8qFWYlM2vEI7CqPGHgRHRobFo2FQk1dPC
 ywpr8WEhqy7y5oD97LeDunmNnuC9DvGi+ZiQ5xnJtgP+8OaMiRBlE+O83DUh4XBKkvU1
 ZQaT87Awc6BKGbQNEB4qwY81/wY/6KsXMMrB1lAh/Y3Ms521kx9LE+r7lyl1+LUz1DMF
 pu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j6RRU0nrN7yUPwoTU3WwW56lws6VJ5/MsTtHloArhl0=;
 b=PIW4AyMdpneu64Bpe4MMMmPyGCxz25BLYClT9CotXCiVNtuSuyjVCubjcOmnBc0K5T
 L3IuA/vx+Ci7F/8Ivl2eZX6vrKqkre4Dysea5Gb4SCx4YchXahpuYfWVc1YeBAz7RD/W
 FpMacl/iid7Z7AWNWTi5z+ekReT/JcTRgPZW1yTg2zJ5bpGoRMxnXkUow5vwGLev+Grt
 kz//kZXyk/lCLnW2AocQRxMlmuo6JtXry73SW8BreJ/JdnaQaKgZdMkmRCyd94BJJ9JA
 /JI+kw/nQo7/E6ZxPQ7Tm9xG2U7DGd8NIRFC3pOLrwOr4G45tJVaadATidkA1LxZJubX
 1ZLA==
X-Gm-Message-State: AGi0Pua4FRqii9RE0oGM4JpTzBpYITrdgq8tdMya6WbwWGJe+hT/gibn
 PP9Fz63xRrZVf6PvkEOXHSIhQEbjbsJKzs9EXP8=
X-Google-Smtp-Source: APiQypJOl6MpBa2BRYe8Hr+y09c1rJYJoKiTY9WejKqf4GN+4FJ4o0seuR6Q1T+jNayBJixEcXKBGhrTo0lIBL1OtX0=
X-Received: by 2002:a02:a004:: with SMTP id a4mr25699613jah.18.1588091027057; 
 Tue, 28 Apr 2020 09:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200428142629.8950-1-peron.clem@gmail.com>
 <98246e5d-ebef-bcb5-f0b8-d74b3834b835@arm.com>
In-Reply-To: <98246e5d-ebef-bcb5-f0b8-d74b3834b835@arm.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 18:23:35 +0200
Message-ID: <CAJiuCcco0d_UoWeHqh6oc0rFNAMFynXjLRQ6APsT0WBh7m+GQg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2] arm64: dts: allwinner: h6: Use dummy
 regulator for Tanix TX6
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_092348_155701_61A9A458 
X-CRM114-Status: GOOD (  27.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Piotr Oniszczuk <warpme@o2.pl>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiBUdWUsIDI4IEFwciAyMDIwIGF0IDE3OjIxLCBSb2JpbiBNdXJwaHkgPHJv
YmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDIwMjAtMDQtMjggMzoyNiBwbSwgQ2zD
qW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gVGFuaXggVFg2IGhhcyBhIGZpeGVkIHJlZ3VsYXRvci4g
QXMgRFZGUyBpcyBpbnN0cnVjdGVkIHRvIGNoYW5nZQo+ID4gdm9sdGFnZSB0byBtZWV0IE9QUCB0
YWJsZSwgdGhlIERWRlMgaXMgbm90IHdvcmtpbmcgYXMgZXhwZWN0ZWQuCj4KPiBIbW0sIGlzbid0
IHRoYXQgcmVhbGx5IGEgYnVnIGluIHRoZSBEVkZTIGNvZGU/IEkgZ3Vlc3MgaXQncyBqdXN0IGJs
aW5kbHkKPiBwcm9wYWdhdGluZyAtRUlOVkFMIGZyb20gdGhlIGZpeGVkIHJlZ3VsYXRvcnMgbm90
IGltcGxlbWVudGluZwo+IHNldF92b2x0YWdlLCBidXQgQUZBSUNTIGl0IGhhcyBubyByZWFsIGV4
Y3VzZSBub3QgdG8gYmUgY2xldmVyZXIgYW5kCj4gc3RpbGwgYWxsb3cgc3dpdGNoaW5nIGZyZXF1
ZW5jeSBhcyBsb25nIGFzIHRoZSB2b2x0YWdlICppcyogaGlnaCBlbm91Z2gKPiBmb3IgdGhlIGdp
dmVuIE9QUC4gSSB3b25kZXIgaG93IHdlbGwgaXQgd29ya3MgaWYgdGhlIHJlZ3VsYXRvciBpcwo+
IHByb2dyYW1tYWJsZSBidXQgc2hhcmVkIHdpdGggb3RoZXIgY29uc3VtZXJzLi4uIHRoYXQgY2Fz
ZSBwcm9iYWJseSBjYW4ndAo+IGJlIGhhY2tlZCBhcm91bmQgaW4gRFQuCgpMaWtlIHlvdSwgSSB0
aG91Z2h0IHRoYXQgdGhlIERWRlMgd2FzIGNsZXZlciBlbm91Z2ggdG8gdW5kZXJzdGFuZCB0aGlz
CmJ1dCBndWVzcyBub3QuLgoKTWF5YmUgdGhleSBhcmUgc29tZSBjYXNlcyB3aGVyZSB5b3UgZG9u
J3Qgd2FudCB0byBsZWF2ZSB0aGUgdm9sdGFnZSBoaWdoIGFuZApyZWR1Y2UgdGhlIGZyZXF1ZW5j
eS4gQnV0IEkgZG9uJ3Qga25vdyBzdWNoIGNhc2UuCgpSZWdhcmRzLApDbGVtZW50CgoKCgo+Cj4g
Um9iaW4uCj4KPiA+IEF2b2lkIHRvIGludHJvZHVjZSBhIG5ldyBkZWRpY2F0ZWQgT1BQIFRhYmxl
IHdoZXJlIHZvbHRhZ2UgYXJlCj4gPiBlcXVhbHMgdG8gdGhlIGZpeGVkIHJlZ3VsYXRvciBhcyBp
dCB3aWxsIG9ubHkgZHVwbGljYXRlIGFsbCB0aGUgT1BQcy4KPiA+IEluc3RlYWQgcmVtb3ZlIHRo
ZSBmaXhlZCByZWd1bGF0b3Igc28gdGhlIERWRlMgZnJhbWV3b3JrIHdpbGwgY3JlYXRlCj4gPiBk
dW1teSByZWd1bGF0b3IgYW5kIHdpbGwgaGF2ZSB0aGUgc2FtZSBiZWhhdmlvci4KPiA+Cj4gPiBB
ZGQgc29tZSBjb21tZW50cyB0byBleHBsYWluIHRoaXMgaW4gdGhlIGRldmljZS10cmVlLgo+ID4K
PiA+IFJlcG9ydGVkLWJ5OiBQaW90ciBPbmlzemN6dWsgPHdhcnBtZUBvMi5wbD4KPiA+IEZpeGVz
OiBhZGQxZTI3ZmI3MDMgKCJhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIG9w
cCB0YWJsZXMgZm9yIFRhbml4IFRYNiIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6ly
b24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgIC4uLi9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni5kdHMgfCAxOCArKysrKysrKysrKysrKysrLS0KPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10
YW5peC10eDYuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRh
bml4LXR4Ni5kdHMKPiA+IGluZGV4IGJlODEzMzBkYjE0Zi4uM2U5NmZjYjMxN2VhIDEwMDY0NAo+
ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4
Ni5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10
YW5peC10eDYuZHRzCj4gPiBAQCAtNDgsNyArNDgsMTUgQEAKPiA+ICAgfTsKPiA+Cj4gPiAgICZj
cHUwIHsKPiA+IC0gICAgIGNwdS1zdXBwbHkgPSA8JnJlZ192ZGRfY3B1X2dwdT47Cj4gPiArICAg
ICAvKgo+ID4gKyAgICAgICogRG9uJ3Qgc3BlY2lmeSB0aGUgQ1BVIHJlZ3VsYXRvciwgYXMgaXQn
cyBhIGZpeGVkCj4gPiArICAgICAgKiByZWd1bGF0b3IgRFZGUyB3aWxsIG5vdCB3b3JrIGFzIGl0
IGlzIGludHJ1Y3RlZAo+ID4gKyAgICAgICogdG8gcmVhY2ggYSB2b2x0YWdlIHdoaWNoIGNhbid0
IGJlIHJlYWNoZWQuCj4gPiArICAgICAgKiBOb3Qgc3BlY2lmeWluZyBhIHJlZ3VsYXRvciB3aWxs
IGNyZWF0ZSBhIGR1bW15Cj4gPiArICAgICAgKiByZWd1bGF0b3IgYWxsb3dpbmcgYWxsIE9QUHMu
Cj4gPiArICAgICAgKgo+ID4gKyAgICAgICogY3B1LXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1
PjsKPiA+ICsgICAgICAqLwo+ID4gICB9Owo+ID4KPiA+ICAgJmRlIHsKPiA+IEBAIC02OCw3ICs3
NiwxMyBAQAo+ID4gICB9Owo+ID4KPiA+ICAgJmdwdSB7Cj4gPiAtICAgICBtYWxpLXN1cHBseSA9
IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBEb24ndCBzcGVj
aWZ5IHRoZSBHUFUgcmVndWxhdG9yLCBzZWUgY29tbWVudAo+ID4gKyAgICAgICogYWJvdmUgZm9y
IHRoZSBDUFUgc3VwcGx5Lgo+ID4gKyAgICAgICoKPiA+ICsgICAgICAqIG1hbGktc3VwcGx5ID0g
PCZyZWdfdmRkX2NwdV9ncHU+Owo+ID4gKyAgICAgICovCj4gPiArCj4gPiAgICAgICBzdGF0dXMg
PSAib2theSI7Cj4gPiAgIH07Cj4gPgo+ID4KPgo+IC0tCj4gWW91IHJlY2VpdmVkIHRoaXMgbWVz
c2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGlu
dXgtc3VueGkiIGdyb3VwLgo+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3Rv
cCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgtc3VueGkr
dW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiBUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBv
biB0aGUgd2ViLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvbGludXgt
c3VueGkvOTgyNDZlNWQtZWJlZi1iY2I1LWYwYjgtZDc0YjM4MzRiODM1JTQwYXJtLmNvbS4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
