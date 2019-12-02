Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18E410EF44
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1SV7vX9ur08jXd105hGMvf34Dx29BnPEjaHACAaEZU=; b=Ex78n+2THU7mQd
	PaGCP4jLMQ6WkyGFhbk+6d9Sb7ggoHjsART2rerr9ghixdhuAeh189z/4qH4G9OPY7q8uo9E1WIDo
	x7gpqiVQqlXytqojlfrY0AEF1KP6+lHRJ2dbv5PfBiIZYULyUaHGyvCOmKNC5zL0TfB/n5Wk+k1BR
	XX/ieMu8ibrKaxYHyd/AqcnUBeLmNODia79WEscejtTXE3GVr7AvgZcAIhs1MR4PGKFQwMoR9yly/
	litn1mshQDhk0oQyqzim5Z3MWXMmdBr9pevjs5NpDT3JBZBY4eOUevEriqqHTCfaLzJjNVFduAa8E
	JYMlcRWju8MtXuUkXVEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqNL-0006UE-Lq; Mon, 02 Dec 2019 18:24:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKw-0004GA-N6; Mon, 02 Dec 2019 18:22:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 18A91AE8D;
 Mon,  2 Dec 2019 18:22:16 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 06/14] dt-bindings: reset: Add Realtek RTD1195
