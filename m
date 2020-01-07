Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C0F132155
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFAqjfy51v0kV11Jhg6JYt+8bBo9svckAgHsNDDo958=; b=SVjD9FG7V8D9Y3
	VW+lFDYI4uQ5F/axC/opR1MlYU6nPV0dTsaQeEOSrh+YGDQwMzVFMH5teGql+qCutFvke7A/ZmZS1
	WzM40b9gjdjhuBkFCufvVA6Ud2oC3/wp1ocOgJ8KSqL/bUiAwplX33LSxHeEri4CAJUoaOvySK5SC
	NBAA1FNRX7hChkSkLM9ppXzYGykB5/K54oxu335NZmjmOnda616RmSZ05zF9AfxWlkNKK7ketQrxD
	9ZjiUhJ8wUx9ClrHIfm2CxS2qfchM8BgMv1RfAJxB8Ogx+wlRQjX0v7dwq/F/x08XG2BrUQkIwE3B
	0ivekQ4jmNAn3uIWgvvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokBV-0001SX-QJ; Tue, 07 Jan 2020 08:25:53 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokBM-0001RW-I4; Tue, 07 Jan 2020 08:25:45 +0000
Received: by mail-ed1-f65.google.com with SMTP id t17so49684279eds.6;
 Tue, 07 Jan 2020 00:25:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vT2NN+xI4BcelZZCoGioMbTizcdEYSLI6ni70MbnF8c=;
 b=H5ntgANnQ3LJlZqRj0AvDM8Pfvr1d9jl/CQ24bjSzWIIGmBmCdpDNrPpvNPw8vULyW
 nmkvUE7KzTT94hnmvHVdu+FcA++X/GZjPLZpfMlfeAsmCWhIWLndg2C/FM/tLv/8wy/9
 2kcW8rThD7+BiViGFjObJLaAliZ2RmjEVOhWnEH/CsOd1kSMHBMAAtTR8wR1OHciyx/0
 a86vrjonbzwXSAHojFzGPs7LyK/xia4xR/CD6RulUSnRVnbtjF0x7QXoT0mlJW7+PlB1
 +icv1L99aVEPiJTIxdI4Y+ln077w0Levqc0LMIi5MGYk4C5x3dncZbXS+fPJAZ0ZQZQd
 oAZQ==
X-Gm-Message-State: APjAAAUC6jh8b1TDV8/J8Ar0MJ4Yl4qJtwSbuHlssjW8x6rCqbwpwL4P
 n2jDfHFeLuoKyxnEmy8wImE=
X-Google-Smtp-Source: APXvYqwRuI+Pu22h1HAS8nBuWY+NEdeOj5ioRnCb8N42vbhDOOIZ7fM0eRKg8UY44R4kju5amCGT3w==
X-Received: by 2002:a05:6402:221c:: with SMTP id
 cq28mr63552685edb.110.1578385542439; 
 Tue, 07 Jan 2020 00:25:42 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id ba29sm7398179edb.47.2020.01.07.00.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 00:25:41 -0800 (PST)
Date: Tue, 7 Jan 2020 09:25:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107082539.GA31827@pi3>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
 <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_002544_602970_0997F922 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMDcsIDIwMjAgYXQgMDg6MjY6NDVBTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gSGVsbG8gS3J6eXN6dG9mLAo+IAo+IE9uIE1vbiwgRGVjIDMwLCAyMDE5IGF0
