Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5D613D6AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FAuuHj7J/+35cg6vH+i5RgEt8+L61tjqAwqsrGA2TjY=; b=pQICmg3xRt+xBk4vP3EdXtmVP
	xlZgi1NeIM0KDDavFcMi5JWCf15aKePaRUyI0RWy/5Kq3A7pP/YipK7Uq766ejBnPMCheBgPeAB6N
	f7XkkyfW83Uy1ywRxcEFLVjswCpFrp/rD4DnPn0BeFk+851LPWulWKNnDYuOEalSyuSZ5S6iInjPC
	aoxlS6DCmGPQ4q5SwXbdpuUQNSoAXDLLkGrOavEY4auQZw4xP+bcU8XEL9eKfAgGq6fnWmKzv98+B
	eYzeIeS/LXhXuSGkRQJ71Odkr36eqRD0qC7w1rGICrC+5gRb6QTSinXnCX2iF+32Ij58+w5abald0
	2wAvrCXpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1LE-0005IH-1y; Thu, 16 Jan 2020 09:21:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1Kz-0005H4-2G
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:21:18 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00G9CnvH019865; Thu, 16 Jan 2020 10:21:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=oXdqzOpECkceymNrXiBm0gzyy2jK6pABw4YC8ToVezU=;
 b=LMueDRVNZKKBRk7fSc5+0a3lqbIPoJPBRTNrEgkh4C1ln5yOoQPN+tqH2sPOEu2EGXX7
 lRHlD9VVCTqquV6qsTeLW3QbpLkk2UxWKBtLOtZ2L1iqzSFXSZvyLsRFVdujE7J08L5I
 tQdLg9dbTxjs8mWkym5Y3Nqo49WhML66pez9GPL0cqdNSuAcDBLqMV6La8GbLAtfI+/u
 aTgHKn+fe5ebXVHPS5+8jOPZNnkwQMVzuEhX8r/ruGCpD5DbAV6KLFigrnZo9gN+CMta
 20YLGfb5MbuGarnghgi6Uxqje3JdGYOU8rDJ8dU+cPokjeAKr3gPWWM43LnU2KxCHwXI yg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7jpr5pd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2020 10:21:03 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DF267100034;
 Thu, 16 Jan 2020 10:20:58 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CB8B62A900B;
 Thu, 16 Jan 2020 10:20:58 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.46) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 16 Jan
 2020 10:20:58 +0100
Subject: Re: [PATCH 5/9] dt-bindings: mmc: mmci: add delay block base register
 for sdmmc
To: Rob Herring <robh@kernel.org>
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-6-ludovic.barre@st.com> <20200115145645.GA599@bogus>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <2ce63f11-8b0c-8261-63fa-cd19e874c537@st.com>
Date: Thu, 16 Jan 2020 10:20:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20200115145645.GA599@bogus>
Content-Language: fr
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-16_02:2020-01-16,
 2020-01-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_012113_464943_2738A722 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iCgpMZSAxLzE1LzIwIMOgIDM6NTYgUE0sIFJvYiBIZXJyaW5nIGEgw6ljcml0wqA6Cj4g
