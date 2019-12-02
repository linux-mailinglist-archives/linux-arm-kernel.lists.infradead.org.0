Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F312E10E8DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhdxfwTK9ITtIeqZa+6JN48tmYTNXqP0IxU0q8yP/Wc=; b=jEYl3uyfHhTAaV
	AaLD4RsGOcXIpLY/owTSYZusTfHWeBNxW1wWaLup9Rx5hfe2rCct40Pls85EanL+e3u1JgNJF8c0e
	iuGZnQgodPwrCi5UeWGOVlYpkGS7/GhI5hIbTbSQi/5+FJ6bsjzMM4Pw9Pm75/vxZKcu0t/JDc8tW
	ohfd111wGeIxaP1bOt9wassjUz6Eog74KgWICpVD3uizdkcOHmTAdKmCQclTp3wJmIGA8KzHvd4qE
	eyxOHMJRiRDAKiGys9c1yfEaUhUWWgbCVSUqvJwFNhUU4pahZA8a+YkZVBZatpoOn7o/cLy4X3Fup
	lqiH6nyqo/8/kLpCzu1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiyl-0007eb-An; Mon, 02 Dec 2019 10:30:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibixH-0005CC-9Z; Mon, 02 Dec 2019 10:29:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D2779B2BF;
 Mon,  2 Dec 2019 10:29:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 6/9] dt-bindings: arm: realtek: Add RTD1395 and Banana Pi
 BPI-M4
Date: Mon,  2 Dec 2019 11:29:07 +0100
Message-Id: <20191202102910.26916-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202102910.26916-1-afaerber@suse.de>
References: <20191202102910.26916-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022923_497071_D0A08313 
X-CRM114-Status: UNSURE (   7.63  )
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxMzk1IFNvQyBhbmQgQlBJ
LU00IFNCQy4KClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjEgLT4g
djI6IFVuY2hhbmdlZAogKiBQaWNrZWQgdXAgUmV2aWV3ZWQtYnkgZnJvbSBSb2IKIAogRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwgfCA2ICsrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKaW5kZXggNDQ1YzU2Y2JkY2JiLi5k
YzA5N2VkNWE3ZTUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vcmVhbHRlay55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vcmVhbHRlay55YW1sCkBAIC00MSw2ICs0MSwxMiBAQCBwcm9wZXJ0aWVzOgogICAgICAg
ICAgICAgICAtIHN5bm9sb2d5LGRzNDE4ICMgU3lub2xvZ3kgRGlza1N0YXRpb24gRFM0MTgKICAg
ICAgICAgICAtIGNvbnN0OiByZWFsdGVrLHJ0ZDEyOTYKIAorICAgICAgIyBSVEQxMzk1IFNvQyBi
YXNlZCBib2FyZHMKKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAgLSBlbnVtOgorICAgICAgICAg
ICAgICAtIGJhbmFuYXBpLGJwaS1tNCAjIEJhbmFuYSBQaSBCUEktTTQKKyAgICAgICAgICAtIGNv
bnN0OiByZWFsdGVrLHJ0ZDEzOTUKKwogICAgICAgIyBSVEQxNjE5IFNvQyBiYXNlZCBib2FyZHMK
ICAgICAgIC0gaXRlbXM6CiAgICAgICAgICAgLSBlbnVtOgotLSAKMi4xNi40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
