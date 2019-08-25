Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FBF9C541
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 19:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtaxfXDFuGO7KVwpSoEpZkJ1LWbPWwOLtmbZm8eq6ho=; b=BnMVyUTlQVRQzh
	knlRcQer7hstgG5l+IGTXPFgMe7sElDRGdg1YQu/P6mMFMvN6+BCjk9L7n7IVJB8IfRk1j6Z3xE9g
	FKscnjUXbEWZAEUcxTOp/yjYTmVMoGF7tHL875HVG6ygUEbsB89QYlVbJYiLIbVwj6/fuKxgPOwNr
	ZFl5uqS46nVbbrvfYJScAAV9zd6F5jUs+E+H2E8bciMYsj3Jc25s0rbLCrG5zZU2lpDXCebDBXvzc
	EcfCpmK0Xi0qOLvT2JFRwT0lKpDamDASfXi96PQCSas+MtV0/Ac5ZcQxqWdllI/avCaWY8MZVVdhm
	rIAcuzzU8b1RaEavJdRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1wZ2-0006xx-7E; Sun, 25 Aug 2019 17:44:28 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1wYY-0006iH-3V; Sun, 25 Aug 2019 17:44:00 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 5BA3E5FD28;
 Sun, 25 Aug 2019 19:43:55 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="nro0kzTL"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 1FFD71D8E168;
 Sun, 25 Aug 2019 19:43:55 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 1FFD71D8E168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566755035;
 bh=6lat4PIPVb1cltboLCPg5/gDn73phY2LzDM8oNuT0Ao=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nro0kzTLs7e2U41CqK11e9uw/2xPpBR6Jjz8+4Gy4czDwpbnP1ZdVdilnLHkeHags
 MJ1ZnbghbRGVjntOFriY22pAsP0TnchYwwU4tgqtAFBIk6A+wZZJilXR4eRr3Ii75y
 ovjKiQCmdHk19S5xjxLTk3ke3L4dD1rMVlGuULzlCpwVPBCD93isymHA2Lx7gFclsv
 R4NGXUTX39J1IdzCWHC4RNcbFq5aP1EIFIoX9jgLqdgA6WKgMJim6IKQ3vpnnhGZb7
 yftwEGwFfj1/iBZ1WdFthOwjnYQ052rb+y0NayqmGtos/Eaw9ZJaW9u3YSDHwBuTCa
 YS2ukcEQYA/1Q==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v4 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
