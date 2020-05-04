Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65AE1C49A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 00:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ccj2Wlblad86Gi4KXqZSGEcAX3fNSEl6H/fliA+eg7g=; b=tJQOZoMjVMGkRr
	S4bsYdlL6hyia12fXIrT6+t+TWC9flBFevnRL+WmokcmIAdsiW/3K67OjAUPsHEvC07NtcySjc3Hf
	op0c3ECUrbuelBHF+7FBUE4Y4+3D5bxHoP6P4K7FfJGsyUhWJ7RLNEU/nlFbLdH0rADVREVEEfJK5
	nA++iOUP+6lAomfe33NIdqS9i+G5OGfkAi5rY1gVXHKlfuXdVMcgQerwJ/rZNu9xrYRPalQexX884
	6lWO25alGPMLW+70MQk5GMIYaFCLiE566f2BzTc0J1JF8/T2sEMFBSofw8+/90ZLXADiI240lVLM2
	xO+DssdMHvn6ixnNTp4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjiv-0001wP-Vw; Mon, 04 May 2020 22:38:06 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjio-0001v7-4a
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 22:37:59 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49GHn027BZz8r;
 Tue,  5 May 2020 00:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1588631876; bh=qcQYscDQASAGGq1qfnXT5pHuuM+wfGhJkYYXvoJsvpU=;
 h=Date:From:Subject:To:Cc:From;
 b=VZCoghIBoeoMhFPrQf0kXhVMMWab6ZYGQo7bVWHNzBPGpKGTv8WxKBOgozXCJqUyA
 trN0BkWoqdWSuz9pUhgoH84aE5D6lHqkwzKU2IBFpZ9iGq4CAqJsqUT8JQucr2XJYN
 VPTpOavoFhlldfLi8UJwei6RSoHULNhfDAzswotYkobJJzI2qu+ticWmT1Ic4l06Pf
 vAC2ztybbUx/LbYJne5x+/EWBRLYufvcIOJDr5FJ6ck+8J4f44HBc7oAJtsZVSJGbk
 +Zz+6Ziy8gtKcm6b75TGXZuz6RdV/iALVACy4DWGWmEJGblzooS574x36KwviX2yiH
 GtkR2O381goVg==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Tue, 05 May 2020 00:37:56 +0200
Message-Id: <cover.1588630999.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v7 0/3] clk: at91: support configuring more clocks via DT
MIME-Version: 1.0
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_153758_344235_F8362177 
X-CRM114-Status: UNSURE (   6.01  )
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
