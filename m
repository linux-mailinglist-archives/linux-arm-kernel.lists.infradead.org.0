Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0D1878A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YSRoESl7eXg089LmFJS4BIs5e3BUsmdVK1N4CDTD8+U=; b=hNreoHDDk4dkES
	AA5zkcDGUntKVIexvU0GebNiotA0hKq4DL5gwagvWta+fwezLvnDMuPFpWx0k9wYbbtZQYwpapjtF
	YHpe7rqMorZ/LGs5mBR2jGkTaQEM3AHZ9R1CYaVFAtJJMvsiKpn6mx9A8lwX/up7gn5vyTDDe2hxc
	dH0h4wWEOxjYFd/5OJZ/c+rzVwX0O6diOrQ1e1vTyhOkhDBzRrq2rdOkO9xgAP144rUpmRFa4yl4Y
	L18dJt5GcV0clz51ev40QwrOWFLB95yQ+sK+VpkltA2c3RbhLlwtsIfVqvMufV9bA1GK5pjHOJB3A
	j7gcRIP3ravx/4tr63/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw37l-0001nI-Tl; Fri, 09 Aug 2019 11:31:57 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw35o-0007Vr-9i
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:59 +0000
Received: by mail-wm1-f67.google.com with SMTP id l2so5323967wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 04:29:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QG5jO2mAi9YEi6xTWeKObSZGdS/DmG9prlRGSofT6eU=;
 b=Mda2jERCsdqx5plGmeFTpq0jELLJL6Y7FHROTdtAfVLByy/3YoCohY+kohaNO2Pqr6
 P1CzhXqsrt9Ee+dsnyUJ4PkBkIxylkvLpF9Ucn4itbeVKAzJ4lmSiLat0Eoqb6KvoTnt
 b74NOcAbw2GgZ3AjHwXo3hfW63Km+0yS82tX1MOzcHewT8cCKM/EpkSeu3Y2asOXqgcx
 A0WKwwZTycee7xjsUN5Uo7CteOxUSzq+efS0d8OVEr3mIpN4oEHcGYKQeJHLgtQyskn1
 aKTq/ZP430l+t9rCJziZOWYoG3WbC1UfoKW5L0/5bAFaNuie78nxcDnuh6zsCKtDA75T
 Z86Q==
X-Gm-Message-State: APjAAAUFY6ShWPFCbRACu7rx+lx7GgINxXVLMcpEYgGrF2HZr7TV/N34
 Osa8NqmCjEUiqx1wl//z4333LbbFoxXBFg==
X-Google-Smtp-Source: APXvYqzVtdJ4e4jbXN5HklPgNSdUOT9M9Sm9lH5Z+9ooz8GGEKAWv6ry521yYgkxOkipPxuW42j14g==
X-Received: by 2002:a1c:a5c2:: with SMTP id
 o185mr10205495wme.172.1565350194681; 
 Fri, 09 Aug 2019 04:29:54 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id y1sm3684889wma.32.2019.08.09.04.29.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 09 Aug 2019 04:29:54 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx7d: cl-som-imx7: add compatible for phy
Date: Fri,  9 Aug 2019 12:29:46 +0100
Message-Id: <20190809112946.28659-1-git@andred.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042956_463218_6D64A57A 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 4.1 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [77.107.218.170 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
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

V2hpbGUgbm90IHN0cmljdGx5IG5lZWRlZCBhcyAiZXRoZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIi
CmlzIGFzc3VtZWQgYnkgZGVmYXVsdCBpZiBub3QgZ2l2ZW4gZXhwbGljaXRseSwgaGF2aW5nCnRo
ZSBjb21wYXRpYmxlIHN0cmluZyBoZXJlIG1ha2VzIGl0IG1vcmUgY2xlYXIgd2hhdAp0aGlzIGlz
IGFuZCB3aGljaCBkcml2ZXIgaGFuZGxlcyB0aGlzIC0gYW4gRXRoZXJuZXQKcGh5IGF0dGFjaGVk
IHRvIG1kaW8sIGhhbmRsZWQgYnkgb2ZfbWRpby5jCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJh
c3ppayA8Z2l0QGFuZHJlZC5uZXQ+CkNDOiBJbHlhIExlZHZpY2ggPGlseWFAY29tcHVsYWIuY28u
aWw+CkNDOiBJZ29yIEdyaW5iZXJnIDxncmluYmVyZ0Bjb21wdWxhYi5jby5pbD4KQ0M6IFJvYiBI
ZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+CkNDOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFu
ZEBhcm0uY29tPgpDQzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDQzogU2FzY2hh
IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpDQzogUGVuZ3V0cm9uaXggS2VybmVsIFRl
YW0gPGtlcm5lbEBwZW5ndXRyb25peC5kZT4KQ0M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdt
YWlsLmNvbT4KQ0M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ0M6IGRldmlj
ZXRyZWVAdmdlci5rZXJuZWwub3JnCkNDOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKLS0tCiBhcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMgfCAyICsr
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2Qt
Y2wtc29tLWlteDcuZHRzCmluZGV4IDYyZDVlOWE0YTc4MS4uNzY0NjI4NGUxM2E3IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCkBAIC01NCwxMCArNTQsMTIgQEAKIAkJ
I3NpemUtY2VsbHMgPSA8MD47CiAKIAkJZXRocGh5MDogZXRoZXJuZXQtcGh5QDAgeworCQkJY29t
cGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7CiAJCQlyZWcgPSA8MD47CiAJ
CX07CiAKIAkJZXRocGh5MTogZXRoZXJuZXQtcGh5QDEgeworCQkJY29tcGF0aWJsZSA9ICJldGhl
cm5ldC1waHktaWVlZTgwMi4zLWMyMiI7CiAJCQlyZWcgPSA8MT47CiAJCX07CiAJfTsKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
