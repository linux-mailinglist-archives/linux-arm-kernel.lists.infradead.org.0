Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06984164BE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 18:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdinKa6lldOgevqlDSdyXr8GnnFRrjDmSQBkWy+TGBQ=; b=OruY+uhQjJw2fq
	+vsIQ6QBODEIaeQshw4nyrjoqDSaRQCNGVl7++GhTYcgT09ukNojO1xi3M1zoFeL10yAd9H2lwYAB
	vQpk4sRNUa9cWyd9EuORj+gzfAS6wl1zBNCXXOcINWbdUlrNQ0u3R68Nlambc+qK3e/Lp0oRQTwyz
	qxKFESCDVxjeOcNOXSFMJBvPPBkxLsSxB+voA7hP7jQRB0QxeY16s939zgDz/6IlDeJ7PD46zA2ra
	Cq+FkuA/OENvyIX9KJxzcPo9fcJys4yBT9kG+Sjv7n5HvLO7Zf6at5az4XbzGqiMeDuSo3LgKHoTW
	3Hor+HvhUNx7yS+sBB9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4T9l-0000ig-Hq; Wed, 19 Feb 2020 17:29:05 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4T9a-0000i7-N9
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 17:28:56 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48N4Sy0XBmz1qrMV;
 Wed, 19 Feb 2020 18:28:50 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48N4Sx6ZC6z1qx0K;
 Wed, 19 Feb 2020 18:28:49 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 3JamWYMpJdr7; Wed, 19 Feb 2020 18:28:48 +0100 (CET)
X-Auth-Info: +eqKCJ9/Kpkal2WS3YfV5JluqC+AvVPDD2Bszf4YLMU=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 19 Feb 2020 18:28:48 +0100 (CET)
Subject: Re: [PATCH v2 0/2] Add GPIO level-sensitive interrupt support
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <b5a2dcab-06db-4863-ac5c-28f4ef0c5ac9@denx.de>
 <32e409e6-d475-802a-6a90-c8ba6c0cf6d5@st.com>
 <088e786c-511e-cf95-fc41-5343b8134407@denx.de>
 <d271f09b-6391-779a-b133-66bcdfbb0ec6@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <38e7cf57-2f89-7615-0841-316355a9102f@denx.de>
