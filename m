Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF18814E9A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUFKReyg8suxozCLAAEvwaybuDJ4WeI5NUKalFgGLhQ=; b=WUy1yey3CPOWuD
	jcGvMlnyI9KQM05FtEwPz9idPOHXMvrT3iSmLaVHkJAcCmRTb8kCZLpMFvObLZlE2Lz6vR3WL9V2L
	VIJT8wEO7msksivmyDmp/CM1wh22d32X/QI76Ttw811V7tXiU4KBkxmET/T8DkMDavbIJm0C3XK9o
	vNtKSSIw8WPPDDQJxRoO4NKkNuM/i/PGDTwJ8apXdvdSA5bP2jRC1JqWpAptW9vgY+2VgON80xJbS
	zGdhr3fmjEjHlszMWncslA8Zsysn2G5anP4h/OYvedS49EFupdQ/wR/RY+/Al/nko8GRxdVJJyfmZ
	qoqi12Gn0ufj1ram0iSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRtS-0007c7-NJ; Fri, 31 Jan 2020 08:43:14 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsB-0006dW-ER
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:41:57 +0000
Received: by mail-wm1-f66.google.com with SMTP id t23so6955104wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C68wfOK/1whk3hXx2aI+LZu/B14qolQqF5YsPbhywYw=;
 b=iGDDlWKZ14/+TfN0k8DxYXfmEXbGq1YHLaxlXcRUUnCXxDOPEDBpC802twyVUTo0al
 Be3eUo8Knt+HE762IlwZVLxylom1kvNNZYbRb1HC3RCnxOphPCY0zcQgIjXsU1nYSmPS
 9iPnwVn5EfXCRZiP7m0o5z4ervmt574dJyXBVlDlOSo/yAnqINSW3QuPkmYMg9jkq835
 LA9c6u1EjUSErln+Pq351bydyqdXJ5mxMOKeltbbbcm5yNvV5o288XLUtAXM1NhxoA0d
 cCT0wNZJ5L0KO55PjeD0iZmlutH4sTx5iJN6D6M9DSGTKXgRW5p2JBN46xqTy6s2m4Wy
 eSLQ==
X-Gm-Message-State: APjAAAVY4aPghCYsI1XqnTRx6luBmLph0sOxjDPkLwLD8iWjD9cSuMaU
 5LcU+mTzsnEuMw1nVCAWZ/w=
X-Google-Smtp-Source: APXvYqwZ5N3sHxvAExBZXSD9o505UDKVeLrvfAAmDTlTytHy1nqyoBwtcmRSKUnDauBtIb7j0fk1aA==
X-Received: by 2002:a7b:c450:: with SMTP id l16mr11167735wmi.31.1580460114264; 
 Fri, 31 Jan 2020 00:41:54 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:53 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 05/12] ARM: dts: imx7d: cl-som-imx7: update pfuze3000 max
 voltage
Date: Fri, 31 Jan 2020 08:36:31 +0000
Message-Id: <20200131083638.6118-5-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004155_479064_B394CAB2 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIG1heCB2b2x0YWdlIG9mIFNXMUEgaXMgMy4zViBvbiBQRjMwMDAgYXMgcGVyCmh0dHA6Ly9j
YWNoZS5mcmVlc2NhbGUuY29tL2ZpbGVzL2FuYWxvZy9kb2MvZGF0YV9zaGVldC9QRjMwMDAucGRm
P2ZzcmNoPTEmc3I9MSZwYWdlTnVtPTEKCldoaWxlIGF0IGl0LCByZW1vdmUgdGhlIHVubmVjZXNz
YXJ5IGxlYWRpbmcgemVybyBmcm9tCnRoZSBpMmMgYWRkcmVzcy4KClNpZ25lZC1vZmYtYnk6IEFu
ZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4KQ2M6IElseWEgTGVkdmljaCA8aWx5YUBjb21w
dWxhYi5jby5pbD4KQ2M6IElnb3IgR3JpbmJlcmcgPGdyaW5iZXJnQGNvbXB1bGFiLmNvLmlsPgpD
YzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IE1hcmsgUnV0bGFuZCA8bWFy
ay5ydXRsYW5kQGFybS5jb20+CkNjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+CkNj
OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+CkNjOiBQZW5ndXRyb25peCBL
ZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgpDYzogRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZ21haWwuY29tPgpDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgpD
YzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0
cyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMg
Yi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKaW5kZXggNDgxYmQzOTcx
YzU1Li43ODA0NjYzM2Q5MWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNs
LXNvbS1pbXg3LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5k
dHMKQEAgLTgxLDEyICs4MSwxMiBAQAogCiAJcG1pYzogcG1pY0A4IHsKIAkJY29tcGF0aWJsZSA9
ICJmc2wscGZ1emUzMDAwIjsKLQkJcmVnID0gPDB4MDg+OworCQlyZWcgPSA8MHg4PjsKIAogCQly
ZWd1bGF0b3JzIHsKIAkJCXN3MWFfcmVnOiBzdzFhIHsKIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jv
dm9sdCA9IDw3MDAwMDA+OwotCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0NzUwMDA+
OworCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+OwogCQkJCXJlZ3VsYXRv
ci1ib290LW9uOwogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJCQkJcmVndWxhdG9yLXJhbXAt
ZGVsYXkgPSA8NjI1MD47Ci0tIAoyLjIzLjAucmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
