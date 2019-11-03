Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF99ED16E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvbeKO2oCNTYUb9wosy3v79RekJvcXcHkwJQ78wjedQ=; b=EYLg7rf0cOQ7d3
	xz3gII2L94VpV4ERhTwTfLMVykhbeUSZsQOWlKwV7GJ66mZgPLEHzYA7sYJ7IZoMizw7fa3o8BLt3
	7n8tiagqbDJ0EPi1f0F35M6yp1+2ymwKuoWY6BRcibC/V6OUM/YkOcE8WU/v4QMOjEkIPRX3GuK8f
	2EfoOk2QzxvFcw0zRdeb++vj4PF6Gq1LOSvwoBD9Y9B2vcQirtrMbCerHg6mBd9N7M1aaJtEb5GX1
	XkVYXT+vxkd8dO5Ou7InlALgiX/ZPCWLXjoL5KGlU6eetJ0JYe1fj+MmYHfKC4hpJ5yZ89zKyGZO7
	pIstL/bz3enPOzw3/O2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4po-0005PX-E0; Sun, 03 Nov 2019 01:37:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4p7-0004qR-Od; Sun, 03 Nov 2019 01:37:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E1C8FAF6B;
 Sun,  3 Nov 2019 01:36:53 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 03/11] arm64: dts: realtek: rtd129x: Add chip info node
Date: Sun,  3 Nov 2019 02:36:37 +0100
Message-Id: <20191103013645.9856-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183657_954137_0B52BB4E 
X-CRM114-Status: UNSURE (   9.12  )
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

QWRkIGEgRFQgbm9kZSBmb3IgY2hpcCBpZGVudGlmaWNhdGlvbi4KClNpZ25lZC1vZmYtYnk6IEFu
ZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTI5eC5kdHNpIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCmluZGV4IDQ0
MzMxMTQ0NzZmNS4uMTVhN2MyNDkxNTVkIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTI5eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjl4LmR0c2kKQEAgLTg0LDYgKzg0LDExIEBACiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwog
CQl9OwogCisJCWNoaXAtaW5mb0A5ODAxYTIwMCB7CisJCQljb21wYXRpYmxlID0gInJlYWx0ZWss
cnRkMTE5NS1jaGlwIjsKKwkJCXJlZyA9IDwweDk4MDFhMjAwIDB4OD47CisJCX07CisKIAkJdWFy
dDE6IHNlcmlhbEA5ODAxYjIwMCB7CiAJCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQi
OwogCQkJcmVnID0gPDB4OTgwMWIyMDAgMHgxMDA+OwotLSAKMi4xNi40CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
