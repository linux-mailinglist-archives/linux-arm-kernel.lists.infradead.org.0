Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32634FB8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 16:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jpnqDLpeif5qEX0Klk1ZtwYnqvQ0aEtKzsI0IbzoLzA=; b=KyNUnqI117tyET
	5To2jd+mTKjHjOWHEYWhkE7Z/c76LmcHK7FzGOjQOW3jIASrU7/EA1YYTuh/jeKPx718wvGgF+zZi
	LpzEIKc/vXsGoMD0Bnj0x8Z/oTjLdKungKThyG2yyqIwxGC/2xFg+zmL3tuTZ/MuO+rx0MOofdwnc
	eXReqs73He4E1vuMKHdhlNJNe1EQk3NIrqt18q1CCqoRDIL4c81SKwifReEs8ti65Q2Mt6EQNJbY6
	cTakzt2aiP2zocxlwEZ3w1IrMDcufFCuvgVPbSy9RO6MNyd1TofkbC3/jUAtzYNraDcdzDzuUtDPP
	lp08rQ/Aq7fmlAvaJHdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTo3-000152-07; Tue, 30 Apr 2019 14:32:27 +0000
Received: from gateway36.websitewelcome.com ([192.185.194.2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTnw-00011w-8g
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 14:32:21 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway36.websitewelcome.com (Postfix) with ESMTP id C3D2D400F8CB2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 08:50:51 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id LTnjhPjlndnCeLTnjhA2UE; Tue, 30 Apr 2019 09:32:07 -0500
X-Authority-Reason: nr=8
Received: from [189.250.119.203] (port=51452 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.91)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hLTni-001KJq-JX; Tue, 30 Apr 2019 09:32:06 -0500
Date: Tue, 30 Apr 2019 09:32:06 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH] clk: imx: clk-pllv3: mark expected switch fall-throughs
Message-ID: <20190430143206.GA4035@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.250.119.203
X-Source-L: No
X-Exim-ID: 1hLTni-001KJq-JX
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [189.250.119.203]:51452
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_073220_347408_A059E502 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.194.2 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW4gcHJlcGFyYXRpb24gdG8gZW5hYmxpbmcgLVdpbXBsaWNpdC1mYWxsdGhyb3VnaCwgbWFyayBz
d2l0Y2gKY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2guCgpUaGlz
IHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZ3M6Cgpkcml2ZXJzL2Nsay9pbXgvY2xr
LXBsbHYzLmM6IEluIGZ1bmN0aW9uIOKAmGlteF9jbGtfcGxsdjPigJk6CmRyaXZlcnMvY2xrL2lt
eC9jbGstcGxsdjMuYzo0NDY6MTg6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRo
cm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBwbGwtPmRpdl9zaGlmdCA9IDE7CiAg
IH5+fn5+fn5+fn5+fn5+fl5+fgpkcml2ZXJzL2Nsay9pbXgvY2xrLXBsbHYzLmM6NDQ3OjI6IG5v
dGU6IGhlcmUKICBjYXNlIElNWF9QTExWM19VU0I6CiAgXn5+fgpkcml2ZXJzL2Nsay9pbXgvY2xr
LXBsbHYzLmM6NDUzOjIxOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdo
IFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgcGxsLT5kZW5vbV9vZmZzZXQgPSBQTExfSU1Y
N19ERU5PTV9PRkZTRVQ7CiAgICAgICAgICAgICAgICAgICAgIF4KZHJpdmVycy9jbGsvaW14L2Ns
ay1wbGx2My5jOjQ1NDoyOiBub3RlOiBoZXJlCiAgY2FzZSBJTVhfUExMVjNfQVY6CiAgXn5+fgoK
V2FybmluZyBsZXZlbCAzIHdhcyB1c2VkOiAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoPTMKClRoaXMg
cGF0Y2ggaXMgcGFydCBvZiB0aGUgb25nb2luZyBlZmZvcnRzIHRvIGVuYWJsZQotV2ltcGxpY2l0
LWZhbGx0aHJvdWdoLgoKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2
b0BlbWJlZGRlZG9yLmNvbT4KLS0tCiBkcml2ZXJzL2Nsay9pbXgvY2xrLXBsbHYzLmMgfCAyICsr
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
bGsvaW14L2Nsay1wbGx2My5jIGIvZHJpdmVycy9jbGsvaW14L2Nsay1wbGx2My5jCmluZGV4IGU4
OTJiOWE4MzZlNS4uNDExMGU3MTNkMjU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9pbXgvY2xr
LXBsbHYzLmMKKysrIGIvZHJpdmVycy9jbGsvaW14L2Nsay1wbGx2My5jCkBAIC00NDQsNiArNDQ0
LDcgQEAgc3RydWN0IGNsayAqaW14X2Nsa19wbGx2MyhlbnVtIGlteF9wbGx2M190eXBlIHR5cGUs
IGNvbnN0IGNoYXIgKm5hbWUsCiAJCWJyZWFrOwogCWNhc2UgSU1YX1BMTFYzX1VTQl9WRjYxMDoK
IAkJcGxsLT5kaXZfc2hpZnQgPSAxOworCQkvKiBmYWxsIHRocm91Z2ggKi8KIAljYXNlIElNWF9Q
TExWM19VU0I6CiAJCW9wcyA9ICZjbGtfcGxsdjNfb3BzOwogCQlwbGwtPnBvd2VydXBfc2V0ID0g
dHJ1ZTsKQEAgLTQ1MSw2ICs0NTIsNyBAQCBzdHJ1Y3QgY2xrICppbXhfY2xrX3BsbHYzKGVudW0g
aW14X3BsbHYzX3R5cGUgdHlwZSwgY29uc3QgY2hhciAqbmFtZSwKIAljYXNlIElNWF9QTExWM19B
Vl9JTVg3OgogCQlwbGwtPm51bV9vZmZzZXQgPSBQTExfSU1YN19OVU1fT0ZGU0VUOwogCQlwbGwt
PmRlbm9tX29mZnNldCA9IFBMTF9JTVg3X0RFTk9NX09GRlNFVDsKKwkJLyogZmFsbCB0aHJvdWdo
ICovCiAJY2FzZSBJTVhfUExMVjNfQVY6CiAJCW9wcyA9ICZjbGtfcGxsdjNfYXZfb3BzOwogCQli
cmVhazsKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
