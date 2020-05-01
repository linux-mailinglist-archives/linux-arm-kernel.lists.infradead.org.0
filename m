Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5A31C0F94
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd+NnI65dXGH2Lc04/b5RlbNGZLLYKwrxH6lIL6VG8s=; b=eznfq71t2e7FA0
	ewAOiYLADb57SaCyGVxD86CyGoxb2gZ6IIarwj0aMdW5/l9MquAyiQuCXNCqO9hLEcNLSwN6FWajF
	tErZzdZdAKv/RoZjZLTd+iPTZwtIysJMqhn60jikS+IMgTkugiV4pCgYCwRDuP1+hOb5ZZ6ssCqvu
	adK8pyXNWGgQq6uMl2Cv45UOzwGOHJnDtLrQVEWNt14WRzsM7RfWzN7tx/MRAsHBEDsn06/YS80kw
	i8qddXeQgoqRc21JHyqXD4FYeeZFWufRKYmODFM5KRRj3LAaM5uWpo22HLp7SHoeGGB2fU09I1Upp
	1n+He/kyvlCUFQsF+YBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUR7G-0007z1-O1; Fri, 01 May 2020 08:33:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUR6l-0007aE-5s
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:33:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 573952A2D1C
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [RFT PATCH 2/5] ARM: dts: wheat: reorder reg and reg-names properties
 in hdmi bridges
Date: Fri,  1 May 2020 10:32:24 +0200
Message-Id: <20200501083227.10886-3-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_013319_343573_C5D3FBCD 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVvcmRlciB0aGUgSTJDIHNsYXZlIGFkZHJlc3NlcyBvZiBoZG1pQDNkIGFuZCBoZG1pQDM5IHRv
IG1ha2UgdGhlbQpjb21wbGlhbnQgd2l0aCB0aGUgYWRpLGFkdjc1MTMgRFQgYmluZGluZy4KClNp
Z25lZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEu
Y29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTItd2hlYXQuZHRzIHwgOCArKysrLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yOGE3NzkyLXdoZWF0LmR0cyBiL2FyY2gvYXJtL2Jv
b3QvZHRzL3I4YTc3OTItd2hlYXQuZHRzCmluZGV4IGJkMmE2M2JkYWIzZC4uZjNjNzA3MmZlMDNm
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yOGE3NzkyLXdoZWF0LmR0cworKysgYi9h
cmNoL2FybS9ib290L2R0cy9yOGE3NzkyLXdoZWF0LmR0cwpAQCAtMjQ5LDggKzI0OSw4IEBACiAJ
ICovCiAJaGRtaUAzZCB7CiAJCWNvbXBhdGlibGUgPSAiYWRpLGFkdjc1MTMiOwotCQlyZWcgPSA8
MHgzZD4sIDwweDJkPiwgPDB4NGQ+LCA8MHg1ZD47Ci0JCXJlZy1uYW1lcyA9ICJtYWluIiwgImNl
YyIsICJlZGlkIiwgInBhY2tldCI7CisJCXJlZyA9IDwweDNkPiwgPDB4NGQ+LCA8MHgyZD4sIDww
eDVkPjsKKwkJcmVnLW5hbWVzID0gIm1haW4iLCAiZWRpZCIsICJjZWMiLCAicGFja2V0IjsKIAog
CQlhZGksaW5wdXQtZGVwdGggPSA8OD47CiAJCWFkaSxpbnB1dC1jb2xvcnNwYWNlID0gInJnYiI7
CkBAIC0yODAsOCArMjgwLDggQEAKIAogCWhkbWlAMzkgewogCQljb21wYXRpYmxlID0gImFkaSxh
ZHY3NTEzIjsKLQkJcmVnID0gPDB4Mzk+LCA8MHgyOT4sIDwweDQ5PiwgPDB4NTk+OwotCQlyZWct
bmFtZXMgPSAibWFpbiIsICJjZWMiLCAiZWRpZCIsICJwYWNrZXQiOworCQlyZWcgPSA8MHgzOT4s
IDwweDQ5PiwgPDB4Mjk+LCA8MHg1OT47CisJCXJlZy1uYW1lcyA9ICJtYWluIiwgImVkaWQiLCAi
Y2VjIiwgInBhY2tldCI7CiAKIAkJYWRpLGlucHV0LWRlcHRoID0gPDg+OwogCQlhZGksaW5wdXQt
Y29sb3JzcGFjZSA9ICJyZ2IiOwotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
