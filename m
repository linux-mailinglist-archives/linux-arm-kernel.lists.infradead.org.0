Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEA614DCB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 15:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUXNPJWdK+FvqVHvR+JiW5VtyTWXoYqv/eKGlkgl65c=; b=m1n/oRG2BWpALh
	zTLe3HBmukJXnZ/9MhS5M6pgVorjEZ2VuwFXNGKMZ3pLMnogxa3YM3m71+C7s1LjrSye1n1wdenqr
	gz/T4ESMpdexL9XiYJlPBkP5BwlbqHLcfDcbyx6lr3FZRdfYQ63IFolb2wTDp5vLMH0j0canKDVSH
	J5zwFpdg0F2/88CiZkSEpyHLA3013lZgLZ+HYoxjXyaUXYw+xNvRdDqLK6KEO2b+dicbrXT+JDB2f
	coWZCrqGP7aeffHLBCdRKm0su4zzQy9jQFbkOpaIlCl+mET1IodnLQXvC7oRmqdEINKJ5hQdAWkmc
	PbSN+oOMSwP57/x7IIrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixAd8-0005PP-A4; Thu, 30 Jan 2020 14:17:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixAcy-0005OX-RC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 14:17:06 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2345520658
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 14:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580393824;
 bh=cRwyh4rU6H2VwguYZlplyaxNt/V2BdklXWw7seSSr/Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JH6mwhRya6r+51Xgd/KeZ4jxRYtkK4XTKyGD3hUo5xoXd2tCbgWtMW7PCFH1j2XAR
 Vf+82LW46ZCt0RvdA81xvAGqaFYfmTdIBoqunZQZ0WZLQLPG3yv4HCkwgTMK7JSb0I
 Pe7uogcYUdlQB205LmMewnGu4nuOZ9fNyx1xtqEs=
Received: by mail-qk1-f172.google.com with SMTP id d10so3067631qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 06:17:04 -0800 (PST)
X-Gm-Message-State: APjAAAVvxVcw/cNdc5ICBwM5fTseiel6G3yRVfXbTOtiedS1JBPiuG9/
 PQtRIqaD6+3V4cj14J1338lPraIhyyeMxzqUAQ==
X-Google-Smtp-Source: APXvYqzq6JJsjP4VU4+kvimngXTc9qjwMKZg98Rvkc5V6yfk7bJRYYN164PGeYPFF1r0/p5jPWiKUANlEcupbELeL9Q=
X-Received: by 2002:a05:620a:1eb:: with SMTP id
 x11mr5463374qkn.254.1580393823238; 
 Thu, 30 Jan 2020 06:17:03 -0800 (PST)
MIME-Version: 1.0
References: <CGME20200130124251eucas1p2046004a71a1a9ff4274a6d1d96e2c260@eucas1p2.samsung.com>
 <20200130123934.3900-1-l.stelmach@samsung.com>
 <20200130124233.4006-1-l.stelmach@samsung.com>
In-Reply-To: <20200130124233.4006-1-l.stelmach@samsung.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 30 Jan 2020 08:16:51 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Q8ekM8ty33fKAmffTMZ5aZDCbMUPpdup7j=UuggB9Pw@mail.gmail.com>
Message-ID: <CAL_Jsq+Q8ekM8ty33fKAmffTMZ5aZDCbMUPpdup7j=UuggB9Pw@mail.gmail.com>
Subject: Re: [RFC PATCH 1/4] scripts/dtc: update fdtget.c to upstream version
 v1.4.7-57-gf267e674d145
