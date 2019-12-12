Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED06F11D5F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 19:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gV5EC2BrlhX5BPlK8X6qQRjt9OtzJBpXqycd4e344f8=; b=YSf5Gz4DeZOLNLO/7ig3WKNrR
	emOLefkC/Eq/iKZw3qbBschDEmi7xZ+qbYKS7RMMVxQmKZeq0rU4S/kMD0tJn3huHoVYGQNibYKdV
	JenpC8MYKklKxaM6IN33JOgJk0X3HGJGKvMAa1hqjJjbZupk3Mw0vgacU2jeGSlm0jSbXlmBIskkt
	0CzjcUG0QTspdlaIuHpAuvldBhSt36KxR4tTFOILJTNR7wj0zLHDZuWqjN73uF+Eud0UqrVqzKnWl
	9+MeLUErw9GYlIqWIoXtNZ6G40aRUG3GNCK1O6iw6PSErbaDImscJAyqXgCmgxd1j9wSWMcccHeEN
	Epga9S06A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifTNt-0000q3-Jt; Thu, 12 Dec 2019 18:40:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifTNk-0000oo-7D; Thu, 12 Dec 2019 18:40:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id d5so3710233wmb.4;
 Thu, 12 Dec 2019 10:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=ELZT1joVEPSh2plOVJR94cvRAmXkAN48Ob21zMz/OVM=;
 b=dirYmOdYRFH9YSrQHN3w5+hlzPxhx6EdRDD3GLC7fKCSVNVIkDSS/CY0kqJvAtQMQ9
 oKY515H+6HkSxdtjjPLkvYD/5I1zNFPB5wEIIua+yPT22Zse5z1HAfcu3Oy5E+hNCaBj
 yGneDXCXLBGRGv+id2MDIAj5em/RMVUc62LATdIddiekTzwJuUaE8+FFFA1xWhb7Fucp
 GXKOJefJeJ5ic7YPAcGuGjVUg8DN4eS8Lwp9HyZlCFhakvoIfg5XvOi1vrXpap2M3Jdz
 BfSUrhKowVfm9lg8M2vgXgdMZfYlb8EFuXGXUx4n+emO0gCSjVyWCydUngE5fsGN9auf
 Ltlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=ELZT1joVEPSh2plOVJR94cvRAmXkAN48Ob21zMz/OVM=;
 b=TuTWUYctAj0f9f48RgAe2DiHi3I+fMKsq7U6PWhonzdLjSs+fsmB+c95kQULtfnE4K
 ZKS34nIjLDVeVwR5GVAJ/VO6zzX0Zq+2GNrCU67CCv3I0pjpCL9HbGcQr27CANPWtSea
 tj4EQFKOOuRNZJUtY5bO7k/n7KCoZFKaAq7ytEXuQSg2hMSotOE9lqjSCulT3orMGmPi
 ne2haNSAS3CaDQEi0h4+79drHZW/3oBTF4oyLtetGcp+peWT8synk1e1clOSJeWE7nuR
 kwJU2sjw3867v611yPKwM/t78qQimyA1+Lcq5J/1kCKugGtHQalPlX1KAmw8HzFuL5wb
 nXBg==
X-Gm-Message-State: APjAAAV5pn+tJr64paeGcv7BtSgckG+x7IjI822vbAVlRuzErWTon4D+
 oYBTYSiVEi3IK2j17SBaiso=
X-Google-Smtp-Source: APXvYqx0ctM4a47vgtrL3oOacmEM5P15vEIdZYWM3IaprzO2CQaZEe5R3g+5uLTgNWYG7GNBMyJ5sw==
X-Received: by 2002:a7b:cb4a:: with SMTP id v10mr8290286wmj.106.1576176010334; 
 Thu, 12 Dec 2019 10:40:10 -0800 (PST)
Received: from localhost ([5.59.90.131])
 by smtp.gmail.com with ESMTPSA id a1sm6973925wrr.80.2019.12.12.10.40.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 10:40:09 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Date: Thu, 12 Dec 2019 19:40:06 +0100
