Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B076E13D520
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 08:38:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fcp5lhAuUEBiZrxXj1EcRmyMg2N/k+pQZP3azxCTwZs=; b=F1NypZDsqz1SfU
	JSevK5YHi7SApWTOt188J0jN64FpBOhBu/UNuct5FJjJsRdL4Pi2VA6KPLBP8/dYKlOPciJSW7QP3
	viTXHnNKxxhwwUeuWkM7up9Wla3PIYAiHuQPJ9d4JyGgyDHg7fL33iej5l5bH2b6mv+WegyhlVOwp
	zT4Ckqeq9+sScG/OrOoot9itiAzdl5EUFOaSzgkJT6F6n8d5xsh46vCt9ziq9SnJ65HeugsPvBUFo
	UVTLB29RMWmnpJj71r7BNaQJ5fgWi27zYJikB8dN94/Mp14S0PkEGdZpuQKmuW614kW5yQtlRrReK
	jKLhlJeH6DD3A4D9wkgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzjY-0000Sd-Ou; Thu, 16 Jan 2020 07:38:28 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzic-0008A3-6D
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 07:37:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EF976200676;
 Thu, 16 Jan 2020 08:37:28 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E1926200659;
 Thu, 16 Jan 2020 08:37:28 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3F4332047A;
 Thu, 16 Jan 2020 08:37:28 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH v2 2/3] clk: imx8mn: add SNVS clock to clock tree
Date: Thu, 16 Jan 2020 09:37:17 +0200
Message-Id: <20200116073718.4475-3-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116073718.4475-1-horia.geanta@nxp.com>
References: <20200116073718.4475-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_233730_361899_F68D688C 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aS5teDhtbiBoYXMgc3VwcG9ydCBmb3IgY2xvY2sgZ2F0aW5nIHRoZSBzbnZzIG1vZHVsZS4KQWRk
IGl0IGludG8gY2xvY2sgdHJlZSBzbyB0aGF0IHJ0Yy1zbnZzIGRyaXZlciBjb3VsZCB1c2UgaXQu
CgpOb3RlIHRoaXMgd2lsbCBhbHNvIGJlIHJlcXVpcmVkIGluIHRoZSBzbnZzX3B3cmtleSBkcml2
ZXIsCm9uY2Ugc3VwcG9ydCBmb3IgY2xvY2sgbWFuYWdlbWVudCB3aWxsIGJlIGFkZGVkLgoKU2ln
bmVkLW9mZi1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Ci0tLQogZHJp
dmVycy9jbGsvaW14L2Nsay1pbXg4bW4uYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4bW4uYyBiL2RyaXZl
cnMvY2xrL2lteC9jbGstaW14OG1uLmMKaW5kZXggY2UyYmEzZGNlNDgzLi42YTUwYjU5OTY4ZjUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2lteC9jbGstaW14OG1uLmMKKysrIGIvZHJpdmVycy9j
bGsvaW14L2Nsay1pbXg4bW4uYwpAQCAtNTE5LDYgKzUxOSw3IEBAIHN0YXRpYyBpbnQgaW14OG1u
X2Nsb2Nrc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWh3c1tJTVg4TU5f
Q0xLX1NBSTVfSVBHXSA9IGlteF9jbGtfaHdfZ2F0ZTJfc2hhcmVkMigic2FpNV9pcGdfY2xrIiwg
ImlwZ19hdWRpb19yb290IiwgYmFzZSArIDB4NDM3MCwgMCwgJnNoYXJlX2NvdW50X3NhaTUpOwog
CWh3c1tJTVg4TU5fQ0xLX1NBSTZfUk9PVF0gPSBpbXhfY2xrX2h3X2dhdGUyX3NoYXJlZDIoInNh
aTZfcm9vdF9jbGsiLCAic2FpNiIsIGJhc2UgKyAweDQzODAsIDAsICZzaGFyZV9jb3VudF9zYWk2
KTsKIAlod3NbSU1YOE1OX0NMS19TQUk2X0lQR10gPSBpbXhfY2xrX2h3X2dhdGUyX3NoYXJlZDIo
InNhaTZfaXBnX2NsayIsICJpcGdfYXVkaW9fcm9vdCIsIGJhc2UgKyAweDQzODAsIDAsICZzaGFy
ZV9jb3VudF9zYWk2KTsKKwlod3NbSU1YOE1OX0NMS19TTlZTX1JPT1RdID0gaW14X2Nsa19od19n
YXRlNCgic252c19yb290X2NsayIsICJpcGdfcm9vdCIsIGJhc2UgKyAweDQ0NzAsIDApOwogCWh3
c1tJTVg4TU5fQ0xLX1VBUlQxX1JPT1RdID0gaW14X2Nsa19od19nYXRlNCgidWFydDFfcm9vdF9j
bGsiLCAidWFydDEiLCBiYXNlICsgMHg0NDkwLCAwKTsKIAlod3NbSU1YOE1OX0NMS19VQVJUMl9S
T09UXSA9IGlteF9jbGtfaHdfZ2F0ZTQoInVhcnQyX3Jvb3RfY2xrIiwgInVhcnQyIiwgYmFzZSAr
IDB4NDRhMCwgMCk7CiAJaHdzW0lNWDhNTl9DTEtfVUFSVDNfUk9PVF0gPSBpbXhfY2xrX2h3X2dh
dGU0KCJ1YXJ0M19yb290X2NsayIsICJ1YXJ0MyIsIGJhc2UgKyAweDQ0YjAsIDApOwotLSAKMi4x
Ny4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
