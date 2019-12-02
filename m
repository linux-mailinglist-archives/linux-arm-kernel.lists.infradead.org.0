Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0978E10F2AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:06:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OftXdaJy1KJje2FN/RewNNFuP9ppgCJFYPGi7dT5200=; b=nHNejLbj04C+vM
	uLJXn2D/o/SpAVRvnD+riLsSwtb8Rj+fQrlFVbSiier3xWcMmuLAJekMIEg4Q50IuP3nHxfu3Fj6K
	fzg/Yd29UbwYfynIRCCQwXWWhJBa7hV1KbGgmwP9X+0/sb0n4yylYW+US/w7mdIRfi5thGGiH7AU5
	LHaJH3BQKVyZ4LBvJ+8l1CX4FfFTEJ54ne0Ov2Lmjy2ScHLU5jAUQ/GBP+V5PU+y1A4GDqsmLvdBx
	ITBy3Pv0WHOZrkzxkUd2mdLVXvulf+w7ni9XwMv+yHz/hw1J71USCLkb5HoNTP4YxZzdBMyma37hw
	IiCIjX4vN3KdwFREBVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtpV-00084r-PS; Mon, 02 Dec 2019 22:06:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtpC-0007tU-N9; Mon, 02 Dec 2019 22:05:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D0290B14F;
 Mon,  2 Dec 2019 22:05:44 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 0/5] ARM: dts: realtek: SB2 semaphores
Date: Mon,  2 Dec 2019 23:05:30 +0100
Message-Id: <20191202220535.6208-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_140546_904460_7EA1295B 
X-CRM114-Status: UNSURE (   8.27  )
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
Cc: devicetree@vger.kernel.org, Cheng-Yu Lee <cylee12@realtek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHBhdGNoIHNlcmllcyBpbXBsZW1lbnRzIGhhcmR3YXJlIHNlbWFwaG9yZXMg
Zm91bmQgaW4gU0IyIGJyaWRnZS4KCkRvd25zdHJlYW0gQlNQIGNvZGUgYXNzaWducyB0aGUgc2Ft
ZSBmaXJzdCBzZW1hcGhvcmUgdG8gYm90aCBDUlQgYW5kIElzbyBub2RlcywKd2hpY2ggc2VlbXMg
aW5lZmZpY2llbnQgaW4gbGlnaHQgb2YgbmluZSBzZW1hcGhvcmUgcmVnaXN0ZXJzIGFuZCBpcyB0
aGVyZWZvcmUKZGVmZXJyZWQgaW4gdGhpcyBpbml0aWFsIFJGQy4KClRoaXMgc2VyaWVzIGlzIGJh
c2VkIG9uIG15IHN5c2NvbiBzZXJpZXMgWzFdLgoKTGF0ZXN0IGV4cGVyaW1lbnRhbCBwYXRjaGVz
IGF0OgpodHRwczovL2dpdGh1Yi5jb20vYWZhZXJiZXIvbGludXgvY29tbWl0cy9ydGQxMjk1LW5l
eHQKCkhhdmUgYSBsb3Qgb2YgZnVuIQoKQ2hlZXJzLApBbmRyZWFzCgpbMV0gaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTI2OTQ1My8KCkNjOiBkZXZpY2V0cmVlQHZnZXIua2Vy
bmVsLm9yZwpDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IENoZW5nLVl1
IExlZSA8Y3lsZWUxMkByZWFsdGVrLmNvbT4KCkFuZHJlYXMgRsOkcmJlciAoNSk6CiAgZHQtYmlu
ZGluZ3M6IGh3bG9jazogQWRkIFJlYWx0ZWsgUlREMTE5NSBTQjIKICBod3NwaW5sb2NrOiBBZGQg
UmVhbHRlayBSVEQxMTk1IFNCMgogIEFSTTogZHRzOiBydGQxMTk1OiBBZGQgU0IyIHNlbSBub2Rl
cwogIGFybTY0OiBkdHM6IHJlYWx0ZWs6IHJ0ZDEyOXg6IEFkZCBTQjIgc2VtIG5vZGVzCiAgYXJt
NjQ6IGR0czogcmVhbHRlazogcnRkMTM5eDogQWRkIFNCMiBzZW0gbm9kZXMKCiAuLi4vYmluZGlu
Z3MvaHdsb2NrL3JlYWx0ZWsscnRkMTE5NS1zYjItc2VtLnlhbWwgICB8ICA0MiArKysrKysrKysK
IGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSAgICAgICAgICAgICAgICAgICAgIHwgIDE0
ICsrKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSAgICAgICAgICAg
fCAgMTQgKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5eC5kdHNpICAgICAg
ICAgICB8ICAxNCArKysKIGRyaXZlcnMvaHdzcGlubG9jay9LY29uZmlnICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgIDExICsrKwogZHJpdmVycy9od3NwaW5sb2NrL01ha2VmaWxlICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9od3NwaW5sb2NrL3J0ZDExOTVfc2IyX3Nl
bS5jICAgICAgICAgICAgICAgfCAxMDEgKysrKysrKysrKysrKysrKysrKysrCiA3IGZpbGVzIGNo
YW5nZWQsIDE5NyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2h3bG9jay9yZWFsdGVrLHJ0ZDExOTUtc2IyLXNlbS55YW1s
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9od3NwaW5sb2NrL3J0ZDExOTVfc2IyX3NlbS5j
CgotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
