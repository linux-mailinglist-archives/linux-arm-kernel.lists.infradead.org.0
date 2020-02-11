Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80042159231
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:47:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9DU8oSgNSv/6qR41F8aKRai+IWs3mgfRNv0AQLkk3MI=; b=PW4N8mWHFNUa2XxQmL5b2/5wf
	KL9iSjpzGJf89jJRDnnpS03TYHrR760MttoEH26GOzaQ3IAko3o09hqJJWtNMw/MXLcAU/axRmlaL
	5gpf6FfX2LEpZpfHpR2X3hcNcTcTiscg+Qc6P/BijLhM8NtRUE9vEpqV3MORRSmYdu86C1DHnXMHC
	GyxL+SgPU4b98P7lGYGOh/TbMI9Lh8H0RTAGVZR3BS/34eMMqJfkG/33GApPlt0pQ+qdijizRCfwR
	ezByFRagWgCLuWPYvvdU9h7p9qi5R8hXOMChMYEqBrqGA9O3WuXM7nqJpi7JBDUZj4MBDHt/X7QJL
	6pmwbm0Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WpC-0003T1-3x; Tue, 11 Feb 2020 14:47:42 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Wp2-0003SN-6a
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:47:33 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01BEhxtu031462; Tue, 11 Feb 2020 15:47:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=4odbdGyV5/+IAGjp9TQdg9pxlhPR5wtUbp4gIY0SBm8=;
 b=1MOS4e4ncw/kDNfQr8/cX7QpgjwFPMEHqD2n3akoDcWaw3SXXs3MZlNcqXzns/nILAQ0
 AYy55VbzeWSDdblBzLcEYdCK4g+MV2mz9OkgqpDZvNMBjsKn+My9En+6sPGXgWrHu2HX
 ksFM9bc3uNFzNl1b5zGh3gk3h4HtRsaI3tcmBuzZjC2uDwMFnVt85Fx4Tmd2/nxTT2gA
 6MnF8IUPsr2umgdYLnc0uzdxu2rwNR3LY/Jyc/uVsz3NXbl4hD1ji9uThAIF45emp3Le
 YiK1M1ljfRs+ohhH4uYRuu/UT0XVfA2pknjw0LAAbPdIaKbjX9TDtqVd/B/f4MQqcKbB IA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1uvddt9x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Feb 2020 15:47:27 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2BDBC10002A;
 Tue, 11 Feb 2020 15:47:27 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1AC802BD409;
 Tue, 11 Feb 2020 15:47:27 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.48) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 11 Feb
 2020 15:47:26 +0100
Subject: Re: [PATCH V2 0/9] mmc: mmci: sdmmc: add sdr104 support
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
References: <20200128090636.13689-1-ludovic.barre@st.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <0d4a3df8-fd1a-4839-116c-149f9e478f42@st.com>
Date: Tue, 11 Feb 2020 15:47:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20200128090636.13689-1-ludovic.barre@st.com>
Content-Language: fr
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-11_04:2020-02-10,
 2020-02-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_064732_527255_2D65FBE4 
X-CRM114-Status: GOOD (  14.14  )
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpKdXN0IGEgImdlbnRsZW1hbiBwaW5nIiBvbiB0aGlzIHNlcmllcwpodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbW1jL2xpc3QvP3Nlcmllcz0yMzQwMTEK
ClJlZ2FyZHMKTHVkbwoKTGUgMS8yOC8yMCDDoCAxMDowNiBBTSwgTHVkb3ZpYyBCYXJyZSBhIMOp
Y3JpdMKgOgo+IFRvIHN1cHBvcnQgdGhlIHNkcjEwNCBtb2RlLCBzZG1tYyB2YXJpYW50IG5lZWRz
Ogo+IC1IYXJkd2FyZSBkZWxheSBibG9jayBzdXBwb3J0IGZvciBzZG1tYyB2YXJpYW50Cj4gICB3
aXRoIHR1bmluZyBwcm9jZWR1cmUKPiAtVm9sdGFnZSBzd2l0Y2ggY2FsbGJhY2tzCj4gLXNkbW1j
IHJldmlzaW9uIDIuMAo+IAo+IFYyOgo+IC1yZWdyb3VwIGhvc3QtPm1tY19vcHMgJiBtbWMtPm9w
cyBhc3NpZ25tZW50Cj4gLWFkZCB0aW1lb3V0IGRlZmluZQo+IC1yZW5hbWUgcHJlcF92b2x0X3N3
aXRjaCB0byBwcmVfc2lnX3ZvbHRfc3dpdGNoCj4gLXJlbmFtZSB2b2x0X3N3aXRjaCB0byBwb3N0
X3NpZ192b2x0X3N3aXRjaAo+IC1hZGQgJ3doeScgY29tbWVudCBmb3IgIm1tYzogbW1jaTogYWRk
IHZvbHRfc3dpdGNoIGNhbGxiYWNrcyIKPiAKPiBMdWRvdmljIEJhcnJlICg5KToKPiAgICBtbWM6
IG1tY2k6IHNkbW1jOiByZXBsYWNlIHNnX2RtYV94eHggbWFjcm9zCj4gICAgbW1jOiBtbWNpOiBz
ZG1tYzogcmVuYW1lIHNkbW1jX3ByaXYgc3RydWN0IHRvIHNkbW1jX2lkbWEKPiAgICBtbWM6IG1t
Y2k6IGFkZCBhIHJlZmVyZW5jZSBhdCBtbWNfaG9zdF9vcHMgaW4gbW1jaSBzdHJ1Y3QKPiAgICBt
bWM6IG1tY2k6IGFkZCBwcml2YXRlIHBvaW50ZXIgZm9yIHZhcmlhbnQKPiAgICBkdC1iaW5kaW5n
czogbW1jOiBtbWNpOiBhZGQgZGVsYXkgYmxvY2sgYmFzZSByZWdpc3RlciBmb3Igc2RtbWMKPiAg
ICBtbWM6IG1tY2k6IHNkbW1jOiBhZGQgZXhlY3V0ZSB0dW5pbmcgd2l0aCBkZWxheSBibG9jawo+
ICAgIG1tYzogbW1jaTogYWRkIHZvbHRfc3dpdGNoIGNhbGxiYWNrcwo+ICAgIG1tYzogbW1jaTog
c2RtbWM6IGFkZCB2b2x0YWdlIHN3aXRjaCBmdW5jdGlvbnMKPiAgICBtbWM6IG1tY2k6IGFkZCBz
ZG1tYyB2YXJpYW50IHJldmlzaW9uIDIuMAo+IAo+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
bW1jL21tY2kudHh0ICAgICAgICAgIHwgICAyICsKPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5j
ICAgICAgICAgICAgICAgICAgICAgICB8ICA0MiArKystCj4gICBkcml2ZXJzL21tYy9ob3N0L21t
Y2kuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgIDggKwo+ICAgZHJpdmVycy9tbWMvaG9zdC9t
bWNpX3N0bTMyX3NkbW1jLmMgICAgICAgICAgIHwgMjA0ICsrKysrKysrKysrKysrKysrLQo+ICAg
NCBmaWxlcyBjaGFuZ2VkLCAyNDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
