Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989BC1B8F97
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 13:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XhedNSIJrtDYmg0yIc+8zL5XupaRCxHlLNt5CcBcS80=; b=LBRWgTyg2n2GToKouD2P/M4cG
	vV4NP5TJe/qFUj6tKC6Vp61pwl6bMPDGWJ7DMLKnc5HPOa7BegcKJrWgXmusVGAWxywvIBFa3VVc6
	VtSosVQLiTxzUWqui43+uqwQr0Kaf1qx6f+xYhFNerBSSz8hhuTBdlC32rxIfAFm5kv1yUmu+D0EA
	TYS/KuuA8BVut3cL5dDB8AmDINMg8Cgm9m3K/kGwRmADMNzjiIGbXQIvsyGtUTODre58cdWpxIzJR
	5Ixjl5AtFmSQz1JbvE8dseNmHkxM1FGzJIk0ys6Um47cGvsW4zplTX1mfcT6IBXTfZcezHo1poYBI
	qcf8RRlXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSfvV-0006JH-79; Sun, 26 Apr 2020 11:58:25 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSfvM-0006IA-A4; Sun, 26 Apr 2020 11:58:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 2B6DEAA55;
 Sun, 26 Apr 2020 11:58:12 +0000 (UTC)
Subject: Re: [PATCH v3 3/3] ARM: dts: Add Caninos Loucos Labrador
To: Matheus Castello <matheus@castello.eng.br>
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-4-matheus@castello.eng.br>
 <20200405065137.GC8912@Mani-XPS-13-9360>
 <df32c750-a097-9210-6e13-db7db49836b5@castello.eng.br>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <2dca5a4e-933c-0a43-e86f-21b55d75a586@suse.de>
Date: Sun, 26 Apr 2020 13:58:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <df32c750-a097-9210-6e13-db7db49836b5@castello.eng.br>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_045816_497786_3F97A868 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF0aGV1cywKCkFtIDIzLjA0LjIwIHVtIDE3OjIwIHNjaHJpZWIgTWF0aGV1cyBDYXN0ZWxs
bzoKPiBFbSA0LzUvMjAgMzo1MSBBTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIGVzY3JldmV1Ogo+
PiBPbiBGcmksIE1hciAyMCwgMjAyMCBhdCAxMjo1MTowNEFNIC0wMzAwLCBNYXRoZXVzIENhc3Rl
bGxvIHdyb3RlOgo+Pj4gQWRkIERldmljZSBUcmVlcyBmb3IgQ2FuaW5vcyBMb3Vjb3MgTGFicmFk
b3IgQ29NIGFuZCBiYXNlIGJvYXJkLgo+Pj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgQW5kcmVhcyBG
w6RyYmVyIG9uIExlbWFrZXIgR3VpdGFyIGRldmljZSB0cmVlLgo+Pj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IE1hdGhldXMgQ2FzdGVsbG8gPG1hdGhldXNAY2FzdGVsbG8uZW5nLmJyPgo+Pgo+PiBSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KPj4KPj4gV2lsbCBxdWV1ZSB0aGUgc2VyaWVzIGZvciB2NS44IG9uY2UgQW5kcmVh
cyBpcyBoYXBweSB3aXRoIGl0Lgo+IAo+IGRvIHlvdSBoYXZlIGFueSBtb3JlIGNvbmNlcm5zIGFi
b3V0IHRoZXNlIHBhdGNoZXM/IExldCBtZSBrbm93LgoKSSd2ZSByZXZpZXdlZCB0aGUgcHJlY2Vk
aW5nIHR3byBwYXRjaGVzLiBUaGlzIG9uZSBoZXJlIGxvb2tzIG9rYXksCgpSZXZpZXdlZC1ieTog
QW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgoKYnV0IHNlZSAyLzMgLSBtb2RlbCBo
ZXJlIGRvZXMgY29udGFpbiBNIGFuZCB5b3VyIC5kdHNpIGlzIG5hbWVkIC12MiAtIAp3aGF0J3Mg
dGhlIGRpZmZlcmVuY2UgdG8gdjE/IElmIGl0J3MgYmlnIGVub3VnaCB0byB3YXJyYW50IGEgc2Vw
YXJhdGUgCi5kdHNpLCB5b3Ugc2hvdWxkIGNvbnNpZGVyIHdoZXRoZXIgYSB2ZXJzaW9uZWQgY29t
cGF0aWJsZSBzdHJpbmcgbWF5IGJlIApuZWVkZWQsIHRvbyAobGlrZWx5IGluIGFkZGl0aW9uIHRv
LCBub3QgaW5zdGVhZCBvZiBhIGdlbmVyaWMgb25lKS4gTm8gdjEgCmluZm8gb24gdGhlIHdlYnNp
dGUuCgpUaGFua3MsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55
IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJ
bWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