T24gRnJpLCBKYW4gMTAsIDIwMjAgYXQgMDI6NDg6MTlQTSArMDEwMCwgTHVkb3ZpYyBCYXJyZSB3
cm90ZToKPj4gVG8gc3VwcG9ydCB0aGUgc2RyMTA0IG1vZGUsIHRoZSBzZG1tYyB2YXJpYW50IGhh
cyBhCj4+IGhhcmR3YXJlIGRlbGF5IGJsb2NrIHRvIG1hbmFnZSB0aGUgY2xvY2sgcGhhc2Ugd2hl
biBzYW1wbGluZwo+PiBkYXRhIHJlY2VpdmVkIGJ5IHRoZSBjYXJkLgo+Pgo+PiBUaGlzIHBhdGNo
IGFkZHMgYSBzZWNvbmQgYmFzZSByZWdpc3RlciAob3B0aW9uYWwpIGZvcgo+PiBzZG1tYyBkZWxh
eSBibG9jay4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+Cj4+IC0tLQo+PiAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
bWMvbW1jaS50eHQgfCAyICsrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9t
bWNpLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jaS50eHQK
Pj4gaW5kZXggNmQzYzYyNmUwMTdkLi40ZWM5MjFlNGJmMzQgMTAwNjQ0Cj4+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jaS50eHQKPj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9tbWNpLnR4dAo+PiBAQCAtMjgsNiArMjgs
OCBAQCBzcGVjaWZpYyBmb3IgdXg1MDAgdmFyaWFudDoKPj4gICAtIHN0LHNpZy1waW4tZmJjbGsg
ICAgICAgOiBmZWVkYmFjayBjbG9jayBzaWduYWwgcGluIHVzZWQuCj4+ICAgCj4+ICAgc3BlY2lm
aWMgZm9yIHNkbW1jIHZhcmlhbnQ6Cj4+ICstIHJlZwkJCSA6IGEgc2Vjb25kIGJhc2UgcmVnaXN0
ZXIgbWF5IGJlIGRlZmluZWQgaWYgYSBkZWxheQo+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYmxvY2sgaXMgcHJlc2VudCBhbmQgdXNlZCBmb3IgdHVuaW5nLgo+IAo+IFdoaWNoIGNvbXBh
dGlibGVzIGhhdmUgYSAybmQgcmVnIGVudHJ5PwoKSW4gZmFjdCwgbW1jaSBkcml2ZXIgaXMgQVJN
IEFtYmEgZHJpdmVyIChhcm0scHJpbWVjZWxsKSBhbmQgaGFzIG9ubHkgb25lCmNvbXBhdGlibGUg
ImFybSxwbDE4eCIuClRoZSB2YXJpYW50cyBhcmUgaWRlbnRpZmllZCBieSBwcmltZWNlbGwtcGVy
aXBoaWQgcHJvcGVydHkKKGRpc2NvdmVyZWQgYXQgcnVudGltZSB3aXRoIEhXIGJsb2NrIHJlZ2lz
dGVyIG9yIGRlZmluZWQgYnkKZGV2aWNlIHRyZWUgcHJvcGVydHkgImFybSxwcmltZWNlbGwtcGVy
aXBoaWQiKS4KClRoZSBkZWZhdWx0cyAiYXJtLHBsMTh4IiB2YXJpYW50cyBoYXZlIG9ubHkgb25l
IGJhc2UgcmVnaXN0ZXIsCmJ1dCB0aGUgU0RNTUMgbmVlZCBhIHNlY29uZCBiYXNlIHJlZ2lzdGVy
IGZvciB0aGVzZQpkZWxheSBibG9jayByZWdpc3RlcnMuCgpleGFtcGxlIG9mIHNkbW1jIG5vZGU6
CglzZG1tYzE6IHNkbW1jQDU4MDA1MDAwIHsKCQljb21wYXRpYmxlID0gImFybSxwbDE4eCIsICJh
cm0scHJpbWVjZWxsIjsKCQlhcm0scHJpbWVjZWxsLXBlcmlwaGlkID0gPDB4MDAyNTMxODA+OwoJ
CXJlZyA9IDwweDU4MDA1MDAwIDB4MTAwMD4sIDwweDU4MDA2MDAwIDB4MTAwMD47Cgl9OwoKd2hh
dCBkbyB5b3UgYWR2aXNlPwoKPiAKPj4gICAtIHN0LHNpZy1kaXIgICAgICAgICAgICAgOiBzaWdu
YWwgZGlyZWN0aW9uIHBvbGFyaXR5IHVzZWQgZm9yIGNtZCwgZGF0MCBkYXQxMjMuCj4+ICAgLSBz
dCxuZWctZWRnZSAgICAgICAgICAgIDogZGF0YSAmIGNvbW1hbmQgcGhhc2UgcmVsYXRpb24sIGdl
bmVyYXRlZCBvbgo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNkIGNsb2NrIGZhbGxp
bmcgZWRnZS4KPj4gLS0gCj4+IDIuMTcuMQo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
