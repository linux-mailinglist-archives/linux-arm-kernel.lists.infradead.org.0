Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2DE13DE04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xZwE44/IxEZfbDa6PfSB+W/8rV9P+XzPRwVAvckyPdk=; b=YaCE6Mvwv0rkXq6qw7nc2icc7
	9iwUii91REyMSUXaepfksMxrkqP6OTa+9Pf/vZsfYAOvxsK8wgqihSLC4N4OlfmfeIBPtWEGSg5qS
	B1g/E8k1DxDmRbYik3d11VZEx6pYxhfbqXysdgPN0JtCHVjddydIiTJBQ7fkfa/xWJ9gvXudT6d/E
	8a9+d1Ppgd4ZQtrk1lIVsNXCjwm4ChHEtzhK84fWX7ATJ3tYHnuSlxJg9ts02s6G7MlcG03CqccXr
	tswiSMirPqhsr9HqkwQ2Mu3Yh14vTn6CHLIutbZp7V3SoTIoIsnTYMrH9shR0Mg8Jy9xxBBnKAhwr
	ENZECGQxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6W8-0004PZ-F8; Thu, 16 Jan 2020 14:53:04 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6Vu-0004OD-9M
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:52:55 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00GEl8OB012021; Thu, 16 Jan 2020 15:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=pEK7DnnrQJDovo/v2r8fLwawQJqg3M031Vo+8Kfz/2A=;
 b=HqWi6xby7McyKcCdYGKdFEOfHsVZddLFxL0MOMkoX1ifbGgVmJT64lH2pywAl5yYO03p
 B2kxAoilysY+kMw2KPnovPhvMSqm9e7PW/X+ykSjywlOxgRsF298lQGGq4Z9TNfh2tDr
 T2xG4W+PRHwZdpeRrSUR7h0E4ZEGbp87uegGv+miuiEJRPgjhcPKLk1u94AC2+kdANhw
 kqFQvlpr81v6NQSPlOr8jRBOMN4MW8pjxw9R+q6PlZibZ/K7R/ffH9FeHwcpUVeH/DR3
 E9cCxfOC+EzxVwmAXnNjEv7EnD8pocM9TMTugO67h7XqNsvhrwW5JFy0SZH9Fn7nJ/8V dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf77b9rgu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2020 15:52:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 22514100038;
 Thu, 16 Jan 2020 15:52:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0EEBC2FF5C9;
 Thu, 16 Jan 2020 15:52:41 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.44) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 16 Jan
 2020 15:52:39 +0100
Subject: Re: [PATCH 5/9] dt-bindings: mmc: mmci: add delay block base register
 for sdmmc
To: Rob Herring <robh@kernel.org>
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-6-ludovic.barre@st.com> <20200115145645.GA599@bogus>
 <2ce63f11-8b0c-8261-63fa-cd19e874c537@st.com>
 <CAL_JsqJMGY-n07e81iAsj+P7wPHFojBerNnjx8vtvqLTDA7yEw@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <27917fa9-e20f-02f3-d108-761632363347@st.com>
Date: Thu, 16 Jan 2020 15:52:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJMGY-n07e81iAsj+P7wPHFojBerNnjx8vtvqLTDA7yEw@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-16_04:2020-01-16,
 2020-01-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_065250_627928_EB75E3A9 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxLzE2LzIwIMOgIDM6MzMgUE0sIFJvYiBIZXJyaW5nIGEgw6ljcml0wqA6Cj4gT24gVGh1
