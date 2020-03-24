Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3571190F64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VIi8T/iSkhiv120V5Zyr5G6C8LUKbSVXKNZTBhIKDk=; b=YpqsrYknFE7TaI
	DL0CIQuH8FhWsyVQl/N2n45jcJBAO2NOsZ+sQ/BkFS+8gCBrCyf1fs84Dzw1yvyVemgtS7qTwRvkO
	we2THsV2ycHXQYMjCXGziw9sATf8ebPwOiU7IWm81HRahS8z3cIrsZvNMsXYrr6M5ee4icHTD0zM9
	e3NawRBMfQoz1jFvTMatOQN2LlXjxUa0FzBEzPf0Uupj2zkxpsMUa0JXTmfnQJF62zzA+L9GUn0vg
	XYDm4Kkz9VQCaFrQf3ki7i9QLzX3GuxEUCBY1w2LnuYLoVIsOFgub6m3NFMhgpKUlGk8+A6jStPL3
	Umqsyzb2m5KwInjmnrdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjVz-0000Gn-R3; Tue, 24 Mar 2020 13:22:43 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjVq-0000G6-Cb
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:22:36 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48msP3688pz1rvBb;
 Tue, 24 Mar 2020 14:22:31 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48msP35PShz1r0bv;
 Tue, 24 Mar 2020 14:22:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id T8RBuOq0MbG2; Tue, 24 Mar 2020 14:22:28 +0100 (CET)
X-Auth-Info: LeKA07XIgaYr+0Rh30CeUF0hXhMSqkO01ilXetBVGEI=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 24 Mar 2020 14:22:27 +0100 (CET)
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
Date: Tue, 24 Mar 2020 14:22:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_062234_577953_5F344AD6 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
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
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNC8yMCAyOjA0IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IAo+IAo+IE9uIDMv
MjMvMjAgMzozMSBBTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IFRoZSBESCBQREsyIGNhbiBiZSBw
b3B1bGF0ZWQgd2l0aCBTb00gd2l0aCBhbnkgU1RNMzJNUDE1eCB2YXJpYW50Lgo+PiBBZGQgdGhl
IERUcyBkZXNjcmliaW5nIHRoZSByZW1haW5pbmcgY29tYmluYXRpb25zLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPj4gQ2M6IEFsZXhhbmRyZSBUb3Jn
dWUgPGFsZXhhbmRyZS50b3JndWVAc3QuY29tPgo+PiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29x
dWVsaW4uc3RtMzJAZ21haWwuY29tPgo+PiBDYzogUGF0cmljZSBDaG90YXJkIDxwYXRyaWNlLmNo
b3RhcmRAc3QuY29tPgo+PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBz
dC5jb20+Cj4+IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4+
IFRvOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gLS0tCj4+IE5PVEU6
IElzIHRoZXJlIGEgYmV0dGVyIHdheSB0byBkbyB0aGlzIHRoYW4gdG8gaGF2ZSB0aGlzIGtpbmQg
b2YgYQo+PiDCoMKgwqDCoGNvbWJpbmF0b3JpYWwgZXhwbG9zaW9uIG9mIERUcyA/Cj4gCj4gSSBo
YXZlIG5vIGJldHRlciBpZGVhLiBRdWVzdGlvbiB3YXMgdGhlIHNhbWUgZm9yIHN0bTMyIGJvYXJk
cywgYW5kIEkKPiBjaG9zZSB0byB0YWtlIHRoaXMgb3B0aW9uLgoKT25lIG9wdGlvbiB3b3VsZCBi
ZSB0byBqdXN0IGhhdmUgRFQgZm9yIHRoZSBtb3N0IGZlYXR1cmUtY29tcGxldGUgb3B0aW9uCigx
NTcpIGFuZCB0aGVuIGhhdmUgVS1Cb290IHJlbW92ZSB0aGUgbm9kZXMgZm9yIEhXIHdoaWNoIGlz
IG5vdCBwcmVzZW50Cm9uIHRoZSBwYXJ0aWN1bGFyIFNvQyBvcHRpb24gaWYgaXQncyBvbmUgb2Yg
dGhlIG1vcmUgbGltaXRlZCBvbmVzICgxNTMsCjE1MSkuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
