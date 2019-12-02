Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE10210EF4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9Ay6w73fU88RiBC3scXmg22L53boliYiv8nXPJMczA=; b=k3H5QnTKCl707E
	Rx0m+9GDlWYOzEmRVOizTJXDcYlJZmHczQmUudzqBxQiw9dvT1aH1v+aahSvd2+eC5SLB01apr8RQ
	N2z8zpBGJ08ttnD0Zplv24S/V4Nrj7oxOA6pv6ANxvbEIl1edVmstFKTlhlJfGUZ51trx6/OHtTYu
	VdQ1NoH6gnmQfcCkMebVdYBAvKShH9mA/C8YnRU/NzOKL/y+EaOsT+BI6hHDNuYd/KJKvkRpc6Gsu
	xdoQ9vBpCBlkWmR4K0qw9eQM/G9EdY3eq8VMzbBmUnCwrqkN0h/FEyJc4D6a3vULTHEh5Q9ZikMIa
	Lb2K94NDz9M/YAaq5DLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqOG-0000IU-Qb; Mon, 02 Dec 2019 18:25:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKy-0004Hg-Nv; Mon, 02 Dec 2019 18:22:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8D690AEFB;
 Mon,  2 Dec 2019 18:22:18 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 12/14] arm64: dts: realtek: rtd139x: Add SB2 and SCPU Wrapper
 syscon nodes
Date: Mon,  2 Dec 2019 19:22:02 +0100
Message-Id: <20191202182205.14629-13-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102220_946212_C55F8104 
X-CRM114-Status: UNSURE (   8.13  )
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
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHN5c2NvbiBtZmQgbm9kZXMgZm9yIFNCMiBhbmQgU0NQVSBXcmFwcGVyIHRvIFJURDEzOXgg
RFQuCgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+ClNpZ25lZC1vZmYtYnk6
IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpIHwgMTggKysrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxMzl4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTM5eC5kdHNpCmluZGV4IDNhNTcxZjNiN2UzOC4uYTNjMTBjZWViNTg2IDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMzl4LmR0c2kKQEAgLTc5LDYgKzc5LDE1IEBACiAJCQkJcmFu
Z2VzID0gPDB4MCAweDcwMDAgMHgxMDAwPjsKIAkJCX07CiAKKwkJCXNiMjogc3lzY29uQDFhMDAw
IHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKKwkJCQlyZWcgPSA8
MHgxYTAwMCAweDEwMDA+OworCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJCQlyYW5nZXMgPSA8MHgwIDB4
MWEwMDAgMHgxMDAwPjsKKwkJCX07CisKIAkJCW1pc2M6IHN5c2NvbkAxYjAwMCB7CiAJCQkJY29t
cGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7CiAJCQkJcmVnID0gPDB4MWIwMDAgMHgx
MDAwPjsKQEAgLTg3LDYgKzk2LDE1IEBACiAJCQkJI3NpemUtY2VsbHMgPSA8MT47CiAJCQkJcmFu
Z2VzID0gPDB4MCAweDFiMDAwIDB4MTAwMD47CiAJCQl9OworCisJCQlzY3B1X3dyYXBwZXI6IHN5
c2NvbkAxZDAwMCB7CisJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7CisJ
CQkJcmVnID0gPDB4MWQwMDAgMHgyMDAwPjsKKwkJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MT47CisJCQkJcmFuZ2Vz
ID0gPDB4MCAweDFkMDAwIDB4MjAwMD47CisJCQl9OwogCQl9OwogCiAJCWdpYzogaW50ZXJydXB0
LWNvbnRyb2xsZXJAZmYwMTEwMDAgewotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
