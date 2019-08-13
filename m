Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F798B5C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=owoJJOVbdmLymr4WD/8ZREUuAcfAoEcpOFirnjSfM7k=; b=o/tua0xBHWXCCT
	qTKBAcvDixaUEHd/abE1uK4O3YX2PU+sAgNXkNZ/B11oy/5fJ9mwmtNgKTd73mcso1NLx0rDgSjcK
	VMDyKEiV49bvzU8731oVb64GmIKYbmB1Y/qG9RoQAM048aYn9OWxji4ObHJxy62UGjb0KJh0Q2uuM
	ER4qVpomMweK+QbSJthD2Pi9ia57bSbpQ2R9zJHYkbhlCFqK8YYd9oGrCYX2xRQkEBRD/97ZiveSr
	knrwksuRD+NzSj+2esX5NKa9HlL9TdIw75aT44B1Ga3nHYefMD/Z8km8bHYmJ8KX9f7uyiU6hZbnf
	Kin+Jx4R1xrC3PDFhX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUCL-00037c-4q; Tue, 13 Aug 2019 10:38:37 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUBo-0002v5-N6
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:38:07 +0000
Received: by mail-wm1-f66.google.com with SMTP id g67so1012436wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 03:38:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IRI9xzFxMKHfeehDsl2GFQBy7QLiUvO6l2kHk0UQE0g=;
 b=itZiGZSl4g+r6fV1f6AO1H1fpftKAT6QEt7YrJLgeSdSRMC9+KD38dO1VoLwrjkUlG
 wNINeCRTAPnrmN0J/uLpUqi3DhEqPxk93i4fu5PPqqNZnEKivXYdbi28NOoMkG0jo7Eu
 crZPm8MjSf9r2ppzhnNLrMBHNYJguKWQZ1KBdVO5f6gEapo1dGQuPOHIGfjtTovADft1
 MvI6zlwCHNspDqpgdlqJYXVRCMwNLV2FflHWxsVxBPYTGjxKCq124mjvDK4JPCTu3gdJ
 i0ZoetqGfptwcisSm1B1hhvPZ9dhckaBUlORxgeVWmM2j2XhorhTAsrIto1iAv0S+MwK
 AALA==
X-Gm-Message-State: APjAAAUFjpceX1fci+9diyHnIVJhH2i+auoi8nmm+T6QcRqYQqo034gh
 gwa4c72GRbH/R8YLJC0MICdAiYBBdbMsrQ==
X-Google-Smtp-Source: APXvYqykijlq6kdHHcALNJ7kMDqWm4cQ80tA6EmpKRsiGVizuQU+0b4coATfODqCKbQAlhZg4Rcazw==
X-Received: by 2002:a1c:f409:: with SMTP id z9mr2408158wma.176.1565692682962; 
 Tue, 13 Aug 2019 03:38:02 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id f70sm1484635wme.22.2019.08.13.03.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 03:38:02 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] PCIe: imx6: imx7d: add support for internal phy refclk
 source
