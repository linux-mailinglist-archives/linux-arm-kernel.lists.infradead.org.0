Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D242A545
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1lSus7wyknTLLkOzSov4XEwo1YsDeC5oQAruf7DiFI=; b=lpqEVgAp/HwqXA
	TsGCe/So5FeVbHthtRjzj9xWfyPh1QUMe4Wbbj/XS0mWe8vDfskHEh/Q1WyAhBei6upBV+ro/0xDD
	K6PPLAEz3REan5wqOuK+DRfW1LNasxUZL5iufZBpqYtGeWC8BKYgqg6a89EePJW2odO1qyxlPTyjE
	udJbW/nn8EXMhHsnROBaxNfVdUqX8hYI0sDs9KHlJ2Iw2/ExW0eGFZFSeuOs/pSTt60vr2ezTLuZ3
	x56bW6f1faeTBgjXq/26aHDEpViMeSJUtIM+SbF++oGA5FTvz9JhVmbzJ/XjoNjEAxP7Y6T9DqqaR
	BuZ5hbHEA0C9IXCS25hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZTJ-00072d-KI; Sat, 25 May 2019 16:24:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSM-0005vh-BF
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id t4so4527848wrx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qlop/tLKOAnYug0Dp9+i5+P1xnfuVjpNMnA0jr7cUrU=;
 b=I7TtEChRmmNj6VLSBCmaMIg1zu7RzzR2Ga+g89wPPkAc7JPfiS4+Fg+EMAgbEWdFjf
 InpqE8E/KGCaKzquF3SLe/yF/Yk3D/rfGZXpj0Gecf1DFjtsa/4xb+hKPoP644KGMtU3
 yXb2aN7EZ4xogv4qpSqOsRpSuRa9YeXNbjwGVqBFhWdzDzp0l9hym9Sc4o7ADgtt70NJ
 C/ACW4wRXgVi/Qr0TdwzxeXNpXyVgKKbMZ2iVYEAG0SC7nSfXcnc3eNwAMg9zEWWJ24g
 ggcLwnhi4gR5/SNmgxSm63gbJCes2IZ7tcExC/8g/9qng6fNyULrJuumkr/R2O0JgbtQ
 BTHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qlop/tLKOAnYug0Dp9+i5+P1xnfuVjpNMnA0jr7cUrU=;
 b=RZO4D508UpRZjkwUGvZ1kufds85jwgzbGxtDLlT+5AlhXPa/MNUwByIpTQtpOU7tcK
 /171afUkvCDCClKsalLkszk796IPhjKu5NrG1kYsb5SAi9ngNCK3nQouqRplSbgPluGy
 1FUSXqrrBz+i0K/Z2ez+R9sY3epa5kk7VU14E5qxTibaAsl+qSvsGHknZiWrSaSHGcIc
 skq+5TxGbrBCcl3UuW8u/MLpd09Sv4IpiuwasmMpave9d8CQkJIMvl3PCIKZKN/4yURr
 QmvcOJH1lPcKOC6X4h7dSddtccvZuIDY+IOjg7x+/J4kcyVMCL05zkySTcb82j52QkN6
 D7xQ==
X-Gm-Message-State: APjAAAUiPDJJkukIMKWbhtfSeOCsrgu6DmOl7ionF/MjDT6a3QCRSxFC
 IGVYd9dUC3Gz1tyfai6CzvY=
X-Google-Smtp-Source: APXvYqwCnYLX+Ua7LtZco21uxEOjlg/sf70RxAvq0yiaBVeuxuqAX8O5GRMhgBMAJtNYkNZSW6fLSA==
X-Received: by 2002:adf:aa09:: with SMTP id p9mr14856373wrd.59.1558801416931; 
 Sat, 25 May 2019 09:23:36 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:36 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 5/7] arm64: dts: allwinner: Add SPDIF node for Allwinner H6
