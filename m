Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A5124465
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UfNqpUZdou9iUHJgnEz9b37phEPYU4zcOFoz1eG/XuM=; b=YbRezSMNMs+zGt
	e1Vc8xI/LwhBPfWpubO6OQPJ620bTwAUJsPAkHQcATmIQNjAY4XnQF5WAakkI7r5kjwki5YvK3x8H
	yncREFQ0DduAy7ZYuVEsJoktCvlha0CPLVI2Y1SUpZFvR0jQIfmTv+JapEacpmpzy7nf9Sa46kdyL
	5xeqZWP+rLbAe1GtKpiyaaEDhnQTwC1VptkMuzySJP+lSgUPMnh6bNSoI98pdco37bfShpczheJ16
	qgS61DlJe6Gswa5fk+zy1vd4f+uVkDPidEYP2zgfmOkCua4N+roZiuiJCdj4dhM1awXQjaXglLMEK
	67EEZRafk5DI/pdACKwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWTr-0001SZ-Bq; Wed, 18 Dec 2019 10:22:59 +0000
Received: from imap2.colo.codethink.co.uk ([78.40.148.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWRH-0007tf-Jc
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:20:24 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap2.colo.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1ihWRD-0007Bi-NH; Wed, 18 Dec 2019 10:20:15 +0000
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1ihWRD-00ALHS-7f; Wed, 18 Dec 2019 10:20:15 +0000
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: ben.dooks@codethink.co.uk
Subject: [PATCH] pinctrl: actions: remove duplicate dsi entry
Date: Wed, 18 Dec 2019 10:20:13 +0000
Message-Id: <20191218102013.2465038-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_022019_681243_07542CB4 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGRzaSBlbnRyeSBpcyBkZWZpbmVkIGlkZW50aWNhbGx5IHR3aWNlLCBzbyByZW1vdmUKdGhl
IHNlY29uZCBvbmUgdG8gcmVtb3ZlIHRoZSBzcGFyc2Ugd2FybmluZzoKCmRyaXZlcnMvcGluY3Ry
bC9hY3Rpb25zL3BpbmN0cmwtczcwMC5jOjE1ODE6MTA6IHdhcm5pbmc6IEluaXRpYWxpemVyIGVu
dHJ5IGRlZmluZWQgdHdpY2UKZHJpdmVycy9waW5jdHJsL2FjdGlvbnMvcGluY3RybC1zNzAwLmM6
MTU4NjoxMDogICBhbHNvIGRlZmluZWQgaGVyZQoKU2lnbmVkLW9mZi1ieTogQmVuIERvb2tzIChD
b2RldGhpbmspIDxiZW4uZG9va3NAY29kZXRoaW5rLmNvLnVrPgotLS0KQ2M6ICJBbmRyZWFzIEbD
pHJiZXIiIDxhZmFlcmJlckBzdXNlLmRlPgpDYzogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
dmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndh
bGxlaWpAbGluYXJvLm9yZz4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpDYzogbGludXgtZ3Bpb0B2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL3BpbmN0cmwvYWN0
aW9ucy9waW5jdHJsLXM3MDAuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvYWN0aW9ucy9waW5jdHJsLXM3MDAuYyBiL2Ry
aXZlcnMvcGluY3RybC9hY3Rpb25zL3BpbmN0cmwtczcwMC5jCmluZGV4IDhiODEyMWUzNWVkYi4u
NzcxZDZmZDUwYjQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BpbmN0cmwvYWN0aW9ucy9waW5jdHJs
LXM3MDAuYworKysgYi9kcml2ZXJzL3BpbmN0cmwvYWN0aW9ucy9waW5jdHJsLXM3MDAuYwpAQCAt
MTU4Myw3ICsxNTgzLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvd2xfcGlubXV4X2Z1bmMgczcw
MF9mdW5jdGlvbnNbXSA9IHsKIAlbUzcwMF9NVVhfVVNCMzBdID0gRlVOQ1RJT04odXNiMzApLAog
CVtTNzAwX01VWF9DTEtPXzI1TV0gPSBGVU5DVElPTihjbGtvXzI1bSksCiAJW1M3MDBfTVVYX01J
UElfQ1NJXSA9IEZVTkNUSU9OKG1pcGlfY3NpKSwKLQlbUzcwMF9NVVhfRFNJXSA9IEZVTkNUSU9O
KGRzaSksCiAJW1M3MDBfTVVYX05BTkRdID0gRlVOQ1RJT04obmFuZCksCiAJW1M3MDBfTVVYX1NQ
RElGXSA9IEZVTkNUSU9OKHNwZGlmKSwKIAlbUzcwMF9NVVhfU0lSUTBdID0gRlVOQ1RJT04oc2ly
cTApLAotLSAKMi4yNC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
