Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E138727F05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4qE92Oh6nt9pl5fHGR3lbD6Pg6mRMCYd2vVM1pkD88=; b=IjtiIOCJoABqBr
	bEu62m3j24C3Q5xf7sVHuhCw1M4SCoREN6IujQEinJFpSiw8Av6XWkbThFpyJftJ7r8jIUUOzVUJc
	20cJ7Ud6SlvMWQEKcc9hGTQD07HDWW4oPDm+H5JRtIjfFUts0NF570IbH9B2P7gDKqLmBb+BO/TwC
	EvhmCt6yaykxnTmplYNmZH47lriBqtDgufbRfSbSirFEVC4VZ4VSEqC7paqm4Y2GlePOaBaA8bSW+
	YyraNGWCRKW0aWanpSw+VWWL7q2hyoaxpq4DOaX1aaRaG5xKAfmeWeCEV4SQctn9JWDUtK9oRR+zR
	eXqZRWMp05m11d6wv0hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToIz-0006yx-Of; Thu, 23 May 2019 14:02:49 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToIq-0006vn-T2
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:02:42 +0000
Received: by mail-yb1-xb41.google.com with SMTP id w127so440023yba.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 07:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sqmYovtDH2Cha2ixUIjp55v47f+tfN+Y/9nD/H0oaXU=;
 b=S0WIOvfhxfwfAv7ibPxBjD1HBQmHhdi/cM0k2xwZ5e8ECTMVUNqunHYdnAhuKwbDjN
 Xu8BiJho9SPuTk4wu04jroQpaoDnl0YqNbEBdkaBe0laaCkOz5PxNJYrP4byiu9iu+Ni
 eV4lSa657lsml6+XQgvFORwIB0LQsbP42cOpgFiECUEFMVbmejiHv41dxvs0CX90H/zU
 eO/mQkOQphWmY9HEo7Bhr0TaEcA4QYzakZtp2LXeixe/zuJ9XD/QjJrLOVSYQGCPuHv6
 dIknKspngjhSiFsIIKxxDn6P2LsfxGt8rRbCGnUedOOG7Y5tW1z4iLSqn1Ik8Fr5CK/9
 SiTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sqmYovtDH2Cha2ixUIjp55v47f+tfN+Y/9nD/H0oaXU=;
 b=UFL1JXrDdxDh+Cw9UtZtpUb7K4FPoYhjpblQZz/HhJ+vIRpl3XzinK7OgjEMqGanfW
 Sb24VFAPJm6F9ao6TdKvWVm2HPAfsbwHEy6tpqQf/6pFNC/ITHPPIpC/uQCmJBcix+hg
 P1t2yxLeaaySyZldruYiTTRwzVJVlqT+aPWhxsXmeykhRvpNxtAcGRvXXjBY2CBiAuJU
 0R3uBCEmEBXDPs8VgesIBNCqhZoSIU0AWg4BZvW+W3lbO0G7/yPSWSaK73hDeuz3zb4f
 i5LKXnYYZM3OUEJuOi78dCukFach0AbOwu2Qa/TR+WLJBdrfFQX03HNTWo/TQmmU7OzS
 h4rA==
X-Gm-Message-State: APjAAAWXY7tKKUc1cMrXEENCc3HyyM1bBWXhQ6bxA6J7WbTBcDwWDktn
 /wkESYkcBoGYZFgu/1oD68rKiWgR4nMvNbbR1Is=
X-Google-Smtp-Source: APXvYqxgIVauTGVCqLlR4n4GbP/KO2TXbfyg5FKYwg7m799qm8qa/AQBMYaFifalBrQB2p3zYAor1U7RqgV1eyk1QRs=
X-Received: by 2002:a25:340e:: with SMTP id b14mr4677744yba.82.1558620159194; 
 Thu, 23 May 2019 07:02:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190521160330.28402-1-peron.clem@gmail.com>
 <20190521160330.28402-4-peron.clem@gmail.com>
 <20190522103243.mmrfato5p2mhtf4j@flea>
 <CAJiuCcdaZVLQyupEf8HPaUySakufXXAhzundo6VeyQaAyZ8Trw@mail.gmail.com>
 <20190523125716.g4euwplfsvw4vqzl@flea>
