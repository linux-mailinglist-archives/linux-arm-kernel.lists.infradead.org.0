Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD6A100664
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:23:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5kxMAdNQ0CyCnfwrH3qertlH1uJQbt5ZTP4lmWJB4I=; b=JLIt6qYYq7SsK5
	EO98UBP4dNjPKPZXWwT27bMKrvtas2D4zQoglJeX/1Ga4QMF8t6ONWZYZhBMvdhPIYvwL/gSahJNa
	HroMkXbtG/BOKn8/ucdqfPVn1CKH0xTN84pYpOLFEV7B2t0gWzzUAOLKlCT+kfM+HeJjHkgRyLCY6
	X1pJ3J+gLWnIkARKSzFEW91j9nSBnUTi+ehmhNla6P0i811Ljq4+iTQqkVsNt29P87Q4jAfVlY1z8
	LUld5b/Fe6rVhbRg7ERAsoO/GXS7QUOpZ3JopGw3sCBJJZfwA4NEENGT5LZ6Nt7PcxQo5uXFJ1Vj4
	gswX2tQUbx4J59HKHNAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWh07-0005du-Ru; Mon, 18 Nov 2019 13:23:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgzu-0005d8-Js
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:23:20 +0000
Received: by mail-wr1-x441.google.com with SMTP id t1so19451730wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 05:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+Fi408zecYZ+JxozjOtIUW0lemV9jQmGDB7s5YARwS4=;
 b=MXP6GE/s65zeyFbxCAQO8+XQ37PB8b9NTT+gYUaRizGiqk8dzMDnu1ZImZGS7+BU7+
 W5wL+EpoBz6WZJ1S1Cb0UlMVRkIjXo2mMz6rQ6EEtS0dh9NsjaIye0ZEAc0/syEAHWK4
 ctEGnHvvzoai9MhB9zz7JbZkVDKLsEgl3pKKiO8vwKbRNf+s7tDwZs5vq5iZgQvwcJCv
 xyPDK20qmVH1RLImk5ToTNQ4cz1QoU5guGC647j7AeYqgO80pUn+lWpu4xZrfMWga1AF
 +j7BuyAhA7/0jXrA4Kjt/WYlJ/VBgmt0/ehcsZqBHN0SmRAO9wcdm0qBloh4fzp+iPp2
 FDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+Fi408zecYZ+JxozjOtIUW0lemV9jQmGDB7s5YARwS4=;
 b=VCBxj9uxOXoBZG4GV6A/N1BlpvxdvJ9LFn+NOdBs7kiThH0A6ediv3tmmdgqdLHINI
 DGyCagUHmS0ANMuV2OCcwDvTtWZD3bOxcXPSSRI2S1OPclplRiIkRGFK0G73OW/nYBVT
 JMvzpaeJQkX3XCKvvsLLU5kpShJ++FsffN7fvDV6bWZ1Ku76Vd5Ju2JXsPqQNUx/5DQC
 OQN2vJCeb7jQb/XEkgRXsIolXMPebU2LQNVapRtqXRjqVEqk29Tjcb/2T8Gliqg7LMSV
 J6jVPt3sIkaTSyNg71aoy3u2XZ1EXT3HzTDKB5/3NugXvW/plgs35X1OWih0wkCwqTlX
 BClg==
X-Gm-Message-State: APjAAAUf7L8kGPPkM9uz/1t44ybiF0RX0NIJzN7wkgBnBjoN6rHg5iwX
 SRe2kWEALwo84y9WCHmkC02cwIyifG3jB1iAWVc=
X-Google-Smtp-Source: APXvYqyo4y/agQzVtH2ECZnIYIOGEv1/ZBv1PJs0+BopW0iO5N/GQIYDUcjrFOcZYJWpd5uRqmvXsp8uSQF/TUlfCiA=
X-Received: by 2002:adf:da52:: with SMTP id r18mr30182195wrl.167.1574083397043; 
 Mon, 18 Nov 2019 05:23:17 -0800 (PST)
MIME-Version: 1.0
References: <20191118110034.19444-1-peron.clem@gmail.com>
 <20191118110034.19444-2-peron.clem@gmail.com>
 <20191118110640.GE4345@gilmour.lan>
 <CAJiuCceVyjSTGymOiXTZvyQXyXScGZuGS6gW+2=0gdxDFzg3dA@mail.gmail.com>
 <20191118125702.GK4345@gilmour.lan>
