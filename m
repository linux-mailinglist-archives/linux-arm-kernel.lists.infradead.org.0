Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A131C477A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ccj2Wlblad86Gi4KXqZSGEcAX3fNSEl6H/fliA+eg7g=; b=MtpLFE/TX26Z9d
	wS8UTJF+G1MekAv6D+W5Iv27vaWt0Ew6+PDebsuU8bt7ZyQUdgNxCgZI30xKZcOPlcTpIHrbHA/xn
	AIorXnGVWs1l9Enai4DhLlVWsMiQyuRsiV6kYswumoVkdTH7rLxlu3IsZI9o43hFZ8UUDeRAGGmwF
	OuTw7/0g/XejpkeGG+U+waldYxfq/E/5W9VtuXMk8xdCivs1NqKUqAlwD9fc2Chz1leSPYixBeIlG
	j5vu5SBBIV8mE4zOd/p9eZD+Po/ypP1RtEOr81mGoYJ+aGt1+Dyr+n1pPv9Obssj+tsq7F9GDtP6u
	ZGbHOy7filNaRVC/ndYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhEy-0007ko-9c; Mon, 04 May 2020 19:59:00 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhEo-0007hh-VV
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 19:58:52 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49GDFB1NJTzGl;
 Mon,  4 May 2020 21:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1588622324; bh=qcQYscDQASAGGq1qfnXT5pHuuM+wfGhJkYYXvoJsvpU=;
 h=Date:From:Subject:To:Cc:From;
 b=a7j8WJNCy21YcZyhIxF0+HsMkUng70nkDXh0DalWFgLFFzLOmSPNszCOInbZBuNyt
 dLgiDXMdmHbjsdW6wL6HDFt7l5r+YNlCd9qE/yqCj0uweGcwwzYz0ZJ1j96MVi37KB
 qlLsxKE4cCC/Gj1QF+izr/RzXBn4TGzpTEGbjSo9oiH59X6lKXnhg2T8TVtLHG5/le
 7PwVGHDA305CuF7ap/KFhZ6FCTCcjH1G3/2P8iyTGPhV/Ss0OYGdoyGrg2+fkUxAz3
 AuUzNL50JoQwCJ6spZU98phxBweZVCPFo+f7G/QMZ9p1Z6mqTHOr1IpwWZ9y0RqS/p
 dzKcXzaQ6sIoA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Mon, 04 May 2020 21:58:37 +0200
Message-Id: <cover.1588622158.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v5 0/3] clk: at91: support configuring more clocks via DT
MIME-Version: 1.0
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_125851_178732_FDAA9200 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgZXh0ZW5kcyBBVDkxIGNsb2NrIHN1cHBvcnQgd2l0aCByZWZlcmVuY2VzIHRv
IFBDS3ggYW5kClBMTEEvUExMQi9BVURJT1BMTC4gVGhpcyBtYWtlcyB0aGUgRFQgYmUgYWJsZSB0
byBmdWxseSBzcGVjaWZ5IChhc3NpZ24pCmNsb2NrIHBhcmVudHMgd2hlbiBuZWVkZWQuCgpGaXJz
dCBwYXRjaCBzaW1wbGlmaWVzIGNsb2NrIHRhYmxlIGFsbG9jYXRpb24uIE5leHQgdHdvIHVwZGF0
ZSB0aGUgdGFibGUKd2l0aCBtaXNzaW5nIGNsb2NrIHBvaW50ZXJzIGFuZCBJRHMuCgoKTWljaGHF
giBNaXJvc8WCYXcgKDMpOgogIGNsazogYXQ5MTogb3B0aW1pemUgcG1jIGRhdGEgYWxsb2NhdGlv
bgogIGNsazogYXQ5MTogYWxsb3cgc2V0dGluZyBQQ0t4IHBhcmVudCB2aWEgRFQKICBjbGs6IGF0
OTE6IGFsbG93IHNldHRpbmcgYWxsIFBNQyBjbG9jayBwYXJlbnRzIHZpYSBEVAoKIGRyaXZlcnMv
Y2xrL2F0OTEvYXQ5MXJtOTIwMC5jICAgIHwgMTIgKysrKysrLS0tCiBkcml2ZXJzL2Nsay9hdDkx
L2F0OTFzYW05MjYwLmMgICB8IDEzICsrKysrKystLS0KIGRyaXZlcnMvY2xrL2F0OTEvYXQ5MXNh
bTlnNDUuYyAgIHwgMTAgKysrKystLS0KIGRyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTluMTIuYyAg
IHwgMTIgKysrKysrLS0tCiBkcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05cmwuYyAgICB8IDEwICsr
KysrLS0tCiBkcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05eDUuYyAgICB8IDEwICsrKysrLS0tCiBk
cml2ZXJzL2Nsay9hdDkxL3BtYy5jICAgICAgICAgICB8IDQ0ICsrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tCiBkcml2ZXJzL2Nsay9hdDkxL3BtYy5oICAgICAgICAgICB8ICA4ICsrKyst
LQogZHJpdmVycy9jbGsvYXQ5MS9zYW05eDYwLmMgICAgICAgfCAxMCArKysrKy0tLQogZHJpdmVy
cy9jbGsvYXQ5MS9zYW1hNWQyLmMgICAgICAgfCAxMiArKysrKystLS0KIGRyaXZlcnMvY2xrL2F0
OTEvc2FtYTVkMy5jICAgICAgIHwgMTAgKysrKystLS0KIGRyaXZlcnMvY2xrL2F0OTEvc2FtYTVk
NC5jICAgICAgIHwgMTAgKysrKystLS0KIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYXQ5MS5o
IHwgIDQgKysrCiAxMyBmaWxlcyBjaGFuZ2VkLCAxMDYgaW5zZXJ0aW9ucygrKSwgNTkgZGVsZXRp
b25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
