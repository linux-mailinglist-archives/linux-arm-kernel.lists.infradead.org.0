Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 826961594E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 17:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVeyQFLqWItE6FfRJQ8Bq6/EyUp7Hho34EBt5rEgaHY=; b=Z4EsP6KPd2GM3U
	hERUwNyDbW0YeAqdGxo5I+ona6GTw82ZNu/rno75EnD/9yIyJ7AmxOQvLRTgcwmu5l8gWIJfHhsmd
	4W+LJW7ETCOIx0cYVA9BUZNatLzZi1wL/sSnqHt1Cu8t5joXHgUpr6yQSmehwRsaUJdvDR+IhMnWr
	becYF0G49xSOAf4StvRuF4L7I+96kuZLs6/0R2NRceztMgvPuG4DYZoLwqqG/sd7De+NlQZ534xWF
	xeaLYOd3HjZ++NP7tnJ9WoYfr8l8Op102ABRVclV/XRrmr8G495z84I10K5rXJPmCp6JT99yjXU7f
	SA9bTUeYrL+rWV6exOyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1YNP-0003Cg-Ru; Tue, 11 Feb 2020 16:27:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1YNH-0001nG-NE
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 16:27:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xXyaLwZDKp89XmLoi0uoRHhsPpzfhDZ+p1t3/b/Z/R8=; b=HbEXLCt/ECh2woIO0R/5S4dCF
 /iiy84L1FrBiUh2hb9BnqG74gO6Ln9oQg8fFKm//pP2OCyZVvds6oj69C0EwnVas1YE2jhDMccLIY
 ZpEc4ZxWgD0OkDj/gBHSph+NS9OrmvG2IxJWZ/2FCeNwhgvYambeGRtn7n9XJDWIAaUlNx9nxRWAo
 0i7rs15eZAYN9QqLm4miqve327kvQEPIGNI9NXD8gWcfx4eCYG/yYRibRmurlfSsz41iPFdrv1YFc
 BZc+kwNFwiqWp70Hq25qTdM2+nToHpu2kt+0lYnfevQ/JZTR6mn/ygdGV3tnkmICpwjSlotpICK2D
 FALjPvHnw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50626)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j1YLB-0005gJ-82; Tue, 11 Feb 2020 16:24:49 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j1YL1-0000ZB-CA; Tue, 11 Feb 2020 16:24:39 +0000
