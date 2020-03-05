Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5FD17A532
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 13:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+a8Afc92Ew+g196Yr7ivrJwG/SPZRnZotuzFskgIxTk=; b=kg4N4SDQ0HSGw1
	6g+HRsDWbgPMQsdHtQsgrrkZkTi+JH3dMBcN1+dMX6oQ1J3QLa8lwTrqW5aq9JFZmAZNR49HqCcFy
	tuumrEV1gxAF3HDYa8Cx95i5yhWrsLzvH/2mXYVCf1JRwIhHwYqH1sX8NP7gapNnuVN/tlxjAyFVh
	R0PtPIgS2eLanPSAugtPv7Q0LThrs9JVCxVU2K75MdVAguoz7bF39jXJQXDbIcd8ow7j74YXxBURh
	6cPWY5Xyavn3r3hoMHImTD3KzQkAzT3SBytbgoJmUxBcp3yIL3FDQDVExoIU6jDKNZgkq9z8gns5Z
	mpuEExRzpYfzyhgut5ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9pX5-0000YT-5b; Thu, 05 Mar 2020 12:23:19 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pWx-0000XE-JZ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 12:23:15 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.11]) by
 rmmx-syy-dmz-app12-12012 (RichMail) with SMTP id 2eec5e60eef0854-ff40d;
 Thu, 05 Mar 2020 20:22:09 +0800 (CST)
X-RM-TRANSID: 2eec5e60eef0854-ff40d
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.0.146.245])
 by rmsmtp-syy-appsvr06-12006 (RichMail) with SMTP id 2ee65e60eeeec2d-dd790;
 Thu, 05 Mar 2020 20:22:09 +0800 (CST)
X-RM-TRANSID: 2ee65e60eeeec2d-dd790
From: tangbin <tangbin@cmss.chinamobile.com>
To: davem@davemloft.net
Subject: [PATCH] ethernet:broadcom:bcm63xx_enet:remove redundant variable
 definitions
Date: Thu,  5 Mar 2020 20:22:59 +0800
Message-Id: <20200305122259.6104-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_042312_331215_FABDAD75 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.81 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, tangbin <tangbin@cmss.chinamobile.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aW4gdGhpcyBmdW5jdGlvbizigJhyZXTigJkgaXMgYWx3YXlzIGFzc2lnbmVkLHNvIHRoaXMncyBk
ZWZpbml0aW9uCidyZXQgPSAwJyBtYWtlIG5vIHNlbnNlLgoKU2lnbmVkLW9mZi1ieTogdGFuZ2Jp
biA8dGFuZ2JpbkBjbXNzLmNoaW5hbW9iaWxlLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9icm9hZGNvbS9iY202M3h4X2VuZXQuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS9iY202M3h4
X2VuZXQuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2JjbTYzeHhfZW5ldC5jCmlu
ZGV4IDYyMGNkM2ZjMS4uZWE1MDg3YThlIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9icm9hZGNvbS9iY202M3h4X2VuZXQuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9icm9h
ZGNvbS9iY202M3h4X2VuZXQuYwpAQCAtMTcwNiw3ICsxNzA2LDYgQEAgc3RhdGljIGludCBiY21f
ZW5ldF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmICghcmVzX2lycSB8
fCAhcmVzX2lycV9yeCB8fCAhcmVzX2lycV90eCkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKLQlyZXQg
PSAwOwogCWRldiA9IGFsbG9jX2V0aGVyZGV2KHNpemVvZigqcHJpdikpOwogCWlmICghZGV2KQog
CQlyZXR1cm4gLUVOT01FTTsKLS0gCjIuMjAuMS53aW5kb3dzLjEKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