Date: Mon,  2 Dec 2019 19:21:56 +0100
Message-Id: <20191202182205.14629-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102218_910421_A0062AA8 
X-CRM114-Status: UNSURE (   9.75  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgaGVhZGVyIHdpdGggc3ltYm9saWMgcmVzZXQgaW5kaWNlcyBmb3IgUmVhbHRlayBSVEQx
MTk1IFNvQy4KTmFtaW5nIHdhcyBkZXJpdmVkIGZyb20gQlNQIHJlZ2lzdGVyIGRlc2NyaXB0aW9u
IGhlYWRlcnMuCgpBY2tlZC1ieTogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5k
ZT4KUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYt
Ynk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2MTogRnJvbSBSVEQx
MTk1IHY0IHNlcmllcwogCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTE5
NS5oIHwgNzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3
NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9y
ZXNldC9yZWFsdGVrLHJ0ZDExOTUuaAoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3Mv
cmVzZXQvcmVhbHRlayxydGQxMTk1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0
ZWsscnRkMTE5NS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMjc5
MDJhYmY5MzViCi0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9y
ZWFsdGVrLHJ0ZDExOTUuaApAQCAtMCwwICsxLDc0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKSAqLworLyoKKyAqIFJlYWx0
ZWsgUlREMTE5NSByZXNldCBjb250cm9sbGVycworICoKKyAqIENvcHlyaWdodCAoYykgMjAxNyBB
bmRyZWFzIEbDpHJiZXIKKyAqLworI2lmbmRlZiBEVF9CSU5ESU5HU19SRVNFVF9SVEQxMTk1X0gK
KyNkZWZpbmUgRFRfQklORElOR1NfUkVTRVRfUlREMTE5NV9ICisKKy8qIHNvZnQgcmVzZXQgMSAq
LworI2RlZmluZSBSVEQxMTk1X1JTVE5fTUlTQwkJMAorI2RlZmluZSBSVEQxMTk1X1JTVE5fUk5H
CQkxCisjZGVmaW5lIFJURDExOTVfUlNUTl9VU0IzX1BPVwkJMgorI2RlZmluZSBSVEQxMTk1X1JT
VE5fR1NQSQkJMworI2RlZmluZSBSVEQxMTk1X1JTVE5fVVNCM19QMF9NRElPCTQKKyNkZWZpbmUg
UlREMTE5NV9SU1ROX1ZFX0gyNjUJCTUKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VTQgkJNgorI2Rl
ZmluZSBSVEQxMTk1X1JTVE5fVVNCX1BIWTAJCTgKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VTQl9Q
SFkxCQk5CisjZGVmaW5lIFJURDExOTVfUlNUTl9IRE1JUlgJCTExCisjZGVmaW5lIFJURDExOTVf
UlNUTl9IRE1JCQkxMgorI2RlZmluZSBSVEQxMTk1X1JTVE5fRVROCQkxNAorI2RlZmluZSBSVEQx
MTk1X1JTVE5fQUlPCQkxNQorI2RlZmluZSBSVEQxMTk1X1JTVE5fR1BVCQkxNgorI2RlZmluZSBS
VEQxMTk1X1JTVE5fVkVfSDI2NAkJMTcKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1ZFX0pQRUcJCTE4
CisjZGVmaW5lIFJURDExOTVfUlNUTl9UVkUJCTE5CisjZGVmaW5lIFJURDExOTVfUlNUTl9WTwkJ
CTIwCisjZGVmaW5lIFJURDExOTVfUlNUTl9MVkRTCQkyMQorI2RlZmluZSBSVEQxMTk1X1JTVE5f
U0UJCQkyMgorI2RlZmluZSBSVEQxMTk1X1JTVE5fRENVCQkyMworI2RlZmluZSBSVEQxMTk1X1JT
VE5fRENfUEhZCQkyNAorI2RlZmluZSBSVEQxMTk1X1JTVE5fQ1AJCQkyNQorI2RlZmluZSBSVEQx
MTk1X1JTVE5fTUQJCQkyNgorI2RlZmluZSBSVEQxMTk1X1JTVE5fVFAJCQkyNworI2RlZmluZSBS
VEQxMTk1X1JTVE5fQUUJCQkyOAorI2RlZmluZSBSVEQxMTk1X1JTVE5fTkYJCQkyOQorI2RlZmlu
ZSBSVEQxMTk1X1JTVE5fTUlQSQkJMzAKKworLyogc29mdCByZXNldCAyICovCisjZGVmaW5lIFJU
RDExOTVfUlNUTl9BQ1BVCQkwCisjZGVmaW5lIFJURDExOTVfUlNUTl9WQ1BVCQkxCisjZGVmaW5l
IFJURDExOTVfUlNUTl9QQ1IJCTkKKyNkZWZpbmUgUlREMTE5NV9SU1ROX0NSCQkJMTAKKyNkZWZp
bmUgUlREMTE5NV9SU1ROX0VNTUMJCTExCisjZGVmaW5lIFJURDExOTVfUlNUTl9TRElPCQkxMgor
I2RlZmluZSBSVEQxMTk1X1JTVE5fSTJDXzUJCTE4CisjZGVmaW5lIFJURDExOTVfUlNUTl9SVEMJ
CTIwCisjZGVmaW5lIFJURDExOTVfUlNUTl9JMkNfNAkJMjMKKyNkZWZpbmUgUlREMTE5NV9SU1RO
X0kyQ18zCQkyNAorI2RlZmluZSBSVEQxMTk1X1JTVE5fSTJDXzIJCTI1CisjZGVmaW5lIFJURDEx
OTVfUlNUTl9JMkNfMQkJMjYKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VSMQkJMjgKKworLyogc29m
dCByZXNldCAzICovCisjZGVmaW5lIFJURDExOTVfUlNUTl9TQjIJCTAKKworLyogaXNvIHNvZnQg
cmVzZXQgKi8KKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9WRkQJCTAKKyNkZWZpbmUgUlREMTE5
NV9JU09fUlNUTl9JUgkJMQorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0NFQzAJCTIKKyNkZWZp
bmUgUlREMTE5NV9JU09fUlNUTl9DRUMxCQkzCisjZGVmaW5lIFJURDExOTVfSVNPX1JTVE5fRFAJ
CTQKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9DQlVTVFgJCTUKKyNkZWZpbmUgUlREMTE5NV9J
U09fUlNUTl9DQlVTUlgJCTYKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9FRlVTRQkJNworI2Rl
ZmluZSBSVEQxMTk1X0lTT19SU1ROX1VSMAkJOAorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0dN
QUMJCTkKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9HUEhZCQkxMAorI2RlZmluZSBSVEQxMTk1
X0lTT19SU1ROX0kyQ18wCQkxMQorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0kyQ182CQkxMgor
I2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0NCVVMJCTEzCisKKyNlbmRpZgotLSAKMi4xNi40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
