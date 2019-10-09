Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11E4D0A5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l/FHASVx95NP3c75uLk7pRE7praZdSVCPdT7wXKVbbs=; b=aSgiAp/hVzEmGZ
	PmaEIRKivjODyrOLBcLwuIe+foAkeN1oSoD71JNSYdDnWxAO909kfoERKCFCXQ6rlKRmdtWdmyj0J
	enQCKQ0bE4trTDbRpYEgDVdaaIYwqAtT+giOj0rAJOevOyfil2C80IiPi3ROTfJb8OaBsBCeuGzLf
	+KOaEKUQ14hawBfx6ZDiYlOvSne5n2TE024lXImuRBDDpX7uimuGijLTGuPxe1f7ZyduqT/yvCuUv
	5qKLfrfP9Lf4TEd6ClQUA3BC/SqvBo+HD7VEoLr+JLPhLks/beCC8BxEKtFWWjqMhwy6PY4bW5b40
	FSrEwGhg55PZ2wn78pwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7mG-0002o0-4l; Wed, 09 Oct 2019 08:57:00 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7m7-0002nE-Jt
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:56:53 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iI7m4-0008Cl-9s; Wed, 09 Oct 2019 09:56:48 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iI7m3-0005fe-Pt; Wed, 09 Oct 2019 09:56:47 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: OMAP2+: make dra7xx_sha0_hwmod static
Date: Wed,  9 Oct 2019 09:56:45 +0100
Message-Id: <20191009085646.21755-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_015651_802176_206792B9 
X-CRM114-Status: GOOD (  12.78  )
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

VGhlIGRyYTd4eF9zaGEwX2h3bW9kIG9iamVjdCBpcyBub3QgZXhwb3J0ZWQgb3V0c2lkZSBvZgpv
bWFwX2h3bW9kXzd4eF9kYXRhLiBzbyBtYWtlIGl0IHN0YXRpYyB0byBhdm9pZCB0aGUKZm9sbG93
aW5nIHdhcm5pbmc6CgphcmNoL2FybS9tYWNoLW9tYXAyL29tYXBfaHdtb2RfN3h4X2RhdGEuYzo2
ODY6MTk6IHdhcm5pbmc6IHN5bWJvbCAnZHJhN3h4X3NoYTBfaHdtb2QnIHdhcyBub3QgZGVjbGFy
ZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CgpTaWduZWQtb2ZmLWJ5OiBCZW4gRG9va3MgPGJlbi5k
b29rc0Bjb2RldGhpbmsuY28udWs+Ci0tLQpDYzogIkJlbm/DrnQgQ291c3NvbiIgPGJjb3Vzc29u
QGJheWxpYnJlLmNvbT4KQ2M6IFBhdWwgV2FsbXNsZXkgPHBhdWxAcHdzYW4uY29tPgpDYzogVG9u
eSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4KQ2M6IGxpbnV4LW9tYXBAdmdlci5rZXJuZWwu
b3JnCi0tLQogYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFwX2h3bW9kXzd4eF9kYXRhLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9tYWNoLW9tYXAyL29tYXBfaHdtb2RfN3h4X2RhdGEuYyBiL2FyY2gvYXJt
L21hY2gtb21hcDIvb21hcF9od21vZF83eHhfZGF0YS5jCmluZGV4IGU1YmQ1NDlkMmE1ZS4uYmQz
OTJkNTkzODJiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW9tYXAyL29tYXBfaHdtb2RfN3h4
X2RhdGEuYworKysgYi9hcmNoL2FybS9tYWNoLW9tYXAyL29tYXBfaHdtb2RfN3h4X2RhdGEuYwpA
QCAtNjgzLDcgKzY4Myw3IEBAIHN0YXRpYyBzdHJ1Y3Qgb21hcF9od21vZF9jbGFzcyBkcmE3eHhf
c2hhMF9od21vZF9jbGFzcyA9IHsKIAkuc3lzYwkJPSAmZHJhN3h4X3NoYTBfc3lzYywKIH07CiAK
LXN0cnVjdCBvbWFwX2h3bW9kIGRyYTd4eF9zaGEwX2h3bW9kID0geworc3RhdGljIHN0cnVjdCBv
bWFwX2h3bW9kIGRyYTd4eF9zaGEwX2h3bW9kID0gewogCS5uYW1lCQk9ICJzaGFtIiwKIAkuY2xh
c3MJCT0gJmRyYTd4eF9zaGEwX2h3bW9kX2NsYXNzLAogCS5jbGtkbV9uYW1lCT0gImw0c2VjX2Ns
a2RtIiwKLS0gCjIuMjMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
