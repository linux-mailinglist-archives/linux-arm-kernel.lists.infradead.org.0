Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F078796447
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LIlRKq+TduvnIHxXpNe8+iuwxC+lL4jgE/9Q+OCM7WA=; b=KcpYBcXzdl1DQD
	e+DclvYgzPrs4zWc330o8BXDM//p4b5GYdL3pgdTdADL/U3gtl8Oezf8PqZBZGunXXyNAT1iKpWg9
	3Ri0hvsVzo8GcPDMyxcJNH8+hwo73OWpowemWJuGz9BdknymNwLCYgjvloubLCnMYJd8og6I2Posr
	phAXMHOk06sWfUNdoYIC6J+chrCt3lRs8EeMJM+Jgek9aGa+BZgMXVGrJqakorWkj7z+Vz31dafFW
	mT1iHLebsvJrdc8kw9Pcfyo4NWsr+ib4GgNyWxYGdZCEilRu1SJBU/OG1KSGL9jHHlbMus/GOd8dz
	rCidbwl0cpasZz7Tasmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0612-0004xw-Ss; Tue, 20 Aug 2019 15:25:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i060q-0004wx-T0
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:25:34 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i060j-00088F-U1; Tue, 20 Aug 2019 17:25:25 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i060b-0000UV-79; Tue, 20 Aug 2019 17:25:17 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH RFC] dt-bindings: regulator: define a mux regulator
Date: Tue, 20 Aug 2019 17:25:11 +0200
Message-Id: <20190820152511.15307-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_082532_930927_2D8C2DF4 
X-CRM114-Status: GOOD (  14.55  )
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QSBtdXggcmVndWxhdG9yIGlzIHVzZWQgdG8gcHJvdmlkZSBjdXJyZW50IG9uIG9uZSBvZiBzZXZl
cmFsIG91dHB1dHMuIEl0Cm1pZ2h0IGxvb2sgYXMgZm9sbG93czoKCiAgICAgICwtLS0tLS0tLS0t
LS0uCiAgICAtLTxPVVQwICAgICBBMCA8LS0KICAgIC0tPE9VVDEgICAgIEExIDwtLQogICAgLS08
T1VUMiAgICAgQTIgPC0tCiAgICAtLTxPVVQzICAgICAgICB8CiAgICAtLTxPVVQ0ICAgICBFTiA8
LS0KICAgIC0tPE9VVDUgICAgICAgIHwKICAgIC0tPE9VVDYgICAgIElOIDwtLQogICAgLS08T1VU
NyAgICAgICAgfAogICAgICBgLS0tLS0tLS0tLS0tJwoKRGVwZW5kaW5nIG9uIHdoaWNoIGFkZHJl
c3MgaXMgZW5jb2RlZCBvbiB0aGUgdGhyZWUgYWRkcmVzcyBpbnB1dHMgQTAsIEExCmFuZCBBMiB0
aGUgY3VycmVudCBwcm92aWRlZCBvbiBJTiBpcyBwcm92aWRlZCBvbiBvbmUgb2YgdGhlIGVpZ2h0
Cm91dHB1dHMuCgpXaGF0IGlzIG5ldyBoZXJlIGlzIHRoYXQgdGhlIGJpbmRpbmcgbWFrZXMgdXNl
IG9mIGEgI3JlZ3VsYXRvci1jZWxscwpwcm9wZXJ0eS4gVGhpcyB1c2VzIHRoZSBhcHByb2FjaCBr
bm93biBmcm9tIG90aGVyIGJpbmRpbmdzIChlLmcuIGdwaW8pCnRvIGFsbG93IHJlZmVyZW5jaW5n
IGFsbCBlaWdodCBvdXRwdXRzIHdpdGggcGhhbmRsZSBhcmd1bWVudHMuIFRoaXMKcmVxdWlyZXMg
YW4gZXh0ZW50aW9uIGluIG9mX2dldF9yZWd1bGF0b3IgdG8gdXNlIGEgbmV3IHZhcmlhbnQgb2YK
b2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MgdGhhdCBoYXMgYSBjZWxsX2NvdW50X2RlZmF1bHQg
cGFyYW1ldGVyIHRoYXQKaXMgdXNlZCBpbiBhYnNlbmNlIG9mIGEgJGNlbGxfbmFtZSBwcm9wZXJ0
eS4gRXZlbiBpZiB3ZSdkIGNob29zZSB0bwp1cGRhdGUgYWxsIHJlZ3VsYXRvci1iaW5kaW5ncyB0
byBhZGQgI3JlZ3VsYXRvci1jZWxscyA9IDwwPjsgd2Ugc3RpbGwKbmVlZGVkIHNvbWV0aGluZyB0
byBpbXBsZW1lbnQgY29tcGF0aWJpbGl0eSB0byB0aGUgY3VycmVudGx5IGRlZmluZWQKYmluZGlu
Z3MuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBl
bmd1dHJvbml4LmRlPgotLS0KSGVsbG8sCgp0aGUgb2J2aW91cyBhbHRlcm5hdGl2ZSBpcyB0byBh
ZGQgKGhlcmUpIGVpZ2h0IHN1Ym5vZGVzIHRvIHJlcHJlc2VudCB0aGUKZWlnaHQgb3V0cHV0cy4g
VGhpcyBpcyBJTUhPIGxlc3MgcHJldHR5LCBidXQgd291bGRuJ3QgbmVlZCB0byBpbnRyb2R1Y2UK
I3JlZ3VsYXRvci1jZWxscy4KCkFwYXJ0IGZyb20gcmVnID0gPC4uPiBhbmQgYSBwaGFuZGxlIHRo
ZXJlIGlzIChJIHRoaW5rKSBub3RoaW5nIHRoYXQKbmVlZHMgdG8gYmUgc3BlY2lmaWVkIGluIHRo
ZSBzdWJub2RlcyBiZWNhdXNlIGFsbCBwcm9wZXJ0aWVzIG9mIGFuCm91dHB1dCAoYXBhcnQgZnJv
bSB0aGUgYWRkcmVzcykgYXBwbHkgdG8gYWxsIG91dHB1dHMuCgpXaGF0IGRvIHlvdSB0aGluaz8K
CkJlc3QgcmVnYXJkcwpVd2UKCiAuLi4vYmluZGluZ3MvcmVndWxhdG9yL211eC1yZWd1bGF0b3Iu
eWFtbCAgICAgfCA1MiArKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTIgaW5z
ZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9yZWd1bGF0b3IvbXV4LXJlZ3VsYXRvci55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRvci9tdXgtcmVndWxhdG9yLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVndWxhdG9yL211eC1yZWd1bGF0
b3IueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmYwNmRiYjk2
OTA5MAotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9yZWd1bGF0b3IvbXV4LXJlZ3VsYXRvci55YW1sCkBAIC0wLDAgKzEsNTIgQEAKKyMgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3JlZ3VsYXRvci9tdXgtcmVndWxhdG9yLnlhbWwjCiskc2No
ZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0
bGU6IE1VWCByZWd1bGF0b3JzCisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6CisgICAgY29u
c3Q6IFhYWCxhZGI3MDgKKworICBlbmFibGUtZ3Bpb3M6CisgICAgbWF4SXRlbXM6IDEKKworICBh
ZGRyZXNzLWdwaW9zOgorICAgIGRlc2NyaXB0aW9uOiBBcnJheSBvZiB0eXBpY2FsbHkgdGhyZWUg
R1BJTyBwaW5zIHVzZWQgdG8gc2VsZWN0IHRoZQorICAgICAgcmVndWxhdG9yJ3Mgb3V0cHV0LiBU
aGUgbGVhc3Qgc2lnbmlmaWNhbnQgYWRkcmVzcyBHUElPIG11c3QgYmUgbGlzdGVkCisgICAgICBm
aXJzdC4gVGhlIG90aGVycyBmb2xsb3cgaW4gb3JkZXIgb2Ygc2lnbmlmaWNhbmNlLgorICAgIG1p
bkl0ZW1zOiAxCisKKyAgIiNyZWd1bGF0b3ItY2VsbHMiOgorICAgIGNvbnN0OiAxCisKKyAgcmVn
dWxhdG9yLW5hbWU6CisgICAgZGVzY3JpcHRpb246IEEgc3RyaW5nIHVzZWQgdG8gY29uc3RydWN0
IHRoZSBzdWIgcmVndWxhdG9yJ3MgbmFtZXMKKyAgICAkcmVmOiAiL3NjaGVtYXMvdHlwZXMueWFt
bCMvZGVmaW5pdGlvbnMvc3RyaW5nIgorCisgIHN1cHBseToKKyAgICBkZXNjcmlwdGlvbjogaW5w
dXQgc3VwcGx5CisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSByZWd1bGF0b3ItbmFt
ZQorICAtIHN1cHBseQorICAKKworZXhhbXBsZXM6CisgIC0gfAorICAgIG11eC1yZWd1bGF0b3Ig
eworICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItbXV4IjsKKworICAgICAgcmVndWxhdG9y
LW5hbWUgPSAiYmxhZmFzZWwiOworCisgICAgICBzdXBwbHkgPSA8Jm11eGluX3JlZ3VsYXRvcj47
CisKKyAgICAgIGVuYWJsZS1ncGlvcyA9IDwmZ3BpbzIgNSBHUElPX0FDVElWRV9ISUdIPjsKKyAg
ICAgIGFkZHJlc3MtZ3Bpb3MgPSA8JmdwaW8yIDIgR1BJT19BQ1RJVkVfSElHSD4sCisgICAgICAg
ICAgICAgICAgICAgICAgICA8JmdwaW8yIDMgR1BJT19BQ1RJVkVfSElHSD4sCisgICAgICAgICAg
ICAgICAgICAgICAgICA8JmdwaW8yIDQgR1BJT19BQ1RJVkVfSElHSD4sCisgICAgfTsKKy4uLgot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
