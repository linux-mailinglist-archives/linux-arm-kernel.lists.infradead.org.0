Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3A9189DAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 15:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9oEU/N8M2aEFQW0QMjrILqG+kwJn+m4xcMDQ8hWEmyo=; b=Mpn0xmAN4jzGq0HTkxhMXSt5k
	WINguZQrr/c4bdYZaydDtcVd68CtRQTS3f43mK45KCmNVNxNO8tPixNxysLoNeFw/DnSZ0gVjhC4c
	ZFMYzMCFwnd6b/Wip8JF7F1vsrhUrp/fdmMWTmMT8v2NzsoaC43WaavRc90NokrmBai0bMjx5GWZE
	tVmY3sR6jD+hH+0tQvwdwc4HCKUq0t5xdP8QoHIzOGcnqvgUVNgxboE3wHpylqS0JR/4TtlT4k6gU
	RPsmAEVmsUxQBy1eRsWPDsMIdYxNPQt5xmChiuGu1tPPMlqdje3LPCxQ+yKv6RM+6wmcCjp/unveM
	uGe9ZldPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEZV1-0006ku-2u; Wed, 18 Mar 2020 14:16:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEZUt-0006jP-Lt
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 14:16:41 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21AD020772;
 Wed, 18 Mar 2020 14:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584540999;
 bh=tCwrNUH0wEi91/ICyI3DEO7ju+O7G22DnHL/K0ZmyCA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PSNMOXkjPBQikNc6cmKJIkreczP/pS8nYA42jW3RgdJDdAoWitLFPU7TuYPXplgic
 ttMV53POQqk7UEF0SvV74O10zCBGJ9QxOqiRh12fvL44axys2TjSPAdfIvCjvfE7hD
 5elv0MajXB5LgwubYmN5btiq7zLxlKy2n7V+TAdc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEZUr-00DevC-Gn; Wed, 18 Mar 2020 14:16:37 +0000
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 14:16:37 +0000
From: Marc Zyngier <maz@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
In-Reply-To: <8b141d09-ac11-34ec-0922-c21c22f94f36@huawei.com>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
 <2c367508-f81b-342e-eb05-8bbd1b056279@huawei.com>
 <9ce0b23455a06d92161c5302ac28152e@kernel.org>
 <8b141d09-ac11-34ec-0922-c21c22f94f36@huawei.com>
Message-ID: <7b97c24ceced7560b5acb03edaf2cd70@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: john.garry@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, chenxiang66@hisilicon.com,
 wangzhou1@hisilicon.com, ming.lei@redhat.com, jason@lakedaemon.net,
 tglx@linutronix.de, luojiaxing@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_071639_755560_C703BD4B 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 luojiaxing@huawei.com, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0xNyAxODo0MywgSm9obiBHYXJyeSB3cm90ZToKPj4+IAo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCBpbnQgdGhpc19jb3VudCA9IGl0c19yZWFkX2xwaV9jb3VudChkLCB0bXApOwo+Pj4g
