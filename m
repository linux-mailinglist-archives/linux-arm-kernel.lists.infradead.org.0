Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8084A12A124
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:09:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY+VYikhzwA3+JOCQcRytxtP8QnDrBQtLSy5iV5H3Jw=; b=Y/4eiQg0wP6KKb
	uTbVXfXgr1jzLElhxnsxV1CRz/QerB/Y1tQ3inLStJN6D9H037Gf5mlXFw2pLN2SqfS1JOXeGc5p3
	SWR7lxJYYTetIxWIQwIMCU1/wGpAVWjRavCFxLFwm+haI5CJ4HDsjTAPPjRUxXTCRyyu0UFT6e9dL
	MPhfjvIoorFSmmpl+1ptruR2TroxojN1/7DifcrmaAa3zjXj34FXfPzDaXHd5AbwrIoUE9WubIPQA
	zPlpvdHUSedbJ+1f8WtWj4T2c2jL1F0l7nKuZ6BELdWqUfP1RP+ksiZv9VBfuagpCDpqxhcFtkS/O
	RU+jqFHtg8ADVr+CuZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijj0Q-00086g-Rk; Tue, 24 Dec 2019 12:09:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijj0E-00085L-Tr
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:09:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id p14so10679550pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 04:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=K4+yYEajmvASBw/wK7dx01YAKKK9lQkCygbw5uYtDvw=;
 b=v5uo6zSi8Zl71hkeRCL1WDbTWJpta5F83ZOr5fxkkmp8Nw9B+KoTpjA3o2GjQy6HDP
 z+802JX+aRA390qBjINq0fnHSEcntSkwsD2EIdKdxcvAxxrKOvxCCaWOUUvCrR+n8fRj
 meVMHS9VnwRQ3Mpp3i0JSkU6+2DH9Tm8yVzs9R4X2pRKBJzEhe4Iu0+PxpENQ/X2kzLq
 V/G9BIlbM5R458R2UgYGUF2TnKMV2LmqGcHfOZ5qKpX+LQzykslgAxQOVxRyy1Xrojh+
 ahp+RNTQr5w5UIgQgyaUDAlDJlFjIHRY7VldSOH4+iPjEpgAad3Lc8Ta0OVzWIkcCVWq
 1C+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=K4+yYEajmvASBw/wK7dx01YAKKK9lQkCygbw5uYtDvw=;
 b=HFYaBPsZPwLRX720FfqOvizAoGstx8iaDYG4thCroYflUXre+Qbx+v0aHkpGpYc2j1
 tDcQqXgbh7pogrs8DrJvc/o8wWH/bPDKS+AE1DryWamm8kBQD67IIy8ff4yQlRE0E6cX
 nf8IUbeVqiRCbAlWt6cTjxNUnaBw2iq3/VKrnR+i+JbUnHHPHKSnQHeUckoOLhlEZm1g
 YsIdhsKyR+Nvq37UO//DMk2qfn0g0vPphf96u8DwJ1Hrkh/6Zu/FqsEAlSJaCl0papGj
 DIWSYr6RWIkzZvODJ9n1Unzq4Ng2iZ7poy43GsW38Xhbr2W9YCXjQLTnKmXPYdy4t5MR
 I/Bw==
X-Gm-Message-State: APjAAAXkeRuIL/sX7VX/kaHVWwu3taV0GnW+ZLWKwgmBnTPqi2rQxo8a
 4cw5IDivbsBSqHqnJQ7NtjMjKQ==
X-Google-Smtp-Source: APXvYqxA1SUulGpkbXDrLJ25MMXUtUB4dZYV+TVQUc/X6xA8o+7HrjCmP4+vfrzt7tm6wB0tahblTA==
X-Received: by 2002:a63:1106:: with SMTP id g6mr36472053pgl.13.1577189369917; 
 Tue, 24 Dec 2019 04:09:29 -0800 (PST)
