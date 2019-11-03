Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787E1ED173
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:39:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KS6Hpc+l3wfKbX/iQIguGnEPZQGCGfS9wbgi3X0xt5Q=; b=hmy0tYT7yA7fLF
	UOw9ML7GBXncGGwVLgaFpoGvyg7BQprz7ufZ7D/EdaTr7rWnc62OrysKvIT7+fd1VxjiGR3PvlIvX
	qbYpH+QsQEzlrEoRDrhzVxDDWMU7i3fP1pxZAtiDakt5tQbzklluKX40oNBnf9PZ5HBMap8eFSc/E
	4wp4etgz1umfkmy6gkodaDYWSxh1N9r6Y2uf1e8uRuZXwbhGalkEtdEsZlExLbMLmml6JKgnB73DQ
	RlUqcPuMHWxhxDphKQb4R/qkNxbmzj9+YxoIcNELk4OkA3GKF429FYE3ojUCO6YID4tgjEVwNDo2W
	ALKu1IN8PsHRsVKoLIfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4r3-0006d3-Ui; Sun, 03 Nov 2019 01:38:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4pA-0004w7-R8; Sun, 03 Nov 2019 01:37:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id ED297B248;
 Sun,  3 Nov 2019 01:36:55 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 08/11] soc: realtek: chip: Detect RTD1293
Date: Sun,  3 Nov 2019 02:36:42 +0100
Message-Id: <20191103013645.9856-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183701_075071_6B9488A4 
X-CRM114-Status: UNSURE (   8.45  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TG9naWMgc2VsZi1kZXRlcm1pbmVkIGJ5IGNvbXBhcmluZyBEUzQxOGogYW5kIERTNDE4IHJlZ2lz
dGVycy4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4K
LS0tCiBkcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYyBi
L2RyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5jCmluZGV4IGJhNjUzYzA5NzY0NC4uZjRiMjZmYjA0
OGM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYworKysgYi9kcml2ZXJz
L3NvYy9yZWFsdGVrL2NoaXAuYwpAQCAtNTksNiArNTksOCBAQCBzdGF0aWMgY29uc3QgY2hhciAq
cnRkMTI5NV9uYW1lKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qgc3RydWN0IHJ0ZF9zb2MgKnMp
CiAJCXUzMiBjaGlwaW5mbzEgPSByZWFkbF9yZWxheGVkKGJhc2UpOwogCQlpb3VubWFwKGJhc2Up
OwogCQlpZiAoY2hpcGluZm8xICYgQklUKDExKSkgeworCQkJaWYgKGNoaXBpbmZvMSAmIEJJVCg0
KSkKKwkJCQlyZXR1cm4gIlJURDEyOTMiOwogCQkJcmV0dXJuICJSVEQxMjk2IjsKIAkJfQogCX0K
LS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
