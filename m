Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A07192C48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gQ3lOwpwWYJQViwRYxCVgzgNEMyXj6q/u7jf1PPXI4w=; b=an7vKuqfu9nT/K490BGZLo2Ef
	KwDjLp8CdsHijFtWeanrHoU1/RibzrtwcBKLdKdSZF6X9IpZjwFy8GPHjJKk9Fc6H1fgEn9ojKadE
	HOJ0o4fu202F2ZOAJJyepGoaFhm+gC84C4qlexFbVSBRDb2cKlXXvkpQd/kXhr0TP3QDsoAe2+Tif
	ETl1gydiRIPffjFgfKypjr3xIkiS8XHqvWd1BMZe41WkVd2m07+N+e4AZORstU58/am9mNhe6UTqi
	BYr2irotd6PPP23EZqvrFb9JB8fVrgeolFkS02YrMlRabLIFLVaQlWJHrj+qG+gNhRA6ux5xmHkZz
	dRuF+/lxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7tH-0000ho-A1; Wed, 25 Mar 2020 15:24:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7t7-0000gx-Cd
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:24:14 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02PFDlLC004627; Wed, 25 Mar 2020 16:23:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=+JxsGMD/HKpVKs1dQBQK8ygKLAo12R6x7cJ4kdNJpoY=;
 b=xUFx7a3pQOkxiDSq2J6BidiHMoZH0DtRUrMcypx4CppI5NKTKD3wy91Azg9nRqmN2hmE
 9HoeknXJEi2L8XvYLo1rzw6W3ijYD/2Jj7Utp7/ws3OaSVAKV7+knBoj1ifNWWQ8q2CA
 cIGy9XoSWSrSAvcu2cPVuSZ8tJZqimSwi+3f/wBUTrMNPOMHcPLZZE/NfPv6HcaZiNiQ
 mdtvcroqOlKKjQjPZrDIQSSrMiYDAZ/psPG8lTzsn75FiAmwENHU52BNSwR5wqvjQUN6
 5mcBiTcGF+YrTU7kN52Hs/bUq6wJOUAiTmMYWNHTYWyrd+dArbdZSan3MSU8h3QkQZRd bA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995pgfk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Mar 2020 16:23:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 67B6110002A;
 Wed, 25 Mar 2020 16:23:48 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3A8062B5D06;
 Wed, 25 Mar 2020 16:23:48 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.51) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 25 Mar
 2020 16:23:46 +0100
Subject: Re: [PATCH 1/2] driver core: platform: Initialize dma_parms for
 platform devices
To: Ulf Hansson <ulf.hansson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <20200325113407.26996-2-ulf.hansson@linaro.org>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <598b3a55-0321-d7ea-8758-edaba5d5cb2c@st.com>
Date: Wed, 25 Mar 2020 16:23:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200325113407.26996-2-ulf.hansson@linaro.org>
Content-Language: fr
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-25_07:2020-03-24,
 2020-03-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_082413_786453_4B3FFCF1 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Haibo Chen <haibo.chen@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, stable@vger.kernel.org,
 dmaengine@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzLzI1LzIwIMOgIDEyOjM0IFBNLCBVbGYgSGFuc3NvbiBhIMOpY3JpdMKgOgo+IEl0J3Mg