Date: Sat, 25 May 2019 18:23:21 +0200
Message-Id: <20190525162323.20216-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525162323.20216-1-peron.clem@gmail.com>
References: <20190525162323.20216-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092338_683510_89323905 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIEFsbHdpbm5lciBINiBoYXMgYSBTUERJRiBjb250cm9sbGVyIGNhbGxlZCBPV0EgKE9uZSBX
aXJlIEF1ZGlvKS4KCk9ubHkgb25lIHBpbm11eGluZyBpcyBhdmFpbGFibGUgc28gc2V0IGl0IGFz
IGRlZmF1bHQuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
IHwgMzggKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRl
eCBmNGVhNTk2YzgyY2UuLjMwN2QzYzg5NmZmMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTgzLDYgKzgzLDI0IEBACiAJCW1ldGhvZCA9ICJz
bWMiOwogCX07CiAKKwlzb3VuZF9zcGRpZiB7CisJCWNvbXBhdGlibGUgPSAic2ltcGxlLWF1ZGlv
LWNhcmQiOworCQlzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gIk9uLWJvYXJkIFNQRElGIjsKKwor
CQlzaW1wbGUtYXVkaW8tY2FyZCxjcHUgeworCQkJc291bmQtZGFpID0gPCZzcGRpZj47CisJCX07
CisKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMgeworCQkJc291bmQtZGFpID0gPCZzcGRpZl9v
dXQ+OworCQl9OworCX07CisKKwlzcGRpZl9vdXQ6IHNwZGlmLW91dCB7CisJCSNzb3VuZC1kYWkt
Y2VsbHMgPSA8MD47CisJCWNvbXBhdGlibGUgPSAibGludXgsc3BkaWYtZGl0IjsKKwl9OworCiAJ
dGltZXIgewogCQljb21wYXRpYmxlID0gImFybSxhcm12OC10aW1lciI7CiAJCWludGVycnVwdHMg
PSA8R0lDX1BQSSAxMwpAQCAtMjczLDYgKzI5MSwxMSBAQAogCQkJCWJpYXMtcHVsbC11cDsKIAkJ
CX07CiAKKwkJCXNwZGlmX3R4X3Bpbjogc3BkaWYtdHgtcGluIHsKKwkJCQlwaW5zID0gIlBINyI7
CisJCQkJZnVuY3Rpb24gPSAic3BkaWYiOworCQkJfTsKKwogCQkJdWFydDBfcGhfcGluczogdWFy
dDAtcGgtcGlucyB7CiAJCQkJcGlucyA9ICJQSDAiLCAiUEgxIjsKIAkJCQlmdW5jdGlvbiA9ICJ1
YXJ0MCI7CkBAIC00MDIsNiArNDI1LDIxIEBACiAJCQl9OwogCQl9OwogCisJCXNwZGlmOiBzcGRp
ZkA1MDkzMDAwIHsKKwkJCSNzb3VuZC1kYWktY2VsbHMgPSA8MD47CisJCQljb21wYXRpYmxlID0g
ImFsbHdpbm5lcixzdW41MGktaDYtc3BkaWYiOworCQkJcmVnID0gPDB4MDUwOTMwMDAgMHg0MDA+
OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDIxIElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJ
Y2xvY2tzID0gPCZjY3UgQ0xLX0JVU19TUERJRj4sIDwmY2N1IENMS19TUERJRj47CisJCQljbG9j
ay1uYW1lcyA9ICJhcGIiLCAic3BkaWYiOworCQkJcmVzZXRzID0gPCZjY3UgUlNUX0JVU19TUERJ
Rj47CisJCQlkbWFzID0gPCZkbWEgMj47CisJCQlkbWEtbmFtZXMgPSAidHgiOworCQkJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJCXBpbmN0cmwtMCA9IDwmc3BkaWZfdHhfcGluPjsKKwkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCX07CisKIAkJdXNiMm90ZzogdXNiQDUxMDAwMDAgewog
CQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LW11c2IiLAogCQkJCSAgICAgImFs
bHdpbm5lcixzdW44aS1hMzMtbXVzYiI7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
