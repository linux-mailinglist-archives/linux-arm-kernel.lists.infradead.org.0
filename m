Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D6A1C7135
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIRPY2naKUSBm3bv8z1hHV55zSKr9JjWPifEuCPdcgg=; b=gKlIymO3ywua4v
	Covf7QTOW07JcXxkhYy+PRpSLEGbPKdVLyZTEIOPeqt17JK/aseuFZxaOQ5SB4llcxTzxe2sU5xKr
	R5aXzdUb2T8eBJ/aMtqz0qJHf4wVS5JQgZVCJ2Svq5uRGth5dyPQgpm+Z9gkEOrwozPryhKsgdmCH
	a6+DYLn19gQ4yVtqZ23GQTazgt5kcX0l0LC0lubVrVx18W6RlrdOfPc7L+EH5v+IdMXRceTyJv37g
	5S2Mm/+MHDThCbz4FUwhDf7vA9d/fVUijRGKCjlq94G5nHGwaE2D8zhu99r6vHpwMJcedje7HFqcq
	KP+PZc4AT+Fu1NqLaYag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJeZ-0003W6-UC; Wed, 06 May 2020 12:59:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJeO-0003QY-R4
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:59:50 +0000
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31C0B20752
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 12:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588769988;
 bh=MPXOfGvSfzOLFX5Mr6VIYuxuS5zusNmJO44TnBYJ+4c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xAaAzHhmFFb5GEoM8xdv/EgSiN4efFAjxqLJfFT7rtDodCckGoaZB+mQyRPMC/WH6
 TR+abpF4ldtyzsc/UhAw9EZXkHXrteGlre2le/TAZOW3zVZhaSCL0alhOm7uZ6w1Fr
 oKyAFn7TFachz3T8G+v7pgFjVc02IqG6PA3pndjk=
Received: by mail-ot1-f44.google.com with SMTP id j4so1214470otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 05:59:48 -0700 (PDT)
X-Gm-Message-State: AGi0PuYMYmuPWdGnBUs1JTbutnXryK5SjI0PlMK5IY+um0aS3V5LGq3U
 FYFWJTqtuLjd+xhfbkDHQRbRnKV1ZMD/RWsoNA==
X-Google-Smtp-Source: APiQypKMCl11Lv+2rqDX9OoL5GHc2eme9RFoZ4Zrg8I1wW+XHUMQEKMY4mUnzx/QVXnxxUR4/bc3QbJsu9VNuB+IZLA=
X-Received: by 2002:a9d:63da:: with SMTP id e26mr648970otl.107.1588769987459; 
 Wed, 06 May 2020 05:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
 <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
 <20200506082332.57ptj42mkrrn4ceo@rcn-XPS-13-9360>
 <20200506105705.GA5946@pendragon.ideasonboard.com>
In-Reply-To: <20200506105705.GA5946@pendragon.ideasonboard.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 6 May 2020 07:59:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJrE5nMGStAKCynQc4yc1cAvjBos8hvWkSCMxbzJaowPw@mail.gmail.com>
Message-ID: <CAL_JsqJrE5nMGStAKCynQc4yc1cAvjBos8hvWkSCMxbzJaowPw@mail.gmail.com>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Geert Uytterhoeven <geert@linux-m68k.org>,
 =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_055948_912934_1B97ED3C 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 Wei Xu <xuwei5@hisilicon.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgNiwgMjAyMCBhdCA1OjU3IEFNIExhdXJlbnQgUGluY2hhcnQKPGxhdXJlbnQu
cGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1heSAwNiwgMjAy
MCBhdCAxMDoyMzozMkFNICswMjAwLCBSaWNhcmRvIENhw7F1ZWxvIHdyb3RlOgo+ID4gSGkgR2Vl
cnQsCj4gPgo+ID4gVGhhbmtzIGZvciByZXZpZXdpbmcgdGhlIHBhdGNoZXMuIFNvbWUgY29tbWVu
dHMgYmVsb3csCj4gPgo+ID4gT24gbWnDqSAwNi0wNS0yMDIwIDA5OjQ0OjE5LCBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gPiA+IENhbid0IHlvdSBhdm9pZCB0aGUgbmVlZCBmb3IgcGF0Y2hl
cwo+ID4gPiBbUkZUIFBBVENIIDEvNV0gYXJtNjQ6IGR0czogZHJhYWs6IFJlb3JkZXIgaGRtaS1l
bmNvZGVyQDM5IHJlZyBhbmQKPiA+ID4gcmVnLW5hbWVzIHByb3BlcnRpZXMKPiA+ID4gW1JGVCBQ
QVRDSCAyLzVdIEFSTTogZHRzOiB3aGVhdDogcmVvcmRlciByZWcgYW5kIHJlZy1uYW1lcyBwcm9w
ZXJ0aWVzCj4gPiA+IGluIGhkbWkgYnJpZGdlcwo+ID4gPgo+ID4gPiBieSB1c2luZwo+ID4gPgo+
ID4gPiAgICAgaXRlbXM6Cj4gPiA+ICAgICAgIGVudW06Cj4gPiA+ICAgICAgICAgLSBtYWluCj4g
PiA+ICAgICAgICAgLSBlZGlkCj4gPiA+ICAgICAgICAgLSBjZWMKPiA+ID4gICAgICAgICAtIHBh
Y2tldAo+ID4gPgo+ID4gPiBpbnN0ZWFkPwo+ID4KPiA+IE5vdCByZWFsbHksIGJlY2F1c2UgdGhh
dCBkZWZpbmVzIGEgc2NhbGFyIHByb3BlcnR5IHRoYXQgY2FuIHRha2UgYW55IG9mCj4gPiB0aG9z
ZSB2YWx1ZXMgKGlmIEknbSBub3QgbWlzdGFrZW4pLCBhbmQgdGhlIGNvcmUgc2NoZW1hIGVuZm9y
Y2VzIHRoYXQKPiA+IHJlZy1uYW1lcyBtdXN0IGJlIGFuIGFycmF5LgoKTm8sICdpdGVtcycgYXMg
YSBzY2hlbWEgcmF0aGVyIHRoYW4gYSBsaXN0IGFwcGxpZXMgdG8gZXZlcnkgZWxlbWVudCBpbiBh
biBhcnJheS4KCj4gPgo+ID4gSSB0aGluayB0aGUgY2xvc2VzdCBJIGNhbiBnZXQgdG8gd2hhdCB5
b3UgbWVhbiB3b3VsZCBiZSBzb21ldGhpbmcgbGlrZQo+ID4gdGhpczoKPiA+Cj4gPiAgICAgaXRl
bXM6Cj4gPiAgICAgICAtIGVudW06Cj4gPiAgICAgICAgIC0gbWFpbgo+ID4gICAgICAgICAtIGVk
aWQKPiA+ICAgICAgICAgLSBjZWMKPiA+ICAgICAgICAgLSBwYWNrZXQKPiA+ICAgICAgIC0gZW51
bToKPiA+ICAgICAgICAgLSBtYWluCj4gPiAgICAgICAgIC0gZWRpZAo+ID4gICAgICAgICAtIGNl
Ywo+ID4gICAgICAgICAtIHBhY2tldAo+ID4gICAgICAgLSBlbnVtOgo+ID4gICAgICAgICAtIG1h
aW4KPiA+ICAgICAgICAgLSBlZGlkCj4gPiAgICAgICAgIC0gY2VjCj4gPiAgICAgICAgIC0gcGFj
a2V0Cj4gPiAgICAgICAtIGVudW06Cj4gPiAgICAgICAgIC0gbWFpbgo+ID4gICAgICAgICAtIGVk
aWQKPiA+ICAgICAgICAgLSBjZWMKPiA+ICAgICAgICAgLSBwYWNrZXQKPiA+Cj4gPiBCdXQgdGhl
biB0aGF0IHdvdWxkbid0IHByZXZlbnQgYW55b25lIGZyb20gZGVmaW5pbmcgZHVwbGljYXRlIHJl
Zy1uYW1lcwo+ID4gKGVnLiAibWFpbiIsICJjZWMiLCBlZGlkIiwgImNlYyIpLCB3aGljaCBpcyBl
dmVuIHdvcnNlIElNTy4KPgo+IFRoZSBkaXJlY3Rpb24gRFQgYmluZGluZ3MgYXJlIHRha2luZyBp
cyB0byBlbmZvcmUgYSBwYXJ0aWN1bGFyIG9yZGVyLiBJdAo+IHdpbGwgY2F1c2UgRFQgdmFsaWRh
dGlvbiBlcnJvcnMgZm9yIG9sZCBkZXZpY2UgdHJlZXMsIGJ1dCBpdCB3b24ndCBicmVhawo+IGJh
Y2t3YXJkIGNvbXBhdGliaWxpdHkgYXMgdGhlIG9yZGVyIHdvbid0IGJlIGVuZm9yY2VkIGF0IHJ1
bnRpbWUsIHNvIEkKPiB0aGluayB0aGF0J3MgZmluZS4gVGlkeWluZyB1cCB0aGUgZXhpc3Rpbmcg
RFQgc291cmNlcyB0byB1c2UgYQo+IGNvbnNpc3RlbnQgb3JkZXIgc2VlbXMgYmVzdCB0byBtZS4K
Clllcy4KCkl0J3Mgbm90IGEgbmV3IGRpcmVjdGlvbiB0aG91Z2guIFRoZSBvcmRlciB3YXMgYWx3
YXlzIHN1cHBvc2VkIHRvIGJlCmRlZmluZWQsIGl0J3MganVzdCBlbmZvcmNlYWJsZSBub3cuCgpS
b2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
