Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D281EFEA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xhT0wE+s/NL2737d4Ct2L3XnFTGDDMYHgYRDCe9eQ8=; b=LcVfk24pFh6FwZ
	lNuO/z9BTW1XzVLrcNky8N5AxvZYvMv3koY/KE10oH0IPRiJUWV5WFW+rgz5eMZbPv/+vdy3aPqVU
	bz78M4ReHLwHzHU4zGs8p0b2j0agfeEKGSB3cr7AWgIjc86e/hROxJ6ZIrtA4pBBR0/7yHJju3Nr1
	ezMC9a4CpImZdBOhKnreB6uAyY+Cl6EWLWzaF9evNUonnWKk6t4tn50oSmebUJGzcZ1pQhGOP54vD
	ViuIxTQ7NUieeNucSesxTrToN259PEA2lpS0iWv+GzUFYOuKpTCEPRl55CsH9GuI0mzuHYThvZ2cZ
	kzSSATtamC5b0O+kmIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhFxW-0003Lh-FS; Fri, 05 Jun 2020 17:16:46 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhFxP-0003LL-5H
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:16:40 +0000
Received: by mail-qt1-x843.google.com with SMTP id w9so9114901qtv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 10:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=mKwEVWcuU9C/nuiwJL6rIyPwKlGow9qq7XqSXfkexXo=;
 b=JW744sp/ZMjgMWxCbk1XkfcVNgxRtWJfRjXsMlGfic0he3IcOG6TbcxkuoS6aVv+t8
 kDDT5uGYJ5bjzaOwha4LHAMoOg6Lc3du03KhN9t/isduEood6I/Cd4VVWfqG/AR5aqRQ
 wHLEAUjBttw/BNHBpoZnVQwf0JU9LF//utPqtTRBcVqB4gVrBNzRsRhqt+aZeb6ljsKR
 91ZwfT3zsbqz3vAFDlgJzxFOMtHOxedLf2wfwdvbjTDkDsqo7Pq3FIt8qNYvO34vWM6r
 XYnk3HQGO9F3lI3Y2P9upf3S/zZx/j+5pluLh1M3B+eeB7PDjz55IADa/ghUI3Tj+b3z
 zywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mKwEVWcuU9C/nuiwJL6rIyPwKlGow9qq7XqSXfkexXo=;
 b=pG+D5bhfq+Zp5OWkHsG2vMuFb4GpeqTeoIQDgf7Jlqm8d8Mh8B0g4Z63ETdia/YI2P
 UfLYZ5ILYMpWd09KawCfmx4zaPGa7Kb0rxP3UpR9y8OkDgyMSSbtBwyDc709I7RtWAM/
 DF5VB5mwznxFBkz19KghHw3aN/9gETDh8l2qLheiTwJGDHQsRREHMVDwDNQsdY62LxBq
 IYhyBobpVmgKe/RMvlpDiwazHodOHYA3Q/SlYU7T3A9c5y3vxBsWafYvwq1SMfyCP7tb
 ORjQ2ZYVrvEhpvNkmOVy8TLe3A1O0I+luqTVrQY7aVs2jbjHuTA8hzb745QFRU2cVzEA
 OcVg==
X-Gm-Message-State: AOAM530499yf3R3bwiHs7ypsWycgnjN9IXvb1+7lObi8xvh2tF3aNsyP
 AW2D73MtbzdRWavFPdjhplxM7g==
X-Google-Smtp-Source: ABdhPJz14TforE3jgSwXfr9lStxyBFF1sjMdKoGyrBGGeSClYBkD8DrTRaHF2oSD9Cx42KVrs/3p2w==
X-Received: by 2002:ac8:42ce:: with SMTP id g14mr10938312qtm.117.1591377397661; 
 Fri, 05 Jun 2020 10:16:37 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id z4sm330982qtu.33.2020.06.05.10.16.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 10:16:36 -0700 (PDT)
Message-ID: <7e74e15b7b3f9fc765182f1a43cfcf1e0e9602fc.camel@ndufresne.ca>
Subject: Re: [PATCH 2/3] media: cedrus: h264: Properly configure reference
 field
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej Skrabec <jernej.skrabec@siol.net>, paul.kocialkowski@bootlin.com,
 mripard@kernel.org
