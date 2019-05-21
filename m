Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991A4249F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QPuhldu3Y5U/fss7DNLURSPe/8ZZ0RR5B0d0QjT6pRQ=; b=Qeva0PBkLOovUAkGmz8cd7ZA+
	C8UuY3giY2SFXW334OExFMGh8d3CFxo7dBZ65OWlkFOaqocEzuZSvG38c7YMt6HAi0tpqLkJhww9S
	9e3qR6Z4envtQv6pwPn/0bbfU2kOVbg36wAGaNqxT/OWX8RpwcqWSvn09GY1OyIS4s6swwV8w1OvQ
	HehpT9q6eZUCtY8bGZ2JmZgy2zi6lWsXb7pO0+Ortky5/LBNoi9KV3LcV3jtmaqBMtUmuR/F3hYID
	+DKefTACiM7uMmT4lloz2v7Te5Y+ZF2uy0OQ64lo6LtkeuRGwRaQXZsw1Xj+cX47iOH8WJnLhrK7j
	KVBq3+faw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzuA-0003uu-Pu; Tue, 21 May 2019 08:13:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzu3-0003u8-LC
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:13:45 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L875aA001663; Tue, 21 May 2019 10:13:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=wbqGG8HuDpV3tZJFOhJKGCU27qgfbSdFuxdaOzI8vDQ=;
 b=Qa0hmHH3fbgr1Qh1hO3qmsjBmLMxNUiuF2akEV2t1FZ+ymEY/RoQG2Sd6wOw2yMHsUwE
 tyUWx/GFZbFk77lanlGc9DENBAFoUjcs9Yc4h2gX9v5Rxe+YPRAOQIUmt8B/XQY1dauJ
 Az4cSInjeewi4fCnbtuVbUzVXEgGUfndzsFzpVKiuAtPeorw70Ol3Z5gtj9OQM4pdWVN
 QzL1PNjj2Xbleil4j/QqkJJu9osO1xzjHGLC/L6qlSoWtoQNe2alBIi38qOJvBvpA37z
 p3QqGZ1G3umnhIDWZR18W1Pz8zoqrzMwVrFkWajybeg0q9cySz2ZumtQ4C+BAQQoNwUm OQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7h0r4ck-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 10:13:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0040A34;
 Tue, 21 May 2019 08:13:36 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8D20E17FB;
 Tue, 21 May 2019 08:13:36 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 10:13:34 +0200
Subject: Re: [PATCH v6 0/9] Introduce STMFX I2C Multi-Function eXpander
To: Amelie Delaunay <amelie.delaunay@st.com>, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <0a9bf716-addc-9342-09fe-06ff048ff7d7@st.com>
Date: Tue, 21 May 2019 10:13:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_011344_163686_9E3BC7EA 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-gpio@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW3DqWxpZSwKCk9uIDUvOS8xOSAxMDo1OCBBTSwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgo+
IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgU1RNaWNyb2VsZWN0cm9uaWNzIE11bHRpLUZ1
bmN0aW9uIGVYcGFuZGVyCj4gKFNUTUZYKSwgdXNlZCBvbiBzb21lIFNUTTMyIGRpc2NvdmVyeSBh
bmQgZXZhbHVhdGlvbiBib2FyZHMuCj4gCj4gU1RNRlggaXMgYW4gU1RNMzJMMTUyIHNsYXZlIGNv
bnRyb2xsZXIgd2hvc2UgZmlybXdhcmUgZW1iZWRzIHRoZSBmb2xsb3dpbmcKPiBmZWF0dXJlczoK
PiAtIEkvTyBleHBhbmRlciAoMTYgR1BJT3MgKyA4IGV4dHJhIGlmIHRoZSBvdGhlciBmZWF0dXJl
cyBhcmUgbm90IGVuYWJsZWQpLAo+IC0gcmVzaXN0aXZlIHRvdWNoc2NyZWVuIGNvbnRyb2xsZXIs
Cj4gLSBJREQgbWVhc3VyZW1lbnQuCj4gCj4gSTJDIHN0dWZmIGFuZCBjaGlwIGluaXRpYWxpemF0
aW9uIGlzIGJhc2VkIG9uIGFuIE1GRCBwYXJlbnQgZHJpdmVyLCB3aGljaAo+IHJlZ2lzdGVycyBT
VE1GWCBmZWF0dXJlcyBNRkQgY2hpbGRyZW4uCgouLi4KCj4gQW1lbGllIERlbGF1bmF5ICg5KToK
PiAgICBkdC1iaW5kaW5nczogbWZkOiBBZGQgU1QgTXVsdGktRnVuY3Rpb24gZVhwYW5kZXIgKFNU
TUZYKSBjb3JlIGJpbmRpbmdzCj4gICAgbWZkOiBBZGQgU1QgTXVsdGktRnVuY3Rpb24gZVhwYW5k
ZXIgKFNUTUZYKSBjb3JlIGRyaXZlcgo+ICAgIGR0LWJpbmRpbmdzOiBwaW5jdHJsOiBkb2N1bWVu
dCB0aGUgU1RNRlggcGluY3RybCBiaW5kaW5ncwo+ICAgIHBpbmN0cmw6IEFkZCBTVE1GWCBHUElP
IGV4cGFuZGVyIFBpbmN0cmwvR1BJTyBkcml2ZXIKPiAgICBBUk06IGR0czogc3RtMzI6IGFkZCBT
VE1GWCBzdXBwb3J0IG9uIHN0bTMyNzQ2Zy1ldmFsCj4gICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQg
am95c3RpY2sgc3VwcG9ydCBvbiBzdG0zMjc0NmctZXZhbAo+ICAgIEFSTTogZHRzOiBzdG0zMjog
YWRkIG9yYW5nZSBhbmQgYmx1ZSBsZWRzIG9uIHN0bTMyNzQ2Zy1ldmFsCj4gICAgQVJNOiBkdHM6
IHN0bTMyOiBhZGQgU1RNRlggc3VwcG9ydCBvbiBzdG0zMm1wMTU3Yy1ldjEKPiAgICBBUk06IGR0
czogc3RtMzI6IGFkZCBqb3lzdGljayBzdXBwb3J0IG9uIHN0bTMybXAxNTdjLWV2MQoKRGV2aWNl
IHRyZWUgcGF0Y2hlcyAoNSB0byA5KSBhcHBsaWVkIG9uIHN0bTMyLW5leHQuCgpUaGFua3MKQWxl
eAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
