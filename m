Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3C7C9C68
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1zOvOkvF+JbAOFj3UPnuL64GU8HpQ/KSwhfCEZeRjas=; b=GLMvrd3I0qZyvy5l+f8BaYSo9
	SS/KEyIyFzO9EzBFKUIaOf7ryXq4da9Nw+BAe7XJMTh2i9tDk4CWtTopaMYTS1bKRIJRYlCVprVfV
	i+OOeZIgxruGrtHPg1tVUOjUPNwsuOTrgL8TpM7vtJVnHOFbtYB4M3BxoMYRnOpkaCPUrCHHMfsIG
	/dAupIsKFLwwfXFEqqIFDpgZtV86nEkmxebXzloThIWDV/21aRY2tljYiGM9Q2PJfsa3d5nXa7m8W
	dx05t+9MxTxpKWfLEeur4xuV3RZItjAj3cy0eAI41GZwivh+SU/dCpi49FIcsPH5WwWWEqA2LLtaF
	NHYJbF9kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFyRT-0001lN-3g; Thu, 03 Oct 2019 10:34:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFyRJ-0001kp-6O
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:34:30 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93AVScS009886; Thu, 3 Oct 2019 12:34:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=lzOYBhAfnBcaEOuQ4FsCPxcaUazDlQqNyGCAqbms35c=;
 b=UuKcnYOLaOGuL0Jnl42Nuj/vTBvssVeWY0GmhV75H7g3Z264h+YwXcqzvw2iXzK8vJo8
 XgXG/HO97QayKRMm8RvzDS2M3KSGkpxwU3kJq/sed2nnwa2BV1c+w+IvUtxb7THmrPat
 /oGOPZibvOgKNii7sPgUnY3tCLsHWvQihDsWF/iD9KOgx1awwEZN8Lj9u/KQsChjcncY
 g7l3ba3b9jOg57BvDktTDWfHaXlIWa+5I4wWwFqcVylfYo5zmezCc433OG9az9X3q5Tg
 Dcoa4OPHaWrdMo4XZWCrtqquH367Gu6izJYbARSR9MWtQPgVtUHw5L3uL6I5j8uLwTSq hw== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vnam43h-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:34:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id A1C3B4C;
 Thu,  3 Oct 2019 10:34:19 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9DD1F2B9881;
 Thu,  3 Oct 2019 12:34:18 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 3 Oct
 2019 12:34:18 +0200
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
References: <1569854751-22337-1-git-send-email-yannick.fertre@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <09ad1310-ebc5-7a41-7af6-cdef79f20802@st.com>
Date: Thu, 3 Oct 2019 12:34:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1569854751-22337-1-git-send-email-yannick.fertre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-03,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_033429_588084_9695CB94 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

SGkgWWFubmljawoKT24gOS8zMC8xOSA0OjQ1IFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6Cj4g
RW5hYmxlIGZvY2FsdGVjaCBmdDYyMzYgdG91Y2hzY3JlZW4gb24gU1RNMzJNUDE1N0MtREsyIGJv
YXJkLgo+IFRoaXMgZGV2aWNlIHN1cHBvcnRzIDIgZGlmZmVyZW50IGFkZHJlc3NlcyAoMHgyYSBh
bmQgMHgzOCkKPiBkZXBlbmRpbmcgb24gdGhlIGRpc3BsYXkgIGJvYXJkIHZlcnNpb24gKE1CMTQw
NykuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBz
dC5jb20+Cj4gLS0tCj4gICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzIHwg
MjMgKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRp
b25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRr
Mi5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzCj4gaW5kZXggMjBl
YTYwMS4uNTI3YmI3NSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3
Yy1kazIuZHRzCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cwo+
IEBAIC02MSw2ICs2MSwyOSBAQAo+ICAgCX07Cj4gICB9Owo+ICAgCj4gKyZpMmMxIHsKPiArCXRv
dWNoc2NyZWVuQDJhIHsKPiArCQljb21wYXRpYmxlID0gImZvY2FsdGVjaCxmdDYyMzYiOwo+ICsJ
CXJlZyA9IDwweDJhPjsKPiArCQlpbnRlcnJ1cHRzID0gPDIgMj47Cj4gKwkJaW50ZXJydXB0LXBh
cmVudCA9IDwmZ3Bpb2Y+Owo+ICsJCWludGVycnVwdC1jb250cm9sbGVyOwo+ICsJCXRvdWNoc2Ny
ZWVuLXNpemUteCA9IDw0ODA+Owo+ICsJCXRvdWNoc2NyZWVuLXNpemUteSA9IDw4MDA+Owo+ICsJ
CXN0YXR1cyA9ICJva2F5IjsKPiArCX07Cj4gKwl0b3VjaHNjcmVlbkAzOCB7Cj4gKwkJY29tcGF0
aWJsZSA9ICJmb2NhbHRlY2gsZnQ2MjM2IjsKPiArCQlyZWcgPSA8MHgzOD47Cj4gKwkJaW50ZXJy
dXB0cyA9IDwyIDI+Owo+ICsJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW9mPjsKPiArCQlpbnRl
cnJ1cHQtY29udHJvbGxlcjsKPiArCQl0b3VjaHNjcmVlbi1zaXplLXggPSA8NDgwPjsKPiArCQl0
b3VjaHNjcmVlbi1zaXplLXkgPSA8ODAwPjsKPiArCQlzdGF0dXMgPSAib2theSI7Cj4gKwl9Owo+
ICt9OwoKSSdtIG5vdCBjb25maWRlbnQgYnkgdGhpcyBkdXBsaWNhdGlvbi4gV2Ugc2hvdWxkIG9u
bHkgc3VwcG9ydCB0aGUgbGF0ZXN0IApyZXZpc2lvbiBvZiB0aGUgTUIxNDA3LiBJIHVuZGVyc3Rh
bmQgdGhlIG5lZWQgYnV0IG15IGZlYXIgaXMgdG8gCmR1cGxpY2F0ZSB0aGlzIG5vZGUgZWFjaCB0
aW1lIHdlIGhhdmUgYSBuZXcgcmV2aXNpb24gKGFuZCBpbWFnaW5lIGlmIHdlIApkbyB0aGF0IGZv
ciBhbGwgaTJjIGRldmljZXMpLgoKcmVnYXJkcwphbGV4CgoKPiAgICZsdGRjIHsKPiAgIAlzdGF0
dXMgPSAib2theSI7Cj4gICAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
