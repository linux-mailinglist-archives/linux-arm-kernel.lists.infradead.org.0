Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2756017D4D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGt9te+g/Vi6UbVh93P8OfbfLTGR9SOhq6ETT8KHqAw=; b=cPKlHCmpA9pY8Z
	1lkO87v8s80AGfdNtFzraN0lBF5u/9vLkAK0kN5YVmK+48cU2X53r9ZZgbdldKRPYk37eChSFfMIY
	nQb3hysbpuZrfEPIBbAJTuAGpt1yw6TLUbJPE52E3clWal075PZe7d5vfWO0U3ecNwaz9h9eiYqa8
	WO6SPGMp4FqQH3v9fHmQVhipoSAlynstBBKRvuqWV8FMPCgZSRpseOvBIp3r8tt2orL3M+LwTxfO6
	Si/Nqw+aCYEGYaR9hGFG80PCbML0hWwNYe+/2HSOWnNatNAUq6bN2rgIUOWvgkwVlaTcjXbJwPbXQ
	Lov+t6To0ADQ3drRO+cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAytS-0002eO-Vw; Sun, 08 Mar 2020 16:35:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrJ-0000go-Q1
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:32:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E7357B2F2;
 Sun,  8 Mar 2020 16:32:50 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 10/11] ARM: dts: sp7021-cpu: Add interrupt controller node
Date: Sun,  8 Mar 2020 17:32:28 +0100
Message-Id: <20200308163230.4002-11-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
References: <20200308163230.4002-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093258_016326_AAD9543E 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?=
 <wells.lu@sunplus.com>, Dvorkin Dmitry <dvorkin@tibbo.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIGFy
Y2gvYXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtY3B1LmR0c2kgfCAxMyArKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtY3B1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0
cy9wZW50YWdyYW0tc3A3MDIxLWNwdS5kdHNpCmluZGV4IGFlNThiZjVmZmFkZi4uN2U0MjRiYWE5
MjE0IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9wZW50YWdyYW0tc3A3MDIxLWNwdS5k
dHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtY3B1LmR0c2kKQEAg
LTczLDMgKzczLDE2IEBACiAJCX07CiAJfTsKIH07CisKKyZyZ3N0IHsKKwlpbnRjOiBpbnRlcnJ1
cHQtY29udHJvbGxlckA3ODAgeworCQljb21wYXRpYmxlID0gInN1bnBsdXMsc3A3MDIxLWludGMi
OworCQlyZWcgPSA8MHg3ODAgMHg4MD4sIC8qIEcxNSAqLworCQkgICAgICA8MHhhODAgMHg4MD47
IC8qIEcyMSAqLworCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+OworCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgNSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKKwkJCSAgICAgPEdJQ19TUEkgNiBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsKKwkJaW50ZXJydXB0LWNvbnRyb2xsZXI7CisJCSNpbnRlcnJ1cHQt
Y2VsbHMgPSA8Mj47CisJfTsKK307Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
