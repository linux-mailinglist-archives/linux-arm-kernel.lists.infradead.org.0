Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D1934D4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EN/JVbWWcShzOcGyGI0rnSfJxIxCn49FmZuuklWxC/A=; b=sNGUSSln598KDK
	iTUPnuLFEbv31x/jX3XopZwW/GREJxEHhwHxn4VeAEz+HPncCcw05O9kpGbNlJmcW8nGO///BV2bE
	EbskQJSu/0jpNN6a271sqnoIPCEwKG/P6g4SkUFbp7wjFtk5DR66MlkA9cex8pIx7D8wX1tfFejvK
	ZGLbxBr6m6CNfX9AjjIdgvWRLtIVIr5hsoFKNr92sQrL2hq5ur2VfS9mzW40nJG0N6Wy9IBZaxvV1
	n29dKnVYljVGSYOqU3OGwtDgvXdwP/2p84pYsp2BzBBXynGGb/plzzUrs7Ex7fABfm15RXZ4YepWa
	PTZzTC7O24k49ufnqg+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCKX-0006TQ-Dk; Tue, 04 Jun 2019 16:30:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCK7-0005w2-L8
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id f10so742764wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=54TIXqXvsDNltB2y1UR+6mRVKP/XVI4s+wemNTylSEI=;
 b=eAeCHlIeQmyEBytc8R7znUKKSXeP6uAgH6bsKtTUo6/LR/LaWzFOo4o+kjmL2TTsXF
 WRIL7PlmUuz7oi+O48P8do6MJFKG2YSiWOhQwL8XDZIWYw1r5KK0jFOgJBzPSyBaSGCY
 KplZ5nTEUEj2PiuFR0LqmnSb0dlGOsCbj1NPi6M2eHfALDABG1RX8VfpA3QGV/mBu8MX
 5+57ngT6OULxfwDsJMHN42siVFlvyOyck7HvANM/0W2SaRylp3lTwLIyuooEFHkI+l8D
 HZ4duZAvjpjhT5gDtrj8K8i5FMUXeIF44tLP2SaLsX3EWxTXMJqlj4Ztw/fqzWsBVFEl
 CYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=54TIXqXvsDNltB2y1UR+6mRVKP/XVI4s+wemNTylSEI=;
 b=NTVVSHpTDh8Dd7BU2mUgutfKnUsPw+qNxnvAqvb3epwYdtZJCo7v13NqGGXSoajBrm
 dDizOYswmHsKtvGKkiHz7uludAIXxOQqaoxeYfm8DSKHQDS2ajgcAJtC4RpuC3ejRxE3
 2eTbxQg9Um0SV9aQbNmTEstyWPoQnwg5n4Yi9E0kuj/v4wBrM3FwrV6rp7gC0wfBASni
 6GSAfXXFmIzsgDrCq36mTnUYuxdwdB2FxPTNSZQLc2GuCbLBUN+hXkh9DHMvOJe3O/AV
 rXg05BWExHTzEMs9kWAPeE1u8vUGATA/hxE7KHcVbOqiNi4VcB0h0FqPaWe7WYClvVW0
 vSQA==
X-Gm-Message-State: APjAAAWiEa7vv5gA0JWytE5+oRYqsUholK1pLk/CxF6jfEpJ4lmPcZRW
 eAkujGhvwmIZlViZ6xf3KsLTiOfqNuHbKA==
X-Google-Smtp-Source: APXvYqwiwhiDPZmf0yBeaqw/xNa68/cr0Q9ihEI2dgTEsPXakPgC/zw8DdYNnQIwnbK1H7dNDgAE9g==
X-Received: by 2002:a05:600c:218d:: with SMTP id
 e13mr18972396wme.101.1559665805401; 
 Tue, 04 Jun 2019 09:30:05 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:04 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 00/13] Allwinner A64/H6 IR support
