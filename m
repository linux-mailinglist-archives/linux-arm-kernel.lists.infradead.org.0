Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2384114E9A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV4+DB9g+wz24WDe/envcoja16jdSFFmWSyHm4hKsa0=; b=Q0ROHH0e9VQH2c
	QSCwhVKoGPiYJk/zzYTUxdqofbOxL4LfkJ9BC/ddZqc7UBaLuMhvBGdOUrVd4wrHUrNApp5YvMZ5X
	fcc9n8RMnvA7D8G1/yuZOWf96XMaa+qQVkPjdjopIDnwmV4U5hLXo7xVMiE5Ef8J1h5cg5laUwe/9
	f/MS8DgCfx1D6PtYgzR2D84Hk+nPj//FIOvPA2BhwIW7V8iLyDwYRZIoh0wccPb4SsTipZ4WqgwL9
	9s4Xv8bobDDCabpsoCCEzD4ngVHSDTIyg9UmnwaUqhSa4ri+2btF+Z/joGXrLAbaDtaT1wwVqPd6u
	5PSHDwTq7szJ4Z/U6q+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRsb-0006pX-MC; Fri, 31 Jan 2020 08:42:21 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRs9-0006cp-RS
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:41:55 +0000
Received: by mail-wm1-f66.google.com with SMTP id f129so7714658wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/HyaBKxElmmkbij4csv64kln2w3uU/8uK5M/u+w6Ug8=;
 b=WWxkcRwfsvrmloutXr0rBGE7Ue8AzGLQXv6CI6/9mPjGeoyGl1K/7j1eh9ieuPwv4B
 l018P0DwYHbIK9Kxg9j5uwrY+st+ehjQaFwUcEmZC8f8B7WaPB8py25uknTjfdKF0E3g
 9yBsl2IhbXNrw9KxFlxFMhkQIKOpGC9SrV70Njbv93/hgXyI9mEQOZ2JWsjHPb9fxHgT
 BVYOvnhy0Z+XTerTHMX/lfMpHX/945MJMIYiyhWFN2VVs8Yz1BHbHTOfhOrNLpqZ8fmy
 DtpwMytdUp9Mg/d750aQ5g1cy+P5XYiTXl7YvWtymEviM4cwXc+eZH1AmDqppDMeoR9O
 SVFg==
X-Gm-Message-State: APjAAAUVd+HzGezIUtscNyfCDPsNekLFlV4wnG1+cuXGM5idDh8IK5yu
 +pNSfaTyNdFPa2uzC/tBmyw=
X-Google-Smtp-Source: APXvYqyDG0GpmJ9fE1LRLArRrCTwciMloxNp5gciCVnYB3j3IjoivEqkSuv+/IAYtnLTN0HRvXZ8Jg==
X-Received: by 2002:a7b:c204:: with SMTP id x4mr10797173wmi.20.1580460111352; 
 Fri, 31 Jan 2020 00:41:51 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:50 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/12] ARM: dts: imx7d: cl-som-imx7: add phy-reset-gpios
Date: Fri, 31 Jan 2020 08:36:28 +0000
Message-Id: <20200131083638.6118-2-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004153_891925_EC90A1FE 
X-CRM114-Status: GOOD (  13.94  )
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

QWNjb3JkaW5nIHRvIHRoZSBkZXNpZ24gdGVhbToKKiByZXNldCBpbnB1dCBQSFkwIGlzIGRpcmVj
dGx5IGNvbm5lY3RlZCB0byB0aGUKICBjb3JyZXNwb25kaW5nIHBpbiBHUElPMV80IGluIHRoZSBp
Lk1YNwoqIHJlc2V0IGZvciBQSFkxIGlzIGRvbmUgdXNpbmcgdGhlIGdwaW8gZXhwYW5kZXIgYml0
IDQKCldoaWxlIHRvdWNoaW5nIHRoaXMgYXJlYSwgYWxzbyBhZGQgYSAnY29tcGF0aWJsZScKdG8g
dGhlIHBoeSB0byBtYWtlIGl0IG1vcmUgY2xlYXIgd2hhdCB0aGlzIGlzIGFuZAp3aGljaCBkcml2
ZXIgaGFuZGxlcyB0aGlzIC0gYW4gRXRoZXJuZXQgcGh5IGF0dGFjaGVkCnRvIG1kaW8sIGhhbmRs
ZWQgYnkgb2ZfbWRpby5jCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJl
ZC5uZXQ+CkNjOiBJbHlhIExlZHZpY2ggPGlseWFAY29tcHVsYWIuY28uaWw+CkNjOiBJZ29yIEdy
aW5iZXJnIDxncmluYmVyZ0Bjb21wdWxhYi5jby5pbD4KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0
QGtlcm5lbC5vcmc+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgpDYzog
U2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5n
dXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KQ2M6IE5Y
UCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ2M6IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBhcmNo
L2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMgfCAxMiArKysrKysrKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzIGIvYXJjaC9hcm0vYm9v
dC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCmluZGV4IDBkOTYyZTlmZTgzYS4uZTA0MzJhM2Fh
MzZmIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCkBAIC0zMCwxMyAr
MzAsMTQgQEAKIAogJmZlYzEgewogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Ci0JcGluY3Ry
bC0wID0gPCZwaW5jdHJsX2VuZXQxPjsKKwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZW5ldDEgJnBp
bmN0cmxfZW5ldDFwaHk+OwogCWFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrcyBJTVg3RF9FTkVUMV9U
SU1FX1JPT1RfU1JDPiwKIAkJCSAgPCZjbGtzIElNWDdEX0VORVQxX1RJTUVfUk9PVF9DTEs+Owog
CWFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsa3MgSU1YN0RfUExMX0VORVRfTUFJTl8xMDBN
X0NMSz47CiAJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDwxMDAwMDAwMDA+OwogCXBoeS1t
b2RlID0gInJnbWlpLWlkIjsKIAlwaHktaGFuZGxlID0gPCZldGhwaHkwPjsKKwlwaHktcmVzZXQt
Z3Bpb3MgPSA8JmdwaW8xIDQgR1BJT19BQ1RJVkVfTE9XPjsKIAlmc2wsbWFnaWMtcGFja2V0Owog
CXN0YXR1cyA9ICJva2F5IjsKIApAQCAtNjUsNiArNjYsNyBAQAogCWFzc2lnbmVkLWNsb2NrLXJh
dGVzID0gPDA+LCA8MTAwMDAwMDAwPjsKIAlwaHktbW9kZSA9ICJyZ21paS1pZCI7CiAJcGh5LWhh
bmRsZSA9IDwmZXRocGh5MT47CisJcGh5LXJlc2V0LWdwaW9zID0gPCZwY2E5NTU1IDQgR1BJT19B
Q1RJVkVfTE9XPjsKIAlmc2wsbWFnaWMtcGFja2V0OwogCXN0YXR1cyA9ICJva2F5IjsKIH07CkBA
IC0yNjQsMyArMjY2LDExIEBACiAJCT47CiAJfTsKIH07CisKKyZpb211eGNfbHBzciB7CisJcGlu
Y3RybF9lbmV0MXBoeTogZW5ldDFwaHlncnAgeworCQlmc2wscGlucyA9IDwKKwkJCU1YN0RfUEFE
X0xQU1JfR1BJTzFfSU8wNF9fR1BJTzFfSU80CTB4MzQKKwkJPjsKKwl9OworfTsKLS0gCjIuMjMu
MC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
