Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E59D13E023
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:30:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzFhYop+d+psvEqTQzUEepjrXk2QKqkSkh4EV5Ia39U=; b=pEo/6bdZgrP8NW
	Zdaq1eiOoolz3Uysv8eeIyt2NCgPEPed5jwzhhsyzeNIqibXxu+CSWb487UUpiU4xnfaK62JpN1f7
	3cop+82s9XM3sCbkMvdNZEnd9XdyVM8Lwxny9f9eukH/lrqne/hdxrgeOHZM7THEcNvgy2f/9QL/v
	RnSQGlwPAiEVHaSKslMiDk2N4CaxKz4Orc4P3ePtmULtcJ5JUAwaxU4bh7Ml4YJzWaUAoV3Szw5Qk
	7352Yg3EXqIqIdX/49XC7U64kFmObJa6qDJ5l9Mo1M2tGF/MdR2DzHDNJrpbwxUc2TprJg89X2+bf
	sRGAZ30i2PdmHNJu2XVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is82L-0001nC-Cu; Thu, 16 Jan 2020 16:30:25 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is826-0000aA-Gw
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:30:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3C276523A5E;
 Thu, 16 Jan 2020 17:30:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id A6PWpPq6coxW; Thu, 16 Jan 2020 17:30:01 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id ED29A523AA7;
 Thu, 16 Jan 2020 17:30:00 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id D3BA1523A85;
 Thu, 16 Jan 2020 17:29:59 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: allwinner: h6: tanix-tx6: enable emmc
Date: Thu, 16 Jan 2020 17:29:59 +0100
Message-ID: <4499867.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <20200116122700.2wy2wrgvmyvudj2t@gilmour.lan>
References: <20200115193441.172902-1-jernej.skrabec@siol.net>
 <20200116122700.2wy2wrgvmyvudj2t@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_083010_754473_E876B376 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgxI1ldHJ0ZWssIDE2LiBqYW51YXIgMjAyMCBvYiAxMzoyNzowMCBDRVQgamUgTWF4
aW1lIFJpcGFyZCBuYXBpc2FsKGEpOgo+IEhpIEplcm5laiwKPiAKPiBPbiBXZWQsIEphbiAxNSwg
MjAyMCBhdCAwODozNDo0MVBNICswMTAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+IFRhbml4
IFRYNiBoYXMgMzIgR2lCIGVNTUMuIEFkZCBhIG5vZGUgZm9yIGl0Lgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gCj4gRGlk
IHlvdSBmb3JnZXQgdG8gc2VuZCB0aGUgb3RoZXIgdHdvIHBhdGNoZXM/CgpUaGVyZSBhcmUgbm9u
ZS4gVGhpcyBpcyBqdXN0IG1pc3Rha2Ugd2l0aCAiZ2l0IGZvcm1hdC1wYXRjaCAtMyIuCgpUaGlz
IHBhdGNoIHdhcyB0ZXN0ZWQgc2VwYXJhdGVseSBhbmQgaXQgd29ya3MuCgpCZXN0IHJlZ2FyZHMs
Ckplcm5lagoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
