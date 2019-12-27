Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8A212B531
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 15:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/KgJA/BHN5ATU2Mr9lU5V4ptB9t9et5AC+0aa5d6aY=; b=cjmV8hDRySE0Rg
	hwEB+gfgYVJuAD/kUpMnmrtZduSAO4SLw738utMLHylJ8FYKWzedfYyIiGzoJZNTq3rPuTsnzV+Uv
	Rl2CdlTXd6c0e6gLSIzF1/RqiN+NQTK/BTZow5hBb5jpB7r2AeG4suej15ijUC1C7R4z3q2jOjCg4
	vlX19FPzQp7ne2UmzeKEGirXElAAlTkRvbksvhJUleNhnbVyPgpntTH6KChK8DHDdVxv4EH93+TMj
	ztXjffGBLBb1Eb/sib9XCLt84BbzynKJCDEV8Rm7mEpC0v4uErPxisVMFXJzJnaAm+rRoRkKkra35
	HzN36OQXJqoGoxMvvRZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikqbw-0000wb-BS; Fri, 27 Dec 2019 14:29:04 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikqbn-0000w6-BE
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 14:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577456931;
 s=strato-dkim-0002; d=dawncrow.de;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=tiZqlNDnvx9lg//cU6oAkJTrBDkCfS6XbGyrlQGFD5k=;
 b=OxOG67bQat8Cb26AUmswzfs0W7b+Xtoci76XrQiAdtl4fnA6dqr3Rm7xte1LagY21K
 uRaiVzVDmSQe+L5ju6oTe2if9iefrQsBJUAaIJyOEdRGxN8i0+S5CBNmMUfQ7VscCtqm
 FbUx1EMQl259g2R3VVZy+fVHUNy/cVet3yYP4TM8adS9LuXQe2eZd5MoN+37Ad+s4MZ6
 JT/FvdqDI+MFTH0yqiqETFeGicpHi4PDxy+sC+ABaTnidaRrSacFEvvZBFIbmIqDEZjj
 GvpwqCKiW7OKcnP3LhEGx4uCJfI9ctEQn2D10jv/VQUelLRMu5FbFliyPcLfvHhjHr7X
 bG0w==
X-RZG-AUTH: ":ImkWY2CseuihIZy6ZWWciR6unPhpN+aXzZ6bi4rK0b8tGDimOzIxQbIOZSqtgWHzDs8="
X-RZG-CLASS-ID: mo00
Received: from [192.168.178.40] by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id I099d1vBREST7GW
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 27 Dec 2019 15:28:29 +0100 (CET)
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 Tony Lindgren <tony@atomide.com>, Adam Ford <aford173@gmail.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
 <60412339-53BF-4DC1-8AF6-4FB0E75D429C@goldelico.com>
From: =?UTF-8?Q?Andr=c3=a9_Hentschel?= <nerv@dawncrow.de>
Autocrypt: addr=nerv@dawncrow.de; prefer-encrypt=mutual; keydata=
 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
 BZtrxq8dmex7tFXvQoJV4PIa20fGXq6S