Cj4+PiBOb3Qgc3VyZSBpZiBpdCdzIGludGVudGlvbmFsLCBidXQgbm93IHRoZXJlIHNlZW1zIHRv
IGJlIGEgc3VidGxlCj4+PiBkaWZmZXJlbmNlIHRvIHdoYXQgVGhvbWFzIGRlc2NyaWJlZCBmb3Ig
bm9uLW1hbmFnZWQgaW50ZXJydXB0cyAtIGZvcgo+Pj4gbm9uLW1hbmFnZWQgaW50ZXJydXB0cywg
eDg2IHNlbGVjdHMgdGhlIENQVSBiYXNlZCBvbiB0aGUgdG90YWwKPj4+IGludGVycnVwdCBsb2Fk
IHBlciBDUFUgKG9yLCBtb3JlIHNwZWNpZmljYWxseSwgbG93ZXN0IHZlY3Rvcgo+Pj4gYWxsb2Nh
dGlvbiBjb3VudCksIGFuZCBub3QganVzdCB0aGUgbm9uLW1hbmFnZWQgbG9hZC4gT3IgbWF5YmUg
SQo+Pj4gbWlzcmVhZCBpdC4KPj4gCj4+IFNvIGZhciwgSSdtIHRyeWluZyB0byBrZWVwIHRoZSB0
d28gYWxsb2NhdGlvbiBwYXRocyBzZXBhcmF0ZSwgYXMgdGhlCj4+IHR3byBzeXN0ZW1zIEkgaGF2
ZSBhY2Nlc3MgdG8gaGF2ZSB2ZXJ5IGRpZmZlcmVudCBiZWhhdmlvdXJzOiBEMDUgaGFzCj4+IG5v
IG1hbmFnZWQgaW50ZXJydXB0cyB0byBzcGVhayBvZiwgYW5kIG15IHRvcC1zZWNyZXQgd29yayBt
YWNoaW5lCj4+IGhhcyBhbG1vc3Qgbm8gdW5tYW5hZ2VkIGludGVycnVwdHMsIHNvIHRoZSB0d28g
c2V0cyBhcmUgYWxtb3N0Cj4+IGNvbXBsZXRlbHkgZGlzam9pbnQuCj4gCj4gU3VyZSwgYnV0IEkn
ZCBzYXkgdGhhdCBpdCB3b3VsZCBiZSBhIG1vcmUgY29tbW9uIHNjZW5hcmlvIHRvIGhhdmUgYQo+
IG1peHR1cmUgb2YgYm90aC4KPiAKPj4gCj4+IEFsc28sIGl0IGFsbCBkZXBlbmRzIG9uIHRoZSBp
bnRlcnJ1cHQgYWxsb2NhdGlvbiBvcmRlciwgYW5kIHdoZXRoZXIKPj4gc29tZXRoaW5nIHdpbGwg
cmViYWxhbmNlIHRoZSBub24tbWFuYWdlZCBpbnRlcnJ1cHRzIGF0IGEgbGF0ZXIgdGltZS4KPj4g
QXQgbGVhc3QsIHRoZXNlIHR3byBwYXRjaGVzIG1ha2UgaXQgZWFzeSB0byBhbHRlciB0aGUgcGxh
Y2VtZW50IHBvbGljeQo+PiAodGhlIGJlaGF2aW91ciB5b3UgZGVzY3JpYmUgYWJvdmUgaXMgYSAy
IGxpbmUgY2hhbmdlKS4KPj4gCj4+PiBBbnl3YXksIHdlIGNhbiB0ZXN0IHRoaXMgbm93IGZvciBO
Vk1lIHdpdGggaXRzIG1hbmFnZWQgaW50ZXJydXB0cy4KPj4gCj4+IExvb2tpbmcgZm9yd2FyZCB0
byBoZWFyaW5nIGZyb20geW91IQo+PiAKPiAKPiBPbiBteSBEMDZDUyBib2FyZCAoMTI4IGNvcmUp
LCB0aGVyZSBzZWVtcyB0byBiZSBzb21ldGhpbmcgd3JvbmcsIGFzCj4gdGhlIHEwIGFmZmluaXR5
IG1hc2sgbG9va3MgaW5jb3JyZWN0Ogo+IAo+IFBDSSBuYW1lIGlzIDgxOjAwLjA6IG52bWUwbjEK
PiAKPiAKPiAgICAgICAgIGlycSAzMjIsIGNwdSBsaXN0IDY5LCBlZmZlY3RpdmUgbGlzdCA2OQo+
IAo+IAo+ICAgICAgICAgaXJxIDMyNSwgY3B1IGxpc3QgMzItMzgsIGVmZmVjdGl2ZSBsaXN0IDMy
Cj4gCj4gCj4gICAgICAgICBpcnEgMzI2LCBjcHUgbGlzdCAzOS00NSwgZWZmZWN0aXZlIGxpc3Qg
NDAKPiAKPiAKPiAgICAgICAgIGlycSAzMjcsIGNwdSBsaXN0IDQ2LTUxLCBlZmZlY3RpdmUgbGlz
dCA0Nwo+IAo+IAo+ICAgICAgICAgaXJxIDMyOCwgY3B1IGxpc3QgNTItNTcsIGVmZmVjdGl2ZSBs
aXN0IDUzCj4gCj4gCj4gICAgICAgICBpcnEgMzI5LCBjcHUgbGlzdCA1OC02MywgZWZmZWN0aXZl
IGxpc3QgNTkKCgpTb3JyeSwgY2FuIHlvdSBleHBsYWluIGluIG1vcmUgZGV0YWlsIHdoYXQgeW91
IGZpbmQgd3JvbmcgaW4gdGhpcyBsb2c/CklzIGl0IHRoYXQgaW50ZXJydXB0IDMyMiBoYXMgYSBz
aW5nbGUgQ1BVIGFmZmluaXR5IGluc3RlYWQgb2YgYSBsaXN0PwoKPiBBbmQgc29tZXRoaW5nIHN0
cmFuZ2VyIGZvciBteSBjb2xsZWFndWUgTHVvIEppYXhpbmcsIHNwZWNpZmljYWxseSB0aGUKPiBl
ZmZlY3RpdmUgYWZmaW5pdHk6Cj4gCj4gUENJIG5hbWUgaXMgODU6MDAuMDogbnZtZTJuMQo+IGly
cSAxOTYsIGNwdSBsaXN0IDAtMzEsIGVmZmVjdGl2ZSBsaXN0IDgyCgpSaWdodCwgdGhpcyBvbmUg
d2UgaGF2ZSBzZWVuIGluIHlvdXIgb3RoZXIgZW1haWwuIEJlaW5nIGEgbm9uLW1hbmFnZWQKaW50
ZXJydXB0LCBpdCBsYW5kcyBvbiB0aGUgY2xvc2VzdCBzb2NrZXQuCgo+IGlycSAzNzcsIGNwdSBs
aXN0IDMyLTM4LCBlZmZlY3RpdmUgbGlzdCAzMgo+IGlycSAzNzgsIGNwdSBsaXN0IDM5LTQ1LCBl
ZmZlY3RpdmUgbGlzdCAzOQo+IGlycSAzNzksIGNwdSBsaXN0IDQ2LTUxLCBlZmZlY3RpdmUgbGlz
dCA0Ngo+IAo+IEJ1dCB0aGVuIHY1LjYtcmM1IHZhbmlsbGEgYWxzbyBsb29rcyB0byBoYXZlIHRo
aXMgaXNzdWUgd2hlbiBJIHRlc3RlZAo+IG9uIG15IGJvYXJkOgo+IAo+IGpvaG5AdWJ1bnR1On4k
IG1vcmUgL3Byb2MvaXJxLzMyMi9zbXBfYWZmaW5pdHlfbGlzdAo+IAo+IAo+IDY5Cj4gCj4gTXkg
RDA2RVMgKDk2IGNvcmUpIGJvYXJkIGxvb2tzIHNlbnNpYmxlIGZvciB0aGUgYWZmaW5pdHkgaW4g
dGhpcwo+IHJlZ2FyZCAoSSBkaWQgbm90IHRyeSB2YW5pbGxhIHY1LjYtcmM1LCBidXQgb25seSB3
aXRoIHlvdXIgcGF0Y2hlcyBvbgo+IHRvcCkuIEknbGwgbmVlZCB0byBkZWJ1ZyB0aGlzLgoKVGhh
bmtzLAoKICAgICAgICAgTS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1
bm55Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
