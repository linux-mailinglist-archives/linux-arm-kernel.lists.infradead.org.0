Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079CEE177F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZicGUM00ZQH/+fN8StR+gpqCm9hbRVs9Pj8GQJGrvsI=; b=Dy2ljC3LZ9+LY0
	NcLOjgZ9IB+kajnEH7H65QuYzm5t8bO/Ojj6r/d05lwAsyU79qgoV21ezXogdGsoi6xb5dgFetvGd
	dTYHA9J1b+sY+pFERXxjvpCSFi+XktoSilu4SW91peesbskjzWzk94tjuTt+FI5Lw+ZobjbxN+BTi
	0cJA4sP/s7SKH+DdKsfo+qQe2qycwE30i1DRhgTi+iNLORa5fPcciu1Igo+FBJxVjIVaUhtQv7wld
	HMQaOMDX1B5rnQmYYX1IJHW6TqhNwWtSpEMLwW+aEylVZy17pNqrg/fiwYEujIy/KoQETIDUZDlpi
	muJwzA2QkPLGOI7Yf5Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDeQ-0004kp-AB; Wed, 23 Oct 2019 10:13:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDdy-0004iV-IJ; Wed, 23 Oct 2019 10:13:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EAECAB4DF;
 Wed, 23 Oct 2019 10:13:27 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 01/11] dt-bindings: reset: Add Realtek RTD1295
