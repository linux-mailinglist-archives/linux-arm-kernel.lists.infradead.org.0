Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55291A314E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fT+tP41H/nqYB60pBjA0UzzD6/o4222CEQAJ0KhEnwg=; b=UVcirr+J79DNbe
	x5jlvf6gbM7PqDFr9k66GxH6ktgjoCemgKyfxFVvN5AWyCYuNiXz9/UWH+O7J9+lPG357Ir9fDeOX
	zrsGjXsw4IjBQknGCTTkhwnk7PD/MiiZUulj1TCxMqyxt6OFIdoOyMtaoCt9KuW43a6iRxlRH+e8h
	hcN6NXXjo/kCyWDOhNFvw3ne4yW4H0LoS9FxveCi5n1icePh4FDrbIMjh3h4g8O4Av940yFJec0zn
	yJvotweylFDsiwnWvWlT7gG1VfgP6UIL9wwLq5U3ULfzfjqaEUhZb1zYX4SDfzVAJdT3MCUXvtooF
	nWCNLKmgUPRKraKLbOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSy8-0006I0-Lr; Thu, 09 Apr 2020 08:55:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSy1-0006HT-4N; Thu, 09 Apr 2020 08:55:22 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B955C4D58753A801B7C1;
 Thu,  9 Apr 2020 16:55:14 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Thu, 9 Apr 2020
 16:55:05 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <nsaenzjulienne@suse.de>, <gregkh@linuxfoundation.org>,
 <marcgonzalez@google.com>, <jamal.k.shareef@gmail.com>,
 <nishkadg.linux@gmail.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <devel@driverdev.osuosl.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: vc04_services: remove set but not used
 'local_entity_uc'
Date: Thu, 9 Apr 2020 16:53:39 +0800
Message-ID: <20200409085339.47255-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_015521_341234_58E880C7 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cgpkcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2
aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5jOjIzNTY6MTY6Cndhcm5pbmc6IHZh
cmlhYmxlIOKAmGxvY2FsX2VudGl0eV91Y+KAmSBzZXQgYnV0IG5vdCB1c2VkClstV3VudXNlZC1i
dXQtc2V0LXZhcmlhYmxlXQogIGludCBsb2NhbF91YywgbG9jYWxfZW50aXR5X3VjOwogICAgICAg
ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+CgpSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2Np
QGh1YXdlaS5jb20+ClNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNv
bT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJt
L3ZjaGlxX2FybS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2Vz
L2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmMgYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9z
ZXJ2aWNlcy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5jCmluZGV4IGExZWE5Nzc3YTQ0
NC4uMmQzZTExNGY0YTY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNl
cy9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxX2FybS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy92
YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmMKQEAgLTIzNTMsNyAr
MjM1Myw3IEBAIHZjaGlxX3VzZV9pbnRlcm5hbChzdHJ1Y3QgdmNoaXFfc3RhdGUgKnN0YXRlLCBz
dHJ1Y3QgdmNoaXFfc2VydmljZSAqc2VydmljZSwKIAllbnVtIHZjaGlxX3N0YXR1cyByZXQgPSBW
Q0hJUV9TVUNDRVNTOwogCWNoYXIgZW50aXR5WzE2XTsKIAlpbnQgKmVudGl0eV91YzsKLQlpbnQg
bG9jYWxfdWMsIGxvY2FsX2VudGl0eV91YzsKKwlpbnQgbG9jYWxfdWM7CiAKIAlpZiAoIWFybV9z
dGF0ZSkKIAkJZ290byBvdXQ7CkBAIC0yMzc3LDcgKzIzNzcsNyBAQCB2Y2hpcV91c2VfaW50ZXJu
YWwoc3RydWN0IHZjaGlxX3N0YXRlICpzdGF0ZSwgc3RydWN0IHZjaGlxX3NlcnZpY2UgKnNlcnZp
Y2UsCiAKIAl3cml0ZV9sb2NrX2JoKCZhcm1fc3RhdGUtPnN1c3BfcmVzX2xvY2spOwogCWxvY2Fs
X3VjID0gKythcm1fc3RhdGUtPnZpZGVvY29yZV91c2VfY291bnQ7Ci0JbG9jYWxfZW50aXR5X3Vj
ID0gKysoKmVudGl0eV91Yyk7CisJKysoKmVudGl0eV91Yyk7CiAKIAl2Y2hpcV9sb2dfdHJhY2Uo
dmNoaXFfc3VzcF9sb2dfbGV2ZWwsCiAJCSIlcyAlcyBjb3VudCAlZCwgc3RhdGUgY291bnQgJWQi
LAotLSAKMi4xNy4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
