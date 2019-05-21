Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5ED247D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCk4k9nmRdxIDL5lDTJ8x78d0v+/KkgNId4X9PWzc4c=; b=gr0KCF6aA7/ZKH
	H4iHJNEF/DZf6qRP/aUvLCXjqJMjklUO8ppA+H76EvfGwjkWvr6ljTQQYsFGueqJ6vsqZaj+HDhUr
	ZO44X/BTQWD8SFNRDXtD42dIW7ujEhUc5nRF7doFr2cu1NPOK6wcqRoM6/j8L2pVxB/M7LGXlpY4E
	SGpWTlJVoHSR85ItiFnjoBHFYvKq8ViN7wr6ZyQwVDdG8u9Z2G1nqViWI5NVjnfAX2VhOONIJAl5p
	FxpcYKBPuZTwRsE5QIqFjQUHBtQg0xs5Y+lDl8c3VBt16UonMP1h/iPsJRabJsYeU02AoUBm94NQB
	vf4urGrB+8QRW9fuieJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSy14-0004mC-BP; Tue, 21 May 2019 06:12:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSy0x-0004lF-0L
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 06:12:44 +0000
Received: from localhost (unknown [106.201.107.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDFC920863;
 Tue, 21 May 2019 06:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558419160;
 bh=4VC9bKP9QU7iVDFMtdo9WoMzmY1tJYqXCWxT9T/NUpY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lJzLTxcVnQlcC8g5MlkXWsEtukxQJremgG+7zcGYuVRwfHSSl/CjVbwp62oapFxjZ
 RB3v+k7IXX6G0ix1zRMQJ2OvmqFFR1LCVcZnUWQFvAHionw5nVJu6KU8/EW2X/ujcW
 XyM9/dqc3r3hrt7uRZc5BRuGjG8gjJF0yevCkmSg=
Date: Tue, 21 May 2019 11:42:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: Re: Re: [PATCH v3 11/14] dmaengine: imx-sdma: fix ecspi1 rx dma
 not work on i.mx8mm
Message-ID: <20190521061236.GA15118@vkoul-mobl>
References: <VI1PR04MB4543DEEC702531ED69616B8C89070@VI1PR04MB4543.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4543DEEC702531ED69616B8C89070@VI1PR04MB4543.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_231243_071621_F437BB33 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEtMDUtMTksIDA1OjQxLCBSb2JpbiBHb25nIHdyb3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0KPiA+IEZyb206IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4gPiBT
ZW50OiAyMDE55bm0NeaciDIx5pelIDEzOjEzCj4gPiAKPiA+IE9uIDIxLTA1LTE5LCAwNDo1OCwg
Um9iaW4gR29uZyB3cm90ZToKPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4g
PiA+IEZyb206IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4gPiA+ID4gU2VudDogMjAx
OeW5tDXmnIgyMeaXpSAxMjoxOAo+ID4gPiA+Cj4gPiA+ID4gT24gMDctMDUtMTksIDA5OjE2LCBS
b2JpbiBHb25nIHdyb3RlOgo+ID4gPiA+ID4gQmVjYXVzZSB0aGUgbnVtYmVyIG9mIGVjc3BpMSBy
eCBldmVudCBvbiBpLm14OG1tIGlzIDAsIHRoZQo+ID4gPiA+ID4gY29uZGl0aW9uIGNoZWNrIGln
bm9yZSBzdWNoIHNwZWNpYWwgY2FzZSB3aXRob3V0IGRtYSBjaGFubmVsCj4gPiA+ID4gPiBlbmFi
bGVkLCB3aGljaCBjYXVzZWQKPiA+ID4gPiA+IGVjc3BpMSByeCB3b3JrcyBmYWlsZWQuIEFjdHVh
bGx5LCBubyBuZWVkIHRvIGNoZWNrIGV2ZW50X2lkMCwKPiA+ID4gPiA+IGNoZWNraW5nCj4gPiA+
ID4gPiBldmVudF9pZDEgaXMgZW5vdWdoIGZvciBERVZfMl9ERVYgY2FzZSBiZWNhdXNlIGl0J3Mg
c28gbHVja3kgdGhhdAo+ID4gPiA+ID4gZXZlbnRfaWQxIG5ldmVyIGJlIDAuCj4gPiA+ID4KPiA+
ID4gPiBXZWxsIGlzIHRoYXQgYnkgY2hhbmNlIG9yIGRlc2lnbiB0aGF0IGV2ZW50X2lkMSB3aWxs
IGJlIG5ldmVyIDA/Cj4gPiA+ID4KPiA+ID4gVGhhdCdzIGJ5IGNoYW5jZS4gREVWXzJfREVWIGlz
IGp1c3QgZm9yIEF1ZGlvIGNhc2UgYW5kIG5vbi16ZXJvIGZvcgo+ID4gZXZlbnRfaWQxIG9uIGN1
cnJlbnQgaS5NWCBmYW1pbHkuCj4gPiAKPiA+IFRoZW4gaXQgd29udCBiZSBmZ29vZCB0byByZWx5
IG9uIGNoYW5jZSA6KQo+IFllcywgSSBrbmV3IHRoYXQuIE1heSBJIGNyZWF0ZSBhbm90aGVyIGlu
ZGVwZW5kZW50IHBhdGNoIGZvciBldmVudF9pZDEgc2luY2UgdGhhdCdzIHBvdGVudGlhbCBpc3N1
ZSBpcyBub3QgcmVsYXRlZCB3aXRoIHRoaXMgZWNzcGkgcGF0Y2ggc2V0PwoKU3VyZSBhIHBhdGNo
IHNob3VsZCBjaGFuZ2Ugb25lIHRoaW5nIGJ1dCBJIHRoaW5rIGl0IHNob3VsZCBjb21lIGJlZm9y
ZQp0aGlzIG9uZS4gVGhlIGxvZyBmb3IgdGhpcyBzaG91bGQgYmUgZml4ZWQgdXAgYXMgd2VsbAoK
LS0gCn5WaW5vZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
