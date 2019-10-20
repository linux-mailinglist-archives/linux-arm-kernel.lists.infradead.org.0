Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33D0DDC50
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XuTLIfrQr5BvT3qEO4cEpLGNXV8VD10Pi/erfs7SZo=; b=eZvFFMrmjgRK0V
	Y/yt0/+h3myRJl41NHfgpoX/jf85FL7q2CI9rSt2wRlHUgjDyqNAxpXNdSx4P47xew9o0Wfjodgyb
	HhQTBGnNiWUzINuETgM2dgqrjwWQPkS4I9uQEYZWvt71F2pTZJ4X42/lrJ/GMfz14BfyozDORCaBJ
	FtvdG8pwdX/YA1lHSeznxyavwfTHD5LQ+GrI0Bt/351pSpcDM1vVNwrTysIQfpxUXhql/wVxiRHPa
	LZ4qw01L54dU9F+ZKeNW/Y6Ku1Of0oyDxQdKz0MFfkQEMM7HVnID2gh2lTo1U61HWd8PbET0jMXSe
	B1tsCjMw+n44pBDgXF4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2XB-0003EG-DX; Sun, 20 Oct 2019 04:09:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W5-0002UJ-65; Sun, 20 Oct 2019 04:08:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 605AAACCA;
 Sun, 20 Oct 2019 04:08:26 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 2/8] dt-bindings: rtc: realtek: Convert RTD119x to schema
Date: Sun, 20 Oct 2019 06:08:11 +0200
Message-Id: <20191020040817.16882-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210829_385234_CAD3569B 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29udmVydCB0aGUgUlREMTE5eCBiaW5kaW5nIHRvIGEgWUFNTCBzY2hlbWEuCgpTaWduZWQtb2Zm
LWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjI6IE5ldwogCiAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4LnR4dCAgICB8IDE2IC0t
LS0tLS0tLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3JlYWx0ZWsscnRkMTE5eC55YW1s
ICAgfCAzOCArKysrKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDM4IGluc2Vy
dGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4LnR4dAogY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxy
dGQxMTl4LnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcnRjL3JlYWx0ZWsscnRkMTE5eC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcnRjL3JlYWx0ZWsscnRkMTE5eC50eHQKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IGJiZjFjY2I1ZGYzMS4uMDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4LnR4dAorKysgL2Rldi9udWxsCkBAIC0x
LDE2ICswLDAgQEAKLVJlYWx0ZWsgUlREMTI5eCBSZWFsLVRpbWUgQ2xvY2sKLT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KLQotUmVxdWlyZWQgcHJvcGVydGllczoKLS0gY29tcGF0aWJs
ZSA6ICBTaG91bGQgYmUgInJlYWx0ZWsscnRkMTI5NS1ydGMiCi0tIHJlZyAgICAgICAgOiAgU3Bl
Y2lmaWVzIHRoZSBwaHlzaWNhbCBiYXNlIGFkZHJlc3MgYW5kIHNpemUKLS0gY2xvY2tzICAgICA6
ICBTcGVjaWZpZXMgdGhlIGNsb2NrIGdhdGUKLQotCi1FeGFtcGxlOgotCi0JcnRjQDk4MDFiNjAw
IHsKLQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtY2xrIjsKLQkJcmVnID0gPDB4OTgw
MWI2MDAgMHgxMDA+OwotCQljbG9ja3MgPSA8JmNsa2MgUlREMTI5NV9DTEtfRU5fTUlTQ19SVEM+
OwotCX07CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcnRj
L3JlYWx0ZWsscnRkMTE5eC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3J0Yy9yZWFsdGVrLHJ0ZDExOXgueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAwMDAuLjcxYjczOTZiZDQ2OQotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4LnlhbWwKQEAgLTAsMCArMSwz
OCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciBPUiBCU0Qt
Mi1DbGF1c2UKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hl
bWFzL3J0Yy9yZWFsdGVrLHJ0ZDExOXgueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTogUmVhbHRlayBSVEQxMjl4IFJl
YWwtVGltZSBDbG9jaworCithbGxPZjoKKyAgLSAkcmVmOiAicnRjLnlhbWwjIgorCittYWludGFp
bmVyczoKKyAgLSBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+CisKK3Byb3BlcnRp
ZXM6CisgIGNvbXBhdGlibGU6CisgICAgY29uc3Q6IHJlYWx0ZWsscnRkMTI5NS1ydGMKKworICBy
ZWc6CisgICAgbWF4SXRlbXM6IDEKKworICBjbG9ja3M6CisgICAgbWF4SXRlbXM6IDEKKyAgICBk
ZXNjcmlwdGlvbjogU3BlY2lmaWVzIHRoZSBjbG9jayBnYXRlCisKK3JlcXVpcmVkOgorICAtIGNv
bXBhdGlibGUKKyAgLSByZWcKKyAgLSBjbG9ja3MKKworZXhhbXBsZXM6CisgIC0gfAorCXJ0Y0A5
ODAxYjYwMCB7CisJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LWNsayI7CisJCXJlZyA9
IDwweDk4MDFiNjAwIDB4MTAwPjsKKwkJY2xvY2tzID0gPCZjbGtjIFJURDEyOTVfQ0xLX0VOX01J
U0NfUlRDPjsKKwl9OworLi4uCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
