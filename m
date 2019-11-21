Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9DA1049D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjcYEcLKykmri9owzD/QaXCG12pRg5EoumGP6vPVsT0=; b=UoE5p6Bm7JdUoq
	GtD4wSXwkmX3zCDqNwYTq29v060acWYC8q1Kwtx39TGg+nXIc8glHotMJpxtug1F6E8DRydpWOsE7
	garuWcUq1AnrFMfSNBTHnpGTcpK2G67LjA2dpTICvsqkGnWM+zxTTX3zeUaA/tD4jNVVX75HYK0vU
	DY+kJoV+YMRFBGKlqvKSWWpYv9zMGwT+YxjWbOgMnM9lbxFzenGjAWXUhaaBDO4L2wwRGkHOCouCN
	5vUkA+GoYAm/lREldPFmKKRJHTphhBvOeqlpAh6bUhptXj8gI4oIRWo17/GQBsucVySr6XzrJrRxP
	KUshvwcJkA9MhDJlfj6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXed2-000525-CO; Thu, 21 Nov 2019 05:03:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXebp-00046a-A8; Thu, 21 Nov 2019 05:02:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E6FE5B14A;
 Thu, 21 Nov 2019 05:02:20 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v5 7/9] dt-bindings: interrupt-controller: rtd1195-mux: Add
 RTD1395
Date: Thu, 21 Nov 2019 06:02:06 +0100
Message-Id: <20191121050208.11324-8-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191121050208.11324-1-afaerber@suse.de>
References: <20191121050208.11324-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_210225_536744_DF150E01 
X-CRM114-Status: UNSURE (   8.66  )
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxMzk1IFNvQy4KClNpZ25lZC1v
ZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2NCAtPiB2NTog
VW5jaGFuZ2VkCiAKIHY0OiBOZXcKIAogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0
LWNvbnRyb2xsZXIvcmVhbHRlayxydGQxMTk1LW11eC55YW1sICAgfCAyICsrCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTE5NS1tdXgueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxl
ci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwKaW5kZXggNWNmM2EyOGNlZGJhLi43YzJhMzE1NDhk
NDYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1
cHQtY29udHJvbGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTE5
NS1tdXgueWFtbApAQCAtMTksNiArMTksOCBAQCBwcm9wZXJ0aWVzOgogICAgICAgLSByZWFsdGVr
LHJ0ZDExOTUtaXNvLWlycS1tdXgKICAgICAgIC0gcmVhbHRlayxydGQxMjk1LW1pc2MtaXJxLW11
eAogICAgICAgLSByZWFsdGVrLHJ0ZDEyOTUtaXNvLWlycS1tdXgKKyAgICAgIC0gcmVhbHRlayxy
dGQxMzk1LW1pc2MtaXJxLW11eAorICAgICAgLSByZWFsdGVrLHJ0ZDEzOTUtaXNvLWlycS1tdXgK
IAogICByZWc6CiAgICAgbWF4SXRlbXM6IDEKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
