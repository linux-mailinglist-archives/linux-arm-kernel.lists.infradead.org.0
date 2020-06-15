Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA6F1F90F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d91c7zL8yt3kcK8EXXK0bFjyMW5jwtEoF92s0EnvoIc=; b=cKrFEpH17EeJ9m
	JxA08SkOWNzXvoR4qiuRcDOfIWcb5esm1kpM56g85YUR0/PGb4dJ8vzD9OErNycoa+FvMxvhvw5L/
	LLFBAaFBFd2LzM3r0BCbZAXXPi1Gw+nAGNjGVrW1+wKGQRufamR25N/yVTm4wpYsnE1vDHnCOrSe2
	wR3Rx+FeGNcyaL5wXSs9UXNJlLwS2fo1klfO3laknKwcimfQH3cC0nUeDKjZEsr/3YtPyp+HRLAGf
	MaX/l5c2rCoBgon+rV81cttpzkm/3c3Kcage/PkpDWy9aWAbTOzA6hpUnNe+4t6zFdPxxR4DU/QAj
	jCpTn2505ORz8iJ25Gow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkk6B-0007qB-Uv; Mon, 15 Jun 2020 08:04:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkk5L-0007A1-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:03:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id l26so13620158wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gdBft9EbSQxaFcZTBWSVvkfUii6hPWZmZod51XcwM3g=;
 b=g0xVjqvB6k9fvH6NGm+kO1T5wfZO8l3HKdzO0wSQSvO2LpekjvxflpTQDNAIQwNFao
 CkC2YMDv0ekrfG7O72j4wUaOThC9p2xN7Tme5DBv+m+tVSh7ZrzvlkDbEBOZ7ifa9usK
 JiwaiM2Dr8wZX+5MtOVp+PPFMUJf+zc5KIexFxEwW31/CM2AWYgZCg46reKbT1t3Gfgh
 4Gq8r9CvsBhuWMUMYuGX62d25dJ8CzujSjfQjRUapV+wxzqtu+AYvmTD7jpQJWmoeA8I
 qgqBqONep8a3VQZFmNc5KlCL+2UFCM1nojOHZrNSX8rYNo2XpEZG02QzWTp7NngeiSmy
 r9gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gdBft9EbSQxaFcZTBWSVvkfUii6hPWZmZod51XcwM3g=;
 b=pLxMFMRZLIh8c7T+HmQLHUZv9V8FPhilQLG+bvGWxmi0VjBfCt7VHdURsE04u6r6cE
 qGJbnwkRjb83Qplhmu5aCa41jccMEBzgiUkDDHfKAkKxMF/IMwUVn5VBhjMSYcs+IULq
 ajUaIAZZhGhR4zxNjwdWLW2npnDAfZ8NcpqpYdIt/OdYVO8kyVfmqiVoJ9cenu4tWBGb
 IL0k4C/erw5jtt3VOOxv4L5ecr81KyY6pss9tUXjrMsDdRNnwcTkPoKYqqv9yu0e4Cnd
 LBn9o4Pu7mA7U7uTP2q2ALk8/LnynLm2MYMkUUkZihwP0CFdL0sXn3NfQ5N6ekEb5XiP
 Ms0w==
X-Gm-Message-State: AOAM5329FY03GnuXiwwEP/b9OrlA2liCx3dY06jVl2t6JrfR7SXaHoHi
 SAzDZ8K8/YXzFum3Kqpby5Q=
X-Google-Smtp-Source: ABdhPJwYOlEd8lleqkaydTaZ9E0KnDTQorRKqyyOV9fUtb2vgr76+4VExaNKd9kXu5f/DzFqlcXUeA==
X-Received: by 2002:a7b:cf2c:: with SMTP id m12mr11782506wmg.70.1592208194668; 
 Mon, 15 Jun 2020 01:03:14 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id d9sm23107054wre.28.2020.06.15.01.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 01:03:14 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] spi: bcm63xx-hsspi: allow building for BMIPS
Date: Mon, 15 Jun 2020 10:03:09 +0200
Message-Id: <20200615080309.2897694-5-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615080309.2897694-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_010316_007303_CB2FA45D 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIGRyaXZl
cnMvc3BpL0tjb25maWcgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9LY29uZmlnIGIvZHJpdmVycy9z
cGkvS2NvbmZpZwppbmRleCBhOTg5NmUzODgzNTUuLjUwMDc3NGZlMTM1MSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zcGkvS2NvbmZpZworKysgYi9kcml2ZXJzL3NwaS9LY29uZmlnCkBAIC0xNTUsNyAr
MTU1LDcgQEAgY29uZmlnIFNQSV9CQ002M1hYCiAKIGNvbmZpZyBTUElfQkNNNjNYWF9IU1NQSQog
CXRyaXN0YXRlICJCcm9hZGNvbSBCQ002M1hYIEhTIFNQSSBjb250cm9sbGVyIGRyaXZlciIKLQlk
ZXBlbmRzIG9uIEJDTTYzWFggfHwgQVJDSF9CQ01fNjNYWCB8fCBDT01QSUxFX1RFU1QKKwlkZXBl
bmRzIG9uIEJDTTYzWFggfHwgQk1JUFNfR0VORVJJQyB8fCBBUkNIX0JDTV82M1hYIHx8IENPTVBJ
TEVfVEVTVAogCWhlbHAKIAkgIFRoaXMgZW5hYmxlcyBzdXBwb3J0IGZvciB0aGUgSGlnaCBTcGVl
ZCBTUEkgY29udHJvbGxlciBwcmVzZW50IG9uCiAJICBuZXdlciBCcm9hZGNvbSBCQ002M1hYIFNv
Q3MuCi0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
