Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AF31CA06C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RKEmoewseMNMFr0aF8bmjyoe7PU/0hRW30Q0rWkL6nM=; b=X1auu47LRQE+1N
	0KEExF16rmcOdFI+nJKLY4iXmWXIvlLHqmYz5S3ObecA+XvawxJX459LSecsofl4aw730QUDWvzT6
	Wnml31jZwd6gyU/smJKGExzNyv4Ha27TWZ7PHosJN12Ub5JhGMhulgBFS46ZMzJloRpNUBkU1TsOy
	mvhvDFO+aq9KliNBIkw70JDFhAc2NRzkl1zJm25ELkGuQa9QsrpKz2RyFUCjT6wV6PJ84AGcW/6W4
	6R5gPR7B0XfPJt+qaRKxQWoFfCjeMVXZNWwtM/kaT2/OZYKGp0KXeQNu1Ioi0y+OjmAZCfijA6CvJ
	TWSvtEcBQX8TSV3hqX/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsHx-0003Dl-5C; Fri, 08 May 2020 01:58:57 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsHq-0003D1-Pz; Fri, 08 May 2020 01:58:52 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 060F5FEA8977781F3749;
 Fri,  8 May 2020 09:58:47 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Fri, 8 May 2020 09:58:38 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <joro@8bytes.org>, <matthias.bgg@gmail.com>
Subject: [PATCH -next] iommu: remove set but not used variable 'data'
Date: Fri, 8 May 2020 10:02:31 +0800
Message-ID: <20200508020231.143664-1-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_185851_001668_E8F0BDB4 
X-CRM114-Status: UNSURE (   9.08  )
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
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgoKZHJpdmVycy9p
b21tdS9tdGtfaW9tbXVfdjEuYzo0Njc6MjU6Cndhcm5pbmc6IHZhcmlhYmxlIOKAmGRhdGHigJkg
c2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KICBzdHJ1Y3QgbXRr
X2lvbW11X2RhdGEgKmRhdGE7CgpSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdl
aS5jb20+ClNpZ25lZC1vZmYtYnk6IENoZW4gWmhvdSA8Y2hlbnpob3UxMEBodWF3ZWkuY29tPgot
LS0KIGRyaXZlcnMvaW9tbXUvbXRrX2lvbW11X3YxLmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9t
bXUvbXRrX2lvbW11X3YxLmMgYi9kcml2ZXJzL2lvbW11L210a19pb21tdV92MS5jCmluZGV4IDdi
ZGQ3NGM3Y2I5Zi4uMzZjYzFkOTY2N2EyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lvbW11L210a19p
b21tdV92MS5jCisrKyBiL2RyaXZlcnMvaW9tbXUvbXRrX2lvbW11X3YxLmMKQEAgLTQ2NCwxMiAr
NDY0LDExIEBAIHN0YXRpYyB2b2lkIG10a19pb21tdV9wcm9iZV9maW5hbGl6ZShzdHJ1Y3QgZGV2
aWNlICpkZXYpCiBzdGF0aWMgdm9pZCBtdGtfaW9tbXVfcmVsZWFzZV9kZXZpY2Uoc3RydWN0IGRl
dmljZSAqZGV2KQogewogCXN0cnVjdCBpb21tdV9md3NwZWMgKmZ3c3BlYyA9IGRldl9pb21tdV9m
d3NwZWNfZ2V0KGRldik7Ci0Jc3RydWN0IG10a19pb21tdV9kYXRhICpkYXRhOwogCiAJaWYgKCFm
d3NwZWMgfHwgZndzcGVjLT5vcHMgIT0gJm10a19pb21tdV9vcHMpCiAJCXJldHVybjsKIAotCWRh
dGEgPSBkZXZfaW9tbXVfcHJpdl9nZXQoZGV2KTsKKwlkZXZfaW9tbXVfcHJpdl9nZXQoZGV2KTsK
IAlpb21tdV9md3NwZWNfZnJlZShkZXYpOwogfQogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
