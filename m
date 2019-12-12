Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDB911D80F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 21:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rWpxzqcnI8K9dvWkzA1QsevJQvlajQNX1N64le47DHI=; b=iS7KaRgAlMgRAGIWdSiKqJiP+
	qMPrqqUq4lJ/ncVkBuy6k5M77oNpHWL5zHqODmeki75vx0wZCLLovDL7sOWWsb1q6QZw72KXpCrGE
	SjGXium2N9emoDtP22MdxW6ODtgrzu8j7IO909atK0d+mk9Ny3W3ZN/UirL4KIB04anU+ea23Nyoc
	IdeigYofMbkcXjA0gxDb9wHGEryJMft2/LN9prZ1Bt/ZriEGBkb8J8v7+DmugsyKqTlbqRH4zJfpG
	VPvNr5twye2/d1GYlZnu3OUsso+O3AjOAJN9pgev/KW5FWFN02JHhm/aq3gTQYyEvm+dVjzY/h+CU
	jrNaXBqoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifVON-0006CQ-H5; Thu, 12 Dec 2019 20:48:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifVOC-0006B9-BS; Thu, 12 Dec 2019 20:48:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id f4so4443932wmj.1;
 Thu, 12 Dec 2019 12:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=5qSR0QdqBCxMs032kRyQPK8EtIXFRay9PJcRioaKMHY=;
 b=IqqQVn8ilZmmSxPnbbsjtHorPQB/AZreK9phmXXKd/PX+sxkep7uzTHc1eAtlEfFP+
 jdcbyZP21eOJTefkqKGfd9eUPRW2BK83iju3qT6bi2ScAFc+7uLUFuRBXCX57ebxhbgY
 ik0V440sm/3gTTrhFVU5ZEY+w4uR1XSYg4z+ahrJzIQCLjS264cTU/yl9y+UhU7NI30x
 ce3QRGUrE2qbCVFKvUhy0kSQAdUEGQDIocasLUwVvYs+zoHYeiHM6Z0djE2Y4wgn7TWe
 owMwTfCJ1hR6ESjDut+GrU7sxmj+sc3j4TmhzTZ6COP5rSGGzGbj4COtI8Oh60LgDhHB
 DwWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=5qSR0QdqBCxMs032kRyQPK8EtIXFRay9PJcRioaKMHY=;
 b=cgdsSIJ1bxuXiK32elb25X445lfLaByfyS2syydWcxAeGU+e9sZWs98K7LAEKiHnxW
 QQ6QjmJ9DlM8jL867VBkegpare2QU+lLHSBZNAjs6ZuKhNgMAH16y8SPK0IXZQUCtVXr
 G3YzO7fp92jDJGkuWcIeA+K9vydMiyg+1isqhEN0qOEKrFKBormyEUcp2SlfBG7uq+gp
 ntiAatoojPvlOFOwKRs5Vom1iTpeyqgkn5ILXqbyrLW/zTaFCPNLvAnpljiPJlrlSLEX
 XGtfUPG3D7rXscEdg052wp5/jlHFe1G/aTTAaJcDzn6MMlCySKjjh5XRlSYuOolQGrMQ
 Adjg==
X-Gm-Message-State: APjAAAUntqE2kHPOwArAkCHXWWhzMOBn3lrVPXGbKL/jJnCZkyEuH1ZP
 3B4/J0wvjrL3bKuMp1xeczc=
X-Google-Smtp-Source: APXvYqyRBHkSwvPqlOT+cdjfjV6lVJXPzV6ms+AZeyVinqzXI6QzavMEZHDeFT0yrkacR53OIEZa0Q==
X-Received: by 2002:a05:600c:10cd:: with SMTP id
 l13mr9322438wmd.102.1576183726517; 
 Thu, 12 Dec 2019 12:48:46 -0800 (PST)
Received: from localhost ([5.59.90.131])
 by smtp.gmail.com with ESMTPSA id s16sm7349852wrn.78.2019.12.12.12.48.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 12:48:45 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Date: Thu, 12 Dec 2019 21:48:43 +0100
MIME-Version: 1.0
Message-ID: <1d500ac9-accd-40d5-b1c9-e3de88957557@gmail.com>
In-Reply-To: <20191212203925.GH24359@e119886-lin.cambridge.arm.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
 <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
 <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
 <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
 <792cf6ab-26c4-40a4-90b0-a99e620548f4@gmail.com>
 <20191212203925.GH24359@e119886-lin.cambridge.arm.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_124848_417887_F8433127 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Frederick Lawler <fred@fredlawl.com>,
 Enric Balletbo Serra <eballetbo@gmail.com>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 =?iso-8859-1?Q?Stefan_M=E4tje?= <stefan.maetje@esd.eu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1cnNkYXksIERlY2VtYmVyIDEyLCAyMDE5IDk6Mzk6MjcgUE0gQ0VULCBBbmRyZXcgTXVy
