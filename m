Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F334514953A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 12:24:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nH/srNp6x3wQfvUUi+vHGcnje/BSigDCk29p92vrNQg=; b=LUQ5ciJu1v5W/o
	TmXk0d0F95IEACU540iNuHg6RVte9tMQQwdEEUde0ImOJlf/8ChtYg6XBxlzc3s/1msr1k1cYcpUD
	zzbPztS/jfPLLRtuMOCNlF5Vhm9Pm/cDRI0el2Qbbaj0jjzgRFEs+AyFSlO9ywwz8jOgioKMxnBDh
	BSVmiyE64nxk9SS4KcksNlqnMBkC9gek4VQgrIL+UaBG5adhu8yKWUSk7QNRCKWQ8XkWvYKuUSFy7
	0LZL3+VE0dAVNDg6n4qlbvoSTBjsKjSrCb9ZdvlwevLz4BuJ090oG0f4bUA4KP/Xoygw0ycYLb1tA
	YNCuJA48CdHiCrYqV6/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivJYV-0006Ms-4h; Sat, 25 Jan 2020 11:24:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJYK-0006MB-6D
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 11:24:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so5181265wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 03:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bNk/OspMeZjlVC/SKfI3L+0oFPUb+GRq74FvOVEc3HQ=;
 b=gM9Yxu1p0Nsi4Zctq5wvCXsMYRrDBm/Vjiqmt/eGl8COnQMgWdfFUfDB3XdbgThdmj
 NIDlR5Hh4eTMZQjI0hhLZ3T5oyP25FetCvAoeeR3vVXaixcESuqjeHYXQBq1ZxMazQUv
 EED3txDawm+AoD9BYnHgBzFhO2ixy7WBXUmZqodqGBA+F/61lIWvOFHAf8WGeGrN+S/6
 EUh5nR99OQiYJNynws8yIw7OvFb6eHFieq8WTEIjONRZK0ogBWVEi8tzyypZW2gMoWPh
 hQxPbj1Q3NotEc/m5T+JXSaH+8NPHEYRdEZELI72NTWFSVmIMT0O9IJP6FCzpKD2qgY4
 hBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bNk/OspMeZjlVC/SKfI3L+0oFPUb+GRq74FvOVEc3HQ=;
 b=NjToRamqngUalJcCjv2PJODQZKml7HS5urumsRl7+QHqMDJPLuvNzZLK9opjwU6hdR
 7wnP4LzVjmRSmKNam5h+DzJVR5rm8hb4MBZldSGecywV+h9tcLDOQWlKSJ2Zg/yfs58L
 N/KlfkMaFHKZ5x4M2IkwYuTHubDfpujNxNzD/goau2Cz++30kxedjkAPU+vbJtTlbeBR
 ZGpNHW9LiGrxubMzhHTW0FuL8HU8xy6q1w8K9zYC2y94JZ786noFNH/8KkTnbVvJ+JFf
 wXMdMg+vWWgmPfQ7qPttXJrCxPGcShViGDk3KUcJWBmkQ+2x+kybfhsF29do99oppcjV
 HlLg==
X-Gm-Message-State: APjAAAWwtHduYdkdC48ng/HzkKjfSxcWAjtT1//Og1JaWCJl26XYV93G
 6nTkonC4grX8uvAKOyDSai8=
X-Google-Smtp-Source: APXvYqwSRB4GnMc8wYHmDCrrOC5fRc3uwvimip3VqhEtndLxWL6dxHIkp/VsDwcDVobhpqSxrQUiNg==
X-Received: by 2002:a5d:4a8c:: with SMTP id o12mr9736485wrq.43.1579951474523; 
 Sat, 25 Jan 2020 03:24:34 -0800 (PST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id a62sm1604452wmh.33.2020.01.25.03.24.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Jan 2020 03:24:33 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH 1/8] clk: sunxi-ng: sun8i-de2: Swap A64 and
 H6 definitions
