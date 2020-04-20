Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9300A1B0C2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfWRsgv3ftpPcN0GJI6aSeuRDEFsFrPwRMwV0Di4qgU=; b=AqIxFVpNA+mfBS
	dBjmAH+cfadNBReHYiTIB6OhMR507+Eumbaa0qXxI+FFB9RBWT6xpel5piNoWyN5Er/sa+2xU7OX9
	uboei07UWbs2+ewUuajfMDm824aylF2/4sk903H6Na7fHhN1CtIoCId+X1TaoTpJXFlgZGswO72aW
	/Q5ZgbOY8hHm5YymGl5k03fhutne/mgN1fJHaLQ5YgzcpRpEhzygh6fGbM/bRcZUq4zQGRrPbME7S
	hYh6nHThebcMLyxVzBFSPcnRj0keWx01ImRYy3sYuuZR6+PA9P7oLXApiO+dunKnG3KCIjMPxD4bs
	A8/NuTNezwZuk22lDKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW3W-0004E5-CQ; Mon, 20 Apr 2020 13:01:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2J-0003HD-Ct
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so10896436wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETKn5k65i8M5k8rygdWEKhtzpcpoZWZs8fff2gycZGA=;
 b=LQk1tBzN2LE1TUTnMmo9+vKVOb0sjwhPUhcBE+5JyXh4lbqAB4OeZnyGjVeAQCVLcx
 zfLPoz+cQOLbQrja6EbVn0PUVxvLVLIt5IelawvQXutLYqdG/Yto1hFyBypwhhO7Chky
 oJk+nd7w3D9EnVWa7pbyD3wMpk0uqe/lFtImOy6tcPnFhsKF1hVZ4JbKtLdkcwNnlc6q
 fExU1fAA4CKtj0aD5prBkdgpmfUhpAgLYAkk9CvmzeChkf3LT8G2YLbWOWsEV71yYJ0K
 syovj2jlIk3EtJh8IBaK+zXSIjoJaFv2MHZkHcsrL4iBPqIqJ24lCSn5sI4gBVu8iCVS
 jaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETKn5k65i8M5k8rygdWEKhtzpcpoZWZs8fff2gycZGA=;
 b=ECW2G0O6fs0moiCCh4G5A6g8GRCNYSaHLJueYOzfhm5gzUlLiz+QzDv+wpRewZvF2r
 BQxXTbHHhoMXytaSBZ8YIOGpCSiKI31w4E1n0KdFt0CWMNcRHtu3bjanyd8t7Cx5hd6A
 Lsaq84D/twEaNoQqR+n7mzTFrckH1roCFYya49NA2ipuoN6Bj+i65N0/yzjIj9ZrBP//
 dYAyRhLZVcnDSnCE03+AFJT/ZOA3cBnqbSWtZ3E0sTopLX/eNlnw6eJLz9Dc9nfv+aso
 Q9EPMRRo3iim0/FvU995oIyplAWCD2kDVzclkonHr7aHer4rIHDfaj5YpI3hdIcBQ3b+
 94+Q==
X-Gm-Message-State: AGi0PubIQ+Umc+QUUtzlN2GJ60SNKSDYWI711zGgXZA/Yvzp9wi+H9hH
 GUMYtIbtcITktd9anDnby7A=
X-Google-Smtp-Source: APiQypKiqBVB/X6OED7sVzobaA2CI10ThKFaGr1tgPAoCEcP9piYQe9S9tYLgk1XBCiUBmTT6lbHtg==
X-Received: by 2002:a05:600c:28e:: with SMTP id
 14mr8029958wmk.79.1587387630041; 
 Mon, 20 Apr 2020 06:00:30 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:29 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 5/9] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Beelink GS1
Date: Mon, 20 Apr 2020 15:00:17 +0200
Message-Id: <20200420130021.3841-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060031_476698_3B695CFB 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBCZWVsaW5rIEdTMS4KClRoaXMgbmVlZHMgdG8gY2hh
bmdlIHRoZSBDUFUgcmVndWxhdG9yIG1heCB2b2x0YWdlIHRvIGZpdAp0aGUgT1BQIHRhYmxlLgoK
QWxzbyBhZGQgdGhlIHJhbXAtZGVsYXkgaW5mb3JtYXRpb24gdG8gYXZvaWQgYW55IG91dCBvZiBz
cGVjCnJ1bm5pbmcgYXMgdGhlIHJlZ3VsYXRvciBpcyBzbG93ZXIgYXQgcmVhY2hpbmcgdGhlIHZv
bHRhZ2UKcmVxdWVzdGVkIGNvbXBhcmUgdG8gdGhlIFBMTCByZWFjaGluZyB0aGUgZnJlcXVlbmN5
LgoKVGhlcmUgaXMgbm8gc3VjaCBpbmZvcm1hdGlvbiBmb3IgQVhQODA1IGJ1dCBzaW1pbGFyIFBN
SUMgKEFYUDgxMykKaGFzIGEgRFZNIChEeW5hbWljIFZvbHRhZ2Ugc2NhbGluZyBNYW5hZ2VtZW50
KSByYW1wIHJhdGUgZXF1YWwKdG8gMjUwMHVWL3VzLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzIHwgOSArKysrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwppbmRl
eCA4ZjA5ZDIwOTM1OWIuLjNmN2NlZWIxYTc2NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cworKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCkBAIC00LDYgKzQs
NyBAQAogL2R0cy12MS87CiAKICNpbmNsdWRlICJzdW41MGktaDYuZHRzaSIKKyNpbmNsdWRlICJz
dW41MGktaDYtY3B1LW9wcC5kdHNpIgogCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlv
Lmg+CiAKQEAgLTc3LDYgKzc4LDEwIEBACiAJfTsKIH07CiAKKyZjcHUwIHsKKwljcHUtc3VwcGx5
ID0gPCZyZWdfZGNkY2E+OworfTsKKwogJmRlIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwpAQCAt
MjM0LDcgKzIzOSw4IEBACiAJCQlyZWdfZGNkY2E6IGRjZGNhIHsKIAkJCQlyZWd1bGF0b3ItYWx3
YXlzLW9uOwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDgxMDAwMD47Ci0JCQkJcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47CisJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTE2MDAwMD47CisJCQkJcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJ
CQkJcmVndWxhdG9yLW5hbWUgPSAidmRkLWNwdSI7CiAJCQl9OwogCkBAIC0yNDIsNiArMjQ4LDcg
QEAKIAkJCQlyZWd1bGF0b3ItZW5hYmxlLXJhbXAtZGVsYXkgPSA8MzIwMDA+OwogCQkJCXJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDgxMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3Zv
bHQgPSA8MTA4MDAwMD47CisJCQkJcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJCQkJ
cmVndWxhdG9yLW5hbWUgPSAidmRkLWdwdSI7CiAJCQl9OwogCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
