Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CA81A4761
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qYc16fIAsAe4sH7M1gobAB65/IZkaDN5vRcjRZkThxA=; b=m4dEi7qAUdebyx
	M8KlC693gupCKh3O9aHKyCFfQ9Ft4Qc2lIyrNgzv3bTF2F8IZqtalx/mGNESWkM+/aOXN6ispEwGR
	YTRp4HtB4XaCOHBjYEXWMwb9NLe16cLmMg2BRm/93rvpa7yXpB+IjGiqh+h2mFFAqDlxJk5k1QsEF
	YYyuOszkC/luh2yN7wXj+Nb7kP59tXpmwhLOjwOGLAg4Ixc4ZMClKmwccIB6eBFphqrnzUI+bBxQ4
	4lQBvxZWu48wGCwlyEMlffaLAs1MTslTA/n+kBSURyheWROWKIrWsFtDwDzmYxx6saDMTOgrYJ3Pk
	yn/DvsPIHs27AvX4PKLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMucs-0007sh-Rz; Fri, 10 Apr 2020 14:27:22 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMuce-0007qx-US
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 14:27:10 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id R2Sq2200B5USYZQ062SqQ2; Fri, 10 Apr 2020 16:26:58 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jMucM-0004qD-Ci; Fri, 10 Apr 2020 16:26:50 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jMucM-0004qj-9Q; Fri, 10 Apr 2020 16:26:50 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] netfilter: nft_fwd_netdev: Fix CONFIG_NET_CLS_ACT=n build
Date: Fri, 10 Apr 2020 16:26:48 +0200
Message-Id: <20200410142648.18599-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_072709_124799_FC658741 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SWYgQ09ORklHX05FVF9DTFNfQUNUPW46CgogICAgbmV0L25ldGZpbHRlci9uZnRfZndkX25ldGRl
di5jOiBJbiBmdW5jdGlvbiDigJhuZnRfZndkX25ldGRldl9ldmFs4oCZOgogICAgbmV0L25ldGZp
bHRlci9uZnRfZndkX25ldGRldi5jOjMyOjEwOiBlcnJvcjog4oCYc3RydWN0IHNrX2J1ZmbigJkg
aGFzIG5vIG1lbWJlciBuYW1lZCDigJh0Y19yZWRpcmVjdGVk4oCZCiAgICAgIHBrdC0+c2tiLT50
Y19yZWRpcmVjdGVkID0gMTsKCSAgICAgIF5+CiAgICBuZXQvbmV0ZmlsdGVyL25mdF9md2RfbmV0
ZGV2LmM6MzM6MTA6IGVycm9yOiDigJhzdHJ1Y3Qgc2tfYnVmZuKAmSBoYXMgbm8gbWVtYmVyIG5h
bWVkIOKAmHRjX2Zyb21faW5ncmVzc+KAmQogICAgICBwa3QtPnNrYi0+dGNfZnJvbV9pbmdyZXNz
ID0gMTsKCSAgICAgIF5+CgpGaXggdGhpcyBieSBwcm90ZWN0aW5nIHRoaXMgY29kZSBodW5rIHdp
dGggdGhlIGFwcHJvcHJpYXRlICNpZmRlZi4KClJlcG9ydGVkLWJ5OiBub3JlcGx5QGVsbGVybWFu
LmlkLmF1CkZpeGVzOiBiY2ZhYmVlMWFmZDk5NDg0ICgibmV0ZmlsdGVyOiBuZnRfZndkX25ldGRl
djogYWxsb3cgdG8gcmVkaXJlY3QgdG8gaWZiIHZpYSBpbmdyZXNzIikKU2lnbmVkLW9mZi1ieTog
R2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4KLS0tCiBuZXQvbmV0Zmls
dGVyL25mdF9md2RfbmV0ZGV2LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvbmV0L25ldGZpbHRlci9uZnRfZndkX25ldGRldi5jIGIvbmV0L25l
dGZpbHRlci9uZnRfZndkX25ldGRldi5jCmluZGV4IDc0ZjA1MGJhNmJhZGM5ZGMuLmViY2FmNWMz
MjU3MTJmMzAgMTAwNjQ0Ci0tLSBhL25ldC9uZXRmaWx0ZXIvbmZ0X2Z3ZF9uZXRkZXYuYworKysg
Yi9uZXQvbmV0ZmlsdGVyL25mdF9md2RfbmV0ZGV2LmMKQEAgLTI4LDkgKzI4LDExIEBAIHN0YXRp
YyB2b2lkIG5mdF9md2RfbmV0ZGV2X2V2YWwoY29uc3Qgc3RydWN0IG5mdF9leHByICpleHByLAog
CXN0cnVjdCBuZnRfZndkX25ldGRldiAqcHJpdiA9IG5mdF9leHByX3ByaXYoZXhwcik7CiAJaW50
IG9pZiA9IHJlZ3MtPmRhdGFbcHJpdi0+c3JlZ19kZXZdOwogCisjaWZkZWYgQ09ORklHX05FVF9D
TFNfQUNUCiAJLyogVGhlc2UgYXJlIHVzZWQgYnkgaWZiIG9ubHkuICovCiAJcGt0LT5za2ItPnRj
X3JlZGlyZWN0ZWQgPSAxOwogCXBrdC0+c2tiLT50Y19mcm9tX2luZ3Jlc3MgPSAxOworI2VuZGlm
CiAKIAluZl9md2RfbmV0ZGV2X2VncmVzcyhwa3QsIG9pZik7CiAJcmVncy0+dmVyZGljdC5jb2Rl
ID0gTkZfU1RPTEVOOwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
