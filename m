Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5321EB094
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 23:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gtvaPtk79YRepgJMuZzNqoD6MXZH70TWikpCB6vQP4=; b=HV10qJl/IFg5oT
	3mpW6f6o4TVKE3LngOPfpWX+LAUFBWflD0pa1o54HGR4Ipt7prkYnrNkHsznAYQqZXJvUzQaW0tCj
	BxqNIdRcJml/6z49VKfuBr9OG8wbJo9yWwUs1pEMWUdy0kgRLhbWFjWuBfY+73kwrFrMVMIxtGP7d
	sBeXVPMgV5WPE1nlnUw/10HU3/vwjy4eLSsDEpraNgdw346tWK2zOVl3oSMFvukxlKF0NpKJEhQXa
	M5SiKX5AupukC+QUPrBtU/Ro2n6O4ox0f/si4L7dlOaXxXxoiRErPBjoRkowYZFcKcGvvXj7eUlv/
	0hRrwP/WbHSfQLZstKTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrYM-0006Gy-7R; Mon, 01 Jun 2020 21:01:02 +0000
Received: from lists.nic.cz ([2001:1488:800:400::400] helo=mail.nic.cz)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrYG-0006G6-E9
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 21:00:57 +0000
Received: from dellmb.labs.office.nic.cz (unknown
 [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
 by mail.nic.cz (Postfix) with ESMTP id B845514060C;
 Mon,  1 Jun 2020 23:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1591045251; bh=L64r49HMOmeYZWgNuomHeYbP8IZAKo6IUwrebS2Mo6s=;
 h=From:To:Date;
 b=PU5nh46R+nJ7ZXGbc3lMtZlnEv52cZSUzLFW7gBRktX5IkFtTwlbperMD2SzbyHfD
 1sV4kzYzCs1XMeQjVz+8mSFLqu0LLswMEkJ59ZmldHVOHbHnrfLm5MOcBM+530AxuR
 JGK8OEQhL3MYDlxS7ivdl2vHOLeG+j+5vk+LvxFI=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH mvebu 2/2] firmware: turris-mox-rwtm: add debugfs documentation
Date: Mon,  1 Jun 2020 23:00:50 +0200
Message-Id: <20200601210050.31821-2-marek.behun@nic.cz>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601210050.31821-1-marek.behun@nic.cz>
References: <20200601210050.31821-1-marek.behun@nic.cz>
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Spam-Status: No, score=0.00
X-Spamd-Bar: /
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_140056_620166_FAE41216 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGRlYnVnZnMgQUJJIGRvY3VtZW50YXRpb24gZm9yIHRoZSBFQ0RTQSBzaWduYXR1cmVzLgoK
U2lnbmVkLW9mZi1ieTogTWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBuaWMuY3o+Ci0tLQogRG9j
dW1lbnRhdGlvbi9BQkkvdGVzdGluZy9kZWJ1Z2ZzLXR1cnJpcy1tb3gtcnd0bSB8IDkgKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9kZWJ1Z2ZzLXR1cnJpcy1tb3gtcnd0bQoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vQUJJL3Rlc3RpbmcvZGVidWdmcy10dXJyaXMtbW94LXJ3dG0g
Yi9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL2RlYnVnZnMtdHVycmlzLW1veC1yd3RtCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMmIzMjU1ZWU2OGZkCi0tLSAvZGV2
L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9kZWJ1Z2ZzLXR1cnJpcy1tb3gt
cnd0bQpAQCAtMCwwICsxLDkgQEAKK1doYXQ6CQkvc3lzL2tlcm5lbC9kZWJ1Zy90dXJyaXMtbW94
LXJ3dG0vZG9fc2lnbgorRGF0ZToJCUp1biAyMDIwCitLZXJuZWxWZXJzaW9uOgk1LjgKK0NvbnRh
Y3Q6CU1hcmVrIEJlaMO6biA8bWFyZWsuYmVodW5AbmljLmN6PgorRGVzY3JpcHRpb246CShXKSBN
ZXNzYWdlIHRvIHNpZ24gd2l0aCB0aGUgRUNEU0EgcHJpdmF0ZSBrZXkgc3RvcmVkIGluCisJCSAg
ICBkZXZpY2UncyBPVFAuIFRoZSBtZXNzYWdlIG11c3QgYmUgZXhhY3RseSA2NCBieXRlcyAoc2lu
Y2UKKwkJICAgIHRoaXMgaXMgaW50ZW5kZWQgZm9yIFNIQS01MTIgaGFzaGVzKS4KKwkJKFIpIFRo
ZSByZXN1bHRpbmcgc2lnbmF0dXJlLCAxMzYgYnl0ZXMuIFRoaXMgY29udGFpbnMgdGhlIFIgYW5k
CisJCSAgICBTIHZhbHVlcyBvZiB0aGUgRUNEU0Egc2lnbmF0dXJlLCBib3RoIGluIGJpZy1lbmRp
YW4gZm9ybWF0LgotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
