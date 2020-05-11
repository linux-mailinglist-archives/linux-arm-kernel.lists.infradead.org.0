Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448EE1CD736
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eq4sEgFRJUR3JCzcZkakCgQkNP0m/E1Fwna743vGkko=; b=sZfwiI/iSJGvvC
	w0Jvv0SJQTevSR2hjuZNFKChSpu8GpOgzE4Ftu/scrTMimTuY9Xqbe5Z/y6wKv/K4/eqtErUanc9v
	FdEZCDt/wfVwEptlEHExdltCpza9+SJcAzpJaukNSL7tUNKq7ORpUVCpKtSsO6kDTBFTu6+nNme5Q
	1TmdaRhvxLG6qyn/4rLCafB36V3cf5Z2XlQSf0psyXkfEiBHJB96kb1bWzTJtS7qgv9xxwdPExXXF
	hfcRM2hSCqkSUNvbjfbW211cDmcs+AMIkBKpkUiiPteR8MQIHr7muqSEDAaszCswJ3A/uwneog5rt
	zipwq/LIAJ80VNXfP/tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6HP-0003ZR-1W; Mon, 11 May 2020 11:07:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Gc-00037i-Bg
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:06:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 9A8B42A0C7C
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 3/6] ARM: dts: zynq: add port definitions to hdmi-tx@39
Date: Mon, 11 May 2020 13:06:08 +0200
Message-Id: <20200511110611.3142-4-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040638_528962_C3E5A554 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

RGVmaW5lIGEgJ3BvcnRzJyBub2RlIGZvciAnYWR2NzUxMTogaGRtaS10eEAzOScgdG8gbWFrZSBp
dCBjb21wbGlhbnQgd2l0aAp0aGUgYWRpLGFkdjc1MTEgRFQgYmluZGluZy4KClRoaXMgZmlsbHMg
dGhlIG1pbmltdW0gcmVxdWlyZW1lbnRzIHRvIG1lZXQgdGhlIGJpbmRpbmcgcmVxdWlyZW1lbnRz
LApyZW1vdGUgZW5kcG9pbnRzIGFyZSBub3QgZGVmaW5lZC4KClNpZ25lZC1vZmYtYnk6IFJpY2Fy
ZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29tPgotLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL3p5bnEtemM3MDIuZHRzIHwgMTAgKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9k
dHMvenlucS16YzcwNi5kdHMgfCAxMCArKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDIwIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0
cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDIuZHRzCmluZGV4IDI3Y2Q2Y2I1MmYxYi4u
NzlmZDIzNmVkZGVkIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0
cworKysgYi9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cwpAQCAtMTM1LDYgKzEzNSwx
NiBAQAogCQkJCWFkaSxpbnB1dC1jbG9jayA9ICIxeCI7CiAJCQkJYWRpLGlucHV0LXN0eWxlID0g
PDM+OwogCQkJCWFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uID0gInJpZ2h0IjsKKwkJCQlwb3J0cyB7
CisJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJ
CQkJcG9ydEAwIHsKKwkJCQkJCXJlZyA9IDwwPjsKKwkJCQkJfTsKKwkJCQkJcG9ydEAxIHsKKwkJ
CQkJCXJlZyA9IDwxPjsKKwkJCQkJfTsKKwkJCQl9OwogCQkJfTsKIAkJfTsKIApkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMgYi9hcmNoL2FybS9ib290L2R0cy96
eW5xLXpjNzA2LmR0cwppbmRleCA3Nzk0M2MxNmQzM2YuLjk5ZmE1MWJhNmU5MyAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvenlucS16YzcwNi5kdHMKQEAgLTkzLDYgKzkzLDE2IEBACiAJCQkJYWRpLGlucHV0LWNsb2Nr
ID0gIjF4IjsKIAkJCQlhZGksaW5wdXQtc3R5bGUgPSA8Mz47CiAJCQkJYWRpLGlucHV0LWp1c3Rp
ZmljYXRpb24gPSAiZXZlbmx5IjsKKwkJCQlwb3J0cyB7CisJCQkJCSNhZGRyZXNzLWNlbGxzID0g
PDE+OworCQkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJCQkJcG9ydEAwIHsKKwkJCQkJCXJlZyA9
IDwwPjsKKwkJCQkJfTsKKwkJCQkJcG9ydEAxIHsKKwkJCQkJCXJlZyA9IDwxPjsKKwkJCQkJfTsK
KwkJCQl9OwogCQkJfTsKIAkJfTsKIAotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
