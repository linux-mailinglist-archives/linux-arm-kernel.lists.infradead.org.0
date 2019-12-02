Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D676F10EF20
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWGTvAA2bSTGkjYhY9Zo3s/aXPcKGHPqBe0tVcD/z/w=; b=S8Z/6fb6pnNVY4
	aYJuM67EmZa0RqeHvazZZSbNBhyZ8oE1qdh309NL2luPhbfB9Xsa08GgetUBTKBSNpM99oR6c45Cs
	gZoCcmMXTFxtj/xdEszAMefP1qw56z6tnMv5XiFJH0HfC0DgBitof2G1jo/WOKm1UXnxpydVlGS9T
	TsDBj9t/IC9etoV28bDMIVbqeoKFL3YeTJKVfbPCzrY1HBOvl0GHGFEo+Lo1H5f55HGFex9Kz7jEa
	U1Zp+3uSr9SeSy309lnjUSTCp2MirVFcaKg3eL3AYKIb20P0vbEQ2GXSW/Wb1Kkc6cUCrc871sWPX
	JJ7oofMiMpHakKqNuxYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqLA-0004Gh-MV; Mon, 02 Dec 2019 18:22:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKt-0004Em-SF; Mon, 02 Dec 2019 18:22:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CC072AE53;
 Mon,  2 Dec 2019 18:22:13 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 01/14] ARM: dts: rtd1195: Introduce iso and misc syscon
Date: Mon,  2 Dec 2019 19:21:51 +0100
Message-Id: <20191202182205.14629-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102216_060420_23EFF137 
X-CRM114-Status: UNSURE (   9.41  )
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

R3JvdXAgd2F0Y2hkb2cgYW5kIFVBUlQwIGludG8gYW4gSXNvbGF0aW9uIHN5c2NvbiBtZmQgbm9k
ZS4KR3JvdXAgVUFSVDEgaW50byBhIE1pc2NlbGxhbmVvdXMgc3lzY29uIG1mZCBub2RlLgoKQ2M6
IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFz
IEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5
NS5kdHNpIHwgNTggKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cnRkMTE5NS5kdHNpCmluZGV4IGE4ZjdiOWNhYWNiYS4uYTc0ZjUzMGRjNDM5IDEwMDY0NAotLS0g
YS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cnRkMTE5NS5kdHNpCkBAIC0xMDAsMjggKzEwMCwyMiBAQAogCQkJI3NpemUtY2VsbHMgPSA8MT47
CiAJCQlyYW5nZXMgPSA8MHgwIDB4MTgwMDAwMDAgMHg3MDAwMD47CiAKLQkJCXdkdDogd2F0Y2hk
b2dANzY4MCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2ciOwot
CQkJCXJlZyA9IDwweDc2ODAgMHgxMDA+OwotCQkJCWNsb2NrcyA9IDwmb3NjMjdNPjsKLQkJCX07
Ci0KLQkJCXVhcnQwOiBzZXJpYWxANzgwMCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFw
Yi11YXJ0IjsKLQkJCQlyZWcgPSA8MHg3ODAwIDB4NDAwPjsKLQkJCQlyZWctc2hpZnQgPSA8Mj47
CisJCQlpc286IHN5c2NvbkA3MDAwIHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1w
bGUtbWZkIjsKKwkJCQlyZWcgPSA8MHg3MDAwIDB4MTAwMD47CiAJCQkJcmVnLWlvLXdpZHRoID0g
PDQ+OwotCQkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47Ci0JCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwx
PjsKKwkJCQlyYW5nZXMgPSA8MHgwIDB4NzAwMCAweDEwMDA+OwogCQkJfTsKIAotCQkJdWFydDE6
IHNlcmlhbEAxYjIwMCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJ
CQlyZWcgPSA8MHgxYjIwMCAweDEwMD47Ci0JCQkJcmVnLXNoaWZ0ID0gPDI+OworCQkJbWlzYzog
c3lzY29uQDFiMDAwIHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsK
KwkJCQlyZWcgPSA8MHgxYjAwMCAweDEwMDA+OwogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKLQkJ
CQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OwotCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
CisJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MT47CisJCQkJ
cmFuZ2VzID0gPDB4MCAweDFiMDAwIDB4MTAwMD47CiAJCQl9OwogCQl9OwogCkBAIC0xMzcsMyAr
MTMxLDMxIEBACiAJCX07CiAJfTsKIH07CisKKyZpc28geworCXdkdDogd2F0Y2hkb2dANjgwIHsK
KwkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2ciOworCQlyZWcgPSA8MHg2
ODAgMHgxMDA+OworCQljbG9ja3MgPSA8Jm9zYzI3TT47CisJfTsKKworCXVhcnQwOiBzZXJpYWxA
ODAwIHsKKwkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKKwkJcmVnID0gPDB4ODAw
IDB4NDAwPjsKKwkJcmVnLXNoaWZ0ID0gPDI+OworCQlyZWctaW8td2lkdGggPSA8ND47CisJCWNs
b2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47CisJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJfTsK
K307CisKKyZtaXNjIHsKKwl1YXJ0MTogc2VyaWFsQDIwMCB7CisJCWNvbXBhdGlibGUgPSAic25w
cyxkdy1hcGItdWFydCI7CisJCXJlZyA9IDwweDIwMCAweDEwMD47CisJCXJlZy1zaGlmdCA9IDwy
PjsKKwkJcmVnLWlvLXdpZHRoID0gPDQ+OworCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+
OworCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCX07Cit9OwotLSAKMi4xNi40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
