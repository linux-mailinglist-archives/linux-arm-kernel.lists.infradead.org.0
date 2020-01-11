Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CED13829B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 18:26:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kH7UWkgGeL4lgS7URmKQXFvWG8Ptu9/hiTrq46Btm2E=; b=OCvflHEAEDAfGJ
	xACAMqWlOiFLCm8bKYG/SR7d/FfewObpk0g8YDwix5IBSaVJFCcGhTpc/kmgFunEQGxJ2W5W6vgig
	psgx3ZVtOek8QlxyA+coDR+WdTPeFE/smQmmBgKUzCpYZg0krEfp+0R6VN2qzJ7pb6lBjwyrIXGAB
	rdTQnQdUZiPjbt6t0h63AtTYwT688yggW5rSQRCTx0vRrjYcorynn+bD16DPO8HwJgbDQd0vqabX4
	awVZ40WAqFrkx1mgi02dYGhcAmEx6vYrIuMl9atFF4EiBtiVbtu9yxn+j782GEGqj5l4Os6SnDf3q
	4cfJqxNbiN0s5G7XwdCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqKWZ-0002ns-5r; Sat, 11 Jan 2020 17:26:11 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqKWR-0002ml-VG
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 17:26:05 +0000
X-Originating-IP: 81.185.160.252
Received: from localhost (252.160.185.81.rev.sfr.net [81.185.160.252])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BC2C840003;
 Sat, 11 Jan 2020 17:25:52 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: drivers for v5.6 (#1)
Date: Sat, 11 Jan 2020 18:25:51 +0100
Message-ID: <877e1x3nxc.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_092604_140071_30F7165F 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpIZXJlIGlzIHRoZSBmaXJzdCBwdWxsIHJlcXVlc3QgZm9yIGRyaXZlcnMgZm9yIG12ZWJ1
IGZvciB2NS42LgoKR3JlZ29yeQoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBl
NDI2MTdiODI1ZjgwNzM1NjlkYTc2ZGM0NTEwYmZhMDE5YjFjMzVhOgoKICBMaW51eCA1LjUtcmMx
ICgyMDE5LTEyLTA4IDE0OjU3OjU1IC0wODAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJl
cG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5pbmZyYWRlYWQub3JnL2xpbnV4LW12ZWJ1LmdpdCB0
YWdzL212ZWJ1LWRyaXZlcnMtNS42LTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAz
NGVmYzgzNzI3Yzg1NDMwYTc2M2Y3MTE5ZGFiYTU2Y2NkYzgwNjA4OgoKICBtYWlsYm94OiBhcm1h
ZGEtMzd4eC1yd3RtOiBjb252ZXJ0IHRvIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSAo
MjAyMC0wMS0wOCAxMDo0MTo1MiArMDEwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KbXZlYnUgZHJpdmVycyBmb3IgNS42
IChwYXJ0IDEpCgogLSBWYXJpb3VzIGNsZWFudXAgb24gdGhlIGZvbGxvd2luZyBkcml2ZXJzOgog
ICAtIFR1cnJpcyBNb3ggcldUTSBmaXJtd2FyZQogICAtIE1veHRldCBidXMKICAgLSBBcm1hZGEg
Mzd4eCByV1RNIG1haWxib3gKICAgLSBNYXJ2ZWxsIEVCVSBEZXZpY2UgQnVzCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkRh
biBDYXJwZW50ZXIgKDEpOgogICAgICBmaXJtd2FyZTogdHVycmlzLW1veC1yd3RtOiBzbWFsbCB3
aGl0ZSBzcGFjZSBjbGVhbnVwCgpNYXJlayBCZWjDum4gKDEpOgogICAgICBidXM6IG1veHRldDog
ZGVjbGFyZSBtb3h0ZXRfYnVzX3R5cGUgYXMgc3RhdGljCgpZYW5ndGFvIExpICgyKToKICAgICAg
bWVtb3J5OiBtdmVidS1kZXZidXM6IGNvbnZlcnQgdG8gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jl
c291cmNlCiAgICAgIG1haWxib3g6IGFybWFkYS0zN3h4LXJ3dG06IGNvbnZlcnQgdG8gZGV2bV9w
bGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlCgogZHJpdmVycy9idXMvbW94dGV0LmMgICAgICAgICAg
ICAgICAgICAgICAgIHwgMyArLS0KIGRyaXZlcnMvZmlybXdhcmUvdHVycmlzLW1veC1yd3RtLmMg
ICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbWFpbGJveC9hcm1hZGEtMzd4eC1yd3RtLW1haWxib3gu
YyB8IDUgKy0tLS0KIGRyaXZlcnMvbWVtb3J5L212ZWJ1LWRldmJ1cy5jICAgICAgICAgICAgICB8
IDQgKy0tLQogNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQoKCi0tIApHcmVnb3J5IENsZW1lbnQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5l
bCBlbmdpbmVlcmluZwpodHRwOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
