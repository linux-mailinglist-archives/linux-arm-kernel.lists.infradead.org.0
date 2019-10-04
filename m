Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3015CB9C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XH527jjnLzA4lYSLnvoJp4eaMRGuPtrKdJ5/TxUcVIo=; b=kOKxBuyeupbOGT
	XZGy2k8xAiXuBZQ7os8eIEjfvQSOHa8Taxhyh1PD+I2F1y6Hu53neX06s3qfPcIdk6ZN3l7kpvk2I
	KV0ONW2sVSUh3F1uvzDa0X/KgK/BbMAdw3kcsVHANp7C5FlkyDJVHdymacrEJOpw5pvvqtXZ3jENo
	uVgfIKLXjkrgy1JZGoXBdxZopAl0cR3c8PhYyKPrVxeNFFZIgSMoFBgI7XlqqxY4H8Y0l0YR4Lu59
	03QAwmufgUdcDCwb/2bKp7Y7SdkHuSWody88+CY8JpMT7Dj4GU4n4pzdmhPQfcXix056OejIOBKaR
	r+Mu2mJmGqh4IIoDHsMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMJN-0000pJ-7o; Fri, 04 Oct 2019 12:03:53 +0000
Received: from 2.mo177.mail-out.ovh.net ([178.33.109.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMH6-0007GY-MP
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:01:34 +0000
Received: from player792.ha.ovh.net (unknown [10.108.54.36])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 747E210D0A7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 14:01:28 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id E2558AA65E5C;
 Fri,  4 Oct 2019 12:01:08 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 06/16] mtd: spi-nor: fix options for mx66l51235f
Date: Fri,  4 Oct 2019 13:59:09 +0200
Message-Id: <20191004115919.20788-7-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3789779088870509491
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050132_905132_4CA54007 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.109.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [178.33.109.80 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Alexander Amelkin <a.amelkin@yadro.com>,
 Alexander Soldatov <a.soldatov@yadro.com>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Lei YU <mine260309@gmail.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQWxleGFuZGVyIFNvbGRhdG92IDxhLnNvbGRhdG92QHlhZHJvLmNvbT4KCkN1cnJlbnRs
eSBpbiBkcml2ZXIgc3BpLW5vciB0aGVyZSBpcyBhIGxpbmUgZm9yIG14NjZsNTEyMzVsLgpBY2Nv
cmRpbmcgdG8gTWFjcm9uaXggc2l0ZSB0aGVyZSBpcyBubyBzdWNoIHBhcnQgbnVtYmVyLgpUaGUg
Y2hpcCBkZXRlY3RlZCBhcyBzdWNoIGlzIGFjdHVhbGx5IG14NjZsNTEyMzVmLgoKQWNjb3JkaW5n
IHRvIHRoZSBkYXRhc2hlZXQgZm9yIG14NjZsNTEyMzVmLAoiVGhlIGRldmljZSBkZWZhdWx0IGlz
IGluIDI0LWJpdCBhZGRyZXNzIG1vZGUiIChzZWN0aW9uIDktMTApLgpIZW5jZSB3ZSByZW1vdmVk
IFNQSV9OT1JfNEJfT1BDT0RFUyBvcHRpb24gd2l0aCB0aGlzIGNvbW1pdC4KCk9wZW5CTUMtU3Rh
Z2luZy1Db3VudDogNwpGaXhlczogZDM0MmI2YTk3M2FmICgibXRkOiBzcGktbm9yOiBlbmFibGUg
NEIgb3Bjb2RlcyBmb3IgbXg2Nmw1MTIzNWwiKQpDYzogQWxleGFuZGVyIEFtZWxraW4gPGEuYW1l
bGtpbkB5YWRyby5jb20+ClNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBTb2xkYXRvdiA8YS5zb2xk
YXRvdkB5YWRyby5jb20+ClJldmlld2VkLWJ5OiBDw6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qu
b3JnPgpSZXZpZXdlZC1ieTogTGVpIFlVIDxtaW5lMjYwMzA5QGdtYWlsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogSm9lbCBTdGFubGV5IDxqb2VsQGptcy5pZC5hdT4KU2lnbmVkLW9mZi1ieTogQ8OpZHJp
YyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4KLS0tCiBkcml2ZXJzL210ZC9zcGktbm9yL3NwaS1u
b3IuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jIGIvZHJpdmVycy9t
dGQvc3BpLW5vci9zcGktbm9yLmMKaW5kZXggMWQ4NjIxZDQzMTYwLi5iMTE2NTY3M2NkOTMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jCisrKyBiL2RyaXZlcnMvbXRk
L3NwaS1ub3Ivc3BpLW5vci5jCkBAIC0yMjk0LDcgKzIyOTQsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGZsYXNoX2luZm8gc3BpX25vcl9pZHNbXSA9IHsKIAl7ICJteDI1djgwMzVmIiwgIElORk8o
MHhjMjIzMTQsIDAsIDY0ICogMTAyNCwgIDE2LAogCQkJIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxf
UkVBRCB8IFNQSV9OT1JfUVVBRF9SRUFEKSB9LAogCXsgIm14MjVsMjU2NTVlIiwgSU5GTygweGMy
MjYxOSwgMCwgNjQgKiAxMDI0LCA1MTIsIDApIH0sCi0JeyAibXg2Nmw1MTIzNWwiLCBJTkZPKDB4
YzIyMDFhLCAwLCA2NCAqIDEwMjQsIDEwMjQsIFNQSV9OT1JfRFVBTF9SRUFEIHwgU1BJX05PUl9R
VUFEX1JFQUQgfCBTUElfTk9SXzRCX09QQ09ERVMpIH0sCisJeyAibXg2Nmw1MTIzNWYiLCBJTkZP
KDB4YzIyMDFhLCAwLCA2NCAqIDEwMjQsIDEwMjQsIFNQSV9OT1JfRFVBTF9SRUFEIHwgU1BJX05P
Ul9RVUFEX1JFQUQpIH0sCiAJeyAibXg2NnU1MTIzNWYiLCBJTkZPKDB4YzIyNTNhLCAwLCA2NCAq
IDEwMjQsIDEwMjQsIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxfUkVBRCB8IFNQSV9OT1JfUVVBRF9S
RUFEIHwgU1BJX05PUl80Ql9PUENPREVTKSB9LAogCXsgIm14NjZsMWc0NWciLCAgSU5GTygweGMy
MjAxYiwgMCwgNjQgKiAxMDI0LCAyMDQ4LCBTRUNUXzRLIHwgU1BJX05PUl9EVUFMX1JFQUQgfCBT
UElfTk9SX1FVQURfUkVBRCkgfSwKIAl7ICJteDY2bDFnNTVnIiwgIElORk8oMHhjMjI2MWIsIDAs
IDY0ICogMTAyNCwgMjA0OCwgU1BJX05PUl9RVUFEX1JFQUQpIH0sCi0tIAoyLjIxLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