MIME-Version: 1.0
Message-ID: <792cf6ab-26c4-40a4-90b0-a99e620548f4@gmail.com>
In-Reply-To: <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
 <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
 <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
 <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_104012_263185_C1B049DB 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Frederick Lawler <fred@fredlawl.com>,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 =?iso-8859-1?Q?Stefan_M=E4tje?= <stefan.maetje@esd.eu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1cnNkYXksIERlY2VtYmVyIDEyLCAyMDE5IDM6MTY6MjUgUE0gQ0VULCBFbnJpYyBCYWxs
ZXRibyBTZXJyYSB3cm90ZToKPiBIaSBWaWNlbnRlLAo+Cj4gTWlzc2F0Z2UgZGUgQW5kcmV3IE11
cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPiBkZWwgZGlhIGRqLiwgMTIgZGUKPiBkZXMuIDIw
MTkgYSBsZXMgMTo1MzoKPj4gCj4+IE9uIFRodSwgRGVjIDEyLCAyMDE5IGF0IDEyOjEyOjU2QU0g
KzAwMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+IEhpIFZpY2VudGUsCj4+PiAKPj4+IE9uIDIw
MTktMTItMTEgMTE6MzggcG0sIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+Pj4+IEhpLAo+Pj4+IHNp
bmNlIHY1LjUtcmMxIHRoZSBnb29nbGUga2V2aW4gY2hyb21lYm9vayBkb2VzIG5vdCBib290Lgo+
Pj4+IEdpdCBiaXNlY3QgcmVwb3J0cyA1ZTBjMjFjNzVlOGMgUENJL0FTUE06IFJlbW92ZSBwY2ll
X2FzcG1fZW5hYmxlZCgpCj4+Pj4gdW5uZWNlc3NhcnkgbG9ja2luZwo+Pj4+IGFzIHRoZSBmaXJz
dCBiYWQgY29tbWl0Lgo+Pj4+IAo+Pj4+IEluIG9yZGVyIHRvIHJldmVydCBpdCBmcm9tIHY1LjUt
cmMxIGkgaGFkIHRvIGFsc28gcmV2ZXJ0IAo+Pj4+IHNvbWUgZGVwZW5kZW5jaWVzOgo+Pj4+IDVl
MGMyMWM3NWU4YzA4Mzc1YTY5NzEwNTI3ZTRhOTIxYjg5N2NiN2UKPj4+PiBhZmY1ZDA1NTJkYTQw
NTVkYTNmYWEyN2VlNDI1MmU0OGJiMWY1ODIxCj4+Pj4gMzVlZmVhMzJiMjZmOWFhY2M5OWJmMDdl
MGQyY2RmYmEyMDI4YjA5OQo+Pj4+IDY4N2FhZjM4NmFlYjU1MTEzMGYzMTcwNWNlNDBkMTM0MTA0
N2E5MzYKPj4+PiA3MmVhOTFhZmJmYjA4NjE5Njk2Y2NkZTYxMGVlNGQwZDI5Y2Y0YTFkCj4+Pj4g
ODdlOTAyODNjOTRjNzZlZTExZDM3OWFiNWEwOTczMzgyYmJkMGJhZgo+Pj4+IEFmdGVyIHJldmVy
dGluZyBhbGwgb2YgdGhpcywgc3RpbGwgbm8gbHVjay4KPj4+PiBTbywgZWl0aGVyIHRoZSByZXN1
bHRzIG9mIGdpdCBiaXNlY3QgYXJlIG5vdCB0byBiZSB0cnVzdGVkLCBvcgo+Pj4+IHRoZXJlIGFy
ZSBtb3JlIGJhZCBjb21taXRzLgo+Pj4+IAo+Pj4+IEJ5ICJkb2VzIG5vdCBib290IiBpIG1lYW4g
dGhhdCB0aGUgZGlzcGxheSBmYWlscyB0byBzdGFydCBhbmQKPj4+PiB0aGUgZGlzcGxheSBpcyB0
aGUgb25seSBvdXRwdXQgZGV2aWNlLCBzbyBkZWJ1Z2dpbmcgaXMgcXVpdGUgZGlmZmljdWx0Lgo+
Pj4gCj4KPiBBbm90aGVyIGlzc3VlIHRoYXQgaXMgYWZmZWN0aW5nIGN1cnJlbnQgbWFpbmxpbmUg
Zm9yIGtldmluIGlzIGZpeGVkCj4gd2l0aCBbMV0uIEFzIHVzdWFsLCBJIGhhdmUgYSB0cmFja2lu
ZyBicmFuY2ggZm9yIDUuNSBmb3IgZGlmZmVyZW50Cj4gQ2hyb21lYm9va3Mgd2l0aCBzb21lIG5v
dCB5ZXQgbWVyZ2VkIHBhdGNoZXMgdGhhdCBtYWtlcyB0aGluZ3Mgd29yawo+IHdoaWxlIGFyZSBu
b3QgZml4ZWQgWzJdLiBGb3Iga2V2aW4gb25seSB0aGUgbWVudGlvbmVkIEFTb0MgcGF0Y2ggWzFd
Cj4gYW5kIHRoZSBwY2llIGZpeCBbM10gc2hvdWxkIGJlIG5lZWRlZC4gT3RoZXIgdGhhbiB0aGF0
IGRpc3BsYXkgaXMKPiB3b3JraW5nIGZvciBtZSBvbiBLZXZpbi4KPgo+IENoZWVycywKPiAgRW5y
aWMKPgo+IFsxXSAKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9icm9vbmllL3NvdW5kLmdpdC9jb21taXQvP2g9Zm9yLTUuNSZpZD00YmYyZTM4NWFhNTlj
MmZhZTVmODgwYWEyNWNmZDJiNDcwMTA5MDkzCj4gWzJdIAo+IGh0dHBzOi8vZ2l0bGFiLmNvbGxh
Ym9yYS5jb20vZWJhbGxldGJvL2xpbnV4L2NvbW1pdHMvdG9waWMvY2hyb21lb3Mvc29tZXdoYXQt
c3RhYmxlLTUuNQo+IFszXSAgaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTIvMTEvMTk5Cj4K
Pj4+IEFzc3VtaW5nIGl0J3MgYSBtYW5pZmVzdGF0aW9uIG9mIHRoZSBzYW1lIFBDSSBicmVha2Fn
ZSB0aGF0IEVucmljIGFuZAo+Pj4gTG9yZW56byBmaWd1cmVkIG91dCwgdGhlcmUncyBhIHByb3Bv
c2VkIGZpeCBoZXJlOgo+Pj4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTIvMTEvMTk5Cj4+
IAo+PiBJdCdzIGxpa2VseSB0aGF0IGFueSBQQ0kgZHJpdmVyIHRoYXQgdXNlcyBQQ0kgSU8gd2l0
aCB0aGF0IGNvbnRyb2xsZXIgd2lsbAo+PiBzdWZmZXIgdGhlIHNhbWUgZmF0ZS4KPj4gCj4+IFZp
Y2VudGUgLSBjYW4geW91IHRyeSB0aGUgcGF0Y2ggdGhhdCBoYXMgYmVlbiBwcm9wb3NlZCBhbmQg
dmVyaWZ5IGl0IGZpeGVzCj4+IHRoZSBpc3N1ZSBmb3IgeW91Pwo+PiAKPj4gVGhhbmtzLAo+PiAK
Pj4gQW5kcmV3IE11cnJheQo+PiAKPj4+IAo+Pj4gUm9iaW4uCj4+PiAKPj4+PiB2NS41LXJjMSBh
cyBpcyAocmV2ZXJ0aW5nIG5vIGNvbW1pdHMgYXQgYWxsKSB3b3JrcyBmaW5lIHdoZW4gCj4+Pj4g
ZGlzYWJsaW5nIFBDSToKPj4+PiAjIENPTkZJR19QQ0kgaXMgbm90IHNldAo+Pj4+IAo+Pj4+IFJl
Z2FyZHMsCj4+Pj4gICBWaWNlbnRlLgoKSGkgUm9iaW4sIEFuZHJldyBhbmQgRW5yaWMsCnRoYW5r
IHlvdSBhbGwgZm9yIHRoZSBxdWljayByZXNwb25zZXMhCkkgY2FuIGNvbmZpcm0gdGhhdCBwYXRj
aCBbM10gZml4ZXMgdGhlIGlzc3VlIHJlcG9ydGVkIGluIHRoaXMgZW1haWwgYW5kCnRoYXQgWzFd
IGZpeGVzIHRoZSBvdGhlciBpc3N1ZSByZXBvcnRlZCBvbiB0aGUgb3RoZXIgZW1haWwuCgpSZWdh
cmRzLAogIFZpY2Vuw6cuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
