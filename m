Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A193817D4D3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ni+o2WhfX7Qs1qNZsT6sYSYJWZuwlyfMWz1tzUQVWK0=; b=hLdQnbI42HaLU2
	0pktdy2K3E3kSZGGeqD6715UmXjLzXAEYhvXC52163jJjxSO4XKenwyBg+dcsPBNZzt12nHyUBOEk
	kOVlwbjjMpVzox0UeUz7pGVhsKXcK4tcwRXP/6DDAccazfukre+1A6IzM+nAQ2ExGks7tA8D3IJm3
	/I9K1EKUMHbmM2jB58PxM85QJmN5QKRux6F4unNEzVmPwmneaIosZBX6oM9X1vhYrKYjXspVvSQtW
	Sk2/9wG6sMWYC81QWzDzPVi7tLY9pC/PBziBlArTNfG0NI4CsjRutckLEyMZTRNziyLoeL5xxoxxJ
	bQYvjf/yQmBfKWY4OU9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAysY-0001f2-H2; Sun, 08 Mar 2020 16:34:14 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrF-0000dW-FI
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:32:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A1AD1AFF7;
 Sun,  8 Mar 2020 16:32:45 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 02/11] dt-bindings: arm: Add Sunplus SP7021 and Banana Pi BPI-F2S
Date: Sun,  8 Mar 2020 17:32:20 +0100
Message-Id: <20200308163230.4002-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
References: <20200308163230.4002-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093253_661098_5CEDB8A1 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?=
 <wells.lu@sunplus.com>, Dvorkin Dmitry <dvorkin@tibbo.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2M6IFdlbGxzIEx1IOWRguiKs+mosCA8d2VsbHMubHVAc3VucGx1cy5jb20+ClNpZ25lZC1vZmYt
Ynk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N1bnBsdXMueWFtbCB8IDIyICsrKysrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW5wbHVzLnlhbWwK
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N1bnBs
dXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc3VucGx1cy55
YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYzg4ODU2YTAwOTgz
Ci0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9zdW5wbHVzLnlhbWwKQEAgLTAsMCArMSwyMiBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UKKyVZQU1MIDEuMgorLS0tCiskaWQ6
IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2FybS9zdW5wbHVzLnlhbWwjCiskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6
IFN1bnBsdXMgcGxhdGZvcm1zIGRldmljZSB0cmVlIGJpbmRpbmdzCisKK21haW50YWluZXJzOgor
ICAtIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KKworcHJvcGVydGllczoKKyAg
JG5vZGVuYW1lOgorICAgIGNvbnN0OiAnLycKKyAgY29tcGF0aWJsZToKKyAgICBvbmVPZjoKKyAg
ICAgICMgU1A3MDIxIFNvQyBiYXNlZCBib2FyZHMKKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAg
LSBlbnVtOgorICAgICAgICAgICAgICAtIGJhbmFuYXBpLGJwaS1mMnMgIyBCYW5hbmEgUGkgQlBJ
LUYyUworICAgICAgICAgIC0gY29uc3Q6IHN1bnBsdXMsc3A3MDIxCisuLi4KLS0gCjIuMTYuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
