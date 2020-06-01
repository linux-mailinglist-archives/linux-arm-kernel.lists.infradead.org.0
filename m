Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360321E9E58
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbLDHVxn83WRPb6q7YanTZjFBvyptQKutGKB+KPLI/Q=; b=V9o0fqB1vVGi/9
	VxBOQ48paz55r3i2iJttlNE25ADB3z55jqyOtfm/xYb+7C831oq0EnRLM10sRMa5FapLSiZJ4nUen
	XG/nUHcaFNNEaR3JMHIVkaqZXqNr/eLP7YKQKVkHOFPYzQnDEnv74v3O8UOG43m7xslAsQCE4Tjh5
	vGhzCy17Cwt78WpDfun4r/V18z7wN9KewFIAxsF+FgZ+TqDRoqgnP1wW8tsE0D6LcOFBg7Tw/GzfZ
	QUwBdAHf1aUtbJsrC90LH9SsE+1HOnuYl7bU6PhIsggfihGY1kXwmQB78Vh79zd91HFxY2KT4/eqW
	8aXwS+uGmVejdlPUxBCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfe1v-0000AT-Kc; Mon, 01 Jun 2020 06:34:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfe1A-0008AS-8P
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 06:33:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 30E052A1937
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 2/4] arm64: dts: hisilicon: hikey: fixes to comply with adi,
 adv7533 DT binding
Date: Mon,  1 Jun 2020 08:33:06 +0200
Message-Id: <20200601063308.13045-3-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
References: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_233352_421385_D3B088E4 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: marex@denx.de, devicetree@vger.kernel.org, michal.simek@xilinx.com,
 xuwei5@hisilicon.com, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkzNjYwLWhpa2V5OTYwLmR0czoKICBEZWZpbmUgYSAncG9ydHMnIG5vZGUgZm9yICdhZHY3NTMz
OiBhZHY3NTMzQDM5JyBhbmQgdGhlCiAgJ2FkaSxkc2ktbGFuZXMnIHByb3BlcnR5IHRvIG1ha2Ug
aXQgY29tcGxpYW50IHdpdGggdGhlIGFkaSxhZHY3NTMzIERUCiAgYmluZGluZy4KCiAgVGhpcyBm
aWxscyB0aGUgcmVxdWlyZW1lbnRzIHRvIG1lZXQgdGhlIGJpbmRpbmcgcmVxdWlyZW1lbnRzLAog
IHJlbW90ZSBlbmRwb2ludHMgYXJlIG5vdCBkZWZpbmVkLgoKaGk2MjIwLWhpa2V5LmR0czoKICBD
aGFuZ2UgcHJvcGVydHkgbmFtZSBzL3BkLWdwaW8vcGQtZ3Bpb3MsIGdwaW8gcHJvcGVydGllcyBz
aG91bGQgYmUKICBwbHVyYWwuIFRoaXMgaXMganVzdCBhIGNvc21ldGljIGNoYW5nZS4KClNpZ25l
ZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29t
PgpBY2tlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9h
cmQuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtleTk2
MC5kdHMgfCAxMSArKysrKysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGk2
MjIwLWhpa2V5LmR0cyAgICB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2ls
aWNvbi9oaTM2NjAtaGlrZXk5NjAuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24v
aGkzNjYwLWhpa2V5OTYwLmR0cwppbmRleCBlMDM1Y2YxOTViMTkuLjhjNGJmYmFmM2E4MCAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGkzNjYwLWhpa2V5OTYwLmR0
cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTM2NjAtaGlrZXk5NjAuZHRz
CkBAIC01MzAsNiArNTMwLDE3IEBACiAJCXN0YXR1cyA9ICJvayI7CiAJCWNvbXBhdGlibGUgPSAi
YWRpLGFkdjc1MzMiOwogCQlyZWcgPSA8MHgzOT47CisJCWFkaSxkc2ktbGFuZXMgPSA8ND47CisJ
CXBvcnRzIHsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJI3NpemUtY2VsbHMgPSA8MD47
CisJCQlwb3J0QDAgeworCQkJCXJlZyA9IDwwPjsKKwkJCX07CisJCQlwb3J0QDEgeworCQkJCXJl
ZyA9IDwxPjsKKwkJCX07CisJCX07CiAJfTsKIH07CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvaGlzaWxpY29uL2hpNjIyMC1oaWtleS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2hpc2lsaWNvbi9oaTYyMjAtaGlrZXkuZHRzCmluZGV4IGMxNDIwNWNkNmJmNS4uM2U0NzE1MGMw
NWVjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTYyMjAtaGlr
ZXkuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpNjIyMC1oaWtleS5k
dHMKQEAgLTUxNiw3ICs1MTYsNyBAQAogCQlyZWcgPSA8MHgzOT47CiAJCWludGVycnVwdC1wYXJl
bnQgPSA8JmdwaW8xPjsKIAkJaW50ZXJydXB0cyA9IDwxIDI+OwotCQlwZC1ncGlvID0gPCZncGlv
MCA0IDA+OworCQlwZC1ncGlvcyA9IDwmZ3BpbzAgNCAwPjsKIAkJYWRpLGRzaS1sYW5lcyA9IDw0
PjsKIAkJI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKIAotLSAKMi4xOC4wCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
