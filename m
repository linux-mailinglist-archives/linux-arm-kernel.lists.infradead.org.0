Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156381D303A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C4welo8tvap4Z3jG/ND9E1pGfogydNiHMw25OLSGozA=; b=CJ4cE8mwH69fSD
	DnxGmDkDuxAowUqelYfFtR6ihsZ21RKGum/WvCWa0LKMk8uLO1bhAbdZTBPRSmd1vv/PrRR/XOtfa
	D3k/wUBrJhGVtTy1FLb+zY5gdxjWralRVLAECeXDL3jw6EixfhyQ5kHAaj6i4bspyI/epPd66FYAE
	fTd2RX8T/SGZ2FOmfoyrwdAGcKrJlh9TG8dgmTUZIvKasBTRNrp6pT6TlMGuYv1SEARWhOeDiA2hv
	6McA+DykRTk5169mmmsDze8GUPHZUJrWRl+lzfrzYdrp6BdLvskpNP3oDkwjBjPbDxoYpNJju411I
	Akk3bIgZVSx7cNcaVehQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDG2-0004Bn-Tr; Thu, 14 May 2020 12:46:38 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDFs-0004AX-PX
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:46:30 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 9035C452; Thu, 14 May 2020 14:46:22 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/2] iommu/sun50i: Fix compile warnings
Date: Thu, 14 May 2020 14:46:20 +0200
Message-Id: <20200514124621.25999-1-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_054629_475802_52E77C8A 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jroedel@suse.de, joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSm9lcmcgUm9lZGVsIDxqcm9lZGVsQHN1c2UuZGU+CgpBIGZldyBjb21waWxlIHdhcm5p
bmdzIHNob3cgdXAgd2hlbiBidWlsZGluZyB0aGlzIGRyaXZlcjoKCiAgQ0MgICAgICBkcml2ZXJz
L2lvbW11L3N1bjUwaS1pb21tdS5vCmRyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11LmM6IEluIGZ1
bmN0aW9uIOKAmHN1bjUwaV9kdGVfZ2V0X3BhZ2VfdGFibGXigJk6CmRyaXZlcnMvaW9tbXUvc3Vu
NTBpLWlvbW11LmM6NDg2OjE2OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYZmxhZ3PigJkg
Wy1XdW51c2VkLXZhcmlhYmxlXQogIDQ4NiB8ICB1bnNpZ25lZCBsb25nIGZsYWdzOwogICAgICB8
ICAgICAgICAgICAgICAgIF5+fn5+CmRyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11LmM6IEluIGZ1
bmN0aW9uIOKAmHN1bjUwaV9pb21tdV91bm1hcOKAmToKZHJpdmVycy9pb21tdS9zdW41MGktaW9t
bXUuYzo1NTk6MjM6IHdhcm5pbmc6IHVudXNlZCB2YXJpYWJsZSDigJhpb21tdeKAmSBbLVd1bnVz
ZWQtdmFyaWFibGVdCiAgNTU5IHwgIHN0cnVjdCBzdW41MGlfaW9tbXUgKmlvbW11ID0gc3VuNTBp
X2RvbWFpbi0+aW9tbXU7CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+CmRyaXZl
cnMvaW9tbXUvc3VuNTBpLWlvbW11LmM6IEluIGZ1bmN0aW9uIOKAmHN1bjUwaV9pb21tdV9wcm9i
ZV9kZXZpY2XigJk6CmRyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11LmM6NzQ5OjIyOiB3YXJuaW5n
OiB1bnVzZWQgdmFyaWFibGUg4oCYZ3JvdXDigJkgWy1XdW51c2VkLXZhcmlhYmxlXQogIDc0OSB8
ICBzdHJ1Y3QgaW9tbXVfZ3JvdXAgKmdyb3VwOwogICAgICB8ICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+CgpSZW1vdmUgdGhlIHVudXNlZCB2YXJpYWJsZXMuCgpDYzogTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+ClNpZ25lZC1vZmYtYnk6IEpvZXJnIFJvZWRlbCA8anJvZWRlbEBz
dXNlLmRlPgotLS0KIGRyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11LmMgfCAzIC0tLQogMSBmaWxl
IGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9zdW41
MGktaW9tbXUuYyBiL2RyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11LmMKaW5kZXggOTg5ZDg3YWE0
NDI2Li5hNTJmNTJlZmY3YzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11
LmMKKysrIGIvZHJpdmVycy9pb21tdS9zdW41MGktaW9tbXUuYwpAQCAtNDgzLDcgKzQ4Myw2IEBA
IHN0YXRpYyB1MzIgKnN1bjUwaV9kdGVfZ2V0X3BhZ2VfdGFibGUoc3RydWN0IHN1bjUwaV9pb21t
dV9kb21haW4gKnN1bjUwaV9kb21haW4sCiAJCQkJICAgICAgZG1hX2FkZHJfdCBpb3ZhLCBnZnBf
dCBnZnApCiB7CiAJc3RydWN0IHN1bjUwaV9pb21tdSAqaW9tbXUgPSBzdW41MGlfZG9tYWluLT5p
b21tdTsKLQl1bnNpZ25lZCBsb25nIGZsYWdzOwogCXUzMiAqcGFnZV90YWJsZTsKIAl1MzIgKmR0
ZV9hZGRyOwogCXUzMiBvbGRfZHRlOwpAQCAtNTU2LDcgKzU1NSw2IEBAIHN0YXRpYyBzaXplX3Qg
c3VuNTBpX2lvbW11X3VubWFwKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiwgdW5zaWduZWQg
bG9uZyBpb3ZhCiAJCQkJIHNpemVfdCBzaXplLCBzdHJ1Y3QgaW9tbXVfaW90bGJfZ2F0aGVyICpn
YXRoZXIpCiB7CiAJc3RydWN0IHN1bjUwaV9pb21tdV9kb21haW4gKnN1bjUwaV9kb21haW4gPSB0
b19zdW41MGlfZG9tYWluKGRvbWFpbik7Ci0Jc3RydWN0IHN1bjUwaV9pb21tdSAqaW9tbXUgPSBz
dW41MGlfZG9tYWluLT5pb21tdTsKIAlwaHlzX2FkZHJfdCBwdF9waHlzOwogCWRtYV9hZGRyX3Qg
cHRlX2RtYTsKIAl1MzIgKnB0ZV9hZGRyOwpAQCAtNzQ2LDcgKzc0NCw2IEBAIHN0YXRpYyBpbnQg
c3VuNTBpX2lvbW11X2F0dGFjaF9kZXZpY2Uoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluLAog
c3RhdGljIHN0cnVjdCBpb21tdV9kZXZpY2UgKnN1bjUwaV9pb21tdV9wcm9iZV9kZXZpY2Uoc3Ry
dWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCBzdW41MGlfaW9tbXUgKmlvbW11OwotCXN0cnVj
dCBpb21tdV9ncm91cCAqZ3JvdXA7CiAKIAlpb21tdSA9IHN1bjUwaV9pb21tdV9mcm9tX2Rldihk
ZXYpOwogCWlmICghaW9tbXUpCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
