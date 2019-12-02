Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C2A10F2AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMAcVLsWeAisxSQtlqBQsbXvfQLZkgbcFN0ea/amHrY=; b=BWVtbTApxJ4ngK
	qURx4Oim0k1dd+4jsmrCVrKEiMbK9gt7sCyPhBWcch+7diigVwimoENVLcMVSwWWb0/1xJ+oXEy9r
	eU3Iy2ph+2wmkKb1uW4Ko3IKsA5TEKGiBpOc+K2loAe3dhGqIHsUm3dLrSlg6MkyNu7RIj1MFCZMo
	sqjb6gM/zchnQXtWRGBa9hbVJIxv0cJQpNBl0+J834T8qSw2Pj3v/kA9qnB8sqOTunLckmN88zIyC
	6u8ajQrUaosADdOIF3XgSIQa6VzVxcP24sO1S17/KT4WVc8J+d13Ab/Lbn1BIaXcka+80bDD+i3r+
	48SlVMSzXVUiJ1t6QK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtq3-0000DK-LZ; Mon, 02 Dec 2019 22:06:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtpD-0007tz-Re; Mon, 02 Dec 2019 22:05:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9523AB2F1;
 Mon,  2 Dec 2019 22:05:46 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 4/5] arm64: dts: realtek: rtd129x: Add SB2 sem nodes
Date: Mon,  2 Dec 2019 23:05:34 +0100
Message-Id: <20191202220535.6208-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202220535.6208-1-afaerber@suse.de>
References: <20191202220535.6208-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_140548_031766_58FFD9CD 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Cheng-Yu Lee <cylee12@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERUIG5vZGVzIHRvIFNCMiBmb3IgaGFyZHdhcmUgc2VtcGFwaG9yZXMgaW4gUlREMTI5NSBT
b0MgZmFtaWx5LgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNl
LmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgfCAxNCAr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQppbmRleCAzOWFlZmU2NmE3OTQuLjkzYWI2
ZmRkMDNkNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXgu
ZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCkBAIC0x
OTMsMyArMTkzLDE3IEBACiAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJfTsKIH07CisKKyZzYjIg
eworCXNiMl9oZF9zZW06IGh3c3BpbmxvY2tAMCB7CisJCWNvbXBhdGlibGUgPSAicmVhbHRlayxy
dGQxMTk1LXNiMi1zZW0iOworCQlyZWcgPSA8MHgwIDB4ND47CisJCSNod2xvY2stY2VsbHMgPSA8
MD47CisJfTsKKworCXNiMl9oZF9zZW1fbmV3OiBod3NwaW5sb2NrQDYyMCB7CisJCWNvbXBhdGli
bGUgPSAicmVhbHRlayxydGQxMTk1LXNiMi1zZW0iOworCQlyZWcgPSA8MHg2MjAgMHgyMD47CisJ
CSNod2xvY2stY2VsbHMgPSA8MT47CisJfTsKK307Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
