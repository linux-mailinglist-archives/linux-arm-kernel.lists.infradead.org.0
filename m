Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D599D328
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyVNR0EK9GwBBLkl0FfAv/uO25KaVPkWSSRawT3vi3Y=; b=gmN1s5Sl8VDxsE
	RFxQ8YeVY94haI9qyzwIEWn2TL8Tk+sSNv45hDTKQuB6x4GrHeP1nIpxL+keYIoA2DOb2SqAz44tj
	V1qbLqQFi18H41KyVBNjvBiZZZWbUulGKHAaQVs2NwbuCvZ+ndfh4PenLw5svccH+ZqztFNs60NrZ
	0vd4kUT8svDPGkgbV9Q9NMV2CCLTmT/RbP2/b3fchsiDi2pRg4yb4y/s5aVOGzUaSJlDImb7hcrfd
	9Qej2skyc2mOaFDARJi7BhWjvFpsEqpH6NmIBSoLKofmW8Z5Y8l6smpk4DXyPdTbfTJYePMMyTSi0
	cuFjy3anZg2lU4KGnBMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H7J-0005er-8z; Mon, 26 Aug 2019 15:41:13 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H52-0002nb-5I
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:53 +0000
Received: by mail-wm1-f68.google.com with SMTP id k1so15953707wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sMmbpncOJ0ZaEaTp6uD1F3mJKzNvU9i5QAcT7nrh4JY=;
 b=SkanPMzvBZ1AoBIi40S0shDCsHuHxiQBi9t9pxIffjEi/gBMNvOuXTgdEFAaJcBftV
 5jHg3Kuhe8K/qhC0B4ToKyliz5vFLj52QeLsb6BrQ9ethhcZZ+KS42ldrhsG3JZXVns8
 eNts0n/ZTGnOqm0jDvtMHGFYpFnAcMza7snGHOf7gCkRgy7jU2Kxd9VXOec/Go08LhQH
 Xn7v4dxDVzxxQrO6vr3q7AwbOTWpKM5HPPKh2+dfMgOgIBOOVIQLPZasZQvxBMJN03UM
 mj60k5NeYJEv6f9PlPf5ccZEFI3QtRhjG7AzTyHO+DWbP82adcQs1irk6F8X7s5zFiW2
 w4PA==
X-Gm-Message-State: APjAAAXvK6MKtba/952nxAiyUKbhEnhw0Sy9VadaoNIXXML3TNtfnYAc
 1fHdKK63pN1kxcfsX4INLjQ=
X-Google-Smtp-Source: APXvYqzGJnbPj/aQN9vpELl8apyFyQZE5AG9D4gn7qkUgkt0R4z3A8KozlSMpWB1/cHyMGbBxQxjWQ==
X-Received: by 2002:a1c:1b42:: with SMTP id b63mr22828360wmb.46.1566833930681; 
 Mon, 26 Aug 2019 08:38:50 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:50 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 08/12] ARM: dts: imx7d: cl-som-imx7: update UART1 (debug) clock
Date: Mon, 26 Aug 2019 16:37:56 +0100
Message-Id: <20190826153800.35400-8-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083852_283490_EE9CD4B3 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

YXNzaWduIE9TQyBhcyB1YXJ0MSAoZGVidWcpIGNsb2NrIHRvIGFjaGlldmUgbG93IHBvd2VyLApz
byB0aGF0IHRoZSBQTEwgZG9lc24ndCBuZWVkIHRvIGJlIGtlcHQgb24KClNpZ25lZC1vZmYtYnk6
IEFuZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4KQ2M6IElseWEgTGVkdmljaCA8aWx5YUBj
b21wdWxhYi5jby5pbD4KQ2M6IElnb3IgR3JpbmJlcmcgPGdyaW5iZXJnQGNvbXB1bGFiLmNvLmls
PgpDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IE1hcmsgUnV0bGFuZCA8
bWFyay5ydXRsYW5kQGFybS5jb20+CkNjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+
CkNjOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+CkNjOiBQZW5ndXRyb25p
eCBLZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgpDYzogRmFiaW8gRXN0ZXZhbSA8
ZmVzdGV2YW1AZ21haWwuY29tPgpDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29t
PgpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3
LmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cwppbmRleCBkNDYzN2E4Y2Ey
MjMuLmY4MGJlODU1YjRlYyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wt
c29tLWlteDcuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0
cwpAQCAtMjIyLDcgKzIyMiw3IEBACiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5j
dHJsLTAgPSA8JnBpbmN0cmxfdWFydDE+OwogCWFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrcyBJTVg3
RF9VQVJUMV9ST09UX1NSQz47Ci0JYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrcyBJTVg3
RF9QTExfU1lTX01BSU5fMjQwTV9DTEs+OworCWFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNs
a3MgSU1YN0RfT1NDXzI0TV9DTEs+OwogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKLS0gCjIuMjMu
MC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
