Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7991A6737
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 15:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7As3QuxJAFtxekbvD7+vMEB8Fi1dflo/cmjSpGt8cg=; b=fSojIsQA6T2DWJ
	JuK7uxXxoiBC/KgF/XQZ4AzveaTDuDF85Kw3eKGcaDh+D+sROKTHc2T/D/UawoxQy2/cM+SdRCZP7
	DHcY9YDTmHjvtVTyh/LOnxtgYWwhh/bKscmKJMvDu3k64K8qVQ2qSysbP2xsCDmg4Q31NGxNTBqc1
	n+AwyOy67TSggpiAWIdwFl+1gDR0lurCoipIrG07LOfYuu5ZFokbsoYw3sxf38DC/pd/4rM1dyuxA
	8M9Pcs5/9A85OhPk3nhxOlEinpc0NPCF5q2g74RIYgaMa1AUHsb4H2+lXxuTjiElOIhxpK7pzmgWr
	hg2m0P5cLVzLud9mptow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzHU-0007GL-Oj; Mon, 13 Apr 2020 13:37:44 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzHI-0007EW-Jx
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 13:37:37 +0000
Received: by mail-il1-x144.google.com with SMTP id e4so6156948ils.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 06:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ea+AOiln+p4Qy5/mVa8RywsqxHntH9b9jIOPl9ej+Mw=;
 b=tQcKEQFd8PMqnD+4j8G67WXRwyH9D6p3Cftbf35vnV8SSd4bPiY3j4/5qbyyyfPDe5
 J7D7WeYkFSFp+qshxgJZtI59BPTu3zYvLX/Mp8eg/hcZOEr9hvHzlk0nkIRX2Q9XdY/c
 T1esTRnF1oiPZu7hxr3Xp2bNaGjeLhLVSOQn9s1V8XA6ZX3lawzfY7aTkleJV/pOzfdk
 GqFJ0lAU7gs5MnlBSKTCKZkfECwyqiH/uVkZWLZcpP1Xei4M9CezlEhMEJ7rpnmmAOv6
 mGXe9vtEe0j4L2IdsPim186DNpQmRcQVgqQcO98rHXw1/8ePLG6TOr2hbcmDHjS/xOA4
 z8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ea+AOiln+p4Qy5/mVa8RywsqxHntH9b9jIOPl9ej+Mw=;
 b=Y9H9MkDlA4K3xQIeVcLSuDFj8QBaEFO/WVxrgIwPKz3PJ36FLIfVb50JpRcuBy7iwj
 zdCQY2YMknZJnyu6qsMVd4I+6JbcMwTvDENpjWvpFHZe/rk2iu9L6T2zjQAfx9zAkYbc
 ApUkqXlEshqW6Sz20zS+IpheJ8m4sCGDwOhQtrLZG0/MNYMEYVcGCXCD8qdUBDeMigf+
 IUlXTltnXydXyN/4ORm2Xdntb1xyvrkaFI6ETykVRwZZYjA3bi7A4wOcqCpONW6DgOgR
 JPenVqvUE7b7EUNZY6wqfbAKcyKjfKBRH9hUR3rc0WbURrN1L6982IMcWdc7QzYHx07d
 NzNg==
X-Gm-Message-State: AGi0Pub1V96neMiOJS2+/MRUKsyo9k+hxev5KrRjDMPe8gV+zovEVZ3h
 nbzkZYnuWUkOq94CNBKvw7hO7aafEXXAUYfleJ0=
X-Google-Smtp-Source: APiQypIM2ZRhlP9h2CjO4B6Hd4XvLJWrNZ6hK8abi0gSqx5AwSSu+AfbIJo8Vs9cRPZM1Kd+QasFJv/1twNb/nfYPqw=
X-Received: by 2002:a05:6e02:c8f:: with SMTP id
 b15mr15395581ile.35.1586785050679; 
 Mon, 13 Apr 2020 06:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200406081007.k6wlaampgbe46yts@gilmour.lan>
 <CAJiuCccPxnW-YMjENr5-_XMMu_gs5pRnCtYvpXQtHTAVj1QQqw@mail.gmail.com>
