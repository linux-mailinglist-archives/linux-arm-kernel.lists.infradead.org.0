Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40B2DDC4F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4OaTFafLwYZ8wEd4oPb/DrqBpLujY5UI0UsYtJIUd0=; b=qgnxojubCkVMUX
	YLvy5p71Vwg5DqDMVuxKj+bL1yIhHM9OWp7GD+/BcOo2boN5lGc3SzzNqv3iS8k5MGRIjcrF4VNMl
	VVD7QRPxw4qVYgQp1g4+ZjIYo7Xmn/IEdpL6epXYNttO0Txe8uZv44x5pZvsnf7Go6grEyZA4oZDT
	Q4YOK/zQF/k5uibhMv2lVxsYfnlNZn54BP/cljykbQHVGKnyvuLxbVCx20WpmSM5Nj/jvkYj6UKS5
	i+/IlIWZAicvNiUO6meadP7nQdIx8v2DugmV/OBuIkDiEu13MKIEonSu9EyB1TmwhQtPCAMejhRm3
	BJOyzyhopUCZwew2FD5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2Wx-0002zT-JA; Sun, 20 Oct 2019 04:09:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W5-0002UI-65; Sun, 20 Oct 2019 04:08:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A90FCAC2C;
 Sun, 20 Oct 2019 04:08:26 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 3/8] dt-bindings: arm: realtek: Tidy up conversion to
 json-schema
Date: Sun, 20 Oct 2019 06:08:12 +0200
Message-Id: <20191020040817.16882-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210829_380944_742248B1 
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVzdG9yZSB0aGUgZGV2aWNlIG5hbWVzIGZvciBjb21wYXRpYmxlIHN0cmluZ3MgYXMgY29tbWVu
dHMuClByZXBhcmUgZm9yIGFkZGluZyBtb3JlIFNvQ3MgYnkgaW5zZXJ0aW5nIG9uZU9mLgoKRml4
ZXM6IDY5M2FmNWYzZWVhYSAoImR0LWJpbmRpbmdzOiBhcm06IENvbnZlcnQgUmVhbHRlayBib2Fy
ZC9zb2MgYmluZGluZ3MgdG8ganNvbi1zY2hlbWEiKQpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbD
pHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjI6IE5ldwogCiBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCB8IDE1ICsrKysrKysrLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sCmluZGV4
IDM1MjhiNjE5NjNiNC4uNjY0NThhM2Y0MjJkIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbApAQCAtMTMsMTEgKzEzLDEyIEBAIHBy
b3BlcnRpZXM6CiAgICRub2RlbmFtZToKICAgICBjb25zdDogJy8nCiAgIGNvbXBhdGlibGU6Ci0g
ICAgIyBSVEQxMjk1IFNvQyBiYXNlZCBib2FyZHMKLSAgICBpdGVtczoKLSAgICAgIC0gZW51bToK
LSAgICAgICAgICAtIG1lbGUsdjkKLSAgICAgICAgICAtIHByb2JveDIsYXZhCi0gICAgICAgICAg
LSB6aWRvbyx4OXMKLSAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTI5NQorICAgIG9uZU9mOgor
ICAgICAgIyBSVEQxMjk1IFNvQyBiYXNlZCBib2FyZHMKKyAgICAgIC0gaXRlbXM6CisgICAgICAg
ICAgLSBlbnVtOgorICAgICAgICAgICAgICAtIG1lbGUsdjkgIyBNZUxFIFY5CisgICAgICAgICAg
ICAgIC0gcHJvYm94MixhdmEgIyBQcm9Cb3gyIEFWQQorICAgICAgICAgICAgICAtIHppZG9vLHg5
cyAjIFppZG9vIFg5UworICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRkMTI5NQogLi4uCi0t
IAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
