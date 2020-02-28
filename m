Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258E8173F47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oYOLi5861BZu2fyG14/BZvSAPVzUrAgQOZcUMkKrBqA=; b=AdYe44IeB7G+EZvZ51hEGoOYP
	fjrJtw2dRWkk+/BCHWSaiEoU9bbMzMnX0AelCIPzLXnrOMUEEDoKhiJ4aOiz+rXvS8B68CDGMZd6S
	CsKXWN+eHBl1TF53kpiSQFhmbJl3AInhJdxt6qCY//Bnw5FnVnrARQAm8eXv2+Y3T3khSxj/gWdIy
	Jul1PFOEYwpajXMSvPit8WvO2xFJ0xR9DFtyVuHYkQhMhYfU2h0fNe6MmNb/xjzsCxXxna26gtzbi
	t1MIHi+gSAFKZHo5FdG4BlEDngBvuxye+xX56w3h/a1/nQfd8EfU6R7EtSadL4ERNc/oAN+gLvkld
	GWRyxndGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kBQ-0000mw-D6; Fri, 28 Feb 2020 18:16:20 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kBH-0000mW-C3
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:16:12 +0000
Received: by mail-pj1-x1041.google.com with SMTP id dw13so1608996pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 10:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=BVlQGMV/dlLGU8gmf4FB65yDuYZrcSYwu3rmOUHQCKU=;
 b=tS9wg1JOmqNfXXI8nSE7wGqf4MWa4f0ygw9aMUvNcOlwmaudIrd1RdgRs5mDtGoulM
 QQnEOv23JAjX9lCxJH8QCkXYo1oUZAI3dR4RZ8ncR/03QZ7Zp0p3zhRvFI7cGX0I59dv
 b4b+j6B1u8Qbelz/2W31Aac7KVddqaR789yUSRTsWJZRzdO2J2a2VK3GX29MaeDUmbQr
 uM+08i0puvKfi6JO/Q9Dm6MQRgqf8zv+5TEb4CSrQhAUm/TgKfNeHEKfVF94pTtgc962
 mulOvvlQ2zW/PuchGstri/gdmsDIBB115xh2IITn/NR3nEEHkSKPxR5yXJdIEDOi9vUT
 DCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=BVlQGMV/dlLGU8gmf4FB65yDuYZrcSYwu3rmOUHQCKU=;
 b=DXoJaSMo64e7daIYAP4QTCHOZfsy1xh9H4zi26N2ib0fFQcxnHbYx6xkMy53KLfHxo
 Y5UDoZP5W9rN4zjk5vworubT5Sifsdz/eYRwbMLq3gvl4OyFgN3OdQntE4ZrVQSEd8rN
 5nJljpYN22ugXpf9v2ODUEPRIBbnPPgB7rudGfGfmQOWhjRRromm1GeJnmEPygt6MlsI
 gnG5qqxc0f4RNw+fKRWkGemUxnO+CVJ+yMZdgZ87fL6bhQRLaCJZadpyal65bUo3vXKE
 ZDzZAoid00+dJJj4OOj7Y4bXllNX2FCG4BK74sS78hqSe4DmJ20sm2HaBrHzrmx3OfSU
 7HTA==
X-Gm-Message-State: APjAAAVco0f7eVs43pmi0ApIJ/dtDRKj2+n8h8sVW0mJbO/v6Z7TCWuj
 BSGBKWOEfYNBZVHdNros2NSKNPBFSus=
X-Google-Smtp-Source: APXvYqwJV6NXOWi/9kpfdOV26a82C6ZHklO6PCZixEzsPy5UNqDSWCPvB0B6NoGHXvzOSey5lcIDFg==
X-Received: by 2002:a17:902:7797:: with SMTP id
 o23mr4889179pll.298.1582913769852; 
 Fri, 28 Feb 2020 10:16:09 -0800 (PST)
Received: from [172.30.88.172] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id p17sm6148220pff.116.2020.02.28.10.16.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 10:16:08 -0800 (PST)
Subject: Re: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
 <20200215194136.10131-3-slongerbeam@gmail.com>
 <20200225150721.GO5379@paasikivi.fi.intel.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <c9b232d6-07c9-d13d-18aa-3e1e640aadc2@gmail.com>
