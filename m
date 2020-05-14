Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF3D1D3332
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIAa1JRG1SDHh5OEFXqGIeu0ok0hDO31MWGwNM2/CvU=; b=JLbXd/y81qvZjB
	Ybq5ECyK8xt8vdkTwfoww1rgYSKXUyGn1HjHF6ViNKj/yCb5XtwE0t4eSBJ9YkZ7+J3sZuJPfWYEs
	DvBovy5jOpgPSDprFcPGETtKq8+PxDiJlyua3Fctmu7zoTuW/iXfezRqLz/FUKFmvcFAtBRbhCndr
	BQJQcNy/EBbDSWX8YzNkNuFWUZtDejdGow+Dk1bcy8avNX8/xwB9cy+Yb//zuDh61H9CNA6n1SJH3
	Kabcyo/6JGxJwpP+NYQ27T9UM74G66sGQRqrPUPshp0DK+FLAw2EwUoQHVF6NdI/a4DgZzgq93wAx
	PFtd3R0jOvIAQe5/kddA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZF0Z-0006LS-Gn; Thu, 14 May 2020 14:38:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEyT-0004qj-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:36:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 5D1B42A2EE1
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 1/4] ARM: dts: dove: Make the DT compliant with the ti,
 tfp410 binding
Date: Thu, 14 May 2020 16:36:09 +0200
Message-Id: <20200514143612.2094-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073637_777584_B9048B9F 
X-CRM114-Status: GOOD (  10.36  )
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGEgJ3BvcnRzJyBub2RlIGZvciAnZHZpOiB2aWRlb0AzOScgYW5kIHVzZSB0aGUgcHJv
cGVyIG5hbWluZyBmb3IKdGhlIHBvd2VyZG93bi1ncGlvcyBwcm9wZXJ0eSB0byBtYWtlIGl0IGNv
bXBsaWFudCB3aXRoIHRoZSB0aSx0ZnA0MTAKYmluZGluZy4KClRoaXMgZmlsbHMgdGhlIG1pbmlt
dW0gcmVxdWlyZW1lbnRzIHRvIG1lZXQgdGhlIGJpbmRpbmcgcmVxdWlyZW1lbnRzLApwb3J0IGVu
ZHBvaW50cyBhcmUgbm90IGRlZmluZWQuCgpTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxv
IDxyaWNhcmRvLmNhbnVlbG9AY29sbGFib3JhLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9k
b3ZlLXNiYy1hNTEwLmR0cyB8IDEzICsrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvZG92ZS1zYmMtYTUxMC5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9kb3ZlLXNiYy1hNTEwLmR0
cwppbmRleCAyYmI4NWE5Yjc2MTQuLjMyODA0Yzk4MTYyNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvZG92ZS1zYmMtYTUxMC5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZG92ZS1z
YmMtYTUxMC5kdHMKQEAgLTEzMiw3ICsxMzIsMTggQEAKIAlkdmk6IHZpZGVvQDM5IHsKIAkJY29t
cGF0aWJsZSA9ICJ0aSx0ZnA0MTAiOwogCQlyZWcgPSA8MHgzOT47Ci0JCXBvd2VyZG93bi1ncGlv
ID0gPCZncGlvX2V4dCAzIEdQSU9fQUNUSVZFX0xPVz47CisJCXBvd2VyZG93bi1ncGlvcyA9IDwm
Z3Bpb19leHQgMyBHUElPX0FDVElWRV9MT1c+OworCisJCXBvcnRzIHsKKwkJCSNhZGRyZXNzLWNl
bGxzID0gPDE+OworCQkJI3NpemUtY2VsbHMgPSA8MD47CisJCQlwb3J0QDAgeworCQkJCXJlZyA9
IDwwPjsKKwkJCX07CisJCQlwb3J0QDEgeworCQkJCXJlZyA9IDwxPjsKKwkJCX07CisJCX07CiAJ
fTsKIH07CiAKLS0gCjIuMTguMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
