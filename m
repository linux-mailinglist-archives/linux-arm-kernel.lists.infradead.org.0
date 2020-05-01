Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF2D1C0F95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rSI+5iXELR9wtqp7VJ36QA8V5fGTaf3kxq2CirxTn8=; b=Aqz1iMhIi/039l
	+OSQkHAfw0Mp4nGWlSBWoOxo7DFLdxH/0V6p5ZrVHU+igVndzOyF4uQopmno2qQi/UvB6mR1iVONv
	biPzlI1wdqjywqgb/geiKRh+k82UKwSk7LgrJ2tSjPHHnTs3v8AUazXLUJq1pIjv9nhuzon8hOcZH
	wIcR/+HuclAvh/CWbKz6mbMEqaw9tYzaSvyXjuxMVpmqmtIq1xn0kWEmdW8gS12fL9ZBKW3fjxdWn
	M3uA0Jh9OlLZVkws2WBjIuwoHAgZwiyyMnILMReeET9T15rH2hIGEzZgtfOMQrhPIiGsBNDUHT1Q1
	6jOqyAaTAK6yonEN9Oow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUR7V-0008Ey-Hz; Fri, 01 May 2020 08:34:05 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUR6l-0007aI-5x
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:33:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 991BA2A2D26
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [RFT PATCH 4/5] arm64: dts: hisilicon: hikey960: add missing hdmi
 bridge properties
Date: Fri,  1 May 2020 10:32:26 +0200
Message-Id: <20200501083227.10886-5-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_013319_346108_F392CE32 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGEgJ3BvcnRzJyBub2RlIGZvciAnYWR2NzUzMzogYWR2NzUzM0AzOScgYW5kIHRoZSAn
YWRpLGRzaS1sYW5lcycKcHJvcGVydHkgdG8gbWFrZSBpdCBjb21wbGlhbnQgd2l0aCB0aGUgYWRp
LGFkdjc1MzMgRFQgYmluZGluZy4KClRoaXMgZmlsbHMgdGhlIHJlcXVpcmVtZW50cyB0byBtZWV0
IHRoZSBiaW5kaW5nIHJlcXVpcmVtZW50cywKcmVtb3RlIGVuZHBvaW50cyBhcmUgbm90IGRlZmlu
ZWQuCgpTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVlbG9AY29s
bGFib3JhLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTM2NjAtaGlr
ZXk5NjAuZHRzIHwgMTEgKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGkzNjYwLWhp
a2V5OTYwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtleTk2
MC5kdHMKaW5kZXggZTAzNWNmMTk1YjE5Li44YzRiZmJhZjNhODAgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtleTk2MC5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9oaXNpbGljb24vaGkzNjYwLWhpa2V5OTYwLmR0cwpAQCAtNTMwLDYgKzUz
MCwxNyBAQAogCQlzdGF0dXMgPSAib2siOwogCQljb21wYXRpYmxlID0gImFkaSxhZHY3NTMzIjsK
IAkJcmVnID0gPDB4Mzk+OworCQlhZGksZHNpLWxhbmVzID0gPDQ+OworCQlwb3J0cyB7CisJCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDA+OworCQkJcG9ydEAwIHsK
KwkJCQlyZWcgPSA8MD47CisJCQl9OworCQkJcG9ydEAxIHsKKwkJCQlyZWcgPSA8MT47CisJCQl9
OworCQl9OwogCX07CiB9OwogCi0tIAoyLjE4LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
