Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2724525208
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KwqAtOWvJC8dWQXAJnI4kbNWjWGrdi6XH1y/KxYKCsk=; b=MBj6w/up6cE0o+
	BR0bC4rc7s10g6LDpcKTPsZPyU0fS6dVejIRa1PyPBF8GocvxFO4jF5TrU/XsCBq+rkvHLmNaqACU
	27TdSWCqc+MfFJKok0Ei7pOmH9KOok61lZ3tN2vvuT11HYzMqUsouZC3OZPEjlLjWD0u6lufrdEXl
	vTdjhfDg/SuqWdScS9TXJRJZshPqpoMf7N2GyuTs5U3ba/55VUWp5RO+k4DaMaxJiWpLeNZQ9B5+w
	5ST++61sBrI+hveGpNp/O7RR61JrARMIuKQuzQ7DQIn/18GanZ20tOCkkPM6J1j/BRH+EtauVyhLj
	GVPYdGgDeojCTHrgnfGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5nA-0000eh-4z; Tue, 21 May 2019 14:31:00 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5n1-0000du-QC
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:30:53 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 3FF9C240006;
 Tue, 21 May 2019 14:30:26 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 00/10] Enable per-port SATA interrupts and drop a hack in
 the IRQ subsystem
Date: Tue, 21 May 2019 16:30:13 +0200
Message-Id: <20190521143023.31810-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073052_155714_89AC2484 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-ide@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpTb21lIHRpbWUgYWdvLCB3aGVuIHRoZSBpbml0aWFsIHN1cHBvcnQgZm9yIEFybWFk
YSBDUDExMCB3YXMKY29udHJpYnV0ZWQsIHRoZSBTQVRBIGNvcmUgd2FzIG5vdCBhYmxlIHRvIGhh
bmRsZSBwZXItcG9ydAppbnRlcnJ1cHRzLiBEZXNwaXRlIHRoZSBoYXJkd2FyZSByZWFsaXR5LCB0
aGUgZGV2aWNlIHRyZWUgb25seQpyZXByZXNlbnRzIG9uZSBtYWluIGludGVycnVwdCBmb3IgdGhl
IHR3byBwb3J0cy4gSGF2aW5nIGJvdGggU0FUQQpwb3J0cyBlbmFibGVkIGF0IHRoZSBzYW1lIHRp
bWUgaGFzIGJlZW4gYWNoaWV2ZWQgYnkgYSBoYWNrIGluIHRoZSBJQ1UKZHJpdmVyKDEpIHRoYXQg
ZmFrZWQgdGhlIHVzZSBvZiB0aGUgdHdvIGludGVycnVwdHMsIG5vIG1hdHRlciB3aGljaApTQVRB
IHBvcnQgd2FzIGluIHVzZS4KCk5vdyB0aGF0IHRoZSBTQVRBIGNvcmUgaXMgcmVhZHkgdG8gaGFu
ZGxlIG1vcmUgdGhhbiBvbmUgaW50ZXJydXB0LAp0aGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9y
IGl0IGluIHRoZSBsaWJhaGNpX3BsYXRmb3JtIGNvZGUuIFRoZQpDUDExMCBkZXZpY2UgdHJlZSBt
dXN0IGJlIHVwZGF0ZWQgdG8gcmVmbGVjdCB0aGUgdHdvIFNBVEEgcG9ydHMKYXZhaWxhYmxlIGFu
ZCB0aGVpciByZXNwZWN0aXZlIGludGVycnVwdHMuIFRvIGRvIG5vdCBicmVhayBEVCBiYWNrd2Fy
ZApjb21wYXRpYmlsaXR5LCB0aGUgYWhjaV9wbGF0Zm9ybSBkcml2ZXIgbm93IGVtYmVkcyBhIHNw
ZWNpYWwgcXVpcmsKd2hpY2ggY2hlY2tzIGlmIHRoZSBEVCBpcyB2YWxpZCAob25seSBmb3IgQThr
IGNvbXBhdGlibGUpIGFuZCwgaWYKbmVlZGVkLCBjcmVhdGVzIHRoZSB0d28gbWlzc2luZyBzdWIt
bm9kZXMsIGFuZCBhc3NpZ24gdGhlbSB0aGUKcmVsZXZhbnQgInJlZyIgYW5kICJpbnRlcnJ1cHRz
IiBwcm9wZXJ0aWVzLCBiZWZvcmUgcmVtb3ZpbmcgdGhlIG1haW4KU0FUQSBub2RlICJpbnRlcnJ1
cHRzIiBvbmUuCgoKVGhhbmtzLApNaXF1w6hsCgooMSkgVGhlIElDVSBpcyBhbiBpcnFjaGlwIGFn
Z3JlZ2F0aW5nIHRoZSBDUDExMCAoc291dGgtYnJpZGdlKQppbnRlcnJ1cHRzIGludG8gTVNJcyBm
b3IgdGhlIEFQODA2IChub3J0aC1icmlkZ2UpLgoKQ2hhbmdlcyBpbiB2NAo9PT09PT09PT09PT09
CiogUmViYXNlIG9uIHRvcCBvZiB2NS4yLXJjMQoqIHMvQVJNNjQvYXJtNjQvIGluIHRoZSBEVCBj
aGFuZ2UgY29tbWl0IHRpdGxlLgoKQ2hhbmdlcyBpbiB2Mwo9PT09PT09PT09PT09CiogUmVtb3Zl
ZCB1c2VsZXNzIGxvY2tpbmcgd2hlbiBhY2tpbmcgdGhlIFNBVEEgaG9zdCBJUlFfU1RBVCBiaXQu
CiogQXMgc3BvdHRlZCBieSBIYW5zLCBkbyBub3QgZW5hYmxlIHRoZSBBSENJX0hGTEFHX01VTFRJ
X01TSSBmbGFnIG9ubHkKICBpZiBtb3JlIHRoYW4gb25lIHBvcnQgaXMgZW5hYmxlZCwgRFRzIG1p
Z2h0IGRlY2xhcmUgb25seSBvbmUKICBpbnRlcnJ1cHQgYW5kIGhhdmUgbXVsdGlwbGUgcG9ydHMu
IEFkZGVkIEhhbnMnIFJldmlld2VkLWJ5IHRhZy4KKiBBZGRlZCBSb2IncyBSZXZpZXdlZC1ieSB0
YWdzLgoqIEFkZGVkIGV4cGxpY2l0IHJlZmVyZW5jZXMgdG8gdGhlICdEZXZpY2UgVHJlZScgYmVp
bmcgdGhlIGN1bHByaXQKICBmb3IgdGhlIGhhY2tzIHdoaWNoIGFyZSBiZWluZyB0cmVhdGVkIGlu
IHBhdGNoICJhdGE6IGFoY2k6IG12ZWJ1OgogIEFkZCBzdXBwb3J0IGZvciBBOGsgbGVnYWN5IGJp
bmRpbmdzIiBhcyBzdWdnZXN0ZWQgYnkgTWFyYy4KKiBNb2RpZmllZCBhbGwgRFRzIHRvIGF2b2lk
IGVuYWJsaW5nL2Rpc2FibGluZyB0aGUgU0FUQSBwb3J0cwogIGluZGVwZW5kZW50bHksIHdoaWNo
IGRvZXMgbm90IHdvcmsuIEVpdGhlciBib3RoIHBvcnRzIGFyZSBlbmFibGVkLCBvcgogIG5vbmUu
IFRlc3RlZCBvbiBNYWNjaGlhdG9CaW4gdGhhdCBhbGwgdGhyZWUgYXZhaWxhYmUgcG9ydHMgb24g
dGhlCiAgYm9hcmQgYXJlIGZ1bmN0aW9uYWwuCgpDaGFuZ2VzIGluIHYyCj09PT09PT09PT09PT0K
KiBJbiB0aGUgQUhDSSB3b3JsZCwgdGhlICdpcnEnIGlzIG5vdyBhbiAnKmlycXMnIGFycmF5LCBJ
IGVuc3VyZWQgaXQKICBpcyBhbGxvY2F0ZWQgZXZlbiB3aGVuIG5vdCB1c2luZyAqX3BsYXRmb3Jt
IGRyaXZlcnMuCiogTW92ZWQgdGhlIHdob2xlIGxvZ2ljIGZyb20gdGhlIGdlbmVyaWMgYWhjaV9w
bGF0Zm9ybS5jIGRyaXZlciB0byB0aGUKICBNYXJ2ZWxsJ3MgYWhjaV9tdmVidS5jIGRyaXZlci4K
KiBEcm9wcGVkIHRoZSB3aG9sZSBEVCBtYW5pcHVsYXRpb24gcXVpcmsuCiogSW5zdGVhZCB1c2Vk
IGEgaGFjayB0byBjb25maWd1cmUgYm90aCBpbnRlcnJ1cHRzIHdoZW4gdXNpbmcgdGhlCiAgZGVw
cmVjYXRlZCBiaW5kaW5ncywgdGhpcyBoYWNrIGlzIGE4ayBzcGVjaWZpYyBidXQgdGhlcmUgaXMg
YSBmbGFnCiAgdGhhdCBpcyBwYXNzZWQgdG8gdGhlIGNvcmUgZHVyaW5nIHRoZSBhaGNpX3BsYXRm
b3JtX2dldF9yZXNvdXJjZXMoKQogIHRvIGluZGljYXRlIHRoYXQgdGhlIG51bWJlciBvZiBwb3J0
cyBtdXN0IGJlIGZvcmNlZCB0byAyIG5vIG1hdHRlcgogIHRoZSBudW1iZXIgb2YgY2hpbGQgbm9k
ZXMuCiogVGhlIEE4ayBiYXNlZCBDbGVhcmZvZy1HVCBhY3R1YWxseSB1c2VzIHRoZSBTQVRBIElQ
IChCYXJ1Y2gncyBpbmZvKQogIHNvIGRvIG5vdCByZW1vdmUgdGhlIFNBVEEgbm9kZSBmcm9tIHRo
ZSBEVC4gSW5zdGVhZCwgY2hhbmdlIHRoZSBEVFMKICB0byBmaXQgdGhlIG5ldyBiaW5kaW5ncyAo
dGhlIGJvYXJkIG9ubHkgdXNlcyB0aGUgc2Vjb25kIHBvcnQgYXQKICBvZmZzZXQgMSkuCiogQWRk
ZWQgYmluZGluZ3MgZG9jdW1lbnRhdGlvbiBhYm91dCB0aGUgQThrIEFIQ0kgY29tcGF0aWJsZSAo
ZXhpc3RpbmcKICBpbiBEVHMsIG1pc3NpbmcgaW4gdGhlIGRvYykuCiogU0FUQSBTdWItbm9kZXMg
cmVwcmVzZW50aW5nIHBvcnRzIGFscmVhZHkgYXJlIGRvY3VtZW50ZWQsIEkganVzdAogIGFkZGVk
IGEgbWVudGlvbiB0aGF0IHRoZXkgY2FuIGFsc28gaGF2ZSBhbiBpbnRlcnJ1cHRzIHByb3BlcnR5
IHdoaWNoCiAgaXMgbXV0dWFsbHkgZXhjbHVzaXZlIHdpdGggdGhlIHJvb3QgU0FUQSBub2RlLgoK
Ck1pcXVlbCBSYXluYWwgKDkpOgogIGF0YTogbGliYWhjaTogRW5zdXJlIHRoZSBob3N0IGludGVy
cnVwdCBzdGF0dXMgYml0cyBhcmUgY2xlYXJlZAogIGF0YTogYWhjaTogU3VwcG9ydCBwZXItcG9y
dCBpbnRlcnJ1cHRzCiAgZHQtYmluZGluZ3M6IGF0YTogVXBkYXRlIGFoY2kgYmluZGluZ3Mgd2l0
aCBwb3NzaWJsZSBwZXItcG9ydAogICAgaW50ZXJydXB0cwogIGF0YTogYWhjaTogbXZlYnU6IFJl
bmFtZSBhIHBsYXRmb3JtIGRhdGEgZmxhZwogIGF0YTogYWhjaTogbXZlYnU6IEFkZCBhIHBhcmFt
ZXRlciB0byBhIHBsYXRmb3JtIGRhdGEgY2FsbGJhY2sKICBkdC1iaW5kaW5nczogYXRhOiBVcGRh
dGUgYWhjaV9tdmVidSBiaW5kaW5ncwogIGF0YTogYWhjaTogbXZlYnU6IFN1cHBvcnQgQThrIGNv
bXBhdGlibGUKICBhdGE6IGFoY2k6IG12ZWJ1OiBBZGQgc3VwcG9ydCBmb3IgQThrIGxlZ2FjeSBE
VCBiaW5kaW5ncwogIGlycWNoaXAvaXJxLW12ZWJ1LWljdTogUmVtb3ZlIHRoZSBkb3VibGUgU0FU
QSBwb3J0cyBpbnRlcnJ1cHQgaGFjawoKVGhvbWFzIFBldGF6em9uaSAoMSk6CiAgYXJtNjQ6IGR0
czogbWFydmVsbDogYXJtYWRhLWNwMTEwOiBTd2l0Y2ggdG8gcGVyLXBvcnQgU0FUQSBpbnRlcnJ1
cHRzCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXRhL2FoY2ktcGxhdGZvcm0udHh0IHwgIDcg
KysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtY3AxMTAuZHRzaSB8IDEzICsr
Ky0KIGRyaXZlcnMvYXRhL2FjYXJkLWFoY2kuYyAgICAgICAgICAgICAgICAgICAgICB8ICAyICst
CiBkcml2ZXJzL2F0YS9haGNpLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgOCArKy0K
IGRyaXZlcnMvYXRhL2FoY2kuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAzICstCiBk
cml2ZXJzL2F0YS9haGNpX212ZWJ1LmMgICAgICAgICAgICAgICAgICAgICAgfCA2MSArKysrKysr
KysrKysrLS0tCiBkcml2ZXJzL2F0YS9saWJhaGNpLmMgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgNyArLQogZHJpdmVycy9hdGEvbGliYWhjaV9wbGF0Zm9ybS5jICAgICAgICAgICAgICAgIHwg
NzAgKysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9hdGEvc2F0YV9oaWdoYmFuay5jICAgICAg
ICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvaXJxY2hpcC9pcnEtbXZlYnUtaWN1LmMgICAg
ICAgICAgICAgICB8IDE4IC0tLS0tCiBpbmNsdWRlL2xpbnV4L2FoY2lfcGxhdGZvcm0uaCAgICAg
ICAgICAgICAgICAgfCAgMSArCiAxMSBmaWxlcyBjaGFuZ2VkLCAxNDggaW5zZXJ0aW9ucygrKSwg
NDQgZGVsZXRpb25zKC0pCgotLSAKMi4xOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
