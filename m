Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265A61D6B34
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfRuQ1gXIbg4sFTNBdWgnsmIqIBqrAOcf/ADgWUTD9M=; b=exl9FBntcEw26t
	F8cI+nsYpRZfitg19eQFJ5f3VHRgeYI04yJHM9gQ9Zu7Fhrhmgy+lh6hmeMDm8gBiM5Ky6DrTe1NT
	oruXn1YaV7ZmHasxewf1G9ttTU85f0WnC8gTrCimRR+lXnyvsMCEdcIgebBJEYQ7HVNwK1XrO5YyL
	jxQ+mlOqkyzmNu4fgn8a75+Ksbydm1iE+6ZHo7vHqcletjiIZ1BAhtc/Q1qD80N+R3tvmhev0PqR4
	WPRCR76wTM/ptoEXaBHOvCvl5/0x9u3VEPwZ4CHpKNZRwdQdwR6T6icG5KNLX7cSpE8lcRQ20Tnh6
	hdx9lvzSUsjHS5xN1/Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaMbB-0003pK-Jv; Sun, 17 May 2020 16:57:13 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaMb1-0003oh-PX
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:57:05 +0000
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id C17A6100004;
 Sun, 17 May 2020 16:56:54 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: forbid
 SDR104 on SDIO for FCC purposes
In-Reply-To: <20200430231144.17350-1-marek.behun@nic.cz>
References: <20200430231144.17350-1-marek.behun@nic.cz>
Date: Sun, 17 May 2020 18:56:54 +0200
Message-ID: <87367yh549.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_095703_961967_F185D3BD 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgo+IFVzZSBzZGhjaS1jYXBzLW1hc2sgdG8gZm9yYmlkIFNEUjEwNCBtb2RlIG9u
IHRoZSBTRElPIGNhcGFibGUgU0RIQ0kKPiBjb250cm9sbGVyLiBXaXRob3V0IHRoaXMgdGhlIGRl
dmljZSBjYW5ub3QgcGFzcyBlbGVjdHJvbWFnbmV0aWMKPiBpbnRlcmZlcmVuY2UgY2VydGlmaWNh
dGlvbnMuCj4KPiBGaXhlczogNzEwOWQ4MTdkYjJlICgiYXJtNjQ6IGR0czogbWFydmVsbDogYWRk
IERUUyBmb3IgVHVycmlzIE1veCIpCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgQmVow7puIDxtYXJl
ay5iZWh1bkBuaWMuY3o+Cj4gQ2M6IEdyZWdvcnkgQ0xFTUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJv
b3RsaW4uY29tPgoKCkFwcGxpZWQgb24gbXZlYnUvZHQ2NAoKVGhhbmtzLAoKR3JlZ29yeQoKPiAt
LS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3gu
ZHRzIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3gu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3gu
ZHRzCj4gaW5kZXggYmI0MmQxZTZhNGU5Li40N2ZlZTY2YzcwY2IgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzCj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRz
Cj4gQEAgLTE3OSw2ICsxNzksOCBAQCAmc2RoY2kxIHsKPiAgCW1hcnZlbGwscGFkLXR5cGUgPSAi
c2QiOwo+ICAJdnFtbWMtc3VwcGx5ID0gPCZ2c2Rpb19yZWc+Owo+ICAJbW1jLXB3cnNlcSA9IDwm
c2RoY2kxX3B3cnNlcT47Cj4gKwkvKiBmb3JiaWQgU0RSMTA0IGZvciBGQ0MgcHVycG9zZXMgKi8K
PiArCXNkaGNpLWNhcHMtbWFzayA9IDwweDIgMHgwPjsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAg
fTsKPiAgCj4gLS0gCj4gMi4yNC4xCj4KCi0tIApHcmVnb3J5IENsZW1lbnQsIEJvb3RsaW4KRW1i
ZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwOi8vYm9vdGxpbi5jb20KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