Date: Wed, 19 Feb 2020 18:24:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <d271f09b-6391-779a-b133-66bcdfbb0ec6@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_092855_053726_A4C60B65 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMi8xOS8yMCAxMDoyMCBBTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKSGksClsuLi5dCj4+
Pj4+IFRoaXMgc2VyaWVzIGFkZHMgdGhlIHBvc3NpYmlsaXR5IHRvIGhhbmRsZSBncGlvIGludGVy
cnVwdHMgb24gbGV2ZWwuCj4+Pj4+Cj4+Pj4+IEdQSU8gaGFyZHdhcmUgYmxvY2sgaXMgZGlyZWN0
bHkgbGlua2VkIHRvIEVYVEkgYmxvY2sgYnV0IEVYVEkgaGFuZGxlcwo+Pj4+PiBleHRlcm5hbCBp
bnRlcnJ1cHRzIG9ubHkgb24gZWRnZS4gVG8gYmUgYWJsZSB0byBoYW5kbGUgR1BJTwo+Pj4+PiBp
bnRlcnJ1cHQgb24KPj4+Pj4gbGV2ZWwgYSAiaGFjayIgaXMgZG9uZSBpbiBncGlvIGlycSBjaGlw
OiBwYXJlbnQgaW50ZXJydXB0IChleHRpIGlycQo+Pj4+PiBjaGlwKQo+Pj4+PiBpcyByZXRyaWdn
ZXJlZCBmb2xsb3dpbmcgaW50ZXJydXB0IHR5cGUgYW5kIGdwaW8gbGluZSB2YWx1ZS4KPj4+Pj4K
Pj4+Pj4gSW4gZXh0aSBpcnEgY2hpcCwgcmV0cmlnZ2VyIG9wcyBmdW5jdGlvbiBpcyBhZGRlZC4K
Pj4+Pgo+Pj4+IGJ0dy4gdGhpcyBtaWdodCBiZSB1bnJlbGF0ZWQsIGJ1dCBpcyBpdCBwb3NzaWJs
ZSB0byBoYXZlIGUuZy4gZ3Bpb0MyCj4+Pj4gc2V0Cj4+Pj4gYXMgdHJpZ2dlci1sZXZlbC1sb3cg
YW5kIGdwaW9EMiBzZXQgYXMgdHJpZ2dlci1lZGdlLWZhbGxpbmcgPyBJdCBzZWVtcwo+Pj4+IDhl
YjJkZmVlOWZiMSAoInBpbmN0cmw6IHN0bTMyOiBhZGQgbG9jayBtZWNoYW5pc20gZm9yIGlycW11
eAo+Pj4+IHNlbGVjdGlvbiIpCj4+Pj4gcHJldmVudHMgdGhhdC4KPj4+Pgo+Pj4KPj4+IE5vIGl0
J3Mgbm90IHBvc3NpYmxlLiBFYWNoIGdwaW8gbGluZSBkb2Vzbid0IGhhdmUgYSBkZWRpY2F0ZWQg
RXh0aSBsaW5lCj4+PiBFYWNoIEV4dGkgbGluZSBpcyBtdXhpbmcgYmV0d2VlbiBncGlvIGJhbmtz
Lgo+Pgo+PiBPSywgdGhhdCBjb25maXJtcyBteSBhc3N1bXB0aW9uLgo+Pgo+Pj4gTWFwcGluZyBp
cyBkb25lIGFzIGZvbGxvd2luZzoKPj4+Cj4+PiBFWFRJMCA9IEEwIG9yIEIwIG9yIEMwIC4uLi4g
b3IgWjAgOiBzZWxlY3RlZCBieSBNdXgKPj4+IEVYVEkxID0gQTEgb3IgQjEgb3IgQzEgLi4uLm9y
IFoxIDogc2VsZWN0ZWQgYnkgTXV4Cj4+PiBFWFRJMiA9IEEyIG9yIEIyIG9yIEMyIC4uLi5vciBa
MiA6IHNlbGVjdGVkIGJ5IE11eAo+Pj4gLi4uCj4+Cj4+IElzIGl0IGF0IGxlYXN0IHBvc3NpYmxl
IHRvIGhhdmUgSVJRcyBvZiB0aGUgc2FtZSB0eXBlIG9uIHRoZSBzYW1lIGV4dGkKPj4gbGluZT8g
RS5nLiBncGlvQTIgb2YgdHJpZ2dlci1lZGdlLWZhbGxpbmcgYW5kIGdwaW9CMgo+PiB0cmlnZ2Vy
LWVkZ2UtZmFsbGluZyA/Cj4+Cj4gCj4gU29ycnkgSSBkb24ndCBjYXRjaCB5b3VyIHBvaW50LiBJ
ZiB5b3UgYWxyZWFkeSBzdWNjZWVkIHRvIGdldCBncGlvQTIsCj4gdGhlbiB5b3Ugd2lsbCBmYWls
ZWQgdG8gZ2V0IGdwaW9CMiBidXQgbG9va2luZyBhdCBmdW5jdGlvbiBjYWxsIHN0YWNrIHdlCj4g
Y291bGQgZ2V0IGFuIG90aGVyIGlzc3VlLgoKQ29uc2lkZXJpbmcgdGhlIEVYVEkgbGluZSBsaW1p
dGF0aW9ucywgSSdkIGxpa2UgdG8ga25vdyB3aGF0IGtpbmQgb2YgSVJRCmlucHV0IGNvbmZpZ3Vy
YXRpb24gaXMgYWxsb3dlZC92YWxpZCBhbmQgd2hhdCBraW5kIG9mIGNvbmZpZ3VyYXRpb24gaXMK
bm90IHZhbGlkLgoKPiBMZXRzIHRha2UgZXhhbXBsZSB3aGVyZSB5b3Ugc3VjY2VlZCB0byBnZXQg
Z3Bpb2EyIGFzIGludGVycnVwdCAodXNpbmcKPiBpbnRlcnJ1cHQgYmluZGluZ3MpIGFuZCBub3cg
eW91IHRyeSB0byBkbyB0aGUgc2FtZSBmb3IgZ3Bpb2IyLCB5b3Ugd2lsbAo+IGhhdmUgKHJvdWdo
bHkpOgo+IAo+IHN0bTMyX2dwaW9faXJxX3JlcXVlc3RfcmVzb3VyY2VzIChmb3IgZ3Bpb2IyKSAt
LT4gc3VjY2VlZAo+IAo+IHN0bTMyX2dwaW9fc2V0X3R5cGUKPiDCoHwKPiDCoHwtLT4gc3RtMzJf
ZXh0aV9zZXRfdHlwZSB0eXBlIC0+IGNoYW5nZSBleHRpIGxpbmUgMiB0cmlnZ2VyIHJlZ2lzdGVy
cwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB3aXRoIGdwaW9iMiBiaW5kaW5nLgo+IAo+IHN0bTMyX2dwaW9fZG9tYWlu
X2FjdGl2YXRlIC0tPiBmYWlsZWQgYXMgZXh0aSBsaW5lMiBpcyBhbHJlYWR5IHVzZWQKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnkgZ3Bpb2EyLgo+IAo+IFNvIGFzIHN0
bTMyX2dwaW9fc2V0X3R5cGUgaXMgY2FsbGVkIGJlZm9yZSBjaGVja2luZyB0aGFuIGV4dGkgbGlu
ZSBpcwo+IGF2YWlsYWJsZSwgdHlwZSBjb3VsZCBiZSBjaGFuZ2VkIGFuZCBiZWhhdmlvciBvZiBn
cGlvYTIgaW50ZXJydXB0IGJyb2tlbi4KPiAKPiBTb2x1dGlvbiB3b3VsZCBiZSB0byBtb3ZlIHRo
ZSBleHRpIGxpbmUgbXV4IGNoZWNrIGZyb20KPiBzdG0zMl9ncGlvX2RvbWFpbl9hY3RpdmF0ZSB0
b8KgIHN0bTMyX2dwaW9faXJxX3JlcXVlc3RfcmVzb3VyY2VzIGNhbGxiYWNrLgoKU28gdGhlIGhh
cmR3YXJlIGRvZXMgc3VwcG9ydCB1c2luZyBib3RoIGdwaW9BMiBhbmQgZ3Bpb0IyIGFzIGFuCmlu
dGVycnVwdCBzb3VyY2UsIGZvciBkaWZmZXJlbnQgZHJpdmVycywgaWYgdGhleSBhcmUgb2YgdGhl
IHNhbWUKaW50ZXJydXB0IHR5cGUuIEV4Y2VwdCB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBk
b2VzIG5vdCBwZXJtaXQgdGhhdC4KCklmIHRoZSBpbnRlcnJ1cHQgdHlwZXMgYXJlIGRpZmZlcmVu
dCwgdGhhdCBpcyBub3Qgc3VwcG9ydGVkIGJ5IHRoZSBoYXJkd2FyZS4KCkNvcnJlY3QgPwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
