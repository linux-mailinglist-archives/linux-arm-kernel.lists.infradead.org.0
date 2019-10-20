Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39415DDC53
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/kLao2I9CXdLK5Qtjw/i/qT7trYIgyPh9/cedpAI0E=; b=M/ZLMGLzNg6sLB
	snq0yMF9OfoOcIrZXQGqRHCyLyo6w9ln7xBjxfgANq13vQkPUW2r/5BjIdNTgWZElLdvES8e88Sna
	Nl1UiRNGm2t6hSXjB6TayJC4JkGzp1wFLhh7LraHFOiOiUzg1hiGd4DAMV3PV49cvg/y0IVXGSvT/
	RWYtNZJMuqKP49/lLXuvGY+8qBviFaDk0O3eIpNUJ2vYqm+G9p3pXQ0gPeuj+rwsF+s+7+iaZgTIa
	O3H4D5noJ7JGSFFImik5oFDJxcO4ZaiPvrYgR/Wu4BzA57KdEeBGdnf0c+SFGjxaKOtF5BMnb3Bpb
	acvd43g1cC4BfvhPeUtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2Xk-0003iK-4R; Sun, 20 Oct 2019 04:10:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W8-0002Vk-5w; Sun, 20 Oct 2019 04:08:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C69D2B2EA;
 Sun, 20 Oct 2019 04:08:28 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 7/8] dt-bindings: arm: realtek: Document RTD1296 and
 Synology DS418
Date: Sun, 20 Oct 2019 06:08:16 +0200
Message-Id: <20191020040817.16882-8-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210832_380797_69E2ACDD 
X-CRM114-Status: UNSURE (   8.43  )
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
 linux-kernel@vger.kernel.org, info@synology.com,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxMjk2IFNvQyBhbmQgU3lu
b2xvZ3kKRGlza1N0YXRpb24gRFM0MTggTkFTLgoKQ2M6IGluZm9Ac3lub2xvZ3kuY29tCkFja2Vk
LWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpbQUY6IENvbnZlcnRlZCB0byBqc29u
LXNjaGVtYV0KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRl
PgotLS0KIHYxIC0+IHYyOgogKiBDb252ZXJ0ZWQgdG8gWUFNTCBzY2hlbWEKIAogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwgfCA2ICsrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKaW5kZXggNmVhM2E3OTgyNWNjLi5hYjU5
ZGUxNzE1MmQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcmVhbHRlay55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcmVhbHRlay55YW1sCkBAIC0yNyw0ICsyNywxMCBAQCBwcm9wZXJ0aWVzOgogICAgICAgICAg
ICAgICAtIHByb2JveDIsYXZhICMgUHJvQm94MiBBVkEKICAgICAgICAgICAgICAgLSB6aWRvbyx4
OXMgIyBaaWRvbyBYOVMKICAgICAgICAgICAtIGNvbnN0OiByZWFsdGVrLHJ0ZDEyOTUKKworICAg
ICAgIyBSVEQxMjk2IFNvQyBiYXNlZCBib2FyZHMKKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAg
LSBlbnVtOgorICAgICAgICAgICAgICAtIHN5bm9sb2d5LGRzNDE4ICMgU3lub2xvZ3kgRGlza1N0
YXRpb24gRFM0MTgKKyAgICAgICAgICAtIGNvbnN0OiByZWFsdGVrLHJ0ZDEyOTYKIC4uLgotLSAK
Mi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