cmF5IHdyb3RlOgo+IE9uIFRodSwgRGVjIDEyLCAyMDE5IGF0IDA3OjQwOjA2UE0gKzAxMDAsIFZp
Y2VudGUgQmVyZ2FzIHdyb3RlOgo+PiBPbiBUaHVyc2RheSwgRGVjZW1iZXIgMTIsIDIwMTkgMzox
NjoyNSBQTSBDRVQsIEVucmljIEJhbGxldGJvIFNlcnJhIHdyb3RlOgo+Pj4gSGkgVmljZW50ZSwK
Pj4+IAo+Pj4gTWlzc2F0Z2UgZGUgQW5kcmV3IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29t
PiBkZWwgZGlhIGRqLiwgMTIgZGUKPj4+IGRlcy4gMjAxOSBhIGxlcyAxOjUzOgo+Pj4+IE9uIFRo
dSwgRGVjIDEyLCAyMDE5IGF0IDEyOjEyOjU2QU0gKzAwMDAsIFJvYmluIE11cnBoeSB3cm90ZTog
Li4uCj4+PiAKPj4+IEFub3RoZXIgaXNzdWUgdGhhdCBpcyBhZmZlY3RpbmcgY3VycmVudCBtYWlu
bGluZSBmb3Iga2V2aW4gaXMgZml4ZWQKPj4+IHdpdGggWzFdLiBBcyB1c3VhbCwgSSBoYXZlIGEg
dHJhY2tpbmcgYnJhbmNoIGZvciA1LjUgZm9yIGRpZmZlcmVudAo+Pj4gQ2hyb21lYm9va3Mgd2l0
aCBzb21lIG5vdCB5ZXQgbWVyZ2VkIHBhdGNoZXMgdGhhdCBtYWtlcyB0aGluZ3Mgd29yawo+Pj4g
d2hpbGUgYXJlIG5vdCBmaXhlZCBbMl0uIEZvciBrZXZpbiBvbmx5IHRoZSBtZW50aW9uZWQgQVNv
QyBwYXRjaCBbMV0KPj4+IGFuZCB0aGUgcGNpZSBmaXggWzNdIHNob3VsZCBiZSBuZWVkZWQuIE90
aGVyIHRoYW4gdGhhdCBkaXNwbGF5IGlzCj4+PiB3b3JraW5nIGZvciBtZSBvbiBLZXZpbi4KPj4+
IAo+Pj4gQ2hlZXJzLAo+Pj4gIEVucmljCj4+PiAKPj4+IFsxXSAKPj4+IGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Jyb29uaWUvc291bmQuZ2l0L2NvbW1p
dC8/aD1mb3ItNS41JmlkPTRiZjJlMzg1YWE1OWMyZmFlNWY4ODBhYTI1Y2ZkMmI0NzAxMDkwOTMK
Pj4+IFsyXSAKPj4+IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vZWJhbGxldGJvL2xpbnV4
L2NvbW1pdHMvdG9waWMvY2hyb21lb3Mvc29tZXdoYXQtc3RhYmxlLTUuNQo+Pj4gWzNdICBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAxOS8xMi8xMS8xOTkKPj4+IAo+Pj4+PiAuLi4KPj4+PiBJdCdz
IGxpa2VseSB0aGF0IGFueSBQQ0kgZHJpdmVyIHRoYXQgdXNlcyBQQ0kgSU8gd2l0aCB0aGF0IAo+
Pj4+IGNvbnRyb2xsZXIgd2lsbAo+Pj4+IHN1ZmZlciB0aGUgc2FtZSBmYXRlLgo+Pj4+IAo+Pj4+
IFZpY2VudGUgLSBjYW4geW91IHRyeSB0aGUgcGF0Y2ggdGhhdCBoYXMgYmVlbiBwcm9wb3NlZCBh
bmQgCj4+Pj4gdmVyaWZ5IGl0IGZpeGVzCj4+Pj4gdGhlIGlzc3VlIGZvciB5b3U/Cj4+Pj4gCj4+
Pj4gVGhhbmtzLCAuLi4KPj4gCj4+IEhpIFJvYmluLCBBbmRyZXcgYW5kIEVucmljLAo+PiB0aGFu
ayB5b3UgYWxsIGZvciB0aGUgcXVpY2sgcmVzcG9uc2VzIQo+PiBJIGNhbiBjb25maXJtIHRoYXQg
cGF0Y2ggWzNdIGZpeGVzIHRoZSBpc3N1ZSByZXBvcnRlZCBpbiB0aGlzIGVtYWlsIGFuZAo+PiB0
aGF0IFsxXSBmaXhlcyB0aGUgb3RoZXIgaXNzdWUgcmVwb3J0ZWQgb24gdGhlIG90aGVyIGVtYWls
Lgo+Cj4gUGxlYXNlZCB0byBoZWFyIHRoaXMgaXMgd29ya2luZyBmb3IgeW91IG5vdy4KPgo+IEFy
ZSB5b3UgaGFwcHkgdG8gZ2l2ZSBhIHRlc3RlZC1ieSB0YWcgZm9yIFszXT8KClllcywgZmVlbCBm
cmVlIHRvIGFwcGx5IHRoaXMgdGFnLgpVc2luZyBpdCBqdXN0IG5vdyBhbmQgdGhlIHdsYW4gYXQg
dGhlIG90aGVyIHNpZGUgb2YgdGhlIFBDSWUgYnVzIGlzIApkZXRlY3RlZC4KClJlZ2FyZHMsCiAg
VmljZW50ZS4KCj4gVGhhbmtzLAo+Cj4gQW5kcmV3IE11cnJheQo+Cj4+IAo+PiBSZWdhcmRzLAo+
PiAgVmljZW7Dpy4KPj4gCj4KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
