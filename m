Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA62721A5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:Date:From:
	Message-Id:Resent-Cc:Resent-To:Resent-From:Resent-Message-ID:Resent-Date:
	Reply-To:Content-ID:Content-Description:Resent-Sender:In-Reply-To:References:
	List-Owner; bh=gD0oEx+c/b30ofg7K6SSHINlRN8ZgSpDN7SB6QXdkvU=; b=BczEPz213sjHQ1
	NIMrai6iBqwUqYNB9xSLomRZ/FsOPo1yTd842VsDO2+IAtoAocRwU6JyDZLM8FJcS8w2pqXQyhcs4
	9nB13LDvLO4eybzjyBul0qb5A2dBL+49Eij5GzUkguZRjLFY6J6PiHjtD7e46j7vPFKT7lUVyml26
	dv9jCyqmXJrm83FIB9hMVOUtJFtUxOKkN+pN4mkZVJVJubhA4SdntYX9dbJZ8CSm/e4/5pFjvz6a6
	8jAdImbnabTdgmmSV+a9bEI5UcxF0/yy2rdrD3NDNypIAhJi7N/ZdLmGFDe4TiJO7WqBEpZpq1iq3
	NpZ2L9QUZoqxIMQclVlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReYw-0007NZ-Tg; Fri, 17 May 2019 15:14:22 +0000
Received: from office2.cesnet.cz ([195.113.144.244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReYp-0007N8-BV
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 15:14:17 +0000
Received: from localhost (unknown [IPv6:2001:718:1:2c:b857:3b01:efce:a0f4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id C476A400052;
 Fri, 17 May 2019 17:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2; t=1558106046;
 bh=bfV57d10wcqf7H95D2gSCdfW0nuAS5TKLwlxiomENus=;
 h=Resent-Date:Resent-From:Resent-To:Resent-Cc:From:Date:Subject:To:
 Cc;
 b=sj5583ZJG+BIiUf3ziwzKsSZ0PntmQEUSWi4SHu9Kg8iELGxJaKhtoTdi31geOYDF
 t0bEAosLGpCD+oAgq86d1ikZSL/GT0zqvZL/r0yS5hu44z9XwpfLqvHkLm5v+IR04X
 /qU4Z8CYrTgCRCiLfJyib/jESjaWVezk3czb01yo=
Resent-Date: Fri, 17 May 2019 17:14:00 +0200
Resent-Message-ID: <1589e764-be47-4ce8-98cc-37aa8ea6a85b@cesnet.cz>
Resent-From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
Resent-To: <linux-arm-kernel@lists.infradead.org>
Resent-Cc: Baruch Siach <baruch@tkos.co.il>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Message-Id: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
From: =?UTF-8?q?Jan=20Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>
Date: Fri, 17 May 2019 17:01:42 +0200
Subject: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
MIME-Version: 1.0
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_081415_696437_C32CD74C 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.144.244 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29tcGFyZWQgdG8ga2VybmVsIDUuMSwgcGF0Y2hlcyBtZXJnZWQgZm9yIDUuMiBhZGRlZCBzdXBw
b3J0IGZvciBBMzh4JwpQSFkgZ3VhcmRlZCBieSBhIGNvbmZpZyBvcHRpb24gd2hpY2ggd2FzIG5v
dCBlbmFibGVkIGJ5IGRlZmF1bHQuIEFzIGEKcmVzdWx0LCB0aGVyZSB3YXMgbm8gZXRoMSBhbmQg
ZXRoMiBvbiBhIFNvbGlkIFJ1biBDbGVhcmZvZyBCYXNlLgoKRW5zdXJlIHRoYXQgQTM4eCBQSFkg
aXMgZW5hYmxlZCBvbiBtdmVidS4KClNpZ25lZC1vZmYtYnk6IEphbiBLdW5kcsOhdCA8amFuLmt1
bmRyYXRAY2VzbmV0LmN6PgpDYzogQmFydWNoIFNpYWNoIDxiYXJ1Y2hAdGtvcy5jby5pbD4KQ2M6
IEdyZWdvcnkgQ0xFTUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4uY29tPgpDYzogUnVzc2Vs
bCBLaW5nIDxybWsra2VybmVsQGFybWxpbnV4Lm9yZy51az4KQ2M6IERhdmlkIFMuIE1pbGxlciA8
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KQ2M6IE1heGltZSBDaGV2YWxsaWVyIDxtYXhpbWUuY2hldmFs
bGllckBib290bGluLmNvbT4KLS0tCiBhcmNoL2FybS9jb25maWdzL212ZWJ1X3Y3X2RlZmNvbmZp
ZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vY29uZmlncy9tdmVidV92N19kZWZjb25maWcgYi9hcmNoL2FybS9jb25maWdzL212ZWJ1
X3Y3X2RlZmNvbmZpZwppbmRleCA0OGY3YjQyNzdiOGQuLjNhYzJlODRmZGVhYSAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vY29uZmlncy9tdmVidV92N19kZWZjb25maWcKKysrIGIvYXJjaC9hcm0vY29u
Zmlncy9tdmVidV92N19kZWZjb25maWcKQEAgLTEzMSw2ICsxMzEsNyBAQCBDT05GSUdfTVZfWE9S
PXkKICMgQ09ORklHX0lPTU1VX1NVUFBPUlQgaXMgbm90IHNldAogQ09ORklHX01FTU9SWT15CiBD
T05GSUdfUFdNPXkKK0NPTkZJR19QSFlfTVZFQlVfQTM4WF9DT01QSFk9eQogQ09ORklHX0VYVDRf
RlM9eQogQ09ORklHX0lTTzk2NjBfRlM9eQogQ09ORklHX0pPTElFVD15Ci0tIAoyLjIxLjAKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
