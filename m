Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DBC1FA975
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8KHZJq3ci9EVy1o+YOr5KldMT0NYdr3b1TrWnvjymQ=; b=T/tPJD5xtwXP4y
	I++7AKPXW3Lf0N3VyfUTnsoNF8yODZfevJGEeMk8gwOJhwW/5qWpp36iKvUEv0v2k0YjAEtVDQQio
	qLOZn5HA6A2TuBRrXLM6UppuWEUeCyzhcfQ3WqDJnhtt0ml+8ef8YxyuC++h0jTunvl/vVtpUnezQ
	5qQ/No+A4LbbIvTd/0GQjmChLEuIPxdb94mZD/gHdvbfQcLo6fqaFefcPGRhFp/ztqhDFlkZtO0Rc
	In6AirhgQzmG9xne/J5uiOjXg9+Ev33aZHAGKI7RL9HUWMrSC39sLFwkwC5Hh3C2MWQ9MstlP59kn
	g82QSGaCu6IZseymq3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5dE-0000ft-Hf; Tue, 16 Jun 2020 07:03:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5c8-0008DK-D9
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:02:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id x13so19517503wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/D6+64ZUdejGJRJMqoRU2x61DrD8mP7AccKlTwbucWk=;
 b=bD+zdCSQk7z5kAoShY/7lCz6ss5FR4L8vQ+PeKjYftWneGl8MwS4iSnkV6zsB2zMeJ
 lXdH4Gaus8NSoD/I/o5/ozLjil4vnSu1jH6d30fdxDgMUDCwth18iC9Q47oqKpISf7jU
 UMAKjGGSYaL/lMBSVnt8ChLimgmN0Zoew0mWrdTs4tFk+QQmrxWBjyQshkxOPVUdHIJJ
 sj97C1l0gSCquhlAjn28m7VaTXcCD72NDmZmvfDbMQl014A28RKWjWH4b0vyx5I8bYXt
 3jUIm4oF3IQuKb32U9YGOVDM0dG1DIMoaIDcDighByeaLdCb6GaU+eIwIBp69dcHE0J2
 iJsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/D6+64ZUdejGJRJMqoRU2x61DrD8mP7AccKlTwbucWk=;
 b=pjo66rIDKQJzvnbF4JX+q1htl+jTls+8EDvzl2AOVxaZFM5bl1vlSddbua2tWwPqJM
 pFQRBOrBzQilqNWUHMc3NAiyKzrIWEhOqwgaS2vdbw+Dk0oOdIZ7PrmCYVnw2eGjZX92
 3AMm833q7brbKiahZtFeSpwvV13q6Geyc/fgS1pOmiwjjKL7Mq207TEL+zIexvE7ShGs
 tAFIIy24jrZBAAiLdgF5zA5//HI5Z3CEKHIPgt5aq0u75IegzFB7w+qr0CnKykWJd13C
 Xldo3cURg1JoGX88E98iUKWwWsn7NeSrWcJzZV+sUyIQjl7T78LAL1RCm6oGuQxGCiR5
 UYPw==
X-Gm-Message-State: AOAM533zFn66Vgz47gsMKZFchiiGVyikXbrUpZdfyanWvPaeFgtLfjy9
 jr1AJTkGxSUsJGag4g7CGjI=
X-Google-Smtp-Source: ABdhPJzi/n7XU1cdxDdzEwN8TxfBEhzsT4SjTrAg4SkW/x5lg2I5SoFzXpF/64QNnsy7GYYj3hzgKw==
X-Received: by 2002:a5d:4d89:: with SMTP id b9mr1542617wru.210.1592290951143; 
 Tue, 16 Jun 2020 00:02:31 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id a81sm2792897wmd.25.2020.06.16.00.02.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:02:30 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/4] spi: bcm63xx-hsspi: allow building for BMIPS
Date: Tue, 16 Jun 2020 09:02:23 +0200
Message-Id: <20200616070223.3401282-5-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616070223.3401282-1-noltari@gmail.com>
References: <20200616070223.3401282-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_000232_448900_C7962612 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YmNtNjN4eC1oc3NwaSBjb250cm9sbGVyIGlzIHByZXNlbnQgb24gc2V2ZXJhbCBCTUlQUyBTb0Nz
IChCQ002MzE4LCBCQ002MzI4LApCQ002MzYyIGFuZCBCQ002MzI2OCkuCgpTaWduZWQtb2ZmLWJ5
OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgpBY2tlZC1ieTog
RmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tLQogdjM6IG5vIGNoYW5n
ZXMKIHYyOiBubyBjaGFuZ2VzCgogZHJpdmVycy9zcGkvS2NvbmZpZyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3BpL0tjb25maWcgYi9kcml2ZXJzL3NwaS9LY29uZmlnCmluZGV4IGE5ODk2ZTM4ODM1NS4u
NTAwNzc0ZmUxMzUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9LY29uZmlnCisrKyBiL2RyaXZl
cnMvc3BpL0tjb25maWcKQEAgLTE1NSw3ICsxNTUsNyBAQCBjb25maWcgU1BJX0JDTTYzWFgKIAog
Y29uZmlnIFNQSV9CQ002M1hYX0hTU1BJCiAJdHJpc3RhdGUgIkJyb2FkY29tIEJDTTYzWFggSFMg
U1BJIGNvbnRyb2xsZXIgZHJpdmVyIgotCWRlcGVuZHMgb24gQkNNNjNYWCB8fCBBUkNIX0JDTV82
M1hYIHx8IENPTVBJTEVfVEVTVAorCWRlcGVuZHMgb24gQkNNNjNYWCB8fCBCTUlQU19HRU5FUklD
IHx8IEFSQ0hfQkNNXzYzWFggfHwgQ09NUElMRV9URVNUCiAJaGVscAogCSAgVGhpcyBlbmFibGVz
IHN1cHBvcnQgZm9yIHRoZSBIaWdoIFNwZWVkIFNQSSBjb250cm9sbGVyIHByZXNlbnQgb24KIAkg
IG5ld2VyIEJyb2FkY29tIEJDTTYzWFggU29Dcy4KLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
