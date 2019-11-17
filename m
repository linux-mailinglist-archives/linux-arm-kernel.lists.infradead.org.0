Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B96FF8CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 12:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYcBQHYEqWPuRMmc8r6GgKjKW1Pma9BoHAEK5v1Obrc=; b=Zx9e/HXZRfnfoY
	5eh2iNIYo1AlZzn4JBWc18mOeWJr7X9Ztz6gFDXIyh2i/3cvqs3M/H3X8iowCki4sEGBaB8Dug9kA
	wnvJUJ9p2rUnU4nDshDnVxbHYNqIqiqiRI4WKRvRnDTexTkYt/jK+UDmeHMJ1YHVbyMCV9L4xVLb0
	FzuOI1XRo6NrMXTwOBOYFepl82IQprLVufXDN+9V1NJlBGZtm2XOMSxXj8e5EdEUK2LwtqSSP2Gr3
	vcFwVPkREyEUpBz3yP16uUrHlB5if9xpk9gDcg32VRr7ZbAMoypBQxGp63VQ8kBx4TpSGR6PvTI8s
	A74nrhFP8VQg7YOMw7gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWIK7-0006o4-Me; Sun, 17 Nov 2019 11:02:31 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWIJx-0006nh-IW; Sun, 17 Nov 2019 11:02:22 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iWIJs-0002Zx-8i; Sun, 17 Nov 2019 12:02:16 +0100
Date: Sun, 17 Nov 2019 11:02:14 +0000
From: Marc Zyngier <maz@kernel.org>
To: Andreas =?UTF-8?Q?F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v3 8/8] ARM: realtek: Enable RTD1195 arch timer
Message-ID: <20191117110214.6b160b2e@why>
In-Reply-To: <20191117072109.20402-9-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-9-afaerber@suse.de>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: afaerber@suse.de, linux-realtek-soc@lists.infradead.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_030221_756962_27353100 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxNyBOb3YgMjAxOSAwODoyMTowOSArMDEwMApBbmRyZWFzIEbDpHJiZXIgPGFmYWVy
YmVyQHN1c2UuZGU+IHdyb3RlOgoKPiBXaXRob3V0IHRoaXMgbWFnaWMgd3JpdGUgdGhlIHRpbWVy
IGRvZXNuJ3Qgd29yayBhbmQgYm9vdCBnZXRzIHN0dWNrLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFu
ZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAtLS0KPiAgV2hhdCBpcyB0aGUgbmFt
ZSBvZiB0aGUgcmVnaXN0ZXIgMHhmZjAxODAwMD8KPiAgSXMgMHgxIGEgQklUKDApIHdyaXRlLCBv
ciBob3cgYXJlIHRoZSByZWdpc3RlciBiaXRzIGRlZmluZWQ/Cj4gIElzIHRoaXMgYSByZXNldCBv
ciBhIGNsb2NrIGdhdGU/IEhvdyBzaG91bGQgd2UgbW9kZWwgaXQgaW4gRFQ/Cj4gIAo+ICB2MiAt
PiB2MzogVW5jaGFuZ2VkCj4gIAo+ICB2MjogTmV3Cj4gIAo+ICBhcmNoL2FybS9tYWNoLXJlYWx0
ZWsvcnRkMTE5NS5jIHwgMTYgKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTYg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRk
MTE5NS5jIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwo+IGluZGV4IGIzMWE0MDY2
YmU4Ny4uMDUzMjM3OWM3NGY1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtcmVhbHRlay9y
dGQxMTk1LmMKPiArKysgYi9hcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jCj4gQEAgLTUs
NiArNSw5IEBACj4gICAqIENvcHlyaWdodCAoYykgMjAxNy0yMDE5IEFuZHJlYXMgRsOkcmJlcgo+
ICAgKi8KPiAgCj4gKyNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L2Nsb2Nrc291cmNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvbWVtYmxvY2suaD4KPiAgI2luY2x1ZGUgPGFzbS9tYWNoL2FyY2guaD4KPiAgCj4g
QEAgLTI0LDYgKzI3LDE4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBydGQxMTk1X3Jlc2VydmUodm9p
ZCkKPiAgCXJ0ZDExOTVfbWVtYmxvY2tfcmVtb3ZlKDB4MTgxMDAwMDAsIDB4MDEwMDAwMDApOwo+
ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBfX2luaXQgcnRkMTE5NV9pbml0X3RpbWUodm9pZCkKPiAr
ewo+ICsJdm9pZCBfX2lvbWVtICpiYXNlOwo+ICsKPiArCWJhc2UgPSBpb3JlbWFwKDB4ZmYwMTgw
MDAsIDQpOwo+ICsJd3JpdGVsKDB4MSwgYmFzZSk7Cj4gKwlpb3VubWFwKGJhc2UpOwo+ICsKPiAr
CW9mX2Nsa19pbml0KE5VTEwpOwo+ICsJdGltZXJfcHJvYmUoKTsKPiArfQoKR2F3ZC4uLiBXaHkg
aXNuJ3QgdGhpcyBzZXQgZnJvbSB0aGUgYm9vdGxvYWRlcj8gQnkgdGhlIHRpbWUgdGhlIGtlcm5l
bApzdGFydHMsIGV2ZXJ5dGhpbmcgc2hvdWxkIGJlIHVwIGFuZCBydW5uaW5nLiBXaGF0IGlzIGl0
IGdvaW5nIHRvIGRvCndoZW4geW91IGtleGVjPyBTaG91bGRuJ3QgdGhpcyBiZSBhIHJlYWQvbW9k
aWZ5L3dyaXRlIHNlcXVlbmNlPwoKCU0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNt
ZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