Date: Tue,  4 Jun 2019 18:29:46 +0200
Message-Id: <20190604162959.29199-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093007_726363_745971FB 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBNjQgSVIgc3VwcG9ydCBzZXJpZXNbMV0gcG9pbnRlZCBvdXQgdGhhdCBhbiBBMzEgYmlu
ZGluZ3Mgc2hvdWxkIGJlCmludHJvZHVjZWQuCgpUaGlzIHNlcmllcyBpbnRyb2R1Y2UgdGhlIEEz
MSBjb21wYXRpYmxlIGJpbmRpbmdzLCB0aGVuIHN3aXRjaCBpdCBvbgp0aGUgYWxyZWFkeSBleGlz
dGluZyBib2FyZC4KCkZpbmFsbHkgaW50cm9kdWNlIEE2NCBhbmQgSDYgc3VwcG9ydC4KCkkgaGF2
ZSByZWVuYWJsZSB0aGUgb3RoZXIgSDYgYm9hcmRzIElSIHN1cHBvcnQgYXMgT25kcmVqIHNvbHZl
IHRoZSBpc3N1ZS4KClJlZ2FyZHMsCkNsw6ltZW50CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvcGF0Y2h3b3JrL3BhdGNoLzEwMzEzOTAvIzEyMjE0NjQKWzJdIGh0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzUvMjcvMzIxClszXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNo
LzEwOTc1NTYzLwoKQ2hhbmdlcyBzaW5jZSB2MzoKIC0gUmVlbmFibGUgSVIgZm9yIG90aGVyIEg2
IGJvYXJkcwogLSBBZGQgUlhTVEEgYml0cyBkZWZpbml0aW9uCiAtIEFkZCBTZWFuIFlvdW5nJ3Mg
IkFja2VkLWJ5IiB0YWdzCgpDaGFuZ2VzIHNpbmNlIHYyOgogLSBEaXNhYmxlIElSIGZvciBvdGhl
ciBINiBib2FyZHMKIC0gU3BsaXQgRFRTIHBhdGNoIGZvciBIMy9INQogLSBJbnRyb2R1Y2UgSVIg
cXVpcmtzCgpDaGFuZ2VzIHNpbmNlIHYxOgogLSBEb2N1bWVudCByZXNldCBsaW5lcyBhcyByZXF1
aXJlZCBzaW5jZSBBMzEKIC0gRXhwbGFpbiB0aGUgbWVtb3J5IG1hcHBpbmcgZGlmZmVyZW5jZSBp
biBjb21taXQgbG9nCiAtIEZpeCBtaXNzcGVsbGluZyAiQWxsd2luZXIiIHRvICJBbGx3aW5uZXIi
CkNsw6ltZW50IFDDqXJvbiAoMTEpOgogIGR0LWJpbmRpbmdzOiBtZWRpYTogc3VueGktaXI6IEFk
ZCBBMzEgY29tcGF0aWJsZQogIG1lZGlhOiByYzogSW50cm9kdWNlIHN1bnhpX2lyX3F1aXJrcwog
IG1lZGlhOiByYzogc3VueGk6IEFkZCBBMzEgY29tcGF0aWJsZQogIG1lZGlhOiByYzogc3VueGk6
IEFkZCBSWFNUQSBiaXRzIGRlZmluaXRpb24KICBBUk06IGR0czogc3VueGk6IFByZWZlciBBMzEg
YmluZGluZ3MgZm9yIElSCiAgQVJNOiBkdHM6IHN1bnhpOiBQcmVmZXIgQTMxIGJpbmRpbmdzIGZv
ciBJUgogIGR0LWJpbmRpbmdzOiBtZWRpYTogc3VueGktaXI6IEFkZCBBNjQgY29tcGF0aWJsZQog
IGR0LWJpbmRpbmdzOiBtZWRpYTogc3VueGktaXI6IEFkZCBINiBjb21wYXRpYmxlCiAgYXJtNjQ6
IGR0czogYWxsd2lubmVyOiBoNjogQWRkIElSIHJlY2VpdmVyIG5vZGUKICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IGg2OiBFbmFibGUgSVIgb24gSDYgYm9hcmRzCiAgYXJtNjQ6IGRlZmNvbmZpZzog
RW5hYmxlIElSIFNVTlhJIG9wdGlvbgoKSWdvcnMgTWFrZWpldnMgKDEpOgogIGFybTY0OiBkdHM6
IGFsbHdpbm5lcjogYTY0OiBBZGQgSVIgbm9kZQoKSmVybmVqIFNrcmFiZWMgKDEpOgogIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFibGUgSVIgb24gT3JhbmdlIFBpIFdpbgoKIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCAgICB8IDExICsrLQogYXJjaC9h
cm0vYm9vdC9kdHMvc3VuNmktYTMxLmR0c2kgICAgICAgICAgICAgIHwgIDIgKy0KIGFyY2gvYXJt
L2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaSAgICAgICAgICAgICB8ICAyICstCiBhcmNoL2FybS9i
b290L2R0cy9zdW45aS1hODAuZHRzaSAgICAgICAgICAgICAgfCAgMiArLQogYXJjaC9hcm0vYm9v
dC9kdHMvc3VueGktaDMtaDUuZHRzaSAgICAgICAgICAgIHwgIDIgKy0KIC4uLi9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cyB8ICA0ICsKIGFyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDE4ICsrKysKIC4uLi9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgICB8ICA0ICsKIC4uLi9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA0ICsKIC4uLi9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LXBpbmUtaDY0LmR0cyB8ICA0ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi5kdHNpICB8IDE5ICsrKysKIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25m
aWcgICAgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMg
ICAgICAgICAgICAgICAgICB8IDg4ICsrKysrKysrKysrKysrLS0tLS0KIDEzIGZpbGVzIGNoYW5n
ZWQsIDEzNSBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
