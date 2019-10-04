Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C379CBCA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L/k3AtfnXnDw5KAEkghZ49QqXbHAvE81OfhETMAlTHk=; b=Zztjykp3xG7zGl8pot3eC1j++
	avWI5wJPLcQsfGaWkwQcA9KbJGEyiICR1N2fZtjWKIdKQVDOBiw85wYlI1mUKyRN9ReQhhn8AH7mG
	cZH5WrspytwJd+YDtc9QGsg7/VdR9q+esulOu1gk0mJBECkGzNKEfZchWncPzqtKBvH+vZdbe3Sfu
	UA4XuJtH2wggMgIGTKonMykk/3KiQwuJBBinwHp2cLa/FiTs/7UnYYSQzgj4JB67YKeDjPif/PPGA
	GniY9UBNYr5eV3FcHMn1OEVnTldbwk6rLvFksD6v2xAKUzvEZo7cT8nNMkBQUD86oyLb/BZ9ao09Y
	7UYN/AyFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGODA-0003dS-AD; Fri, 04 Oct 2019 14:05:36 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOD2-0003cR-Lf
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:05:30 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94DphSn032172; Fri, 4 Oct 2019 16:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=+37tYreV7tZjGivq3lYs5eVtMuF7z9GI89L7hwCaTGg=;
 b=iNoBCSQJEHje/AKpfU6DnVH4WWKPpMLuUGe+FMd39vrZpwjkqwwkNejC4Oid9Qrtxjaq
 yu0omMn5fEoKMTDtmOupHUciiVQj8JjZPFGMlhv69BkyTrYKg1hwnwjeMTPche3a3TBp
 7+LLr7BnPXhX3L9hH4yUTndhi/mU/IfFq++ooPvI2rzxrwPmV2ryj1pn2qeNA5jN4+fT
 OKD0wVZqEuRGOoyS0HlJcqlrj+ZwctTYFwLSRX5/TukG97SBhhdQr4Z5sKYkVAVgTnus
 CUWbaZe7XOk80jsqqDzKAs974owrhRJvITHj86GuaePbnwrEMtaFLHC+Y9lFBV2SH+Qb 8w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w9wbd3b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 16:05:16 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 50B7E10002A;
 Fri,  4 Oct 2019 16:05:15 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2B7C32C6CED;
 Fri,  4 Oct 2019 16:05:15 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 4 Oct
 2019 16:05:14 +0200
Subject: Re: [PATCH] ARM: dts: stm32: add focaltech touchscreen on
 stm32mp157c-dk2 board
To: =?UTF-8?Q?Yannick_Fertr=c3=a9?= <yannick.fertre@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Philippe Cornu <philippe.cornu@st.com>, Fabrice Gasnier
 <fabrice.gasnier@st.com>
References: <1570195022-23327-1-git-send-email-yannick.fertre@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c834748b-17f3-39ca-041b-1be86ad61d76@st.com>
Date: Fri, 4 Oct 2019 16:05:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570195022-23327-1-git-send-email-yannick.fertre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_07:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_070529_171563_41A94437 
X-CRM114-Status: GOOD (  17.58  )
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

SGkgeWFubmljawoKT24gMTAvNC8xOSAzOjE3IFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6Cj4g
RW5hYmxlIGZvY2FsdGVjaCBmdDYyMzYgdG91Y2hzY3JlZW4gb24gU1RNMzJNUDE1N0MtREsyIGJv
YXJkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVA
c3QuY29tPgo+IC0tLQo+ICAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cyB8
IDEzICsrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRrMi5kdHMgYi9h
cmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzCj4gaW5kZXggMjBlYTYwMS4uZDQ0
YTdjNiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRz
Cj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cwo+IEBAIC02MSw2
ICs2MSwxOSBAQAo+ICAgCX07Cj4gICB9Owo+ICAgCj4gKyZpMmMxIHsKPiArCXRvdWNoc2NyZWVu
QDM4IHsKPiArCQljb21wYXRpYmxlID0gImZvY2FsdGVjaCxmdDYyMzYiOwo+ICsJCXJlZyA9IDww
eDM4PjsKPiArCQlpbnRlcnJ1cHRzID0gPDIgMj47Cj4gKwkJaW50ZXJydXB0LXBhcmVudCA9IDwm
Z3Bpb2Y+Owo+ICsJCWludGVycnVwdC1jb250cm9sbGVyOwo+ICsJCXRvdWNoc2NyZWVuLXNpemUt
eCA9IDw0ODA+Owo+ICsJCXRvdWNoc2NyZWVuLXNpemUteSA9IDw4MDA+Owo+ICsJCXN0YXR1cyA9
ICJva2F5IjsKPiArCX07Cj4gK307Cj4gKwo+ICAgJmx0ZGMgewo+ICAgCXN0YXR1cyA9ICJva2F5
IjsKPiAgIAo+IAoKRm9yIHRoZSBuZXh0IHRpbWUsIHBsZWFzZSBkb24ndCBmb3JnZXQgdG8gYWRk
ICJQQVRDSC12MiIgYXMgaXQgaXMgYSAKc2Vjb25kIHZlcnNpb24gb2YgdGhpcyBwYXRjaC4KCkFw
cGxpZWQgb24gc3RtMzItbmV4dC4KClRoYW5rcy4KQWxleAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
