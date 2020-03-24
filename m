Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025C9191332
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wnNzK7wdGka804bu7Z216EYrD421hBoESwN09iNpfzg=; b=kRWSKe0aGP8f6A8kWM1iTvDFH
	KcZ8D5awxNn46YNHQoR+27x6iaMgv2wSXkJjg7bCwlGf8hnnxJGdvsWlk4RYP0hRSlM1agi2vlQUg
	p2n7/U0m5Xk+xz7ahPM4j/sVcwLqGpC9393kJoh+Sne9x+/8sMPraDGC9w7c8Nytjd5+jETKV000S
	qErOn7WqaQtAp2XEpkUkLVG8rzf8snv4Xz769BtdMC+/0i4SBvw9eQf36sJPmnE4neuHf2NrLP8Gy
	o4NeT4ZTTtD26nQbX9/D5JEHMG7VLLIw59RWFJmqXjXEgchwyB8PEM/I8eFBTHwhsam+1J30c5Ftq
	ggrur+8bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkY8-0003Sw-BB; Tue, 24 Mar 2020 14:29:00 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkXy-0003SP-9M
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:28:52 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02OES6D4021886; Tue, 24 Mar 2020 15:28:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=4Mjmr8W2mGImkzTmhVFrTubeGGhBsMerrZNYsp5RAps=;
 b=u3EkfxgTTZ3+6Jjlxd1mPb71eud0W2GsTd1B2lY4kEilRn3WSrGgn+V5zGFBe6cTzUoY
 Hr7ACTcYXJhc3RqhAEnzcD/GhQoSLnFVS3J+At3db4I684OiGkb7o2mbf3Y/ZtInF7LQ
 CXtio00AR5H3Ad3p9tKXolg7QPBqZear56Ld5c8dPMEAdgQMUvzPZ7+d62z+3Zl/Oq4V
 3zr8BQ2tzwdmC1UME5+XFSNnX4gTyREBCEihnZNy/LC8XCnmvDqJR4B8FRpk29nEnRl/
 Lm36peeypL6p8TtzbNGdW1tW2fUUDrEAIxJowNlnNNcpSIQomfWQ5HO9Il5RIAFAj/Ry Tw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ywapnysqn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Mar 2020 15:28:46 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 363F510002A;
 Tue, 24 Mar 2020 15:28:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1E5E42B0D66;
 Tue, 24 Mar 2020 15:28:41 +0100 (CET)
Received: from lmecxl0912.tpe.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 24 Mar
 2020 15:28:36 +0100
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
 <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
 <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
 <028556ba-f088-bf04-4473-a69569157411@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <792e11db-d345-03d4-6d8f-3f9b8ed40576@st.com>
Date: Tue, 24 Mar 2020 15:28:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <028556ba-f088-bf04-4473-a69569157411@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-24_05:2020-03-23,
 2020-03-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072850_687735_C7E3ACE7 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzLzI0LzIwIDM6MTUgUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+IE9uIDMvMjQvMjAgMzow
NyBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4KPj4KPj4gT24gMy8yNC8yMCAyOjIyIFBN
LCBNYXJlayBWYXN1dCB3cm90ZToKPj4+IE9uIDMvMjQvMjAgMjowNCBQTSwgQWxleGFuZHJlIFRv
cmd1ZSB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4gT24gMy8yMy8yMCAzOjMxIEFNLCBNYXJlayBWYXN1
dCB3cm90ZToKPj4+Pj4gVGhlIERIIFBESzIgY2FuIGJlIHBvcHVsYXRlZCB3aXRoIFNvTSB3aXRo
IGFueSBTVE0zMk1QMTV4IHZhcmlhbnQuCj4+Pj4+IEFkZCB0aGUgRFRzIGRlc2NyaWJpbmcgdGhl
IHJlbWFpbmluZyBjb21iaW5hdGlvbnMuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hcmVr
IFZhc3V0IDxtYXJleEBkZW54LmRlPgo+Pj4+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFu
ZHJlLnRvcmd1ZUBzdC5jb20+Cj4+Pj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5z
dG0zMkBnbWFpbC5jb20+Cj4+Pj4+IENjOiBQYXRyaWNlIENob3RhcmQgPHBhdHJpY2UuY2hvdGFy
ZEBzdC5jb20+Cj4+Pj4+IENjOiBQYXRyaWNrIERlbGF1bmF5IDxwYXRyaWNrLmRlbGF1bmF5QHN0
LmNvbT4KPj4+Pj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20K
Pj4+Pj4gVG86IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+PiAtLS0K
Pj4+Pj4gTk9URTogSXMgdGhlcmUgYSBiZXR0ZXIgd2F5IHRvIGRvIHRoaXMgdGhhbiB0byBoYXZl
IHRoaXMga2luZCBvZiBhCj4+Pj4+ICDCoMKgwqDCoMKgY29tYmluYXRvcmlhbCBleHBsb3Npb24g
b2YgRFRzID8KPj4+Pgo+Pj4+IEkgaGF2ZSBubyBiZXR0ZXIgaWRlYS4gUXVlc3Rpb24gd2FzIHRo
ZSBzYW1lIGZvciBzdG0zMiBib2FyZHMsIGFuZCBJCj4+Pj4gY2hvc2UgdG8gdGFrZSB0aGlzIG9w
dGlvbi4KPj4+Cj4+PiBPbmUgb3B0aW9uIHdvdWxkIGJlIHRvIGp1c3QgaGF2ZSBEVCBmb3IgdGhl
IG1vc3QgZmVhdHVyZS1jb21wbGV0ZSBvcHRpb24KPj4+ICgxNTcpIGFuZCB0aGVuIGhhdmUgVS1C
b290IHJlbW92ZSB0aGUgbm9kZXMgZm9yIEhXIHdoaWNoIGlzIG5vdCBwcmVzZW50Cj4+PiBvbiB0
aGUgcGFydGljdWxhciBTb0Mgb3B0aW9uIGlmIGl0J3Mgb25lIG9mIHRoZSBtb3JlIGxpbWl0ZWQg
b25lcyAoMTUzLAo+Pj4gMTUxKS4KPj4+Cj4+Cj4+IFllcyBpdCB3YXMgYSBwb3NzaWJpbGl0eSB0
aGF0IEkgZGlzY3Vzc2VkIHdpdGgga2V2aW4gSC4gYXQgdGhlIGxhdGVzdAo+PiBFTENFIGJ1dCBh
dCB0aGUgZW5kIHRoZSBiZXN0IHdheSB0byBmb2xsb3cgd2FzIHRvIGVuaGFuY2UgbnVtYmVyIG9m
IGR0cwo+PiBmaWxlcy4gVGhlIGJlc3Qgd291bGQgYmUgdG8gaGF2ZSBkZWRpY2F0ZWQgZm9sZGVy
cyBidXQgaXQgaXMgYW5vdGhlciBzdG9yeS4KPiAKPiBPciB1c2UgRFQgb3ZlcmxheXMgc29tZWhv
dyA/IFUtQm9vdCBjYW4gYXBwbHkgRFRPcyBvbnRvIERUIGJlZm9yZQo+IGJvb3RpbmcgTGludXgu
Cj4gCj4gSGF2aW5nIHRvbnMgb2YgRFRzIG9uIGEgc3lzdGVtIGlzIGEgbG90IG9mIGR1cGxpY2F0
aW9uLCBJIGRvbid0IHJlYWxseQo+IGxpa2UgdGhhdC4KCkkgYWdyZWUgdGhhdCB0byBtYWludGFp
biBpdCdzIGEgbmlnaHRtYXJlLCBidXQgaXQncyBhIHdheSB0byBoZWxwIERUIHVzZXJzLgoKPiAK
PiBCdXQgZm9yIHN0YXJ0ZXJzLCBmZWVsIGZyZWUgdG8gcmV2aWV3IHRoaXMgcGF0Y2guCj4gCgpZ
b3VyIHBhdGNoIHNvdW5kcyBnb29kLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
