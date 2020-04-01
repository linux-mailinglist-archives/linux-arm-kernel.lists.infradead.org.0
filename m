Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38B919AB90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 14:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIhq5hr27O7zeLiUA2zGYgHMXSzsYARE1og9apEkPdk=; b=FJUSQnmDOIpRgs
	AApRFe9okd2vR/LJ5gr31i2TDNsb4XJbVh3znrc3codO7ZWthdcIrhPGFjZ3NTmwegHC5yl0rAcuI
	IAmM7De76jIUywP0HJqGBF1mb7aq9KyYeZGCaf8ezG9nIasDz4X45I/o5y9031xPj+OVqJNWYRKXo
	38bNQIhek0/jFvkv7iFn+9YyLJroTFLw/zvlKUvLe9IMlyi2JQInfUAw8yfM/v8Bx3MyNVtcjGQgK
	2Rvr0NU5je1RaHYTfSLTWkaCMq5AOjEXHwj8nesc/LMNZI7RduljPtBwWBp932xys8XYjtkSMThjg
	EFySDGDHTSgF0WnS7elw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcNI-0007ap-03; Wed, 01 Apr 2020 12:21:40 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcNB-0007a6-BL
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 12:21:34 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48slfy0KhSz1qs03;
 Wed,  1 Apr 2020 14:21:30 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48slfx6Vhdz1r0cS;
 Wed,  1 Apr 2020 14:21:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id PSX65qWJdcuN; Wed,  1 Apr 2020 14:21:28 +0200 (CEST)
X-Auth-Info: JBL75dkDabbB9IkmXRps2Ow/Prvj/huRXYHORszq5gQ=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 14:21:28 +0200 (CEST)
Subject: Re: [PATCH V3 13/22] ARM: dts: stm32: Enable GPU on AV96
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-14-marex@denx.de>
 <eb93de42-1fa2-e4ee-e104-3c8b57b64c40@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <9ed8f864-9bbe-b090-2399-6cea8b088fe2@denx.de>
Date: Wed, 1 Apr 2020 14:21:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <eb93de42-1fa2-e4ee-e104-3c8b57b64c40@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_052133_539827_CE95DD24 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8xLzIwIDExOjU5IEFNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IEhpIE1hcmVrCgpI
aSwKCj4gT24gMy8zMS8yMCA3OjU4IFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4gRW5hYmxlIHRo
ZSBHUFUgcHJlc2VudCBvbiB0aGUgU1RNMzJNUDEgcG9wdWxhdGVkIG9uIEFWOTYuCj4+Cj4+IFJl
dmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBs
aW5hcm8ub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4K
Pj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUgPGFsZXhhbmRyZS50b3JndWVAc3QuY29tPgo+PiBDYzog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4K
Pj4gQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbT4KPj4gQ2M6
IFBhdHJpY2UgQ2hvdGFyZCA8cGF0cmljZS5jaG90YXJkQHN0LmNvbT4KPj4gQ2M6IFBhdHJpY2sg
RGVsYXVuYXkgPHBhdHJpY2suZGVsYXVuYXlAc3QuY29tPgo+PiBDYzogbGludXgtc3RtMzJAc3Qt
bWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+PiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4+IC0tLQo+PiBWMjogTm8gY2hhbmdlCj4+IFYzOiBObyBjaGFuZ2UKPj4g
LS0tCj4+IMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMgfCA0
ICsrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cwo+PiBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMKPj4gaW5kZXggMjdjNDhm
OTg4NTQwLi4xOWE3YTEzMGIxNDggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0
bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJt
cDE1N2EtYXZlbmdlcjk2LmR0cwo+PiBAQCAtMTM5LDYgKzEzOSwxMCBAQCBwaHkwOiBldGhlcm5l
dC1waHlANyB7Cj4+IMKgwqDCoMKgwqAgfTsKPj4gwqAgfTsKPj4gwqAgKyZncHUgewo+PiArwqDC
oMKgIHN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPiAKPiBHUFUgaXMgbm93IGVuYWJsZSBi
eSBzbyB5b3UgY2FuIGRyb3AgdGhpcyBwYXRjaC4KCldoeSBpcyBpdCBlbmFibGVkIGJ5IGRlZmF1
bHQgPyBUaGF0J3Mgc29tZXdoYXQgdXNlbGVzcyBvbiBoZWFkbGVzcyBzeXN0ZW1zLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