IDA2OjIxOjEzUE0gKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBTb21lIG9m
IHRoZSBQV00gZHJpdmVycyBjYW4gYmUgY29tcGlsZSB0ZXN0ZWQgdG8gaW5jcmVhc2UgYnVpbGQK
PiA+IGNvdmVyYWdlLgo+ID4gCj4gPiBUaGUgTWVzb24gUFdNIGRyaXZlciByZXF1aXJlcyBDT01N
T05fQ0xLIGRlcGVuZGVuY3kuCj4gCj4gSSdtIHN1cnByaXNlZCB0aGF0IHRoZXJlIGFyZSBub3Qg
bW9yZSB0aGF0IG5lZWQgdGhpcy4gSXMgSEFWRV9DTEsgbm90Cj4gZW5vdWdoPwoKTm9wZS4gRS5n
LiBmb3IgYWxwaGEgYXJjaGl0ZWN0dXJlLCBIQVZFX0NMSyBpcyBub3Qgc2V0IGFuZCB3aXRob3V0
CkNPTU1PTl9DTEs6Cgpkcml2ZXJzL3B3bS9wd20tbWVzb24ubzogSW4gZnVuY3Rpb24gYG1lc29u
X3B3bV9pbml0X2NoYW5uZWxzJzoKKC50ZXh0KzB4MjQ0KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0
byBgZGV2bV9jbGtfcmVnaXN0ZXInCgpJIGd1ZXNzIG90aGVyIHNvbHV0aW9uIHdvdWxkIGJlIHRv
IGFkZCBzdHVicyBmb3IgZmV3IGNsayBmdW5jdGlvbnMuLi4KCj4gQWxzbyBIQVNfSU9NRU0gaXMg
YSB0eXBpY2FsIHJlcXVpcmVtZW50LCBidXQgSSB0ZXN0ZWQgd2l0aCBhbiBBUkNIPXVtCj4gY29u
ZmlnICh3aGljaCBkb2VzJ3QgaGF2ZSBIQVNfSU9NRU0pIGFuZCB0aGV5IGFsbCBjb21waWxlIGZp
bmUuCgpCZWNhdXNlIG9mICFIQVNfSU9NRU0sIHNpbmNlIHNvbWUgdGltZSBBUkNIPXVtIGRvZXMg
bm90IHN1cHBvcnQKQ09NUElMRV9URVNULiBUaGVyZWZvcmUgSEFTX0lPTUVNIGRlcGVuZGVuY3kg
aXMgbm90IG5lZWRlZCBmb3IgY29tcGlsZQp0ZXN0aW5nIChhbmQgZm9yIHJlZ3VsYXIgYnVpbGQg
aXQgaXMgc2VsZWN0ZWQgYnkgQVJDSCkuCgo+IAo+ID4gQEAgLTMxOCw3ICszMTksNyBAQCBjb25m
aWcgUFdNX01FRElBVEVLCj4gPiAgCj4gPiAgY29uZmlnIFBXTV9NWFMKPiA+ICAJdHJpc3RhdGUg
IkZyZWVzY2FsZSBNWFMgUFdNIHN1cHBvcnQiCj4gPiAtCWRlcGVuZHMgb24gQVJDSF9NWFMgJiYg
T0YKPiA+ICsJZGVwZW5kcyBvbiAoQVJDSF9NWFMgJiYgT0YpIHx8IENPTVBJTEVfVEVTVAo+ID4g
IAlzZWxlY3QgU1RNUF9ERVZJQ0UKPiA+ICAJaGVscAo+ID4gIAkgIEdlbmVyaWMgUFdNIGZyYW1l
d29yayBkcml2ZXIgZm9yIEZyZWVzY2FsZSBNWFMuCj4gPiBAQCAtMzI4LDcgKzMyOSw4IEBAIGNv
bmZpZyBQV01fTVhTCj4gPiAgCj4gPiAgY29uZmlnIFBXTV9PTUFQX0RNVElNRVIKPiA+ICAJdHJp
c3RhdGUgIk9NQVAgRHVhbC1Nb2RlIFRpbWVyIFBXTSBzdXBwb3J0Igo+ID4gLQlkZXBlbmRzIG9u
IE9GICYmIEFSQ0hfT01BUCAmJiBPTUFQX0RNX1RJTUVSCj4gPiArCWRlcGVuZHMgb24gKEFSQ0hf
T01BUCAmJiBPTUFQX0RNX1RJTUVSKSB8fCBDT01QSUxFX1RFU1QKPiA+ICsJZGVwZW5kcyBvbiBP
Rgo+IAo+IEknbSBzdXJwcmlzZWQgdGhhdCBPRiBpc24ndCByZXF1aXJlZCBmb3IgUFdNX01YUyBi
dXQgaXMgaXMgZm9yCj4gUFdNX09NQVBfRE1USU1FUi4gcHdtLW14cyBjb21waWxlcyB3aXRob3V0
IENPTkZJR19PRiwgZGlkbid0IHRlc3QKPiBwd20tb21hcC1kbXRpbWVyLgoKU2luY2Ugc29tZSB0
aW1lICFPRiBoYXMgYWxsIG5lY2Vzc2FyeSBzdHVicyBzbyBPRiBpcyBhY3R1YWxseSBuZWVkZWQK
b25seSBmb3IgYmluZGluZywgbm90IGNvbXBpbGluZy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