In-Reply-To: <20191118125702.GK4345@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 18 Nov 2019 14:23:05 +0100
Message-ID: <CAJiuCcfBurkmX-6j9T2JHsdUw+RGCnuBSYCpo5BG+V-H-mcLUw@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: pwm: allwinner: Add H6 PWM description
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_052318_651005_AF8400E9 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDE4IE5vdiAyMDE5IGF0IDEzOjU3LCBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMDE6NDI6NDhQ
TSArMDEwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gSGkgTWF4aW1lCj4gPgo+ID4gT24g
TW9uLCAxOCBOb3YgMjAxOSBhdCAxMjowNiwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gSGksCj4gPiA+Cj4gPiA+IE9uIE1vbiwgTm92IDE4LCAy
MDE5IGF0IDEyOjAwOjI3UE0gKzAxMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gPiBG
cm9tOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiA+ID4KPiA+
ID4gPiBINiBQV00gYmxvY2sgaXMgYmFzaWNhbGx5IHRoZSBzYW1lIGFzIEEyMCBQV00sIGV4Y2Vw
dCB0aGF0IGl0IGFsc28gaGFzCj4gPiA+ID4gYnVzIGNsb2NrIGFuZCByZXNldCBsaW5lIHdoaWNo
IG5lZWRzIHRvIGJlIGhhbmRsZWQgYWNjb3JkaW5nbHkuCj4gPiA+ID4KPiA+ID4gPiBFeHBhbmQg
QWxsd2lubmVyIFBXTSBiaW5kaW5nIHdpdGggSDYgUFdNIHNwZWNpZmljcy4KPiA+ID4gPgo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4KPiA+ID4gPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29t
Pgo+ID4gPiA+IC0tLQo+ID4gPiA+ICAuLi4vYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1h
MTAtcHdtLnlhbWwgfCA0OCArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA0OCBpbnNlcnRpb25zKCspCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3Vu
NGktYTEwLXB3bS55YW1sCj4gPiA+ID4gaW5kZXggMGFjNTJmODNhNThjLi4xYmFlNDQ2ZmViYmIg
MTAwNjQ0Cj4gPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3
bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCj4gPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCj4g
PiA+ID4gQEAgLTMwLDEzICszMCw1MSBAQCBwcm9wZXJ0aWVzOgo+ID4gPiA+ICAgICAgICAtIGl0
ZW1zOgo+ID4gPiA+ICAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1oNS1wd20K
PiA+ID4gPiAgICAgICAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW41aS1hMTMtcHdtCj4gPiA+
ID4gKyAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCj4gPiA+ID4KPiA+ID4g
PiAgICByZWc6Cj4gPiA+ID4gICAgICBtYXhJdGVtczogMQo+ID4gPiA+Cj4gPiA+ID4gICAgY2xv
Y2tzOgo+ID4gPiA+ICsgICAgbWluSXRlbXM6IDEKPiA+ID4gPiArICAgIG1heEl0ZW1zOiAyCj4g
PiA+ID4gKyAgICBpdGVtczoKPiA+ID4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogTW9kdWxlIENs
b2NrCj4gPiA+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IEJ1cyBDbG9jawo+ID4gPiA+ICsKPiA+
ID4gPiArICAjIEV2ZW4gdGhvdWdoIGl0IG9ubHkgYXBwbGllcyB0byBzdWJzY2hlbWFzIHVuZGVy
IHRoZSBjb25kaXRpb25hbHMsCj4gPiA+ID4gKyAgIyBub3QgbGlzdGluZyB0aGVtIGhlcmUgd2ls
bCB0cmlnZ2VyIGEgd2FybmluZyBiZWNhdXNlIG9mIHRoZQo+ID4gPiA+ICsgICMgYWRkaXRpb25h
bHNQcm9wZXJ0aWVzIHNldCB0byBmYWxzZS4KPiA+ID4gPiArICBjbG9jay1uYW1lczogdHJ1ZQo+
ID4gPiA+ICsKPiA+ID4gPiArICByZXNldHM6Cj4gPiA+ID4gICAgICBtYXhJdGVtczogMQo+ID4g
PiA+Cj4gPiA+ID4gKyAgaWY6Cj4gPiA+ID4gKyAgICBwcm9wZXJ0aWVzOgo+ID4gPiA+ICsgICAg
ICBjb21wYXRpYmxlOgo+ID4gPiA+ICsgICAgICAgIGNvbnRhaW5zOgo+ID4gPiA+ICsgICAgICAg
ICAgY29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCj4gPiA+ID4gKwo+ID4gPiA+ICsgIHRo
ZW46Cj4gPiA+ID4gKyAgICBwcm9wZXJ0aWVzOgo+ID4gPiA+ICsgICAgICBjbG9ja3M6Cj4gPiA+
ID4gKyAgICAgICAgbWF4SXRlbXM6IDIKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgIGNsb2NrLW5h
bWVzOgo+ID4gPiA+ICsgICAgICAgIGl0ZW1zOgo+ID4gPiA+ICsgICAgICAgICAgLSBjb25zdDog
bW9kCj4gPiA+ID4gKyAgICAgICAgICAtIGNvbnN0OiBidXMKPiA+ID4gPiArCj4gPiA+ID4gKyAg
ICByZXF1aXJlZDoKPiA+ID4gPiArICAgICAgLSBjbG9jay1uYW1lcwo+ID4gPiA+ICsgICAgICAt
IHJlc2V0cwo+ID4gPiA+ICsKPiA+ID4gPiArICBlbHNlOgo+ID4gPiA+ICsgICAgcHJvcGVydGll
czoKPiA+ID4gPiArICAgICAgY2xvY2tzOgo+ID4gPiA+ICsgICAgICAgIG1heEl0ZW1zOiAxCj4g
PiA+ID4gKwo+ID4gPgo+ID4gPiBTb3JyeSBmb3Igbm90IG5vdGljaW5nIHRoaXMgZWFybGllciwg
YnV0IHRoaXMgc2hvdWxkIGJlIGF0IHRoZSB0b3Btb3N0Cj4gPiA+IGxldmVsCj4gPgo+ID4gTm8g
cHJvYmxlbSwgYnV0IEkgZG9uJ3QgZ2V0IHdoYXQgeW91IHdhbnQsICh5YW1sIGZvcm1hdCBpcyBu
ZXcgZm9yIG1lKS4KPiA+IERvIHlvdSBtZWFuIEkgc2hvdWxkIHB1dCB0aGUgaWYgY29uZGl0aW9u
IGJlZm9yZSB0aGUgInJlc2V0cyIgPwo+Cj4gTm8sIGhlcmUgaWYgd2UgY29uZGVuc2UgYSBiaXQg
dGhlIGZpbGUsIHdlIGhhdmUgc29tZXRoaW5nIGxpa2U6Cj4KPiB0aXRsZTogUFdNCj4KPiBwcm9w
ZXJ0aWVzOgo+ICAgY29tcGF0aWJsZToKPiAgICAgLi4uCj4KPiAgIC4uLgo+Cj4gICByZXNldHM6
Cj4gICAgIC4uLgo+Cj4gICBpZjoKPiAgICAgcHJvcGVydGllczoKPiAgICAgICAuLi4KPgo+ICAg
dGhlbjoKPiAgICAgcHJvcGVydGllczoKPiAgICAgICAuLi4KPgo+IHdoaWNoIG1lYW5zIHRoYXQg
eW91IGV4cGVjdCB0aGF0IHRoZSBub2RlIG1heSBjb250YWluIGEgY29tcGF0aWJsZQo+IHByb3Bl
cnR5LCBhIHJlc2V0cyBvbmUsIGFuZCB0aGVuIHR3byBwcm9wZXJ0aWVzICJpZiIgYW5kICJ0aGVu
Iiwgd2hpY2gKPiBpbiB0dXJuIGNvbnRhaW4gcHJvcGVydGllcyAoaWUsIHR3byBub2RlcykuCj4K
PiBUaGlzIGlzIG9idmlvdXNseSBub3Qgd2hhdCB5b3Ugd2FudCwgd2hhdCB5b3Ugd2FudCBpbnN0
ZWFkIGlzOgo+Cj4gcHJvcGVydGllczoKPiAgIGNvbXBhdGlibGU6Cj4gICAgIC4uLgo+Cj4gICAu
Li4KPgo+ICAgcmVzZXRzOgo+ICAgICAuLi4KPgo+IGlmOgo+ICAgcHJvcGVydGllczoKPiAgICAg
Li4uCj4KPiB0aGVuOgo+ICAgcHJvcGVydGllczoKPiAgICAgLi4uCj4KPiBXaGljaCB0aGVuIGRl
c2NyaWJlcyB0aGF0IHRoZXJlJ3MgdHdvIHByb3BlcnRpZXMsIGNvbXBhdGlibGUgYW5kCj4gcmVz
ZXRzLCBhbmQgaWYgdGhlIHNjaGVtYSB1bmRlciAnaWYnIGlzIHZhbGlkIGFnYWluc3QgdGhlIG5v
ZGUgd2UgdHJ5Cj4gdG8gdmFsaWRhdGUsIHRoZSBzY2hlbWEgdW5kZXIgJ3RoZW4nIGlzIHVzZWQg
dG8gdmFsaWRhdGUgdGhlIG5vZGUgYXMKPiB3ZWxsLgo+Cj4gSSBob3BlIGl0J3MgY2xlYXJlciwK
ClllcyBpdCdzIHRvdGFsbHkgY2xlYXIgZGlkbid0IHNlZSB0aGlzIGJhZCBpbmRlbnRhdGlvbiwK
VGhhbmtzIGZvciB0aGUgY2F0Y2ggYW5kIGZvciB0aGUgZXhwbGFuYXRpb24uCgpSZWdhcmRzLApD
bMOpbWVudAoKPiBNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
