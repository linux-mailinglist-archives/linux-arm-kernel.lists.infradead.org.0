Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10326135A93
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPWuXGTOK+/xSWejJJsdK3m5lGSQ25pYb2XwOT/16v0=; b=B7Ass2d3jC40Vu
	jigSAuQ0+Htsg6yAJHL6q9tXiV7CCdyqCBQUGaKLG9VrnnzBJvzDT9+B4DmJBBVi/KbTn1Y2cKlGj
	dzlyKqKwtimU6pAQ4sJ2rvYL3EL0h62shfCSTIcCbHSLgoEbquJUKoslwpEs4LyY9f/P0KohAASwE
	ODiFP0X44cFgtv9xahjFurmmcQmVDut3eDULx6OOo9b9QYTeRDJ5QPsGeImEnjxxrjKcadJGMlKt8
	UcBzzRBHLPiUJpUpA4GuLivDpI0jyCECnNPdjoOHcXBjAO02uwt4vdU6osCqW/FpP4s9j7Ex+WUr+
	6ZbSHDl2eGAT8lR9O1FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYDq-0003VV-42; Thu, 09 Jan 2020 13:51:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYDj-0003Ur-GY
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:51:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so7490234wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XDCI6TLpdeIYPij5yOHYCifq+NjQyJfwW4dyJEujviU=;
 b=G3hIUulK4TgEq82wz5GNtf5wS7Mq2sgiYrOa/+OvqMHJJNB+YkDsyumIDlcCCGezFj
 HhXGOIkHJkDvYMuJCmaFP8yZYz5J0m9VCj1xx+9Me5O68XQr8zMuMvFsy7n1V5NfOBAg
 yKDeiHq/64ozhgaPBvsuPgK3un1Cz9HQs2Tl1dcS7eCeC2XIdGcwXpWz+1yAvfQw09vX
 vtKx6J1uFA2d5uG0T9Wr3TFZoFQAPMlNG5WDxJ9tQBnJu1G+Ghd/unu/ESnKGg1BcK2P
 mnhyOGn3lLylsBqzjiUj360YW3DdgotpRceA50aZfwY32TVnatQod9+G/+iR0BX4Vs6u
 tyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XDCI6TLpdeIYPij5yOHYCifq+NjQyJfwW4dyJEujviU=;
 b=QHfRy0xwFglHD3dnUO1phYRSWMn6nTrIiRY7JN6cg98YfjliYzrbVikUD9AvD7zW6E
 /iycQOKDncEc5dshbJyfLTa7dNtcEbqIswDPAALK+rPorNhzUIX9hm4FSY8yj6c5uSxX
 WvhiijkqWx10cwIzgGHwUkyKrqQb9h5A7uUST7Q2upvrrCVkitFY41LuATNHY3KUY5pK
 O49u8uGKWfihHDOtb3LRHGYKaE0JZWGanixOM6D9tm/H0s8Hb8ugohZgjUY6hGAlKKcP
 8jrKUtdcpSTlL8UopXpLPvsWMxXaeZWEhzIhf6lv6tYWYMgE1/F1l1ALRMAWYGPBlBYk
 xC4g==
X-Gm-Message-State: APjAAAV4E+xL4O33/z9GTbv5SGA288RiWz819fijBaXv6xVKg+1TPSsI
 b8PCTE4POa/b1YXBA8H7VSJG8DTDfHM6QfP525vIqbXGGHc=
X-Google-Smtp-Source: APXvYqz8e1hxJpaPqVsNsHKM5ImeIdIGCduTba279//zephv/DVYc8tIyk0DE067Xb7xRCg7Bq0x3Ng81eVOKS4awRo=
X-Received: by 2002:a5d:44cd:: with SMTP id z13mr11245464wrr.104.1578577889103; 
 Thu, 09 Jan 2020 05:51:29 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578577147.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Date: Thu, 9 Jan 2020 14:51:18 +0100