Date: Wed, 23 Oct 2019 12:13:07 +0200
Message-Id: <20191023101317.26656-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031330_893628_67509102 
X-CRM114-Status: GOOD (  10.10  )
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
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgaGVhZGVyIHdpdGggc3ltYm9saWMgcmVzZXQgaW5kaWNlcyBmb3IgUmVhbHRlayBSVEQx
Mjk1IFNvQy4KTmFtaW5nIHdhcyBkZXJpdmVkIGZyb20gcmVzZXQtbmFtZXMgaW4gYW4gT0VNJ3Mg
RGV2aWNlIFRyZWUuCgpBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KW0FG
OiBEcm9wcGVkIFJURDEyOTUgc3BlY2lmaWMgYmluZGluZyBkZWZpbml0aW9uLCB1cGRhdGVkIFNQ
RFhdClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0t
CiB2MSAtPiB2MjoKICogRHJvcHBlZCB0ZXh0dWFsIGJpbmRpbmcgd2l0aCBuZXcgY29tcGF0aWJs
ZQogKiBVcGRhdGVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIGxvY2F0aW9uCiAqIFVwZGF0ZWQg
dG8gU1BEWCAyLjAKICogQ2hhbmdlZCBmcm9tIE1JVCB0byBCU0QgKFJvYikKIAogaW5jbHVkZS9k
dC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDEyOTUuaCB8IDExMSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTExIGluc2VydGlvbnMoKykKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oCgpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDEyOTUuaCBi
L2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMjk1LmgKbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4yYzBjYjZhZmU4MTYKLS0tIC9kZXYvbnVsbAor
KysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oCkBAIC0wLDAg
KzEsMTExIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIg
T1IgQlNELTItQ2xhdXNlKSAqLworLyoKKyAqIFJlYWx0ZWsgUlREMTI5NSByZXNldCBjb250cm9s
bGVycworICoKKyAqIENvcHlyaWdodCAoYykgMjAxNyBBbmRyZWFzIEbDpHJiZXIKKyAqLworI2lm
bmRlZiBEVF9CSU5ESU5HU19SRVNFVF9SVEQxMjk1X0gKKyNkZWZpbmUgRFRfQklORElOR1NfUkVT
RVRfUlREMTI5NV9ICisKKy8qIHNvZnQgcmVzZXQgMSAqLworI2RlZmluZSBSVEQxMjk1X1JTVE5f
TUlTQwkJMAorI2RlZmluZSBSVEQxMjk1X1JTVE5fTkFUCQkxCisjZGVmaW5lIFJURDEyOTVfUlNU
Tl9VU0IzX1BIWTBfUE9XCTIKKyNkZWZpbmUgUlREMTI5NV9SU1ROX0dTUEkJCTMKKyNkZWZpbmUg
UlREMTI5NV9SU1ROX1VTQjNfUDBfTURJTwk0CisjZGVmaW5lIFJURDEyOTVfUlNUTl9TQVRBXzAJ
CTUKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1VTQgkJNgorI2RlZmluZSBSVEQxMjk1X1JTVE5fU0FU
QV9QSFlfMAkJNworI2RlZmluZSBSVEQxMjk1X1JTVE5fVVNCX1BIWTAJCTgKKyNkZWZpbmUgUlRE
MTI5NV9SU1ROX1VTQl9QSFkxCQk5CisjZGVmaW5lIFJURDEyOTVfUlNUTl9TQVRBX1BIWV9QT1df
MAkxMAorI2RlZmluZSBSVEQxMjk1X1JTVE5fU0FUQV9GVU5DX0VYSVNUXzAJMTEKKyNkZWZpbmUg
UlREMTI5NV9SU1ROX0hETUkJCTEyCisjZGVmaW5lIFJURDEyOTVfUlNUTl9WRTEJCTEzCisjZGVm
aW5lIFJURDEyOTVfUlNUTl9WRTIJCTE0CisjZGVmaW5lIFJURDEyOTVfUlNUTl9WRTMJCTE1Cisj
ZGVmaW5lIFJURDEyOTVfUlNUTl9FVE4JCTE2CisjZGVmaW5lIFJURDEyOTVfUlNUTl9BSU8JCTE3
CisjZGVmaW5lIFJURDEyOTVfUlNUTl9HUFUJCTE4CisjZGVmaW5lIFJURDEyOTVfUlNUTl9UVkUJ
CTE5CisjZGVmaW5lIFJURDEyOTVfUlNUTl9WTwkJCTIwCisjZGVmaW5lIFJURDEyOTVfUlNUTl9M
VkRTCQkyMQorI2RlZmluZSBSVEQxMjk1X1JTVE5fU0UJCQkyMgorI2RlZmluZSBSVEQxMjk1X1JT
VE5fRENVCQkyMworI2RlZmluZSBSVEQxMjk1X1JTVE5fRENfUEhZCQkyNAorI2RlZmluZSBSVEQx
Mjk1X1JTVE5fQ1AJCQkyNQorI2RlZmluZSBSVEQxMjk1X1JTVE5fTUQJCQkyNgorI2RlZmluZSBS
VEQxMjk1X1JTVE5fVFAJCQkyNworI2RlZmluZSBSVEQxMjk1X1JTVE5fQUUJCQkyOAorI2RlZmlu
ZSBSVEQxMjk1X1JTVE5fTkYJCQkyOQorI2RlZmluZSBSVEQxMjk1X1JTVE5fTUlQSQkJMzAKKyNk
ZWZpbmUgUlREMTI5NV9SU1ROX1JTQQkJMzEKKworLyogc29mdCByZXNldCAyICovCisjZGVmaW5l
IFJURDEyOTVfUlNUTl9BQ1BVCQkwCisjZGVmaW5lIFJURDEyOTVfUlNUTl9KUEVHCQkxCisjZGVm
aW5lIFJURDEyOTVfUlNUTl9VU0JfUEhZMwkJMgorI2RlZmluZSBSVEQxMjk1X1JTVE5fVVNCX1BI
WTIJCTMKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1VTQjNfUEhZMV9QT1cJNAorI2RlZmluZSBSVEQx
Mjk1X1JTVE5fVVNCM19QMV9NRElPCTUKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1BDSUUwX1NUSVRD
SAk2CisjZGVmaW5lIFJURDEyOTVfUlNUTl9QQ0lFMF9QSFkJCTcKKyNkZWZpbmUgUlREMTI5NV9S
U1ROX1BDSUUwCQk4CisjZGVmaW5lIFJURDEyOTVfUlNUTl9QQ1JfQ05UCQk5CisjZGVmaW5lIFJU
RDEyOTVfUlNUTl9DUgkJCTEwCisjZGVmaW5lIFJURDEyOTVfUlNUTl9FTU1DCQkxMQorI2RlZmlu
ZSBSVEQxMjk1X1JTVE5fU0RJTwkJMTIKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1BDSUUwX0NPUkUJ
CTEzCisjZGVmaW5lIFJURDEyOTVfUlNUTl9QQ0lFMF9QT1dFUgkxNAorI2RlZmluZSBSVEQxMjk1
X1JTVE5fUENJRTBfTk9OU1RJQ0gJMTUKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1BDSUUxX1BIWQkJ
MTYKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1BDSUUxCQkxNworI2RlZmluZSBSVEQxMjk1X1JTVE5f
STJDXzUJCTE4CisjZGVmaW5lIFJURDEyOTVfUlNUTl9QQ0lFMV9TVElUQ0gJMTkKKyNkZWZpbmUg
UlREMTI5NV9SU1ROX1BDSUUxX0NPUkUJCTIwCisjZGVmaW5lIFJURDEyOTVfUlNUTl9QQ0lFMV9Q
T1dFUgkyMQorI2RlZmluZSBSVEQxMjk1X1JTVE5fUENJRTFfTk9OU1RJQ0gJMjIKKyNkZWZpbmUg
UlREMTI5NV9SU1ROX0kyQ180CQkyMworI2RlZmluZSBSVEQxMjk1X1JTVE5fSTJDXzMJCTI0Cisj
ZGVmaW5lIFJURDEyOTVfUlNUTl9JMkNfMgkJMjUKKyNkZWZpbmUgUlREMTI5NV9SU1ROX0kyQ18x
CQkyNgorI2RlZmluZSBSVEQxMjk1X1JTVE5fVVIyCQkyNworI2RlZmluZSBSVEQxMjk1X1JTVE5f
VVIxCQkyOAorI2RlZmluZSBSVEQxMjk1X1JTVE5fTUlTQ19TQwkJMjkKKyNkZWZpbmUgUlREMTI5
NV9SU1ROX0NCVVNfVFgJCTMwCisjZGVmaW5lIFJURDEyOTVfUlNUTl9TRFNfUEhZCQkzMQorCisv
KiBzb2Z0IHJlc2V0IDQgKi8KKyNkZWZpbmUgUlREMTI5NV9SU1ROX0RDUEhZX0NSVAkJMAorI2Rl
ZmluZSBSVEQxMjk1X1JTVE5fRENQSFlfQUxFUlRfUlgJMQorI2RlZmluZSBSVEQxMjk1X1JTVE5f
RENQSFlfUFRSCQkyCisjZGVmaW5lIFJURDEyOTVfUlNUTl9EQ1BIWV9MRE8JCTMKKyNkZWZpbmUg
UlREMTI5NV9SU1ROX0RDUEhZX1NTQ19ESUcJNAorI2RlZmluZSBSVEQxMjk1X1JTVE5fSERNSVJY
CQk1CisjZGVmaW5lIFJURDEyOTVfUlNUTl9DQlVTUlgJCTYKKyNkZWZpbmUgUlREMTI5NV9SU1RO
X1NBVEFfUEhZX1BPV18xCTcKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1NBVEFfRlVOQ19FWElTVF8x
CTgKKyNkZWZpbmUgUlREMTI5NV9SU1ROX1NBVEFfUEhZXzEJCTkKKyNkZWZpbmUgUlREMTI5NV9S
U1ROX1NBVEFfMQkJMTAKKyNkZWZpbmUgUlREMTI5NV9SU1ROX0ZBTgkJMTEKKyNkZWZpbmUgUlRE
MTI5NV9SU1ROX0hETUlSWF9XUkFQCTEyCisjZGVmaW5lIFJURDEyOTVfUlNUTl9QQ0lFMF9QSFlf
TURJTwkxMworI2RlZmluZSBSVEQxMjk1X1JTVE5fUENJRTFfUEhZX01ESU8JMTQKKyNkZWZpbmUg
UlREMTI5NV9SU1ROX0RJU1AJCTE1CisKKy8qIGlzbyByZXNldCAqLworI2RlZmluZSBSVEQxMjk1
X0lTT19SU1ROX0lSCQkxCisjZGVmaW5lIFJURDEyOTVfSVNPX1JTVE5fQ0VDMAkJMgorI2RlZmlu
ZSBSVEQxMjk1X0lTT19SU1ROX0NFQzEJCTMKKyNkZWZpbmUgUlREMTI5NV9JU09fUlNUTl9EUAkJ
NAorI2RlZmluZSBSVEQxMjk1X0lTT19SU1ROX0NCVVNUWAkJNQorI2RlZmluZSBSVEQxMjk1X0lT
T19SU1ROX0NCVVNSWAkJNgorI2RlZmluZSBSVEQxMjk1X0lTT19SU1ROX0VGVVNFCQk3CisjZGVm
aW5lIFJURDEyOTVfSVNPX1JTVE5fVVIwCQk4CisjZGVmaW5lIFJURDEyOTVfSVNPX1JTVE5fR01B
QwkJOQorI2RlZmluZSBSVEQxMjk1X0lTT19SU1ROX0dQSFkJCTEwCisjZGVmaW5lIFJURDEyOTVf
SVNPX1JTVE5fSTJDXzAJCTExCisjZGVmaW5lIFJURDEyOTVfSVNPX1JTVE5fSTJDXzEJCTEyCisj
ZGVmaW5lIFJURDEyOTVfSVNPX1JTVE5fQ0JVUwkJMTMKKworI2VuZGlmCi0tIAoyLjE2LjQKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
