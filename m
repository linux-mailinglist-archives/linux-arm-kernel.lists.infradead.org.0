Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372A19D2F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IdrA70lrP8dSHq9Kwu5GWqmHj+Lu+cTtGyiQPtN35XQ=; b=ZFD/omeRIBrie3
	VoIXS5Lkf4Iz2C+JsbELwDD9OhmmRn3dgnePdn3c6JtKp1WoMQvq07sN+aQNEaxGDo+NGE/x+Qqtm
	jssuw8diyaQiiN1kqg1U+i6L+omMATclKMiNXdCQCuFYxdWIZx2jG+iXfEewBoaFIBo28sXvD/f45
	orgZOmVrNCuzu4qGtcdGV0KTBLp8JJSuiFp8o4iia+hMI8e9Q/k30VbEpXS1o3ZQkIbWRQki6QehC
	IImQPH/WOwqlkuLCW0WYiRQLuACSJ6xj8OOOW0yQSaQHre6b/mQ3QoMthhpLeIWZjJkCMUY6qBy7R
	xRRtto6r2meF5llCXq8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H58-0002j9-CW; Mon, 26 Aug 2019 15:38:58 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H4v-0002hx-AK
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:47 +0000
Received: by mail-wm1-f66.google.com with SMTP id 10so15913848wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5/JN6uYb6Ltt98oMBprPmMJCQ9NUBW/kztrckS3ANvk=;
 b=W+ZzNqUnxEXcQd8Pt+bsg6gUKeJmhZRkJ8VWWpca3ueP2Z9lAgKRvOhQwdPkYaBLqs
 soUlWUfpHIc8Pi/tOvaWRBiTKxSe4j4LnILs8k5Rzk8cFdG378GyXG1C5MTeZ1QhzlHa
 l+1K3r1raUQ6vzglDWTBjy/PJvIA6407ZHG4OMqC97j+Il/KBB8U7xpzeOnJP7MVjiVq
 ua4ZgmSA4AT2CIYEnZiFaseh42wwIuxlqnqZGX7CfxPnitZHhcL+ewYQTkDSxfijnVI9
 m6HMLajb/ET/FubHkQWaIb2Om6uy9ZITkoHo9KqpcRGyN0e+D8+wVXDlTEbKHDs6ctCq
 PuRQ==
X-Gm-Message-State: APjAAAVV80bPEEvItHMezY1QGy4onZv+y5zStgdts/nspxoGGJqjMuO6
 jR2dcZZksxrF93iBpTgzl70=
X-Google-Smtp-Source: APXvYqz6k0m1OCGHUiJ4OnGEKQyzGpm4tnivwPcoBNTuZ+jjYF+s+0PdhAXAhI1A6chPPoWGfmhDAw==
X-Received: by 2002:a7b:c3d0:: with SMTP id t16mr23715323wmj.25.1566833923520; 
 Mon, 26 Aug 2019 08:38:43 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:42 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 01/12] ARM: dts: imx7d: cl-som-imx7 imx7d-sbc-imx7: move USB
Date: Mon, 26 Aug 2019 16:37:49 +0100
Message-Id: <20190826153800.35400-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083845_360812_F744AE9E 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
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

