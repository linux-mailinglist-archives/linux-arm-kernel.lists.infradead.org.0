Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC84A1643AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GlIdg+orZif4kjdD8HEUESrD08o0DQe9jSuJM8+3/Xc=; b=D9YFiVyEFRW0klBJBImErzDLO
	R6IC8HqoDeavqKNMtB7QudCIaG9GAbl7bbvlNRcNZaKl9Ah9Z9eNP2WEZFRcLPmCALxTlo/pHEJfg
	+N4UGOChJGR8neu90By9LiJReyl6Vka9oqWx/+DkqNIN6PTGMJLgUxCoM2lH/zb057yk9JkxwDHTV
	50FT2gfJx7QMRze1lcphvePo5ph4K8j+CYfralZIPQwTAjzFjvXx+ME1SGNoOSlHXIOKqrCUsFmAR
	Brc2csM4IzpwUeM4rw4ErYWYwXzN7h8h46GvQaGF6LK8UZP+Rl9jrF0luF5K4KDPIcapBna+l4m+z
	JVQEQ+qCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NqZ-00030T-L1; Wed, 19 Feb 2020 11:48:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NqP-000307-CY
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:48:47 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JBljd3031749; Wed, 19 Feb 2020 12:48:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ppGyWN/rpvA2EeDjdJUYYRKU10eqJrd2U/W28J2fkE8=;
 b=vJIGRiXrJcum25nl1bU5aAhwtJPba7wsfayg63db9VmlnPGbnQnXfiITtdETz/3amIFY
 q2+1FHJdUzoDtWSe0xbwpIaWb2zNsacSGKYla6z+f+nY4AGFaVlBpUSfdNXzvHl2dxiY
 2bRxu000aPySznEKvoolOx6G1NkaZ6mrO0V3uHdZDcVE0fgeMsvEXwafV86VYKOfWR62
 e0KS0rhFfXS2svQeSEWduBJGC+wk0rXA+5ynGDMDW4qp5oLQHRSICfh40kDUrs+KPP/P
 g98+9G1B03wjJfXozEOGQ3GpPlhwl+cBQ64D1e75GlZF3KlG3EA5ePzd2PbqlPxs+LsZ zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub02rur-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 12:48:30 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 385BE10002A;
 Wed, 19 Feb 2020 12:48:30 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 212092B2E12;
 Wed, 19 Feb 2020 12:48:30 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb
 2020 12:48:29 +0100
Subject: Re: [PATCH 2/2] pinctrl: stm32: Add level interrupt support to gpio
 irq chip
To: Marc Zyngier <maz@kernel.org>
References: <20200210134901.1939-1-alexandre.torgue@st.com>
 <20200210134901.1939-3-alexandre.torgue@st.com>
 <377b0895-aaeb-b12e-cad7-469332787b4e@denx.de>
 <dd6434a7-aff1-94ec-2fdf-51374c695ada@st.com>
 <b7965be80f0e5fe32599f188ae8b231d@kernel.org>
 <24e7fe14-f4a2-503a-b1a2-777b813917b8@st.com>
 <3d6e666de8e65f913d9f90c67d5d8e46@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <3524657d-98b1-803b-6ead-e206daf08dc5@st.com>
Date: Wed, 19 Feb 2020 12:48:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3d6e666de8e65f913d9f90c67d5d8e46@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_034845_794841_45FDB5BF 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, linux-kernel-owner@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyLzE5LzIwIDEyOjM5IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wMi0x
OSAxMTozMCwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4gT24gMi8xOS8yMCAxMjoxOSBQTSwg
TWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4gT24gMjAyMC0wMi0xMSAxMDowOCwgQWxleGFuZHJlIFRv
cmd1ZSB3cm90ZToKPj4+Cj4+PiBbLi4uXQo+Pj4KPj4+PiBZZXMuIEl0J2xsIGJlIGZpeGVkIGlu
IHYyLgo+Pj4KPj4+IEFuZCB3aGVuIHlvdSBkbyB0aGF0LCBwbGVhc2UgdXNlIG15IG9mZmljaWFs
IGVtYWlsIGFkZHJlc3MgKG15IEBhcm0uY29tCj4+PiBhZGRyZXNzIGdvZXMgdG8gbXkgZXggbWFu
YWdlciwgYW5kIEkgZG9uJ3QgdGhpbmsgaGUgY2FyZXMgbXVjaCBhYm91dCAKPj4+IHRoaXMpLgo+
Pgo+PiBPayBJIHVwZGF0ZSBteSBzY3JpcHQuCj4gCj4gU3VyZWx5IHlvdXIgc2NyaXB0IGlzIGEg
d3JhcHBlciBhcm91bmQgc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCwgcmlnaHQ/CgpOby4gaXQn
cyBhbiBvbGQgc2NyaXB0IHdoaWNoIGNyZWF0ZSBncm91cHMgKGhhcmQgY29kZWQpIHRvIGJlIHVz
ZWQgZm9yIApnaXQgc2VuZC1tYWlsLiBCdXQgeWVzLCBhIGdvb2QgaW1wcm92ZW1lbnQgd291bGQg
YmUgdG8gdXNlIApnZXRfbWFpbnRhaW5lci5wbC4KCj4gCj4gIMKgwqDCoMKgwqDCoMKgIE0uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
