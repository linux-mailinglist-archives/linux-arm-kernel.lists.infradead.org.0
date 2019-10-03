Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F02C9B95
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6S/7wpXEhxKYXBrQCcpWFsJmM+XfdvZttTHT6i0whDs=; b=BJWWUNYz7vb2acXGv9ahmrzfo
	ua/pVjv2j2wiOdHf2QhFhmhLxxAJly9ttJ1jQw/fHV1eozbGBrRYdvuR6c9jhgf5Ixb3vu58KhZjR
	MF1chtz/Dp8Z3+fOa05SGZDCQUPdbc635Txin1HN6VK4IP9jiVRGpXPg2vu60R+MmispS1juxfmFy
	5wFInUsSSn9ztKPXAPlMRww8HiYImiiY1XUtrsSokirtkoiEuUrh/0v3BUFkIA83GzI5o5m+9cTEv
	0/CbTYl/0l2Nb+3B6SGPj1l8DF0Wfxtq7vdXd82988iXYnKAQlV3vgUZbOGCjiqRkPUBXy4TKyZG3
	t7qfyGuQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxzF-0007Oh-Gh; Thu, 03 Oct 2019 10:05:29 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxz6-0007OJ-5l
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:05:21 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93A1PHE005807; Thu, 3 Oct 2019 12:05:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=LPPmd2u13qwBFxFZ5Y56WE+4sPe3u6X86PcYngdfDX0=;
 b=reenwcBxoQPpkmY1pA2l5GXAWD6wX6QABVWRP6AZbzehaCOwGQWNRg3TNPyQ2HBqa4iN
 4lP91nRfYDdrRcKISF+27TSklO7eoNKx1F2AweOFMliNsarLcGR9avkoY3GY2FBerfLf
 odSlvWi7BHuIr0qQinoPj7vHuUAXtR8sVTV+NUAg03e42M4eatQF4C2zjm1uQz21o8OV
 0xxagjVns0XSelirU5Xu1Bz60hgpforasWGSkuKNrqW4F8mJ3ZuB/JMC8Ln/xC4bkO54
 9ZIIpO8q/RtkAaLJQro0VC90fyce40blu31a5YH+COzk43oRp+U4avifIFEEVpCRD+t8 sA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w9w3x74-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:05:13 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1E0434E;
 Thu,  3 Oct 2019 10:05:09 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0EC1D2B5CAC;
 Thu,  3 Oct 2019 12:05:09 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 3 Oct
 2019 12:05:08 +0200
Subject: Re: [PATCH] ARM: dts: stm32: move ltdc pinctrl on stm32mp157a dk1
 board
To: =?UTF-8?Q?Yannick_Fertr=c3=a9?= <yannick.fertre@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Philippe Cornu <philippe.cornu@st.com>, Fabrice Gasnier
 <fabrice.gasnier@st.com>
References: <1564754931-13861-1-git-send-email-yannick.fertre@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <05cc08f2-36c8-af75-39f3-7b7f4ac4e671@st.com>
Date: Thu, 3 Oct 2019 12:05:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564754931-13861-1-git-send-email-yannick.fertre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030520_578523_505BE31C 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFubmljawoKT24gOC8yLzE5IDQ6MDggUE0sIFlhbm5pY2sgRmVydHLDqSB3cm90ZToKPiBU
aGUgbHRkYyBwaW5jdHJsIG11c3QgYmUgaW4gdGhlIGRpc3BsYXkgY29udHJvbGxlciBub2RlIGFu
ZAo+IG5vdCBpbiB0aGUgcGVyaXBoZXJhbCBub2RlIChoZG1pIGJyaWRnZSkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+Cj4gLS0tCj4g
ICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzIHwgNiArKystLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWRrMS5kdHMgYi9hcmNoL2FybS9i
b290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzCj4gaW5kZXggZjNmMGUzNy4uMTI4NWNmYyAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzCj4gKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtZGsxLmR0cwo+IEBAIC05OSw5ICs5OSw2IEBA
Cj4gICAJCXJlc2V0LWdwaW9zID0gPCZncGlvYSAxMCBHUElPX0FDVElWRV9MT1c+Owo+ICAgCQlp
bnRlcnJ1cHRzID0gPDEgSVJRX1RZUEVfRURHRV9GQUxMSU5HPjsKPiAgIAkJaW50ZXJydXB0LXBh
cmVudCA9IDwmZ3Bpb2c+Owo+IC0JCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJzbGVlcCI7
Cj4gLQkJcGluY3RybC0wID0gPCZsdGRjX3BpbnNfYT47Cj4gLQkJcGluY3RybC0xID0gPCZsdGRj
X3BpbnNfc2xlZXBfYT47Cj4gICAJCXN0YXR1cyA9ICJva2F5IjsKPiAgIAo+ICAgCQlwb3J0cyB7
Cj4gQEAgLTI3Niw2ICsyNzMsOSBAQAo+ICAgfTsKPiAgIAo+ICAgJmx0ZGMgewo+ICsJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IiwgInNsZWVwIjsKPiArCXBpbmN0cmwtMCA9IDwmbHRkY19waW5z
X2E+Owo+ICsJcGluY3RybC0xID0gPCZsdGRjX3BpbnNfc2xlZXBfYT47Cj4gICAJc3RhdHVzID0g
Im9rYXkiOwo+ICAgCj4gICAJcG9ydCB7Cj4gCgpBcHBsaWVkIG9uIHN0bTMyLW5leHQuCgpUaGFu
a3MuCkFsZXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
