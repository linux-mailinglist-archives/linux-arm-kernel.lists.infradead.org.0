Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B908F7302F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOSpj3nQD6szGWDpYDNaL49Jdh/LRLqn0Z30kjLqo9Q=; b=XmS3qvYiicCTGg
	1+SlyoTWErnjebEU0b8ct+eyOUAd89OoR4HZWBhGAzKPcT7CHXcXXhRFzYqPfaBhhq1m6JW8kGOxL
	97hhXDgQv8EQc8Lex9ceBLVFtxXdlCe47wxm0oRAuzXHdeEXB0TEDFE0QQzLu33rCT2f4UpeIjMhl
	DzFnTpVHpqhMDQFveX2oik2O8FrPnnuKUmWZFX3sbljtwkSLRG9rR0fO4Hx9PRdbBw/bfjtvB/Nph
	FKjZq2PGV5jKTkB5qhPjSqh4sJ7FOsIWcAK0hg+Vx4gs0tnN2aiHdsN+vlVkUXeE5BolAoUhpLwMQ
	IRZ0p1bP362As7925Kfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHcR-0006sC-6I; Wed, 24 Jul 2019 13:47:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHcH-0006rK-NV
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:47:38 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55B8E214C6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563976057;
 bh=tSZqyd/3UKG9x8EIlcarZf4zf4HWCH7HlHiD/EC9nXQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mu/gavjtChRtZ7XCGlmqLxjp58HY2x0F6BH9fayVlXqp8KbUPQ/09QRhLy7vl/7NW
 8GgzKqQQsUxkWzB6909TRnVmDob12rdcNPxBzMOOC6A6LAxwWTf5ETLi3Ir8wAuFuT
 t/XflKThN3Jz807fXbVLGx8Y7ZaQqZhvPxiJc0Q4=
Received: by mail-qt1-f178.google.com with SMTP id h21so45456345qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 06:47:37 -0700 (PDT)
X-Gm-Message-State: APjAAAXWohZTeKfxjf6z5oBVsvB2ut7K13dUVZQBgZIrsTFxD81ZZy6y
 p4/1NjPLf5Gwhen7KsQn459WEHjLzKqI++rUUw==
X-Google-Smtp-Source: APXvYqwJMiXcCBvfaImQYBS4b/Leeh7lF/cCqXtyPUgsaqog6UFyMDuLHIvhOJLs2oQA4er68tf0IPvdJ+PtGpqy0HA=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr12412078qtb.224.1563976056600; 
 Wed, 24 Jul 2019 06:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
 <20190724120623.2385-2-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190724120623.2385-2-sebastien.szymanski@armadeus.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 24 Jul 2019 07:47:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK84CrUseGbnNRhnsOdOyvDuO0o_ycuVfnwd=vQELk_Eg@mail.gmail.com>
Message-ID: <CAL_JsqK84CrUseGbnNRhnsOdOyvDuO0o_ycuVfnwd=vQELk_Eg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: Document Armadeus SoM and Dev
 boards devicetree binding
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_064737_779398_73484F93 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgNjo0NCBBTSBTw6liYXN0aWVuIFN6eW1hbnNraQo8c2Vi
YXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+IHdyb3RlOgo+Cj4gRG9jdW1lbnQgdGhlIGZv
bGxvd2luZyBBcm1hZGV1cyBTb00gYW5kIERldiBib2FyZHMgZGV2aWNldHJlZSBiaW5kaW5nCj4g
YWxyZWFkeSBzdXBwb3J0ZWQ6Cj4gLSBhcm1hZGV1cyxpbXgyNy1hcGYyNyBhbmQgYXJtYWRldXMs
aW14MjctYXBmMjdkZXYKPiAtIGFybWFkZXVzLGlteDI4LWFwZjI4IGFuZCBhcm1hZGV1cyxpbXgy
OC1hcGYyOGRldgo+IC0gYXJtYWRldXMsaW14NTEtYXBmNTEgYW5kIGFybWFkZXVzLGlteDUxLWFw
ZjUxZGV2Cj4gLSBhcm1hZGV1cyxpbXg2e3EsZGx9LWFwZjYgYW5kIGFybWFkZXVzLGlteHtxLGRs
fS1hcGY2ZGV2Cj4gLSBhcm1hZGV1cyxpbXg2e3VsLHVsbH0tb3BvczZ1bCBhbmQgYXJtYWRldXMs
aW14e3VsLHVsbH0tb3BvczZ1bGRldgo+Cj4gU2lnbmVkLW9mZi1ieTogU8OpYmFzdGllbiBTenlt
YW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgo+IC0tLQo+Cj4gQ2hhbmdl
cyBmb3IgdjI6Cj4gLSBuZXcgcGF0Y2gKPgo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL2ZzbC55YW1sIHwgMTUgKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpSZXZpZXdlZC1ieTogUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
