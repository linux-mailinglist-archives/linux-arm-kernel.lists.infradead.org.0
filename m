Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ABE1F5A03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a81k+3BpgkZ29cbZF+tNhegASScWTlbctD+l3L8X2Jg=; b=ejReiGsMwDfWTg
	h7bj7pyYqIbzwMLXlRnEYVV104kZOBCz+pwmine4P/HHq1eQ6zTlzXDNlJ8lxHSppmyFAvoBiTdWq
	mfoP+AgXZBgf42K4sR5XxknBqGCh27gKBw4Cig6Ze0/iHrLSTrPVtxiD717rldUjKg0RdAZ+UA9ZX
	6Xfw10/gV1Axn8EAhrsDYu8EMswghXGBFItQTD/teQ9WtRnvZaf6TGZbphSKSBDqDWroVKpvffrOz
	m/gbi3tET1Hd00xG4J/K9PxttMaDFShIhst9Z48FApyhtg/+f0c83W280h3a3QH4iWr5KGJvhnPiF
	D65Q1Ba5lYVSdpJ6IqsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4MQ-0006md-2Q; Wed, 10 Jun 2020 17:17:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4L7-0005ip-BQ
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so3190317wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pZ9UANk+nZchs0IApRkeYxkybXjNTy9EcUcgSkrSGAo=;
 b=brLP8TzS+YCKpHhK48N7K/eL5bF4ui8zGe71EVKaIaSNEsE/Z4yq2ClHnMZjrKt6Ig
 ubArUhO8v4mBnH6AHI0pDofcn6n++r68GaxE/GxJSje3EvcRki3dKyqtiZtv371ZOPcc
 bgCkqKTxJsz/nCwXmU8OPI5GBeG4gtVW5Dahq1NRd8Ix6avCIi69wdRFz8rqzHZeqdJP
 3JXFGzbJXz6qB6SxyZAjQNEXRGeT1szSBrqWQR24RqUohag9Q5Nq7FFytFerAGQCJwRU
 mPlph2plh8vD2IWtgoGpw4gxRhsw8fLlfbrSma5wyiAQyztwo4Y+ruAmJSIBkPiesWcN
 Em0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pZ9UANk+nZchs0IApRkeYxkybXjNTy9EcUcgSkrSGAo=;
 b=jPlypddFccGHcUs0XXjdwNlgv+E9x+u1NfGGqB8GErnKspJoIbdsreKvFsf0P3hzF7
 XHqwtFc+WTVg7HdapqD//h4XUQdPCByDzrvxxsVX4Xh/+ERHVPEfs8oefYQ5qGz7BDyo
 XPNUffCoznhpiX2cBu98R4BtApyFagF4NXJHBF8pdEPBTzu0wSwU+3aYRLEHEmntXwja
 aHDrEBcT3tq0OdOs79+gr3X/TgTq3iNRbgLxHKrQY1JVm+QVKvqEYXp1l1UPjGXYl4dm
 NJgP0FXuRfArOnMX64oNGaACFHanuFwnPBjpmGraG3OsFhnfPxkxAGdNw11JBFS2YAUE
 C2sA==
X-Gm-Message-State: AOAM530lEdfa/VXLgIe2ZhZbL6Xf5j+6RndPe/fiIo7ZKEYPGC77QYH1
 XU+ivOP3MpBFv5IMHF9qEbc=
X-Google-Smtp-Source: ABdhPJx7TXMDE0x4q1tNS/lbVYNvY27QjJQI3cLcIsrX0fz+OC1zXQXw0Ho15UIXRiEctaOOIgW4gg==
X-Received: by 2002:adf:ec03:: with SMTP id x3mr4849006wrn.297.1591809396050; 
 Wed, 10 Jun 2020 10:16:36 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:35 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/9] mips: bmips: dts: add BCM6362 power domain definitions
Date: Wed, 10 Jun 2020 19:16:24 +0200
Message-Id: <20200610171630.465579-4-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101637_397961_FF4A6487 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
djM6IFNlcGFyYXRlIGR0LWJpbmRpbmdzIGRlZmluaXRpb25zIGZyb20gcG93ZXIgZG9tYWluIC5k
dHNpIHN1cHBvcnQuCgogaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjM2Mi1wbS5oIHwgMjEg
KysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaAoK
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaCBiL2luY2x1
ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwMDAuLmQwODdiYTYzYzdhMQotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUv
ZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaApAQCAtMCwwICsxLDIxIEBACisvKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgKi8KKworI2lmbmRlZiBfX0RUX0JJTkRJTkdTX0JN
SVBTX0JDTTYzNjJfUE1fSAorI2RlZmluZSBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzNjJfUE1f
SAorCisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX1NBUgkwCisjZGVmaW5lIEJDTTYzNjJf
UE9XRVJfRE9NQUlOX0lQU0VDCTEKKyNkZWZpbmUgQkNNNjM2Ml9QT1dFUl9ET01BSU5fTUlQUwky
CisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX0RFQ1QJMworI2RlZmluZSBCQ002MzYyX1BP
V0VSX0RPTUFJTl9VU0JICTQKKyNkZWZpbmUgQkNNNjM2Ml9QT1dFUl9ET01BSU5fVVNCRAk1Cisj
ZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX1JPQk9TVwk2CisjZGVmaW5lIEJDTTYzNjJfUE9X
RVJfRE9NQUlOX1BDTQk3CisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX1BFUklQSAk4Cisj
ZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX0FEU0xfUEhZCTkKKyNkZWZpbmUgQkNNNjM2Ml9Q
T1dFUl9ET01BSU5fR01JSV9QQURTCTEwCisjZGVmaW5lIEJDTTYzNjJfUE9XRVJfRE9NQUlOX0ZB
UAkxMQorI2RlZmluZSBCQ002MzYyX1BPV0VSX0RPTUFJTl9QQ0lFCTEyCisjZGVmaW5lIEJDTTYz
NjJfUE9XRVJfRE9NQUlOX1dMQU5fUEFEUwkxMworCisjZW5kaWYgLyogX19EVF9CSU5ESU5HU19C
TUlQU19CQ002MzYyX1BNX0ggKi8KLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
