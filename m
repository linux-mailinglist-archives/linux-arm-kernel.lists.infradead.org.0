Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F951C6B91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAHNu1WPfBWQjpBtqVqQC5y4f7iltSoiU3CA+cg5QR4=; b=pLKUGtlMmrJVbM
	Ug9tNPfQsZsThwiPvVNHdDcx2gxllk10vJFXxS2J/Wd1BhAvHENi1da1NbRLFaQNitR7Yh1+n/hdA
	y5OBah0UrJHj2XrmJxLQdHwW/OCLaQzdwJddJdtbtvBxnVjo0sIPyq4PyZpfmEGpDj+j2KCT/cgpU
	o/FEfJcf//hMFalJzwCusAjeraha5sKB9uUEtvacQ1G9d/inK9oIlxXy+PnJYKHlUcP28paYOyo7v
	Ygi8rFKC4gYRhy2C60AXoRufV5BKdSVAe0zMf/4o+eUwfrJ4l9OBU5WBiyEKqQz41UVsski2H5dpl
	IjthPMTDXMlrp/ZU256w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFLT-0005dS-2W; Wed, 06 May 2020 08:23:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFLB-0005bG-Fr
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:23:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id DF42B2A1135
Date: Wed, 6 May 2020 10:23:32 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200506082332.57ptj42mkrrn4ceo@rcn-XPS-13-9360>
Mail-Followup-To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Wei Xu <xuwei5@hisilicon.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
 <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_012341_666126_EE90711D 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpUaGFua3MgZm9yIHJldmlld2luZyB0aGUgcGF0Y2hlcy4gU29tZSBjb21tZW50
cyBiZWxvdywKCk9uIG1pw6kgMDYtMDUtMjAyMCAwOTo0NDoxOSwgR2VlcnQgVXl0dGVyaG9ldmVu
IHdyb3RlOiAKPiBDYW4ndCB5b3UgYXZvaWQgdGhlIG5lZWQgZm9yIHBhdGNoZXMKPiBbUkZUIFBB
VENIIDEvNV0gYXJtNjQ6IGR0czogZHJhYWs6IFJlb3JkZXIgaGRtaS1lbmNvZGVyQDM5IHJlZyBh
bmQKPiByZWctbmFtZXMgcHJvcGVydGllcwo+IFtSRlQgUEFUQ0ggMi81XSBBUk06IGR0czogd2hl
YXQ6IHJlb3JkZXIgcmVnIGFuZCByZWctbmFtZXMgcHJvcGVydGllcwo+IGluIGhkbWkgYnJpZGdl
cwo+IAo+IGJ5IHVzaW5nCj4gCj4gICAgIGl0ZW1zOgo+ICAgICAgIGVudW06Cj4gICAgICAgICAt
IG1haW4KPiAgICAgICAgIC0gZWRpZAo+ICAgICAgICAgLSBjZWMKPiAgICAgICAgIC0gcGFja2V0
Cj4gCj4gaW5zdGVhZD8KCk5vdCByZWFsbHksIGJlY2F1c2UgdGhhdCBkZWZpbmVzIGEgc2NhbGFy
IHByb3BlcnR5IHRoYXQgY2FuIHRha2UgYW55IG9mCnRob3NlIHZhbHVlcyAoaWYgSSdtIG5vdCBt
aXN0YWtlbiksIGFuZCB0aGUgY29yZSBzY2hlbWEgZW5mb3JjZXMgdGhhdApyZWctbmFtZXMgbXVz
dCBiZSBhbiBhcnJheS4KCkkgdGhpbmsgdGhlIGNsb3Nlc3QgSSBjYW4gZ2V0IHRvIHdoYXQgeW91
IG1lYW4gd291bGQgYmUgc29tZXRoaW5nIGxpa2UKdGhpczoKCiAgICBpdGVtczoKICAgICAgLSBl
bnVtOgogICAgICAgIC0gbWFpbgogICAgICAgIC0gZWRpZAogICAgICAgIC0gY2VjCiAgICAgICAg
LSBwYWNrZXQKICAgICAgLSBlbnVtOgogICAgICAgIC0gbWFpbgogICAgICAgIC0gZWRpZAogICAg
ICAgIC0gY2VjCiAgICAgICAgLSBwYWNrZXQKICAgICAgLSBlbnVtOgogICAgICAgIC0gbWFpbgog
ICAgICAgIC0gZWRpZAogICAgICAgIC0gY2VjCiAgICAgICAgLSBwYWNrZXQKICAgICAgLSBlbnVt
OgogICAgICAgIC0gbWFpbgogICAgICAgIC0gZWRpZAogICAgICAgIC0gY2VjCiAgICAgICAgLSBw
YWNrZXQKCkJ1dCB0aGVuIHRoYXQgd291bGRuJ3QgcHJldmVudCBhbnlvbmUgZnJvbSBkZWZpbmlu
ZyBkdXBsaWNhdGUgcmVnLW5hbWVzCihlZy4gIm1haW4iLCAiY2VjIiwgZWRpZCIsICJjZWMiKSwg
d2hpY2ggaXMgZXZlbiB3b3JzZSBJTU8uCgpDaGVlcnMsClJpY2FyZG8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