In-Reply-To: <CAJiuCccPxnW-YMjENr5-_XMMu_gs5pRnCtYvpXQtHTAVj1QQqw@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 13 Apr 2020 15:37:19 +0200
Message-ID: <CAJiuCcdqv=mGmUvZ8=35P7fC=sePCpXFWw0_K7rEH+qPQT7W+g@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] Add support for Allwinner H6 DVFS
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_063735_671772_1443E89F 
X-CRM114-Status: GOOD (  25.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCA2IEFwciAyMDIwIGF0IDExOjA3LCBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIE1heGltZSwKPgo+IE9uIE1vbiwg
NiBBcHIgMjAyMCBhdCAxMDoxMCwgTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+IHdy
b3RlOgo+ID4KPiA+IEhpLAo+ID4KPiA+IE9uIFN1biwgQXByIDA1LCAyMDIwIGF0IDA3OjM1OjU0
UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gTm93IHRoYXQgcmVxdWlyZWQg
ZHJpdmVycyBhcmUgbWVyZ2VkIHdlIGNhbiBjb250aWJ1dGUgb24gRFZGUwo+ID4gPiBzdXBwb3J0
IGZvciBBbGx3aW5uZXIgSDYuCj4gPiA+Cj4gPiA+IFRoaXMgc2VyaWUgaXMgYmFzZWQgb24gWWFu
Z3RhbyBMaSBzZXJpZVswXSBhbmQgT25kxZllaiBKaXJtYW4gd29ya1sxXS4KPiA+ID4KPiA+ID4g
TW9zdCBvZiB0aGUgT1BQIHRhYmxlcyBhcmUgdGFrZW4gZnJvbSBvcmlnaW5hbCB2ZW5kb3Iga2Vy
bmVsWzJdLgo+ID4gPiBQbHVzIHRoZXJlIGlzIGEgbmV3IENQVSBmcmVxdWVuY2llcyBhdCAxLjZH
SHosIDEuN0dIeiBhbmQgMS44R0h6Lgo+ID4gPgo+ID4gPiBJIHdyb3RlIGEgc2ltcGxlIHNjcmlw
dCB0byByYW5kb21seSBzZXQgYSBmcmVxdWVuY3kgZHVyaW5nCj4gPiA+IGEgcmFuZG9tIHRpbWVb
M10uCj4gPgo+ID4gSWYgeW91IGV2ZXIgbmVlZCB0byBkbyB0aGF0IGV2ZXIgYWdhaW4sIGNwdWZy
ZXEtbGp0LXN0cmVzcy10ZXN0IChmb3VuZAo+ID4gaGVyZSBodHRwczovL2dpdGh1Yi5jb20vc3N2
Yi9jcHVidXJuLWFybSkgaGFzIHByb3ZlbiB0byBiZSB2ZXJ5Cj4gPiByZWxpYWJsZSB0byBkZXRl
Y3QgY3B1ZnJlcSByZWxhdGVkIGlzc3Vlcy4gc3RyZXNzLW5nIG1pZ2h0IG5vdCBiZQo+ID4gZW5v
dWdoIHNpbmNlIHRoZSAoYXQgbGVhc3Qgb2xkZXIpIEFsbHdpbm5lciBTb0NzIHRlbmQgdG8gY3Jl
YXRlIGNhY2hlCj4gPiBjb3JydXB0aW9uIHdoZW4gdW5kZXJ2b2x0ZWQsIGFuZCB0aGF0IG1pZ2h0
IG5vdCBiZSB1bm5vdGljZWQgYnkKPiA+IHN0cmVzcy1uZyBidXQgd2lsbCBiZSBjYXRjaGVkIGJ5
IGNwdWZyZXEtbGp0LXN0cmVzcy10ZXN0LgoKVGhlIHRlc3Qgc2VlbXMgZ29vZCAoc2VlIHJlc3Vs
dCBiZWxvdykgOgoKIyBjcHVmcmVxLWxqdC1zdHJlc3MtdGVzdApDcmVhdGluZyAnLi93aGl0ZW5v
aXNlLTE5MjB4MTA4MC5qcGcnIC4uLiBkb25lCkNQVSBzdHJlc3MgdGVzdCwgd2hpY2ggaXMgZG9p
bmcgSlBFRyBkZWNvZGluZyBieSBsaWJqcGVnLXR1cmJvCmF0IGRpZmZlcmVudCBjcHVmcmVxIG9w
ZXJhdGluZyBwb2ludHMuCgpUZXN0aW5nIENQVSAwCiAxODAwIE1IeiAuLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKIDE3MDQgTUh6
IC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLiBPSwogMTYwOCBNSHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uIE9LCiAxNDg4IE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKIDEzMjAgTUh6IC4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBP
SwogMTA4MCBNSHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uIE9LCiAgODg4IE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKICA4MTYgTUh6IC4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogIDcy
MCBNSHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uIE9LCiAgNDgwIE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKClRlc3RpbmcgQ1BVIDEKIDE4MDAgTUh6IC4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
LiBPSwogMTcwNCBNSHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uIE9LCiAxNjA4IE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKIDE0ODggTUh6IC4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwog
MTMyMCBNSHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uIE9LCiAxMDgwIE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKICA4ODggTUh6IC4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogIDgxNiBN
SHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uIE9LCiAgNzIwIE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKICA0ODAgTUh6IC4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwoKVGVzdGluZyBDUFUg
MgogMTgwMCBNSHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uIE9LCiAxNzA0IE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKIDE2MDggTUh6IC4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogMTQ4
OCBNSHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uIE9LCiAxMzIwIE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKIDEwODAgTUh6IC4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogIDg4OCBNSHog
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uIE9LCiAgODE2IE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKICA3MjAgTUh6IC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogIDQ4MCBNSHogLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uIE9L
CgpUZXN0aW5nIENQVSAzCiAxODAwIE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKIDE3MDQgTUh6IC4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogMTYwOCBN
SHogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uIE9LCiAxNDg4IE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gT0sKIDEzMjAgTUh6IC4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogMTA4MCBNSHogLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
IE9LCiAgODg4IE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4gT0sKICA4MTYgTUh6IC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiBPSwogIDcyMCBNSHogLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uIE9LCiAg
NDgwIE1IeiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4gT0sKCk92ZXJhbGwgcmVzdWx0IDogUEFTU0VECgoKCgo+Cj4gVGhhbmtzIGZv
ciB0aGUgdG9vbCBhbmQgZXhwbGFuYXRpb24uIEkgd2lsbCB0ZXN0IHRoZSB2MyB3aXRoIHRoaXMg
b25lLgo+Cj4gPgo+ID4gQWxzbywgaXQgd2lsbCB0ZXN0IGVhY2ggZnJlcXVlbmN5LCB3aGlsZSBy
YW5kb20gZnJlcXVlbmNpZXMgbWlnaHQgc2tpcAo+ID4gYSBmZXcuCj4KPiBJIGRpZG4ndCBjb3Vu
dCB0aGVtIGJ1dCB0aGVyZSB3YXMgbW9yZSB0aGFuIDIwMDBsaW5lcywgcHJvYmFiaWxpdHkgdG8g
bWlzcwo+IGEgZnJlcXVlbmN5IGlzIHJlYWxseSBsb3cuIEFsc28gY2hhbmdpbmcgZnJvbSA1MDBN
SHogdG8gMS44R0h6IGNvdWxkIGhhdmUKPiB0cmlnZ2VyIHNvbWUgb3V0LW9mLXNwZWMgaXNzdWUu
Cj4KPiBCdXQganVzdCB0byBiZSBzdXJlIEkgd2lsbCBhZGQgYW4gaW5pdCBwaGFzZSBiZWZvcmUg
ZG9pbmcgcmFuZG9tIHN0dWZmLgo+Cj4gPgo+ID4gPiBXaXRoIHRoaXMgc2NyaXB0IGFuZCB1c2lu
ZyBzdHJlc3MtbmcgZHVyaW5nIHNldmVyYWwgaG91cnMsIEkgZGlkbid0Cj4gPiA+IHNlZSBhbnkg
aXNzdWUuIE1vcmVvdmVyIEkgaGF2ZSB0ZXN0ZWQgc3BlY2lmaWNhbGx5IHRoZSAxLjhHSHogb24g
bXkKPiA+ID4gQmVlbGluayBHUzEsIG1heCB0aGVybWFsIDg1wrBDIGlzIHJlYWNoZWQgdmVyeSBx
dWlja2x5IGFuZCB0aGVuIHRoZQo+ID4gPiBTb0Mgb3NjaWxsYXRlcyBxdWlja2x5IGJldHdlZW4g
MS41IGFuZCAxLjhHSHouIFNvIGkgaGF2ZSBhZGRlZAo+ID4gPiAxLjZHSHogYW5kIDEuN0dIeiBt
eSBib2FyZCBub3cgb3NjaWxsYXRlIHNsb3dlciBiZXR3ZWVuIDEuNUdIeiBhbmQKPiA+ID4gMS42
R0h6IHN3YXBwaW5nIGV2ZXJ5IHNlY29uZCBhbmQgdGVtcGVyYXR1cmUgaXMgYWxzbyBtb3Jlc3Rh
YmxlLgo+ID4gPgo+ID4gPiBJIGFsc28gdGVzdCB0aGF0IHRoYXQgb2ZmbGluaW5nIENQVTAgYW5k
IGRvaW5nIERWRlMgb24gb3RoZXIgQ1BVcwo+ID4gPiB3b3Jrcy4gQXMgQ1BVIHJlZ3VsYXRvciBp
cyBvbmx5IHNldCBmb3IgQ1BVMC4KPiA+ID4KPiA+ID4gQnV0IG1heWJlIGl0IGRvZXNuJ3QgY29z
dCBtdWNoIHRvIHNldCB0aGUgcmVndWxhdG9yIGZvciBhbGwgdGhlIENQVXM/Cj4gPiA+Cj4gPiA+
IEplcm5laiB0ZXN0IHRoZSBHUFUgZGV2ZnJlcSBvbiBzZXZlcmFsIEg2IGJvYXJkIHBhcnRpY3Vs
YXJ5IHRoZQo+ID4gPiBUYW5peCBUWDYgd2hpY2ggZG9lc24ndCBoYXZlIGEgcHJvcGVyIGRlZGlj
YXRlZCBQTUlDIGFuZCBkb2Vzbid0Cj4gPiA+IGhhZCBhbnkgdHJvdWJsZSB3aXRoIGl0Lgo+ID4g
Pgo+ID4gPiBEbyB5b3UgdGhpbmsgSSBjYW4gZW5hYmxlIEdQVSBPUFAgZm9yIGFsbCBINiBCb2Fy
ZHM/Cj4gPgo+ID4gSXQgc2VlbXMgeW91J3JlIGRvaW5nIGl0Pwo+IE5vIEkgZG9uJ3QsIHNlZSBt
eSBhbnN3ZXIgb24gcGF0Y2ggNC83Lgo+Cj4gVGhhbmtzIGZvciB5b3VyIHJldmlldywKPiBDbMOp
bWVudAo+Cj4gPgo+ID4gTWF4aW1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
