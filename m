Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0878ED177
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsNGyEMqgSLk9mIt9qCJPJbLXF9axE6swOko84XIOl4=; b=K6ch5iw4Zfg5Bl
	a1WXbKaQsfHIAZlD5t/b1jCn88IdTdpsFWsdWrno3URGouoXzlpTq+goG4cnJWnZwME6d3rK2nxqn
	c6LyaDezBtlfR2yHYAQq6+wL4fqZbyYpKVnW19B7oq2HGtaTc+X2JzVPry7rD77u1XJ2du90v93p7
	C07vM11pc5hnhh3D16UXeC408iGKVYpUspI+F523iUIoVxy7Bgqdzds78F5s7FUo1z9ruTRM8QIP/
	uBxbCLSFPmDKx2nUxXvOID7KBrorwWKf85F2qu66qk3kVzEL2HCPeRkrWrlbxc2aYBIuRj9kEd+rS
	72mUqpsyQ2x4sejETh0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4rz-0007kx-7A; Sun, 03 Nov 2019 01:39:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4pC-0004xQ-F7; Sun, 03 Nov 2019 01:37:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 31BCFB30D;
 Sun,  3 Nov 2019 01:36:57 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 11/11] arm64: dts: realtek: rtd129x: Extend chip-info reg with
 efuse
Date: Sun,  3 Nov 2019 02:36:45 +0100
Message-Id: <20191103013645.9856-12-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183702_657599_45C6F2EF 
X-CRM114-Status: UNSURE (   9.17  )
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyByZWdpc3RlciBpcyBuZWVkZWQgdG8gZGV0ZWN0IFJURDEyOTQuCgpTaWduZWQtb2ZmLWJ5
OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mjl4LmR0c2kKaW5kZXggZmVhN2MxZWQ3ZDA4Li42NzBlZmE4NmY2NjEgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQpAQCAtODcsNyArODcsOCBAQAogCQljaGlwLWlu
Zm9AOTgwMWEyMDAgewogCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDExOTUtY2hpcCI7CiAJ
CQlyZWcgPSA8MHg5ODAxYTIwMCAweDg+LAotCQkJICAgICAgPDB4OTgwMDcwMjggMHg0PjsKKwkJ
CSAgICAgIDwweDk4MDA3MDI4IDB4ND4sCisJCQkgICAgICA8MHg5ODAxNzFkOCAweDQ+OwogCQl9
OwogCiAJCXVhcnQxOiBzZXJpYWxAOTgwMWIyMDAgewotLSAKMi4xNi40CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
