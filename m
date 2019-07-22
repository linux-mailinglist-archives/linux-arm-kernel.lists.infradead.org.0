Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B379E709A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfLNGfBL4x4ynp69hT8Gaa/kvY2JCkmYS0j3EEF7d9Q=; b=A+yDOAF/nK8P5T
	uNmELilFY69duUUAv7KorMgaAd5FjP0WBFNPf/eSAei218up4Xx4esWcSb7efnCD97wxDHQarXGMP
	Rap0dNY3NrzI/8elg1XGcz1Sik9960ms2O1AZPR9PMwDS7l/AX5A9XQgFw3JK1awndtMF6yMRxKPn
	KALphPJmL52XYBMjYoZj4T5uro4RM6dTOk6X/EbURIvjHVpxZ2m0qU9B0rWFNZOPLdB0Fw1n9OnjD
	HkXrG7IE0VGqi+5F7YN+csOrvDMPKVUpyNNeW5Ku7bcjONOHlnYGqbQQamDqLUHR25QlnZpQLrfv8
	1o1n97uM6Ql/u1clCEFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdux-0000vt-O0; Mon, 22 Jul 2019 19:24:15 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdtA-00009u-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:22:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so38694906ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dMFpXLyuKl/ARSHo20Q9Hq9vNpRSPEtnIGWgcelt85w=;
 b=in21JgjdGrZF9LtT8nCi8uhPjZ0unyb6VwBZ3uDKYSva7WjusxgOq7TA6502tKUufi
 3I42F0w//h3VKKzlNRU8t+ewOCpb+f1Y+PONiycPofWqJP4XK+QLRsFTe2NRY6h6sTe9
 /TK22wxi6RF9r1mFRezHTjbxUGxUXGyVjo5FAS3Qibu71WQ9EGl92qjrCIXoPodtfTRB
 l1dyzM+/iqCEYB/zGo96vv8JXxqxthAFmCApqbKSa16X9JAzOH/ZPz8mkBbarAJZ66+H
 bbw9bMCuQJjtuOgmTqygOrraskmfqZ7kuWuxxzb6PzjaoVnlhLbM1Mpkfy3Yfx0kuzZt
 rdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dMFpXLyuKl/ARSHo20Q9Hq9vNpRSPEtnIGWgcelt85w=;
 b=VtRMgkkeq6lrwdLImxvpN+2dq2E2l/qe+SYdq95uOxvyrVOkydgb79Ndnxo4wcguaG
 f/cGkeREaww9WiNrpn1N6beJTAgYajQM2OQGMTD3Wq0h9b3j1HQ8oeIhAZScLG7h+jJz
 2vNNBUPVd+2ZkTCiyyrffr9qNhtvN2BEOnNna6R/nIx2gLjAkobIfmi05TC1nsMQBqcf
 ie4rTkwybm/+a+t9v5DRqZ6DQrIl7q5ssQTjsTaNT6mG6PipZRnqrPqMpznSYqq1vPr9
 5YBBew6RaZA2FTC55AAWAR2UEnBjaCzFFrkFfEtVuRUiBykCVWWxMFy6CSBHld+yfroO
 l3fA==
X-Gm-Message-State: APjAAAVrsoOFAGO02c+BG0B7g+Jhh4saY3YHrhs+/MRf137ZNGvjVseL
 oXUC9YFlTIKR75+vAZHmRMs=
X-Google-Smtp-Source: APXvYqwZG9xAwevycV1eqLHdjNT7UInKyPe6n8YOGoJQBBJFUwfNpUWf3hvH8YyXA1xFOeQeDX4TBw==
X-Received: by 2002:a2e:894a:: with SMTP id b10mr32119358ljk.99.1563823343029; 
 Mon, 22 Jul 2019 12:22:23 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id n124sm6129307lfd.46.2019.07.22.12.22.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 12:22:22 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v6 3/3] serial: imx: get rid of imx_uart_rts_auto()
