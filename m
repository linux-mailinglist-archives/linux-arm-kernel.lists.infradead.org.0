Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026B0ED171
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7uK4vG9gj5FBr6PodXebA+//oDSuMqe9cKJJwjDA7A=; b=K1EU/OIYQfqMzl
	WxZi27MsdjLN9JhqAqTnJoynv55hjd9R3EbqoQb0sfU8M6h8tkQ6b66iL00HvOtRU8ydzX5W+HLAj
	zioYKCViqkENhDWqodFVMAhrsX0wMNw38kkkbzWSzVWlcWmvH8Jv7M95rU4neCTQX9UFU+sTqYuyL
	672MdXYGTRAzjvgVV8RPaO4J4Ng4kSTsPTcrwUUkfj/A95Wi27Ijaom+RsQWRz5wwzaukONx7Up/J
	7I6mwg5IyXXS7Ic6Ybj3obK5PBmroDOBsuk661ZnEgwNk5zeprKKkNym+X3I4bhJnNseCdWk7HTa+
	JGFiezUcwtD4ZMqHEk2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4qW-0006BT-Ua; Sun, 03 Nov 2019 01:38:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4pA-0004w2-MX; Sun, 03 Nov 2019 01:37:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 20627AFD4;
 Sun,  3 Nov 2019 01:36:55 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 06/11] soc: realtek: chip: Detect RTD1296
Date: Sun,  3 Nov 2019 02:36:40 +0100
Message-Id: <20191103013645.9856-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183700_892540_25B0018E 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGV0ZWN0aW9uIGxvZ2ljIGZyb20gZG93bnN0cmVhbSBkcml2ZXJzL3NvYy9yZWFsdGVrL3J0ZDEy
OXgvcnRrX2NoaXAuYy4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4KLS0tCiBkcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYyB8IDE4ICsrKysrKysrKysr
KysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYyBiL2RyaXZlcnMvc29jL3Jl
YWx0ZWsvY2hpcC5jCmluZGV4IDlkMTM0MjJlOTkzNi4uYmE2NTNjMDk3NjQ0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYworKysgYi9kcml2ZXJzL3NvYy9yZWFsdGVrL2No
aXAuYwpAQCAtNTAsOSArNTAsMjUgQEAgc3RhdGljIGNvbnN0IGNoYXIgKmRlZmF1bHRfbmFtZShz
dHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IHN0cnVjdCBydGRfc29jICpzKQogCXJldHVybiBzLT5m
YW1pbHk7CiB9CiAKK3N0YXRpYyBjb25zdCBjaGFyICpydGQxMjk1X25hbWUoc3RydWN0IGRldmlj
ZSAqZGV2LCBjb25zdCBzdHJ1Y3QgcnRkX3NvYyAqcykKK3sKKwl2b2lkIF9faW9tZW0gKmJhc2U7
CisKKwliYXNlID0gb2ZfaW9tYXAoZGV2LT5vZl9ub2RlLCAxKTsKKwlpZiAoYmFzZSkgeworCQl1
MzIgY2hpcGluZm8xID0gcmVhZGxfcmVsYXhlZChiYXNlKTsKKwkJaW91bm1hcChiYXNlKTsKKwkJ
aWYgKGNoaXBpbmZvMSAmIEJJVCgxMSkpIHsKKwkJCXJldHVybiAiUlREMTI5NiI7CisJCX0KKwl9
CisKKwlyZXR1cm4gIlJURDEyOTUiOworfQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IHJ0ZF9zb2Mg
cnRkX3NvY19mYW1pbGllc1tdID0gewogCXsgMHgwMDAwNjMyOSwgIlJURDExOTUiLCBkZWZhdWx0
X25hbWUsIHJ0ZDExOTVfcmV2aXNpb25zLCAiUGhvZW5peCIgfSwKLQl7IDB4MDAwMDY0MjEsICJS
VEQxMjk1IiwgZGVmYXVsdF9uYW1lLCBydGQxMjk1X3JldmlzaW9ucywgIkt5bGluIiB9LAorCXsg
MHgwMDAwNjQyMSwgIlJURDEyOTUiLCBydGQxMjk1X25hbWUsIHJ0ZDEyOTVfcmV2aXNpb25zLCAi
S3lsaW4iIH0sCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHJ0ZF9zb2MgKnJ0ZF9zb2NfYnlf
Y2hpcF9pZCh1MzIgY2hpcF9pZCkKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
