Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466684822F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qUzcUbtKm0EDd6URRMJifjRTAv2BWfbKd8jEKTe5Yto=; b=TPfdx21V7gR4ey/Fp/pAtcUpt
	xQ+HHy5XVj5WIdOidqgnXtLMxqXxJM3zdJniu2NuZvNELUTebd5m4+5NHA4DlbiYlDfBZr6YIIWxO
	0m6bml4OssNU0Tm1UliJ39U9JJHrSk3SLPiY+04TBFajTLrLQVYaeaMlJPVQzFWGzu84EyJI7xMCb
	ISJP78SWXhvXIg47WfZSYqtjiLd1FAntDoBLbhdtrngzJBgy0Q190dHKp9I3TUIJ03el8xY7mEMmh
	Hp8eIlYRttpVoFE0WhqFZaT3pNa9Z7+XATZfLZ/89KAls0r9lOV38QeAALd/J3+LAFNJwx3838tqR
	mDRyQ3fLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqkL-0000JN-AF; Mon, 17 Jun 2019 12:28:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqkA-0000Gs-8V
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:28:16 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5HCLCqf009408; Mon, 17 Jun 2019 14:28:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=E9NXlEGXNnvQZ3RULpw4oSl2qhYRA7pqUq0NxFi2maM=;
 b=Xn3sBMkfKYiuf6tnzB0nw/OrQ40k70XSyR3NVXIQ0Tyf8cgYlIClW771t+KqxiHkmQ7J
 Sl3H+GM6khJ7nB8zFPqU5RKM2siZIzdyCvSVaD5aKjcSSHjRcnbjam5zH5mCB9XunpMO
 drxsAYB1f4oqSBPcsHMCIIWdBf1e47fdq6Q+Vvx6dIJOXt5GJI7mRoDWbx42/zhySbHj
 n02S3xT2j0qnnBLjypHU37Nx73VwNIkVgTozZ9Efpyinwz+CThn65YlcQzo38Bq1KwUr
 OVjJM2CQXCXAbHWjBFf+SbrmMOQqBAQGJHB1ILAFIZNc85414UIu0s/PM+LfPiiOVVGT pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t4qjhte0v-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 17 Jun 2019 14:28:07 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 935DB3A;
 Mon, 17 Jun 2019 12:28:06 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 69B6829A9;
 Mon, 17 Jun 2019 12:28:06 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 17 Jun
 2019 14:28:05 +0200
Subject: Re: [PATCH v4 0/4] Add Avenger96 board support
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <robh+dt@kernel.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <e34e8160-d16e-bf18-e7c3-240098908df2@st.com>
Date: Mon, 17 Jun 2019 14:28:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_052814_752901_A7D456A8 
X-CRM114-Status: GOOD (  13.71  )
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
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFuaSwKCk9uIDYvMTIvMTkgOTo1NCBBTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3Rl
Ogo+IEhlbGxvLAo+IAo+IFRoaXMgcGF0Y2hzZXQgYWRkcyBBdmVuZ2VyOTYgYm9hcmQgc3VwcG9y
dC4gVGhpcyBib2FyZCBpcyBvbmUgb2YgdGhlCj4gQ29uc3VtZXIgRWRpdGlvbiBib2FyZHMgb2Yg
dGhlIDk2Qm9hcmRzIGZhbWlseSBmcm9tIEFycm93IEVsZWN0cm9uaWNzCj4gZmVhdHVyaW5nIFNU
TTMyTVAxNTdBIE1QVSBhbmQgaGFzIHRoZSBmb2xsb3dpbmcgZmVhdHVyZXM6Cj4gCj4gU29DOiBT
VE0zMk1QMTU3QUFDCj4gUE1JQzogU1RQTUlDMUEKPiBSQU06IDEwMjQgTWJ5dGUgQCA1MzNNSHoK
PiBTdG9yYWdlOiBlTU1DIHY0LjUxOiA4IEdieXRlCj4gICAgICAgICAgIG1pY3JvU0QgU29ja2V0
OiBVSFMtMSB2My4wMQo+IEV0aGVybmV0IFBvcnQ6IDEwLzEwMC8xMDAwIE1iaXQvcywgSUVFRSA4
MDIuMyBDb21wbGlhbnQKPiBXaXJlbGVzczogV2lGaSA1IEdIeiAmIDIuNEdIeiBJRUVFIDgwMi4x
MWEvYi9nL24vYWMKPiAgICAgICAgICAgIEJsdWV0b290aMKudjQuMiAoQlIvRURSL0JMRSkKPiBV
U0I6IDJ4IFR5cGUgQSAoVVNCIDIuMCkgSG9zdCBhbmQgMXggTWljcm8gQiAoVVNCIDIuMCkgT1RH
Cj4gRGlzcGxheTogSERNSTogV1hHQSAoMTM2Nng3NjgpQCA2MCBmcHMsIEhETUkgMS40Cj4gTEVE
OiA0eCBVc2VyIExFRCwgMXggV2lGaSBMRUQsIDF4IEJUIExFRAo+IAo+IE1vcmUgaW5mb3JtYXRp
b24gYWJvdXQgdGhpcyBib2FyZCBjYW4gYmUgZm91bmQgaW4gOTZCb2FyZHMgd2Vic2l0ZToKPiBo
dHRwczovL3d3dy45NmJvYXJkcy5vcmcvcHJvZHVjdC9hdmVuZ2VyOTYvCj4gCj4gVGhhbmtzLAo+
IE1hbmkKPiAKClRoYW5rcyB0byBleHRlbmQgdGhlIHN0bTMyIGZhbWlseSEKSSBqdXN0IGZvcm1h
dCBjb21taXQgbWVzc2FnZSB0aXRsZSBmb3IgZGV2aWNlIHRyZWUgcGF0Y2hlcyAoIkFSTTogZHRz
OiAKc3RtMzIgLi4uIikuCgpSb2IsIEkgdG9vayBhbHNvIHRoZSBkdC1iaW5kaW5nIHBhdGNoZXMu
CgpTZXJpZXMgYXBwbGllZCBvbiBzdG0zMi1uZXh0LgoKUmVnYXJkcwpBbGV4CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
