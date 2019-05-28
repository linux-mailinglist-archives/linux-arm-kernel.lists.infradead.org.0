Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96712CB9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXSXY7ervhPH56yOCG0PP2PCXUnb4YuMVNAOtpbJVIk=; b=GVwyJ1qROGtFJ0
	++dcrTCzZNPlu2DdeaNwjj8eGKuoGfBfzeo7WFLbD07+jCIvpl7eD5y0WdPkXL1vFpi2ikRRM6SEX
	h+OT1MQa9576EQlkPvgdm66dpEihvzU3xw9hzVA5ak5MfB25dEhvWrOjQllW81g2oACkARUDsvquV
	ypGNT23t1QhSX0kVw5eBicdIwe/a2S9S9t+cpEg3pFde9Hr7J0SqeLOXH+xeQY4kGb/TA4S3C3IbV
	0MwBNvTPQQ4maoQbMZ0DhMzZ295fo+IPNyY2a+eXj3E3gpRQiW57K2ZSe2g0arlBH/hBYJYpsata/
	9Foclh+3EiJW0/I47M4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVemv-0003Vt-6j; Tue, 28 May 2019 16:17:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeko-0000ga-1m
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id 15so3524011wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ky+CVe/5shquKmn2x9Mkd4t0sluqJy1OgxXU5TLlF8Y=;
 b=E3Lep2geQq3zVSCzebhNkS3T9inq3OCueWMHe4pDmLcsO1M0O0vD3a0CDoF92LLXwO
 Nz5TQgnw1xrjeY2Au1f3rWtJsEzTIlU0mLfWa1rwN06OekvVmhYkXclZN0LdwsZiPwgt
 KMclb5s2kOOk233GeXOT+bAH3AK8Eip8RTaA1Eo4BGdR4Wx/tYpoA+1ikhdeVrFbXug6
 yclYK2mjqAm4FTrUjHrm9Q2SZLJocPLbYAk8W+7ArF8Y3uRgzaWTXMkpE0GqTu9yxGD4
 5Tap0nfXEO9LVnkwe1ZCpp0Gwst8F2h7VQxP6iidYVptlYtXTPDtrZjKcsDNahCwXu9x
 hlcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ky+CVe/5shquKmn2x9Mkd4t0sluqJy1OgxXU5TLlF8Y=;
 b=OxO6pV8T0Ja5HgYgOHc2rKRaFtK28SsiOYLAM2XN2/XfXCuY9TIYDFdwIzwYzRsa/X
 WU7BQ4jCfVKGQoz+il5gzdSnIlzOgrF5e14Svf2RGwz4+TOFsqe8Aw+Ju6ebEkIK6t+K
 BwtWiESpWY12Lp+yGl61tu5g1fMuqSrparHdbB23b7pHZkpq3vmZBg2ZgJWAP6+/HGWU
 OVH2rVhFLUUv2BKbvxprqK//JAXJiPggTdBTH6p3mcN94tNzsrwPTfctlzed/o6AbpMM
 15XzFqMZuYG3gyNAM8Sg2cKFDxu6zHO/LL9S4zHvKBywtEfZ/n1Xbzoz4MguuBocLBeX
 bYdA==
X-Gm-Message-State: APjAAAWpMXyTeBw82FEcEXescb7J8Yw0pd5dyAlWbz3qA/pPF710ieLD
 OJirpt+CERPElUdWrqXG+as=
X-Google-Smtp-Source: APXvYqwSx3LBjIiXJlHZ0KEyW3LlJCkYvmLFLaa0jci2PbxVYuIlNtgU3EY60lhlduo6pyd6PZ0MyQ==
X-Received: by 2002:a1c:730d:: with SMTP id d13mr3665311wmb.88.1559060108493; 
 Tue, 28 May 2019 09:15:08 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.15.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:15:07 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 12/12] arm64: defconfig: enable IR SUNXI option
Date: Tue, 28 May 2019 18:14:40 +0200
Message-Id: <20190528161440.27172-13-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091510_712491_4840B58E 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENPTkZJR19JUl9TVU5YSSBvcHRpb24gZm9yIEFSTTY0LCBzbyB0aGF0IEFsbHdpbm5l
ciBBNjQvSDYgU29DcwpjYW4gdXNlIHRoZWlyIElSIHJlY2VpdmVyIGNvbnRyb2xsZXIuCgpTaWdu
ZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFy
Y2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgYi9hcmNo
L2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IDRkNTgzNTE0MjU4Yy4uNTEyODAyOTEwMGQy
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCisrKyBiL2FyY2gvYXJt
NjQvY29uZmlncy9kZWZjb25maWcKQEAgLTQ2MCw2ICs0NjAsNyBAQCBDT05GSUdfUkNfQ09SRT1t
CiBDT05GSUdfUkNfREVDT0RFUlM9eQogQ09ORklHX1JDX0RFVklDRVM9eQogQ09ORklHX0lSX01F
U09OPW0KK0NPTkZJR19JUl9TVU5YST1tCiBDT05GSUdfTUVESUFfU1VQUE9SVD1tCiBDT05GSUdf
TUVESUFfQ0FNRVJBX1NVUFBPUlQ9eQogQ09ORklHX01FRElBX0FOQUxPR19UVl9TVVBQT1JUPXkK
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
