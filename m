Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35246B5FE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 14:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ScbgfdHBHHcKC4/iGjM83eGN479pU1gZPpJexoFKNtk=; b=AVFoiFhbfBxDZ1
	jo6GWl2puZoQcn3rlDarNW3Vyj5gVNyDZDcjcKUHfy//cbcnwd8XcGGeMQSg9qY0FwRPyE7cxti2b
	lzSHnZOqHEeg8rO2M4K2ghObIGo3rbDfKcpU+5agYgGg/4EW7Oa190QJ6ChJ8eOgwXLKK+VxfYHsX
	9bUz42j44PMIX1qS+B/59p9/lh33cUP/Mg2uumPIzPKuhhRvt5taYGofBD/bbGiruKwbKhJcdRC+M
	BzaO2yJKza8j2JZbsRfHSD2k+7SxglLGPlssqMVKFfNo8Y6V/DEhWGKCCwRQAKKTVDyl5HKQzAVRE
	HiQoideDLrhJW37umTkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKjJZ-0001rE-1K; Sun, 28 Apr 2019 12:53:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKjJR-0001q9-Cj; Sun, 28 Apr 2019 12:53:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4D2D44532;
 Sun, 28 Apr 2019 14:53:37 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c6257092;
 Sun, 28 Apr 2019 14:53:35 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 0/4] of_net: Add NVMEM support to of_get_mac_address
