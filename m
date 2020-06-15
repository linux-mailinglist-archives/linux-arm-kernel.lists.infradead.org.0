Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F3A1F8E18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGa/R+OcxT2zaGgIb/iWXoPetQiLxgGS2lneDO/duY0=; b=nXYweQCn+rq0IJ
	ZiQ+jz1LN9nxccAHeWEg6HAnxUWxq6gzteIeAWa59ZmPIIsbN8LaN0hfh6zvfipb3JqylsDao92Ry
	va3NbrSdUR2Scv9PpAxDTOX4zGR7aSphMf14Di3Tp3Vyo3a4PFTyrZX8BBBrd+CN84BF4KtK5xQt0
	1rlWDB4cGNvmo036936sFzixqEENI7uE/N7bx+2/4PtVcSHWj8vT9x7wkpjVilyj4H3fxZ+DAbZcI
	iR6+RzgvurHIaHzZOnkk7PRC/O5Iec1EzfVnNOBpJv2wAuLlio7UBWOwdPZ6TFmIXhRSBujWTbofm
	n0lD3caE01wHi9M+H3Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkity-0001cC-Su; Mon, 15 Jun 2020 06:47:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkitl-0001aU-IG
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 06:47:15 +0000
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E49B2067B;
 Mon, 15 Jun 2020 06:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592203632;
 bh=fv0MzJ8bIKCwSrIThq9x0hNnlzQ27eGxPFmXO+dIS00=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hzwv+xEXH5jb9Hia7ucOdQ5hRa/40+9UQBu1bs8agR2EBLgoAOHNadiHf4lOkLjOp
 bynK+1U49kBQ4et91TbnzHpT3uaeIx1IPJUurjfaKrwA6m/YlO3Dh6keJahgaZDEis
 US0EwvYWYmZ+1G89Kuiqo5T9Gb6tDcR3EuCHeJcs=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jkith-009nmv-RU; Mon, 15 Jun 2020 08:47:09 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 14/29] dt: Fix broken references to renamed docs