Date: Fri, 05 Jun 2020 13:16:35 -0400
In-Reply-To: <20200604185745.23568-3-jernej.skrabec@siol.net>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-3-jernej.skrabec@siol.net>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_101639_202575_D7A069CF 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1ZGkgMDQganVpbiAyMDIwIMOgIDIwOjU3ICswMjAwLCBKZXJuZWogU2tyYWJlYyBhIMOp
Y3JpdCA6Cj4gV2hlbiBpbnRlcmxhY2VkIEgyNjQgY29udGVudCBpcyBiZWluZyBkZWNvZGVkLCBy
ZWZlcmVuY2VzIG11c3QgaW5kaWNhdGUKPiB3aGljaCBmaWVsZCBpcyBiZWluZyByZWZlcmVuY2Vk
LiBDdXJyZW50bHkgdGhpcyB3YXMgZG9uZSBieSBjaGVja2luZwo+IGNhcHR1cmUgYnVmZmVyIGZs
YWdzLiBIb3dldmVyLCB0aGF0IGlzIG5vdCBjb3JyZWN0IGJlY2F1c2UgY2FwdHVyZQo+IGJ1ZmZl
ciBtYXkgaG9sZCBib3RoIGZpZWxkcy4KPiAKPiBGaXggdGhpcyBieSBjaGVja2luZyBuZXdseSBp
bnRyb2R1Y2VkIGZsYWdzIGluIHJlZmVyZW5jZSBsaXN0cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+CgpQZXJoYXBzIGFuIGFkZGl0
aW9uYWwgcGF0Y2ggY291bGQgY2xlYW51cCB0aGUgbWlzcy1sZWFkaW5nIGNvbW1lbnQgaW4KdjRs
Ml9oMjY0X2RwYl9lbnRyeSBkZWZpbml0aW9uLgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVz
bmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyB8IDYgKystLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IGluZGV4IGNj
ZTUyN2JiZGY4Ni4uYzg3NzE3ZDE3ZWM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IEBAIC0xODMsNyArMTgzLDYgQEAgc3Rh
dGljIHZvaWQgX2NlZHJ1c193cml0ZV9yZWZfbGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4LAo+
ICAJZm9yIChpID0gMDsgaSA8IG51bV9yZWY7IGkrKykgewo+ICAJCWNvbnN0IHN0cnVjdCB2NGwy
X2gyNjRfZHBiX2VudHJ5ICpkcGI7Cj4gIAkJY29uc3Qgc3RydWN0IGNlZHJ1c19idWZmZXIgKmNl
ZHJ1c19idWY7Cj4gLQkJY29uc3Qgc3RydWN0IHZiMl92NGwyX2J1ZmZlciAqcmVmX2J1ZjsKPiAg
CQl1bnNpZ25lZCBpbnQgcG9zaXRpb247Cj4gIAkJaW50IGJ1Zl9pZHg7Cj4gIAkJdTggZHBiX2lk
eDsKPiBAQCAtMTk4LDEyICsxOTcsMTEgQEAgc3RhdGljIHZvaWQgX2NlZHJ1c193cml0ZV9yZWZf
bGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4LAo+ICAJCWlmIChidWZfaWR4IDwgMCkKPiAgCQkJ
Y29udGludWU7Cj4gIAo+IC0JCXJlZl9idWYgPSB0b192YjJfdjRsMl9idWZmZXIoY2FwX3EtPmJ1
ZnNbYnVmX2lkeF0pOwo+IC0JCWNlZHJ1c19idWYgPSB2YjJfdjRsMl90b19jZWRydXNfYnVmZmVy
KHJlZl9idWYpOwo+ICsJCWNlZHJ1c19idWYgPSB2YjJfdG9fY2VkcnVzX2J1ZmZlcihjYXBfcS0+
YnVmc1tidWZfaWR4XSk7Cj4gIAkJcG9zaXRpb24gPSBjZWRydXNfYnVmLT5jb2RlYy5oMjY0LnBv
c2l0aW9uOwo+ICAKPiAgCQlzcmFtX2FycmF5W2ldIHw9IHBvc2l0aW9uIDw8IDE7Cj4gLQkJaWYg
KHJlZl9idWYtPmZpZWxkID09IFY0TDJfRklFTERfQk9UVE9NKQo+ICsJCWlmIChyZWZfbGlzdFtp
XS5mbGFncyAmIFY0TDJfSDI2NF9SRUZFUkVOQ0VfRkxBR19CT1RUT01fRklFTEQpCj4gIAkJCXNy
YW1fYXJyYXlbaV0gfD0gQklUKDApOwo+ICAJfQo+ICAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
