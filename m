Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965ACCA1EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSs7ZFNi3+2M0pkXY6+U6yOMMP9kjE4uRjruaLHkP0s=; b=mWYo2JRuD1JrXY
	HFbx6E7lqg3VN7UZajD7x2mrXVFCNWwZRhFsmmXo1fo3jZ3RApFZDDBLkHCbvXfCiAPQWeT8KAGUN
	de6hpnwmUAJvQ9xyoz8NEUhDscDnJqE8Q18ezpkPRk47FIpbvp0CWnoQTqJWOPtaTjTZ/uWoNiPKE
	NUFb8/xvClFE3Qp+QTV3a6/BFxZT8+w7FVVCcc95/kclHAEpAlQV2tr2Mp62o+beezxTR5tQknOwH
	dBKsxOfpB6ls4Wqs1n1RWagP8vpB4nJ2l65z4vxMFqpcb4wzL70IWRBmmRFedv9ujvZTHTO7lIxpb
	NOrsD/9FxRUZVX7gHDhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3ZY-0000xU-1W; Thu, 03 Oct 2019 16:03:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3ZO-0000wm-V2
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:03:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AED520700;
 Thu,  3 Oct 2019 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570118590;
 bh=I1yTz26Uus0FX8pVRrSS7YkMuXv5RAm6lTosyJbGcuo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O2ZJ9WW2SYn/M02JOtYvz5RKg1zhN24/3wuhoz1p0tHrHTVxlpvD2Stbwxq8v8QIJ
 I/zGjPyfl5Yq67ZDePvlntpB9em48BJAiGvaHLEgKBFY/7AosIbqwSLjfHLvvc/Eir
 0AbtR5h9z3DZe0DK9A5SPd968ajR80Tn4xtsOp6c=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.9 065/129] ARM: dts: imx7d: cl-som-imx7: make ethernet work
 again
