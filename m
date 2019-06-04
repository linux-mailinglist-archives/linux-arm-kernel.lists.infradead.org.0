Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BE634D88
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpGm7uP1Z74Fw2fCp8cpdtI/fIYo6P9eMps8cHuEk5o=; b=U+WasJNh7REN75
	VEPf+TeDTwe/Kq7E2sQhlr8DeWHvhTpHItB4oCJpGfAT4VescJJr69vSfSwr+r8boGkckiA/4FNM4
	lTAcmRMO9zMHw+df56x1KNh48rxdp5w75NEEwTSYNYvkah5t30bvpdAlDveXz8Ui2FfHWYgR0rgAv
	WhPEUISL3wNbddyZquQ5zqc8YdIqQTCnGxjhNS1X7Hk+oKf4mZh1N2UK/xL6/HewvriuCXQ00M5Nb
	GaPti21CmQ8lCS5dZZM8cBK3c8HTZxN1PDehxEkyWH7Y3UtWK9KahZ0mWooLBm4Xw3PWS7LVGLRnp
	E5aX7oPGacV/GSEsEGJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCN7-0001Tw-Sz; Tue, 04 Jun 2019 16:33:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKM-0006as-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so11266191wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZFHFRMwqhia+MVch9pKGgEBNeKukD3ZLzLQ+6+PB9fg=;
 b=UtWAy/s+q+oOrOGO9ddEb8t2OEIfKzvD69ZeZVZ5v/jTkNNG0s2Fv02hKMNkhfmLEB
 nEJSyqLMvoCfJr5kOm2zxQ1dxurFm99V33Ti0NLVgqHvJjKkmCZDGe3ty5Jde3wIRNhD
 ubh3UALjiGOSUot57QvMF9tYkCT+mu3GA1xBjBHtQY5IDnOVAreEB1iX9E55C+A9l9vG
 Crny42MKSkmkPxFGyi+TlsxgVevgXY8NmcQeRtJftAYgGcl+nZRTenDf4lqV1q+Re4KL
 TRPzTOazfppgw4xKjQMCPgSXlRmnCvMcu0pFKiQ1YmGwm3C8HSiRDU8lwuIvz/vJb0Xu
 omyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZFHFRMwqhia+MVch9pKGgEBNeKukD3ZLzLQ+6+PB9fg=;
 b=NcvrpH7QpGR213IYVv8bn+75mlqhzaGdZpZDOm4iyogquA9zO3XoM+NAvvse8Jlcx4
 MHMb/fjP+yIgVsOmAHZJ9+Wjwa2lrJVcgofNn3NFAX5lraGjwifzqtbEBuOoTiJFKi2K
 Dxh+raARFTf0UjzOHV7zRJ3LuYR1BIt2fPNkMT7B/lwFWhM5W8r9B4vVW4p5/vl5fYEe
 nAo2/EuAWh0hg4Dhvvddu8rr+LlNCAeAE2J392k8Uww1MqKLcAjM+yM5qPE/0ba9v5SY
 vGcYly/1MtvPrBwecwly7dlGIM6I2/uYHRZtX36uWggMOKePXpywiKfY/HfM8t4dDHyR
 /ndA==
X-Gm-Message-State: APjAAAXsY6O+zB55LKN2Sq4Wr/pEbBOgEvWXTpu/y1AO7PL3Us1QqPBb
 anG/OTjJQK/p2+Z725iMWOY=
X-Google-Smtp-Source: APXvYqxN5FxMq3dstg70O5Vq9/ZTLRvXIVMei8vJ5wsTOXTBnMS5w/jM6SkXPVj8JCNy1EBZfeqFwA==
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr12031486wrw.349.1559665820930; 
 Tue, 04 Jun 2019 09:30:20 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:20 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 13/13] arm64: defconfig: Enable IR SUNXI option
Date: Tue,  4 Jun 2019 18:29:59 +0200
Message-Id: <20190604162959.29199-14-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093022_974963_BC0350A9 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENPTkZJR19JUl9TVU5YSSBvcHRpb24gZm9yIEFSTTY0LCBzbyB0aGF0IEFsbHdpbm5l
ciBBNjQvSDYgU29DcwpjYW4gdXNlIHRoZWlyIElSIHJlY2VpdmVyIGNvbnRyb2xsZXIuCgpTaWdu
ZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgpBY2tlZC1i
eTogU2VhbiBZb3VuZyA8c2VhbkBtZXNzLm9yZz4KLS0tCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZwppbmRleCA0ZDU4MzUxNDI1OGMuLjUxMjgwMjkxMDBkMiAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZworKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
CkBAIC00NjAsNiArNDYwLDcgQEAgQ09ORklHX1JDX0NPUkU9bQogQ09ORklHX1JDX0RFQ09ERVJT
PXkKIENPTkZJR19SQ19ERVZJQ0VTPXkKIENPTkZJR19JUl9NRVNPTj1tCitDT05GSUdfSVJfU1VO
WEk9bQogQ09ORklHX01FRElBX1NVUFBPUlQ9bQogQ09ORklHX01FRElBX0NBTUVSQV9TVVBQT1JU
PXkKIENPTkZJR19NRURJQV9BTkFMT0dfVFZfU1VQUE9SVD15Ci0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
