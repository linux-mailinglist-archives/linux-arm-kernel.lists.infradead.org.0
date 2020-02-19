Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FF8164369
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uOROZmIzncHLDb4BDywYs9/f97a/7ZOw1WPgKU+4V/o=; b=PpLNLFmQ/7ieeM15umjVx91XB
	ghdsFzx7or9CT0/QIZzTncYlwop5mCp/q8FWrON/L1u7z+pV9Iyi2Ah5TSktX6IS8gXG1byfk6wj/
	K/3i5NR+mHuBj57EG8YEiSCFAeBfA7v67vwez8qwnV7QpZLMN8TBBifFqlEmCB40EfIH6jMvF9vef
	M2zwtuIk29bYNeLs7iveMXDJbzmFS9rTjLKk5uOrDag4EEv6bRvG1mWYkBLxzXq2iFSzli910Ho8W
	xiPT8ve++dO2K2mrvfARShpBYOWAwdtU7gnYC/w49vvDr7oflBCahFhnfVD2s1ioHSZ47SXOtnvJM
	kmWvrZ/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NZZ-00047c-6t; Wed, 19 Feb 2020 11:31:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NZM-00045M-2s
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:31:09 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JBO558023963; Wed, 19 Feb 2020 12:30:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=wwdCyO89dMA9z9IZCGyAvqqIWknoG7iFZf5BCqBp83I=;
 b=wqjOPoFPdTuIlDUpFtuKYLHttV4XQQsfXHeEvKAyVjO9AXXoyt9ufUaWAmIL3soCPJLu
 F44NsL/Hq8wqDygU7xjuowsYy3NoMI8SexxP8Gve61AHl6ANp8y7Gg26qT269lMtsNuG
 Re/r03qbs0S1sXI6ofQNjheRdgXZV52BWlLcpkxnYeRTA8EMmiMYBcXXJDdllputNNuS
 8+ATB8yuAJXZhROj6+8Z9Bn8x9S+U++hjyzef9NUWdsM2i+gdHKSMzRIxmxSZBtzXABk
 6innD0lgap9KnhUSV0JShGi8y91kbi1bHDhTMAldUzFI1m9ot6olJ697rdOx6cm0Anb6 bQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub5jr0g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 12:30:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7A59B100034;
 Wed, 19 Feb 2020 12:30:44 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4827A2B188F;
 Wed, 19 Feb 2020 12:30:44 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb
 2020 12:30:43 +0100
Subject: Re: [PATCH 2/2] pinctrl: stm32: Add level interrupt support to gpio
 irq chip
To: Marc Zyngier <maz@kernel.org>
References: <20200210134901.1939-1-alexandre.torgue@st.com>
 <20200210134901.1939-3-alexandre.torgue@st.com>
 <377b0895-aaeb-b12e-cad7-469332787b4e@denx.de>
 <dd6434a7-aff1-94ec-2fdf-51374c695ada@st.com>
 <b7965be80f0e5fe32599f188ae8b231d@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <24e7fe14-f4a2-503a-b1a2-777b813917b8@st.com>
Date: Wed, 19 Feb 2020 12:30:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b7965be80f0e5fe32599f188ae8b231d@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_033108_482362_9C18F203 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

CgpPbiAyLzE5LzIwIDEyOjE5IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wMi0x
MSAxMDowOCwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPiAKPiBbLi4uXQo+IAo+PiBZZXMuIEl0
J2xsIGJlIGZpeGVkIGluIHYyLgo+IAo+IEFuZCB3aGVuIHlvdSBkbyB0aGF0LCBwbGVhc2UgdXNl
IG15IG9mZmljaWFsIGVtYWlsIGFkZHJlc3MgKG15IEBhcm0uY29tCj4gYWRkcmVzcyBnb2VzIHRv
IG15IGV4IG1hbmFnZXIsIGFuZCBJIGRvbid0IHRoaW5rIGhlIGNhcmVzIG11Y2ggYWJvdXQgdGhp
cykuCgpPayBJIHVwZGF0ZSBteSBzY3JpcHQuCgpBbGV4Cgo+IAo+ICDCoMKgwqDCoMKgwqDCoCBN
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