Y3VycmVudGx5IHRoZSBwbGF0Zm9ybSBkcml2ZXIncyByZXNwb25zaWJpbGl0eSB0byBpbml0aWFs
aXplIHRoZQo+IHBvaW50ZXIsIGRtYV9wYXJtcywgZm9yIGl0cyBjb3JyZXNwb25kaW5nIHN0cnVj
dCBkZXZpY2UuIFRoZSBiZW5lZml0IHdpdGgKPiB0aGlzIGFwcHJvYWNoIGFsbG93cyB1cyB0byBh
dm9pZCB0aGUgaW5pdGlhbGl6YXRpb24gYW5kIHRvIG5vdCB3YXN0ZSBtZW1vcnkKPiBmb3IgdGhl
IHN0cnVjdCBkZXZpY2VfZG1hX3BhcmFtZXRlcnMsIGFzIHRoaXMgY2FuIGJlIGRlY2lkZWQgb24g
YSBjYXNlIGJ5Cj4gY2FzZSBiYXNpcy4KPiAKPiBIb3dldmVyLCBpdCBoYXMgdHVybmVkIG91dCB0
aGF0IHRoaXMgYXBwcm9hY2ggaXMgbm90IHZlcnkgcHJhY3RpY2FsLiAgTm90Cj4gb25seSBkb2Vz
IGl0IGxlYWQgdG8gb3BlbiBjb2RpbmcsIGJ1dCBhbHNvIHRvIHJlYWwgZXJyb3JzLiBJbiBwcmlu
Y2lwbGUKPiBjYWxsZXJzIG9mIGRtYV9zZXRfbWF4X3NlZ19zaXplKCkgZG9lc24ndCBjaGVjayB0
aGUgZXJyb3IgY29kZSwgYnV0IGp1c3QKPiBhc3N1bWVzIGl0IHN1Y2NlZWRzLgo+IAo+IEZvciB0
aGVzZSByZWFzb25zLCBsZXQncyBkbyB0aGUgaW5pdGlhbGl6YXRpb24gZnJvbSB0aGUgY29tbW9u
IHBsYXRmb3JtIGJ1cwo+IGF0IHRoZSBkZXZpY2UgcmVnaXN0cmF0aW9uIHBvaW50LiBUaGlzIGFs
c28gZm9sbG93cyB0aGUgd2F5IHRoZSBQQ0kgZGV2aWNlcwo+IGFyZSBiZWluZyBtYW5hZ2VkLCBz
ZWUgcGNpX2RldmljZV9hZGQoKS4KCnRlc3RlZCB3aXRoIG1tYzogbW1jaV9zZG1tYyBmaXgKVGVz
dGVkLWJ5OiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KCj4gU3VnZ2VzdGVk
LWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiBDYzogPHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFy
by5vcmc+Cj4gLS0tCj4gICBkcml2ZXJzL2Jhc2UvcGxhdGZvcm0uYyAgICAgICAgIHwgMSArCj4g
ICBpbmNsdWRlL2xpbnV4L3BsYXRmb3JtX2RldmljZS5oIHwgMSArCj4gICAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Jhc2UvcGxhdGZv
cm0uYyBiL2RyaXZlcnMvYmFzZS9wbGF0Zm9ybS5jCj4gaW5kZXggYjVjZTdiMDg1Nzk1Li40NmFi
YmZiNTI2NTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9iYXNlL3BsYXRmb3JtLmMKPiArKysgYi9k
cml2ZXJzL2Jhc2UvcGxhdGZvcm0uYwo+IEBAIC01MTIsNiArNTEyLDcgQEAgaW50IHBsYXRmb3Jt
X2RldmljZV9hZGQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAkJcGRldi0+ZGV2
LnBhcmVudCA9ICZwbGF0Zm9ybV9idXM7Cj4gICAKPiAgIAlwZGV2LT5kZXYuYnVzID0gJnBsYXRm
b3JtX2J1c190eXBlOwo+ICsJcGRldi0+ZGV2LmRtYV9wYXJtcyA9ICZwZGV2LT5kbWFfcGFybXM7
Cj4gICAKPiAgIAlzd2l0Y2ggKHBkZXYtPmlkKSB7Cj4gICAJZGVmYXVsdDoKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kZXZpY2UuaCBiL2luY2x1ZGUvbGludXgvcGxhdGZv
cm1fZGV2aWNlLmgKPiBpbmRleCAwNDFiZmE0MTJhYTAuLjgxOTAwYjNjYmUzNyAxMDA2NDQKPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L3BsYXRmb3JtX2RldmljZS5oCj4gKysrIGIvaW5jbHVkZS9saW51
eC9wbGF0Zm9ybV9kZXZpY2UuaAo+IEBAIC0yNSw2ICsyNSw3IEBAIHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2Ugewo+ICAgCWJvb2wJCWlkX2F1dG87Cj4gICAJc3RydWN0IGRldmljZQlkZXY7Cj4gICAJ
dTY0CQlwbGF0Zm9ybV9kbWFfbWFzazsKPiArCXN0cnVjdCBkZXZpY2VfZG1hX3BhcmFtZXRlcnMg
ZG1hX3Bhcm1zOwo+ICAgCXUzMgkJbnVtX3Jlc291cmNlczsKPiAgIAlzdHJ1Y3QgcmVzb3VyY2UJ
KnJlc291cmNlOwo+ICAgCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
