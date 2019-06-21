Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528814E396
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoKDCgIpxcg4uH5lrngf/qj0FyAmwR51q9wiCU7Lc1s=; b=RXjFZwFi4o67xZ
	vp+Kgb92U/uosGVbO3VngRNtRTeTBmLRytZzFN57MC9gDrgHRZC7nXpA1dRJ3soN4gpZljfoycnn0
	jt86fZLFNhKa4pzyqkq3MLCZR7lfIipSp59ztX236wo742JSmVm+1+0SBEpDDFRIUySymsbk7fFWQ
	bh0qEyDRBqBBedGgDOJXqjU6DHXr80B+fT0yc/SHjxG6/80ELJdI1mV6hkxbZyrkphWsM2jWKq9l2
	k8YbdBZ8991ZuacnBkFgsdcjpM5Dafswr8Psui0EzofeJ1JmYQAk/QVkZ8j2ewJuPBHG1vV5aEXNG
	1L6a30OquWw2mFG6GUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFtZ-0008N9-EL; Fri, 21 Jun 2019 09:31:45 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFf6-0002tV-38
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:16:49 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id ACC2325BE36;
 Fri, 21 Jun 2019 19:16:36 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D621D940F24; Fri, 21 Jun 2019 11:16:32 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 09/53] arm64: dts: renesas: draak: Remove unnecessary index
 from vin4 port
Date: Fri, 21 Jun 2019 11:15:47 +0200
Message-Id: <c7d4df305ca4ddd8747691f9133b9611579d0b4e.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021648_299156_96EF14C4 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHBvcnRzIG5vZGUgb2YgdmluNCBvbmx5IGhhcyBvbmUgc3ViLW5vZGUgYW5kIHRodXMgZG9l
cwpub3QgbmVlZCAjYWRkcmVzcy1jZWxscy8jc2l6ZS1jZWxscyBhbmQgdGhlIHN1Yi1ub2RlIGRv
ZXMKbm90IG5lZWQgYW4gZXhpdC4KClRoaXMgYWRkcmVzc2VzIHRoZSBmb2xsb3dpbmcgd2Fybmlu
ZzoKCiAjIG1ha2UgZHRicyBXPTEKIC4uLgogYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4
YTc3OTk1LWRyYWFrLmR0czo0OTIuOC01MDMuNDogV2FybmluZyAoZ3JhcGhfY2hpbGRfYWRkcmVz
cyk6IC9zb2MvdmlkZW9AZTZlZjQwMDAvcG9ydHM6IGdyYXBoIG5vZGUgaGFzIHNpbmdsZSBjaGls
ZCBub2RlICdwb3J0QDAnLCAjYWRkcmVzcy1jZWxscy8jc2l6ZS1jZWxscyBhcmUgbm90IG5lY2Vz
c2FyeQoKRml4ZXM6IDZhMDk0MmMyMGY1YyAoImFybTY0OiBkdHM6IHJlbmVzYXM6IGRyYWFrOiBE
ZXNjcmliZSBDVkJTIGlucHV0IikKQ2M6IEphY29wbyBNb25kaSA8amFjb3BvK3JlbmVzYXNAam1v
bmRpLm9yZz4KU2lnbmVkLW9mZi1ieTogU2ltb24gSG9ybWFuIDxob3JtcytyZW5lc2FzQHZlcmdl
Lm5ldC5hdT4KVGVzdGVkLWJ5OiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlk
ZWFzb25ib2FyZC5jb20+ClJldmlld2VkLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8bmlrbGFzLnNv
ZGVybHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
bmVzYXMvcjhhNzc5OTUtZHJhYWsuZHRzIHwgNyArLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZW5lc2FzL3I4YTc3OTk1LWRyYWFrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVu
ZXNhcy9yOGE3Nzk5NS1kcmFhay5kdHMKaW5kZXggYTdkYzExZTM2ZmQ5Li42MTg5YTU1ZGU5OTkg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5NS1kcmFhay5k
dHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTk1LWRyYWFrLmR0cwpA
QCAtNTExLDEyICs1MTEsNyBAQAogCXN0YXR1cyA9ICJva2F5IjsKIAogCXBvcnRzIHsKLQkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47Ci0JCSNzaXplLWNlbGxzID0gPDA+OwotCi0JCXBvcnRAMCB7Ci0J
CQlyZWcgPSA8MD47Ci0KKwkJcG9ydCB7CiAJCQl2aW40X2luOiBlbmRwb2ludCB7CiAJCQkJcmVt
b3RlLWVuZHBvaW50ID0gPCZhZHY3MTgwX291dD47CiAJCQl9OwotLSAKMi4xMS4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
