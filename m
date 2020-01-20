Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67746143274
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+bNJOxbVZVtx51IyctCwJirQ3guhbMz7uJhAQ0PXEEc=; b=sxv9d3T2ww+LpV
	qwMhv+HckGh/oY/rWHz1eyaY3DcnfakEzgdSSpEwpWS7YnzoRrGWp+KAi8vR1WYS5mFqiD62cDiim
	z0EzGECmltf3568pzPV4OS5P+jzaWRZ8M30bA+H/i9dSOa/cMnzXzYndqjJ558rQwvpOmt+CRyJvh
	0j++6irhAreb3S3Nr/zBU9JbNj8gT68ndwohm9U/YnGj0qbctjcvi0/HLItliL9SIb4I+gldWhOV+
	UVOT48sDAM93e4xW3a5H5MkPS+/ztFYHhFw9jRPfSg4sM3Tu8+Zgk2wHQEEI66Y4BXi/gXj0NPyEM
	1fKg2qr1mxMQ5wK/SjWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcny-0002oZ-7f; Mon, 20 Jan 2020 19:33:46 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcnp-0002n5-9g
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 19:33:40 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id C09B98C57CE; Mon, 20 Jan 2020 20:33:32 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] ARM: s3c24xx/rx1950: switch to atomic pwm API
Date: Mon, 20 Jan 2020 20:33:28 +0100
Message-Id: <20200120193328.17007-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_113337_477157_D154856B 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-pwm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3RvcCB1c2luZyB0aGUgbGVnYWN5IFBXTSBBUEkgd2hpY2ggb25seSBzdGlsbCBleGlzdHMgYmVj
YXVzZSB0aGVyZSBhcmUKc29tZSB1c2VycyBsZWZ0LgoKTm90ZSB0aGlzIGNoYW5nZSBtYWtlIHVz
ZSBvZiB0aGUgZmFjdCB0aGF0IHRoZSB2YWx1ZSBvZiBzdHJ1Y3QKcHdtX3N0YXRlOjpkdXR5X2N5
Y2xlIGRvZXNuJ3QgbWF0dGVyIGZvciBhIGRpc2FibGVkIFBXTSBhbmQgc28gaXRzIHZhbHVlCmNh
biBzdGF5IGNvbnN0YW50IHNpbXBsaWZ5aW5nIHRoZSBjb2RlIGEgYml0LgoKQSBzaWRlIGVmZmVj
dCBvZiB0aGUgY29udmVyc2lvbiBpcyB0aGF0IHRoZSBwd20gaXNuJ3Qgc3RvcHBlZCBpbgpyeDE5
NTBfYmFja2xpZ2h0X2luaXQoKSBieSB0aGUgY2FsbCB0byBwd21fYXBwbHlfYXJncygpIGp1c3Qg
YmVmb3JlCnJlZW5hYmxpbmcgaXQgd2hlbiByeDE5NTBfbGNkX3Bvd2VyKDEpIGlzIGNhbGxlZC4K
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+
Ci0tLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtcngxOTUwLmMgfCAxOSArKysrKysrKysr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1yeDE5NTAuYyBiL2Fy
Y2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLXJ4MTk1MC5jCmluZGV4IDI5ZjliMzQ1YTUzMS4uMDNk
OGYyN2NkYzMyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1yeDE5NTAu
YworKysgYi9hcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1yeDE5NTAuYwpAQCAtMzc3LDYgKzM3
Nyw3IEBAIHN0YXRpYyBzdHJ1Y3QgcHdtX2xvb2t1cCByeDE5NTBfcHdtX2xvb2t1cFtdID0gewog
fTsKIAogc3RhdGljIHN0cnVjdCBwd21fZGV2aWNlICpsY2RfcHdtOworc3RhdGljIHN0cnVjdCBw
d21fc3RhdGUgbGNkX3B3bV9zdGF0ZTsKIAogc3RhdGljIHZvaWQgcngxOTUwX2xjZF9wb3dlcihp
bnQgZW5hYmxlKQogewpAQCAtNDI5LDE1ICs0MzAsMTYgQEAgc3RhdGljIHZvaWQgcngxOTUwX2xj
ZF9wb3dlcihpbnQgZW5hYmxlKQogCiAJCS8qIEdQQjEtPk9VVFBVVCwgR1BCMS0+MCAqLwogCQln
cGlvX2RpcmVjdGlvbl9vdXRwdXQoUzNDMjQxMF9HUEIoMSksIDApOwotCQlwd21fY29uZmlnKGxj
ZF9wd20sIDAsIExDRF9QV01fUEVSSU9EKTsKLQkJcHdtX2Rpc2FibGUobGNkX3B3bSk7CisKKwkJ
bGNkX3B3bV9zdGF0ZS5lbmFibGVkID0gZmFsc2U7CisJCXB3bV9hcHBseV9zdGF0ZShsY2RfcHdt
LCAmbGNkX3B3bV9zdGF0ZSk7CiAKIAkJLyogR1BDMC0+MCwgR1BDMTAtPjAgKi8KIAkJZ3Bpb19k
aXJlY3Rpb25fb3V0cHV0KFMzQzI0MTBfR1BDKDApLCAwKTsKIAkJZ3Bpb19kaXJlY3Rpb25fb3V0
cHV0KFMzQzI0MTBfR1BDKDEwKSwgMCk7CiAJfSBlbHNlIHsKLQkJcHdtX2NvbmZpZyhsY2RfcHdt
LCBMQ0RfUFdNX0RVVFksIExDRF9QV01fUEVSSU9EKTsKLQkJcHdtX2VuYWJsZShsY2RfcHdtKTsK
KwkJbGNkX3B3bV9zdGF0ZS5lbmFibGVkID0gdHJ1ZTsKKwkJcHdtX2FwcGx5X3N0YXRlKGxjZF9w
d20sICZsY2RfcHdtX3N0YXRlKTsKIAogCQlncGlvX2RpcmVjdGlvbl9vdXRwdXQoUzNDMjQxMF9H
UEMoMCksIDEpOwogCQlncGlvX2RpcmVjdGlvbl9vdXRwdXQoUzNDMjQxMF9HUEMoNSksIDEpOwpA
QCAtNDkzLDEwICs0OTUsMTMgQEAgc3RhdGljIGludCByeDE5NTBfYmFja2xpZ2h0X2luaXQoc3Ry
dWN0IGRldmljZSAqZGV2KQogCX0KIAogCS8qCi0JICogRklYTUU6IHB3bV9hcHBseV9hcmdzKCkg
c2hvdWxkIGJlIHJlbW92ZWQgd2hlbiBzd2l0Y2hpbmcgdG8KLQkgKiB0aGUgYXRvbWljIFBXTSBB
UEkuCisJICogVGhpcyBpcyBvbmx5IHJlcXVpcmVkIHRvIGluaXRpYWxpemUgLnBvbGFyaXR5OyBh
bGwgb3RoZXIgdmFsdWVzIGFyZQorCSAqIGZpeGVkIGluIHRoaXMgZHJpdmVyLgogCSAqLwotCXB3
bV9hcHBseV9hcmdzKGxjZF9wd20pOworCXB3bV9pbml0X3N0YXRlKGxjZF9wd20sICZsY2RfcHdt
X3N0YXRlKTsKKworCWxjZF9wd21fc3RhdGUucGVyaW9kID0gTENEX1BXTV9QRVJJT0Q7CisJbGNk
X3B3bV9zdGF0ZS5kdXR5X2N5Y2xlID0gTENEX1BXTV9EVVRZOwogCiAJcngxOTUwX2xjZF9wb3dl
cigxKTsKIAlyeDE5NTBfYmxfcG93ZXIoMSk7Ci0tIAoyLjI0LjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
