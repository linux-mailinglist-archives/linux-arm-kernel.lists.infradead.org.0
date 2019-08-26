Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276D99D4A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 19:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADDtm9UZJY8OjcdvOzyNtxvxEldP1P//Cmi6skP9UsM=; b=bii3fb5Db999Of
	Ftgh6hzy6HGbvwsmhwE7boEGMRvWj3xj2fmQOpS5jeYOCFIa3J62X5VoLt58JQD0uGkul7vrpY6TM
	GgQU/ybHU673h7+pkSYs/97dhJ/v9m5836D2sy88ncHRyxjU42oWo6LRZE6FPzH5HpdfsyaAY5lpo
	imw4JCxxI5W2Z96prBc9h1QfH/Zs1saQGLxcU9514bXhLFTi3EJG19kN6lx1LOPHEg9C/AoZfIDg/
	WsfklCzef/6xU7PtfuvIsfspsm76nxGYg9LYzuMVpCTTpe8+NqB9+xsJdQFUfJaxNkJ3kCo3r1XTz
	+sSX7b3D7fh0Gn2tcYsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2IUj-0003ft-32; Mon, 26 Aug 2019 17:09:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2IUS-0003ew-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 17:09:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so10971847pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 10:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=yPeEMddIi0z8KsbVoXmX4P9JjZRScu3qoYzqC8dRJtQ=;
 b=aL4eazpgspu49x5bhKNzO0ttOCOEIJSQo3jsWqBwo2CIZ5b0YXuTw84rMEeXLIyDTS
 9CsdkHCOlwsyqfDQT8RK12Bx4seoREL5VE+27nqmQbTpAWk5JrDBVEPcIwQJjeseaVxV
 F2RA8lyjbKRhkyxs2559lPjl4GDWJRY6IGHYTVtzBRjIyOzreU6+Q1UX+L3xLd4NwCB8
 /mGh9pEOqeI6lWsEh7xXx+K3cWSEHF4wL9LcDJAErjXicJz7nppR8mOeDuTixy8Ofdb9
 eXQWzi3CPV5V409yrVcmmM9IV8coOG9j5aMG6AWsCrOT3AhapKOI/gbcc5T9Fau/Loyw
 5aQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=yPeEMddIi0z8KsbVoXmX4P9JjZRScu3qoYzqC8dRJtQ=;
 b=VBWjcViQdWhWoQRTagEoy+TZbzvv3UnYU7xvUrNjthHkkMKTz8TPE0A4TSJkbDw5wm
 NZGfffpAxZsdAHzQc8sRg5EFIeUGUVvmqJngN9EJgo2bmCE5qZkTI6xpwJ7I9/kOVob5
 VM/N7bJcIUcBcw6y7svGTInXd2W++QvIdA1dJ809GUPJex7Y0/9pqu7VMf+r62j9NrBu
 wI/LKJB+hPaeYe44CzU7ISRovqvdRd85KR5YusdlF6z2f9zBvvpnVI9gJ8ufnH1NncDi
 4nLSLyUwSibGKrkI6gXQB8CMu3MKcZesWuhkpvLxJO7uoRLvYjEZuFKzZLpnVv164Bv1
 1ioQ==
X-Gm-Message-State: APjAAAXbtwlELAfu31iDtF77O2drliKqgrNukOfTjFDYd3hBl5EtnJAd
 QQFN+6IbS4Ptk4ZuZlJvvFfVSw==
X-Google-Smtp-Source: APXvYqxVp9zJ5zqqJbitmKSrHWunH37Vo1H3Mu2yAOmtWhXd2V8RC0WBZxuI0F9r1DUFJW2cz7mheg==
X-Received: by 2002:a62:754a:: with SMTP id q71mr20811624pfc.15.1566839350017; 
 Mon, 26 Aug 2019 10:09:10 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id 22sm15757652pfv.134.2019.08.26.10.09.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 10:09:09 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: CPUfreq fail on rk3399-firefly
