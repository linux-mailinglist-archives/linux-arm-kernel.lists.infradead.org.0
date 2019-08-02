Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CDE7EDA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 09:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JQlDWYWriNOcDniKzCbXhQEpqowlV1I5Oecol5Z9pkU=; b=jEWs2pu/3uCf3IW66S8tN68S6
	aKUMXfL3tcaOE3+fzPMub4DvfXSCkNXssrdDpmnQ3eZPzsQrF8p7C5rbB7tHFDs4D9uC5r7hOzPoU
	XXOayItzUeRSVtDsh1AQMWMFqnJ2UMi6fnUdJXqpv5alrfdoOUr1pNCeyxS6wYD41ST/AodqqoU+5
	5rAv903xWICWBH77WkDCTr0h0z8a7C9Xw0qUf1xvvQqrB9NWHrNjJUGstGZTGjn35Nuo9RRvXUk5g
	P4+SeABqYOTKirCOQ4RPjMkk72uO3MsUXHUlDxzYMnLsSgXFG+FZmTYkRGS28kj1Zsl7eqgjqX5L+
	8/X7sSdzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htS7S-0006yi-JX; Fri, 02 Aug 2019 07:36:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htS79-0006y8-6q
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 07:36:36 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x727VJJx012518; Fri, 2 Aug 2019 09:36:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=dNdFBpnmHr57yWOWaZOQqM6cLIxmm15yY5RHlO47mkw=;
 b=n2uaUNmkk6TmujMSGcFYd1PxMzfaQYxVJS1u7h+b2LKKp3xO1AKkBOnKdOlODirELbPq
 OStYdNHcG56tCBok3AwwXvVTcUv+fxLTl9y8h/nDTjGGDbwzMFX+OKWvtOTNRwBsUwHz
 PSDWOAU6DAZyTN12Xz70gYK1lqSnejizUWzCy3jjP/8v+7cUTyNXIBk5QP5iTMoEIbcd
 IXqmPht/XJSsjIIOjDGeRsRJrQ1HJVszrxXoHGYxg80yDFNp5nAYgyLgtOv4KDhP1/5G
 SRDAKqvTQLzs5PI48F7cexIDRrXt+Ftkf4aKeW2SrlqIE97nUKd2b8IUUPHAO2aqLYjo 2w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u3vd05qye-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 09:36:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1386F3A;
 Fri,  2 Aug 2019 07:36:19 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 037D5206862;
 Fri,  2 Aug 2019 09:36:19 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 2 Aug
 2019 09:36:18 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add phy-dsi-supply property on
 stm32mp157c-ev1
To: =?UTF-8?Q?Yannick_Fertr=c3=a9?= <yannick.fertre@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Philippe Cornu <philippe.cornu@st.com>, Fabrice Gasnier
 <fabrice.gasnier@st.com>
References: <1564410548-20436-1-git-send-email-yannick.fertre@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <346d04ad-17ed-40c8-f10a-b13a2ea79d92@st.com>
Date: Fri, 2 Aug 2019 09:36:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564410548-20436-1-git-send-email-yannick.fertre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_003635_614741_17E21E2F 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFubmljawoKT24gNy8yOS8xOSA0OjI5IFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6Cj4g
VGhlIGRzaSBwaHlzaWNhbCBsYXllciBpcyBwb3dlcmVkIGJ5IHRoZSAxdjggcG93ZXIgY29udHJv
bGxlciBzdXBwbHkuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNr
LmZlcnRyZUBzdC5jb20+Cj4gLS0tCj4gICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1l
djEuZHRzIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZXYxLmR0cyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMKPiBpbmRleCBmZWI4Zjc3Li4xOWQ2OWQwIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMKPiArKysg
Yi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzCj4gQEAgLTEwMSw2ICsxMDEs
NyBAQAo+ICAgJmRzaSB7Cj4gICAJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gICAJI3NpemUtY2Vs
bHMgPSA8MD47Cj4gKwlwaHktZHNpLXN1cHBseSA9IDwmcmVnMTg+Owo+ICAgCXN0YXR1cyA9ICJv
a2F5IjsKPiAgIAo+ICAgCXBvcnRzIHsKPiAKCkFwcGxpZWQgb24gc3RtMzItbmV4dC4KClRoYW5r
cy4KQWxleAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
