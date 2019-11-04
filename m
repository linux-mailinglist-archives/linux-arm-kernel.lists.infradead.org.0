Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0890EED70E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:40:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lluxaQews9ExiDoj0a0xB/3dz1zui664glDagF3sz8E=; b=Y4RmKxLXobe4KI
	IwxGmnpjvXU7VM8WpRJQp/3kEcjdmFHADPmuu2tEOMWzrMCG49myl+yZv+zBskLihwfD2a3UJCdx+
	jlq2kuLbwfw8KLW2iDaGyZuzc6kPa9NFO0Jva3WgXhutMLHFTerucO0CcXOyenauZcWf7QgUIsDc7
	90+fVPE97LjKN3PbaEEvIA8jP5MuwQZ3sBatMIdT9RFkCCePUw7LqnXRUF4hUGWoJK1OOeQeuUeKj
	2UOOC1DBEmqX0GziCrPLvIlL3zGDL5Szr/tCqpT0jsMKkhh6GC9t/puGMyqc3NlnGif4ey0pTBOkr
	/5VPwc16gfp/YSRcFfmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRME-0003JS-Lg; Mon, 04 Nov 2019 01:40:38 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRM5-0003Hm-G7; Mon, 04 Nov 2019 01:40:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 81A9CB1AC;
 Mon,  4 Nov 2019 01:40:26 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 3/7] arm64: dts: realtek: rtd1295: Add Mali node
Date: Mon,  4 Nov 2019 02:39:28 +0100
Message-Id: <20191104013932.22505-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191104013932.22505-1-afaerber@suse.de>
References: <20191104013932.22505-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_174029_679699_5312C764 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kgfCA4NSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDg1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUuZHRzaQppbmRleCA5M2YwZTFkOTc3MjEu
LjYxYWE0ZjQ3YzcwYiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOTUuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNp
CkBAIC02OSw2ICs2OSw5MSBAQAogCQkJICAgICA8R0lDX1BQSSAxMAogCQkJKEdJQ19DUFVfTUFT
S19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+OwogCX07CisKKwltYWxpX29wcF90YWJs
ZTogZ3B1LW9wcC10YWJsZSB7CisJCWNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7
CisKKwkJb3BwQDYyMDAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDYyMDAwMDAwMD47
CisJCQlvcHAtbWljcm92b2x0ID0gPDExMDAwMDA+OworCQl9OworCisJCW9wcEA2MDAwMDAwMDAg
eworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw2MDAwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9
IDwxMTAwMDAwPjsKKwkJfTsKKworCQlvcHBANTgwMDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRz
LyA2NCA8NTgwMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8MTA3NTAwMD47CisJCX07CisK
KwkJb3BwQDU2MDAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDU2MDAwMDAwMD47CisJ
CQlvcHAtbWljcm92b2x0ID0gPDEwNzUwMDA+OworCQl9OworCisJCW9wcEA1NDAwMDAwMDAgewor
CQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw1NDAwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDwx
MDUwMDAwPjsKKwkJfTsKKworCQlvcHBANTIwMDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2
NCA8NTIwMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8MTAyNTAwMD47CisJCX07CisKKwkJ
b3BwQDUwMDAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDUwMDAwMDAwMD47CisJCQlv
cHAtbWljcm92b2x0ID0gPDEwMDAwMDA+OworCQl9OworCisJCW9wcEA0NjAwMDAwMDAgeworCQkJ
b3BwLWh6ID0gL2JpdHMvIDY0IDw0NjAwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDwxMDAw
MDAwPjsKKwkJfTsKKworCQlvcHBANDQwMDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8
NDQwMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8MTAwMDAwMD47CisJCX07CisKKwkJb3Bw
QDQwMDAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAwMD47CisJCQlvcHAt
bWljcm92b2x0ID0gPDEwMDAwMDA+OworCQl9OworCisJCW9wcEAzODAwMDAwMDAgeworCQkJb3Bw
LWh6ID0gL2JpdHMvIDY0IDwzODAwMDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDw5NzUwMDA+
OworCQl9OworCisJCW9wcEAzNDAwMDAwMDAgeworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwzNDAw
MDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdCA9IDw5NzUwMDA+OworCQl9OworCisJCW9wcEAzMDAw
MDAwMDAgeworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwzMDAwMDAwMDA+OworCQkJb3BwLW1pY3Jv
dm9sdCA9IDw5MDAwMDA+OworCQl9OworCX07CisKKwlzb2MgeworCQltYWxpOiBncHVAOTgwNTAw
MDAgeworCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtbWFsaSIsICJhcm0sbWFsaS10
ODIwIjsKKwkJCXJlZyA9IDwweDk4MDUwMDAwIDB4MTAwMDA+OworCQkJY2xvY2tzID0gPCZjbGtj
IFJURDEyOTVfQ0xLX0VOX0dQVT47CisJCQljbG9jay1uYW1lcyA9ICJjb3JlIjsKKwkJCXJlc2V0
cyA9IDwmcmVzZXQxIFJURDEyOTVfUlNUTl9HUFU+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDY3IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJICAgICAgICAgICAgIDxHSUNfU1BJIDY4IElS
UV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJICAgICAgICAgICAgIDxHSUNfU1BJIDY2IElSUV9UWVBF
X0xFVkVMX0hJR0g+OworCQkJaW50ZXJydXB0LW5hbWVzID0gImpvYiIsICJtbXUiLCAiZ3B1IjsK
KwkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8Jm1hbGlfb3BwX3RhYmxlPjsKKwkJCSNjb29saW5n
LWNlbGxzID0gPDI+OworCQl9OworCX07CiB9OwogCiAmYXJtX3BtdSB7Ci0tIAoyLjE2LjQKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
