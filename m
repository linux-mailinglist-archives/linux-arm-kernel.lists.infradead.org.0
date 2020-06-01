Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552811E9E56
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZ1p05Yb5gU/PX6Iik2kDjJrzlZ0BHukz1SuDPuRmyo=; b=fRanLIFwuaLaV7
	SvGuZvguHDXxNYBzNyKfB5/1obsPHcdgFKOTcHj82PV3Gj+5M/YYp3J0b9bwvR70PjRKbiUsq7Q1T
	sg7LDlI5Cf+BxNyxQIgcTbokQGSCjgjPWOuVYXLAvsGFK53Go9aQrU2rgSoKxUQd6VTLH9jGkQ2rT
	Nr15JQdXv1cW5/bze0iMMGLFN5STCAu9iO0GAso20fTIxTa0jr/u0rbs8EMaKOx8EhDqqswLyysbq
	GzFZNq985j/dlA0ooQFA9K9BiZUNl44gnaEC1I44bjc2Slu+J41dXFIWXDe3zU7ciKimsFEb5vluh
	0B9DWAnS8ju+aeE0mTBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfe1K-0008C0-7j; Mon, 01 Jun 2020 06:34:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfe19-0008AT-Ji
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 06:33:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id E5CF92A1956
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 3/4] ARM: dts: stm32: make hdmi-transmitter node compliant
 with DT bindings
Date: Mon,  1 Jun 2020 08:33:07 +0200
Message-Id: <20200601063308.13045-4-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
References: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_233351_777217_61BA0A41 
X-CRM114-Status: UNSURE (   9.45  )
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

UmVvcmRlciB0aGUgSTJDIHNsYXZlIGFkZHJlc3NlcyBvZiB0aGUgaGRtaS10cmFuc21pdHRlciBu
b2RlIGFuZCByZW1vdmUKdGhlIGFkaSxpbnB1dC1zdHlsZSBhbmQgYWRpLGlucHV0LWp1c3RpZmlj
YXRpb24gcHJvcGVydGllcyB0byBtZWV0IHRoZQphZGksYWR2NzUxMyBiaW5kaW5nIHJlcXVpcmVt
ZW50cy4KClNpZ25lZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bj
b2xsYWJvcmEuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNXh4LWRoY29yLWF2
ZW5nZXI5Ni5kdHNpIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1
eHgtZGhjb3ItYXZlbmdlcjk2LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTV4eC1k
aGNvci1hdmVuZ2VyOTYuZHRzaQppbmRleCA5MzAyMDI3NDJhM2YuLmI2N2EyMWE4Njk4YSAxMDA2
NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1eHgtZGhjb3ItYXZlbmdlcjk2LmR0
c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1eHgtZGhjb3ItYXZlbmdlcjk2LmR0
c2kKQEAgLTE4NSw4ICsxODUsOCBAQAogJmkyYzQgewogCWhkbWktdHJhbnNtaXR0ZXJAM2Qgewog
CQljb21wYXRpYmxlID0gImFkaSxhZHY3NTEzIjsKLQkJcmVnID0gPDB4M2Q+LCA8MHgyZD4sIDww
eDRkPiwgPDB4NWQ+OwotCQlyZWctbmFtZXMgPSAibWFpbiIsICJjZWMiLCAiZWRpZCIsICJwYWNr
ZXQiOworCQlyZWcgPSA8MHgzZD4sIDwweDRkPiwgPDB4MmQ+ICwgPDB4NWQ+OworCQlyZWctbmFt
ZXMgPSAibWFpbiIsICJlZGlkIiwgImNlYyIsICJwYWNrZXQiOwogCQljbG9ja3MgPSA8JmNlY19j
bG9jaz47CiAJCWNsb2NrLW5hbWVzID0gImNlYyI7CiAKQEAgLTIwNCw4ICsyMDQsNiBAQAogCQlh
ZGksaW5wdXQtZGVwdGggPSA8OD47CiAJCWFkaSxpbnB1dC1jb2xvcnNwYWNlID0gInJnYiI7CiAJ
CWFkaSxpbnB1dC1jbG9jayA9ICIxeCI7Ci0JCWFkaSxpbnB1dC1zdHlsZSA9IDwxPjsKLQkJYWRp
LGlucHV0LWp1c3RpZmljYXRpb24gPSAiZXZlbmx5IjsKIAogCQlwb3J0cyB7CiAJCQkjYWRkcmVz
cy1jZWxscyA9IDwxPjsKLS0gCjIuMTguMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
