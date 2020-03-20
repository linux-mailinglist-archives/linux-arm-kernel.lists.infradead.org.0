Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B633918C8A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 09:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpv1Sc19KvBQXR5AvjxbbsZnCy+SybLJJPgeKYvIXsA=; b=XJUzvCkYngcbkA
	jhjVkcSiRwqNJpunlPI8MTW9H+hhGsHhiq524MfPXdeb5hXcXO/9PRCU7Zc/d3AWk57t+8AQ+HqQm
	yJobJPHl32E8vM3RYqsAiCC5KX/O119QcJvOzLimstDnMzjiogEfRV1DRLW+RicUn3DyNafUqSwKU
	CZjH5RbtWkSqGUWIdxbWo49UENfSChhooH1XVsDLy8/jpccINrMZB03JqBPcCNf9RNjonpCmlHI8W
	1pVoI2xQgtDJm1WtfPrAz4xVMXn+WhLlbZJtCKTnZS2DGXx45Q+/hFJLb39NePuM9r5FDi2AxDB91
	MeIPhpxMbsFlZLtiilow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFCh9-0001NK-EZ; Fri, 20 Mar 2020 08:07:55 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFCh0-0001LK-Ou
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 08:07:48 +0000
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id c47444be
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 20 Mar 2020 01:07:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 4DFA54CC97;
 Fri, 20 Mar 2020 08:07:37 +0000 (UTC)
Date: Fri, 20 Mar 2020 15:58:09 +0800
In-Reply-To: <CACRpkdaVrfd1p+WyACy-gq-3BPsXJ_CZwi2OZe+=csseBcvcaA@mail.gmail.com>
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-3-icenowy@aosc.io>
 <CACRpkdaVrfd1p+WyACy-gq-3BPsXJ_CZwi2OZe+=csseBcvcaA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/5] dt-bindings: panel: add binding for Xingbangda
 XBD599 panel
To: linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <491ADD02-5511-404B-88A8-5725EF061EAC@aosc.io>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1584691659;
 h=from:subject:date:message-id:to:cc:mime-version:content-type:content-transfer-encoding:in-reply-to:references;
 bh=stsS4dj9oBV/7b45QdrFyqP0smVpfXDmrt3Ueus/OeQ=;
 b=GtADa9cpqzkGuQKMBAZQjihl/+F10s/Hpdjay+d0XsQ1X1T0QH1GPjjqXzeH7LKeP1+eaE
 PFopxiao42wyUcVgcZaQTj5Za9JwlH36zazAmYYv3wkGqvuSHY1oT67WPNFq1YHUyqENjh
 8P3ylWO5/C4wiSlzq9FMcI7DoyWHAKM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_010746_849573_DF434D3B 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAyMOW5tDPmnIgxOeaXpSBHTVQrMDg6MDAg5LiL5Y2IMTA6MTQ6MjcsIExpbnVzIFdh
bGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4g5YaZ5YiwOgo+SGkgSWNlbm93eSwKPgo+
T24gTW9uLCBNYXIgMTYsIDIwMjAgYXQgMjozNyBQTSBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFv
c2MuaW8+IHdyb3RlOgo+Cj4+IFhpbmdiYW5nZGEgWEJENTk5IGlzIGEgNS45OSIgNzIweDE0NDAg
TUlQSS1EU0kgTENEIHBhbmVsLgo+Pgo+PiBBZGQgaXRzIGRldmljZSB0cmVlIGJpbmRpbmcuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEljZW5vd3kgWmhlbmcgPGljZW5vd3lAYW9zYy5pbz4KPiguLi4p
Cj4KPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgY29uc3Q6IHhpbmdi
YW5nZGEseGJkNTk5Cj4KPkFzIG5vdGljZWQgaW4gdGhlIHJldmlldyBvZiB0aGUgZHJpdmVyLCB0
aGlzIGRpc3BsYXkgaXMgdmVyeSBjbG9zZSB0bwo+aGltYXgsaHg4MzYzLgo+Cj5JIHRoaW5rIHRo
ZSBiZXN0IGlzIHRvIGRldGVybWluIHdoYXQgYWN0dWFsIGRpc3BsYXkgY29udHJvbGxlciBpdCBp
cywKPkkgdGhpbmsgaXQgaXMgc29tZSBraW5kIG9mIElsaXRlayBjb250cm9sbGVyIHNpbmNlIEls
aXRlayBpbGk5MzQyIGlzCj5jbGVhcmx5IHZlcnkgc2ltaWxhci4KCkl0J3MgU2l0cm9uaXggU1Q3
NzAzLCBzYW1lIGFzIHRoZSBMaWJyZW0gNSBwYW5lbC4KCj4KPlRoZSBiZXN0IHdvdWxkIGJlIHNv
bWV0aGluZyBsaWtlIG5hbWUgdGhlIGJpbmRpbmdzCj5pbGl0ZWstaWxpOTM0Mi55YW1sIGFuZCB0
aGVuOgo+Cj5wcm9wZXJ0aWVzOgo+ICBjb21wYXRpYmxlOgo+ICAgIGl0ZW1zOgo+ICAgICAgLSBj
b25zdDogeGluZ2JhbmdkYSx4YmQ1OTkKPiAgICAgIC0gY29uc3Q6IGlsaXRlayxpbGk5MzQyCj4K
PlBvc3NpYmx5IHVzZSBvbmVPZiBhbmQgYWRkIHN1cHBvcnQgZm9yIHRoZSBoaW1heCxoeDgzNjMK
PmFscmVhZHkgd2hpbGUgeW91J3JlIGF0IGl0Lgo+Cj5Zb3VycywKPkxpbnVzIFdhbGxlaWoKPgo+
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0Cj5saW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAoKLS0gCuS9v+eUqCBLLTkgTWFpbCDlj5HpgIHoh6rmiJHnmoRBbmRyb2lk6K6+5aSH
44CCCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
