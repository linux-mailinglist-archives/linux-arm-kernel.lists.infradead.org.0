Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E3B1CA03E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XGEHoM2qHx7SFu24EGxSAWr44WQoTKO8Mh3elO5kWQQ=; b=XkzxbALPqRd17L
	YIFw8QIpiDN0eplkOgyxzNjMEfMshmpbPAGDayjQcWnIXPDILkllLq4anMD5wrTxmuHuuIyp6uVgH
	T9QRefoMZWfAaawdi6OVqqIjLN1EWo07D9x+4skFbb0057DsxAKV9/5+OJMT7A4lEcl1y7rd5hCNY
	DRgezTMb9Int3qg8L2RCEaBXOnhdXmBr1ur36IxWL/rBrCePE3rWnrhRGeNwdRIsn7UWdPvV/7XIC
	WzJJB/btYrqMFn5pMmjRFznjVu6Vm538dckuXTephrH1/cO9zJTdWj6p8MHQ/wYZQK4kXqMOIlYXP
	NNJkeQD/qRFpCtNJKq/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWs5z-00049T-Fx; Fri, 08 May 2020 01:46:35 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWs5r-00047W-VD
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:46:29 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9AC1CDE8277282167DC2;
 Fri,  8 May 2020 09:46:09 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Fri, 8 May 2020 09:46:00 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>, <joro@8bytes.org>
Subject: [PATCH -next] iommu/arm-smmu-v3: remove set but not used variable
 'smmu'
Date: Fri, 8 May 2020 09:49:55 +0800
Message-ID: <20200508014955.87630-1-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_184628_158494_7318D49D 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: chenzhou10@huawei.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9p
b21tdS9hcm0tc21tdS12My5jOjI5ODk6MjY6Cndhcm5pbmc6IHZhcmlhYmxlIOKAmHNtbXXigJkg
c2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KICBzdHJ1Y3QgYXJt
X3NtbXVfZGV2aWNlICpzbW11OwoKUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3
ZWkuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaGVuIFpob3UgPGNoZW56aG91MTBAaHVhd2VpLmNvbT4K
LS0tCiBkcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmMg
Yi9kcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmMKaW5kZXggNDJlMWVlN2U1MTk3Li44OWVlOWM1
ZDhiODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYworKysgYi9kcml2
ZXJzL2lvbW11L2FybS1zbW11LXYzLmMKQEAgLTI5ODYsMTMgKzI5ODYsMTEgQEAgc3RhdGljIHZv
aWQgYXJtX3NtbXVfcmVsZWFzZV9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2KQogewogCXN0cnVj
dCBpb21tdV9md3NwZWMgKmZ3c3BlYyA9IGRldl9pb21tdV9md3NwZWNfZ2V0KGRldik7CiAJc3Ry
dWN0IGFybV9zbW11X21hc3RlciAqbWFzdGVyOwotCXN0cnVjdCBhcm1fc21tdV9kZXZpY2UgKnNt
bXU7CiAKIAlpZiAoIWZ3c3BlYyB8fCBmd3NwZWMtPm9wcyAhPSAmYXJtX3NtbXVfb3BzKQogCQly
ZXR1cm47CiAKIAltYXN0ZXIgPSBkZXZfaW9tbXVfcHJpdl9nZXQoZGV2KTsKLQlzbW11ID0gbWFz
dGVyLT5zbW11OwogCWFybV9zbW11X2RldGFjaF9kZXYobWFzdGVyKTsKIAlhcm1fc21tdV9kaXNh
YmxlX3Bhc2lkKG1hc3Rlcik7CiAJa2ZyZWUobWFzdGVyKTsKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
