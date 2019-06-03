Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE4E33AEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syo0yWm4JBHULX54bURTA4eLdqpUAi3nHDjIhxIG8F8=; b=LtCLENCgO1h0Hk
	8qg8AQQRLXiPCu+PXJDmgXivzHAO11iR7RICRBvy9VZaRwwlQxtYqQTPLXUoLAPqyQDYfvFtMwIuH
	Er+r5GaUf8nYZZDZTbj/QWNGyzDOlYREwtnEpvqcWLiXrTG3+BMrMNV3dS/httMJeotSfdGES2nZm
	5uqs36C1YG/y4XdPN6ts3Vf8J9IKrmErZmIt6p0CRZw1eHd0DDg3fsGXA/JedrGLKz4cGERfwmV65
	aKTQSoYARlfdH+vlsKTUMc3AmM4Ek+4YAx43VDI8kzy0OeaMkgiF5yaor9QvH4JJuEah8c7KR1Mex
	EFoJxbUeV8wo97/JF1bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvDp-000635-Cr; Mon, 03 Jun 2019 22:14:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvDi-00062a-HE
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:14:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id BE220260A21
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH 1/1] arm64: defconfig: Enable RK3399 DMC devfreq driver
Date: Mon,  3 Jun 2019 18:14:35 -0400
Message-Id: <20190603221435.7599-1-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_151422_853787_AF10B541 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIHRoZSBETUMgZGV2ZnJlcSBkcml2ZXIgdGhhdCBpcyBwcmVzZW50IGluIHRoZSBSSzMz
OTkgU29DLgoKTm90ZSB0aGF0IGl0IHNlbGVjdHMgdGhlIERGSSBkZXZmcmVxIGV2ZW50IGFuZCB0
aGUgc2ltcGxlIG9uZGVtYW5kCmdvdmVybm9yIGRyaXZlcnMuCgpTaWduZWQtb2ZmLWJ5OiBHYcOr
bCBQT1JUQVkgPGdhZWwucG9ydGF5QGNvbGxhYm9yYS5jb20+Ci0tLQogYXJjaC9hcm02NC9jb25m
aWdzL2RlZmNvbmZpZyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgYi9h
cmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IDRkNTgzNTE0MjU4Yy4uYzc3OWU3MWZi
Y2ViIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCisrKyBiL2FyY2gv
YXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTY5OCw3ICs2OTgsNyBAQCBDT05GSUdfQVJDSF9U
RUdSQV8xOTRfU09DPXkKIENPTkZJR19BUkNIX0szX0FNNl9TT0M9eQogQ09ORklHX1NPQ19UST15
CiBDT05GSUdfVElfU0NJX1BNX0RPTUFJTlM9eQotQ09ORklHX0RFVkZSRVFfR09WX1NJTVBMRV9P
TkRFTUFORD15CitDT05GSUdfQVJNX1JLMzM5OV9ETUNfREVWRlJFUT1tCiBDT05GSUdfRVhUQ09O
X1VTQl9HUElPPXkKIENPTkZJR19FWFRDT05fVVNCQ19DUk9TX0VDPXkKIENPTkZJR19NRU1PUlk9
eQotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