Date: Sat, 25 Jan 2020 12:24:31 +0100
Message-ID: <2701584.e9J7NaK4W3@jernej-laptop>
In-Reply-To: <2008374.irdbgypaU6@jernej-laptop>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
 <CAGb2v6680yWT8KtjK0uKM00+6ed4NoPpsMaDyfYERwOXgb8Vbg@mail.gmail.com>
 <2008374.irdbgypaU6@jernej-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_032436_229411_BD5EC83A 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, jernej.skrabec@siol.net,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNvYm90YSwgMjUuIGphbnVhciAyMDIwIG9iIDEyOjIwOjE4IENFVCBqZSBKZXJuZWogxaBr
cmFiZWMgbmFwaXNhbChhKToKPiBIaSEKPiAKPiBEbmUgc29ib3RhLCAyNS4gamFudWFyIDIwMjAg
b2IgMDQ6MDU6MzMgQ0VUIGplIENoZW4tWXUgVHNhaSBuYXBpc2FsKGEpOgo+ID4gT24gU2F0LCBK
YW4gMjUsIDIwMjAgYXQgNzoyMCBBTSBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lv
bC5uZXQ+Cj4gCj4gd3JvdGU6Cj4gPiA+IEZvciBzb21lIHJlYXNvbiwgQTY0IGFuZCBINiBoYXZl
IHN3YXBwZWQgY2xvY2tzIGFuZCByZXNldHMgZGVmaW5pdGlvbnMuCj4gPiA+IEg2IGRvZXNuJ3Qg
aGF2ZSByb3RhdGlvbiB1bml0IHdoaWxlIEE2NCBoYXMuIFN3YXAgYXJvdW5kIHRvIGNvcnJlY3Qg
dGhlCj4gPiA+IGlzc3VlLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFi
ZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gCj4gPiBDb3VsZCB5b3UgYWRkIEZpeGVz
IHRhZ3MgZm9yIHRoaXMgb25lPwo+IAo+IEknbSBub3Qgc3VyZSB3aGljaCBjb21taXQgdG8gcmVm
ZXJlbmNlLiBINiBvbmU/IG9yIGFsc28gaW5pdGlhbCBBNjQgb25lPwo+IAo+IEkganVzdCBmb3Vu
ZCBvdXQgdGhhdCBINSBjb21wYXRpYmxlIHVzZXMgQTY0IHN0cnVjdHVyZSwgd2hpY2ggaXMgbm90
Cj4gY29ycmVjdC4gSDUgZG9lc24ndCBjb250YWluIHJvdGF0ZSBjb3JlLgo+IAo+IERvIHlvdSBo
YXZlIGFueSBiZXR0ZXIgaWRlYSBob3cgdG8gbmljZWx5IHNvbHZlIHRoaXMgbWVzcz8gSSdtIHRo
aW5raW5nIHRoYXQKPiBmb3IgdjIgSSB3b3VsZCBmaXJzdCBkZWNvdXBsZSBzb21lIGNvbXBhdGli
bGVzLCBsaWtlIHRoaXMgZm9yIEg1IGFuZCBSNDAKPiBhbmQgVjNzIGZyb20gQTgzVCAoYXMgaXQg
Y2FuIGJlIHNlZW4gaW4gdGhlIG5leHQgcGF0Y2gpLiBBZnRlciB0aGF0LCByYXRoZXIKPiB0aGFu
IHN3aXRjaGluZyBkZWZpbml0aW9ucyBJIHdvdWxkIGZpeCBlYWNoIGNvbXBhdGlibGUgb25lIGJ5
IG9uZS4gQXQgdGhlCj4gZW5kLCBpZiBhbnkgZW50cnkgaXMgZHVwbGljYXRlZCwgSSBjYW4gYWRk
IG9uZSBjb21taXQgdG8gbWVyZ2Ugc2FtZQo+IHN0cnVjdHVyZXMuCgpUaGlzIGNvdWxkIGFsc28g
YmUgYSBzZXBhcmF0ZSBzZXJpZXMgb2YgcGF0Y2hlcyBvbiB3aGljaCByb3RhdGUgZHJpdmVyIHNl
cmllcyAKZGVwZW5kcyBvbi4KIApCZXN0IHJlZ2FyZHMsCkplcm5lagoKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
