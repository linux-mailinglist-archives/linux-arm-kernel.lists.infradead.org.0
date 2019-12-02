Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CED710EF40
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:24:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoaMRccOZQnaNySjPyzdgvcaqIxGL8uSUmAzwMwa7io=; b=B2HqcEmulOmaSP
	xeTtc2mOkqlIdaxaaUvCU+GuXZeaDsYTgknPCeuy1Ye/zOyx0RwXZmp1zOS155L1xwWNo6kbco6mC
	D5iRd71ugQMl2uvCjmlQ3BOK3NYTnJrvEd+/YNoUGdoXLUJA5DzLF4vbKMdMzE+4YMGvQ0uJtPbDs
	0ySdJIBPEGlpxBUzUsrWfU5Wx3vmlhP0zdhRZAWGETYp8ATT8WnVxiO79M28tUZohzGpVhRfdBv7/
	HGRP/ajPzrXE/LVp+d4enciVpUtp7H7iKGeiEWSnEA6tzpLRXyED8ZurFdPe4nN97GY87M9aqzLRv
	DaeJF+f8ulsjDijZKEmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqMZ-0005lA-2s; Mon, 02 Dec 2019 18:23:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKw-0004GB-NQ; Mon, 02 Dec 2019 18:22:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7AABAAECB;
 Mon,  2 Dec 2019 18:22:15 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 05/14] ARM: dts: rtd1195: Add CRT syscon node
Date: Mon,  2 Dec 2019 19:21:55 +0100
Message-Id: <20191202182205.14629-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102218_928329_A619981D 
X-CRM114-Status: UNSURE (   8.64  )
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
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UHJlcGFyZSBhIENSVCBzeXNjb24gbWZkIG5vZGUuCgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlA
cmVhbHRlay5jb20+ClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3Vz
ZS5kZT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgfCA5ICsrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQppbmRl
eCBhNzRmNTMwZGM0MzkuLmFjMzczNjZmZjdjNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvcnRkMTE5NS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQpAQCAt
MTAwLDYgKzEwMCwxNSBAQAogCQkJI3NpemUtY2VsbHMgPSA8MT47CiAJCQlyYW5nZXMgPSA8MHgw
IDB4MTgwMDAwMDAgMHg3MDAwMD47CiAKKwkJCWNydDogc3lzY29uQDAgeworCQkJCWNvbXBhdGli
bGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQiOworCQkJCXJlZyA9IDwweDAgMHgxMDAwPjsKKwkJ
CQlyZWctaW8td2lkdGggPSA8ND47CisJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkJI3Np
emUtY2VsbHMgPSA8MT47CisJCQkJcmFuZ2VzID0gPDB4MCAweDAgMHgxMDAwPjsKKwkJCX07CisK
IAkJCWlzbzogc3lzY29uQDcwMDAgewogCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBs
ZS1tZmQiOwogCQkJCXJlZyA9IDwweDcwMDAgMHgxMDAwPjsKLS0gCjIuMTYuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