To: =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_061705_412721_CD83BD57 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgNjo0MiBBTSDFgXVrYXN6IFN0ZWxtYWNoIDxsLnN0ZWxt
YWNoQHNhbXN1bmcuY29tPiB3cm90ZToKPgo+IEJ1aWxkIGFuZCBmZHRnZXQgYW5kIGFkZCBmZHRn
ZXQuYyB0byB0aGUgbGlzdCBvZiB1cGRhdGUgc291cmNlIGZpbGVzLgoKV2h5IGRvZXMgdGhlIGtl
cm5lbCBuZWVkIGZkdGdldCBhbmQgd2h5IG5vdCB1c2UgdGhlIHZlcnNpb24gZnJvbSB5b3VyIGRp
c3Rybz8KClBsZWFzZSBDYyB0aGUgRFQgbGlzdCBuZXh0IHRpbWUuCgo+IFNpZ25lZC1vZmYtYnk6
IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIHNjcmlw
dHMvZHRjLy5naXRpZ25vcmUgICAgICAgICAgIHwgICA0ICsKPiAgc2NyaXB0cy9kdGMvTWFrZWZp
bGUgICAgICAgICAgICAgfCAgIDUgKysKPiAgc2NyaXB0cy9kdGMvZmR0Z2V0LmMgICAgICAgICAg
ICAgfCAxMjUgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+ICBzY3JpcHRzL2R0Yy91
cGRhdGUtZHRjLXNvdXJjZS5zaCB8ICAgNCArLQoKU2VwYXJhdGUgY2hhbmdlcyBieSB1cGRhdGVz
IHRvIHRoaXMgc2NyaXB0LCBydW5uaW5nIHRoZSBzY3JpcHQgKHRvIGdldApmZHRnZXQuYyksIGFu
ZCB1cGRhdGVzIHRvIGtlcm5lbCBmaWxlcy4KCj4gIDQgZmlsZXMgY2hhbmdlZCwgODIgaW5zZXJ0
aW9ucygrKSwgNTYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IHNjcmlwdHMvZHRjLy5naXRp
Z25vcmUgc2NyaXB0cy9kdGMvLmdpdGlnbm9yZQo+IGluZGV4IDJlNmU2MGQ2NGVkZS4uODBmNmI1
MGZkZjc3IDEwMDY0NAo+IC0tLSBzY3JpcHRzL2R0Yy8uZ2l0aWdub3JlCj4gKysrIHNjcmlwdHMv
ZHRjLy5naXRpZ25vcmUKPiBAQCAtMSArMSw1IEBACj4gIGR0Ywo+ICtkdGMtbGV4ZXIubGV4LmMK
PiArZHRjLXBhcnNlci50YWIuYwo+ICtkdGMtcGFyc2VyLnRhYi5oCgpUaGVzZSBhcmUgbmVlZGVk
IHJlZ2FyZGxlc3MuIFByb2JhYmx5IGEgdHJlZXdpZGUgcnVsZSBmb3IgKi5sZXguYywKKi50YWIu
YywgKi50YWIuaCB3b3VsZCBiZSBiZXR0ZXIuCgo+ICtmZHRnZXQKPiBkaWZmIC0tZ2l0IHNjcmlw
dHMvZHRjL01ha2VmaWxlIHNjcmlwdHMvZHRjL01ha2VmaWxlCj4gaW5kZXggYjVhNWIxYzU0OGM5
Li43NDMyMmQ4ZGFjMjUgMTAwNjQ0Cj4gLS0tIHNjcmlwdHMvZHRjL01ha2VmaWxlCj4gKysrIHNj
cmlwdHMvZHRjL01ha2VmaWxlCj4gQEAgLTIsMTIgKzIsMTUgQEAKPiAgIyBzY3JpcHRzL2R0YyBt
YWtlZmlsZQo+Cj4gIGhvc3Rwcm9ncy0kKENPTkZJR19EVEMpIDo9IGR0Ywo+ICtob3N0cHJvZ3Mt
JChDT05GSUdfRFRDKSArPSBmZHRnZXQKPiAgYWx3YXlzICAgICAgICAgOj0gJChob3N0cHJvZ3Mt
eSkKPgo+ICBkdGMtb2JqcyAgICAgICA6PSBkdGMubyBmbGF0dHJlZS5vIGZzdHJlZS5vIGRhdGEu
byBsaXZldHJlZS5vIHRyZWVzb3VyY2UubyBcCj4gICAgICAgICAgICAgICAgICAgIHNyY3Bvcy5v
IGNoZWNrcy5vIHV0aWwubwo+ICBkdGMtb2JqcyAgICAgICArPSBkdGMtbGV4ZXIubGV4Lm8gZHRj
LXBhcnNlci50YWIubwo+Cj4gK2ZkdGdldC1vYmpzICAgICA6PSBmZHRnZXQubyB1dGlsLm8KPiAr
Cj4gICMgU291cmNlIGZpbGVzIG5lZWQgdG8gZ2V0IGF0IHRoZSB1c2Vyc3BhY2UgdmVyc2lvbiBv
ZiBsaWJmZHRfZW52LmggdG8gY29tcGlsZQo+ICBIT1NUX0VYVFJBQ0ZMQUdTIDo9IC1JICQoc3Jj
dHJlZSkvJChzcmMpL2xpYmZkdAo+Cj4gQEAgLTI2LDUgKzI5LDcgQEAgZW5kaWYKPiAgSE9TVENG
TEFHU19kdGMtbGV4ZXIubGV4Lm8gOj0gLUkgJChzcmN0cmVlKS8kKHNyYykKPiAgSE9TVENGTEFH
U19kdGMtcGFyc2VyLnRhYi5vIDo9IC1JICQoc3JjdHJlZSkvJChzcmMpCj4KPiArSE9TVExETElC
U19mZHRnZXQgOj0gLUwkKG9iaikvbGliZmR0IC1sZmR0IC1XbCwtcnBhdGg9JyQkT1JJR0lOL2xp
YmZkdCcKPiArCgpXZSBuZXZlciBidWlsZCBsaWJmZHQgYXMgYSBsaWJyYXJ5LCBzbyBob3cgZG9l
cyB0aGlzIHdvcmsgdW5sZXNzIGl0CnB1bGxzIGluIHRoZSBkaXN0cm8gY29weT8KClJvYgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
