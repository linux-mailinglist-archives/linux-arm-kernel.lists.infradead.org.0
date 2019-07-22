Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE396FC0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5XhvBnw41vUtMTfGIbHGWuMocEBQYfkWmb7uRCkh3Q=; b=laZij/27swJ6Rh
	QpVQdizKwtBbGxBJBHUGxyxuY9FAb9vdDLajx0mfS1Tx02AeC2m/mLWd+op8Avi898M74j9C9OhG5
	wUg92skigEAJuFxsh4i9gUrVcAjGFFuaRNJZUoPPw7ZG7KS1nZ2MXebxbpJPYhODLGzmPfLvicB23
	JT0CgdLFD6tMm31UBrfExplVm84TcReq3+5qpl3FwzEQsIl3VIEuSvn/DreLdI+E0WRlGxmv8ZbxX
	zJOWAUM8QN72cin16ro1XDTv9szEqAATSOf2JTN4Q0vrDjQNFb4ZHACEBcXjC00aTXNd03AW1wFOJ
	AqIG+qH/il4s77WpAPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUX6-0006BB-2b; Mon, 22 Jul 2019 09:23:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUWU-0005Vg-NB
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:22:23 +0000
Received: by mail-lf1-x143.google.com with SMTP id v85so26060376lfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3RZDKKssLiiM+ZqD6fvBMB3Dv9xagAFFHDgU43w8ol0=;
 b=aGw/F/VEZpVAJBDXyA75DL9/4pmrXg1U0JBqRqa3ALjH/myv8cOn4ugMqpL7e/ZPXs
 ZiY1/gZeGfa9UsTNPTKIzZ3yaTKiz3r9eDMJeT6GHtiKdFQ7AkUleGJvItnxkUlEMuD0
 PfbV4HfStoCpoIo1U860aONjccYvVTdwpKMuzOpuELuzlK3Xh7rgJwDUWEALsPdzw2CO
 6czjWGE8ZaoYOoVrOIJASFfsE0BSnzQUbfS6LeIFIp2CEFMH22b5sq0zI9NCCrqCoueL
 Rwz9rJbLnpBuFdxmGjw6V+NOq6qNV0UIjG0IK1dwcmZLbaZ9qrHmM2ZcUV6PaRrG5Hoz
 WkzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3RZDKKssLiiM+ZqD6fvBMB3Dv9xagAFFHDgU43w8ol0=;
 b=LqWcKq+52RHCfgEPk/3cGHkfC0PJrjMN7uOW6aZyOXF+MU3Cxe/Cn4JzyL8Lezrvkj
 T0EptV2uTB/9cFVXq8kvRY8ieDhZpMTPogRMr3969tBYscQWSdbi+cALr2FH9YFSNOWe
 6oUOsyKju4JIh0Fo//FT8VH1GQ99Gpy3QDTliXqjyUtTmGovBRXYj2mEIzipRPUYbdnh
 EsaSEsp+KKqoS0qFuiZ2NEaGZZBHZw6PEexu56KAibUpir4QiIKUdkWRAIU1OhiinhKx
 jwT1siYomfrFVitIFMQA2u7ETfF7PvZwodLQXRqHvbHiR8WWwOCJt0nomjjrHz+SYt/5
 fkXQ==
X-Gm-Message-State: APjAAAXItjrhqjsIy6ZA1BI37GGqaOn2O/bjM51Bn6s7HyJQgEArac4l
 oz2ArOG26CoahDSYBYmi2qI=
X-Google-Smtp-Source: APXvYqzmUDHMeFgXh0O8Zqk1fIKHJ+x0b+A0DiTtGNBtTJNdwDOGg12otmwhbua1bXOTSDzyum6ZbQ==
X-Received: by 2002:ac2:514f:: with SMTP id q15mr31871139lfd.145.1563787341071; 
 Mon, 22 Jul 2019 02:22:21 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id b68sm8425088ljb.0.2019.07.22.02.22.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 02:22:20 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v5 1/3] serial: imx: set_termios(): do not enable autoRTS if
 RTS is unset
Date: Mon, 22 Jul 2019 12:22:08 +0300
Message-Id: <1563787330-1394-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563787330-1394-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563787330-1394-1-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_022222_756608_DECD3A35 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

RG9uJ3QgbGV0IHJlY2VpdmVyIGhhcmR3YXJlIGF1dG9tYXRpY2FsbHkgY29udHJvbCBSVFMgb3V0
cHV0IGlmIGl0CndhcyByZXF1ZXN0ZWQgdG8gYmUgaW5hY3RpdmUuCgpUbyBlbnN1cmUgdGhpcywg
c2V0X3Rlcm1pb3MoKSBzaG91bGRuJ3Qgc2V0IFVDUjJfQ1RTQyBiaXQgaWYgVUNSMl9DVFMKKD1U
SU9DTV9SVFMpIGlzIGNsZWFyZWQuIEFkZGVkIGNvcnJlc3BvbmRpbmcgY2hlY2sgaW4gaW14X3Vh
cnRfcnRzX2F1dG8oKQp0byBmaXggdGhpcy4KClJldmlld2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5p
ZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogU2FzY2hhIEhh
dWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpUZXN0ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5o
YXVlckBwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogU2VyZ2V5IE9yZ2Fub3YgPHNvcmdh
bm92QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgfCA3ICsrKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMK
aW5kZXggNTdkNmU2Yi4uMzJmMzZkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2lt
eC5jCisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwpAQCAtNDA1LDcgKzQwNSwxMiBAQCBz
dGF0aWMgdm9pZCBpbXhfdWFydF9ydHNfaW5hY3RpdmUoc3RydWN0IGlteF9wb3J0ICpzcG9ydCwg
dTMyICp1Y3IyKQogLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFuZCBpcnFzIGNhbGxl
ciBkZXBlbmRlbnQgKi8KIHN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19hdXRvKHN0cnVjdCBpbXhf
cG9ydCAqc3BvcnQsIHUzMiAqdWNyMikKIHsKLQkqdWNyMiB8PSBVQ1IyX0NUU0M7CisJLyoKKwkg
KiBPbmx5IGxldCByZWNlaXZlciBjb250cm9sIFJUUyBvdXRwdXQgaWYgd2Ugd2VyZSBub3QgcmVx
dWVzdGVkIHRvIGhhdmUKKwkgKiBSVFMgaW5hY3RpdmUgKHdoaWNoIHRoZW4gc2hvdWxkIHRha2Ug
cHJlY2VkZW5jZSkuCisJICovCisJaWYgKCp1Y3IyICYgVUNSMl9DVFMpCisJCSp1Y3IyIHw9IFVD
UjJfQ1RTQzsKIH0KIAogLyogY2FsbGVkIHdpdGggcG9ydC5sb2NrIHRha2VuIGFuZCBpcnFzIG9m
ZiAqLwotLSAKMi4xMC4wLjEuZzU3YjAxYTMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
