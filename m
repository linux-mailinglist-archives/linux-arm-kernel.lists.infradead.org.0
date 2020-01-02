Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FE912EB7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H3mHLNG/BcYVCkytEqD5JFbdMBmV/HKztgQxJEkVJ98=; b=SI6eC1MclcXIn3
	2jTUf5M4J8F4RxgbkMWIvxXR3D/yNV83jDRa4oLAwp3j6n1AKEiojAyuihfMfwx7DUWlPw3IMIm5l
	5BbeHw5DnIojF0TEspH+PGA8yAekBJZm6HtLkBhReO3j2PpJecUVdH9ntLUC5gBbxEeN++zGSZ+T1
	WQgj17eLdyKLERpxptZ/efW+9XuJlauXNt7fG4J/htcyEU24Wp+ViAUZrBwdQFdSV7QukIOBh+BkZ
	YqYG8Khf8ICCl+yQIc2Rz4Z79H4UIzgiHYdkSep7cuQZg4XV3pDCgE1KKv2ij/rnUAN3nBJqa2Ma7
	zKnvs0aq3mxdYljpiXiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in8FU-0008Jz-O3; Thu, 02 Jan 2020 21:43:20 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in8FM-0008JD-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:43:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1578001390;
 s=strato-dkim-0002; d=dawncrow.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=hKRL96bIhcBPbL4+CJ/FLns1GcJoYVkm0E4YP/w84Jw=;
 b=jOXzZNU3zeq3sYw3BO0TDurb3tu0937OMEOrKvfCzoo0hD8fQB7b5h2PDGxKzzmmud
 vd/lASMnj8TpWEouCNjuNS4Ke8nRwgkMU1qXM64NmPElshMUWR6Q5mtzknNnGpqv7n/O
 s7LobMtOmq+1YHZBkco+rCQ0bWzSrhPji25kyi2nBKPYTkg2xixvM357PUC+tPFdV7xG
 TwCm2hAo000zqRvteabaWG8DI1kDuyvtCbQQwfHwkRH2SUWdnsjeMJ3BeyNaMOobw1h8
 2wTJn2/gwCzFAIf0Erj/D7+7KOQ6ERC/dQfrHigFgtGvxxAWEI3rEGnJCrWkfa+Vsfog
 L3qA==
X-RZG-AUTH: ":ImkWY2CseuihIZy6ZWWciR6unPhpN+aXzZGGjY6ptdusOaLnXzn3ovD+FrFdXyk="
X-RZG-CLASS-ID: mo00
Received: from tesla.fritz.box by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id I099d1w02Lh8LOI
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 2 Jan 2020 22:43:08 +0100 (CET)
From: =?UTF-8?q?Andr=C3=A9=20Hentschel?= <nerv@dawncrow.de>
To: linux@arm.linux.org.uk, robh+dt@kernel.org, mark.rutland@arm.com,
 bcousson@baylibre.com, tony@atomide.com, linux-omap@vger.kernel.org
Subject: [PATCH v3 1/2] ARM: dts: Add dtsi files for AM3703, AM3715 and DM3725
Date: Thu,  2 Jan 2020 22:43:03 +0100
Message-Id: <20200102214304.8225-1-nerv@dawncrow.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_134312_863256_100EDD65 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RE0zNzMwIGlzIGNvbnNpZGVyZWQgYXMgb21hcDM2eHguZHRzaSwgd2hpbGUgdGhlIHJlc3QgaGFz
OgogICAgIERNMzczMCB8IERNMzcyNSB8IEFNMzcxNSB8IEFNMzcwMwpJVkEgICAgWCAgICB8ICAg
WCAgICB8ICAgICAgICB8ICAgICAgIApTR1ggICAgWCAgICB8ICAgICAgICB8ICAgWCAgICB8ICAg
ICAgIApXaGVyZSBYIGlzICJzdXBwb3J0ZWQiCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgSGVudHNj
aGVsIDxuZXJ2QGRhd25jcm93LmRlPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2FtMzcwMy5kdHNp
IHwgMTQgKysrKysrKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL2FtMzcxNS5kdHNpIHwgMTAg
KysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvZG0zNzI1LmR0c2kgfCAxMCArKysrKysrKysr
CiAzIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9ib290L2R0cy9hbTM3MDMuZHRzaQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
L2Jvb3QvZHRzL2FtMzcxNS5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9k
dHMvZG0zNzI1LmR0c2kKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9hbTM3MDMuZHRz
aSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FtMzcwMy5kdHNpCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uMmI5OTRhZTc5MGM5Ci0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvYW0zNzAzLmR0c2kKQEAgLTAsMCArMSwxNCBAQAorLy8gU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQorLyoKKyAqIENvcHlyaWdodCAoQykgMjAyMCBBbmRy
w6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPgorICovCisKKyNpbmNsdWRlICJvbWFwMzZ4
eC5kdHNpIgorCismaXZhIHsKKwlzdGF0dXMgPSAiZGlzYWJsZWQiOworfTsKKworJnNneF9tb2R1
bGUgeworCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvYW0zNzE1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9hbTM3MTUuZHRzaQpuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmFiMzI4ZThjMGJkOAotLS0gL2Rldi9u
dWxsCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FtMzcxNS5kdHNpCkBAIC0wLDAgKzEsMTAgQEAK
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8qCisgKiBDb3B5cmln
aHQgKEMpIDIwMjAgQW5kcsOpIEhlbnRzY2hlbCA8bmVydkBkYXduY3Jvdy5kZT4KKyAqLworCisj
aW5jbHVkZSAib21hcDM2eHguZHRzaSIKKworJml2YSB7CisJc3RhdHVzID0gImRpc2FibGVkIjsK
K307CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9kbTM3MjUuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2RtMzcyNS5kdHNpCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAw
MDAwMC4uZDI0ZTkwNmExNGIxCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
ZG0zNzI1LmR0c2kKQEAgLTAsMCArMSwxMCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seQorLyoKKyAqIENvcHlyaWdodCAoQykgMjAyMCBBbmRyw6kgSGVudHNjaGVs
IDxuZXJ2QGRhd25jcm93LmRlPgorICovCisKKyNpbmNsdWRlICJvbWFwMzZ4eC5kdHNpIgorCism
c2d4X21vZHVsZSB7CisJc3RhdHVzID0gImRpc2FibGVkIjsKK307Ci0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
