Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA9047EA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T4w+9v2iJ+3CZa3E3/WX4LoW59rc8dXZeU7WdOUctBc=; b=X9TwSJ1nqhMCC4eNFOli6To6U
	Lne7u087tbQbyjCUyMmk2BqB7uyxfMFEyqtYpux36Q8hQ3omkZkrE1lm1Co8LP9jziG6YjCj3k+EE
	HclMj5t7yjwNweJ9ADxf6A/LrQcDSMSmUQcFG+X2t1louprysfJyMgXQJY+lLdkntPZWwQjJXBEy/
	KVUELMfh8TIiMnryTrFZRmziGHcYDIxXHwBCeEWR1jSZEY5U0HFakCMr89nyOPHBJGR2iEVHvSmrM
	i3+zIyzWKT4TbPsDUeMAgxDakC34SDdmIrBe0UlJLSUDRKAcJQ4CplImVyxDkRBQcGM+pl91Tj+GX
	ZqBnDSDVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hco96-0001wb-Ls; Mon, 17 Jun 2019 09:41:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hco8s-0001vw-A6
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:41:35 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5H9aLRw019974; Mon, 17 Jun 2019 11:41:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=WZehqQgVkFhvfsisL+y7tm5FQFwE1NGQqYaPz62rGtM=;
 b=PnnSa2cRQ0JYexC1sWAn2LHmqBAp8oVT19QL/zKidBH9SWP9MlKIGAt4eLLHJSTnuURN
 y42bVuO5r78/RnFvzgdT8WV/ep1hzovwvSAq1ZVl73oQCK/KZkuHJXPTLuUW2XZTtKVW
 mYbLkpWJdSzv2HvxUazi5j9/b/qSGLtjQ8V2QwEdLzZ3GFBvkBvjdAf4TkC2wPNFoeI6
 7OiqjW9ZNw3Vc4LSYaxESgUds88ExrZJ9GOfCpBF71vSM5iW2f1SA6o7qtG3jT2/xGIE
 3usljuP2sG07MqqfzmgzMZ8oSgUy31rlR92zhPoMolKmXk6vmL2lE6nn9OFk6j/jcWwI Ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t4qjhsq6w-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 17 Jun 2019 11:41:25 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 20C4B3A;
 Mon, 17 Jun 2019 09:41:23 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C1F1A25C4;
 Mon, 17 Jun 2019 09:41:23 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 17 Jun
 2019 11:41:23 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add power supply of rm68200 on
 stm32mp157c-ev1
To: =?UTF-8?Q?Yannick_Fertr=c3=a9?= <yannick.fertre@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Philippe Cornu <philippe.cornu@st.com>, Fabrice Gasnier
 <fabrice.gasnier@st.com>
References: <1558450998-13451-1-git-send-email-yannick.fertre@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <fe5206ed-4e6b-1b2a-0283-bdc8e44270dc@st.com>
Date: Mon, 17 Jun 2019 11:41:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1558450998-13451-1-git-send-email-yannick.fertre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_024134_679058_4133AC46 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGkgWWFubmljawoKT24gNS8yMS8xOSA1OjAzIFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6Cj4g
VGhpcyBwYXRjaCBhZGRzIGEgbmV3IHByb3BlcnR5IChwb3dlci1zdXBwbHkpIHRvIHBhbmVsIHJt
NjgyMDAgKHJheWRpdW0pCj4gb24gc3RtMzJtcDE1N2MtZXYxLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPgo+IC0tLQo+ICAgYXJjaC9h
cm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZXYxLmR0cyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMy
bXAxNTdjLWV2MS5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzCj4g
aW5kZXggOGVmMmNiMC4uNTBmMzI2MyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9z
dG0zMm1wMTU3Yy1ldjEuZHRzCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2Mt
ZXYxLmR0cwo+IEBAIC0xMjcsNiArMTI3LDcgQEAKPiAgIAkJcmVnID0gPDA+Owo+ICAgCQlyZXNl
dC1ncGlvcyA9IDwmZ3Bpb2YgMTUgR1BJT19BQ1RJVkVfTE9XPjsKPiAgIAkJYmFja2xpZ2h0ID0g
PCZwYW5lbF9iYWNrbGlnaHQ+Owo+ICsJCXBvd2VyLXN1cHBseSA9IDwmdjN2Mz47Cj4gICAJCXN0
YXR1cyA9ICJva2F5IjsKPiAgIAo+ICAgCQlwb3J0IHsKPiAKCkFwcGxpZWQgb24gc3RtMzItbmV4
dC4KClRoYW5rcy4KQWxleAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
