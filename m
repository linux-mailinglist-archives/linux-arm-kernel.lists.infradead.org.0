Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D5FED160
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rElM6T9OPSgQ+F25hQ5bGWtFjbxRpy3SSl0hiRrescA=; b=ROAGYdCXde2YYk
	6gKbz2zNMUlCKRuiygaVFdM1WH9iRnb4J0TYuctWQp5Wd6yHovTqZkUca97ARHgXSbCanAMxyBPgy
	0T8NzI/zcvLtfhyzgDAKjsdrofuYIV8tqKXgXfd2rHyI9uPyupGCWuxERjMRNTxh4YefW1/ix78rs
	8IlL8s9/wDNU48gpaO2cLjNJDl5HHVoFQOz4y5OgK3cuEjxtsMPj2bMsHF0gfZ5KHKggveEEliKIC
	gATTLtyLvPeByqQQd1wICg2TDVJR0BhWWP//F142vw7SN8bONn7nWD4ChkRE2HxYVuP5lEmvr965Y
	LBvsC10tlWF/w4GyR5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4pI-0004x2-Bq; Sun, 03 Nov 2019 01:37:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4p7-0004sf-Oi; Sun, 03 Nov 2019 01:36:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5C9D5AF92;
 Sun,  3 Nov 2019 01:36:54 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 04/11] ARM: dts: rtd1195: Add chip info node
Date: Sun,  3 Nov 2019 02:36:38 +0100
Message-Id: <20191103013645.9856-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183657_963490_1B50947E 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
ZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9y
dGQxMTk1LmR0c2kgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpCmluZGV4IDllMDg4ZjY2OWJkNy4uZGQ0ZjNlZTZiZTQzIDEwMDY0
NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpCkBAIC0xMzMsNiArMTMzLDExIEBACiAJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOwogCQl9OwogCisJCWNoaXAtaW5mb0AxODAxYTIwMCB7CisJCQljb21wYXRpYmxlID0g
InJlYWx0ZWsscnRkMTE5NS1jaGlwIjsKKwkJCXJlZyA9IDwweDE4MDFhMjAwIDB4OD47CisJCX07
CisKIAkJdWFydDE6IHNlcmlhbEAxODAxYjIwMCB7CiAJCQljb21wYXRpYmxlID0gInNucHMsZHct
YXBiLXVhcnQiOwogCQkJcmVnID0gPDB4MTgwMWIyMDAgMHgxMDA+OwotLSAKMi4xNi40CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
