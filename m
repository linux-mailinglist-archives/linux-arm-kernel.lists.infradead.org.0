Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEB711C44C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Bs/u+aeCCi+jpQr6xqPSaUrSt/7NnCgzREmFH4JYTI=; b=aLm/yfWo42rrt1
	DLX4ra2vfooDojH2HA6rx52LSpKrV7Tnt2amc9dpO2ZG4F/1bBgdSgI2fPQ7OAs0DTiRGPIdZsFEG
	9lxwSiCwGTwN7H6ydojMivwKOrQFqYK4rOlWe2unm8mktlINIs1rDz9BlBO1MA0Ef63k7phuWzqh9
	upDs43TVWnakA2V/qG6O6Cx3QKfpAJq5T+H7mpIZFC/XoTL5WXjMq2ndvKGKB+YuQtrJySv6ts+eF
	E7vLgCpoITfqaDW/csnirnqUdDrCzsOIwVz1Ovv3vKsz4xulcHTOzPhV7Uap3M/ZqSQPSKL4jPpVJ
	SqNZXtiV/33uMyOOlHtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFPg-0006GR-NB; Thu, 12 Dec 2019 03:45:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKi-0000oZ-HP; Thu, 12 Dec 2019 03:40:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D8415AF63;
 Thu, 12 Dec 2019 03:40:04 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 17/25] leds: tm1628: Prepare Fude Microelectronics AiP1618
Date: Thu, 12 Dec 2019 04:39:44 +0100
Message-Id: <20191212033952.5967-18-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194008_947846_BD0E83C3 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGRlZmluaXRpb24gZm9yIEFpUDE2MTggY2hpcHNldC4KClNpZ25lZC1vZmYtYnk6IEFuZHJl
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBkcml2ZXJzL2xlZHMvS2NvbmZpZyAg
ICAgICB8ICA1ICsrKy0tCiBkcml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYyB8IDMwICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbGVkcy9LY29uZmlnIGIvZHJp
dmVycy9sZWRzL0tjb25maWcKaW5kZXggYTc2OTVkOTYxZDljLi4zYTdlNjAyOGFlODAgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbGVkcy9LY29uZmlnCisrKyBiL2RyaXZlcnMvbGVkcy9LY29uZmlnCkBA
IC04NDIsOCArODQyLDkgQEAgY29uZmlnIExFRFNfVE0xNjI4CiAJZGVwZW5kcyBvbiBTUEkKIAlk
ZXBlbmRzIG9uIE9GIHx8IENPTVBJTEVfVEVTVAogCWhlbHAKLQkgIFNheSBZIHRvIGVuYWJsZSBz
dXBwb3J0IGZvciBUaXRhbiBNaWNybyBFbGVjdHJvbmljcyBUTTE2MjggYW5kCi0JICBGdWRhIEhp
c2kgTWljcm9lbGVjdHJvbmljcyBGRDYyOCBMRUQgY29udHJvbGxlcnMuCisJICBTYXkgWSB0byBl
bmFibGUgc3VwcG9ydCBmb3IgVGl0YW4gTWljcm8gRWxlY3Ryb25pY3MgVE0xNjI4LAorCSAgRnVk
YSBIaXNpIE1pY3JvZWxlY3Ryb25pY3MgRkQ2MjggYW5kIEZ1ZGUgTWljcm9lbGVjdHJvbmljcyBB
aVAxNjE4CisJICBMRUQgY29udHJvbGxlcnMuCiAJICBUaGV5IGFyZSAzLXdpcmUgU1BJIGRldmlj
ZXMgY29udHJvbGxpbmcgYSB0d28tZGltZW5zaW9uYWwgZ3JpZCBvZgogCSAgTEVEcy4gRGltbWlu
ZyBpcyBhcHBsaWVkIHRvIGFsbCBvdXRwdXRzIHRocm91Z2ggYW4gaW50ZXJuYWwgUFdNLgogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYyBiL2RyaXZlcnMvbGVkcy9sZWRz
LXRtMTYyOC5jCmluZGV4IGVmODU3MTJhODRmMi4uOGE4ZmQxNTYyODUzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYworKysgYi9kcml2ZXJzL2xlZHMvbGVkcy10bTE2Mjgu
YwpAQCAtMyw2ICszLDcgQEAKICAqIFRpdGFuIE1pY3JvIEVsZWN0cm9uaWNzIFRNMTYyOCBMRUQg
Y29udHJvbGxlcgogICogQWxzbyBjb21wYXRpYmxlOgogICogRnVkYSBIaXNpIE1pY3JvZWxlY3Ry
b25pY3MgRkQ2MjgKKyAqIEZ1ZGUgTWljcm9lbGVjdHJvbmljcyBBaVAxNjE4CiAgKgogICogQ29w
eXJpZ2h0IChjKSAyMDE5IEFuZHJlYXMgRsOkcmJlcgogICovCkBAIC00MTEsOSArNDEyLDM4IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgdG0xNjI4X2luZm8gZmQ2MjhfaW5mbyA9IHsKIAkuZGVmYXVs
dF9wd20gPSAwLAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCB0bTE2MjhfbW9kZSBhaXAxNjE4
X21vZGVzWzRdID0geworCXsKKwkJLmdyaWRfbWFzayA9IEdFTk1BU0soNCwgMSksCisJCS5zZWdf
bWFzayA9IEdFTk1BU0soOCwgMSksCisJfSwKKwl7CisJCS5ncmlkX21hc2sgPSBHRU5NQVNLKDUs
IDEpLAorCQkuc2VnX21hc2sgPSBHRU5NQVNLKDcsIDEpLAorCX0sCisJeworCQkuZ3JpZF9tYXNr
ID0gR0VOTUFTSyg2LCAxKSwKKwkJLnNlZ19tYXNrID0gR0VOTUFTSyg2LCAxKSwKKwl9LAorCXsK
KwkJLmdyaWRfbWFzayA9IEdFTk1BU0soNywgMSksCisJCS5zZWdfbWFzayA9IEdFTk1BU0soNSwg
MSksCisJfSwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdG0xNjI4X2luZm8gYWlwMTYxOF9p
bmZvID0geworCS5ncmlkX21hc2sgPSBHRU5NQVNLKDcsIDEpLAorCS5zZWdfbWFzayA9IEdFTk1B
U0soMTQsIDEyKSB8IEdFTk1BU0soNSwgMSksCisJLm1vZGVzID0gYWlwMTYxOF9tb2RlcywKKwku
ZGVmYXVsdF9tb2RlID0gMywKKwkucHdtX21hcCA9IHRtMTYyOF9wd21fbWFwLAorCS5kZWZhdWx0
X3B3bSA9IDAsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCB0bTE2Mjhf
c3BpX29mX21hdGNoZXNbXSA9IHsKIAl7IC5jb21wYXRpYmxlID0gInRpdGFubWVjLHRtMTYyOCIs
IC5kYXRhID0gJnRtMTYyOF9pbmZvIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJmZGhpc2ksZmQ2Mjgi
LCAuZGF0YSA9ICZmZDYyOF9pbmZvIH0sCisJeyAuY29tcGF0aWJsZSA9ICJzemZkd2R6LGFpcDE2
MTgiLCAuZGF0YSA9ICZhaXAxNjE4X2luZm8gfSwKIAl7fQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFC
TEUob2YsIHRtMTYyOF9zcGlfb2ZfbWF0Y2hlcyk7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