Date: Tue, 13 Aug 2019 11:37:58 +0100
Message-Id: <20190813103759.38358-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_033804_751385_899AB0AD 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 4.1 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [77.107.218.170 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGkuTVg3RCB2YXJpYW50IG9mIHRoZSBJUCBjYW4gdXNlIGVpdGhlciBhbiBleHRlcm5hbApj
cnlzdGFsIG9zY2lsbGF0b3IgaW5wdXQgb3IgYW4gaW50ZXJuYWwgY2xvY2sgaW5wdXQgYXMKYSBy
ZWZlcmVuY2UgY2xvY2sgaW5wdXQgZm9yIHRoZSBQQ0llIFBIWS4KCkFkZCBzdXBwb3J0IGZvciBh
biBvcHRpb25hbCBwcm9wZXJ0eSAnZnNsLHBjaWUtcGh5LXJlZmNsay1pbnRlcm5hbCcKSWYgcHJl
c2VudCB0aGVuIHRoZSBpbnRlcm5hbCBjbG9jayBpbnB1dCBpcyB1c2VkIGFzClBDSWUgUEhZIHJl
ZmVyZW5jZSBjbG9jayBzb3VyY2UuIFRoZSBwcmV2aW91cyBkZWZhdWx0Cm9mIHVzaW5nIGFuIGV4
dGVybmFsIG9jc2lsbGF0b3IgaW5wdXQgKGlmIHRoZSBwcm9wZXJ0eQpkb2Vzbid0IGV4aXN0KSwg
ZG9lc24ndCBjaGFuZ2UuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJl
ZC5uZXQ+CkNjOiBSaWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+CkNjOiBMdWNhcyBT
dGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3Jl
bnpvLnBpZXJhbGlzaUBhcm0uY29tPgpDYzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xl
LmNvbT4KQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVl
ciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxr
ZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5j
b20+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNjOiBsaW51eC1wY2lA
dmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
Q2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2ktaW14Ni5jIHwgOSArKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2ktaW14Ni5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWlteDYu
YwppbmRleCA5YjVjYjViNzAzODkuLmJiMzcwMGM5MTU3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpLWlteDYuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2ktaW14Ni5jCkBAIC02Myw2ICs2Myw3IEBAIHN0cnVjdCBpbXg2X3BjaWUgewogCXN0
cnVjdCBkd19wY2llCQkqcGNpOwogCWludAkJCXJlc2V0X2dwaW87CiAJYm9vbAkJCWdwaW9fYWN0
aXZlX2hpZ2g7CisJYm9vbAkJCXBoeV9yZWZjbGtfaW50ZXJuYWw7CiAJc3RydWN0IGNsawkJKnBj
aWVfYnVzOwogCXN0cnVjdCBjbGsJCSpwY2llX3BoeTsKIAlzdHJ1Y3QgY2xrCQkqcGNpZV9pbmJv
dW5kX2F4aTsKQEAgLTYzNSw3ICs2MzYsMTAgQEAgc3RhdGljIHZvaWQgaW14Nl9wY2llX2luaXRf
cGh5KHN0cnVjdCBpbXg2X3BjaWUgKmlteDZfcGNpZSkKIAkJYnJlYWs7CiAJY2FzZSBJTVg3RDoK
IAkJcmVnbWFwX3VwZGF0ZV9iaXRzKGlteDZfcGNpZS0+aW9tdXhjX2dwciwgSU9NVVhDX0dQUjEy
LAotCQkJCSAgIElNWDdEX0dQUjEyX1BDSUVfUEhZX1JFRkNMS19TRUwsIDApOworCQkJCSAgIElN
WDdEX0dQUjEyX1BDSUVfUEhZX1JFRkNMS19TRUwsCisJCQkJICAgaW14Nl9wY2llLT5waHlfcmVm
Y2xrX2ludGVybmFsCisJCQkJICAgPyBJTVg3RF9HUFIxMl9QQ0lFX1BIWV9SRUZDTEtfU0VMCisJ
CQkJICAgOiAwKTsKIAkJYnJlYWs7CiAJY2FzZSBJTVg2U1g6CiAJCXJlZ21hcF91cGRhdGVfYml0
cyhpbXg2X3BjaWUtPmlvbXV4Y19ncHIsIElPTVVYQ19HUFIxMiwKQEAgLTExNzEsNiArMTE3NSw5
IEBAIHN0YXRpYyBpbnQgaW14Nl9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJaWYgKHJldCkKIAkJaW14Nl9wY2llLT5saW5rX2dlbiA9IDE7CiAKKwlpbXg2X3BjaWUt
PnBoeV9yZWZjbGtfaW50ZXJuYWwgPQorCQlvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobm9kZSwgImZz
bCxwY2llLXBoeS1yZWZjbGstaW50ZXJuYWwiKTsKKwogCWlteDZfcGNpZS0+dnBjaWUgPSBkZXZt
X3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwgInZwY2llIik7CiAJaWYgKElTX0VS
UihpbXg2X3BjaWUtPnZwY2llKSkgewogCQlpZiAoUFRSX0VSUihpbXg2X3BjaWUtPnZwY2llKSA9
PSAtRVBST0JFX0RFRkVSKQotLSAKMi4yMy4wLnJjMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
