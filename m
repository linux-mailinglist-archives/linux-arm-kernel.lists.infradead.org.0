Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EE912166
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap+Z8bX2i1SlYgY/aVgxRqJsR6RqDV+9W1xI4EOQcBk=; b=AHEFpyB1gxrBML
	pAcw+TbU3daLg4kDn7pCv6eMjHyQHO3gVFvmYhRivdREbOBal4ddo2uL/2w/XHuAwrZSxtklL+tPO
	TL6mtje7Pp6eLzyiLdCu3lmuXkGRE54Qg3GyCNSBTa5FSHH3w2fWZM65OzL8xlJ9W1AFIC53SwWzH
	sS2w7pSSyUKd1b+xcB2KSbAGbf74bWWIj4SGIPHNEWwrYB5V4M7Xcak3CEfV8x0TVqSB5kBcRFula
	fM5cET9GD2SLrlzj7ywxl7DM5O7WkafMrLIEjHZc40IjNVU8t7uQaZKY54kEYzi1bUKHBYCFdR/JA
	upOqxwyqo9u1KBQIEvQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFyY-0002CH-PX; Thu, 02 May 2019 17:58:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFyR-0002Aa-3c; Thu, 02 May 2019 17:58:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id 8C7A428422A
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lin Huang <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Derek Basehore <dbasehore@chromium.org>, Randy Li <ayaka@soulik.info>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v5 1/6] devfreq: rockchip-dfi: Move GRF definitions to a
 common place.
