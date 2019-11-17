Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C938FFF866
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:23:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPlNcrBxCb1PoBVLNaUYi3kTk5z0gxisUMiF2ZWz3hw=; b=DuhZkzSD5GQ1e7
	Qb8mmkIggfQAD9RpnrIWuyJ29eYBCIR8IR6DvH2gayDOFFalO2AHeq7fPgbNtsYY2j/2JMSKrOaP/
	ui4jneZ55qMf58sh9awS5njYMD+8bPkLofxRVK2qu6P2zlKWSUJXV8GgooULWwpFk1Enhxwi2cevk
	oVNy/zJTiAaCg6I0Ji4W+aRS+Nzqif1NsjnuvlYjLADhXaRMZoSq7goHW8u9vQg0FhVbYPes4SIFG
	I5KbOQgMw79H1sSFzYRHPTnF9T4hc9dlq7OleUe0LoCihb+cDlTVICaiIFAeOcPhxaCIFun59irWU
	CsZEneUtbqxIQsDDPV9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEtw-0001OY-GA; Sun, 17 Nov 2019 07:23:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEsA-000853-6P; Sun, 17 Nov 2019 07:21:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6C145B2FD;
 Sun, 17 Nov 2019 07:21:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 5/8] dt-bindings: reset: Add Realtek RTD1195
Date: Sun, 17 Nov 2019 08:21:06 +0100
Message-Id: <20191117072109.20402-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232126_400972_FAA37707 
X-CRM114-Status: UNSURE (   9.99  )
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
Ynk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2MzogVW5jaGFuZ2Vk
IGZyb20gUlREMTI5NSByZXNldCB2MgogCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0
ZWsscnRkMTE5NS5oIHwgNzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1i
aW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUuaAoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQt
YmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMTk1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jl
c2V0L3JlYWx0ZWsscnRkMTE5NS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAw
MDAwMC4uMjc5MDJhYmY5MzViCi0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5n
cy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUuaApAQCAtMCwwICsxLDc0IEBACisvKiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKSAqLworLyoK
KyAqIFJlYWx0ZWsgUlREMTE5NSByZXNldCBjb250cm9sbGVycworICoKKyAqIENvcHlyaWdodCAo
YykgMjAxNyBBbmRyZWFzIEbDpHJiZXIKKyAqLworI2lmbmRlZiBEVF9CSU5ESU5HU19SRVNFVF9S
VEQxMTk1X0gKKyNkZWZpbmUgRFRfQklORElOR1NfUkVTRVRfUlREMTE5NV9ICisKKy8qIHNvZnQg
cmVzZXQgMSAqLworI2RlZmluZSBSVEQxMTk1X1JTVE5fTUlTQwkJMAorI2RlZmluZSBSVEQxMTk1
X1JTVE5fUk5HCQkxCisjZGVmaW5lIFJURDExOTVfUlNUTl9VU0IzX1BPVwkJMgorI2RlZmluZSBS
VEQxMTk1X1JTVE5fR1NQSQkJMworI2RlZmluZSBSVEQxMTk1X1JTVE5fVVNCM19QMF9NRElPCTQK
KyNkZWZpbmUgUlREMTE5NV9SU1ROX1ZFX0gyNjUJCTUKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VT
QgkJNgorI2RlZmluZSBSVEQxMTk1X1JTVE5fVVNCX1BIWTAJCTgKKyNkZWZpbmUgUlREMTE5NV9S
U1ROX1VTQl9QSFkxCQk5CisjZGVmaW5lIFJURDExOTVfUlNUTl9IRE1JUlgJCTExCisjZGVmaW5l
IFJURDExOTVfUlNUTl9IRE1JCQkxMgorI2RlZmluZSBSVEQxMTk1X1JTVE5fRVROCQkxNAorI2Rl
ZmluZSBSVEQxMTk1X1JTVE5fQUlPCQkxNQorI2RlZmluZSBSVEQxMTk1X1JTVE5fR1BVCQkxNgor
I2RlZmluZSBSVEQxMTk1X1JTVE5fVkVfSDI2NAkJMTcKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1ZF
X0pQRUcJCTE4CisjZGVmaW5lIFJURDExOTVfUlNUTl9UVkUJCTE5CisjZGVmaW5lIFJURDExOTVf
UlNUTl9WTwkJCTIwCisjZGVmaW5lIFJURDExOTVfUlNUTl9MVkRTCQkyMQorI2RlZmluZSBSVEQx
MTk1X1JTVE5fU0UJCQkyMgorI2RlZmluZSBSVEQxMTk1X1JTVE5fRENVCQkyMworI2RlZmluZSBS
VEQxMTk1X1JTVE5fRENfUEhZCQkyNAorI2RlZmluZSBSVEQxMTk1X1JTVE5fQ1AJCQkyNQorI2Rl
ZmluZSBSVEQxMTk1X1JTVE5fTUQJCQkyNgorI2RlZmluZSBSVEQxMTk1X1JTVE5fVFAJCQkyNwor
I2RlZmluZSBSVEQxMTk1X1JTVE5fQUUJCQkyOAorI2RlZmluZSBSVEQxMTk1X1JTVE5fTkYJCQky
OQorI2RlZmluZSBSVEQxMTk1X1JTVE5fTUlQSQkJMzAKKworLyogc29mdCByZXNldCAyICovCisj
ZGVmaW5lIFJURDExOTVfUlNUTl9BQ1BVCQkwCisjZGVmaW5lIFJURDExOTVfUlNUTl9WQ1BVCQkx
CisjZGVmaW5lIFJURDExOTVfUlNUTl9QQ1IJCTkKKyNkZWZpbmUgUlREMTE5NV9SU1ROX0NSCQkJ
MTAKKyNkZWZpbmUgUlREMTE5NV9SU1ROX0VNTUMJCTExCisjZGVmaW5lIFJURDExOTVfUlNUTl9T
RElPCQkxMgorI2RlZmluZSBSVEQxMTk1X1JTVE5fSTJDXzUJCTE4CisjZGVmaW5lIFJURDExOTVf
UlNUTl9SVEMJCTIwCisjZGVmaW5lIFJURDExOTVfUlNUTl9JMkNfNAkJMjMKKyNkZWZpbmUgUlRE
MTE5NV9SU1ROX0kyQ18zCQkyNAorI2RlZmluZSBSVEQxMTk1X1JTVE5fSTJDXzIJCTI1CisjZGVm
aW5lIFJURDExOTVfUlNUTl9JMkNfMQkJMjYKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VSMQkJMjgK
KworLyogc29mdCByZXNldCAzICovCisjZGVmaW5lIFJURDExOTVfUlNUTl9TQjIJCTAKKworLyog
aXNvIHNvZnQgcmVzZXQgKi8KKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9WRkQJCTAKKyNkZWZp
bmUgUlREMTE5NV9JU09fUlNUTl9JUgkJMQorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0NFQzAJ
CTIKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9DRUMxCQkzCisjZGVmaW5lIFJURDExOTVfSVNP
X1JTVE5fRFAJCTQKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9DQlVTVFgJCTUKKyNkZWZpbmUg
UlREMTE5NV9JU09fUlNUTl9DQlVTUlgJCTYKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9FRlVT
RQkJNworI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX1VSMAkJOAorI2RlZmluZSBSVEQxMTk1X0lT
T19SU1ROX0dNQUMJCTkKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9HUEhZCQkxMAorI2RlZmlu
ZSBSVEQxMTk1X0lTT19SU1ROX0kyQ18wCQkxMQorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0ky
Q182CQkxMgorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0NCVVMJCTEzCisKKyNlbmRpZgotLSAK
Mi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
