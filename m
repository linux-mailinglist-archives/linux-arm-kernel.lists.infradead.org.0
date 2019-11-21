Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1F71049D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:03:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHGNKLAhzPqIspSyFHYXyhU3UGWvC9UpL2UN/VgD/Mw=; b=U1MHNWYZjvkoHq
	z7ml8SVxt8uoDzBQdW4LeX2it5EqeiCRU2VgBqgbEErpciMmVzSnaUcYQiKWf1/i2nycAuCLB04Tp
	VfNAmLGNZFE9AMKQt+oiNoxMhCbZRAbmX5RRqZWJNLGHZAozZhpNYNLCLXdcb152BS0kHnmUH2Q3Q
	/a+ZtIIrew7O4C5rHBY2hEidsx4Ni8YSKdIdOzG5YeBRR8A0DBkLj3SJg32uTpZIHq1ePxCvJ5ZUD
	KVnaooU39nfBQsQAyxlzTte5t0Qe2ywCiGzgmm6iT4xO7Z/qTK/razKMcx0F4Gk8ivzWWOFxKC2t8
	ZN3eekwMUTeFJep/o4Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXece-0004Zn-2i; Thu, 21 Nov 2019 05:03:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXebm-00044b-8v; Thu, 21 Nov 2019 05:02:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A2994B016;
 Thu, 21 Nov 2019 05:02:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v5 4/9] arm64: dts: realtek: rtd129x: Add irq muxes and UART
 interrupts
Date: Thu, 21 Nov 2019 06:02:03 +0100
Message-Id: <20191121050208.11324-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191121050208.11324-1-afaerber@suse.de>
References: <20191121050208.11324-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_210222_491308_C9985AEC 
X-CRM114-Status: UNSURE (   9.83  )
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

QWRkIGlzbyBhbmQgbWlzYyBJUlEgbXV4IERUIG5vZGVzIHRvIFJURDEyOXggU29DIGZhbWlseS4K
ClVwZGF0ZSB0aGUgVUFSVCBEVCBub2RlcyB3aXRoIGludGVycnVwdHMgZnJvbSB0aGVzZSBtdXhl
cywKc28gdGhhdCBVQVJUMCBjYW4gYmUgdXNlZCB3aXRob3V0IGVhcmx5Y29uLgoKU2lnbmVkLW9m
Zi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHY0IC0+IHY1OiBV
bmNoYW5nZWQKIAogdjMgLT4gdjQ6CiAqIFJlYmFzZWQgb250byBjaGlwLWluZm8gYW5kIHItYnVz
CiAqIERyb3BwZWQgc2NoZW1hLXZpb2xhdGluZyBzZWNvbmQgaW50ZXJydXB0cyBmb3IgVUFSVDEg
YW5kIFVBUlQyCiAKIHYyIC0+IHYzOgogKiBBZGRlZCBub2RlcyB0byBydGQxMjl4LmR0c2kgaW5z
dGVhZCBvZiBydGQxMjk1LmR0c2kKICogQWRvcHRlZCBtaXNjIGNvbXBhdGlibGUgc3RyaW5nCiAq
IFJlbmFtZWQgbm9kZSBsYWJlbCBmcm9tIGlycV9tdXggdG8gbWlzY19pcnFfbXV4IGZvciBjbGFy
aXR5CiAKIHYxIC0+IHYyOgogKiBSZWJhc2VkCiAKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9ydGQxMjl4LmR0c2kgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMjl4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5k
dHNpCmluZGV4IDdkNTZjOWY1ZDQ4YS4uMTg4YjRmMjU2OTE3IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKQEAgLTg2LDYgKzg2LDE0IEBACiAJCQkJI3Jlc2V0LWNl
bGxzID0gPDE+OwogCQkJfTsKIAorCQkJaXNvX2lycV9tdXg6IGludGVycnVwdC1jb250cm9sbGVy
QDcwMDAgeworCQkJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LWlzby1pcnEtbXV4IjsK
KwkJCQlyZWcgPSA8MHg3MDAwIDB4MTAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDEg
SVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQkJaW50ZXJydXB0LWNvbnRyb2xsZXI7CisJCQkJI2lu
dGVycnVwdC1jZWxscyA9IDwxPjsKKwkJCX07CisKIAkJCWlzb19yZXNldDogcmVzZXQtY29udHJv
bGxlckA3MDg4IHsKIAkJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKIAkJCQly
ZWcgPSA8MHg3MDg4IDB4ND47CkBAIC0xMDUsNiArMTEzLDggQEAKIAkJCQlyZWctaW8td2lkdGgg
PSA8ND47CiAJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKIAkJCQlyZXNldHMgPSA8
Jmlzb19yZXNldCBSVEQxMjk1X0lTT19SU1ROX1VSMD47CisJCQkJaW50ZXJydXB0LXBhcmVudCA9
IDwmaXNvX2lycV9tdXg+OworCQkJCWludGVycnVwdHMgPSA8Mj47CiAJCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKIAkJCX07CiAKQEAgLTExNSw2ICsxMjUsMTQgQEAKIAkJCQkgICAgICA8MHgxNzFk
OCAweDQ+OwogCQkJfTsKIAorCQkJbWlzY19pcnFfbXV4OiBpbnRlcnJ1cHQtY29udHJvbGxlckAx
YjAwMCB7CisJCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtbWlzYy1pcnEtbXV4IjsK
KwkJCQlyZWcgPSA8MHgxYjAwMCAweDEwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQw
IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWludGVycnVwdC1jb250cm9sbGVyOworCQkJCSNp
bnRlcnJ1cHQtY2VsbHMgPSA8MT47CisJCQl9OworCiAJCQl1YXJ0MTogc2VyaWFsQDFiMjAwIHsK
IAkJCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOwogCQkJCXJlZyA9IDwweDFiMjAw
IDB4MTAwPjsKQEAgLTEyMiw2ICsxNDAsOCBAQAogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKIAkJ
CQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKIAkJCQlyZXNldHMgPSA8JnJlc2V0MiBS
VEQxMjk1X1JTVE5fVVIxPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZtaXNjX2lycV9tdXg+
OworCQkJCWludGVycnVwdHMgPSA8Mz47CiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJCX07
CiAKQEAgLTEzMiw2ICsxNTIsOCBAQAogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKIAkJCQljbG9j
ay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKIAkJCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQxMjk1
X1JTVE5fVVIyPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZtaXNjX2lycV9tdXg+OworCQkJ
CWludGVycnVwdHMgPSA8OD47CiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJCX07CiAJCX07
Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