Date: Sun, 25 Aug 2019 19:43:41 +0200
Message-Id: <20190825174341.20750-4-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190825174341.20750-1-opensource@vdorst.com>
References: <20190825174341.20750-1-opensource@vdorst.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_104358_435423_171992E5 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCB0aGUgcmVtb3ZlcyB0aGUgcmVjZW50bHkgYWRkZWQgbWVkaWF0ZWsscGh5c3Bl
ZWQgcHJvcGVydHkuClVzZSB0aGUgZml4ZWQtbGluayBwcm9wZXJ0eSBzcGVlZCA9IDwyNTAwPiB0
byBzZXQgdGhlIHBoeSBpbiAyLjVHYml0LgpTZWUgbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRz
IGZvciBhIHdvcmtpbmcgZXhhbXBsZS4KClNpZ25lZC1vZmYtYnk6IFJlbsOpIHZhbiBEb3JzdCA8
b3BlbnNvdXJjZUB2ZG9yc3QuY29tPgotLQp2My0+djQ6Ciogbm8gY2hhbmdlCnYyLT52MzoKKiBu
byBjaGFuZ2UKdjEtPnYyOgoqIFNHTUlJIHBvcnQgb25seSBzdXBwb3J0IEJBU0UtWCBhdCAyLjVH
Yml0LgotLS0KIC4uLi9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMudHh0ICAgICAgICB8
ICAyIC0tCiAuLi4vZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0cyAgfCAy
OCArKysrKysrKysrKysrLS0tLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYy
Mi5kdHNpICAgICAgfCAgMSAtCiAzIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDEy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMudHh0IGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tZWRpYXRlay9tZWRpYXRlayxzZ21paXN5cy50eHQKaW5k
ZXggZjU1MThmMjZhOTE0Li4zMGNiNjQ1YzBlNTQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssc2dtaWlzeXMudHh0Cisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0
ZWssc2dtaWlzeXMudHh0CkBAIC05LDggKzksNiBAQCBSZXF1aXJlZCBQcm9wZXJ0aWVzOgogCS0g
Im1lZGlhdGVrLG10NzYyMi1zZ21paXN5cyIsICJzeXNjb24iCiAJLSAibWVkaWF0ZWssbXQ3NjI5
LXNnbWlpc3lzIiwgInN5c2NvbiIKIC0gI2Nsb2NrLWNlbGxzOiBNdXN0IGJlIDEKLS0gbWVkaWF0
ZWsscGh5c3BlZWQ6IFNob3VsZCBiZSBvbmUgb2YgImF1dG8iLCAiMTAwMCIgb3IgIjI1MDAiIHRv
IG1hdGNoIHVwCi0JCSAgICAgdGhlIGNhcGFiaWxpdHkgb2YgdGhlIHRhcmdldCBQSFkuCiAKIFRo
ZSBTR01JSVNZUyBjb250cm9sbGVyIHVzZXMgdGhlIGNvbW1vbiBjbGsgYmluZGluZyBmcm9tCiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svY2xvY2stYmluZGluZ3MudHh0
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFw
aS1icGktcjY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLWJhbmFu
YXBpLWJwaS1yNjQuZHRzCmluZGV4IDcxMGM1YzNkODdkMy4uODNlMTA1OTFlMGU1IDEwMDY0NAot
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1icGktcjY0
LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi1iYW5hbmFwaS1i
cGktcjY0LmR0cwpAQCAtMTE1LDI0ICsxMTUsMzQgQEAKIH07CiAKICZldGggewotCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Ci0JcGluY3RybC0wID0gPCZldGhfcGlucz47CiAJc3RhdHVzID0g
Im9rYXkiOworCWdtYWMwOiBtYWNAMCB7CisJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssZXRoLW1h
YyI7CisJCXJlZyA9IDwwPjsKKwkJcGh5LW1vZGUgPSAiMjUwMGJhc2UteCI7CisKKwkJZml4ZWQt
bGluayB7CisJCQlzcGVlZCA9IDwyNTAwPjsKKwkJCWZ1bGwtZHVwbGV4OworCQkJcGF1c2U7CisJ
CX07CisJfTsKIAogCWdtYWMxOiBtYWNAMSB7CiAJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssZXRo
LW1hYyI7CiAJCXJlZyA9IDwxPjsKLQkJcGh5LWhhbmRsZSA9IDwmcGh5NT47CisJCXBoeS1tb2Rl
ID0gInJnbWlpIjsKKworCQlmaXhlZC1saW5rIHsKKwkJCXNwZWVkID0gPDEwMDA+OworCQkJZnVs
bC1kdXBsZXg7CisJCQlwYXVzZTsKKwkJfTsKIAl9OwogCi0JbWRpby1idXMgeworCW1kaW86IG1k
aW8tYnVzIHsKIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJCSNzaXplLWNlbGxzID0gPDA+Owot
Ci0JCXBoeTU6IGV0aGVybmV0LXBoeUA1IHsKLQkJCXJlZyA9IDw1PjsKLQkJCXBoeS1tb2RlID0g
InNnbWlpIjsKLQkJfTsKIAl9OwogfTsKIApkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDc2MjIuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3
NjIyLmR0c2kKaW5kZXggZDFlMTNkMzQwZTI2Li5kYWM1MWU5ODIwNGMgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLmR0c2kKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaQpAQCAtOTMxLDYgKzkzMSw1IEBACiAJCQkgICAg
ICJzeXNjb24iOwogCQlyZWcgPSA8MCAweDFiMTI4MDAwIDAgMHgzMDAwPjsKIAkJI2Nsb2NrLWNl
bGxzID0gPDE+OwotCQltZWRpYXRlayxwaHlzcGVlZCA9ICIyNTAwIjsKIAl9OwogfTsKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
