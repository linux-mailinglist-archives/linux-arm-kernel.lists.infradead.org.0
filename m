Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B85F97D5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oiVXuABZpTvS8vDeWApXHEZV/sQA/K7+hsD8T9qQuOo=; b=ke7U8QBWt1dm5i
	p37tFXrURGQdGVqVGDsRTIE8Xin/SDy4r13eh2ctBmcQSD+0myAcaMynTMazclXroS8KZigj3DtLm
	jxSRwW2iBFV+3FiUpHJ1sgmHmhfnkhIShTVokthozQkafUhH2iuB5xLQktwYAm704xEb+TqN7jZIl
	0H9wRQCwmWwnTNktol2XB7l8NoJmIWjCdMX4s6hzryjPf5aKw+1SNwqyVXzl4zYZMWy+0s+fuTlcD
	fuZ1t8zHLYcXY2ySb8IKPMvHzDEocGmf8q4kOKveJZEFRYLMt4fYpi16wTuLp0iCy/1vh2LOOlv7a
	oYQ7Fk8pDNvrN17fLE8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Rqv-0004zP-Ac; Wed, 21 Aug 2019 14:44:45 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Rqg-0004ua-E7; Wed, 21 Aug 2019 14:44:34 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 5885D5FB50;
 Wed, 21 Aug 2019 16:44:16 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="gwaS1ymk"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 16CB11D828BD;
 Wed, 21 Aug 2019 16:44:16 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 16CB11D828BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566398656;
 bh=A8P/+l59ZXg3ee4n+RpUENIPGvXU46CDYZ5yozGyZy0=;
 h=From:To:Cc:Subject:Date:From;
 b=gwaS1ymkIdme9YJvl/6PZwGw22V6g/BtecvFvF89RjKxqbiBRBvchBwvU5IzMHzXJ
 GBCXBEZY7vMi8Q0q8PDSjEqvK42qQ5P+T8Y0IbwSaYFxXo9Z5Taj9TGNViZ8Rymw2q
 iS1iAlxOtEZ/7YqMXPkSG/XJ/9hWqvz5A0H6e2Yp3MVq3gkceYbMbiH4cegZkzMKep
 gQ8JooKnECU6GyBpMsPMVeF9KOjoNfaL3nTkyUykxkNkHS8gEFTIFq9FZI4eV86N0E
 nJdpuG5LVwzbI65n0xYZb7rXMRaTYCHiwqU8ZA2jf42PnWsRSrP83awgNDZ5M5NxB8
 7ADYJDllTVhoQ==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v2 0/3] net: ethernet: mediatek: convert to PHYLINK
Date: Wed, 21 Aug 2019 16:43:33 +0200
Message-Id: <20190821144336.9259-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_074433_426045_4989C4E7 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-mips@vger.kernel.org,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlc2UgcGF0Y2hlcyBjb252ZXJ0cyBtZWRpYXRlayBkcml2ZXIgdG8gUEhZTElOSyBBUEkuCgp2
MS0+djI6CiogUmViYXNlIGZvciBtdDc2eDggY2hhbmdlcwoqIFBoeWxpbmsgaW1wcm92ZW1lbnRz
IGFuZCBjbGVhbi11cHMgYWZ0ZXIgcmV2aWV3CiogU0dNSUkgcG9ydCBkb2Vzbid0IHN1cHBvcnQg
Mi41R2JpdCBpbiBTR01JSSBtb2RlIG9ubHkgaW4gQkFTRS1YIG1vZGUuCiAgUmVmYWN0b3IgdGhl
IGNvZGUuCgpSZW7DqSB2YW4gRG9yc3QgKDMpOgogIG5ldDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBB
ZGQgYmFzaWMgUEhZTElOSyBzdXBwb3J0CiAgbmV0OiBldGhlcm5ldDogbWVkaWF0ZWs6IFJlLWFk
ZCBzdXBwb3J0IFNHTUlJCiAgZHQtYmluZGluZ3M6IG5ldDogZXRoZXJuZXQ6IFVwZGF0ZSBtdDc2
MjIgZG9jcyBhbmQgZHRzIHRvIHJlZmxlY3QgdGhlCiAgICBuZXcgcGh5bGluayBBUEkKCiAuLi4v
YXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dCAgICAgICAgfCAgIDIgLQogLi4uL2R0
cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgIHwgIDI4ICstCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi5kdHNpICAgICAgfCAgIDEgLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWVkaWF0ZWsvS2NvbmZpZyAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3BhdGguYyAgfCAgNzUgKy0tCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jICAgfCA1MDIgKysrKysrKysrKysrLS0t
LS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oICAgfCAgNjgg
KystCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc2dtaWkuYyAgICAgfCAgNjUg
KystCiA4IGZpbGVzIGNoYW5nZWQsIDQ0NyBpbnNlcnRpb25zKCspLCAyOTYgZGVsZXRpb25zKC0p
CgotLS4KMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
