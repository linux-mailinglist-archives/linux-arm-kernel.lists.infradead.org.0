Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E18A4AFD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 19:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yPd5UgNa0BCzDvPyyuxa6d0uJCax8XALxDHE2CNJ0bI=; b=mSAKAs9EG1H3jd
	VaVIFg3Sj/+wNbS+d1YXjP4xSnvzJh2pcvwii78I+QBi+SknSYBShsvmzQDjIMAgYOv3IpxgV/fpw
	2let7XqDTwgr34GHIDnlhLwp81MauYagHl22idFFeeHqQVOpgN5DQn6tA3BLHyDcGeB24nugtErTY
	ZSqpBwCQJC/aODaMway+BTJ0MZvWDHCaaMKqMhWKEwiz/f9b2xGwFINmv3SGhXxjS6P3/3ujKp0zX
	Uhs6HB5QKXLzsGDI3TekiA/Rff5DXNCnA7HbtqyKimXYLVqn3x//81786iiEjYVV5TEKD4oofyIpQ
	qSrH+gLSeFW+biwxIwwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4U1H-0002Jz-Rw; Sun, 01 Sep 2019 17:52:08 +0000
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4U0x-0002JJ-1I
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 17:51:48 +0000
Received: from localhost (unknown [46.114.4.148])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: flokli@flokli.de)
 by zeus.flokli.de (Postfix) with ESMTPSA id B11DAA46188;
 Sun,  1 Sep 2019 17:51:40 +0000 (UTC)
From: Florian Klink <flokli@flokli.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: multi_v7_defconfig: enable NET_SCHED
Date: Sun,  1 Sep 2019 19:51:36 +0200
Message-Id: <20190901175137.32672-1-flokli@flokli.de>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_105147_234162_FDE2E6CF 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Florian Klink <flokli@flokli.de>,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBlbmFibGVzIFFvUyBhbmQvb3IgZmFpciBxdWV1ZWluZywgYW5kIGFsbG93cyB0byBidWls
ZCBhbmQgY29uZmlndXJlCnZhcmlvdXMgc2NoZWR1bGVycy4KClRob3NlIGFyZSB3aWRlbHkgdXNl
ZCBhbHJlYWR5IGluIGRlc2t0b3Agc3lzdGVtcyBhbmQgcm91dGVycywgYW5kCnByZXNlbnQgaW4g
eDg2XzY0X2RlZmNvbmZpZyBhcyB3ZWxsLgoKQ2M6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUB0b2tlLmRrPgpTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIEtsaW5rIDxmbG9rbGlAZmxva2xp
LmRlPgotLS0KIGFyY2gvYXJtL2NvbmZpZ3MvbXVsdGlfdjdfZGVmY29uZmlnIHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9jb25maWdz
L211bHRpX3Y3X2RlZmNvbmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3MvbXVsdGlfdjdfZGVmY29uZmln
CmluZGV4IDZhNDBiYzJlZjI3MS4uNzc4MjY1ZjE5YjhmIDEwMDY0NAotLS0gYS9hcmNoL2FybS9j
b25maWdzL211bHRpX3Y3X2RlZmNvbmZpZworKysgYi9hcmNoL2FybS9jb25maWdzL211bHRpX3Y3
X2RlZmNvbmZpZwpAQCAtMTMyLDYgKzEzMiw3IEBAIENPTkZJR19NT0RVTEVfVU5MT0FEPXkKIENP
TkZJR19QQVJUSVRJT05fQURWQU5DRUQ9eQogQ09ORklHX0NNRExJTkVfUEFSVElUSU9OPXkKIENP
TkZJR19ORVQ9eQorQ09ORklHX05FVF9TQ0hFRD15CiBDT05GSUdfUEFDS0VUPXkKIENPTkZJR19V
TklYPXkKIENPTkZJR19JTkVUPXkKLS0gCjIuMjIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