Date: Mon, 22 Jul 2019 22:22:11 +0300
Message-Id: <1563823331-5629-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563823331-5629-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563823331-5629-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_122224_765311_4B6FF900 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2FsbGVkIGluIG9ubHkgb25lIHBsYWNlLCBmb3IgUlMyMzIsIGl0IG9ubHkgb2JzY3VyZXMgdGhp
bmdzLCBhcyBpdApkb2Vzbid0IGdvIHdlbGwgd2l0aCAyIHNpbWlsYXIgbmFtZWQgZnVuY3Rpb25z
LAppbXhfdWFydF9ydHNfaW5hY3RpdmUoKSBhbmQgaW14X3VhcnRfcnRzX2FjdGl2ZSgpLCB0aGF0
IGJvdGggYXJlClJTNDg1LXNwZWNpZmljLgoKQWNrZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClJldmlld2VkLWJ5OiBTYXNjaGEgSGF1ZXIg
PHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+ClRlc3RlZC1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5vdiA8c29yZ2Fub3ZA
Z21haWwuY29tPgotLS0KIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDIxICsrKysrKysrLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIGIvZHJpdmVycy90dHkv
c2VyaWFsL2lteC5jCmluZGV4IDA1OWJhMzUuLmQ5YTczYzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
dHR5L3NlcmlhbC9pbXguYworKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKQEAgLTQwMiwx
NyArNDAyLDYgQEAgc3RhdGljIHZvaWQgaW14X3VhcnRfcnRzX2luYWN0aXZlKHN0cnVjdCBpbXhf
cG9ydCAqc3BvcnQsIHUzMiAqdWNyMikKIAltY3RybF9ncGlvX3NldChzcG9ydC0+Z3Bpb3MsIHNw
b3J0LT5wb3J0Lm1jdHJsKTsKIH0KIAotLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFu
ZCBpcnFzIGNhbGxlciBkZXBlbmRlbnQgKi8KLXN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19hdXRv
KHN0cnVjdCBpbXhfcG9ydCAqc3BvcnQsIHUzMiAqdWNyMikKLXsKLQkvKgotCSAqIE9ubHkgbGV0
IHJlY2VpdmVyIGNvbnRyb2wgUlRTIG91dHB1dCBpZiB3ZSB3ZXJlIG5vdCByZXF1ZXN0ZWQgdG8g
aGF2ZQotCSAqIFJUUyBpbmFjdGl2ZSAod2hpY2ggdGhlbiBzaG91bGQgdGFrZSBwcmVjZWRlbmNl
KS4KLQkgKi8KLQlpZiAoKnVjcjIgJiBVQ1IyX0NUUykKLQkJKnVjcjIgfD0gVUNSMl9DVFNDOwot
fQotCiAvKiBjYWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFrZW4gYW5kIGlycXMgb2ZmICovCiBzdGF0
aWMgdm9pZCBpbXhfdWFydF9zdGFydF9yeChzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0KQogewpAQCAt
MTYwNCw4ICsxNTkzLDE0IEBAIGlteF91YXJ0X3NldF90ZXJtaW9zKHN0cnVjdCB1YXJ0X3BvcnQg
KnBvcnQsIHN0cnVjdCBrdGVybWlvcyAqdGVybWlvcywKIAkJZWxzZQogCQkJaW14X3VhcnRfcnRz
X2luYWN0aXZlKHNwb3J0LCAmdWNyMik7CiAKLQl9IGVsc2UgaWYgKHRlcm1pb3MtPmNfY2ZsYWcg
JiBDUlRTQ1RTKQotCQlpbXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOworCX0gZWxzZSBp
ZiAodGVybWlvcy0+Y19jZmxhZyAmIENSVFNDVFMpIHsKKwkJLyoKKwkJICogT25seSBsZXQgcmVj
ZWl2ZXIgY29udHJvbCBSVFMgb3V0cHV0IGlmIHdlIHdlcmUgbm90IHJlcXVlc3RlZAorCQkgKiB0
byBoYXZlIFJUUyBpbmFjdGl2ZSAod2hpY2ggdGhlbiBzaG91bGQgdGFrZSBwcmVjZWRlbmNlKS4K
KwkJICovCisJCWlmICh1Y3IyICYgVUNSMl9DVFMpCisJCQl1Y3IyIHw9IFVDUjJfQ1RTQzsKKwl9
CiAKIAlpZiAodGVybWlvcy0+Y19jZmxhZyAmIENSVFNDVFMpCiAJCXVjcjIgJj0gflVDUjJfSVJU
UzsKLS0gCjIuMTAuMC4xLmc1N2IwMWEzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