Date: Tue, 11 Feb 2020 16:24:39 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Lehner <stefan-lehner@aon.at>
Subject: Re: SA-1111 USB OHCI driver (Jornada 720) - overcurrent condition
Message-ID: <20200211162439.GJ25745@shell.armlinux.org.uk>
References: <002e01d5ddb1$f5c95520$e15bff60$@at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <002e01d5ddb1$f5c95520$e15bff60$@at>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_082659_900810_A620A6A2 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBGZWIgMDcsIDIwMjAgYXQgMDE6Mjc6MjdQTSArMDEwMCwgU3RlZmFuIExlaG5lciB3
cm90ZToKPiBIZWxsbyEKPiBJIGFtIHRyeWluZyB0byBnZXQgVVNCIEhvc3Qgd29ya2luZyBvbiBt
eSBIUCBKb3JuYWRhIDcyMC4gSSBkaWQgc29tZQo+IGhhcmR3YXJlIG1vZGlmaWNhdGlvbnMgdG8g
YWNjZXNzIHRoZSBVU0IgbGluZXMgb24gdGhlIFNBLTExMTEuIFRoZSBoYXJkd2FyZQo+IHBhcnQg
c2hvdWxkIGJlIG9rLCB3aXJpbmcgaXMgZG9uZSBhcyBkZXNjcmliZWQgaW4gdGhlIFNBLTExMTEg
ZGV2ZWxvcG1lbnQKPiBtb2R1bGUgc2NoZW1hdGljcy4gCj4gVGVzdGVkIG9uIEtlcm5lbCAzLjE2
LjgxIChEZWJpYW4gNSkgYW5kIEtlcm5lbCA0LjguNyB3aXRoIEJYIGVtdWxhdGlvbgo+IChEZWJp
YW4gOSkuCj4gVGhlIGRyaXZlciBsb2FkcyBmaW5lIGFuZCB0dXJucyBvbiB0aGUgVVNCIHBvcnQg
YSBzaG9ydCB0aW1lIGR1cmluZyBib290Lgo+IEJ1dCBhZnRlciB0aGF0IGkgYWx3YXlzIGdldCAg
Imh1YiAxLTA6MS4wOiBvdmVyLWN1cnJlbnQgY29uZGl0aW9uIiBpbiBkbWVzZy4KPiBBbmQgaXQg
dHVybnMgVVNCX1BXUkNOVEwgaGlnaC4gU28gdGhlIFVTQiBwb3dlciBnZXRzIGN1dCBvZmYuCj4g
SSB0ZXN0ZWQgaXQgb24gbXkgbW9kaWZpZWQgbWFpbmJvYXJkIGFuZCBvbiB0d28gdW5tb2RpZmll
ZCBib2FyZHMgd2hpY2ggaGF2ZQo+IHBlciBkZWZhdWx0IFVTQl9QV1JfU0VOU0UgdGllZCB0byAz
LDNWIGhpZ2guIFNvIGZyb20gaGFyZHdhcmUgc2lkZSB0aGVyZSBpcwo+IG5vIGN1cnJlbnQgZHJh
d24gYW5kIG5vIG92ZXJjdXJyZW50IHNpZ25hbCBzZW50IHRvIHRoZSBTQS0xMTExIC4KPiAKPiBB
bnlvbmUgaGFzIGEgZ2x1ZSB3aGF0cyB3cm9uZyBoZXJlPwoKV2VsbCwgaXQgc2VlbXMgdGhpcyBo
YXMgbmV2ZXIgYmVlbiB0ZXN0ZWQgcHJvcGVybHkuICBUaGUgU0ExMTExIGRvY3MKc2F5OgoK4oCi
IFVTQl9QV1JfU0VOU0UgLSBUaGlzIGlzIGEgZGVkaWNhdGVkIGFjdGl2ZSBoaWdoIGlucHV0IHdo
aWNoIGlzCm5vcm1hbGx5IHVzZWQgZm9yIHNlbnNpbmcgcG9ydCBvdmVyIGN1cnJlbnQgZmF1bHQg
Y29uZGl0aW9ucyBvbgp0aGUgVVNCIHBvd2VyIHN1cHBseS4gLi4uCgpTbywgaWYgaXQgaXMgdGll
ZCBoaWdoLCB0aGVuIGJ5IGRlZmF1bHQgaXQgaXMgaW5kaWNhdGluZyBhbiBvdmVyLQpjdXJyZW50
IGNvbmRpdGlvbi4gIFRoZXJlIGlzLCBob3dldmVyLCBhIGJpdCB0aGF0IGNhbiBiZSB1c2VkIHRv
CmludmVydCB0aGlzIHNpZ25hbCwgYml0IDYgb2YgcmVzZXQgcmVnaXN0ZXIuICBUaGUgY29kZSBk
b2VzIHRoaXM6CgogICAgICAgIHVuc2lnbmVkIGludCB1c2JfcnN0ID0gMDsKLi4uCiAgICAgICAg
aWYgKG1hY2hpbmVfaXNfeHA4NjAoKSB8fAogICAgICAgICAgICBtYWNoaW5lX2lzX2Fzc2FiZXQo
KSB8fAogICAgICAgICAgICBtYWNoaW5lX2lzX3BmczE2OCgpIHx8CiAgICAgICAgICAgIG1hY2hp
bmVfaXNfYmFkZ2U0KCkpCiAgICAgICAgICAgICAgICB1c2JfcnN0ID0gVVNCX1JFU0VUX1BXUlNF
TlNFTE9XIHwgVVNCX1JFU0VUX1BXUkNUUkxMT1c7CgogICAgICAgIC8qCiAgICAgICAgICogQ29u
ZmlndXJlIHRoZSBwb3dlciBzZW5zZSBhbmQgY29udHJvbCBsaW5lcy4gIFBsYWNlIHRoZSBVU0IK
ICAgICAgICAgKiBob3N0IGNvbnRyb2xsZXIgaW4gcmVzZXQuCiAgICAgICAgICovCiAgICAgICAg
d3JpdGVsX3JlbGF4ZWQodXNiX3JzdCB8IFVTQl9SRVNFVF9GT1JDRUlGUkVTRVQgfCBVU0JfUkVT
RVRfRk9SQ0VIQ1JFU0VULAogICAgICAgICAgICAgICAgICAgICAgZGV2LT5tYXBiYXNlICsgVVNC
X1JFU0VUKTsKClNvLCBiaXQgNiBpcyBsZWZ0IHVuc2V0IG9uIEpvcm5hZGEgNzIwLCBhbmQgaGVu
Y2UgdGhpcyBpc3N1ZS4KCllvdSBwcm9iYWJseSBhbHNvIG5lZWQgdG8gaW52ZXN0aWdhdGUgd2hl
dGhlciB0aGUgVVNCX1BXUkNOVEwgc2lnbmFsCmlzIGFsc28gYWN0aXZlIGhpZ2ggb3IgYWN0aXZl
IGxvdywgYW5kIGNvbnNpZGVyIHdoZXRoZXIgdGhlIHNldHRpbmcKZm9yIHRoYXQgc2lnbmFsIGlz
IGFsc28gY29ycmVjdC4gIElmIFVTQl9SRVNFVF9QV1JDVFJMTE9XIGlzIHNldCwKdGhlbiBVU0Jf
UFdSQ1RSTD1sb3cgaXMgc3VwcG9zZWQgdG8gdHVybiBfb25fIHRoZSBwb3dlci4KCi0tIApSTUsn
cyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0
Y2hlcy8KRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBh
dCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDEx
LjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
