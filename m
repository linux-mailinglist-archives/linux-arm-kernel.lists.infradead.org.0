Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E002810F2AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GqiJM2wmeB0WK6CwWDNy0vHCMxun3ND4t9s5tKDg8w=; b=qWYLgdTbOBhEH/
	5B0+z5PudWUMVthLHLQRwKNSclkDQExEJ+hcCk2SaRTnCRyfwT4kAqsKXLJVxqy72oW16QZZNItPG
	xNpuUpnt/ZjvkhKrAURA396t8/gYnPpOJFtyK1PPTv4RgY+34FOz65WBj8UW24d/U93TaqbCFpxET
	l7uj03DY5PDkzO2EFddA9OwEl++nUoNeXeNxEnqVmY4YmYufFhI9yt4HZvk8klYtVxRp6a0y6ogWR
	he8A8DVC6d8RcSRAFPMWJclWt27G/88Mg4CM/btSzTKqoBJ8opiHNe1WN5iDEScenYs49BrptIgIa
	3IciYZ6LMRK2ItwNDj5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtpt-0008Rs-Oy; Mon, 02 Dec 2019 22:06:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtpD-0007tY-DD; Mon, 02 Dec 2019 22:05:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2973CB2F0;
 Mon,  2 Dec 2019 22:05:46 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 3/5] ARM: dts: rtd1195: Add SB2 sem nodes
Date: Mon,  2 Dec 2019 23:05:33 +0100
Message-Id: <20191202220535.6208-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202220535.6208-1-afaerber@suse.de>
References: <20191202220535.6208-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_140547_584623_2CD38659 
X-CRM114-Status: UNSURE (   8.49  )
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
 Cheng-Yu Lee <cylee12@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERUIG5vZGVzIHRvIFNCMiBmb3IgaGFyZHdhcmUgc2VtYXBob3JlcyBvbiBSVEQxMTk1IFNv
Qy4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0t
CiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgfCAxNCArKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9ydGQxMTk1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKaW5kZXgg
MjE4OTcyMTBkOWQwLi42ZmQxMmEyZDc2NmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3J0ZDExOTUuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKQEAgLTIx
NSwzICsyMTUsMTcgQEAKIAkJc3RhdHVzID0gImRpc2FibGVkIjsKIAl9OwogfTsKKworJnNiMiB7
CisJc2IyX2hkX3NlbTogaHdzcGlubG9ja0AwIHsKKwkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0
ZDExOTUtc2IyLXNlbSI7CisJCXJlZyA9IDwweDAgMHg0PjsKKwkJI2h3bG9jay1jZWxscyA9IDww
PjsKKwl9OworCisJc2IyX2hkX3NlbV9uZXc6IGh3c3BpbmxvY2tANjIwIHsKKwkJY29tcGF0aWJs
ZSA9ICJyZWFsdGVrLHJ0ZDExOTUtc2IyLXNlbSI7CisJCXJlZyA9IDwweDYyMCAweDIwPjsKKwkJ
I2h3bG9jay1jZWxscyA9IDwxPjsKKwl9OworfTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
