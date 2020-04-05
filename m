Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D89519EC3B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 16:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8BSX3Fdv9OWGfdfOlObwPUZKlMO+e6ftvC6s67qXdM=; b=ArRCvFcwqzjRyF
	O38WoqMOLsCWZd4xyVYE7ERNioJhdisagoPMUAoxe4OYAHaNUSwEiuqpCAf7x8eAyoAtREI7dJD5q
	hQIsp73qvAzbezkYtNKV6OfpOJIivLHunFQxrKITsi4CzQRwEWiF/DQrS4SNavJDZEUsjAj12EKSV
	panIFfpaCPFIRtuX0be1R19XWVrLB2wxQi8pe+0Is2Ze5uGqCa9oq5GGUoAtf6pE0wKFsbUMxdNx2
	0FrlWKzcMs8miE/veIRLg7S57VtSZ/lwLyShbIdA22q7IEiUfoZTjerirZwx7v6oORID/QGIlw1sy
	02xiOc8MZeCxGSrIth8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6fk-0005jX-Lq; Sun, 05 Apr 2020 14:54:52 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6fd-0005hY-P6
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 14:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1586098483; bh=YvInvH/mqpjWA9tS3gUA31bXJDMR40kHIKld7q04mmg=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=QJ79tLBwI18mxgsos5s6y/yEYEzpyGors8eAHWB3JvCsqxbtpH0uyxMCT3YGmbbfF
 A8Rnk9/WZSr2nDyyx0DlHucdax5BmYhZ1E8B6Cyh9JiRX7+nRDVRF0eLgVfAyMxejI
 c5y2X6oLpB3ckC9eG1gXqQSHdVvyBJUOiptaBqX0=
Date: Sun, 5 Apr 2020 16:54:43 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200405145443.uycsh73kxmurdmil@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
 <20200405115138.vrrvv7spnv6ifm6x@core.my.home>
 <CAJiuCcfAKCs5ZLi_O21eyx-ZraC2Sb_ugQSmOEYm5+eVkQ7ZSw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcfAKCs5ZLi_O21eyx-ZraC2Sb_ugQSmOEYm5+eVkQ7ZSw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_075446_153991_EA9699BC 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIEFwciAwNSwgMjAyMCBhdCAwNDozMzozN1BNICswMjAwLCBDbMOpbWVudCBQ
w6lyb24gd3JvdGU6Cj4gSGkgT25kxZllaiwKClsgLi4uIF0KCj4gR29vZCBwb2ludCwgdGhpcyBp
bmZvcm1hdGlvbiBzaG91bGQgYmUgYWRkZWQgZm9yIGJvdGggQ1BVIGFuZCBHUFUgcmVndWxhdG9y
Lgo+IFRoaXMgY291bGQgYmUgbmljZSB0byBjb25maXJtIHRoaXMgcG9pbnQgd2l0aCBhIHNjb3Bl
Lgo+IAo+IEFsc28gSSByZW1hcmsgdGhhdCBBbGx3aW5uZXIgdXNlciBoaWdoZXIgdGVtcGVyYXR1
cmUgdGhhbiB3aGF0IHdlIHNldCA6Cj4gYWxhcm1fbG93X3RlbXAgPSA8MTA1MDAwPjsKPiBhbGFy
bV9oaWdoX3RlbXAgPSA8MTEwMDAwPjsKPiBhbGFybV90ZW1wX2h5c3RlcmVzaXMgPSA8MTUwMDA+
Owo+IHNodXRfdGVtcD0gPDExNTAwMD47Cj4gaHR0cHM6Ly9naXRodWIuY29tL29yYW5nZXBpLXh1
bmxvbmcvT3JhbmdlUGlINl9MaW51eDRfOS9ibG9iL21hc3Rlci9hcmNoL2FybTY0L2Jvb3QvZHRz
L3N1bnhpL3N1bjUwaXc2cDEuZHRzaSNMMTkyNAo+IAo+IERvbid0IHlvdSB0aGluayB0aGF0IHdl
IGNhbiBwdXNoIGEgYml0IGhpZ2hlciB0aGUgdGVtcGVyYXR1cmUgaXQncwo+IGFjdHVhbGx5IGF0
IDgwwrBDID8KCldlIHByb2JhYmx5IGNhbi4gQnV0IGp1c3QgNcKwQyBiZXR3ZWVuIGhpZ2ggdGVt
cCBhbmQgY3JpdGljbGEgdGVtcCBpcyBwcm9iYWJseQpub3QgZW5vdWdoLiBJJ2QgcHJvYmFibHkg
c2V0IG91ciB2YWx1ZSB0byBzb21ldGhpbmcgbGlrZSA5MC0xMDDCsEMgc28gdGhhdCBxdWljawp0
ZW1wZXJhdHVyZSBzcGlrZSBiZWZvcmUgcmVndWxhdGlvbiBraWNrcyBpbiB3b3VsZCBub3Qgc2h1
dGRvd24gdGhlIENQVS4KCnJlZ2FyZHMsCglvLgoKPiBUaGFua3MgZm9yIHRoZSByZXZpZXcsCj4g
Q2xlbWVudAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
