Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C901289A88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3A0jMKb/LSIWK8FVF0o0efe20UhVfZSNZ8B63y5e6Fw=; b=boLLxnPNEB4bT6
	5mzKmLjGE4Ap4kCjfG4oDm94AaLO0rs/gwcra9XrT0LNT0nsmJviidiQ5cLkFJp1byMAQiuresflF
	nAY5caug//1vOUB9G8yO1FZLnIK1JEK1aDxOOlVqFgt436fyCxDONNK0ps6QBnSf7dd5ZcFZufD9D
	v2Xh1murbUrKvzb43IHEv/5s95de9Ls5WCYaJIpSR2iRUT/9hecAo4pk3Sm51tjvSH4tl/cpXUEek
	HITEzY+v8CGi1Asy5KO8rmLJvsRL5sNP/87FWtYZJVAKVaRZAetNaFCQPf7zx36mo4miSrVAQB0Ce
	9hHN3dybI40KpcIESwLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx72K-0007mF-0G; Mon, 12 Aug 2019 09:54:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx72A-0007lo-Kc
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:54:35 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hx724-0002xU-VO; Mon, 12 Aug 2019 11:54:28 +0200
Received: from pza by lupine with local (Exim 4.89)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hx724-0008T7-Mr; Mon, 12 Aug 2019 11:54:28 +0200
Message-ID: <1565603668.5017.2.camel@pengutronix.de>
Subject: [GIT PULL] Reset controller changes for v5.4
From: Philipp Zabel <p.zabel@pengutronix.de>
To: arm@kernel.org, soc@kernel.org
Date: Mon, 12 Aug 2019 11:54:28 +0200
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_025434_680425_64E3BBAB 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBhcm0tc29jIG1haW50YWluZXJzLAoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNv
bW1pdCA1ZjllODMyYzEzNzA3NTA0NWQxNWNkNjg5OWFiMDUwNWNmYjJjYTRiOgoKICBMaW51cyA1
LjMtcmMxICgyMDE5LTA3LTIxIDE0OjA1OjM4IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUg
R2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5wZW5ndXRyb25peC5kZS9naXQvcHphL2xp
bnV4LmdpdCB0YWdzL3Jlc2V0LWZvci12NS40Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAg
dG8gZWE2NTFmZmQ0ZjdmZWJkNGEwYjNmZGI5OGUzOWE2OTgwZTk3OGEyYzoKCiAgcmVzZXQ6IEFk
ZCBEZXNpZ25XYXJlIElQIHN1cHBvcnQgdG8gc2ltcGxlIHJlc2V0ICgyMDE5LTA4LTA2IDE1OjMx
OjEzICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQpSZXNldCBjb250cm9sbGVyIGNoYW5nZXMgZm9yIHY1LjQKClRo
aXMgdGFnIGFkZHMgc3VwcG9ydCBmb3IgdGhlIGkuTVg4TU0gU1JDIHZpYSB0aGUgcmVzZXQtaW14
NyBkcml2ZXIKYW5kIGZvciBEZXNpZ25XYXJlIElQIHJlc2V0IGNvbnRyb2xsZXJzIHZpYSB0aGUg
cmVzZXQtc2ltcGxlIGRyaXZlci4KQSB0eXBvIGluIHRoZSBpLk1YOE1RIERTSSByZXNldCBkZWZp
bml0aW9ucyBpcyBmaXhlZCwgYW5kIHRoZSBNZXNvbgpyZXNldCBkcml2ZXIgYW5kIGJpbmRpbmcg
aGVhZGVycyBhcmUgdXBkYXRlZCB0byBTUERYIGxpY2Vuc2UKaWRlbnRpZmllcnMuCgotLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CkFuc29uIEh1YW5nICgxKToKICAgICAgZHQtYmluZGluZ3M6IHJlc2V0OiBpbXg3OiBBZGQgc3Vw
cG9ydCBmb3IgaS5NWDhNTQoKR3VpZG8gR8O8bnRoZXIgKDEpOgogICAgICBkdC1iaW5kaW5nczog
cmVzZXQ6IEZpeCB0eXBvIGluIGlteDhtcSByZXNldHMKCkd1c3Rhdm8gUGltZW50ZWwgKDEpOgog
ICAgICByZXNldDogQWRkIERlc2lnbldhcmUgSVAgc3VwcG9ydCB0byBzaW1wbGUgcmVzZXQKCkx1
aXMgT2xpdmVpcmEgKDEpOgogICAgICBkdC1iaW5kaW5nczogRG9jdW1lbnQgdGhlIERlc2lnbldh
cmUgSVAgcmVzZXQgYmluZGluZ3MKCk5laWwgQXJtc3Ryb25nICgzKToKICAgICAgcmVzZXQ6IHJl
c2V0LW1lc29uOiB1cGRhdGUgd2l0aCBTUERYIExpY2VuY2UgaWRlbnRpZmllcgogICAgICBkdC1i
aW5kaW5nczogcmVzZXQ6IGFtbG9naWMsbWVzb24tZ3hiYi1yZXNldDogdXBkYXRlIHdpdGggU1BE
WCBMaWNlbmNlIGlkZW50aWZpZXIKICAgICAgZHQtYmluZGluZ3M6IHJlc2V0OiBhbWxvZ2ljLG1l
c29uOGItcmVzZXQ6IHVwZGF0ZSB3aXRoIFNQRFggTGljZW5jZSBpZGVudGlmaWVyCgogLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcmVzZXQvZnNsLGlteDctc3JjLnR4dCAgICAgfCAgNiArKy0KIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L3NucHMsZHctcmVzZXQudHh0ICAgIHwgMzAgKysr
KysrKysrKysrKwogZHJpdmVycy9yZXNldC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMiArLQogZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAxMiArKy0tLQogZHJpdmVycy9yZXNldC9yZXNldC1tZXNvbi5jICAgICAgICAg
ICAgICAgICAgICAgICAgfCA1MSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3Jlc2V0
L3Jlc2V0LXNpbXBsZS5jICAgICAgICAgICAgICAgICAgICAgICB8ICAzICsrCiAuLi4vZHQtYmlu
ZGluZ3MvcmVzZXQvYW1sb2dpYyxtZXNvbi1neGJiLXJlc2V0LmggICB8IDUxICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvYW1sb2dpYyxtZXNvbjhiLXJl
c2V0LmggIHwgNTEgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogaW5jbHVkZS9kdC1iaW5kaW5ncy9y
ZXNldC9pbXg4bXEtcmVzZXQuaCAgICAgICAgICAgfCAzNCArKysrKysrLS0tLS0tLS0KIDkgZmls
ZXMgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgMTc2IGRlbGV0aW9ucygtKQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9zbnBzLGR3
LXJlc2V0LnR4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