Date: Mon, 15 Jun 2020 08:46:53 +0200
Message-Id: <6866c0d6d10ce36bb151c2d3752a20eb5122c532.1592203542.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1592203542.git.mchehab+huawei@kernel.org>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_234713_644647_BC827DA5 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 linux-spi@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29tZSBmaWxlcyBnb3QgcmVuYW1lZC4gVGhvc2Ugd2VyZSBhbGwgZml4ZWQgYXV0b21hdGljYWxs
eSBieQoKCS4vc2NyaXB0cy9kb2N1bWVudGF0aW9uLWZpbGUtcmVmLWNoZWNrIC0tZml4CgpTaWdu
ZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5v
cmc+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mcmVlc2NhbGUv
ZnNsLHNjdS50eHQgICB8IDIgKy0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L2lteC9mc2wtaW14LWRybS50eHQgfCA0ICsrLS0KIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kaXNwbGF5L2lteC9sZGIudHh0ICAgICAgICAgfCA0ICsrLS0KIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvcWNvbSxzcGktZ2VuaS1xY29tLnR4dCAg
fCAyICstCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgNCArKy0tCiA1IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL2ZyZWVzY2FsZS9mc2wsc2N1LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vZnJlZXNjYWxlL2ZzbCxzY3UudHh0CmluZGV4IDcxNTA0NzQ0NDM5MS4u
MTBiODQ1OWU0OWY4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL2ZyZWVzY2FsZS9mc2wsc2N1LnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL2ZyZWVzY2FsZS9mc2wsc2N1LnR4dApAQCAtNDcsNyArNDcsNyBAQCBS
ZXF1aXJlZCBwcm9wZXJ0aWVzOgogCQkJICAmbHNpb19tdTEgMSAyCiAJCQkgICZsc2lvX211MSAx
IDMKIAkJCSAgJmxzaW9fbXUxIDMgMz47Ci0JCVNlZSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWFpbGJveC9mc2wsbXUudHh0CisJCVNlZSBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWFpbGJveC9mc2wsbXUueWFtbAogCQlmb3IgZGV0YWlsZWQgbWFpbGJveCBi
aW5kaW5nLgogCiBOb3RlOiBFYWNoIG11IHdoaWNoIHN1cHBvcnRzIGdlbmVyYWwgaW50ZXJydXB0
IHNob3VsZCBoYXZlIGFuIGFsaWFzIGNvcnJlY3RseQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvaW14L2ZzbC1pbXgtZHJtLnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2lteC9mc2wtaW14LWRybS50eHQK
aW5kZXggNWJmNzdmNmRkMTlkLi41YTk5NDkwYzE3YjkgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2lteC9mc2wtaW14LWRybS50eHQKKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvaW14L2ZzbC1pbXgtZHJt
LnR4dApAQCAtNjgsNyArNjgsNyBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogICBkYXRhc2hlZXQK
IC0gY2xvY2tzIDogcGhhbmRsZSB0byB0aGUgUFJFIGF4aSBjbG9jayBpbnB1dCwgYXMgZGVzY3Jp
YmVkCiAgIGluIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9jbG9jay1i
aW5kaW5ncy50eHQgYW5kCi0gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9j
ay9pbXg2cS1jbG9jay50eHQuCisgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9j
bG9jay9pbXg2cS1jbG9jay55YW1sLgogLSBjbG9jay1uYW1lczogc2hvdWxkIGJlICJheGkiCiAt
IGludGVycnVwdHM6IHNob3VsZCBjb250YWluIHRoZSBQUkUgaW50ZXJydXB0CiAtIGZzbCxpcmFt
OiBwaGFuZGxlIHBvaW50aW5nIHRvIHRoZSBtbWlvLXNyYW0gZGV2aWNlIG5vZGUsIHRoYXQgc2hv
dWxkIGJlCkBAIC05NCw3ICs5NCw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAgIGRhdGFzaGVl
dAogLSBjbG9ja3MgOiBwaGFuZGxlcyB0byB0aGUgUFJHIGlwZyBhbmQgYXhpIGNsb2NrIGlucHV0
cywgYXMgZGVzY3JpYmVkCiAgIGluIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9j
bG9jay9jbG9jay1iaW5kaW5ncy50eHQgYW5kCi0gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9jbG9jay9pbXg2cS1jbG9jay50eHQuCisgIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9jbG9jay9pbXg2cS1jbG9jay55YW1sLgogLSBjbG9jay1uYW1lczogc2hvdWxk
IGJlICJpcGciIGFuZCAiYXhpIgogLSBmc2wscHJlczogcGhhbmRsZXMgdG8gdGhlIFBSRSB1bml0
cyBhdHRhY2hlZCB0byB0aGlzIFBSRywgd2l0aCB0aGUgZml4ZWQKICAgUFJFIGFzIHRoZSBmaXJz
dCBlbnRyeSBhbmQgdGhlIG11eGFibGUgUFJFcyBmb2xsb3dpbmcuCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9pbXgvbGRiLnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2lteC9sZGIudHh0CmluZGV4IDM4
YzYzN2ZhMzlkZC4uOGU2ZTdkNzk3OTQzIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9pbXgvbGRiLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9pbXgvbGRiLnR4dApAQCAtMzAsOCArMzAsOCBAQCBS
ZXF1aXJlZCBwcm9wZXJ0aWVzOgogICAgICAgICAgICAgICAgICJkaTJfc2VsIiAtIElQVTIgREkw
IG11eAogICAgICAgICAgICAgICAgICJkaTNfc2VsIiAtIElQVTIgREkxIG11eAogICAgICAgICBU
aGUgbmVlZGVkIGNsb2NrIG51bWJlcnMgZm9yIGVhY2ggYXJlIGRvY3VtZW50ZWQgaW4KLSAgICAg
ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2lteDUtY2xvY2sudHh0
LCBhbmQgaW4KLSAgICAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2Nr
L2lteDZxLWNsb2NrLnR4dC4KKyAgICAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Nsb2NrL2lteDUtY2xvY2sueWFtbCwgYW5kIGluCisgICAgICAgIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9pbXg2cS1jbG9jay55YW1sLgogCiBPcHRpb25hbCBw
cm9wZXJ0aWVzOgogIC0gcGluY3RybC1uYW1lcyA6IHNob3VsZCBiZSAiZGVmYXVsdCIgb24gaS5N
WDUzLCBub3QgdXNlZCBvbiBpLk1YNnEKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zcGkvcWNvbSxzcGktZ2VuaS1xY29tLnR4dCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvcWNvbSxzcGktZ2VuaS1xY29tLnR4dAppbmRleCA3OTAz
MTFhNDJiZjEuLmM4YzFlOTEzZjRlNyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NwaS9xY29tLHNwaS1nZW5pLXFjb20udHh0CisrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvcWNvbSxzcGktZ2VuaS1xY29tLnR4dApAQCAtMTks
NyArMTksNyBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogCiBTUEkgQ29udHJvbGxlciBub2RlcyBt
dXN0IGJlIGNoaWxkIG9mIEdFTkkgYmFzZWQgUXVhbGNvbW0gVW5pdmVyc2FsCiBQZXJpcGhhcmFs
LiBQbGVhc2UgcmVmZXIgR0VOSSBiYXNlZCBRVVAgd3JhcHBlciBjb250cm9sbGVyIG5vZGUgYmlu
ZGluZ3MKLWRlc2NyaWJlZCBpbiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29j
L3Fjb20vcWNvbSxnZW5pLXNlLnR4dC4KK2Rlc2NyaWJlZCBpbiBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc29jL3Fjb20vcWNvbSxnZW5pLXNlLnlhbWwuCiAKIFNQSSBzbGF2ZSBu
b2RlcyBtdXN0IGJlIGNoaWxkcmVuIG9mIHRoZSBTUEkgbWFzdGVyIG5vZGUgYW5kIGNvbmZvcm0g
dG8gU1BJIGJ1cwogYmluZGluZyBhcyBkZXNjcmliZWQgaW4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NwaS9zcGktYnVzLnR4dC4KZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIv
TUFJTlRBSU5FUlMKaW5kZXggMDYxN2RkNjcxYzJkLi40NTI5MDRkNzUyMjggMTAwNjQ0Ci0tLSBh
L01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xNDU2MSw4ICsxNDU2MSw4IEBAIFJF
TkVTQVMgUi1DQVIgVEhFUk1BTCBEUklWRVJTCiBNOglOaWtsYXMgU8O2ZGVybHVuZCA8bmlrbGFz
LnNvZGVybHVuZEByYWduYXRlY2guc2U+CiBMOglsaW51eC1yZW5lc2FzLXNvY0B2Z2VyLmtlcm5l
bC5vcmcKIFM6CVN1cHBvcnRlZAotRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3RoZXJtYWwvcmNhci1nZW4zLXRoZXJtYWwudHh0Ci1GOglEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdGhlcm1hbC9yY2FyLXRoZXJtYWwudHh0CitGOglEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yY2FyLWdlbjMtdGhlcm1hbC55YW1sCitGOglEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yY2FyLXRoZXJtYWwueWFtbAog
RjoJZHJpdmVycy90aGVybWFsL3JjYXJfZ2VuM190aGVybWFsLmMKIEY6CWRyaXZlcnMvdGhlcm1h
bC9yY2FyX3RoZXJtYWwuYwogCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
