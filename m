Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBF4DE1F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 04:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qRIhhhbxfWoQWwDVw7niL1K1u13IAqatV7ER656DuA=; b=SDaxE6KgZRMcdZ
	En6NEobDvw2oNiORhIKavH+U/T5C1M0MRfGovlcN0fGF8SDAdlSwF9Xbok9BV1mZ6arqbtwkwO4aV
	33fdQUI2cm8j0umAxMnlFM57y6wtmrviPe9AP3aLhCUXoEouHqEWAuIxInI+TrouUJhyPUveB7a3Q
	8jJS1t7It9WXyGfuuIM7oXuCY2a7F039dWt7UjMkS6wGeAoLr1Skx+xOpxGThFgvtm1Vqx3BB6uhm
	76dMBwf3kMkjGN1pxdpzTKxJS0CqHe0p5y15IHdwLy+6clFT6GoFOpUmCEmTIK6MbCe4urKKqlE60
	n91s6P1sKNBHxPHfLKYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMNAP-0008BU-Gm; Mon, 21 Oct 2019 02:11:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMN9h-0007iB-Ov; Mon, 21 Oct 2019 02:10:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 84B04B1FF;
 Mon, 21 Oct 2019 02:10:44 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 2/3] ARM: Prepare Realtek RTD1195
Date: Mon, 21 Oct 2019 04:10:34 +0200
Message-Id: <20191021021035.7032-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191021021035.7032-1-afaerber@suse.de>
References: <20191021021035.7032-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_191045_952258_D5C42E0E 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW50cm9kdWNlIEFSQ0hfUkVBTFRFSyBLY29uZmlnIG9wdGlvbiBhbHNvIGZvciAzMi1iaXQgQXJt
LgoKT3ZlcnJpZGUgdGhlIHRleHQgb2Zmc2V0IHRvIGNvcGUgd2l0aCBib290IFJPTSBsaXZpbmcg
dXAgdG8gMHhmNDAwMC4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4KLS0tCiBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICB8ICAyICsrCiBhcmNo
L2FybS9NYWtlZmlsZSAgICAgICAgICAgICB8ICAxICsKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9L
Y29uZmlnIHwgMTYgKysrKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcK
CmRpZmYgLS1naXQgYS9hcmNoL2FybS9LY29uZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwppbmRleCA4
YTUwZWZiNTU5ZjMuLmFjMGQxODM3MjUzZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vS2NvbmZpZwor
KysgYi9hcmNoL2FybS9LY29uZmlnCkBAIC03MDAsNiArNzAwLDggQEAgc291cmNlICJhcmNoL2Fy
bS9tYWNoLXFjb20vS2NvbmZpZyIKIAogc291cmNlICJhcmNoL2FybS9tYWNoLXJkYS9LY29uZmln
IgogCitzb3VyY2UgImFyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmlnIgorCiBzb3VyY2UgImFy
Y2gvYXJtL21hY2gtcmVhbHZpZXcvS2NvbmZpZyIKIAogc291cmNlICJhcmNoL2FybS9tYWNoLXJv
Y2tjaGlwL0tjb25maWciCmRpZmYgLS1naXQgYS9hcmNoL2FybS9NYWtlZmlsZSBiL2FyY2gvYXJt
L01ha2VmaWxlCmluZGV4IGRiODU3ZDA3MTE0Zi4uNjBjNzYzODBmMzgwIDEwMDY0NAotLS0gYS9h
cmNoL2FybS9NYWtlZmlsZQorKysgYi9hcmNoL2FybS9NYWtlZmlsZQpAQCAtMTQ4LDYgKzE0OCw3
IEBAIGhlYWQteQkJOj0gYXJjaC9hcm0va2VybmVsL2hlYWQkKE1NVUVYVCkubwogdGV4dG9mcy15
CTo9IDB4MDAwMDgwMDAKICMgV2UgZG9uJ3Qgd2FudCB0aGUgaHRjIGJvb3Rsb2FkZXIgdG8gY29y
cnVwdCBrZXJuZWwgZHVyaW5nIHJlc3VtZQogdGV4dG9mcy0kKENPTkZJR19QTV9IMTk0MCkgICAg
ICA6PSAweDAwMTA4MDAwCit0ZXh0b2ZzLSQoQ09ORklHX0FSQ0hfUkVBTFRFSykgIDo9IDB4MDAx
MDgwMDAKICMgU0ExMTExIERNQSBidWc6IHdlIGRvbid0IHdhbnQgdGhlIGtlcm5lbCB0byBsaXZl
IGluIHByZWNpb3VzIERNQS1hYmxlIG1lbW9yeQogaWZlcSAoJChDT05GSUdfQVJDSF9TQTExMDAp
LHkpCiB0ZXh0b2ZzLSQoQ09ORklHX1NBMTExMSkgOj0gMHgwMDIwODAwMApkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcgYi9hcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2Nv
bmZpZwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjY3YWU1ZjEyMmFj
YgotLS0gL2Rldi9udWxsCisrKyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmlnCkBAIC0w
LDAgKzEsMTYgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIK
K21lbnVjb25maWcgQVJDSF9SRUFMVEVLCisJYm9vbCAiUmVhbHRlayBTb0NzIgorCWRlcGVuZHMg
b24gQVJDSF9NVUxUSV9WNworCXNlbGVjdCBBUk1fQU1CQQorCXNlbGVjdCBBUk1fR0lDCisJc2Vs
ZWN0IEFSTV9HTE9CQUxfVElNRVIKKwlzZWxlY3QgQ0FDSEVfTDJYMAorCXNlbGVjdCBDTEtTUkNf
QVJNX0dMT0JBTF9USU1FUl9TQ0hFRF9DTE9DSworCXNlbGVjdCBDT01NT05fQ0xLCisJc2VsZWN0
IEdFTkVSSUNfSVJRX0NISVAKKwlzZWxlY3QgSEFWRV9BUk1fU0NVIGlmIFNNUAorCXNlbGVjdCBI
QVZFX0FSTV9UV0QgaWYgU01QCisJc2VsZWN0IFJFU0VUX0NPTlRST0xMRVIKKwloZWxwCisJICBU
aGlzIGVuYWJsZXMgc3VwcG9ydCBmb3IgdGhlIFJlYWx0ZWsgUlREMTE5NSBTb0MgZmFtaWx5Lgot
LSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
