Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEC61FD28C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zU+V0pLo/vdUSTWupFUUFklcfhIMkbWZ/Lt1fY6frc=; b=MHSP5x3xu5fFSo
	D2ExWynLZVYrJoSuD4AKdlFYk8IoJEkW9DjIGYIFcmaKGfkA4NW6Z51dhXeBedsGo5KOZGD0o81yB
	aoUtiaqgU2I4PryjHb8YSnz/MNQlVklXpsydp8tggKaJTK8bkwCnlODOa0Vyvcq8UFDcMdnolviUp
	ikOPFM0SVQ7uVY1EVQvPd+d1W70ZS8ScCh4CzMxc24dRW1XJm5eCgyoF9reqE1P2kc3gw7bE7Op5W
	GsMXOMXHy0CUJa32bub4qvhCrVmQtCORqU+6x5c7o2t61D1ukLHZIhttqkKTm4nZtvGuP/1Y9f8C4
	yZ3WWu3V6yOajGCYr5Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbFO-0006HL-AZ; Wed, 17 Jun 2020 16:49:10 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEZ-0005gJ-7w; Wed, 17 Jun 2020 16:48:20 +0000
Received: by mail-ej1-x644.google.com with SMTP id gl26so3100867ejb.11;
 Wed, 17 Jun 2020 09:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HbW3NKNom8juXI2NoyDjAEEkKyRH9dumXigRxuvNwKY=;
 b=E5U6u+FwDamT/5MzUtw3K/1BEM1ZTiyttyrXEl1+8zSQWpBSc0B5FR4bIUQ1tonPZh
 tQ7Sq8engNniJfbizfbR8YisCx9Ora1eTcK48UUUNsPyrrmYz7ttfMJUyDIqWfREp4x0
 LT8uHcaKqqvZF70IgYU99gHaQCxC2cfAXiDO8ImYxJjaG5GtJKZ3Hfb1Q6NlVdmDbaZ8
 QDB11E5nYjm0cIK1jEV4D3ONYHyoB5X7seBi/J8PU31002wRNLpWLEKw0yPRy0NRsvSu
 nNp3fHo+x13H8YaQjGCkZbkO7eOeT90xaWFXuPE4kus7VDD8rQXbpeNqcWSXDawp1WUA
 c/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HbW3NKNom8juXI2NoyDjAEEkKyRH9dumXigRxuvNwKY=;
 b=etEqcT0QBR1KgbkqKKBmIJis44srw+QMHpmXVRhvwgC1KcbGUFxwqzQ+ZPDSM0Gtdi
 ZIPz2LzjxEjbCk7mhYR6EUzw2rOfwwEkK71L9BTaUqqHaLM+B7Us/ADrp+kp1mGjctKg
 Jv9m9AVFWuMNgqVLEQTO5k1hdMlDuQnT94XXVqokohtQDW7jHXVsEJjV2f4PMll2WEH3
 9s2RT9VDb91RQx37KSuMbx9hO2drcaekuDYzS2MS6bQwIj23ESl2U4xt6OoOJyBR5IIo
 K7xceqpATetJ23r4RmRSl3j3dXvetanLTq+MqbFNUoY7+pHimjVp4+PuwzBcU74c1qgH
 qY7w==
X-Gm-Message-State: AOAM5338GajagqCzvDalEsbfTdlZh22ZrDvuSt9zeKIvNdiCSZQiaJ50
 AxfyC3haLibYStPm7Wkx8vA=
X-Google-Smtp-Source: ABdhPJzPdiDhZzkiIEvfyQqMk9m00A48c6U0WPQZgrYyBMDstasrSBdif/z88ONABd5SplNm1UNgmA==
X-Received: by 2002:a17:907:9484:: with SMTP id
 dm4mr106072ejc.56.1592412497436; 
 Wed, 17 Jun 2020 09:48:17 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:17 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 02/11] arm: dts: owl-s500: Add Clock Management Unit
Date: Wed, 17 Jun 2020 19:48:02 +0300
Message-Id: <9dba1e4d779be27594859ea71131624bb20b1618.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094819_282561_8F934F8B 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIENsb2NrIE1hbmFnZW1lbnQgVW5pdCBmb3IgQWN0aW9ucyBTZW1pIFM1MDAgU29DLgoKU2ln
bmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAZ21haWwu
Y29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLmR0c2kgfCAxNCArKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2R0cy9vd2wtczUwMC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAu
ZHRzaQppbmRleCAxZGJlNGU4YjM4YWMuLjVkNWFkOWRiNTQ5YiAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvb3dsLXM1MDAuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9vd2wtczUw
MC5kdHNpCkBAIC01LDYgKzUsNyBAQAogICogQ29weXJpZ2h0IChjKSAyMDE2LTIwMTcgQW5kcmVh
cyBGw6RyYmVyCiAgKi8KIAorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL2FjdGlvbnMsczUw
MC1jbXUuaD4KICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0t
Z2ljLmg+CiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvb3dsLXM1MDAtcG93ZXJnYXRlLmg+
CiAKQEAgLTcwLDYgKzcxLDEyIEBAIGhvc2M6IGhvc2MgewogCQkjY2xvY2stY2VsbHMgPSA8MD47
CiAJfTsKIAorCWxvc2M6IGxvc2MgeworCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKKwkJ
Y2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4PjsKKwkJI2Nsb2NrLWNlbGxzID0gPDA+OworCX07CisK
IAlzb2MgewogCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMiOwogCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKQEAgLTE2OSw2ICsxNzYsMTMgQEAgdWFydDY6IHNlcmlhbEBiMDEyYzAwMCB7CiAJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCWNtdTogY2xvY2stY29udHJvbGxlckBiMDE2
MDAwMCB7CisJCQljb21wYXRpYmxlID0gImFjdGlvbnMsczUwMC1jbXUiOworCQkJcmVnID0gPDB4
YjAxNjAwMDAgMHg4MDAwPjsKKwkJCWNsb2NrcyA9IDwmaG9zYz4sIDwmbG9zYz47CisJCQkjY2xv
Y2stY2VsbHMgPSA8MT47CisJCX07CisKIAkJdGltZXI6IHRpbWVyQGIwMTY4MDAwIHsKIAkJCWNv
bXBhdGlibGUgPSAiYWN0aW9ucyxzNTAwLXRpbWVyIjsKIAkJCXJlZyA9IDwweGIwMTY4MDAwIDB4
ODAwMD47Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
