Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA39158001
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ctg0lNh3ibSlG1U/wY4Z6gUxGVVCn3TKtjsZEXIzcu4=; b=gvdWaPuz8U2LsXls8MnJUWafS
	ici0igmyJ/uiTIrDxd5ocSdmYlukxUb4uWkMSvK1FQofqNYsOR5CBp74seKyqGo3o3mh7tIogt14s
	T88catbclB0/JfL8yUYfY32zlreD1XKlqIY6KhMXuorcR45bnxvEdhPgEJr10iVGejwRaxYWd0sMc
	HzvDLZ9J8EJqkhWEHN4G5XoBrN1xHmvdJCrwiLsoDp3xbMbc0FzujXin7wunaGTV2CSlIipgFAK2c
	dE2gqfDNQdc0HrCvA0rN/URJllRmDLbCTt1bToPbgd73K+C0rgTVmjrinRWUj+70RihK4XE/7+BNP
	shNzWFdtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CAc-00068w-59; Mon, 10 Feb 2020 16:44:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CAU-00068Y-96
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:44:19 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01AGiBFt014873; Mon, 10 Feb 2020 17:44:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zcYt6Y+x2k8OY2/GRYD67Vq+aFgoKerUJwHCwYSMUxY=;
 b=MRuo5P1sITtDXkr8HnjEZLFOT8qP9EWImTXRa2Rb/xZDP5na0Ig416XQ5Jef0YDDvoL4
 6bs9jsgbbftU03E2AIMOTwcCgmiq5OyYDBWvTiquc2nqWrtnBo1btOap97eyRqDsQwvA
 E1ZyWHaXlQ0J8Xj9RKGelnylVBl32hol4GlFutYfPHS5f54BZ0HRtmG7cFB2HrB2H6V+
 eJk9TAOxAsKffQnrC/dg4RCETgtUVSH1j5dmvFEhSVVUwUAPUlTbhsnVfjZH7IwXOUGB
 QRWJSUy2QUwYN5F+VxO/E38cVejgx+XbIgpuGjYRRquFAnfcH/E0Z7FjlN4sZ1j+JgMo +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ud9c61f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 17:44:13 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AA47310002A;
 Mon, 10 Feb 2020 17:44:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 973A12AE223;
 Mon, 10 Feb 2020 17:44:12 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb
 2020 17:44:11 +0100
Subject: Re: [PATCH 0/3] USB OTG Dual Role on STM32MP15
To: Amelie Delaunay <amelie.delaunay@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200204132606.20222-1-amelie.delaunay@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <3211481b-896f-1b25-b275-f2670fae7234@st.com>
Date: Mon, 10 Feb 2020 17:44:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200204132606.20222-1-amelie.delaunay@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_06:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_084418_609246_B656769B 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

SGkgQW3DqWxpZQoKT24gMi80LzIwIDI6MjYgUE0sIEFtZWxpZSBEZWxhdW5heSB3cm90ZToKPiBU
aGlzIHBhdGNoc2V0IGFkZHMgc3VwcG9ydCBmb3IgVVNCIE9URyBEdWFsIFJvbGUgb24gc3RtMzJt
cDE1Lgo+IFVTQiBPVEcgSFMgaXMgY29uZmlndXJlZCBpbiBEdWFsIFJvbGUgbW9kZSBvbiBzdG0z
Mm1wMTU3Yy1ldjEsIHJvbGUgZGV0ZWN0aW9uCj4gdXNlcyBJRCBwaW4uCj4gCj4gQW1lbGllIERl
bGF1bmF5ICgzKToKPiAgICBBUk06IGR0czogc3RtMzI6IGFkZCBVU0IgT1RHIGZ1bGwgc3VwcG9y
dCBvbiBzdG0zMm1wMTUxCj4gICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQgVVNCIE9URyBwaW5jdHJs
IHRvIHN0bTMybXAxNQo+ICAgIEFSTTogZHRzOiBzdG0zMjogZW5hYmxlIFVTQiBPVEcgRHVhbCBS
b2xlIG9uIHN0bTMybXAxNTdjLWV2MQo+IAo+ICAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1
LXBpbmN0cmwuZHRzaSB8IDEzICsrKysrKysrKysrKysKPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0
bTMybXAxNTEuZHRzaSAgICAgICAgfCAgMyArKy0KPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMy
bXAxNTdjLWVkMS5kdHMgICAgfCAgNCArKysrCj4gICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTU3Yy1ldjEuZHRzICAgIHwgIDMgKystCj4gICA0IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCgpTZXJpZXMgYXBwbGllZCBvbiBzdG0zMi1uZXh0LgoK
VGhhbmtzCkFsZXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
