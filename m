Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA39518692A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:32:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnHXGIXuXlwk8u/Om6iQzQ9LW/PtD6NfXtHheaxQg60=; b=Cjf7G9FUB0c4jw
	oBIUk+0Gy8tHypb2WrMtlVbctTIBOSfmTTuMQxPIDNvzvh1q7YYHgj8+V4KerKE3AIVqg1rVCwrQr
	VrpgfYXjvRSEqDvROZ+heWn6qe2728v0qEv651ZoQgtzENydZa3VPNByU1Sw3XcLYXCY9PsggQ4wQ
	jempIDyT5fVsd+emJACFY/rNaPSAVsU0utay5N+eZcwoNQh9veeTuAjFW2bIovTZKwdNxd3KYWO/z
	cxDlbPO71kcvA93DDIC6oKcmosEBejreiAaLd5GaNAbZPa2wCf6L7BYx+SF6SoEXkRYxCuJXHj7Rx
	EMkUkvXK9OjsBPRQgyAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDn38-0000Sa-DC; Mon, 16 Mar 2020 10:32:46 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDn2z-0000RZ-Qr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:32:39 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id 918F95FAC8;
 Mon, 16 Mar 2020 11:32:31 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: move kimage_vaddr to .rodata
Date: Mon, 16 Mar 2020 12:32:30 +0200
Message-ID: <3096066.EsygCdbVZz@basile.remlab.net>
Organization: Remlab
In-Reply-To: <20200312164035.GA21120@lakrids.cambridge.arm.com>
References: <20200312094002.153302-1-remi@remlab.net>
 <20200312164035.GA21120@lakrids.cambridge.arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_033238_012943_D51A969A 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdG9yc3RhaW5hIDEyLiBtYWFsaXNrdXV0YSAyMDIwLCAxOC40MC4zNiBFRVQgTWFyayBSdXRs
YW5kIGEgw6ljcml0IDoKPiBPbiBUaHUsIE1hciAxMiwgMjAyMCBhdCAxMTo0MDowMkFNICswMjAw
LCBSw6ltaSBEZW5pcy1Db3VybW9udCB3cm90ZToKPiA+IEZyb206IFJlbWkgRGVuaXMtQ291cm1v
bnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KPiA+IAo+ID4gVGhpcyBkYXR1bSBp
cyBub3QgcmVmZXJlbmNlZCBmcm9tIC5pZG1hcC50ZXh0OiBpdCBkb2VzIG5vdCBuZWVkIHRvIGJl
Cj4gPiBtYXBwZWQgaW4gaWRtYXAuIExldHMgbW92ZSBpdCB0byAucm9kYXRhIGFzIGl0IGlzIG5l
dmVyIHdyaXR0ZW4gdG8gYWZ0ZXIKPiA+IGVhcmx5IGJvb3Qgb2YgdGhlIHByaW1hcnkgQ1BVLgo+
ID4gKE1heWJlIC5kYXRhLnJvX2FmdGVyX2luaXQgd291bGQgYmUgY2xlYW5lciB0aG91Z2g/KQo+
IAo+IENhbiB3ZSBtb3ZlIHRoaXMgaW50byBhcmNoL2FybTY0L21tL21tdS5jLCB3aGVyZSB3ZSBh
bHJlYWR5IGhhdmUKPiAKPiBraW1hZ2Vfdm9mZnNldDoKPiB8IHU2NCBraW1hZ2Vfdm9mZnNldCBf
X3JvX2FmdGVyX2luaXQ7Cj4gfCBFWFBPUlRfU1lNQk9MKGtpbWFnZV92b2Zmc2V0KTsKPiAKPiAu
Li4gb3IgaXMgaXQgbm90IHBvc3NpYmxlIHRvIGluaXRpYWxpemUga2ltYWdlX3ZhZGRyIGNvcnJl
Y3RseSBpbiBDPwoKQ3VycmVudGx5IFRFWFRfT0ZGU0VUIGlzIGRlZmluZWQgYnkgdGhlIE1ha2Vm
aWxlIG9ubHkgZm9yIGFzc2VtYmxlciBzb3VyY2VzIGFuZCAKdGhlIGxpbmtlciBzY3JpcHQuIFNv
IHRoYXQgd291bGQgbmVlZCB0byBiZSBleHBvc2VkIHRvIENQUEZMQUdTIGFzIHdlbGwuCgotLSAK
0KDQtdC80Lgg0JTRkdC90Lgt0JrRg9GA0LzQvtC9Cmh0dHA6Ly93d3cucmVtbGFiLm5ldC8KCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