Date: Fri, 28 Feb 2020 10:16:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225150721.GO5379@paasikivi.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_101611_417683_4BB72AF6 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FrYXJpLAoKT24gMi8yNS8yMCA3OjA3IEFNLCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4gSGkg
U3RldmUsCj4KPiBPbiBTYXQsIEZlYiAxNSwgMjAyMCBhdCAxMTo0MToyMUFNIC0wODAwLCBTdGV2
ZSBMb25nZXJiZWFtIHdyb3RlOgo+PiBJbnN0ZWFkIG9mIGFsbG9jYXRpbmcgYSBub3RpZmllciBp
biB2NGwyX2FzeW5jX3JlZ2lzdGVyX2Z3bm9kZV9zdWJkZXYoKSwKPj4gaGF2ZSB0aGUgY2FsbGVy
IHByb3ZpZGUgb25lLiBUaGlzIGFsbG93cyB0aGUgY2FsbGVyIHRvIGltcGxlbWVudAo+PiBub3Rp
ZmllciBvcHMgKGJpbmQsIHVuYmluZCkuCj4+Cj4+IFRoZSBjYWxsZXIgaXMgbm93IHJlc3BvbnNp
YmxlIGZvciBmaXJzdCBpbml0aWFsaXppbmcgaXRzIG5vdGlmaWVyIHdpdGggYQo+PiBjYWxsIHRv
IHY0bDJfYXN5bmNfbm90aWZpZXJfaW5pdCgpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdGV2ZSBM
b25nZXJiZWFtIDxzbG9uZ2VyYmVhbUBnbWFpbC5jb20+Cj4gSW5zdGVhZCBvZiBpbXByb3Zpbmcg
djRsMl9hc3luY19yZWdpc3Rlcl9md25vZGVfc3ViZGV2KCksIGNvdWxkIHlvdSBjb252ZXJ0Cj4g
dGhlIHVzZXJzIChJTVggZHJpdmVyIGluIHRoaXMgY2FzZSkgdG8gY2FsbCB0aGUgcHJlZmVycmVk
IEFQSXMgaW5zdGVhZD8gQXMKPiB0aGUgbGluZXMgYmVsb3cgc2hvdywgdjRsMl9hc3luY19yZWdp
c3Rlcl9md25vZGVfc3ViZGV2KCkgaGFzIG9ubHkgdHdvCj4gdXNlcnMgbGVmdCAtLS0gdGhlIG90
aGVyIG9uZSBvZiB3aGljaCBpcyB0aGUgSU1YIGRyaXZlci4gQWZ0ZXIgY29udmVydGluZwo+IHRo
ZXNlIHR3bywgd2UgY291bGQganVzdCByZW1vdmUgdGhpcyBBUEkuCj4KPiBTZWUgZS5nLiBkcml2
ZXJzL21lZGlhL3BjaS9pbnRlbC9pcHUzL2lwdTMtY2lvMi5jIGFuZAo+IGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vb21hcDNpc3AvaXNwLmMgZm9yIGV4YW1wbGVzLgoKU2hvdWxkbid0IHY0bDJfYXN5
bmNfbm90aWZpZXJfYWRkX2Z3bm9kZV9yZW1vdGVfc3ViZGV2KCkgY2hlY2sgZm9yIHRoZSAKYXZh
aWxhYmlsaXR5IG9mIHRoZSByZW1vdGUgYmVmb3JlIGFkZGluZyBpdCB0byB0aGUgbm90aWZpZXIn
cyBhc2QgbGlzdCwgCmFzIGluOgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3Jl
L3Y0bDItYXN5bmMuYyAKYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWFzeW5jLmMKaW5k
ZXggOGJkZTMzYzIxY2U0Li5iNDhlZDY4YzZjNmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
djRsMi1jb3JlL3Y0bDItYXN5bmMuYworKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwy
LWFzeW5jLmMKQEAgLTYxNSw3ICs2MTUsNyBAQCB2NGwyX2FzeW5jX25vdGlmaWVyX2FkZF9md25v
ZGVfcmVtb3RlX3N1YmRldihzdHJ1Y3QgCnY0bDJfYXN5bmNfbm90aWZpZXIgKm5vdGlmLAogwqDC
oMKgwqDCoMKgwqAgaW50IHJldDsKCiDCoMKgwqDCoMKgwqDCoCByZW1vdGUgPSBmd25vZGVfZ3Jh
cGhfZ2V0X3JlbW90ZV9wb3J0X3BhcmVudChlbmRwb2ludCk7Ci3CoMKgwqDCoMKgwqAgaWYgKCFy
ZW1vdGUpCivCoMKgwqDCoMKgwqAgaWYgKCFyZW1vdGUgfHwgIWZ3bm9kZV9kZXZpY2VfaXNfYXZh
aWxhYmxlKHJlbW90ZSkpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1F
Tk9UQ09OTjsKCiDCoMKgwqDCoMKgwqDCoCBhc2QtPm1hdGNoX3R5cGUgPSBWNEwyX0FTWU5DX01B
VENIX0ZXTk9ERTsKCgpPdGhlcndpc2Ugd2UgYXJlIGJhY2sgdG8gdGhlIHByb2JsZW0gdGhhdCB0
aGUgbm90aWZpZXIgd2lsbCBuZXZlciAKY29tcGxldGUgYmVjYXVzZSB0aGUgcmVtb3RlJ3MgZHJp
dmVyIGlzIG5vdCBwcm9iZWQuCgpTdGV2ZQoKPgo+PiAtLS0KPj4gQ2hhbmdlcyBpbiB2MzoKPj4g
LSBhZGRlZCB0aGUgbWlzc2luZyBjYWxscyB0byB1bnJlZ2lzdGVyL2NsZWFudXAgdGhlIG5ldyBz
dWJkZXYgbm90aWZpZXJzLgo+PiAgICBSZXBvcnRlZCBieSBSdWkgU2lsdmEuCj4+IC0tLQo+PiAg
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmlkZW8tbXV4LmMgICAgICAgICB8ICA4ICsrKysrKyst
Cj4+ICAgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1md25vZGUuYyAgICAgIHwgMTEgKy0t
LS0tLS0tLS0KPj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDYtbWlwaS1jc2kyLmMg
fCAgNyArKysrKystCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNz
aS5jIHwgIDcgKysrKysrLQo+PiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1taXBp
LWNzaXMuYyB8ICA5ICsrKysrKysrLQo+PiAgIGluY2x1ZGUvbWVkaWEvdjRsMi1md25vZGUuaCAg
ICAgICAgICAgICAgICB8IDEyICsrKysrKysrLS0tLQo+PiAgIDYgZmlsZXMgY2hhbmdlZCwgMzYg
aW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
