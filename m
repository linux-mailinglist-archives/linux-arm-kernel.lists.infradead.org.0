Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD16E04C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w++uNaKgCaaQQ8qd14BTVNcNbd6/R/l/v72ZtY2UMlc=; b=pzTcbLtmoaxZqU
	aS6vq8gLxdEJx/wpycXJxvzSzwwqmSXYSSib0eK7w5zL750xZ0+PxZk5n2jNyW2jTZzdHeesaNNSF
	udtEVhV4uzU4h+bnrNfTfDOc1vZpzLhEzfQxvbxgmbug+QEpLMh0AzxADm3sYEPqUms0vjAnsaHHv
	cVYXPOzq3wknl/OzbNLi0/1Co8rbzrvBv3vKlxjrJkQ8w5tJ72uGjGAWAs2X9MaAPLI1n5qoI2KdI
	QNporYKD9WElr5rCrCyFPh+bOyez5yNE4jXIPkO4o5k9r/cZfk9nSN6BdheL+A38OpQgc3svBzmMw
	b+InHEGNDZne1vm5+Afw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu4Z-0000Ka-Vf; Tue, 22 Oct 2019 13:19:40 +0000
Received: from 1.mo68.mail-out.ovh.net ([46.105.41.146])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu3d-00088c-FV
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:18:44 +0000
Received: from player793.ha.ovh.net (unknown [10.109.160.106])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 70440144F77
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:18:38 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id 9D343B3E409E;
 Tue, 22 Oct 2019 13:18:24 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 4/9] ARM: dts: imx6qdl-apf6: add flow control to uart2
Date: Tue, 22 Oct 2019 15:16:50 +0200
Message-Id: <20191022131655.25737-5-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 121034241364677701
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061841_687396_BC80C759 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.41.146 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Julien Boibessot <julien.boibessot@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UlRTL0NUUyBsaW5lcyBhcmUgd2lyZWQgdG8gdGhlIEJsdWV0b290aCBjaGlwIHNvIGFkZCB1YXJ0
LWhhcy1ydHNjdHMKcHJvcGVydHkgdG8gdWFydDIuCgpTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVu
IFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+Ci0tLQogYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnFkbC1hcGY2LmR0c2kgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtYXBmNi5k
dHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1hcGY2LmR0c2kKaW5kZXggMzdjYmRmZDRm
YjMzLi5jOTllNzY0YTI1YjcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwt
YXBmNi5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtYXBmNi5kdHNpCkBAIC0z
Miw2ICszMiw3IEBACiAmdWFydDIgewogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJcGlu
Y3RybC0wID0gPCZwaW5jdHJsX3VhcnQyPjsKKwl1YXJ0LWhhcy1ydHNjdHM7CiAJc3RhdHVzID0g
Im9rYXkiOwogfTsKIAotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
