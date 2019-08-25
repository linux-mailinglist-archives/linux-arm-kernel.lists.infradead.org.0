Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4179E9C4AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 17:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3TBzzqw2fW6y0L84Y0EepwUVFdf8VkFLJFYtPTGUmo=; b=QZBX/NC1GmjJ0A
	GL2q0Jz062YxwzumTr58t1tcjOXL6R/wsbyeiecwN4fWDeAPesKXeGunRvKxpqvseaKtxWmZapeTA
	mVCtLYVZYqPeNeNF83hi6s5FF7ta6/sJj3Nl8RySypb1XgP637xg5VWaI0CEWG0Qch0tyvyx0rKkG
	5WYVeZHlVi2pf7r0o8fRYNKSpFpqfZmwpdp/sRAVzuTej95V30/t5Aauq13aN8BNz0904hqZm+flD
	m9hYFxjl1WClkb8NJ2yH5dHpaBLpzGL99OsYUm5AM4ZlNG7ywh5vAdOwC7DADPiCtJAwWnJp+85Fc
	dWFzwfkTMsBl3KgdQ7bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1uWc-0000Fg-P6; Sun, 25 Aug 2019 15:33:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uW9-00006w-Px
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 15:33:23 +0000
Received: from X250.getinternet.no (cm-84.211.118.175.getinternet.no
 [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5671A2173E;
 Sun, 25 Aug 2019 15:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566747201;
 bh=IcPQp5XUfkW/ldlsxLtCuAw+BLywkUD6tt84HUrqX1w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vXJDgRRqGy3HXpRV4uPaU4VyxK5Chh9R02Za4wzG9winqoTvbA0Hjhsift6wMN6G7
 wryCoJsM0KwLg3fngQVKj25145E38Ez5cRuAsJpFnNUF/8eDPSwcF7v7fsEeVZHaf6
 smpVX9Qg372Di9G54B2Ki3EuM+sGiairwuXkVRPo=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 2/7] i.MX SoC changes for 5.4
Date: Sun, 25 Aug 2019 17:32:32 +0200
Message-Id: <20190825153237.28829-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190825153237.28829-1-shawnguo@kernel.org>
References: <20190825153237.28829-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_083321_856148_00F3C482 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA1ZjllODMyYzEzNzA3NTA0NWQxNWNk
Njg5OWFiMDUwNWNmYjJjYTRiOgoKICBMaW51cyA1LjMtcmMxICgyMDE5LTA3LTIxIDE0OjA1OjM4
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtc29jLTUuNAoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGFjZjk5
M2EwZjIyMjE1ZGJjMWQzOWY5NzRlMzA1M2Q2YjRmNGU1OTQ6CgogIEFSTTogaW14OiBzdG9wIGFk
anVzdGluZyBhcjgwMzEgcGh5IHR4IGRlbGF5ICgyMDE5LTA4LTI0IDIwOjMwOjIyICswMjAwKQoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQppLk1YIFNvQyBjaGFuZ2VzIGZvciA1LjQ6CiAtIERyb3AgQVI4MDMxIFBIWSBUWCBk
ZWxheSBhZGp1c3RpbmcgZnJvbSBpLk1YN0QgbWFjaGluZSBjb2RlLCBhcwogICBpdCdzIHN1cGVy
Zmx1b3VzIGR1ZSB0byB0aGUgcmVjZW50IGNoYW5nZXMgdG8gQXRoZXJvcyBBVDgwM1ggZHJpdmVy
LgogLSBTZWxlY3QgVElNRVJfSU1YX1NZU19DVFIgZm9yIGFybTY0IEFSQ0hfTVhDIHBsYXRmb3Jt
LCBzaW5jZSB0aGUKICAgc3lzdGVtIGNvdW50ZXIgaXMgbmVlZGVkIGFzIGJyb2FkY2FzdCB0aW1l
ciBmb3IgY3B1aWRsZSBzdXBwb3J0LgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpBbmRyw6kgRHJhc3ppayAoMSk6CiAgICAg
IEFSTTogaW14OiBzdG9wIGFkanVzdGluZyBhcjgwMzEgcGh5IHR4IGRlbGF5CgpBbnNvbiBIdWFu
ZyAoMSk6CiAgICAgIGFybTY0OiBFbmFibGUgVElNRVJfSU1YX1NZU19DVFIgZm9yIEFSQ0hfTVhD
IHBsYXRmb3JtcwoKIGFyY2gvYXJtL21hY2gtaW14L21hY2gtaW14N2QuYyB8IDYgLS0tLS0tCiBh
cmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDYgZGVsZXRpb25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
