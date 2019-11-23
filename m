Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA4410806A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h26svz97EeCClN4RW9X0JLpeN6/PmIlxj1LvlSHZjJA=; b=pBcY0PEh0pzTVt
	x/J/zUE3bwPWTRTRe/qKxH/T16bLQ6cNbY3cY33+QcIlo3RDWAVijlpfBI8np3FQykMB8KRbv3hbM
	JS4MFi3D3ydK9mVsi5A+k7hBK6h6Gz7WVsXYdVxMfF+pIzCdRzaywAQJn1uUP3bPFj3lP0lt8rryt
	pJ178XermJs9OcTNL6TPv8EaGw+corirOIyW/H9eQU0oq4CSojOefFDXiAzGFmPjBXDllfWj/JuMX
	mVNo49zL8Lc1TM1ZshHLerOmL1YyZlWpRTyX2YgniJIFesSXoFRL4zGh/idzRBoAe4EVR1Ihect3L
	DSpXvV9USSJ3XJodVluw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYcAi-0004Yd-Ub; Sat, 23 Nov 2019 20:38:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYcAW-0004Wd-1f; Sat, 23 Nov 2019 20:38:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C9A29B00A;
 Sat, 23 Nov 2019 20:38:10 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 4/8] ARM: dts: rtd1195: Exclude boot ROM from memory ranges
Date: Sat, 23 Nov 2019 21:37:55 +0100
Message-Id: <20191123203759.20708-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191123203759.20708-1-afaerber@suse.de>
References: <20191123203759.20708-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_123812_232128_D2B4A35F 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2FydmUgb3V0IDB4YTgwMCBmb3IgdGhlIGJvb3QgUk9NIGZyb20gdGhlIC9tZW1vcnlAMCBub2Rl
LAp1cGRhdGluZyBpdCB0byAvbWVtb3J5QGE4MDAsIGFuZCBhZGQgaXQgdG8gL3NvYyByYW5nZXMu
CgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQog
Q291bGQgYmUgc3F1YXNoZWQuCiAKIHY0OiBOZXcKIAogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5
NS1tZWxlLXgxMDAwLmR0cyB8IDQgKystLQogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNp
ICAgICAgICAgICB8IDMgKystCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LW1lbGUt
eDEwMDAuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS1tZWxlLXgxMDAwLmR0cwppbmRl
eCBlMjA1MGNiNjQ0NzQuLmM3OTUxYjlhMmM5NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvcnRkMTE5NS1tZWxlLXgxMDAwLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1
LW1lbGUteDEwMDAuZHRzCkBAIC0xOSw5ICsxOSw5IEBACiAJCXN0ZG91dC1wYXRoID0gInNlcmlh
bDA6MTE1MjAwbjgiOwogCX07CiAKLQltZW1vcnlAMCB7CisJbWVtb3J5QGE4MDAgewogCQlkZXZp
Y2VfdHlwZSA9ICJtZW1vcnkiOwotCQlyZWcgPSA8MHgwMDAwMDAwMCAweDE4MDAwMDAwPiwgLyog
dXAgdG8gci1idXMgKi8KKwkJcmVnID0gPDB4MDAwMGE4MDAgMHgxN2ZmNTgwMD4sIC8qIGJvb3Qg
Uk9NIHRvIHItYnVzICovCiAJCSAgICAgIDwweDE4MDcwMDAwIDB4MDAwOTAwMDA+LCAvKiByLWJ1
cyB0byBOT1IgZmxhc2ggKi8KIAkJICAgICAgPDB4MTkxMDAwMDAgMHgyNmYwMDAwMD47IC8qIE5P
UiBmbGFzaCB0byAxIEdpQiAqLwogCX07CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9y
dGQxMTk1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKaW5kZXggYzU3MTNh
NWVmNDcyLi4wZDdjMmJlNzUwZjYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDEx
OTUuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKQEAgLTg4LDcgKzg4
LDggQEAKIAkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsKIAkJI2FkZHJlc3MtY2VsbHMgPSA8
MT47CiAJCSNzaXplLWNlbGxzID0gPDE+OwotCQlyYW5nZXMgPSA8MHgxODAwMDAwMCAweDE4MDAw
MDAwIDB4MDAwNzAwMDA+LAorCQlyYW5nZXMgPSA8MHgwMDAwMDAwMCAweDAwMDAwMDAwIDB4MDAw
MGE4MDA+LAorCQkJIDwweDE4MDAwMDAwIDB4MTgwMDAwMDAgMHgwMDA3MDAwMD4sCiAJCQkgPDB4
MTgxMDAwMDAgMHgxODEwMDAwMCAweDAxMDAwMDAwPiwKIAkJCSA8MHg4MDAwMDAwMCAweDgwMDAw
MDAwIDB4ODAwMDAwMDA+OwogCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