V2hldGhlciBhbmQgd2hpY2ggVVNCIHBvcnQgaXMgZW5hYmxlZCBhbmQgaG93IHRoZXkKYXJlIHBv
d2VyZWQgaXMgYSBmdW5jdGlvbiBvZiB0aGUgY2FycmllciBib2FyZCwgbm90Cm9mIHRoZSBTb00u
IERpZmZlcmVudCBjYXJyaWVyIGJvYXJkcyBjYW4gaGF2ZSBkaWZmZXJlbnQKcG9ydHMgZW5hYmxl
ZCAvIHdpcmVkIHVwLCBhbmQgcG93ZXIgdGhlbSBkaWZmZXJlbnRseTsKc28gdGhpcyBzaG91bGQg
cmVhbGx5IG1vdmUgaW50byB0aGUgcmVzcGVjdGl2ZSBEVFMuCgpEbyBzbyBhbmQgdXBkYXRlIHRo
ZSBVU0IgcG93ZXIgc3VwcGx5IHRvIHJlZmxlY3QKdGhlIGFjdHVhbCBzaXR1YXRpb24gb24gdGhl
IHNiYy1pbXg3IGNhcnJpZXIgYm9hcmQuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8
Z2l0QGFuZHJlZC5uZXQ+CkNjOiBJbHlhIExlZHZpY2ggPGlseWFAY29tcHVsYWIuY28uaWw+CkNj
OiBJZ29yIEdyaW5iZXJnIDxncmluYmVyZ0Bjb21wdWxhYi5jby5pbD4KQ2M6IFJvYiBIZXJyaW5n
IDxyb2JoK2R0QGtlcm5lbC5vcmc+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0u
Y29tPgpDYzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtl
cm5lbEBwZW5ndXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNv
bT4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ2M6IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
LS0tCiBhcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMgfCAyNCAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLXNiYy1pbXg3LmR0cyAg
ICB8IDEzICsrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
MjQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wt
c29tLWlteDcuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCmlu
ZGV4IDYyZDVlOWE0YTc4MS4uNmY3ZTg1Y2YwYzI4IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290
L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2Qt
Y2wtc29tLWlteDcuZHRzCkBAIC0yMiwxNSArMjIsNiBAQAogCQlkZXZpY2VfdHlwZSA9ICJtZW1v
cnkiOwogCQlyZWcgPSA8MHg4MDAwMDAwMCAweDEwMDAwMDAwPjsgLyogMjU2IE1CIC0gbWluaW1h
bCBjb25maWd1cmF0aW9uICovCiAJfTsKLQotCXJlZ191c2Jfb3RnMV92YnVzOiByZWd1bGF0b3It
dmJ1cyB7Ci0JCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKLQkJcmVndWxhdG9yLW5h
bWUgPSAidXNiX290ZzFfdmJ1cyI7Ci0JCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAw
MDA+OwotCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKLQkJZ3BpbyA9IDwm
Z3BpbzEgNSBHUElPX0FDVElWRV9ISUdIPjsKLQkJZW5hYmxlLWFjdGl2ZS1oaWdoOwotCX07CiB9
OwogCiAmY3B1MCB7CkBAIC0xOTMsMTMgKzE4NCw2IEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsK
IAotJnVzYm90ZzEgewotCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Ci0JcGluY3RybC0wID0g
PCZwaW5jdHJsX3VzYm90ZzE+OwotCXZidXMtc3VwcGx5ID0gPCZyZWdfdXNiX290ZzFfdmJ1cz47
Ci0Jc3RhdHVzID0gIm9rYXkiOwotfTsKLQogJnVzZGhjMyB7CiAJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfdXNkaGMzPjsKQEAgLTI3OCwxMSArMjYy
LDMgQEAKIAkJPjsKIAl9OwogfTsKLQotJmlvbXV4Y19scHNyIHsKLQlwaW5jdHJsX3VzYm90ZzE6
IHVzYm90ZzFncnAgewotCQlmc2wscGlucyA9IDwKLQkJCU1YN0RfUEFEX0xQU1JfR1BJTzFfSU8w
NV9fR1BJTzFfSU81CTB4MTQgLyogT1RHIFBXUkVOICovCi0JCT47Ci0JfTsKLX07CmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1zYmMtaW14Ny5kdHMgYi9hcmNoL2FybS9ib290
L2R0cy9pbXg3ZC1zYmMtaW14Ny5kdHMKaW5kZXggZjhhODY4NTUyNzA3Li5hYWI2NDY5MDNkZTMg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLXNiYy1pbXg3LmR0cworKysgYi9h
cmNoL2FybS9ib290L2R0cy9pbXg3ZC1zYmMtaW14Ny5kdHMKQEAgLTE1LDYgKzE1LDE0IEBACiAv
IHsKIAltb2RlbCA9ICJDb21wdUxhYiBTQkMtaU1YNyI7CiAJY29tcGF0aWJsZSA9ICJjb21wdWxh
YixzYmMtaW14NyIsICJjb21wdWxhYixjbC1zb20taW14NyIsICJmc2wsaW14N2QiOworCisJcmVn
X3VzYl92YnVzOiByZWd1bGF0b3ItdXNiLXZidXMgeworCQljb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gInVzYl92YnVzIjsKKwkJcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUw
MDAwMDA+OworCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCX07CiB9OwogCiAmdXNkaGMxIHsKQEAg
LTI2LDYgKzM0LDExIEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJiZ1c2JvdGcxIHsKKwl2
YnVzLXN1cHBseSA9IDwmcmVnX3VzYl92YnVzPjsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAm
aW9tdXhjIHsKIAlwaW5jdHJsX3VzZGhjMTogdXNkaGMxZ3JwIHsKIAkJZnNsLHBpbnMgPSA8Ci0t
IAoyLjIzLjAucmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
