Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EB611C44A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFvQe829y8HvhPMyloR1l6BczJyJNCPPtH8SMxRKliU=; b=gT5/slZ4jZ5ph4
	ie857KCVvsSZbYoh4YmzJwJPOM4q1+IMwfeXI5DBRZtAHrvmkH08Xkli4ZkshNDRyEwh4nVxcqc11
	6lNVqblb3Diq9EuvTbiziNNVnc382f3gIlSf9XFJdqAIOb1gJ+PHyJCSHZaFvucn8LU+w4494aP+r
	13HuQISfat5UCbKlIgT7zofzfCrfSczlIsUd2Ke2kPMvXEdJGldWIGTc3QLi+W8lwctS7MAXTBDXi
	uBYZmiYko/lHlMgyIcat6rgslhSZOMhTvD6WIbVLh3EGAQE2Ve8sEjcsFvLoJA1icERqrB35VfAd4
	qQQD+OmVE1EwYAbwSofQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFP7-0005lw-HC; Thu, 12 Dec 2019 03:44:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKi-0000oY-Ax; Thu, 12 Dec 2019 03:40:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5E564AFA8;
 Thu, 12 Dec 2019 03:40:05 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 18/25] dt-bindings: leds: tm1628: Define display child nodes
Date: Thu, 12 Dec 2019 04:39:45 +0100
Message-Id: <20191212033952.5967-19-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194008_577992_BAB74254 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW1lbmQgdGhlIGluZGl2aWR1YWwgTEVEcyBieSBhbGxvd2luZyB0byBzcGVjaWZ5IG9uZSBzcGVj
aWFsIGNoaWxkIG5vZGUKd2l0aCBtb3JlIHRoYW4gb25lIHJlZyBlbnRyeSwgd2l0aCB2YWx1ZSB6
ZXJvIGhhdmluZyB3aWxkY2FyZCBtZWFuaW5nLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIFJlYWQgdGhlIGNvdmVyIGxldHRlciBmb3IgZnVy
dGhlciBkaXNjdXNzaW9uIG9mIGNvbmNlcHQgYW5kIGFsdGVybmF0aXZlcy4KIAogLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbGVkcy90aXRhbm1lYyx0bTE2MjgueWFtbCAgfCA1MiArKysrKysrKysr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9sZWRzL3RpdGFubWVjLHRtMTYy
OC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2xlZHMvdGl0YW5tZWMs
dG0xNjI4LnlhbWwKaW5kZXggNTAyMDVlM2MzNjI0Li5jZjZjOGQ4MWU2OGMgMTAwNjQ0Ci0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9sZWRzL3RpdGFubWVjLHRtMTYyOC55
YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9sZWRzL3RpdGFubWVj
LHRtMTYyOC55YW1sCkBAIC01Myw2ICs1MywyNCBAQCBwYXR0ZXJuUHJvcGVydGllczoKICAgICBy
ZXF1aXJlZDoKICAgICAgIC0gcmVnCiAKKyAgIl5kaXNwbGF5QChbMS03XSwwfDAsKFsxLTldfDFb
MDItNF0pKSQiOgorICAgIHR5cGU6IG9iamVjdAorICAgIGRlc2NyaXB0aW9uOiB8CisgICAgICBQ
cm9wZXJ0aWVzIGZvciBhIHNlcXVlbmNlIG9mIDctc2VnbWVudCBkaWdpdHMgY29tcG9zZWQgb2Yg
bXVsdGlwbGUgTEVEcy4KKworICAgIHByb3BlcnRpZXM6CisgICAgICByZWc6CisgICAgICAgIGRl
c2NyaXB0aW9uOiB8CisgICAgICAgICAgT25lIG9yIG1vcmUgdHVwbGVzIG9mIGdyaWQgbnVtYmVy
IGFuZCBzZWdtZW50IG51bWJlciBpbiB2aXN1YWwgb3JkZXIuCisgICAgICAgICAgQSBzZWdtZW50
IG9mIHplcm8gaW5kaWNhdGVzIHRoYXQgdGhlIGNvcnJlc3BvbmRpbmcgZ3JpZCBvdXRwdXQgbGlu
ZXMKKyAgICAgICAgICByZXByZXNlbnQgdGhlIGluZGl2aWR1YWwgc2VnbWVudHM7IGEgZ3JpZCBv
ZiB6ZXJvIGluZGljYXRlcyB0aGF0IHRoZQorICAgICAgICAgIGNvcnJlc3BvbmRpbmcgc2VnbWVu
dCBvdXRwdXQgbGluZXMgcmVwcmVzZW50IHRoZSBpbmRpdmlkdWFsIHNlZ21lbnRzLgorICAgICAg
ICBtaW5JdGVtczogMQorICAgICAgICBtYXhJdGVtczogNworCisgICAgcmVxdWlyZWQ6CisgICAg
ICAtIHJlZworCiBleGFtcGxlczoKICAgLSB8CiAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xl
ZHMvY29tbW9uLmg+CkBAIC03MSw2ICs4OSw0MCBAQCBleGFtcGxlczoKICAgICAgICAgICAgICNh
ZGRyZXNzLWNlbGxzID0gPDI+OwogICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47CiAKKyAg
ICAgICAgICAgIGRpc3BsYXlAMCw4IHsKKyAgICAgICAgICAgICAgICByZWcgPSA8MCA4PiwgPDAg
Nz4sIDwwIDY+LCA8MCA1PjsKKyAgICAgICAgICAgIH07CisKKyAgICAgICAgICAgIGNvbG9uQDUs
NCB7CisgICAgICAgICAgICAgICAgcmVnID0gPDUgND47CisgICAgICAgICAgICAgICAgY29sb3Ig
PSA8TEVEX0NPTE9SX0lEX1dISVRFPjsKKyAgICAgICAgICAgICAgICBmdW5jdGlvbiA9IExFRF9G
VU5DVElPTl9JTkRJQ0FUT1I7CisgICAgICAgICAgICAgICAgbGludXgsZGVmYXVsdC10cmlnZ2Vy
ID0gImhlYXJ0YmVhdCI7CisgICAgICAgICAgICB9OworICAgICAgICB9OworICAgIH07CisKKyAg
LSB8CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+CisKKyAgICBzcGkg
eworICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKKyAgICAgICAgI3NpemUtY2VsbHMgPSA8
MD47CisKKyAgICAgICAgbGVkLWNvbnRyb2xsZXJAMCB7CisgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInRpdGFubWVjLHRtMTYyOCI7CisgICAgICAgICAgICByZWcgPSA8MD47CisgICAgICAgICAg
ICBzcGktMy13aXJlOworICAgICAgICAgICAgc3BpLWxzYi1maXJzdDsKKyAgICAgICAgICAgIHNw
aS1tYXgtZnJlcXVlbmN5ID0gPDUwMDAwMD47CisgICAgICAgICAgICAjZ3JpZHMgPSA8Nj47Cisg
ICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKKyAgICAgICAgICAgICNzaXplLWNlbGxz
ID0gPDA+OworCisgICAgICAgICAgICBkaXNwbGF5QDEsMCB7CisgICAgICAgICAgICAgICAgcmVn
ID0gPDEgMD4sIDwyIDA+LCA8MyAwPiwgPDQgMD47CisgICAgICAgICAgICB9OworCiAgICAgICAg
ICAgICBjb2xvbkA1LDQgewogICAgICAgICAgICAgICAgIHJlZyA9IDw1IDQ+OwogICAgICAgICAg
ICAgICAgIGNvbG9yID0gPExFRF9DT0xPUl9JRF9XSElURT47Ci0tIAoyLjE2LjQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