LCBKYW4gMTYsIDIwMjAgYXQgMzoyMSBBTSBMdWRvdmljIEJBUlJFIDxsdWRvdmljLmJhcnJlQHN0
LmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIFJvYgo+Pgo+PiBMZSAxLzE1LzIwIMOgIDM6NTYgUE0sIFJv
YiBIZXJyaW5nIGEgw6ljcml0IDoKPj4+IE9uIEZyaSwgSmFuIDEwLCAyMDIwIGF0IDAyOjQ4OjE5
UE0gKzAxMDAsIEx1ZG92aWMgQmFycmUgd3JvdGU6Cj4+Pj4gVG8gc3VwcG9ydCB0aGUgc2RyMTA0
IG1vZGUsIHRoZSBzZG1tYyB2YXJpYW50IGhhcyBhCj4+Pj4gaGFyZHdhcmUgZGVsYXkgYmxvY2sg
dG8gbWFuYWdlIHRoZSBjbG9jayBwaGFzZSB3aGVuIHNhbXBsaW5nCj4+Pj4gZGF0YSByZWNlaXZl
ZCBieSB0aGUgY2FyZC4KPj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggYWRkcyBhIHNlY29uZCBiYXNlIHJl
Z2lzdGVyIChvcHRpb25hbCkgZm9yCj4+Pj4gc2RtbWMgZGVsYXkgYmxvY2suCj4+Pj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KPj4+PiAt
LS0KPj4+PiAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tY2kudHh0
IHwgMiArKwo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tY2ku
dHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9tbWNpLnR4dAo+Pj4+
IGluZGV4IDZkM2M2MjZlMDE3ZC4uNGVjOTIxZTRiZjM0IDEwMDY0NAo+Pj4+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jaS50eHQKPj4+PiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tY2kudHh0Cj4+Pj4gQEAgLTI4LDYg
KzI4LDggQEAgc3BlY2lmaWMgZm9yIHV4NTAwIHZhcmlhbnQ6Cj4+Pj4gICAgLSBzdCxzaWctcGlu
LWZiY2xrICAgICAgIDogZmVlZGJhY2sgY2xvY2sgc2lnbmFsIHBpbiB1c2VkLgo+Pj4+Cj4+Pj4g
ICAgc3BlY2lmaWMgZm9yIHNkbW1jIHZhcmlhbnQ6Cj4+Pj4gKy0gcmVnICAgICAgICAgICAgICAg
ICAgICAgICAgOiBhIHNlY29uZCBiYXNlIHJlZ2lzdGVyIG1heSBiZSBkZWZpbmVkIGlmIGEgZGVs
YXkKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgYmxvY2sgaXMgcHJlc2VudCBhbmQg
dXNlZCBmb3IgdHVuaW5nLgo+Pj4KPj4+IFdoaWNoIGNvbXBhdGlibGVzIGhhdmUgYSAybmQgcmVn
IGVudHJ5Pwo+Pgo+PiBJbiBmYWN0LCBtbWNpIGRyaXZlciBpcyBBUk0gQW1iYSBkcml2ZXIgKGFy
bSxwcmltZWNlbGwpIGFuZCBoYXMgb25seSBvbmUKPj4gY29tcGF0aWJsZSAiYXJtLHBsMTh4Ii4K
Pj4gVGhlIHZhcmlhbnRzIGFyZSBpZGVudGlmaWVkIGJ5IHByaW1lY2VsbC1wZXJpcGhpZCBwcm9w
ZXJ0eQo+PiAoZGlzY292ZXJlZCBhdCBydW50aW1lIHdpdGggSFcgYmxvY2sgcmVnaXN0ZXIgb3Ig
ZGVmaW5lZCBieQo+PiBkZXZpY2UgdHJlZSBwcm9wZXJ0eSAiYXJtLHByaW1lY2VsbC1wZXJpcGhp
ZCIpLgo+Pgo+PiBUaGUgZGVmYXVsdHMgImFybSxwbDE4eCIgdmFyaWFudHMgaGF2ZSBvbmx5IG9u
ZSBiYXNlIHJlZ2lzdGVyLAo+PiBidXQgdGhlIFNETU1DIG5lZWQgYSBzZWNvbmQgYmFzZSByZWdp
c3RlciBmb3IgdGhlc2UKPj4gZGVsYXkgYmxvY2sgcmVnaXN0ZXJzLgo+Pgo+PiBleGFtcGxlIG9m
IHNkbW1jIG5vZGU6Cj4+ICAgICAgICAgIHNkbW1jMTogc2RtbWNANTgwMDUwMDAgewo+PiAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLHBsMTh4IiwgImFybSxwcmltZWNlbGwiOwo+
PiAgICAgICAgICAgICAgICAgIGFybSxwcmltZWNlbGwtcGVyaXBoaWQgPSA8MHgwMDI1MzE4MD47
Cj4+ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4NTgwMDUwMDAgMHgxMDAwPiwgPDB4NTgwMDYw
MDAgMHgxMDAwPjsKPj4gICAgICAgICAgfTsKPj4KPj4gd2hhdCBkbyB5b3UgYWR2aXNlPwo+IAo+
IEkgbWlzc2VkIHRoYXQgdGhpcyBpcyBhIHByaW1lY2VsbCBibG9jay4gSnVzdCBnaXZlIHNvbWUg
aW5kaWNhdGlvbgo+IHdoaWNoIHZhcmlhbnRzIGhhdmUgdGhpcyAybmQgcmFuZ2UuCgpUaGFua3Mg
Um9iLgpJIHdpbGwgYWRkIHByaW1lY2VsbCBpZChzKSBjb25jZXJuZWQgYnkgdGhpcyAybmQgcmFu
Z2UuCgo+IDAKPiBSb2IKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
