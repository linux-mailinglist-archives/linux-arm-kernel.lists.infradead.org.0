Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC384191408
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gXlWuoLnFgjb9E4vIXv2hkC+ofTm82yFoTrK/PKS5VQ=; b=sI4vSFjF2NaUef4q096M5Dn2J
	fnWryWWdC4GEI0xqhC0sk8zrfXNoyoeHE7sWPEm5NXGWNdOTOQURrsaYqRtlDzv15yqLc5vlDrQQ4
	ksqGY2cY13vOhqsEV7H99qu+KcNnmbBe96oU2RhKCjrlP0ID4WWVLlotCjO7eGAeiCQSHoE6/1vV5
	U8i+YtBsMVSQcYN/EX6gweMoS8YYvOgT848gw68WKm7VmxbClkL4IqSiC7AaOjD0lhuzrRTRVQfHa
	K0Ej0nfUCQmnAzgxfYHAutsxPxeR814P8hWhbl4r2LQ4JNqjyFzb0raoEpMGowv5wU/K1M+4hMcJQ
	Bw1KAyJ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlJq-0007FL-MR; Tue, 24 Mar 2020 15:18:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlJi-0007Eu-7I
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:18:12 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02OF8ngr027069; Tue, 24 Mar 2020 16:18:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=kaCicy8uIssxryPATIF8cnJYg+6hF4DZRgmwqrvYHXo=;
 b=JX+7PFmR9fqCBfLmgWnh/hm068+BXkF0TIgdVqmMQJxIOSPr1HBO/E+BTF8TCQEOZ/zT
 MSgffJARDE+zJA7X2joqwI5ywvQgkDCgQtfpFe54HY/S8ZJPTqacOGHH81ik6jwpoxwE
 Fh1AoZuhDpjxgjiQv4MSG31Zr3/NLH/FVBzjtKF9QWiDuLkKJWZ0uZBEN3tq1z1qReOJ
 SxGayKNQ+g4lM74LsbieH090uFdQXuUb1b9CYUF/ymVyaPwAA0H5klm3eAK25oUJkviu
 dNkh59nJfrqk+5zXlzNV7U23e+QhwAB51QlkjriN42BEkEZzG6YTKPfK/Xz5VnIOj8it QA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw9k006tn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Mar 2020 16:18:04 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 17DFA10002A;
 Tue, 24 Mar 2020 16:18:04 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0340B2B252E;
 Tue, 24 Mar 2020 16:18:04 +0100 (CET)
Received: from lmecxl0912.tpe.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 24 Mar
 2020 16:18:00 +0100
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Marek Vasut <marex@denx.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
 <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
 <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
 <028556ba-f088-bf04-4473-a69569157411@denx.de>
 <792e11db-d345-03d4-6d8f-3f9b8ed40576@st.com>
 <c399c8bb-3035-70e0-7499-71974f7c30f6@denx.de>
 <9492207e929c4185bda5a709ad879c15@SFHDAG3NODE2.st.com>
 <7723c340-067b-d780-0eb1-c47d50b11ee9@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <0706c0f7-fb7b-a8e7-5ff5-8765b3170a9e@st.com>
Date: Tue, 24 Mar 2020 16:17:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <7723c340-067b-d780-0eb1-c47d50b11ee9@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-24_05:2020-03-23,
 2020-03-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_081810_630495_47B7F4FC 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzLzI0LzIwIDM6NTggUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+IE9uIDMvMjQvMjAgMzoz
