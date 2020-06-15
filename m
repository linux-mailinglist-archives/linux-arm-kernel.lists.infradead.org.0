Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242211F933F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgOGQ6RpDCo5wYE6ZEvQ0D/QEuxrbifR6HKOp0fI5uY=; b=GxgSO1LCnDyPAB
	sentu35D2N175r+tNTBI0CkDgO3fp/TH7wkX6LIj58rPqJNkIj4t4OcusR4usYd3hAzx2kQc+K48z
	2NoR5AghlXcw313he9gSE67vSTTPh8K6LmL5W8kxJvI6Tgo8QSsP7HsUNUKQMKjm6+xgOxLw2nY8X
	t7JJe4vN1b+bQJPFTuvrPI5/87Nf9rrMqfL8BMkWAb6XVY4G5hipMsLDaiSmP4etbLkuwv527qFxQ
	0cLnYd+XReMQ15G/0f7UbWxvKEktUbmTCYpRMQBDwGBN1G5FOUVMARq/wAuiosw9jENT/sgdxWi21
	IYoA0cdaQ6TWLspIn43A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklL1-00007a-LN; Mon, 15 Jun 2020 09:23:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl7k-0006pV-Qu
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:10:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so16221298wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1afpgiZSkCxScwIQYbqgkLwgpZTvEZ/sJp0E5CNcZ5k=;
 b=cSmicChqdnE/e5/HZWkV5Ec8+/awIFZcgGpkuyXPE8uc+KtRLP0YySLje0t5aSUxVZ
 XW/9637BuD4zITAyTfIPHOIE20qGjB0fNrTBimoAJz28OMhRq94sfJwbr4CSARuVQio7
 VLVv6HjVjYLAreZ8NOXbHp44wxRq68NNLMWlYLnk2krkN4exeCL6mOkR3cDQOVT+4LIh
 A/Rfr0fERe4PiFozP9SE/bjOcMDmX8moj8HP0p3qklDEa9T565a1gu/avyBec7fCaNzp
 vhAI+FfWDJ50ESVxF/wMAYraTG5be3VsH20+8me+VWu7d5SxwrF8HlL8bBLA+UYklj2W
 6NGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1afpgiZSkCxScwIQYbqgkLwgpZTvEZ/sJp0E5CNcZ5k=;
 b=V3QSdgj9bQfRKuRSm/n5L6++2HNnM8KYVUAAdAW/heCWQinfJ/EDubnHtmuVUjs5BX
 s7FJJRkaatljTvW56jN1IsV6HwkdkvpsTKCeVo3uL/8SjKcA3rZjTRu94A/UPqDZoiDc
 LBMVqzIL+uXWhQvaI+t4Sq2vTeFMHM9hO/aIClk9654CCuAdWziatVuL1W2ltrWGnwBv
 4sWacjraKhS5j3Xk6t13qWp2J3gjce7JC3EU9XeC4pjdRckAgexLEYbw8pGrcS1bfIp9
 j1MlbMnAjMBFBf3XNrKUPrvDkjan/q42PTdMDHW/lmKsCb50wfE4/Jhy8Qc9jVe09UZ6
 oCng==
X-Gm-Message-State: AOAM533o9MhdtYZM/fUWpuMew8YLf1udrmmE7Jqlhw61kVWba2FnVb92
 K6e/GUTDCE57jJiXfui326BMX8sB2D3ZUw==
X-Google-Smtp-Source: ABdhPJyp/2xEDiDre/+ebYIfeT5x+ZslI9jh9sWzEs31ZYpZ305FIggGes5hxs4301Map+pqWXX70g==
X-Received: by 2002:a5d:67c8:: with SMTP id n8mr27924127wrw.343.1592212187536; 
 Mon, 15 Jun 2020 02:09:47 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id z7sm23109370wrt.6.2020.06.15.02.09.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:09:47 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] spi: bcm63xx-spi: allow building for BMIPS
Date: Mon, 15 Jun 2020 11:09:41 +0200
Message-Id: <20200615090943.2936839-3-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090943.2936839-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020948_915433_4A8C9746 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

YmNtNjN4eC1zcGkgY29udHJvbGxlciBpcyBwcmVzZW50IG9uIHNldmVyYWwgQk1JUFMgU29DcyAo
QkNNNjM1OCwgQkNNNjM2MiwKQkNNNjM2OCBhbmQgQkNNNjMyNjgpLgoKU2lnbmVkLW9mZi1ieTog
w4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KLS0tCiB2Mjogbm8g
Y2hhbmdlcwoKIGRyaXZlcnMvc3BpL0tjb25maWcgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9LY29u
ZmlnIGIvZHJpdmVycy9zcGkvS2NvbmZpZwppbmRleCA4ZjFmOGZjYTc5ZTMuLmE5ODk2ZTM4ODM1
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvS2NvbmZpZworKysgYi9kcml2ZXJzL3NwaS9LY29u
ZmlnCkBAIC0xNDksNyArMTQ5LDcgQEAgY29uZmlnIFNQSV9CQ00yODM1QVVYCiAKIGNvbmZpZyBT
UElfQkNNNjNYWAogCXRyaXN0YXRlICJCcm9hZGNvbSBCQ002M3h4IFNQSSBjb250cm9sbGVyIgot
CWRlcGVuZHMgb24gQkNNNjNYWCB8fCBDT01QSUxFX1RFU1QKKwlkZXBlbmRzIG9uIEJDTTYzWFgg
fHwgQk1JUFNfR0VORVJJQyB8fCBDT01QSUxFX1RFU1QKIAloZWxwCiAJICBFbmFibGUgc3VwcG9y
dCBmb3IgdGhlIFNQSSBjb250cm9sbGVyIG9uIHRoZSBCcm9hZGNvbSBCQ002M3h4IFNvQ3MuCiAK
LS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
