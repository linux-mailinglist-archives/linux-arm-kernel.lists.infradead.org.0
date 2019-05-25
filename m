Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E8E2A629
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yschQukSDVjvclXM97GdfjaSHo9OGg1Y7UjP5Gk2ugY=; b=ShepyhDyzs5dnv
	zxlzUL19OP7qv+L36p/e+vqV+L+rFk67TONZI0qdt/wYPrv9D1WU5weUAa8AkVnIShxLgoHt5I+0u
	sFp6JdXwnLCMmjZLCKHccsj1py7/MadAlYMJEHEVdmB0pSC+Av0h7sgMppeubPvT4NnDdmH1/Ee0Y
	nHX7z3Mjjkc2VBuPAt1Fu3w/4ZF11KDTcmfxEeFpBWnaKt3GzCRcldQfuFL6th7lTBms+BNJZZv1C
	0iMj3fDgMThIT1ImZ7xkIwwNU2wdTNNKe/f4YUd2ml2ewuTbU0U2uXH3eOh7p7qXY7U1bYBdUsb5M
	TCcnfKCCe+BrkDcGgrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb8q-0001rO-Vx; Sat, 25 May 2019 18:11:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb79-0006qO-Ck
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id u16so9053748wrn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9yizlALmBIg1evYOrtygs5bM3nhy80HW6nhBmx8vV5o=;
 b=KDYkVGwBt9np5vj1gupO3oGNJROg2ll2/dQ5xC7qOaN+72Xlpf/Yq7/luIdkFtPGSs
 JpEdJGF8duITirL29/8Ephca2g9b0f44crShPsQ0wNHEph5kC7QYCLsT8LLgS4n+7i02
 XQ1zWo/qcL+W/YRtBTnl1GXtGelJC1wlMvHXEmA4auUeOMAvwwBh2AsG+CW/2APXQVas
 L4qWWhskb4w8p1bL/Gis9uhGkcwZ+zdujQX26E7usEGSUzpGME5LftpC6PY48M5bZGMv
 V8E8sotkcfv5h4giRocYQhNZXrBj1DClo0RiHboOOp2KDIXklwyWXgIoOmuw+6tA+ftG
 Wbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9yizlALmBIg1evYOrtygs5bM3nhy80HW6nhBmx8vV5o=;
 b=Dze4nbdkTcx1YYWV0hIuLuU1QbGWXw8x/VssZEMJEh0FjHlENeG3AR7qPoCKY7CBUA
 1Z3I6gYJ8IBZdAHuEjc07VV9/FN2pzGOhTKop38+UnX8tCjfeMM9V695yZxr+UJAiYPd
 mjsbao+NlFuyXZHg+1DZWu4zF85WT9KRPLm32ZGd/Cm0ak+2gzZXc7A3U6ACNkHtwPYA
 YuV2krHgnLcHMJSGUNAOqnRtlWnZbRVnoVdE2nUzut9nkiGfpTlVY7Xi6kUKo2YQOmbi
 xwKZSq62VX1+keKMWo/OkJqqunzGdE3qod2sTB5e/3TklNbIypfdFdaOW4tH/ejF3hpB
 pTaA==
X-Gm-Message-State: APjAAAUanCnSPrrbQ4bAnQRtkKhUWzh+e/YBa3rlaeNT1oalqTlVMvuY
 ZBD3HL7JZUVDpiBE/UDnAm4=
X-Google-Smtp-Source: APXvYqyWiQjD7J1uZmNhayabm7YYW9SJjivZB5GGB/8ZpmUVTwr/SfuQeCNrRyLWukwqD8e9koC8JQ==
X-Received: by 2002:a5d:680d:: with SMTP id w13mr27749319wru.316.1558807779883; 
 Sat, 25 May 2019 11:09:39 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:39 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 10/10] arm64: defconfig: enable IR SUNXI option
Date: Sat, 25 May 2019 20:09:23 +0200
Message-Id: <20190525180923.6105-11-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110951_690720_0C8E3AEA 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENPTkZJR19JUl9TVU5YSSBvcHRpb24gZm9yIEFSTTY0LCBzbyB0aGF0IHRoZSBBbGx3
aW5uZXIgQTY0L0g2IFNvQ3MKY2FuIHVzZSB0aGVpciBJUiByZWNlaXZlciBjb250cm9sbGVyLgoK
U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0t
CiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIv
YXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwppbmRleCA0ZDU4MzUxNDI1OGMuLjUxMjgwMjkx
MDBkMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZworKysgYi9hcmNo
L2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCkBAIC00NjAsNiArNDYwLDcgQEAgQ09ORklHX1JDX0NP
UkU9bQogQ09ORklHX1JDX0RFQ09ERVJTPXkKIENPTkZJR19SQ19ERVZJQ0VTPXkKIENPTkZJR19J
Ul9NRVNPTj1tCitDT05GSUdfSVJfU1VOWEk9bQogQ09ORklHX01FRElBX1NVUFBPUlQ9bQogQ09O
RklHX01FRElBX0NBTUVSQV9TVVBQT1JUPXkKIENPTkZJR19NRURJQV9BTkFMT0dfVFZfU1VQUE9S
VD15Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