Message-ID: <53e6cbbd-1094-cba2-4942-981502a738d4@dawncrow.de>
Date: Fri, 27 Dec 2019 15:28:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <60412339-53BF-4DC1-8AF6-4FB0E75D429C@goldelico.com>
Content-Language: de-LU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_062855_982878_A4D7A2D0 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjUuMTIuMTkgdW0gMTg6MDEgc2NocmllYiBILiBOaWtvbGF1cyBTY2hhbGxlcjoKPiBJIHRo
aW5rIHRoZSBhbTM3MDMgaXMgYSBkbTM3MzAgKG9tYXAzNjMwKSB3aGVyZSB0aGUgU0dYIGFuZCB0
aGUKPiBEU1AgaGF2ZSBub3QgcGFzc2VkIHByb2R1Y3Rpb24gdGVzdCBhbmQgYXJlICJkaXNhYmxl
ZCIgYnkgZUZ1c2VzLgo+IFRoaXMgaXMgYSBjb21tb24gcHJvY2VkdXJlIGluIHNpbGljb24gcHJv
ZHVjdGlvbiB0byBpbmNyZWFzZSB5aWVsZC4KPiAKPiBUaGVyZWZvcmUsIHRoZXJlIGlzIGEgcmVn
aXN0ZXIgd2hpY2ggYWxsb3dzIHRvIGR5bmFtaWNhbGx5IGRldGVybWluZQo+IHdoYXQgY29tcG9u
ZW50cyAoU0dYIGFuZCBEU1ApIGFyZSBhdmFpbGFibGUgb24gYSBzcGVjaWZpYyBTb0MgY2hpcC4K
PiBTZWUgIlRhYmxlIDEtNi4gQ2hpcCBJZGVudGlmaWNhdGlvbiIgaW4gdGhlIGNvbW1vbgo+ICJB
TS9ETTM3eCBNdWx0aW1lZGlhIERldmljZSBUUk0iLgo+IAo+IFN1Y2ggYml0cyBleGlzdHMgZm9y
IG9tYXAzNHh4IGFuZCBmb3Igb21hcDM2eHggKGFrYSBhbTM3eHgvZG0zN3h4KS4KPiAKPiBUaGF0
IHdheSB0aGVyZSBpcyBubyBuZWVkIHRvIGRpc2FibGUvZW5hYmxlIHNneCB0aHJvdWdoIGRldmlj
ZSB0cmVlCj4gdmFyaWF0aW9ucyBhbmQgaW50cm9kdWNpbmcgbW9yZSBjb21wbGV4aXR5IGJ5IGlu
dHJvZHVjaW5nIG1vcmUgYW5kIG1vcmUKPiBEVFMgZm9yIHZhcmlhbnRzIChhbTM3MDMuZHRzaSwg
YW0zNzE1LmR0c2ksIGRtMzcyMC5kdHNpLCBkbTM3MzAuZHRzaT8pLgo+IAo+IEJUVzogd2hhdCBh
Ym91dCBhIGJvYXJkIHRoYXQgaXMvd2FzIHByb2R1Y2VkIGluIGVpdGhlciBhbTM3MDMgb3IgZG0z
NzMwCj4gdmFyaWFudHM/IENhbiB0aGV5IHN0aWxsIHNoYXJlIGFuIG9tYXAzNnh4LmR0c2kgYmFz
ZWQgRFRCPwo+IAo+IFNvIElNSE8gaWYgdGhlcmUgaXMgYW4gaXNzdWUgd2l0aCBzZ3ggZW5hYmxl
ZCBvbiBhbTM3MDMgYnV0IG5vIFNHWAo+IGhhcmR3YXJlIGF2YWlsYWJsZSBvbiBhIHNwZWNpZmlj
IFNvQywgdGhlIHN5c2Mgc2V0dXAgc2hvdWxkIHNvbWVob3cgcmVhZAo+IHRoZSBiaXRzIGFuZCBl
ZmZlY3RpdmVseSBkaXNhYmxlIGFsbCBTR1ggcmVsYXRlZCBzZXR1cCBpZiBpdCBpcyBub3QKPiBh
dmFpbGFibGUgb24gdGhlIFNvQy4gSWYgSSByZW1lbWJlciBjb3JyZWN0bHksIHNvbWUgb2xkZXIg
aHdtb2RzIGRpZAo+IHN1Y2ggdGhpbmdzIGJ5IGNoZWNraW5nIFNvQyB2YXJpYW50IGJpdHMuCgpJ
IGxpa2UgdGhlIGlkZWEsIGJ1dCBJJ20gbm90IGluIHRoZSBwb3NpdGlvbiB0byB2b3RlIGZvciBp
dCBhbmQgSSBkb24ndAp1bmRlcnN0YW5kIHRoZSBzeXNjIGNvZGUgZW5vdWdoIHRvIGltcGxlbWVu
dCB0aGF0LgoKQW0gMjUuMTIuMTkgdW0gMTM6NTMgc2NocmllYiBBZGFtIEZvcmQ6Cj4gT24gV2Vk
LCBEZWMgMjUsIDIwMTkgYXQgNjowNSBBTSBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93
LmRlPiB3cm90ZToKPj4gQW5kIHRoZW4gaW5jbHVkZSBhbTM3MDMuZHRzaSBpbiBvbWFwMzZ4eC5k
dHNpIGJlZm9yZSBzZ3ggc3VwcG9ydD8KPiBJIGNhbiBzZWUgdmFsdWUgaW4gaGF2aW5nIGEgMzcw
MyBiYXNlIGFuZCBpbmNsdWRpbmcgdGhhdCBpbiB0aGUgMzZ4eAo+IHdpdGggU0dYIGFuZCBEU1Ag
bm9kZXMsIGJ1dCB3aHkgbm90IGp1cyBtYWtlIFNHWCBkaXNhYmxlZCBieSBkZWZhdWx0Lgo+IFRo
b3NlIHdobyB3YW50L25lZWQgaXQgY2FuIGVuYWJsZSBpdCBvbiBhIHBlci1ib2FyZCBiYXNpcy4K
Pj4gT3Igd291bGQgaXQgYmUgYmV0dGVyIHRvIGhhdmUgc2d4IHN1cHBvcnQgaW4gYSBzZXBhcmF0
ZSBkdHNpPwo+IAo+IEkgYW0gbm90IHN1cmUgaG93IG11Y2ggRFNQIHN0dWZmIGlzIGluIHRoZXJl
LCBidXQgdGhlIERNMzczMCBpcyB0aGUKPiBBTTM3MDMgKyBEU1AgYW5kIDNELgoKRm9yIGNsYXJp
ZmljYXRpb24gdGhpcyByZWR1Y2VkIHRhYmxlIHNob3VsZCBoZWxwOgogICAgIERNMzczMCB8IERN
MzcyNSB8IEFNMzcxNSB8IEFNMzcwMwpEU1AgICAgWCAgICB8ICAgWCAgICB8ICAgICAgICB8ICAg
IApTR1ggICAgWCAgICB8ICAgICAgICB8ICAgWCAgICB8ICAgIAoKV2hlcmUgWCBpcyAic3VwcG9y
dGVkIgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
