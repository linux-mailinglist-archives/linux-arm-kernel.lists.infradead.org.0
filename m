Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85652158019
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:49:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x54QvmcUAYb1Q0KtVu55/51eqcVvdIpxdjjq4SS0BDo=; b=HE825xxC2HKHeryRq37X4wOZ+
	RBe6MWqtiibNZ5s2DI3Z/owvAkWIr1n8Ib98qz0o/twdt5GzQ2jQJ6ktN/G53F2MkJQ99x5GSBtlu
	+FQhKRQS9dNAy7FATgnBu+wRpR344Nj0JTKXTwuZuadlc9QDpRKOKyK6rXM5o5ClV+0fk9LspU//U
	KLZdIYOMIOPWpmFthjNeiyAmRge0tcT4EAq9S8WE2kU2vnXVjsSwcKZ02QxTLnXJ/HNiuboezXdr7
	Cu+ZS7sgx2hUBcrQXsXgpovbM6bRkJrYcCXbGk+5kEUgzaF3Af1i5Kjb3p9WL7drwc/tTj5QuD1jB
	ix4FFEzeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CF0-0000WE-PS; Mon, 10 Feb 2020 16:48:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CEr-0000Uo-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:48:50 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01AGiPBI001193; Mon, 10 Feb 2020 17:48:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=oG/c7xToD+8agrdTSotNNCOqQBNlCbg+lnwHNTqbVFc=;
 b=0qfTzYTrCTPk3/aNPM2qSH7B0K0E+yfORdkCxhCP9lvNEllYv8KiWHHRe1K32EPAFcvM
 vsEPOot473Hj9MsQINnwnDCa2c3Me2pMp+rRL20Nub0NsuqYf/vfQ2fatcOgeAEL7RL/
 r9tjXQBOAtTdJ1eNmm1yquEooFSzgyN5jrA8pedRqFiqEzl4rWLo4Jm/PItL9+8cgL7+
 AMH/AFvqmZaNtjy6UKj3EZyiaCZk8RXmGd6YpcgOZIjyG+Wydzxztyv5LfX8WrGLgm4t
 yQTI5v8y0uGtYKpghV8IFWItHDo3eYdur0+PL8iTgGx1EmL9AZ8Rp3NqtTPJv5Sd5FmJ 3Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urguu92-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 17:48:43 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CB14610002A;
 Mon, 10 Feb 2020 17:48:37 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C140F2BAEE6;
 Mon, 10 Feb 2020 17:48:37 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb
 2020 17:48:36 +0100
Subject: Re: [PATCH 1/1] ARM: dts: stm32: add resets property on all DMA nodes
 on stm32mp151
To: Amelie Delaunay <amelie.delaunay@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200204141053.28072-1-amelie.delaunay@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2fad34db-660f-4e5e-a0b8-16ca05da3125@st.com>
Date: Mon, 10 Feb 2020 17:48:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200204141053.28072-1-amelie.delaunay@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_06:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_084849_467327_C31BB5FF 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW3DqWxpZQoKT24gMi80LzIwIDM6MTAgUE0sIEFtZWxpZSBEZWxhdW5heSB3cm90ZToKPiBy
ZXNldHMgcHJvcGVydHkgaXMgd2VsbC1tYW5hZ2VkIGluIERNQSBkcml2ZXJzLiBJbiBwcmV2aW91
cyBwcm9kdWN0cywKPiB0aGVyZSB3ZXJlIG5vIHJlc2V0IGxpbmVzLCB0aGF0J3Mgd2h5IHRoZXkg
YXJlIG1pc3NpbmcgaGVyZSBpbiBkbWExLCBkbWEyLAo+IGRtYW11eCBhbmQgbWRtYSBub2Rlcy4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBBbWVsaWUgRGVsYXVuYXkgPGFtZWxpZS5kZWxhdW5heUBzdC5j
b20+CgpBcHBsaWVkIG9uIHN0bTMyLW5leHQuCgpUaGFua3MKQWxleAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