Message-ID: <CAHTX3dJDuoXjX4CJJ88Vf_uUWSi7GDMGM5vYmxwNFB+9Sqw7cg@mail.gmail.com>
Subject: Re: [PATCH 0/6] arm64: zynqmp: Various DT fixes
To: linux-arm <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055131_547276_1BA351C5 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xI10IDkuIDEuIDIwMjAgdiAxNDozOSBvZGVzw61sYXRlbCBNaWNoYWwgU2ltZWsgPG1pY2hhbC5z
aW1la0B4aWxpbnguY29tPiBuYXBzYWw6Cj4KPiBIaSwKPgo+IEkgYW0gc2VuZGluZyB2YXJpb3Vz
IERUIGZpeGVzIHdoaWNoIGhhdmUgYmVlbiBmb3VuZCBvdmVyIHRoZSB4aWxpbngKPiByZWxlYXNl
Lgo+IDEtMiBwYXRjaGVzIGFyZSBmaXhpbmcgcmVwb3J0ZWQgZGVzY3JpcHRpb24gaXNzdWVzCj4g
My02IHBhdGNoZXMgYXJlIGFjdHVhbCBmaXhlcy4KPgo+IFRoYW5rcywKPiBNaWNoYWwKPgo+Cj4g
TWljaGFsIFNpbWVrICg1KToKPiAgIGFybTY0OiB6eW5xbXA6IEZpeCBhZGRyZXNzIGZvciB0Y2E2
NDE2X3U5NyBjaGlwIG9uIHpjdTEwNAo+ICAgYXJtNjQ6IHp5bnFtcDogVHVybiBjb21tZW50IHRv
IGdwaW8tbGluZS1uYW1lcwo+ICAgYXJtNjQ6IHp5bnFtcDogU2V0dXAgY2xvY2stb3V0cHV0LW5h
bWVzIGZvciBzaTU3MCBjaGlwcwo+ICAgYXJtNjQ6IHp5bnFtcDogUmVtb3ZlIGJyb2tlbi1jZCBm
cm9tIHpjdTEwMC1yZXZDCj4gICBhcm02NDogenlucW1wOiBTZXR1cCBkZWZhdWx0IG51bWJlciBv
ZiBjaGlwc2VsZWN0cyBmb3IgemN1MTAwCj4KPiBWZW5rYXRlc2ggWWFkYXYgQWJiYXJhcHUgKDEp
Ogo+ICAgYXJtNjQ6IHp5bnFtcDogRml4IHRoZSBzaTU3MCBjbG9jayBmcmVxdWVuY3kgb24gemN1
MTExCj4KPiAgLi4uL2Jvb3QvZHRzL3hpbGlueC96eW5xbXAtemN1MTAwLXJldkMuZHRzICAgIHwg
IDMgKy0KPiAgLi4uL2Jvb3QvZHRzL3hpbGlueC96eW5xbXAtemN1MTAyLXJldkEuZHRzICAgIHwg
NDUgKysrKystLS0tLS0tLS0tLS0tLQo+ICAuLi4vYm9vdC9kdHMveGlsaW54L3p5bnFtcC16Y3Ux
MDQtcmV2QS5kdHMgICAgfCAgNCArLQo+ICAuLi4vYm9vdC9kdHMveGlsaW54L3p5bnFtcC16Y3Ux
MDYtcmV2QS5kdHMgICAgfCAgMiArCj4gIC4uLi9ib290L2R0cy94aWxpbngvenlucW1wLXpjdTEx
MS1yZXZBLmR0cyAgICB8ICA0ICstCj4gIDUgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygr
KSwgMzggZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMjQuMAo+CgpQbGVhc2UgaWdub3JlIHRoaXMg
cGF0Y2hzZXQuIEkgc2VudCBqdXN0IDYgcGF0Y2hlcyBpbnN0ZWFkIG9mIDggdGhhdCdzCndoeSBk
ZXNjcmlwdGlvbiBoZXJlIGlzIG5vdCBjb3JyZWN0LgoKVGhhbmtzLApNaWNoYWwKCi0tIApNaWNo
YWwgU2ltZWssIEluZy4gKE0uRW5nKSwgT3BlblBHUCAtPiBLZXlJRDogRkUzRDFGOTEKdzogd3d3
Lm1vbnN0ci5ldSBwOiArNDItMC03MjE4NDI4NTQKTWFpbnRhaW5lciBvZiBMaW51eCBrZXJuZWwg
LSBYaWxpbnggTWljcm9ibGF6ZQpNYWludGFpbmVyIG9mIExpbnV4IGtlcm5lbCAtIFhpbGlueCBa
eW5xIEFSTSBhbmQgWnlucU1QIEFSTTY0IFNvQ3MKVS1Cb290IGN1c3RvZGlhbiAtIFhpbGlueCBN
aWNyb2JsYXplL1p5bnEvWnlucU1QL1ZlcnNhbCBTb0NzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
