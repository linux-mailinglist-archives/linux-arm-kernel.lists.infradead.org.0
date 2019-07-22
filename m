Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589166FC0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQQJrY3As+NeBsrD0/S6kY7ui++8QCsGA8daaxGustw=; b=j8aDTyW/y+V4gd
	ZI33PihY3waLcbBoGtR9xy9YF3GWroXeo9HVwkPgOy1QdWw3g36RUGMRHaitlEnUdu2YMXmx4qo6i
	0lMQhGH9DtGc2dJicTQNjF85/UYPUntdU/XS7qYJ9CHtYlW6Q7KzpDzuo5fpK8QSprhgtXmSYxSNQ
	Yrn1Q2a86SS0+kpME9jjcvk7YkJXXTbM9E9wdSj6G3tXWv91RA8M6SKF+tPV01ryvJjf5zTvFlc/B
	NCQRHafACkPAX5uVG3OZ/f4OlHBFv6/tg/OTDsYGzqDT/LCD/pR+8FyWz82db8vsqI3OA+Wlp+a6s
	5ZpfmXIwxXwlJbi9KlkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUXX-0006yM-8l; Mon, 22 Jul 2019 09:23:27 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUWV-0005Z0-M6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:22:25 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so36837390ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HA2f/ifCDrGNgMEk+3HGOD0y69BKIfJxvyiY4pBfCgE=;
 b=rkiUfHF7VO9LHPZzsQsdyww5l9RzJLCGBPEXFixUlamFHpcZviC1GyG+PGFCV1kfV5
 2pw/X06gPcEtd2xBNg4sYqs6Galcx91JalyNsJXvnA0cyf2tmcWAy+OaHTEnTrHKAp81
 UQmhlLZ03gKxTuSeE0Sg7s3/Wd9ugLfkJfc+MXWEo+d9e7s+h5872OBuSF57/+BjrXVt
 QYdVjb67iC0uqfvACfS/8hHNPJou1yuRG3SoM6UOSqqyG3EKll/rUuGa2YOEKyGoUAyv
 XVE+cTY7SdA2AkRVY+1O22dRjkAcB21FJ8OfqjiR1bQ1ofYDvag8nYU3hy5gRLYOgKKg
 yZxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HA2f/ifCDrGNgMEk+3HGOD0y69BKIfJxvyiY4pBfCgE=;
 b=V8ntcaF2IwZesdSPT7p23m1XgF41MrIh/4ShhYtBqsGIqsRaIAkphzeDaFSH6L3z/h
 2D5TjgCAhnNAycAXv4v/1lMgFUtf0Iqwv4DHbZwF6a3+HYIYoCB+k65nTM+3oUP+6J+D
 O0MABZ6X1woT+V/2Ouw1B2f7jKItXB/2BT25IElLjO8oGbUEU54WFjZGDd7yfJYp7dIa
 Z06AUSvzXiEfrwFPa9/tdvKI1Z4O3O379TCy92r7/6wadOirQNOkuwY/oXIZCfxr/xNl
 bYa/BQsMSx4Lp3eeHTxxoL0fFJMCoEEDFDYpgKqPQrp7M1SAVYNsLnoDtmKf3dKB/3Pk
 I4zw==
X-Gm-Message-State: APjAAAU2jKXQlWDckB78XipMwsrq9Y7QIlqPtEUgmyqIbG4VTyOVma0/
 vDogs4tTh80TlwTvkxg+Rd4=
X-Google-Smtp-Source: APXvYqwHAC3dvb2De+mxHlgp8DFhqzN74V36dBGcVrQ3LpNHmBSOnGLfnvFLH5JXbGLQHaiAKsyRTQ==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr35899636ljg.191.1563787341958; 
 Mon, 22 Jul 2019 02:22:21 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id b68sm8425088ljb.0.2019.07.22.02.22.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 02:22:21 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v5 2/3] serial: imx: set_mctrl(): correctly restore autoRTS
 state
Date: Mon, 22 Jul 2019 12:22:09 +0300
Message-Id: <1563787330-1394-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563787330-1394-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563787330-1394-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_022223_723833_1C771588 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

aW14X3VhcnRfc2V0X21jdHJsKCkgaGFwcGVuZWQgdG8gc2V0IFVDUjJfQ1RTQyBiaXQgd2hlbmV2
ZXIgVElPQ01fUlRTCndhcyBzZXQsIG5vIG1hdHRlciBpZiBSVFMvQ1RTIGhhbmRzaGFrZSBpcyBl
bmFibGVkIG9yIG5vdC4gTm93IGZpeGVkIGJ5CnR1cm5pbmcgaGFuZHNoYWtlIG9uIG9ubHkgd2hl
biBDUlRTQ1RTIGJpdCBmb3IgdGhlIHBvcnQgaXMgc2V0LgoKUmV2aWV3ZWQtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClJldmlld2VkLWJ5OiBT
YXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+ClRlc3RlZC1ieTogU2FzY2hhIEhh
dWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5v
diA8c29yZ2Fub3ZAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDE2
ICsrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyBiL2RyaXZl
cnMvdHR5L3NlcmlhbC9pbXguYwppbmRleCAzMmYzNmQ4Li4wNTliYTM1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCkBA
IC05NzQsMTAgKzk3NCwyMiBAQCBzdGF0aWMgdm9pZCBpbXhfdWFydF9zZXRfbWN0cmwoc3RydWN0
IHVhcnRfcG9ydCAqcG9ydCwgdW5zaWduZWQgaW50IG1jdHJsKQogCWlmICghKHBvcnQtPnJzNDg1
LmZsYWdzICYgU0VSX1JTNDg1X0VOQUJMRUQpKSB7CiAJCXUzMiB1Y3IyOwogCisJCS8qCisJCSAq
IFR1cm4gb2ZmIGF1dG9SVFMgaWYgUlRTIGlzIGxvd2VyZWQgYW5kIHJlc3RvcmUgYXV0b1JUUwor
CQkgKiBzZXR0aW5nIGlmIFJUUyBpcyByYWlzZWQuCisJCSAqLwogCQl1Y3IyID0gaW14X3VhcnRf
cmVhZGwoc3BvcnQsIFVDUjIpOwogCQl1Y3IyICY9IH4oVUNSMl9DVFMgfCBVQ1IyX0NUU0MpOwot
CQlpZiAobWN0cmwgJiBUSU9DTV9SVFMpCi0JCQl1Y3IyIHw9IFVDUjJfQ1RTIHwgVUNSMl9DVFND
OworCQlpZiAobWN0cmwgJiBUSU9DTV9SVFMpIHsKKwkJCXVjcjIgfD0gVUNSMl9DVFM7CisJCQkv
KgorCQkJICogVUNSMl9JUlRTIGlzIHVuc2V0IGlmIGFuZCBvbmx5IGlmIHRoZSBwb3J0IGlzCisJ
CQkgKiBjb25maWd1cmVkIGZvciBDUlRTQ1RTLCBzbyB3ZSB1c2UgaW52ZXJ0ZWQgVUNSMl9JUlRT
CisJCQkgKiB0byBnZXQgdGhlIHN0YXRlIHRvIHJlc3RvcmUgdG8uCisJCQkgKi8KKwkJCWlmICgh
KHVjcjIgJiBVQ1IyX0lSVFMpKQorCQkJCXVjcjIgfD0gVUNSMl9DVFNDOworCQl9CiAJCWlteF91
YXJ0X3dyaXRlbChzcG9ydCwgdWNyMiwgVUNSMik7CiAJfQogCi0tIAoyLjEwLjAuMS5nNTdiMDFh
MwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
