Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEB214E9AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyVNR0EK9GwBBLkl0FfAv/uO25KaVPkWSSRawT3vi3Y=; b=clQ8uPllupaPJs
	+k0Gh6VNSHqf7dLG8DcD5nH/QpFYzxu6deijsRgikcAfpZ9k2VoxxaWBbk8VtNUrU2pgQnNCQm7vv
	ewiiVNhq83zvm5HFMSWGdaKz4jVMTrU1gm3aNwlm2OosHYn3Ado9sFWRkIS7ntdPMSQIGWN5om8jg
	W9XNhxTIpz8lfW6x0g4pkPAZUcVYUr5d5pQnq04oCunjzruY/O5WiPsgrAMg+TTl+aT//RVQBb9Nd
	evXPUY/Nx8UVDP05QN42fwJ4j1XVfjBNJyfFfg1wxniR2nSJ1h4jPMORVXpfPjr7skq5v87rZvwU6
	n4R1q0WDzLK1+J3/kokQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRu2-0008LL-B1; Fri, 31 Jan 2020 08:43:50 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsE-0006gI-T1
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:42:00 +0000
Received: by mail-wm1-f67.google.com with SMTP id q9so6926613wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sMmbpncOJ0ZaEaTp6uD1F3mJKzNvU9i5QAcT7nrh4JY=;
 b=JKDni7YRFX/y/u0LHrua40wlUnxVNfj4wX1knVBdTtwjTfvxj/BjJrFt9JEPL/a8+G
 EhxGrx1d2ELV9TtpiRZpfaIbbeYq+jv44kg3EKoaGK2fi9MT5qDKj0Xayq8ol7FjLKIV
 wHsxI8WbEzg/jE73nUyLoAQ2NxROyR8S3EOYfwt4mIP8HhsYGV9FYOa7WZuVOdGB/EPx
 JTfh+nq8+oOnGQdbRjAymmZMsDH7ROmKO4Tks7m+x6fVwqYPdQuDFz/ZqYsUaivNFEGD
 aTgS6MeonL98JDCZeJlnfqDal2B0YZ60wlzaU3p4KcfMywZqnRMUOCROCYJ5UmZwCQrp
 SipA==
X-Gm-Message-State: APjAAAU3oVDtnlyRRhRpf30QfQn2UwykQ5stC6qCBgG/fLAPgqZ0qpvr
 l7JjeLHHaoH9Bgq5hITq+2k=
X-Google-Smtp-Source: APXvYqzKcapyTjD9nBiBSyVMOTcqge1oPKD3TaBRMVfA2GO5FZ48/UrkimVNYtSOgOOLzu22AYMvKA==
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr11000810wmc.137.1580460117691; 
 Fri, 31 Jan 2020 00:41:57 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:57 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 08/12] ARM: dts: imx7d: cl-som-imx7: update UART1 (debug)
 clock
Date: Fri, 31 Jan 2020 08:36:34 +0000
Message-Id: <20200131083638.6118-8-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004158_955160_D6E84E46 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
