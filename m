Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A88C1C6BB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEnyi0BFP/vdku4NNTJ4Mf24noIsm6BYZfC2qsd1/nw=; b=XzER8fWhkMTBMA
	Xg+mxph/pbJFgyxGG0NF3U97tnvmMH8COgBu7UDqqfOHGEm5/RTHdTvDAqiPLB9dL7vWObWQFdUCU
	cZMrT/SOWlXln0SsNRnnC0keILmNrL0Szq7EEGowlz0R9+ts898tXWUD417Ahl9b5mM8D6Nak9Coh
	eKXQVuUhOlTRH3JSQgjOjbBv6COXnGK1WM5Y0qjVipUfdqvrUT/ucbs2CbJnJtjAPAfo8MYoG9Kcp
	hrrZGlkwVCZcE+l4TljEUcXVaih/vEGmClEHv3RYjc7dpTLVUAOwQtnWaXYxPPd3XOXpofXJ4yKKg
	ZTNyOa5hKbBrdXjIvH6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFQW-0001Ff-07; Wed, 06 May 2020 08:29:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFQ9-00015n-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:28:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id EA9C32A215D
Date: Wed, 6 May 2020 10:28:43 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200506082843.mkhip2n2uiimcf2z@rcn-XPS-13-9360>
Mail-Followup-To: Tomi Valkeinen <tomi.valkeinen@ti.com>,
 devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506072155.6dmj35zdnr3to5ib@rcn-XPS-13-9360>
 <1cee742a-c16a-fb32-5caa-c6ac71689ab9@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1cee742a-c16a-fb32-5caa-c6ac71689ab9@ti.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_012849_626461_38F4659D 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVG9taSwKCk9uIG1pw6kgMDYtMDUtMjAyMCAxMTowMTowNywgVG9taSBWYWxrZWluZW4gd3Jv
dGU6IAo+IERvZXNuJ3QgYWxsIHRoaXMganVzdCBwb2ludCB0byBhIGJ1ZyBvciBtaXNzaW5nIGZl
YXR1cmUgaW4gZHRfYmluZGluZ19jaGVjaz8KPiBUaGF0J3Mgbm90IGEgcmVhc29uIHRvIGNoYW5n
ZSB0aGUgQUJJLgoKSSBhZ3JlZSBhbmQgSSdkIHZvdGUgZm9yICJtaXNzaW5nIGZlYXR1cmUiLCBi
dXQgc2VlaW5nIHRoYXQgdGhlcmUgYXJlbid0CmFueSBvdGhlciBleGFtcGxlcyBvZiB0aGlzIHVz
ZSBjYXNlIGluIHRoZSB3aG9sZSBrZXJuZWwgZHRzIGNvbGxlY3Rpb24KKGF0IGxlYXN0IEkgY291
bGRuJ3QgZmluZCBhbnkpIEkgdGhvdWdodCB0aGF0IG1heWJlIGl0J3MgdXMgd2hvIGFyZQpnb2lu
ZyBhZ2FpbnN0IHRoZSBub3JtIGhlcmUuCgpNYXliZSBSb2IgY2FuIHNoZWQgc29tZSBsaWdodCBh
Ym91dCB0aGlzPwoKQ2hlZXJzLApSaWNhcmRvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
