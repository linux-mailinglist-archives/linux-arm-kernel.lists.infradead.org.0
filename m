Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1333614E9AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc3OklgVyYjg81HY0NfKwlk9m7MZSacGPcGw2oVCiTw=; b=gGJ4IK2R7pOd6n
	cznh8Rznxg7b8+y8D7NCGKeGBooWgCSlF7WF1N1WbPrF7Ghuf1zQgR0Es8pY9mJqbnjRNjgwGVqG5
	fokQnEW2yc8YqOg58AhOvz5xOjwkAPVSh2VeDpkQEnY3AB20SusEYNBuA9E+aWEhXPubx0ntipLSG
	2DAs5SM0uAkq9W1qDiv4+g7AmVkqRkplaCUj8RxW8TgYxikCDbauJxMCe787rz7xYVA1GYc8sR11c
	eAF/tTy6kLKQp+rD7zkbB2c1/7F1FoF4s6K1oSZaTucxgwgAH+PgYKM2U5LUoFZ5aJc08rOXXnBJt
	+X5CCZGOy4WuHQXJGKvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRtf-0007qB-Rt; Fri, 31 Jan 2020 08:43:27 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsC-0006eL-Gm
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:41:58 +0000
Received: by mail-wm1-f66.google.com with SMTP id g1so6928056wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jGtaYskwXqtitTmb81lpaqplH9rL6ZrH9axl395rJFM=;
 b=aS94Ls6B3zwKf/8RL/4kdGf0pxUxFRhUdwOgECK79Qrr7/tqw61dhvGKRxRM9glT6z
 Z6E3an4qROhM5kmtfD9BUlRDDDjAZiPcT+/ATjEKHdR3u6vz+gciabf+b+NECZSQZjVO
 ZYF84/Omb6tQg8Scb+qxD4gv9J+kmevdNbw7PyxNOjAbaV2tpFmerR8qS+8ntWWPOsPJ
 Rf1Xu1XhaLxzZ3ibS459Ka1qnqI3a4A94rz4jEnHG4rAgUzWZJRcWggMx9ciwl05Pdhr
 cAbykpm1swy83xfu/prV0DhHIoERa5kN4uyt1fDrhn7/U8tFq6KOeaXUoyqAf8t6RyFR
 pK8g==
X-Gm-Message-State: APjAAAWuINLCy040uKEzHtF9+rsj0BY5NXRl06Fb18uLIJQbewbIjFBW
 k/0KT3x4ZR/hxnXHUheiYFk=
X-Google-Smtp-Source: APXvYqzdHgyllrzTjRIsDWUxqKCWD3djcZmRB0k47vFVyGaNCVZjRihXvyt4cZA1Ts7DFW5lbYfhbA==
X-Received: by 2002:a7b:c386:: with SMTP id s6mr10617994wmj.105.1580460115395; 
 Fri, 31 Jan 2020 00:41:55 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:54 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/12] ARM: dts: imx7d: cl-som-imx7: add / enable watchdog
Date: Fri, 31 Jan 2020 08:36:32 +0000
Message-Id: <20200131083638.6118-6-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004156_550741_C1E72260 
X-CRM114-Status: GOOD (  12.29  )
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