Date: Thu,  3 Oct 2019 17:53:08 +0200
Message-Id: <20191003154348.179363833@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003154318.081116689@linuxfoundation.org>
References: <20191003154318.081116689@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_090311_053322_AC2D7F54 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, stable@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Shawn Guo <shawnguo@kernel.org>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PgoKWyBVcHN0cmVhbSBjb21taXQg
OTg0NmE0NTI0YWM5MGI2MzQ5NjU4MGI3YWQ1MDY3NGI0MGQ5MmE4ZiBdCgpSZWNlbnQgY2hhbmdl
cyB0byB0aGUgYXRoZXJvcyBhdDgwM3ggZHJpdmVyIGNhdXNlZApldGhlcm5ldCB0byBzdG9wIHdv
cmtpbmcgb24gdGhpcyBib2FyZC4KSW4gcGFydGljdWxhciBjb21taXQgNmQ0Y2QwNDFmMGFmCigi
bmV0OiBwaHk6IGF0ODAzeDogZGlzYWJsZSBkZWxheSBvbmx5IGZvciBSR01JSSBtb2RlIikKYW5k
IGNvbW1pdCBjZDI4ZDFkNmU1MmUKKCJuZXQ6IHBoeTogYXQ4MDN4OiBEaXNhYmxlIHBoeSBkZWxh
eSBmb3IgUkdNSUkgbW9kZSIpCmZpeCB0aGUgQVI4MDMxIGRyaXZlciB0byBjb25maWd1cmUgdGhl
IHBoeSdzIChSWC9UWCkKZGVsYXlzIGFzIHBlciB0aGUgJ3BoeS1tb2RlJyBpbiB0aGUgZGV2aWNl
IHRyZWUuCgpUaGlzIG5vdyBwcmV2ZW50cyBldGhlcm5ldCBmcm9tIHdvcmtpbmcgb24gdGhpcyBi
b2FyZC4KCkl0IHVzZWQgdG8gd29yayBiZWZvcmUgdGhvc2UgY29tbWl0cywgYmVjYXVzZSB0aGUK
QVI4MDMxIGNvbWVzIG91dCBvZiByZXNldCB3aXRoIFJYIGRlbGF5IGVuYWJsZWQsIGFuZAp0aGUg
YXQ4MDN4IGRyaXZlciBkaWRuJ3QgdG91Y2ggdGhlIGRlbGF5IGNvbmZpZ3VyYXRpb24KYXQgYWxs
IHdoZW4gInJnbWlpIiBtb2RlIHdhcyBzZWxlY3RlZCwgYW5kIGJlY2F1c2UKYXJjaC9hcm0vbWFj
aC1pbXgvbWFjaC1pbXg3ZC5jOmFyODAzMV9waHlfZml4dXAoKQp1bmNvbmRpdGlvbmFsbHkgZW5h
YmxlcyBUWCBkZWxheS4KClNpbmNlIGFib3ZlIGNvbW1pdHMgYXI4MDMxX3BoeV9maXh1cCgpIGFs
c28gaGFzIG5vCmVmZmVjdCBhbnltb3JlLCBhbmQgdGhlIGVuZC1yZXN1bHQgaXMgdGhhdCBhbGwg
ZGVsYXlzCmFyZSBkaXNhYmxlZCBpbiB0aGUgcGh5LCBubyBldGhlcm5ldC4KClVwZGF0ZSB0aGUg
ZGV2aWNlIHRyZWUgdG8gcmVzdG9yZSBmdW5jdGlvbmFsaXR5LgoKU2lnbmVkLW9mZi1ieTogQW5k
csOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PgpDQzogSWx5YSBMZWR2aWNoIDxpbHlhQGNvbXB1
bGFiLmNvLmlsPgpDQzogSWdvciBHcmluYmVyZyA8Z3JpbmJlcmdAY29tcHVsYWIuY28uaWw+CkND
OiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDQzogTWFyayBSdXRsYW5kIDxtYXJr
LnJ1dGxhbmRAYXJtLmNvbT4KQ0M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ0M6
IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ0M6IFBlbmd1dHJvbml4IEtl
cm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNDOiBGYWJpbyBFc3RldmFtIDxmZXN0
ZXZhbUBnbWFpbC5jb20+CkNDOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkND
OiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDQzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnClNpZ25lZC1vZmYtYnk6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9y
Zz4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGFy
Y2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cyB8IDQgKystLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9p
bXg3ZC1jbC1zb20taW14Ny5kdHMKaW5kZXggMjA1MTMwNjAwODUzNC4uNzJkMWI4MjA5ZjVlNiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCisrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cwpAQCAtNDMsNyArNDMsNyBA
QAogCQkJICA8JmNsa3MgSU1YN0RfRU5FVDFfVElNRV9ST09UX0NMSz47CiAJYXNzaWduZWQtY2xv
Y2stcGFyZW50cyA9IDwmY2xrcyBJTVg3RF9QTExfRU5FVF9NQUlOXzEwME1fQ0xLPjsKIAlhc3Np
Z25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDEwMDAwMDAwMD47Ci0JcGh5LW1vZGUgPSAicmdtaWki
OworCXBoeS1tb2RlID0gInJnbWlpLWlkIjsKIAlwaHktaGFuZGxlID0gPCZldGhwaHkwPjsKIAlm
c2wsbWFnaWMtcGFja2V0OwogCXN0YXR1cyA9ICJva2F5IjsKQEAgLTY5LDcgKzY5LDcgQEAKIAkJ
CSAgPCZjbGtzIElNWDdEX0VORVQyX1RJTUVfUk9PVF9DTEs+OwogCWFzc2lnbmVkLWNsb2NrLXBh
cmVudHMgPSA8JmNsa3MgSU1YN0RfUExMX0VORVRfTUFJTl8xMDBNX0NMSz47CiAJYXNzaWduZWQt
Y2xvY2stcmF0ZXMgPSA8MD4sIDwxMDAwMDAwMDA+OwotCXBoeS1tb2RlID0gInJnbWlpIjsKKwlw
aHktbW9kZSA9ICJyZ21paS1pZCI7CiAJcGh5LWhhbmRsZSA9IDwmZXRocGh5MT47CiAJZnNsLG1h
Z2ljLXBhY2tldDsKIAlzdGF0dXMgPSAib2theSI7Ci0tIAoyLjIwLjEKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