In-Reply-To: <20190523125716.g4euwplfsvw4vqzl@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 23 May 2019 16:02:28 +0200
Message-ID: <CAJiuCcdE-RtiGpPKe-BMJpS-m=wOXy+30vS7iAvd6Ng7gaZWNg@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] dt-bindings: watchdog: add Allwinner H6 r_watchdog
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_070241_129251_A239B61A 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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

T24gVGh1LCAyMyBNYXkgMjAxOSBhdCAxNDo1NywgTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFy
ZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1heSAyMiwgMjAxOSBhdCAwNjoxNToy
NlBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBIaSBNYXhpbWUsCj4gPgo+ID4g
T24gV2VkLCAyMiBNYXkgMjAxOSBhdCAxMjozMiwgTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFy
ZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFR1ZSwgTWF5IDIxLCAyMDE5IGF0
IDA2OjAzOjI4UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gPiBBbGx3aW5u
ZXIgSDYgaGFzIGEgc2Vjb25kIHdhdGNoZG9nIG9uIHRoZSByLWJsb2NrcyB3aGljaCBpcwo+ID4g
PiA+IGNvbXBhdGlibGUgd2l0aCB0aGUgQTMxLgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBjb21taXQg
YWRkIHRoZSBINiBjb21wYXRpYmxlIGZvciB0aGUgcl93YXRjaGRvZy4KPiA+ID4gPgo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4g
PiA+Cj4gPiA+IFVubGVzcyB5b3UgaGF2ZSBzb21lIGV2aWRlbmNlIHRoYXQgdGhlIHR3byBibG9j
a3MgYXJlIGRpZmZlcmVudCwgdGhlbgo+ID4gPiB5b3Ugc2hvdWxkIGp1c3QgcmV1c2UgdGhlIHNh
bWUgb25lLgo+ID4KPiA+IEkgaGF2ZSBubyBldmlkZW5jZSBpdCdzIGRpZmZlcmVudCBub3IgaWRl
bnRpY2FsLCBpdCdzIG5vdCBkb2N1bWVudGVkCj4gPiBpbiB0aGUgdXNlciBtYW51YWwuCj4gPiBJ
IHRob3VnaHQgaXQgd291bGQgYmV0dGVyIHRvIGhhdmUgc2VwYXJhdGUgYmluZGluZ3MgaW4gY2Fz
ZSB0aGVyZSBpcyBhCj4gPiBkaWZmZXJlbmNlLgo+ID4gVGhhbiBkb24ndCBoYXZlIGFuZCBmaW5k
IGxhdGVyIHRoYXQgd2UgaGF2ZSB0byBpbnRyb2R1Y2Ugb25lLgo+Cj4gSXQncyBhIHRyYWRlb2Zm
LiBQdXNoaW5nIHlvdXIgbG9naWMgdG8gdGhlIGxpbWl0LCB3ZSB3b3VsZCBoYXZlIGEKPiBjb21w
YXRpYmxlIGZvciBlYWNoIGNvbnRyb2xsZXIgZW1iZWRkZWQgaW4gYW4gU29DLgo+Cj4gVGhpcyB3
b3VsZCBiZSB1bm1haW50YWluYWJsZSwgYW5kIHNsaWdodGx5IHVzZWxlc3Mgc2luY2UgdGhhdCBj
YXNlIGlzCj4gdmVyeSB1bmxpa2VseS4KPgo+IEhvd2V2ZXIsIGhhdmluZyBkaWZmZXJlbmNlcyBi
ZXR3ZWVuIFNvQ3MgaXMgcXVpdGUgY29tbW9uLCBoZW5jZSB3aHkgd2UKPiBoYXZlIGRpZmZlcmVu
dCBjb21wYXRpYmxlcyBmb3IgZWFjaCBTb0MuClllcywgdGhhdCBtYWtlIHNlbnNlLCBJIHdpbGwg
c2VuZCBhIG5ldyB2ZXJzaW9uIHNvb24sCgpUaGFua3MgZm9yIHRoZSByZXZpZXcsCkNsw6ltZW50
Cgo+Cj4gTWF4aW1lCj4KPiAtLQo+IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBM
aW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
