Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94829D325
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc3OklgVyYjg81HY0NfKwlk9m7MZSacGPcGw2oVCiTw=; b=XENrO3zbCAxrZM
	JdM+K8NXnCcknzwngqL7MLyzZG8GdKn1AgQun20ShFL2KXo5BnuCNoH8GBZtr8uJo40y6a0fw33tR
	1JjvzBRokdIt/DbSH5WxLkgKPUcKRX2Dmnakh5aL27WE5FBNoDxvE5ozL/KceRIdJ5IVKGUMJk9vr
	lRZRow6I0nov1kLtWEe+FIa7nX8waMo7ig4zTgGWAb41auCyad7bzG6xViSpfLZO9teEGvVauxbZ3
	/o4efydscL48I6kjvPSoH7vPHoVd5BjPMBrxNTMdbKys7vrKJZqyR/okABSRjsXGLRBo+pU233au5
	Me9wUiWFbAtSskgDL+zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H6l-0005DQ-GA; Mon, 26 Aug 2019 15:40:39 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H50-0002km-5H
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:51 +0000
Received: by mail-wr1-f65.google.com with SMTP id z1so15776334wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jGtaYskwXqtitTmb81lpaqplH9rL6ZrH9axl395rJFM=;
 b=CKljwLHtYrlbKi92aNcOAnS8U2w5H2+RnYk8f0a5F/LnpkE70FakcQiTfOzSg78/vT
 R1Sc4NqB3omdQEodUA+9UmNcylw0/aAmYW05lKUtgrwN8SzrV/cl6ijgUCwU+kDIYAov
 7mNgu+3n4kCy+IOEeIJXx5/AZzQstmO+/E8ZU7TO19XjhKC3um5LBVcaFmFeKhGzdo+H
 n7Y6D4/uyAi6yQPsCKha+wUjuJXKsGbQl7vTBj7BuNBVcXjHarCRNvy6xzkTSeJ2weZV
 gcczS2LceNidY1XZuk+wNoy9N4fN2QswUI8AaXa/g49axD6JHTiCCmD7bmYyS2yvxvdM
 itgQ==
X-Gm-Message-State: APjAAAVaUb0mlzaMoAlai4ot4kv5EOR5UM7ZK3gDhcQrL1wi4diMfrZ9
 l1l/roGIfymEvXtjxH6gN8A=
X-Google-Smtp-Source: APXvYqydGIPpHOfkRz3VzlXBrDkyVledGjyMVRFPj6NY3pQu4YoRMHWAwMQbnBklpd5rb2iT/1qMAA==
X-Received: by 2002:adf:d08e:: with SMTP id y14mr22820025wrh.309.1566833928723; 
 Mon, 26 Aug 2019 08:38:48 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:48 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 06/12] ARM: dts: imx7d: cl-som-imx7: add / enable watchdog
Date: Mon, 26 Aug 2019 16:37:54 +0100
Message-Id: <20190826153800.35400-6-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083850_238450_BBA0CDDB 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

YWRkIC8gZW5hYmxlIHdhdGNoZG9nIHdoaWNoIGlzIGNvbm5lY3RlZCB2aWEKV0RPR19CIHRvIHRo
ZSBQTUlDLCBkdWUgdG8gaS5NWDcgRXJyYXRhIGUxMDU3NAoKU2lnbmVkLW9mZi1ieTogQW5kcsOp
IERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PgpDYzogSWx5YSBMZWR2aWNoIDxpbHlhQGNvbXB1bGFi
LmNvLmlsPgpDYzogSWdvciBHcmluYmVyZyA8Z3JpbmJlcmdAY29tcHVsYWIuY28uaWw+CkNjOiBS
b2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1
dGxhbmRAYXJtLmNvbT4KQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFNh
c2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5l
bCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZh
bUBnbWFpbC5jb20+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNjOiBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzIHwg
MTIgKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cwppbmRleCA3ODA0NjYzM2Q5MWIuLmNhM2M1
ZDk1ZDZjMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcu
ZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cwpAQCAtMjA3
LDYgKzIwNywxMiBAQAogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZ3ZG9nMSB7CisJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfd2RvZz47CisJZnNs
LGV4dC1yZXNldC1vdXRwdXQ7Cit9OworCiAmaW9tdXhjIHsKIAlwaW5jdHJsX2VuZXQxOiBlbmV0
MWdycCB7CiAJCWZzbCxwaW5zID0gPApAQCAtMjg4LDQgKzI5NCwxMCBAQAogCQkJTVg3RF9QQURf
TFBTUl9HUElPMV9JTzA2X19HUElPMV9JTzYJMHg0MDAwMDA3ZgogCQk+OwogCX07CisKKwlwaW5j
dHJsX3dkb2c6IHdkb2dncnAgeworCQlmc2wscGlucyA9IDwKKwkJCU1YN0RfUEFEX0xQU1JfR1BJ
TzFfSU8wMF9fV0RPRzFfV0RPR19CCTB4NzQKKwkJPjsKKwl9OwogfTsKLS0gCjIuMjMuMC5yYzEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