Date: Sun, 28 Apr 2019 14:53:18 +0200
Message-Id: <1556456002-13430-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_055345_735966_68E29574 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-mediatek@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Alban Bedel <albeu@free.fr>, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBpcyBhIGNvbnRpbnVhdGlvbiBvZiBteSBwcmV2aW91cyBh
dHRlbXB0WzFdLCB3aGVyZSBJJ3ZlCnRyaWVkIHRvIHdpcmUgTVREIGxheWVyIGludG8gb2ZfZ2V0
X21hY19hZGRyZXNzLCBzbyBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0bwpsb2FkIE1BQyBhZGRyZXNz
ZXMgZnJvbSB2YXJpb3VzIE5WTUVNcyBhcyBFRVBST01zIGV0Yy4KClByZWRlY2Vzc29yIG9mIHRo
aXMgcGF0Y2ggd2hpY2ggdXNlZCBkaXJlY3RseSBNVEQgbGF5ZXIgaGFzIG9yaWdpbmF0ZWQgaW4K
T3BlbldydCBzb21lIHRpbWUgYWdvIGFuZCBzdXBwb3J0cyBhbHJlYWR5IGFib3V0IDQ5NyB1c2Ug
Y2FzZXMgaW4gMzU3CmRldmljZSB0cmVlIGZpbGVzLgoKRHVyaW5nIHRoZSByZXZpZXcgcHJvY2Vz
cyBvZiBteSAxc3QgYXR0ZW1wdCBJIHdhcyB0b2xkLCB0aGF0IEkgc2hvdWxkbid0IGJlCnVzaW5n
IE1URCBkaXJlY3RseSwgYnV0IEkgc2hvdWxkIHJhdGhlciB1c2UgbmV3IE5WTUVNIHN1YnN5c3Rl
bSwgc28gdGhpcwpwYXRjaCBzZXJpZXMgdHJpZXMgdG8gYWNjb21tb2RhdGUgdGhhdC4KCkZpcnN0
IHBhdGNoIGlzIHdpcmluZyBOVk1FTSBzdXBwb3J0IGRpcmVjdGx5IGludG8gb2ZfZ2V0X21hY19h
ZGRyZXNzIGFzCml0J3Mgb2J2aW91cywgdGhhdCBhZGRpbmcgc3VwcG9ydCBmb3IgTlZNRU0gaW50
byBldmVyeSBvdGhlciBkcml2ZXIgd291bGQKbWVhbiBhZGRpbmcgYSBsb3Qgb2YgcmVwZXRpdGl2
ZSBjb2RlLiBUaGlzIHBhdGNoIGFsbG93cyB1cyB0byBjb25maWd1cmUgTUFDCmFkZHJlc3NlcyBp
biB2YXJpb3VzIGRldmljZXMgbGlrZSBldGhlcm5ldCBhbmQgd2lyZWxlc3MgYWRhcHRlcnMgZGly
ZWN0bHkKZnJvbSBvZl9nZXRfbWFjX2FkZHJlc3MsIHdoaWNoIGlzIHVzZWQgYnkgcXVpdGUgYSBs
b3Qgb2YgZHJpdmVycyBpbiB0aGUKdHJlZSBhbHJlYWR5LgoKU2Vjb25kIHBhdGNoIGlzIHNpbXBs
eSB1cGRhdGluZyBkb2N1bWVudGF0aW9uIHdpdGggTlZNRU0gYml0cywgYWxzbyBhZGRpbmcKc29t
ZSBtaXNzaW5nIGJpdHMgbGlrZSBtYWMtYWRkcmVzcyBhbmQgbG9jYWwtbWFjLWFkZHJlc3MgcHJv
cGVydGllcywgd2hpY2gKYXJlIGN1cnJlbnRseSBzdXBwb3J0ZWQgYnkgb2ZfZ2V0X21hY19hZGRy
ZXNzLgoKVGhpcmQgYW5kIGZvdXJ0aCBwYXRjaGVzIGFyZSBzaW1wbHkgcmVtb3ZpbmcgZHVwbGlj
YXRlIE5WTUVNIGNvZGUgd2hpY2ggaXMKbm8gbG9uZ2VyIG5lZWRlZCBhcyB0aGUgZmlyc3QgcGF0
Y2ggaGFzIGFkZGVkIE5WTUVNIHN1cHBvcnQgZGlyZWN0bHkgaW50bwpvZl9nZXRfbWFjX2FkZHJl
c3MuCgpKdXN0IGZvciBhIGJldHRlciBwaWN0dXJlLCB0aGlzIHBhdGNoIHNlcmllcyBhbmQgb25l
IHNpbXBsZSBwYXRjaFsyXSBvbiB0b3AKb2YgaXQsIGFsbG93cyBtZSB0byBjb25maWd1cmUgOERl
dmljZXMgQ2FyYW1ib2xhMiBib2FyZCdzIE1BQyBhZGRyZXNzZXMKd2l0aCBmb2xsb3dpbmcgRFRT
IChzaW1wbGlmaWVkKToKCiAmc3BpIHsKIAlmbGFzaEAwIHsKIAkJcGFydGl0aW9ucyB7CgkJCWFy
dDogcGFydGl0aW9uQGZmMDAwMCB7CgkJCQlsYWJlbCA9ICJhcnQiOwoJCQkJcmVnID0gPDB4ZmYw
MDAwIDB4MDEwMDAwPjsKCQkJCXJlYWQtb25seTsKCgkJCQludm1lbS1jZWxscyB7CgkJCQkJY29t
cGF0aWJsZSA9ICJudm1lbS1jZWxscyI7CgkJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CgkJCQkJ
I3NpemUtY2VsbHMgPSA8MT47CgoJCQkJCWV0aDBfYWRkcjogZXRoLW1hYy1hZGRyQDAgewoJCQkJ
CQlyZWcgPSA8MHgwIDB4Nj47CgkJCQkJfTsKCgkJCQkJZXRoMV9hZGRyOiBldGgtbWFjLWFkZHJA
NiB7CgkJCQkJCXJlZyA9IDwweDYgMHg2PjsKCQkJCQl9OwoKCQkJCQl3bWFjX2FkZHI6IHdpZmkt
bWFjLWFkZHJAMTAwMiB7CgkJCQkJCXJlZyA9IDwweDEwMDIgMHg2PjsKCQkJCQl9OwoJCQkJfTsK
CQkJfTsKCQl9OwoJfTsKIH07CgogJmV0aDAgewoJbnZtZW0tY2VsbHMgPSA8JmV0aDBfYWRkcj47
Cgludm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjsKIH07CgogJmV0aDEgewoJbnZtZW0t
Y2VsbHMgPSA8JmV0aDFfYWRkcj47Cgludm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjsK
IH07CgogJndtYWMgewoJbnZtZW0tY2VsbHMgPSA8JndtYWNfYWRkcj47Cgludm1lbS1jZWxsLW5h
bWVzID0gIm1hYy1hZGRyZXNzIjsKIH07CgoKMS4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9y
Zy9wYXRjaC8xMDg2NjI4LwoyLiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzg5
MDczOC8KCi0tIHluZXp6CgpQZXRyIMWgdGV0aWFyICg0KToKICBvZl9uZXQ6IEFkZCBOVk1FTSBz
dXBwb3J0IHRvIG9mX2dldF9tYWNfYWRkcmVzcwogIGR0LWJpbmRpbmdzOiBkb2M6IFJlZmxlY3Qg
bmV3IE5WTUVNIG9mX2dldF9tYWNfYWRkcmVzcyBiZWhhdmlvdXIKICBuZXQ6IG1hY2I6IERyb3Ag
bnZtZW1fZ2V0X21hY19hZGRyZXNzIHVzYWdlCiAgbmV0OiBkYXZpbmNpX2VtYWM6IERyb3AgbnZt
ZW1fZ2V0X21hY19hZGRyZXNzIHVzYWdlCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Fs
dGVyYV90c2UudHh0ICAgICAgICAgfCAgNSArKy0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvYW1kLXhnYmUudHh0IHwgIDUgKy0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvYnJjbSxhbWFjLnR4dCAgICAgICAgICB8ICA0ICstLQogRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC9jcHN3LnR4dCAgICAgfCAgNSArLS0KIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25ldC9kYXZpbmNpX2VtYWMudHh0ICAgICAgIHwgIDUgKy0tCiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2RzYS9kc2EudHh0ICB8IDEzICsrLS0tLS0KIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQudHh0IHwgIDYgKyst
LQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2hpc2lsaWNvbi1mZW1hYy50eHQgICAgfCAg
NiArKy0tCiAuLi4vYmluZGluZ3MvbmV0L2hpc2lsaWNvbi1oaXg1aGQyLWdtYWMudHh0ICAgICAg
ICB8ICA3ICsrLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9rZXlzdG9uZS1uZXRjcC50
eHQgICAgIHwgIDggKystLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
bWFjYi50eHQgICAgIHwgIDUgKystCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbWFydmVs
bC1weGExNjgudHh0ICAgICB8ICA1ICstLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21p
Y3JvY2hpcCxlbmMyOGo2MC50eHQgfCAgMyArLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L21pY3JvY2hpcCxsYW43OHh4LnR4dCAgfCAgNSArKy0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9xY2EscWNhNzAwMC50eHQgICAgICAgIHwgIDQgKystCiAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvc2Ftc3VuZy1zeGdiZS50eHQgICAgICB8ICA2ICsrLS0KIC4uLi9iaW5kaW5ncy9u
ZXQvc25wcyxkd2MtcW9zLWV0aGVybmV0LnR4dCAgICAgICAgIHwgIDYgKystLQogLi4uL2JpbmRp
bmdzL25ldC9zb2Npb25leHQsdW5pcGhpZXItYXZlNC50eHQgICAgICAgfCAgNCArLS0KIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zb2Npb25leHQtbmV0c2VjLnR4dCAgIHwgIDcgKystLQog
Li4uL2JpbmRpbmdzL25ldC93aXJlbGVzcy9tZWRpYXRlayxtdDc2LnR4dCAgICAgICAgfCAgNSAr
LS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9xY2EsYXRoOWsudHh0IHwg
IDQgKy0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRlbmNlL21hY2JfbWFpbi5jICAgICAgICAg
ICB8IDEyICsrLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2RhdmluY2lfZW1hYy5jICAg
ICAgICAgICAgIHwgMTQgKysrLS0tLS0KIGRyaXZlcnMvb2Yvb2ZfbmV0LmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgNDIgKysrKysrKysrKysrKysrKysrKystLQogMjQgZmlsZXMg
Y2hhbmdlZCwgMTAyIGluc2VydGlvbnMoKyksIDg0IGRlbGV0aW9ucygtKQoKLS0gCjEuOS4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