Received: from [192.168.0.9] (111-255-104-19.dynamic-ip.hinet.net.
 [111.255.104.19])
 by smtp.gmail.com with ESMTPSA id 68sm25845145pge.14.2019.12.24.04.09.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Dec 2019 04:09:29 -0800 (PST)
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [RFC PATCH v2 02/10] lib: vdso: move call to fallback out of
 common code.
Date: Tue, 24 Dec 2019 20:09:26 +0800
Message-Id: <3D74AE31-03EA-4552-8AF7-90AA9DD65830@amacapital.net>
References: <36f1ce73-d8bc-9c46-8a2a-b6514d4a1ba0@c-s.fr>
In-Reply-To: <36f1ce73-d8bc-9c46-8a2a-b6514d4a1ba0@c-s.fr>
To: christophe leroy <christophe.leroy@c-s.fr>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_040930_964733_DFDE7D62 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gRGVjIDI0LCAyMDE5LCBhdCA3OjQxIFBNLCBjaHJpc3RvcGhlIGxlcm95IDxjaHJpc3Rv
cGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4gCj4g77u/Cj4gCj4+IExlIDI0LzEyLzIwMTkgw6Ag
MDM6MjQsIEFuZHkgTHV0b21pcnNraSBhIMOpY3JpdCA6Cj4+PiBPbiBNb24sIERlYyAyMywgMjAx
OSBhdCA2OjMxIEFNIENocmlzdG9waGUgTGVyb3kKPj4+IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5m
cj4gd3JvdGU6Cj4+PiAKPj4+IE9uIHBvd2VycGMsIFZEU08gZnVuY3Rpb25zIGFuZCBzeXNjYWxs
cyBjYW5ub3QgYmUgaW1wbGVtZW50ZWQgaW4gQwo+Pj4gYmVjYXVzZSB0aGUgTGludXgga2VybmVs
IEFCSSByZXF1aXJlcyB0aGF0IENSW1NPXSBiaXQgaXMgc2V0IGluIGNhc2UKPj4+IG9mIGVycm9y
IGFuZCBjbGVhcmVkIHdoZW4gbm8gZXJyb3IuCj4+PiAKPj4+IEFzIHRoaXMgY2Fubm90IGJlIGRv
bmUgaW4gQywgQyBWRFNPIGZ1bmN0aW9ucyBhbmQgc3lzY2FsbCdiYXNlZAo+Pj4gZmFsbGJhY2sg
bmVlZCBhIHRyYW1wb2xpbmUgaW4gQVNNLgo+Pj4gCj4+PiBCeSBtb3ZpbmcgdGhlIGZhbGxiYWNr
IGNhbGxzIG91dCBvZiB0aGUgY29tbW9uIGNvZGUsIGFyY2hlcyBsaWtlCj4+PiBwb3dlcnBjIGNh
biBpbXBsZW1lbnQgYm90aCB0aGUgY2FsbCB0byBDIFZEU08gYW5kIHRoZSBmYWxsYmFjayBjYWxs
Cj4+PiBpbiBhIHNpbmdsZSB0cmFtcG9saW5lIGZ1bmN0aW9uLgo+PiBNYXliZSB0aGUgaXNzdWUg
aXMgdGhhdCBJJ20gbm90IGEgcG93ZXJwYyBwZXJzb24sIGJ1dCBJIGRvbid0Cj4+IHVuZGVyc3Rh
bmQgdGhpcy4gIFRoZSBjb21tb24gdkRTTyBjb2RlIGlzIGluIEMuICBQcmVzdW1hYmx5IHRoaXMg
bWVhbnMKPj4gdGhhdCB5b3UgbmVlZCBhbiBhc20gdHJhbXBvbGluZSBubyBtYXR0ZXIgd2hhdCB0
byBjYWxsIHRoZSBDIGNvZGUuICBJcwo+PiB0aGUgaW1wcm92ZW1lbnQgdGhhdCwgd2l0aCB0aGlz
IGNoYW5nZSwgeW91IGNhbiBoYXZlIHRoZSBhc20KPj4gdHJhbXBvbGluZSBkbyBhIHNpbmdsZSBi
cmFuY2gsIHNvIGl0J3MgbG9naWNhbGx5Ogo+PiByZXQgPSBbY2FsbCB0aGUgQyBjb2RlXTsKPj4g
aWYgKHJldCA9PSAwKSB7Cj4+ICBzZXQgc3VjY2VzcyBiaXQ7Cj4+IH0gZWxzZSB7Cj4+ICByZXQg
PSBmYWxsYmFjazsKPj4gIGlmIChyZXQgPT0gMCkKPj4gICBzZXQgc3VjY2VzcyBiaXQ7Cj4+IGVs
c2UKPj4gICBzZXQgZmFpbHVyZSBiaXQ7Cj4+IH0KPiAKPiBNb3JlIHNpbXBsZSB0aGFuIGFib3Zl
LCBpbiBmYWN0IGl0IGlzOgo+IAo+IHJldCA9IFtjYWxsIHRoZSBDIGNvZGVdOwo+IGlmIChyZXQg
PT0gMCkgewo+IHNldCBzdWNjZXNzIGJpdDsKPiB9IGVsc2Ugewo+IHJldCA9IGZhbGxiYWNrIFsg
d2hpY2ggc2V0cyB0aGUgc3VjY2Vzcy9mYWlsdXJlIGJpdF07Cj4gfQo+IHJldHVybiByZXQKCkN1
dGUuCgo+IAo+IAo+PiByZXR1cm4gcmV0Owo+PiBpbnN0ZWFkIG9mOgo+PiByZXQgPSBbY2FsbCB0
aGUgQyBjb2RlLCB3aGljaCBpbmNsdWRlcyB0aGUgZmFsbGJhY2tdOwo+IAo+IEMgY29kZSBjYW5u
b3QgaGFuZGxlIHRoZSBzdWNjZXNzL2ZhaWx1cmUgYml0IHNvIHdlIG5lZWQgdG8gZG8gc29tZXRo
aW5nIHdoaWNoIGRvZXM6Cj4gCj4gaW50IGFzc2VtYmx5X3RvX2ZhbGxiYWNrKCkKPiB7Cj4gICAg
cmV0ID0gW3N5c2NhbGwgdGhlIGZhbGxiYWNrXQo+ICAgIGlmIChzdWNjZXNzIGJpdCBzZXQpCj4g
ICAgICAgIHJldHVybiByZXQ7Cj4gICAgZWxzZQo+ICAgICAgICByZXR1cm4gLXJldDsKPiB9CgpX
YWl0LCB5b3VyIGNhbGxpbmcgY29udmVudGlvbiBoYXMgc3lzY2FsbHMgcmV0dXJuIHBvc2l0aXZl
IHZhbHVlcyBvbiBlcnJvcj8KCkJ1dCBJIHRoaW5rIHRoaXMgaXMgbW9vdC4gVGhlIHN5c2NhbGxz
IGluIHF1ZXN0aW9uIG5ldmVyIHJldHVybiBub256ZXJvIHN1Y2Nlc3MgdmFsdWVzLCBzbyB5b3Ug
c2hvdWxkIGJlIGFibGUgdG8gaW5saW5lIHRoZSBzeXNjYWxsIHdpdGhvdXQgd29ycnlpbmcgYWJv
dXQgdGhpcy4KCj4gCj4gQWxzbyBtZWFucyBnb2luZyBiYWNrIGFuZCBmb3J0aCBiZXR3ZWVuIHRo
ZSBzdWNjZXNzIGJpdCBhbmQgbmVnYXRpdmUgcmV0dXJuLgo+IAo+PiBpZiAocmV0ID09IDApCj4+
ICAgc2V0IHN1Y2Nlc3MgYml0Owo+PiBlbHNlCj4+ICAgc2V0IGZhaWx1cmUgYml0Owo+PiBJdCdz
IG5vdCBvYnZpb3VzIHRvIG1lIHRoYXQgdGhlIGZvcm1lciBvdWdodCB0byBiZSBmYXN0ZXIuCj4+
PiAKPj4+IFRoZSB0d28gYWR2YW50YWdlcyBhcmU6Cj4+PiAtIE5vIG5lZWQgcGxheSBiYWNrIGFu
ZCBmb3J0aCB3aXRoIENSW1NPXSBhbmQgbmVnYXRpdmUgcmV0dXJuIHZhbHVlLgo+Pj4gLSBObyBz
dGFjayBmcmFtZSBpcyByZXF1aXJlZCBpbiBWRFNPIEMgZnVuY3Rpb25zIGZvciB0aGUgZmFsbGJh
Y2tzLgo+PiBIb3cgaXMgbm8gc3RhY2sgZnJhbWUgcmVxdWlyZWQ/ICBEbyB5b3UgbWVhbiB0aGF0
IHRoZSBwcmVzZW5jZSBvZiB0aGUKPj4gZmFsbGJhY2sgY2F1c2VzIHdvcnNlIGNvZGUgZ2VuZXJh
dGlvbj8gIENhbiB5b3UgaW1wcm92ZSB0aGUgZmFsbGJhY2sKPj4gaW5zdGVhZD8KPiAKPiBXaGVu
IGZ1bmN0aW9uIEYxIGNhbGxzIGZ1bmN0aW9uIEYyICh3aXRoIEJMIGluc24pLCB0aGUgbGluayBy
ZWdpc3RlciAoTFIpIGlzIHNldCB3aXRoIHRoZSByZXR1cm4gYWRkcmVzcyBpbiBGMSwgc28gdGhh
dCBhdCB0aGUgZW5kIG9mIEYyLCBGMiBicmFuY2hlcyB0byBMUiAod2l0aCBCTFIgaW5zbiksIHRo
YXQncyBob3cgeW91IHJldHVybiBmcm9tIGZ1bmN0aW9ucy4KPiAKPiBXaGVuIEYyIGNhbGxzIGZ1
bmN0aW9uIEYzLCB0aGUgc2FtZSBoYXBwZW5zLCBMUiBpcyBzZXQgdG8gdGhlIHJldHVybiBvZiBG
MyBpbnRvIEYyLiBJdCBtZWFucyB0aGF0IEYyIGhhcyB0byBzYXZlIExSIGluIG9yZGVyIHRvIGJl
IGFibGUgdG8gcmV0dXJuIHRvIEYxLCBvdGhlcndpc2UgdGhlIHJldHVybiBhZGRyZXNzIGZyb20g
RjIgaW50byBGMSBpcyBsb3N0Lgo+IAo+IEJ1dCAuLi4gdGhpbmtpbmcgYWJvdXQgaXQgb25jZSBt
b3JlLCBpbmRlZWQgZmFsbGJhY2sgbWVhbnMgZG9pbmcgYSBzeXNjYWxsLCBhbmQgaW4gZmFjdCBJ
IHJlYWxpc2UgdGhhdCBzeXNjYWxscyB3b24ndCBjbG9iYmVyIExSLCBzbyBpdCBzaG91bGQgYmUg
cG9zc2libGUgdG8gZG8gc29tZXRoaW5nLiBMZXQgbWUgdHJ5IGl0Lgo+IAoKV2l0aCB0aGF0IHBs
dXMgYXNzdW1lIHRoYXQgbm9uemVybyByZXR1cm4gbWVhbnMgZmFpbHVyZSwgSSB0aGluayB5b3Ug
c2hvdWxkIGhhdmUgYWxsIHlvdXIgYmFzZXMgY292ZXJlZC4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
