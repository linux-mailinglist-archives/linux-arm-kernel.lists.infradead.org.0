Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635C116742
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 17:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6aoow/HBOx+qa6B5zwAq4w3mkezOQbvxyb3NbuSZWM=; b=samOz+G1yYXB7P
	i9uqbXeMyMvEP7OvD5ddNWYB8lS7r2HOceL2eyBQoYa6OuQEE7pR+CsWV2G51uvC2/Av5x1vRUMkW
	XkrYSZT9firP00+X2xfGlYqXTjfMaQbC3VDhuveGwzZXCYbeBgyDEE9A0n3JBNLSUdFnTyk09HhIp
	R+uDYn0kbblFFPrELeTjXqIrIZ9RG1TLpPbM9QhnUaS6O/dGw8StK8vYaxrQZFESp9hjcc5qb0JNi
	tUeLHWkr2GylIP5EaW75gzBRztAZHw4myfcxppap6O7iT7xWb46p7SAKRqZ2gKCg6J7BG5mF7sTCN
	7kaimsqDKdzcomsfWGww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO2Tc-0007lE-Ja; Tue, 07 May 2019 15:57:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO2TV-0007km-Se; Tue, 07 May 2019 15:57:51 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F56220825;
 Tue,  7 May 2019 15:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557244669;
 bh=yYeUtQyXycJKGzzKbaR03Sgh1x8livGCDAEBIteSL1I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=m21zi0uw6YcaiMutrzLXpu2AH8gOQclBvy0xOtN3MrLBng7lPp8C8QFVwZJUsGC5k
 opQvIYdSitiQLmo6xw5A/6HMFIboVYByWnoL6xlNjVBBpWd5sqUZDjnIk3s9cmXba3
 ydobS7X0pn8834+IwkOGzoqFiD0vX8icyqbJKcoE=
Received: by mail-qk1-f181.google.com with SMTP id j1so4585622qkk.12;
 Tue, 07 May 2019 08:57:49 -0700 (PDT)
X-Gm-Message-State: APjAAAVyqVkJLMSUgyWUWeGqfbzFO6RXTLilvxgl3Jix1PXqvvrrD657
 Xtc6JmIdQP596kEhuCNDvqBD2q2MnLSh6vHtFQ==
X-Google-Smtp-Source: APXvYqwk+Jr303x3CaQ9QFpPib22XA30jtdBeT+DhVsEK0IVy2YDsaZ0ABIqg81EzByodZnq8CpRQJzVsrmS0QBUy9A=
X-Received: by 2002:a37:4b92:: with SMTP id y140mr25992725qka.79.1557244668293; 
 Tue, 07 May 2019 08:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
 <20190505.214727.1839442238121977055.davem@davemloft.net>
In-Reply-To: <20190505.214727.1839442238121977055.davem@davemloft.net>
From: Rob Herring <robh@kernel.org>
Date: Tue, 7 May 2019 10:57:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL66PdCv7bFwfD9p6VQCcXOesz3EjPcYB9FGosgjOS8yw@mail.gmail.com>
Message-ID: <CAL_JsqL66PdCv7bFwfD9p6VQCcXOesz3EjPcYB9FGosgjOS8yw@mail.gmail.com>
Subject: Re: [PATCH v4 00/10] of_net: Add NVMEM support to of_get_mac_address
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_085749_947284_6AF0AB1A 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXkgNSwgMjAxOSBhdCAxMTo0NyBQTSBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+IHdyb3RlOgo+Cj4gRnJvbTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4K
PiBEYXRlOiBGcmksICAzIE1heSAyMDE5IDE2OjI3OjA1ICswMjAwCj4KPiA+IHRoaXMgcGF0Y2gg
c2VyaWVzIGlzIGEgY29udGludWF0aW9uIG9mIG15IHByZXZpb3VzIGF0dGVtcHRbMV0sIHdoZXJl
IEkndmUKPiA+IHRyaWVkIHRvIHdpcmUgTVREIGxheWVyIGludG8gb2ZfZ2V0X21hY19hZGRyZXNz
LCBzbyBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0bwo+ID4gbG9hZCBNQUMgYWRkcmVzc2VzIGZyb20g
dmFyaW91cyBOVk1FTXMgYXMgRUVQUk9NcyBldGMuCj4gIC4uLgo+Cj4gU2VyaWVzIGFwcGxpZWQs
IHRoYW5rIHlvdS4KClBhdGNoIDEgYXQgbGVhc3QgaXMgc3RpbGwgYmUgZGlzY3Vzc2VkLiBXaGF0
IHdhcyBpbXBsZW1lbnRlZCBiYXNlZCBvbgpteSBjb21tZW50cyBvbiB2MiBpcyByZWFsbHkgYnJv
a2VuLiBOb3cgdGhlIGFsbG9jYXRlZCBidWZmZXIgaXMKdHJhY2tlZCBieSBib3RoIGRldm0gYW5k
IERUIHJlZmNvdW50aW5nLiBXaG9ldmVyJ3MgcmVmIGNvdW50IGRyb3BzCmZpcnN0IHdpbGwgZnJl
ZSB0aGUgYnVmZmVyLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