OSBQTSwgQWxleGFuZHJlIFRPUkdVRSB3cm90ZToKPj4KPj4KPj4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4+PiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPj4+IFNlbnQ6
IG1hcmRpIDI0IG1hcnMgMjAyMCAxNTozMQo+Pj4gVG86IEFsZXhhbmRyZSBUT1JHVUUgPGFsZXhh
bmRyZS50b3JndWVAc3QuY29tPjsgbGludXgtYXJtLQo+Pj4ga2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+
OyBQYXRyaWNlIENIT1RBUkQKPj4+IDxwYXRyaWNlLmNob3RhcmRAc3QuY29tPjsgUGF0cmljayBE
RUxBVU5BWSA8cGF0cmljay5kZWxhdW5heUBzdC5jb20+OyBsaW51eC0KPj4+IHN0bTMyQHN0LW1k
LW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIFtSRkNdIEFS
TTogZHRzOiBzdG0zMjogQWRkIERUcyBmb3IgU1RNMzJNUDE1eCB2YXJpYW50cwo+Pj4gb2YgdGhl
IERIIFNPTSBhbmQgUERLMgo+Pj4KPj4+IE9uIDMvMjQvMjAgMzoyOCBQTSwgQWxleGFuZHJlIFRv
cmd1ZSB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4gT24gMy8yNC8yMCAzOjE1IFBNLCBNYXJlayBWYXN1
dCB3cm90ZToKPj4+Pj4gT24gMy8yNC8yMCAzOjA3IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3Rl
Ogo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiAzLzI0LzIwIDI6MjIgUE0sIE1hcmVrIFZhc3V0IHdy
b3RlOgo+Pj4+Pj4+IE9uIDMvMjQvMjAgMjowNCBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToK
Pj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gT24gMy8yMy8yMCAzOjMxIEFNLCBNYXJlayBWYXN1
dCB3cm90ZToKPj4+Pj4+Pj4+IFRoZSBESCBQREsyIGNhbiBiZSBwb3B1bGF0ZWQgd2l0aCBTb00g
d2l0aCBhbnkgU1RNMzJNUDE1eCB2YXJpYW50Lgo+Pj4+Pj4+Pj4gQWRkIHRoZSBEVHMgZGVzY3Jp
YmluZyB0aGUgcmVtYWluaW5nIGNvbWJpbmF0aW9ucy4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPj4+Pj4+Pj4+IENjOiBBbGV4
YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbT4KPj4+Pj4+Pj4+IENjOiBNYXhp
bWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4+Pj4+Pj4+PiBDYzogUGF0
cmljZSBDaG90YXJkIDxwYXRyaWNlLmNob3RhcmRAc3QuY29tPgo+Pj4+Pj4+Pj4gQ2M6IFBhdHJp
Y2sgRGVsYXVuYXkgPHBhdHJpY2suZGVsYXVuYXlAc3QuY29tPgo+Pj4+Pj4+Pj4gQ2M6IGxpbnV4
LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4+Pj4+Pj4+IFRvOiBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+Pj4gTk9U
RTogSXMgdGhlcmUgYSBiZXR0ZXIgd2F5IHRvIGRvIHRoaXMgdGhhbiB0byBoYXZlIHRoaXMga2lu
ZCBvZgo+Pj4+Pj4+Pj4gYQo+Pj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoGNvbWJpbmF0b3JpYWwgZXhw
bG9zaW9uIG9mIERUcyA/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEkgaGF2ZSBubyBiZXR0ZXIgaWRlYS4g
UXVlc3Rpb24gd2FzIHRoZSBzYW1lIGZvciBzdG0zMiBib2FyZHMsIGFuZAo+Pj4+Pj4+PiBJIGNo
b3NlIHRvIHRha2UgdGhpcyBvcHRpb24uCj4+Pj4+Pj4KPj4+Pj4+PiBPbmUgb3B0aW9uIHdvdWxk
IGJlIHRvIGp1c3QgaGF2ZSBEVCBmb3IgdGhlIG1vc3QgZmVhdHVyZS1jb21wbGV0ZQo+Pj4+Pj4+
IG9wdGlvbgo+Pj4+Pj4+ICgxNTcpIGFuZCB0aGVuIGhhdmUgVS1Cb290IHJlbW92ZSB0aGUgbm9k
ZXMgZm9yIEhXIHdoaWNoIGlzIG5vdAo+Pj4+Pj4+IHByZXNlbnQgb24gdGhlIHBhcnRpY3VsYXIg
U29DIG9wdGlvbiBpZiBpdCdzIG9uZSBvZiB0aGUgbW9yZQo+Pj4+Pj4+IGxpbWl0ZWQgb25lcyAo
MTUzLCAxNTEpLgo+Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gWWVzIGl0IHdhcyBhIHBvc3NpYmlsaXR5
IHRoYXQgSSBkaXNjdXNzZWQgd2l0aCBrZXZpbiBILiBhdCB0aGUKPj4+Pj4+IGxhdGVzdCBFTENF
IGJ1dCBhdCB0aGUgZW5kIHRoZSBiZXN0IHdheSB0byBmb2xsb3cgd2FzIHRvIGVuaGFuY2UKPj4+
Pj4+IG51bWJlciBvZiBkdHMgZmlsZXMuIFRoZSBiZXN0IHdvdWxkIGJlIHRvIGhhdmUgZGVkaWNh
dGVkIGZvbGRlcnMgYnV0Cj4+Pj4+PiBpdCBpcyBhbm90aGVyIHN0b3J5Lgo+Pj4+Pgo+Pj4+PiBP
ciB1c2UgRFQgb3ZlcmxheXMgc29tZWhvdyA/IFUtQm9vdCBjYW4gYXBwbHkgRFRPcyBvbnRvIERU
IGJlZm9yZQo+Pj4+PiBib290aW5nIExpbnV4Lgo+Pj4+Pgo+Pj4+PiBIYXZpbmcgdG9ucyBvZiBE
VHMgb24gYSBzeXN0ZW0gaXMgYSBsb3Qgb2YgZHVwbGljYXRpb24sIEkgZG9uJ3QKPj4+Pj4gcmVh
bGx5IGxpa2UgdGhhdC4KPj4+Pgo+Pj4+IEkgYWdyZWUgdGhhdCB0byBtYWludGFpbiBpdCdzIGEg
bmlnaHRtYXJlLCBidXQgaXQncyBhIHdheSB0byBoZWxwIERUIHVzZXJzLgo+Pj4+Cj4+Pj4+Cj4+
Pj4+IEJ1dCBmb3Igc3RhcnRlcnMsIGZlZWwgZnJlZSB0byByZXZpZXcgdGhpcyBwYXRjaC4KPj4+
Pj4KPj4+Pgo+Pj4+IFlvdXIgcGF0Y2ggc291bmRzIGdvb2QuCj4+Pgo+Pj4gVGhlbiBmZWVsIGZy
ZWUgdG8gYXBwbHkgaXQsIHRoYW5rcy4KPj4+Cj4+PiBidHcgZG9uJ3QgeW91IGhhdmUgYSAibmV4
dCIgdHJlZSBzb21ld2hlcmUgd2l0aCBhbGwgdGhlIHBhdGNoZXMgcXVldWVkIHVwIGZvcgo+Pj4g
bmV4dCByZWxlYXNlID8gSWYgSSByZWJhc2Ugb24gbGludXggbmV4dCwgSSBzdGlsbCBoYXZlIHF1
aXRlIGEgZmV3IHN0bTMybXAxIERUCj4+PiBwYXRjaGVzIGluIG15IHRyZWUgd2hpY2ggYXJlIHBy
ZXN1bWFibHkgYXBwbGllZCwgYnV0IEkgZG9uJ3Qgc2VlIHRoZW0gaW4gbGludXggbmV4dC4KPj4K
Pj4KPj4gWWVzIGJ1dCBpdCBpcyBub3QgbWVyZ2VkIGludG8gTGludXgtbmV4dC4gU2VlOiBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXRvcmd1ZS9zdG0zMi5n
aXQKPj4KPj4gQnJhbmNoIHN0bTMyLW5leHQKPiAKPiBUaGFua3MuIFdvdWxkbid0IGl0IGJlIG1v
cmUgY29udmVuaWVudCBhbmQgcmVjZWl2ZSBtb3JlIHRlc3RpbmcgaWYgaXQKPiB3ZXJlIHRvIGJl
IG1lcmdlZCBpbnRvIG5leHQsIGp1c3QgbGlrZSB0aGUgb3RoZXIgdHJlZXMgYXJlID8KPiAKSSBj
b21wbGV0ZWx5IGFncmVlIHdpdGggeW91ISBPdGhlciBhcm0gdHJlZXMgYXJlIG1lcmdlZCA/Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
