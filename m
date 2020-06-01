Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1441E9E59
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3MiOShMNUwzWIKeTRVMQZvUh3N3hjVQeh6I/i5JuUU=; b=Lac1APYrjElsFC
	yPnBr4kAZtZVcqRbQYMCD9+p6rqD3c3zZYqP5MOgAqmTO9xvXg+EkkPeo7VEZcFcSRXBnZgZTmQns
	nWcExjy85AnDVWgmis1fY+1yJ/Dc+IY21jR4saNfKCkBcm8JCYHil8CHRvXD8374vJORE59FnLLZ+
	VY5glm9KHEw1xe0LwhHjfhTQNYPNuNAYQ9MIz5Fg4J4XABgm+pRX84A+1oaHm5n2XfCU3+CSKv++W
	PkFoPv8qMCRER11GLo8q7C9linCSikAFpMnlNUn16/MBR9Junx1kypBCPdkXpPuf0X8xKBnCBhsLQ
	XyAwro0NY3D3s3rvI0nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfe2B-0000M6-Gs; Mon, 01 Jun 2020 06:34:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfe1A-0008AR-54
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 06:33:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 69FB12A18CC
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 1/4] ARM: dts: zynq: add port definitions to hdmi-tx@39
Date: Mon,  1 Jun 2020 08:33:05 +0200
Message-Id: <20200601063308.13045-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
References: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_233352_320562_ED5D127A 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

RGVmaW5lIGEgJ3BvcnRzJyBub2RlIGZvciAnYWR2NzUxMTogaGRtaS10eEAzOScgdG8gbWFrZSBp
dCBjb21wbGlhbnQgd2l0aAp0aGUgYWRpLGFkdjc1MTEgRFQgYmluZGluZy4KClRoaXMgZmlsbHMg
dGhlIG1pbmltdW0gcmVxdWlyZW1lbnRzIHRvIG1lZXQgdGhlIGJpbmRpbmcgcmVxdWlyZW1lbnRz
LApyZW1vdGUgZW5kcG9pbnRzIGFyZSBub3QgZGVmaW5lZC4KClNpZ25lZC1vZmYtYnk6IFJpY2Fy
ZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29tPgpSZXZpZXdlZC1ieTog
TGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgpBY2tl
ZC1ieTogTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4KLS0tCiBhcmNoL2Fy
bS9ib290L2R0cy96eW5xLXpjNzAyLmR0cyB8IDEwICsrKysrKysrKysKIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3p5bnEtemM3MDYuZHRzIHwgMTAgKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyMCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwMi5k
dHMgYi9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cwppbmRleCAyN2NkNmNiNTJmMWIu
Ljc5ZmQyMzZlZGRlZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwMi5k
dHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwMi5kdHMKQEAgLTEzNSw2ICsxMzUs
MTYgQEAKIAkJCQlhZGksaW5wdXQtY2xvY2sgPSAiMXgiOwogCQkJCWFkaSxpbnB1dC1zdHlsZSA9
IDwzPjsKIAkJCQlhZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJyaWdodCI7CisJCQkJcG9ydHMg
eworCQkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkJI3NpemUtY2VsbHMgPSA8MD47CisJ
CQkJCXBvcnRAMCB7CisJCQkJCQlyZWcgPSA8MD47CisJCQkJCX07CisJCQkJCXBvcnRAMSB7CisJ
CQkJCQlyZWcgPSA8MT47CisJCQkJCX07CisJCQkJfTsKIAkJCX07CiAJCX07CiAKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDYuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMv
enlucS16YzcwNi5kdHMKaW5kZXggNzc5NDNjMTZkMzNmLi45OWZhNTFiYTZlOTMgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDYuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3p5bnEtemM3MDYuZHRzCkBAIC05Myw2ICs5MywxNiBAQAogCQkJCWFkaSxpbnB1dC1jbG9j
ayA9ICIxeCI7CiAJCQkJYWRpLGlucHV0LXN0eWxlID0gPDM+OwogCQkJCWFkaSxpbnB1dC1qdXN0
aWZpY2F0aW9uID0gImV2ZW5seSI7CisJCQkJcG9ydHMgeworCQkJCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKKwkJCQkJI3NpemUtY2VsbHMgPSA8MD47CisJCQkJCXBvcnRAMCB7CisJCQkJCQlyZWcg
PSA8MD47CisJCQkJCX07CisJCQkJCXBvcnRAMSB7CisJCQkJCQlyZWcgPSA8MT47CisJCQkJCX07
CisJCQkJfTsKIAkJCX07CiAJCX07CiAKLS0gCjIuMTguMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
