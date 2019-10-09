Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088CAD0A5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cyL757CcDYlvOzt3q+fBuqEXoUmww77aQcRua1fwSU=; b=qXpQsY+ql1yBbB
	XPe20kaBxTLFXDdIxqBNWoGsSQWdpAHqiJVaSYIgcV1VVBCwh++mzjtHTNvZQI3GolTs54XFmjf8r
	l/224mpDE49clCUSzoM/O+Nw7ujGsg5I1xgFFyRhfyDHPbN6/FphPXVVWXBvznQJsYoZSOtaVHlAJ
	iZ0y4uT93Tl5wtYdSRXjKkpUpqEqltyL18WikvFpvyt0rFNkZmaoCOQagOqXBfc+1snUP7hcyqyBj
	BFRIAXmxNVcHL5i7hqArOAcWWyIRijGquXvRuKIrdaKmCrvklVVBmapoygXkmwwIlhKBLUCSI1Leg
	1MgILlvHX/iPc8PbDc2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7mR-0002up-O5; Wed, 09 Oct 2019 08:57:11 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7m7-0002nD-Jt
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:56:53 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iI7m5-0008Cm-1p; Wed, 09 Oct 2019 09:56:49 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iI7m4-0005fh-8R; Wed, 09 Oct 2019 09:56:48 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: OMAP2+: make omap44xx_sha0_hwmod and
 omap44xx_l3_main_2__des static
Date: Wed,  9 Oct 2019 09:56:46 +0100
Message-Id: <20191009085646.21755-2-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191009085646.21755-1-ben.dooks@codethink.co.uk>
References: <20191009085646.21755-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_015651_802160_4A2316A8 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, Paul Walmsley <paul@pwsan.com>,
 Tony Lindgren <tony@atomide.com>, Ben Dooks <ben.dooks@codethink.co.uk>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIG9tYXA0NHh4X3NoYTBfaHdtb2QgYW5kIG9tYXA0NHh4X2wzX21haW5fMl9fZGVzIG9iamVj
dHMgYXJlCm5vdCBleHBvcnRlZCBzbyBtYWtlIHRoZW0gc3RhdGljIHRvIGF2b2lkIHRoZSBmb2xs
b3dpbmcgd2FybmluZ3M6CgphcmNoL2FybS9tYWNoLW9tYXAyL29tYXBfaHdtb2RfNDR4eF9kYXRh
LmM6NzkzOjE5OiB3YXJuaW5nOiBzeW1ib2wgJ29tYXA0NHh4X3NoYTBfaHdtb2QnIHdhcyBub3Qg
ZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CmFyY2gvYXJtL21hY2gtb21hcDIvb21hcF9o
d21vZF80NHh4X2RhdGEuYzo5Nzc6MjY6IHdhcm5pbmc6IHN5bWJvbCAnb21hcDQ0eHhfbDNfbWFp
bl8yX19kZXMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CgpTaWduZWQt
b2ZmLWJ5OiBCZW4gRG9va3MgPGJlbi5kb29rc0Bjb2RldGhpbmsuY28udWs+Ci0tLQpDYzogIkJl
bm/DrnQgQ291c3NvbiIgPGJjb3Vzc29uQGJheWxpYnJlLmNvbT4KQ2M6IFBhdWwgV2FsbXNsZXkg
PHBhdWxAcHdzYW4uY29tPgpDYzogVG9ueSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4KQ2M6
IGxpbnV4LW9tYXBAdmdlci5rZXJuZWwub3JnCi0tLQogYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFw
X2h3bW9kXzQ0eHhfZGF0YS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtb21hcDIvb21h
cF9od21vZF80NHh4X2RhdGEuYyBiL2FyY2gvYXJtL21hY2gtb21hcDIvb21hcF9od21vZF80NHh4
X2RhdGEuYwppbmRleCAyOGVhMjk2MGE5YjIuLmExMWNkNmY1N2Q3YyAxMDA2NDQKLS0tIGEvYXJj
aC9hcm0vbWFjaC1vbWFwMi9vbWFwX2h3bW9kXzQ0eHhfZGF0YS5jCisrKyBiL2FyY2gvYXJtL21h
Y2gtb21hcDIvb21hcF9od21vZF80NHh4X2RhdGEuYwpAQCAtNzkwLDcgKzc5MCw3IEBAIHN0YXRp
YyBzdHJ1Y3Qgb21hcF9od21vZF9jbGFzcyBvbWFwNDR4eF9zaGEwX2h3bW9kX2NsYXNzID0gewog
CS5zeXNjCQk9ICZvbWFwNDR4eF9zaGEwX3N5c2MsCiB9OwogCi1zdHJ1Y3Qgb21hcF9od21vZCBv
bWFwNDR4eF9zaGEwX2h3bW9kID0geworc3RhdGljIHN0cnVjdCBvbWFwX2h3bW9kIG9tYXA0NHh4
X3NoYTBfaHdtb2QgPSB7CiAJLm5hbWUJCT0gInNoYW0iLAogCS5jbGFzcwkJPSAmb21hcDQ0eHhf
c2hhMF9od21vZF9jbGFzcywKIAkuY2xrZG1fbmFtZQk9ICJsNF9zZWN1cmVfY2xrZG0iLApAQCAt
OTc0LDcgKzk3NCw3IEBAIHN0YXRpYyBzdHJ1Y3Qgb21hcF9od21vZCBvbWFwNDR4eF9kZXNfaHdt
b2QgPSB7CiAJfSwKIH07CiAKLXN0cnVjdCBvbWFwX2h3bW9kX29jcF9pZiBvbWFwNDR4eF9sM19t
YWluXzJfX2RlcyA9IHsKK3N0YXRpYyBzdHJ1Y3Qgb21hcF9od21vZF9vY3BfaWYgb21hcDQ0eHhf
bDNfbWFpbl8yX19kZXMgPSB7CiAJLm1hc3RlcgkJPSAmb21hcDQ0eHhfbDNfbWFpbl8yX2h3bW9k
LAogCS5zbGF2ZQkJPSAmb21hcDQ0eHhfZGVzX2h3bW9kLAogCS5jbGsJCT0gImwzX2Rpdl9jayIs
Ci0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