Date: Thu,  2 May 2019 13:58:15 -0400
Message-Id: <20190502175820.25382-2-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502175820.25382-1-gael.portay@collabora.com>
References: <20190502175820.25382-1-gael.portay@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_105823_412572_18226E45 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNv
bT4KClNvbWUgcmszMzk5IEdSRiAoR2VuZXJpYyBSZWdpc3RlciBGaWxlcykgZGVmaW5pdGlvbnMg
Y2FuIGJlIHVzZWQgZm9yCmRpZmZlcmVudCBkcml2ZXJzLiBNb3ZlIHRoZXNlIGRlZmluaXRpb25z
IHRvIGEgY29tbW9uIGluY2x1ZGUgc28gd2UKZG9uJ3QgbmVlZCB0byBkdXBsaWNhdGUgdGhlc2Ug
ZGVmaW5pdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJp
Yy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgpBY2tlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNo
b2lAc2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6IEdhw6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlA
Y29sbGFib3JhLmNvbT4KQWNrZWQtYnk6IE15dW5nSm9vIEhhbSA8bXl1bmdqb28uaGFtQHNhbXN1
bmcuY29tPgotLS0KCkNoYW5nZXMgaW4gdjU6IE5vbmUKCkNoYW5nZXMgaW4gdjQ6Ci0gW1BBVENI
IHYzIDEvNV0gQWRkIEFja2VkLWJ5OiBNeXVuZ0pvbyBIYW0gPG15dW5nam9vLmhhbUBzYW1zdW5n
LmNvbT4uCgpDaGFuZ2VzIGluIHYzOgotIFtQQVRDSCB2MiAxLzVdIEFkZCBTaWduZWQtb2ZmLWJ5
OiBHYcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QGNvbGxhYm9yYS5jb20+LgoKQ2hhbmdlcyBpbiB2
MjoKLSBbUEFUQ0ggMS84XSBSZWFsbHkgYWRkIEFja2VkLWJ5OiBDaGFud29vIENob2kgPGN3MDAu
Y2hvaUBzYW1zdW5nLmNvbT4uCgpDaGFuZ2VzIGluIHYxOgotIFtSRkMgMS8xMF0gQWRkIEFja2Vk
LWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KLSBbUkZDIDEvMTBdIHMv
R2VuZXJpYy9HZW5lcmFsLyAoUm9iaW4gTXVycGh5KQotIFtSRkMgNC8xMF0gUmVtb3ZlZCBmcm9t
IHRoZSBzZXJpZXMuIEkgZGlkIG5vdCBmb3VuZCBhIHVzZSBjYXNlIHdoZXJlIG5vdCBob2xkaW5n
IHRoZSBtdXRleCBjYXVzZXMgdGhlIGlzc3VlLgotIFtSRkMgNy8xMF0gUmVtb3ZlZCBmcm9tIHRo
ZSBzZXJpZXMuIEkgZGlkIG5vdCBmb3VuZCBhIHVzZSBjYXNlIHdoZXJlIHRoaXMgbWF0dGVycy4K
CiBkcml2ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAtZGZpLmMgfCAyMyArKysrKysrLS0tLS0t
LS0tLS0tLS0tLQogaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcmszMzk5X2dyZi5oICAgIHwgMjEgKysr
KysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvc29jL3JvY2tjaGlwL3Jr
MzM5OV9ncmYuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1k
ZmkuYyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYwppbmRleCAyMmIxMTMz
NjNmZmMuLjJmYmJjYmViNjQ0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V2ZW50L3Jv
Y2tjaGlwLWRmaS5jCisrKyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYwpA
QCAtMjYsNiArMjYsOCBAQAogI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KICNpbmNsdWRlIDxsaW51
eC9vZi5oPgogCisjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3JrMzM5OV9ncmYuaD4KKwogI2RlZmlu
ZSBSSzMzOTlfRE1DX05VTV9DSAkyCiAKIC8qIEREUk1PTl9DVFJMICovCkBAIC00MywxOCArNDUs
NiBAQAogI2RlZmluZSBERFJNT05fQ0gxX0NPVU5UX05VTQkJMHgzYwogI2RlZmluZSBERFJNT05f
Q0gxX0RGSV9BQ0NFU1NfTlVNCTB4NDAKIAotLyogcG11IGdyZiAqLwotI2RlZmluZSBQTVVHUkZf
T1NfUkVHMgkweDMwOAotI2RlZmluZSBERFJUWVBFX1NISUZUCTEzCi0jZGVmaW5lIEREUlRZUEVf
TUFTSwk3Ci0KLWVudW0gewotCUREUjMgPSAzLAotCUxQRERSMyA9IDYsCi0JTFBERFI0ID0gNywK
LQlVTlVTRUQgPSAweEZGCi19OwotCiBzdHJ1Y3QgZG1jX3VzYWdlIHsKIAl1MzIgYWNjZXNzOwog
CXUzMiB0b3RhbDsKQEAgLTgzLDE2ICs3MywxNyBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kZmlf
c3RhcnRfaGFyZHdhcmVfY291bnRlcihzdHJ1Y3QgZGV2ZnJlcV9ldmVudF9kZXYgKmVkZXYpCiAJ
dTMyIGRkcl90eXBlOwogCiAJLyogZ2V0IGRkciB0eXBlICovCi0JcmVnbWFwX3JlYWQoaW5mby0+
cmVnbWFwX3BtdSwgUE1VR1JGX09TX1JFRzIsICZ2YWwpOwotCWRkcl90eXBlID0gKHZhbCA+PiBE
RFJUWVBFX1NISUZUKSAmIEREUlRZUEVfTUFTSzsKKwlyZWdtYXBfcmVhZChpbmZvLT5yZWdtYXBf
cG11LCBSSzMzOTlfUE1VR1JGX09TX1JFRzIsICZ2YWwpOworCWRkcl90eXBlID0gKHZhbCA+PiBS
SzMzOTlfUE1VR1JGX0REUlRZUEVfU0hJRlQpICYKKwkJICAgIFJLMzM5OV9QTVVHUkZfRERSVFlQ
RV9NQVNLOwogCiAJLyogY2xlYXIgRERSTU9OX0NUUkwgc2V0dGluZyAqLwogCXdyaXRlbF9yZWxh
eGVkKENMUl9ERFJNT05fQ1RSTCwgZGZpX3JlZ3MgKyBERFJNT05fQ1RSTCk7CiAKIAkvKiBzZXQg
ZGRyIHR5cGUgdG8gZGZpICovCi0JaWYgKGRkcl90eXBlID09IExQRERSMykKKwlpZiAoZGRyX3R5
cGUgPT0gUkszMzk5X1BNVUdSRl9ERFJUWVBFX0xQRERSMykKIAkJd3JpdGVsX3JlbGF4ZWQoTFBE
RFIzX0VOLCBkZmlfcmVncyArIEREUk1PTl9DVFJMKTsKLQllbHNlIGlmIChkZHJfdHlwZSA9PSBM
UEREUjQpCisJZWxzZSBpZiAoZGRyX3R5cGUgPT0gUkszMzk5X1BNVUdSRl9ERFJUWVBFX0xQRERS
NCkKIAkJd3JpdGVsX3JlbGF4ZWQoTFBERFI0X0VOLCBkZmlfcmVncyArIEREUk1PTl9DVFJMKTsK
IAogCS8qIGVuYWJsZSBjb3VudCwgdXNlIHNvZnR3YXJlIG1vZGUgKi8KZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvc29jL3JvY2tjaGlwL3JrMzM5OV9ncmYuaCBiL2luY2x1ZGUvc29jL3JvY2tjaGlwL3Jr
MzM5OV9ncmYuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjNlZWJh
YmNiMjgxMgotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUvc29jL3JvY2tjaGlwL3JrMzM5OV9n
cmYuaApAQCAtMCwwICsxLDIxIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MCsgKi8KKy8qCisgKiBSb2NrY2hpcCBHZW5lcmFsIFJlZ2lzdGVyIEZpbGVzIGRlZmluaXRpb25z
CisgKgorICogQ29weXJpZ2h0IChjKSAyMDE4LCBDb2xsYWJvcmEgTHRkLgorICogQXV0aG9yOiBF
bnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgorICov
CisKKyNpZm5kZWYgX19TT0NfUkszMzk5X0dSRl9ICisjZGVmaW5lIF9fU09DX1JLMzM5OV9HUkZf
SAorCisvKiBQTVUgR1JGIFJlZ2lzdGVycyAqLworI2RlZmluZSBSSzMzOTlfUE1VR1JGX09TX1JF
RzIJCTB4MzA4CisjZGVmaW5lIFJLMzM5OV9QTVVHUkZfRERSVFlQRV9TSElGVAkxMworI2RlZmlu
ZSBSSzMzOTlfUE1VR1JGX0REUlRZUEVfTUFTSwk3CisjZGVmaW5lIFJLMzM5OV9QTVVHUkZfRERS
VFlQRV9ERFIzCTMKKyNkZWZpbmUgUkszMzk5X1BNVUdSRl9ERFJUWVBFX0xQRERSMgk1CisjZGVm
aW5lIFJLMzM5OV9QTVVHUkZfRERSVFlQRV9MUEREUjMJNgorI2RlZmluZSBSSzMzOTlfUE1VR1JG
X0REUlRZUEVfTFBERFI0CTcKKworI2VuZGlmCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
