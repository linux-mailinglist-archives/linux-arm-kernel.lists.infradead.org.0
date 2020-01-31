Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D0A14E9A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e3I8+uxj2M4yu+KbTe+O+YgFiJMHRfPlsJ5QnmTCRko=; b=p3iiYca4pjdC+S
	1RYAWR7o8Iw1M6OZme/gDnMFMfDs4Wh87mD0J6aBc/03VHPpTxhCV+3dTfZpt0yeJI+ZZ/Ytsekd7
	kqqOqTUTHLHAT0i8Ww4MebqftKekCIggVnoPG3V8GoAhQkVmHufLoDNTm/4tbuqh3psJQdNZqak0Z
	F0/o/WliIXel5/D+28lbuzA6sYK2UCNtzq3zFMJnL0GtavLVJthqtMT20fMqqJDE/+F4yAqQsTBpW
	s0kDvtkZAYKFV3JsGAajHlG1Fc3max7Gmf7hcwxUdc/gQc3H6+WsCXBvzW+YCh7Lwr/npycz0HawL
	F2ucmNtM1bGiaQpx6ZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRsM-0006eb-OY; Fri, 31 Jan 2020 08:42:06 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRs9-0006co-Ti
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:41:55 +0000
Received: by mail-wm1-f67.google.com with SMTP id p9so6944892wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2EkrQbHmytM/4HBLq09Tk0mO3BlMQ43f4QPGQu2sSZ8=;
 b=T6D/l7dklsy0dewmvo6q5X5dhUrzzPkwvb3bfRHGmCo5M7QFhh4rQjXmEr7Vq8UkgK
 BAsEnvg9tHssv+LtR055aFeum/7bOLdnJN04i1vrLwgJq92cKQE7vFi6FKzyKrfbZTXO
 cB+XRoZdquYlZaNzxQlVwjax/lvOvBfehxuU17mPbziBmgrEPr8EQAlwLyWVhf3sJy9D
 SYkvqQiFKViokOS8ptCW82cpMs0EFuoPBa0iqebZ9OTZqGwH/ki041eq4I1HqTZPFYSq
 Ag7aM0erTO/7fTuzjZZPq5wtbZygLSY2tEtg3hnMbguGWL/XmxG0sefPO7xQNBL7kksw
 7n1Q==
X-Gm-Message-State: APjAAAXJHtSfHSMRm455k7mv5mJWZKhRJzFG3hdbB66vNQ1XfN6Ak4Ne
 JEjvxk/qd1KtdeErIkxmBsg=
X-Google-Smtp-Source: APXvYqwu9LmExa87URoYI/cO7DwIY7BOw5a3ckxOgqG1pCcQbtNOFFpvqIq7xQjjsS1gxQqpBgRCJg==
X-Received: by 2002:a1c:1f56:: with SMTP id f83mr10564641wmf.93.1580460110332; 
 Fri, 31 Jan 2020 00:41:50 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:49 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 01/12] ARM: dts: imx7d: cl-som-imx7 imx7d-sbc-imx7: move USB
Date: Fri, 31 Jan 2020 08:36:27 +0000
Message-Id: <20200131083638.6118-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004153_957259_003439CB 
X-CRM114-Status: GOOD (  13.75  )
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
ZGV4IDc2NDYyODRlMTNhNy4uMGQ5NjJlOWZlODNhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290
L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2Qt
Y2wtc29tLWlteDcuZHRzCkBAIC0yMiwxNSArMjIsNiBAQAogCQlkZXZpY2VfdHlwZSA9ICJtZW1v
cnkiOwogCQlyZWcgPSA8MHg4MDAwMDAwMCAweDEwMDAwMDAwPjsgLyogMjU2IE1CIC0gbWluaW1h
bCBjb25maWd1cmF0aW9uICovCiAJfTsKLQotCXJlZ191c2Jfb3RnMV92YnVzOiByZWd1bGF0b3It
dmJ1cyB7Ci0JCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKLQkJcmVndWxhdG9yLW5h
bWUgPSAidXNiX290ZzFfdmJ1cyI7Ci0JCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAw
MDA+OwotCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKLQkJZ3BpbyA9IDwm
Z3BpbzEgNSBHUElPX0FDVElWRV9ISUdIPjsKLQkJZW5hYmxlLWFjdGl2ZS1oaWdoOwotCX07CiB9
OwogCiAmY3B1MCB7CkBAIC0xOTUsMTMgKzE4Niw2IEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsK
IAotJnVzYm90ZzEgewotCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Ci0JcGluY3RybC0wID0g
PCZwaW5jdHJsX3VzYm90ZzE+OwotCXZidXMtc3VwcGx5ID0gPCZyZWdfdXNiX290ZzFfdmJ1cz47
Ci0Jc3RhdHVzID0gIm9rYXkiOwotfTsKLQogJnVzZGhjMyB7CiAJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfdXNkaGMzPjsKQEAgLTI4MCwxMSArMjY0
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