In-Reply-To: <db7af16f-d8cc-fbcb-726d-2aeba5563076@rock-chips.com>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk> <7hmugdynmk.fsf@baylibre.com>
 <2314814.WbdfqDVNqK@phil> <7hv9uq9wfe.fsf@baylibre.com>
 <c973d3fa-5f0d-c277-7c83-6227942a671a@rock-chips.com>
 <7hd0gvzuvw.fsf@baylibre.com> <7h8srjzuen.fsf@baylibre.com>
 <db7af16f-d8cc-fbcb-726d-2aeba5563076@rock-chips.com>
Date: Mon, 26 Aug 2019 10:09:08 -0700
Message-ID: <7h4l23zwej.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_100912_597192_5313430E 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-build-reports@lists.linaro.org, linux-rockchip@lists.infradead.org,
 linux-next@vger.kernel.org,
 =?utf-8?B?6Zer5a2d?= =?utf-8?B?5Yab?= <andy.yan@rock-chips.com>,
 =?utf-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cml0ZXM6
Cgo+IEhpIEtldmluLAo+Cj4gIMKgwqDCoCBJIHdhbnQgdG8gaGF2ZSBhIHRlc3Qgd2l0aCBteSBi
b2FyZCwgSSBjYW4gZ2V0IHRoZSBJbWFnZSBhbmQgZHRiIAo+IGZyb20gdGhlIGxpbmsgZm9yIHRo
ZSBqb2IsCj4KPiBidXQgaG93IGNhbiBJIGdldCB0aGUgcmFuZGlzayB3aGljaCBpcyBuYW1lZCBp
bml0cmQtU0RieXkyLmNwaW8uZ3o/CgpUaGUgcmFtZGlzayBpbWFnZXMgYXJlIGhlcmU6CgogIGh0
dHBzOi8vc3RvcmFnZS5rZXJuZWxjaS5vcmcvaW1hZ2VzL3Jvb3Rmcy9idWlsZHJvb3Qva2NpLTIw
MTkuMDIvYXJtNjQvYmFzZS8KCmluIHRoZSBrZXJuZWxDSSBsb2dzIHRoZSByYW1kaXNrIGlzIHNs
aWdodGx5IG1vZGlmaWVkIGJlY2F1c2UgdGhlIGtlcm5lbAptb2R1bGVzIGhhdmUgYmVlbiBpbnNl
cnRlZCBpbnRvIHRoZSBjcGlvIGFyY2hpdmUuCgpIb3dldmVyLCBmb3IgdGhlIHB1cnBvc2VzIG9m
IHRoaXMgdGVzdCwgeW91IGNhbiBqdXN0IHRlc3Qgd2l0aCB0aGUKdW5tb2RpZmllZCByb290ZnMu
Y3Bpby5neiBhYm92ZS4KCktldmluCgoKPiBUaGFua3MsCj4KPiAtIEtldmVyCj4KPiBPbiAyMDE5
LzgvMjQg5LiK5Y2IMTowMywgS2V2aW4gSGlsbWFuIHdyb3RlOgo+PiBLZXZpbiBIaWxtYW4gPGto
aWxtYW5AYmF5bGlicmUuY29tPiB3cml0ZXM6Cj4+Cj4+PiBLZXZlciBZYW5nIDxrZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPiB3cml0ZXM6Cj4+Pgo+Pj4+IEhpIEtldmluLCBIZWlrbywKPj4+Pgo+
Pj4+IE9uIDIwMTkvOC8yMiDkuIrljYgyOjU5LCBLZXZpbiBIaWxtYW4gd3JvdGU6Cj4+Pj4+IEhp
IEhlaWtvLAo+Pj4+Pgo+Pj4+PiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cml0
ZXM6Cj4+Pj4+Cj4+Pj4+PiBBbSBEaWVuc3RhZywgMTMuIEF1Z3VzdCAyMDE5LCAxOTozNTozMSBD
RVNUIHNjaHJpZWIgS2V2aW4gSGlsbWFuOgo+Pj4+Pj4+IFsgcmVzZW50IHdpdGggY29ycmVjdCBh
ZGRyIGZvciBsaW51eC1yb2NrY2hpcCBsaXN0IF0KPj4+Pj4+Pgo+Pj4+Pj4+IE1hcmsgQnJvd24g
PGJyb29uaWVAa2VybmVsLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIFRodSwgSnVs
IDE4LCAyMDE5IGF0IDA0OjI4OjA4QU0gLTA3MDAsIGtlcm5lbGNpLm9yZyBib3Qgd3JvdGU6Cj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IFRvZGF5J3MgLW5leHQgc3RhcnRlZCBmYWlsaW5nIHRvIGJvb3QgZGVm
Y29uZmlnIG9uIHJrMzM5OS1maXJlZmx5Ogo+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gYXJtNjQ6Cj4+Pj4+
Pj4+PiAgICAgICBkZWZjb25maWc6Cj4+Pj4+Pj4+PiAgICAgICAgICAgZ2NjLTg6Cj4+Pj4+Pj4+
PiAgICAgICAgICAgICAgIHJrMzM5OS1maXJlZmx5OiAxIGZhaWxlZCBsYWIKPj4+Pj4+Pj4gSXQg
aGl0cyBhIEJVRygpIHRyeWluZyB0byBzZXQgdXAgY3B1ZnJlcToKPj4+Pj4+Pj4KPj4+Pj4+Pj4g
WyAgIDg3LjM4MTYwNl0gY3B1ZnJlcTogY3B1ZnJlcV9vbmxpbmU6IENQVTA6IFJ1bm5pbmcgYXQg
dW5saXN0ZWQgZnJlcTogMjAwMDAwIEtIego+Pj4+Pj4+PiBbICAgODcuMzkzMjQ0XSBjcHVmcmVx
OiBjcHVmcmVxX29ubGluZTogQ1BVMDogVW5saXN0ZWQgaW5pdGlhbCBmcmVxdWVuY3kgY2hhbmdl
ZCB0bzogNDA4MDAwIEtIego+Pj4+Pj4+PiBbICAgODcuNDY5Nzc3XSBjcHVmcmVxOiBjcHVmcmVx
X29ubGluZTogQ1BVNDogUnVubmluZyBhdCB1bmxpc3RlZCBmcmVxOiAxMjAwMCBLSHoKPj4+Pj4+
Pj4gWyAgIDg3LjQ4ODU5NV0gY3B1IGNwdTQ6IF9nZW5lcmljX3NldF9vcHBfY2xrX29ubHk6IGZh
aWxlZCB0byBzZXQgY2xvY2sgcmF0ZTogLTIyCj4+Pj4+Pj4+IFsgICA4Ny40OTE4ODFdIGNwdWZy
ZXE6IF9fdGFyZ2V0X2luZGV4OiBGYWlsZWQgdG8gY2hhbmdlIGNwdSBmcmVxdWVuY3k6IC0yMgo+
Pj4+Pj4+PiBbICAgODcuNDk1MzM1XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0t
LS0KPj4+Pj4+Pj4gWyAgIDg3LjQ5NjgyMV0ga2VybmVsIEJVRyBhdCBkcml2ZXJzL2NwdWZyZXEv
Y3B1ZnJlcS5jOjE0MzghCj4+Pj4+Pj4+IFsgICA4Ny40OTg0NjJdIEludGVybmFsIGVycm9yOiBP
b3BzIC0gQlVHOiAwIFsjMV0gUFJFRU1QVCBTTVAKPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSdtIHN0cnVn
Z2xpbmcgdG8gc2VlIGFueXRoaW5nIHJlbGV2YW50IGluIHRoZSBkaWZmIGZyb20geWVzdGVyZGF5
LCB0aGUKPj4+Pj4+Pj4gdW5saXN0ZWQgZnJlcXVlbmN5IHdhcm5pbmdzIHdlcmUgdGhlcmUgaW4g
dGhlIGxvZ3MgeWVzdGVyZGF5IGJ1dCBubyBvb3BzCj4+Pj4+Pj4+IGFuZCBJJ20gbm90IHNlZWlu
ZyBhbnkgY2hhbmdlcyBpbiBjcHVmcmVxLCBjbGsgb3IgYW55dGhpbmcgcmVsZXZhbnQKPj4+Pj4+
Pj4gbG9va2luZy4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gRnVsbCBib290bG9nIGFuZCBvdGhlciBpbmZv
IGNhbiBiZSBmb3VuZCBoZXJlOgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiAJaHR0cHM6Ly9rZXJuZWxjaS5v
cmcvYm9vdC9pZC81ZDMwMmQ4MzU5YjUxNDk4ZDA0OWU5ODMvCj4+Pj4+Pj4gSSBjb25maXJtIHRo
YXQgZGlzYWJsaW5nIENQVWZyZXEgaW4gdGhlIGRlZmNvbmZpZyAoQ09ORklHX0NQVV9GUkVRPW4p
Cj4+Pj4+Pj4gbWFrZXMgdGhlIGZpcmVmbHkgYm9hcmQgc3RhcnQgd29ya2luZyBhZ2Fpbi4KPj4+
Pj4+Pgo+Pj4+Pj4+IE5vdGUgdGhhdCB0aGUgZGVmYXVsdCBkZWZjb25maWcgZW5hYmxlcyB0aGUg
InBlcmZvcm1hbmNlIiBDUFVmcmVxCj4+Pj4+Pj4gZ292ZXJub3IgYXMgdGhlIGRlZmF1bHQgZ292
ZXJub3IsIHNvIGR1cmluZyBrZXJuZWwgYm9vdCwgaXQgd2lsbCBhbHdheXMKPj4+Pj4+PiBzd2l0
Y2ggdG8gdGhlIG1heCBmcmVxdWVuY3kuCj4+Pj4+Pj4KPj4+Pj4+PiBGb3IgZnVuLCBJIHNldCB0
aGUgZGVmYXVsdCBnb3Zlcm5vciB0byAidXNlcnNwYWNlIiBzbyB0aGUga2VybmVsCj4+Pj4+Pj4g
d291bGRuJ3QgbWFrZSBhbnkgT1BQIGNoYW5nZXMsIGFuZCB0aGF0IGxlYWRzIHRvIGEgc2xpZ2h0
bHkgbW9yZQo+Pj4+Pj4+IGluZm9ybWF0aXZlIHNwbGF0WzFdCj4+Pj4+Pj4KPj4+Pj4+PiBUaGVy
ZSBpcyBzdGlsbCBhbiBPUFAgY2hhbmdlIGhhcHBlbmluZyBiZWNhdXNlIHRoZSBkZXRlY3RlZCBP
UFAgaXMgbm90Cj4+Pj4+Pj4gb25lIHRoYXQncyBsaXN0ZWQgaW4gdGhlIHRhYmxlLCBzbyBpdCB0
cmllcyB0byBjaGFuZ2UgdG8gYSBsaXN0ZWQgT1BQCj4+Pj4+Pj4gYW5kIGZhaWxzIGluIHRoZSBi
b3dlbHMgb2YgY2xrX3NldF9yYXRlKCkKPj4+Pj4+IFRob3VnaCBJIHRoaW5rIHRoYXQgbWlnaHQg
b25seSBiZSBhIHN5bXB0b20gYXMgd2VsbC4KPj4+Pj4+IEJvdGggdGhlIFBMTCBzZXR0aW5nIGNv
ZGUgYXMgd2VsbCBhcyB0aGUgYWN0dWFsIGNwdS1jbG9jayBpbXBsZW1lbnRhdGlvbgo+Pj4+Pj4g
aXMgdW5jaGFuZ2VkIHNpbmNlIDIwMTcgKGFuZCBydW5zIGp1c3QgZmluZSBvbiBhbGwgYm9hcmRz
IGluIG15IGZhcm0pLgo+Pj4+Pj4KPj4+Pj4+IE9uZSBzb3VyY2UgZm9yIHRoZXNlIGlzc3VlcyBp
cyBvZnRlbiB0aGUgcmVndWxhdG9yIHN1cHBseWluZyB0aGUgY3B1Cj4+Pj4+PiBnb2luZyBoYXl3
aXJlIC0gYWthIHRoZSB2b2x0YWdlIG5vdCBtYXRjaGluZyB0aGUgb3BwLgo+Pj4+Pj4KPj4+Pj4+
IEFzIGluIHRoaXMgZXJyb3ItY2FzZSBpdCdzIENQVTQgYmVpbmcgc2V0LCB0aGlzIHdvdWxkIG1l
YW4gaXQgbWlnaHQKPj4+Pj4+IGJlIHRoZSBiaWcgY2x1c3RlciBzdXBwbGllZCBieSB0aGUgZXh0
ZXJuYWwgc3lyODI1IChmYW41MzU1IGNsb25lKQo+Pj4+Pj4gdGhhdCBtaWdodCBhY3QgdXAuIElu
IHRoZSBGaXJlZmx5LXJrMzM5OSBjYXNlIHRoaXMgaXMgZXZlbiBzdHJhbmdlci4KPj4+Pj4+Cj4+
Pj4+PiBUaGVyZSBpcyBhIGRpc2NyZXBhbmN5IGJldHdlZW4gdGhlICJmY3Msc3VzcGVuZC12b2x0
YWdlLXNlbGVjdG9yIgo+Pj4+Pj4gYmV0d2VlbiBkaWZmZXJlbnQgYm9vdGxvYWRlciB2ZXJzaW9u
cyAoaG93IHRoZSBzZWxlY3Rpb24tcGluIGlzIHNldCB1cCksCj4+Pj4+PiBzbyB0aGUga2VybmVs
IG1pZ2h0IGFjdHVhbGx5IHdyaXRlIGhpcyByZXF1ZXN0ZWQgdm9sdGFnZSB0byB0aGUgd3JvbmcK
Pj4+Pj4+IHJlZ2lzdGVyIChub3QgdGhlIG9uZSBmb3IgYWN0dWFsIHZvbHRhZ2UsIGJ1dCB0aGUg
c2Vjb25kIHNldCB1c2VkIGZvcgo+Pj4+Pj4gdGhlIHN1c3BlbmQgdm9sdGFnZSkuCj4+Pj4+Pgo+
Pj4+Pj4gRGlkIHlvdSBieSBjaGFuY2Ugc3dhcCBib290bG9hZGVycyBhdCBzb21lIHBvaW50IGlu
IHJlY2VudCBwYXN0Pwo+Pj4+PiBObywgaGF2ZW4ndCB0b3VjaGVkIGJvb3Rsb2FkZXIgc2luY2Ug
SSBpbml0aWFsbHkgc2V0dXAgdGhlIGJvYXJkLgo+Pj4+IFRoZSBDUFUgdm9sdGFnZSBkb2VzIG5v
dCBhZmZlY3QgYnkgYm9vdGxvYWRlciBmb3Iga2VybmVsIHNob3VsZCBoYXZlIGl0cwo+Pj4+IG93
biBvcHAtdGFibGUsCj4+Pj4KPj4+PiB0aGUgYm9vdGxvYWRlciBtYXkgb25seSBhZmZlY3QgdGhl
IGNlbnRlci9sb2dpYyBwb3dlciBzdXBwbHkuCj4+Pj4KPj4+Pj4+IEknZCBhc3N1bWUgWzJdIG1p
Z2h0IGFjdHVhbGx5IGJlIHRoZSBzYW1lIGlzc3VlIGxhc3QgeWVhciwgdGhvdWdoCj4+Pj4+PiB0
aGUgQ0ktbG9ncyBhcmUgbm90IGF2YWlsYWJsZSBhbnltb3JlIGl0IHNlZW1zLgo+Pj4+Pj4KPj4+
Pj4+IENvdWxkIHlvdSB0cnkgdG8gc2V0IHRoZSB2ZGRfY3B1X2IgcmVndWxhdG9yIHRvIGRpc2Fi
bGVkLCBzbyB0aGF0Cj4+Pj4+PiBjcHVmcmVxIGZvciB0aGlzIGNsdXN0ZXIgZGVmZXJzIGFuZCBz
ZWUgd2hhdCBoYXBwZW5zPwo+Pj4+PiBZZXMsIHRoaXMgY2hhbmdlWzFdIGRlZmluaXRlbHkgbWFr
ZXMgdGhpbmdzIGJvb3QgcmVsaWFibHkgYWdhaW4sIHNvCj4+Pj4+IHRoZXJlJ3MgZGVmaW50aWVs
eSBzb21ldGhpbmcgYSBiaXQgdW5zdGFibGUgd2l0aCB0aGlzIHJlZ3VsYXRvciwgYXQKPj4+Pj4g
bGVhc3Qgb24gdGhpcyBmaXJlZmx5Lgo+Pj4+IElzIGl0IHBvc3NpYmxlIHRvIHRhcmdldCB3aGlj
aCBwYXRjaCBpbnRyb2R1Y2UgdGhpcyBidWc/IFRoaXMgYm9hcmQKPj4+PiBzaG91bGQgaGF2ZSB3
b3JrIGNvcnJlY3RseSBmb3IgYSBsb25nIHRpbWUgd2l0aCB1cHN0cmVhbSBzb3VyY2UgY29kZS4K
Pj4+IFVuZm9ydHVuYXRlbHksIGl0IHNlZW1zIHRvIGJlIGEgcmVndWxhciwgYnV0IGludGVybWl0
dGVudCBmYWlsdXJlLCBzbwo+Pj4gYmlzZWN0aW9uIGlzIG5vdCBwcm9kdWNpbmcgYW55dGhpbmcg
cmVsaWFibGUuCj4+Pgo+Pj4gWW91IGNhbiBzZWUgdGhhdCBib3RoIGluIG1haW5saW5lWzFdIGFu
ZCBpbiBsaW51eC1uZXh0WzJdIHRoZXJlIGFyZQo+Pj4gcGVyaW9kaWMgZmFpbHVyZXMsIGJ1dCBp
dCdzIGhhcmQgdG8gc2VlIGFueSBwYXR0ZXJucy4KPj4gRXZlbiB3b3JzZSwgSSAocmUpdGVzdGVk
IG1haW5saW5lIGZvciB2ZXJzaW9ucyB0aGF0IHdlcmUgcHJldmlvdXNseQo+PiBwYXNzaW5nICh2
NS4yLCB2NS4zLXJjNSkgYW5kIHRoZXkgYXJlIGFsc28gZmFpbGluZyBub3cuCj4+Cj4+IFRoZXkg
d29yayBhZ2FpbiBpZiBJIGRpc2FibGUgdGhhdCByZWd1bGF0b3IgYXMgc3VnZ2VzdGVkIGJ5IEhl
aWtvLgo+Pgo+PiBTbyB0aGlzIGlzIGluY3JlYXNpbmdseSBwb2ludGluZyB0byBmYWlsaW5nIGhh
cmR3YXJlLgo+Pgo+PiBLZXZpbgo+Pgo+Pgo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
