Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E2C11C445
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jd40eqW++XxW+2AKvab0d9tdF21Ls38M+qB/FhF9tgQ=; b=QfJWq5LOMxx2+r
	kXJHhcFhEbYU1whzAGF/jT+Cazj74ewK5kPbzhG4HIuFYSjo1sqNChEGd/DgsfoYSxStwz9lIIpc5
	5S8C7qPN02hegqJA/DGQGrDugp3niUGBku4w7z5q6HoDtabwmK1lqFf3OGEyKHTcFylzyj1GJlkPj
	LDaVXH5tVYKbODYcXoS1eMOJdViDVxfe29AZ+K2Aqwfj7oObj02Msh8zMHohgSc/5lEaZdMvgEuIs
	PM7Rt1091AbZBSZy0JdLLvMy3pWPwr0tNVIQOA+6USXiE28Rf6hb3OOKnqMDLyHzKX/9eICJTPPEY
	gEj3wS5RSCw6gMykx3gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFNu-0004Xl-Ob; Thu, 12 Dec 2019 03:43:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKe-0000SE-By; Thu, 12 Dec 2019 03:40:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 60525AD6F;
 Thu, 12 Dec 2019 03:40:02 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 12/25] leds: tm1628: Add Fuda Hisi Microelectronics FD628
Date: Thu, 12 Dec 2019 04:39:39 +0100
Message-Id: <20191212033952.5967-13-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194004_625110_F2CA7EC0 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: sales@fdhisi.com, linux-kernel@vger.kernel.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGRlZmluaXRpb24gZm9yIEZENjI4IGNoaXBzZXQuCgpDYzogc2FsZXNAZmRoaXNpLmNvbQpT
aWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogZHJp
dmVycy9sZWRzL0tjb25maWcgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2xlZHMvbGVkcy10bTE2
MjguYyB8IDEyICsrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbGVkcy9LY29uZmlnIGIvZHJp
dmVycy9sZWRzL0tjb25maWcKaW5kZXggZjNhZmI0MTlhOWExLi5hNzY5NWQ5NjFkOWMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbGVkcy9LY29uZmlnCisrKyBiL2RyaXZlcnMvbGVkcy9LY29uZmlnCkBA
IC04NDIsOCArODQyLDggQEAgY29uZmlnIExFRFNfVE0xNjI4CiAJZGVwZW5kcyBvbiBTUEkKIAlk
ZXBlbmRzIG9uIE9GIHx8IENPTVBJTEVfVEVTVAogCWhlbHAKLQkgIFNheSBZIHRvIGVuYWJsZSBz
dXBwb3J0IGZvciBUaXRhbiBNaWNybyBFbGVjdHJvbmljcyBUTTE2MjgKLQkgIExFRCBjb250cm9s
bGVycy4KKwkgIFNheSBZIHRvIGVuYWJsZSBzdXBwb3J0IGZvciBUaXRhbiBNaWNybyBFbGVjdHJv
bmljcyBUTTE2MjggYW5kCisJICBGdWRhIEhpc2kgTWljcm9lbGVjdHJvbmljcyBGRDYyOCBMRUQg
Y29udHJvbGxlcnMuCiAJICBUaGV5IGFyZSAzLXdpcmUgU1BJIGRldmljZXMgY29udHJvbGxpbmcg
YSB0d28tZGltZW5zaW9uYWwgZ3JpZCBvZgogCSAgTEVEcy4gRGltbWluZyBpcyBhcHBsaWVkIHRv
IGFsbCBvdXRwdXRzIHRocm91Z2ggYW4gaW50ZXJuYWwgUFdNLgogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2xlZHMvbGVkcy10bTE2MjguYyBiL2RyaXZlcnMvbGVkcy9sZWRzLXRtMTYyOC5jCmluZGV4
IDMxOWJmMzRjZTgzNS4uZWY4NTcxMmE4NGYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2xlZHMvbGVk
cy10bTE2MjguYworKysgYi9kcml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYwpAQCAtMSw2ICsxLDgg
QEAKIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCiAvKgogICog
VGl0YW4gTWljcm8gRWxlY3Ryb25pY3MgVE0xNjI4IExFRCBjb250cm9sbGVyCisgKiBBbHNvIGNv
bXBhdGlibGU6CisgKiBGdWRhIEhpc2kgTWljcm9lbGVjdHJvbmljcyBGRDYyOAogICoKICAqIENv
cHlyaWdodCAoYykgMjAxOSBBbmRyZWFzIEbDpHJiZXIKICAqLwpAQCAtNDAwLDggKzQwMiwxOCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHRtMTYyOF9pbmZvIHRtMTYyOF9pbmZvID0gewogCS5kZWZh
dWx0X3B3bSA9IDAsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IHRtMTYyOF9pbmZvIGZkNjI4
X2luZm8gPSB7CisJLmdyaWRfbWFzayA9IEdFTk1BU0soNywgMSksCisJLnNlZ19tYXNrID0gR0VO
TUFTSygxNCwgMTIpIHwgR0VOTUFTSygxMCwgMSksCisJLm1vZGVzID0gdG0xNjI4X21vZGVzLAor
CS5kZWZhdWx0X21vZGUgPSAzLAorCS5wd21fbWFwID0gdG0xNjI4X3B3bV9tYXAsCisJLmRlZmF1
bHRfcHdtID0gMCwKK307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHRtMTYy
OF9zcGlfb2ZfbWF0Y2hlc1tdID0gewogCXsgLmNvbXBhdGlibGUgPSAidGl0YW5tZWMsdG0xNjI4
IiwgLmRhdGEgPSAmdG0xNjI4X2luZm8gfSwKKwl7IC5jb21wYXRpYmxlID0gImZkaGlzaSxmZDYy
OCIsIC5kYXRhID0gJmZkNjI4X2luZm8gfSwKIAl7fQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUo
b2YsIHRtMTYyOF9zcGlfb2ZfbWF0Y2hlcyk7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
