Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AB2FC414
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:26:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2e6/Do/Plx7JLCFNh7XxhuLXKJq3WQJXtKeV9/B2eG0=; b=TTf+NhC/SI/X52
	BqVkILJuNHz/85g4et+DunRnJrRq36ozWJll/NyHD4kuFj/DNGDLrZy2ZlSI7Le6/Z1COfrieA8CO
	4XPniIgvDRwSu7hJt3ka7WmZFVT2+DdYPH5s3/+gBk7DNpBNo5tBzIEow+uuHCaAaAyB0WrhPpSr3
	dTqVULPQVkMxJzlF9Woopgbco9//ghivOMxqo2PsnYJb4Fras5lGzqQ9zk7MbnYHPjz4PThRBePfq
	pJuumCPWpLYkVrRn3yo1BBH5fiz6maA2mQ5K6/TpHoBwnKp5IFIqt09GQBfVWLlV463qAaMAdDERX
	Lpa6ByjTs3n7tvT9ZPAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCKE-0002rM-Vq; Thu, 14 Nov 2019 10:26:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCK7-0002qk-IP
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:26:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id t26so5266526wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 02:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5QQkiyfzZO2O0Kn6D38HEznmusWSb/9VZvRrhnG4JLA=;
 b=co1B+/+ltAMnsmoBwd4JgvR/KtXsDV8+5+UxJFQOW8QNurGkzGwXyx1U9DUuvVXqa4
 zrU4kxD10p3llVczeauQFnatEE1dcTYITHp8eQkRGHlVjo6plnlPbRFEKeXsJno4bRWt
 frrJYScCJY2qe5U2mMAgiA3p9e/lcKlaSYtbY7G3f2LQOUqqb20mZJbyLvvY87/2EojP
 oB5clBhqIIreSQq/0IlPm3oBBvlinEK60Q+YAYIux7W65UQBYrfMvwe1nvrLSqyg3CXz
 qDAlyphz0sonJrZCDBSmYyne0HIbak400tgHqAnE6NSmjNdymIw9XgueA4PULyLMkFFg
 BLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5QQkiyfzZO2O0Kn6D38HEznmusWSb/9VZvRrhnG4JLA=;
 b=n3iMzU9fjWLCDWYlwq7mx3b79edMBvii10QdODt/7pYpt0dMzlF5upkSNtJq8Bg4X9
 IFli8vmHv2AqSSsvD191s2TCN+HZRo7D9r5vY3TWQ43PnzjhuG8Ajj4MSUNOnJzy6h6q
 MAbqCv3hojvtR5sUiRzJnU/LlAubSpeqAC+N3CfUpI5LabtNVSSnquS0E+72cNEvU97r
 dqumOj1w+DqXYSPk5Fr5R1VJNdGwfsxTxj5Cer5+c42qpADKgmqwpCCPNe21yKDAcn6Q
 EceOzcCuXBhN8fzNZn5ujnrQFgCWPV34mc49PHu+afsmYN7VNCE9utlV2OnysnwiIZ+w
 864Q==
X-Gm-Message-State: APjAAAU3idqA3MQ7zL14q5uB2FqVEVxIBrja3iNr/EhC37hf0PKQa9gJ
 Jz4WxjKxPcLEyBHSA56aGMn2/WJzImE=
X-Google-Smtp-Source: APXvYqwGumQBol47N7qad3Jy0q4/6MzSwtzAuP1DUrwstDzDwNUQ7a3eb1WO2niC+5ixCUFNyNVauw==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr6848002wmi.118.1573727157443; 
 Thu, 14 Nov 2019 02:25:57 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id r2sm2964832wma.44.2019.11.14.02.25.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 02:25:56 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH] arm64: dts: allwinner: h6: Enable USB 3.0 host for Beelink
 GS1 and Tanix TX6
Date: Thu, 14 Nov 2019 11:25:41 +0100
Message-Id: <20191114102541.27361-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_022559_633070_BBDE195F 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIFVTQiAzLjAgcGh5IGFuZCBob3N0IGNvbnRyb2xsZXIuCgpWQlVTIGlzIGRpcmVjdGx5
IGNvbm5lY3RlZCB0byBEQ0lOIDVWIGFuZCBkb2Vzbid0CnJlcXVpcmUgdG8gYmUgc3dpdGNoZWQg
b24uCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29t
PgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgfCA4ICsrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtdGFuaXgtdHg2LmR0cyAgIHwgOCArKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LWJlZWxpbmstZ3MxLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKaW5kZXggZTVlZDFkNGJmZWY4Li5kYmYzNTNjZDI2YzEg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVs
aW5rLWdzMS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LWJlZWxpbmstZ3MxLmR0cwpAQCAtNzYsNiArNzYsMTAgQEAKIAlzdGF0dXMgPSAib2theSI7CiB9
OwogCismZHdjMyB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJmVoY2kwIHsKIAlzdGF0dXMg
PSAib2theSI7CiB9OwpAQCAtMjkxLDMgKzI5NSw3IEBACiAJdXNiMF92YnVzLXN1cHBseSA9IDwm
cmVnX3ZjYzV2PjsKIAlzdGF0dXMgPSAib2theSI7CiB9OworCismdXNiM3BoeSB7CisJc3RhdHVz
ID0gIm9rYXkiOworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi10YW5peC10eDYuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LXRhbml4LXR4Ni5kdHMKaW5kZXggYmNjZmUxZTY1YjZhLi4wYjYzNjFhNWMxNzIg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5p
eC10eDYuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10
YW5peC10eDYuZHRzCkBAIC00NSw2ICs0NSwxMCBAQAogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAK
KyZkd2MzIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmZWhjaTAgewogCXN0YXR1cyA9ICJv
a2F5IjsKIH07CkBAIC0xMDIsMyArMTA2LDcgQEAKICZ1c2IycGh5IHsKIAlzdGF0dXMgPSAib2th
eSI7CiB9OworCismdXNiM3BoeSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
