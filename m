Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05245F00F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0rB2Pc9MLUyPgHmIV0SKku1/XSsIevjK1IJoFccm5Kk=; b=bnbEuB0Mn+6Sd+DQnY1Dowuus
	nVlCpHrfGytQfhNcUwqTKFvY+wIL+fd7APGZQnyJzVcjq4xZRex3BzlLReaP9iaP2QIP323rVs36b
	FbnnkQuKqYW2WL5+p8ShFLwxmwS/yZanlbBupP401Z07nwT3b3KFEzDN/wDLA5N1RdKe9n41OSdEm
	NcQaWwFg06+NOVy7WhS0nmn15hQnsASN8jY3x28X8z5LT9NA0hNkwxdemNMmX16fla0rO/k0vlYXh
	FWvtT9WNCBV+P1tuguzXG/cUID6c5FfXgBoD1bW2R89wWcJhFkg4+k8yquBzpG/SazUiVzPBogMl1
	jPufLhLzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0XR-00060w-IJ; Tue, 05 Nov 2019 15:14:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0XK-0005yw-BV
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:14:28 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5F2XXW016060; Tue, 5 Nov 2019 16:14:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=sGcJotaSzAOF4wGBo2lc42IY7N+BpinNhWjk4Wx5zlY=;
 b=NeNQEYXPLvC3WCliUp9foYV7DboksxXg5AylZVZxb3SgTkByJKTqjh4al8hpgwgwC+kw
 KDq8KB+bY+m/l/sPplfQ1h3g2R4FboTw2eX3sStxXNQmYMx+wUSbd+e+qkOFnTbuvB16
 oh2QlH5a05G3/CRmytr5aW7l1TZx8MyIXOG84pD9gAzqPuJlKPipM3xI+E4phHECsjdV
 dGuU7sYCxIuxgh0SuDcunzdaQ6QdFBSIQ/ht29GmniLT0SCWXAatRqmm3duk5wX6ODZJ
 yY+NDtcAk+1n62SgZTGjDI0rmzcKvhblqXCWvBlPCLGo2W6PRYs7pdQs4H3Qi6W0rrE0 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w1054r40k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 16:14:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9294C10002A;
 Tue,  5 Nov 2019 16:14:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 82FD92D3768;
 Tue,  5 Nov 2019 16:14:19 +0100 (CET)
Received: from lmecxl0995.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 Nov
 2019 16:14:18 +0100
Subject: Re: [PATCH 1/1] pinctrl: stmfx: fix valid_mask init sequence
To: Linus Walleij <linus.walleij@linaro.org>
References: <20191104100908.10880-1-amelie.delaunay@st.com>
 <CACRpkdb1c-NHXDQXYS78VTcGPnJApmxjzZbF_cM8SUknhDiQ4Q@mail.gmail.com>
From: Amelie DELAUNAY <amelie.delaunay@st.com>
Message-ID: <64f8096f-cec6-fef1-5a4e-ddca3bf8c73d@st.com>
Date: Tue, 5 Nov 2019 16:14:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdb1c-NHXDQXYS78VTcGPnJApmxjzZbF_cM8SUknhDiQ4Q@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_05:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_071426_846575_3DFF3B0F 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS81LzE5IDM6MzIgUE0sIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4gT24gTW9uLCBOb3Yg
NCwgMjAxOSBhdCAxMTowOSBBTSBBbWVsaWUgRGVsYXVuYXkgPGFtZWxpZS5kZWxhdW5heUBzdC5j
b20+IAo+IHdyb3RlOgo+IAo+PiBXaXRoIHN0bWZ4X3BpbmN0cmxfZ3Bpb19pbml0X3ZhbGlkX21h
c2sgY2FsbGJhY2ssIGdwaW9fdmFsaWRfbWFzayB3YXMgdXNlZAo+PiB0byBpbml0aWFsaXplIGdw
aW9jaGlwIHZhbGlkX21hc2sgZm9yIGdwaW9saWIuIEJ1dCBncGlvX3ZhbGlkX21hc2sgd2FzIG5v
dAo+PiB5ZXQgaW5pdGlhbGl6ZWQuIGdwaW9fdmFsaWRfbWFzayByZXF1aXJlZCBncGlvLXJhbmdl
cyB0byBiZSByZWdpc3RlcmVkLAo+PiB0aGlzIGlzIHRoZSBjYXNlIGFmdGVyIGdwaW9jaGlwX2Fk
ZF9kYXRhIGNhbGwuIEJ1dCBpbml0X3ZhbGlkX21hc2sKPj4gY2FsbGJhY2sgaXMgYWxzbyBjYWxs
ZWQgdW5kZXIgZ3Bpb2NoaXBfYWRkX2RhdGEuIGdwaW9fdmFsaWRfbWFzawo+PiBpbml0aWFsaXph
dGlvbiBjYW5ub3QgYmUgbW92ZWQgYmVmb3JlIGdwaW9jaGlwX2FkZF9kYXRhIGJlY2F1c2UKPj4g
Z3Bpby1yYW5nZXMgYXJlIG5vdCByZWdpc3RlcmVkLgo+IAo+IFNvcnJ5IGJ1dCB0aGlzIGRvZXNu
J3QgYWRkIHVwLCBsb29rIGF0IHRoaXMgY2FsbCBncmFwaDoKPiAKPiBncGlvY2hpcF9hZGRfZGF0
YSgpCj4gIMKgIGdwaW9jaGlwX2FkZF9kYXRhX3dpdGhfa2V5KCkKPiAgwqDCoMKgIGdwaW9jaGlw
X2FsbG9jX3ZhbGlkX21hc2soKQo+ICDCoMKgwqAgb2ZfZ3Bpb2NoaXBfYWRkKCkKPiAgwqDCoMKg
IG9mX2dwaW9jaGlwX2FkZF9waW5fcmFuZ2UoKQo+ICDCoMKgwqAgZ3Bpb2NoaXBfaW5pdF92YWxp
ZF9tYXNrKCkKPiAKPiBTbyB0aGUgLmluaXRpX3ZhbGlkX21hc2soKSBpcyBjbGVhcmx5IGNhbGxl
ZCAqYWZ0ZXIqCj4gb2ZfZ3Bpb2NoaXBfYWRkX3Bpbl9yYW5nZSgpIHNvIHRoaXMgY2Fubm90IGJl
IHRoZSByZWFsIHJlYXNvbiwKPiBwcm92aWRlZCB0aGF0IHRoZSByYW5nZXMgY29tZSBmcm9tIHRo
ZSBkZXZpY2UgdHJlZS4gQUZBSUNUIHRoYXQKPiBpcyB0aGUgY2FzZSB3aXRoIHRoZSBzdG1meC4K
PiAKPiBDYW4geW91IGNoZWNrIGFuZCBzZWUgaWYgdGhlIHByb2JsZW0gaXMgc29tZXRoaW5nIGVs
c2U/Cj4KCnN0bWZ4X3BpbmN0cmxfZ3Bpb19pbml0X3ZhbGlkX21hc2sgdXNlcyBwY3RsLT5ncGlv
X3ZhbGlkX21hc2sgdG8gCmluaXRpYWxpemUgZ3Bpb2NoaXAgdmFsaWRfbWFzay4KCnBjdGwtPmdw
aW9fdmFsaWRfbWFzayBpcyBpbml0aWFsaXplZCBpbiAKc3RtZnhfcGluY3RybF9ncGlvX2Z1bmN0
aW9uX2VuYWJsZSBkZXBlbmRpbmcgb24gZ3BpbyByYW5nZXMuCgpzdG1meF9waW5jdHJsX2dwaW9f
ZnVuY3Rpb25fZW5hYmxlIGlzIGNhbGxlZCBhZnRlciBncGlvY2hpcF9hZGRfZGF0YSAKYmVjYXVz
ZSBpdCByZXF1aXJlcyBncGlvIHJhbmdlcyB0byBiZSByZWdpc3RlcmVkLgoKU28sIGluIHN0bWZ4
IGRyaXZlciB0aGUgY2FsbCBncmFwaCBpcwoKc3RtZnhfcGluY3RybF9wcm9iZQogICBncGlvY2hp
cF9hZGRfZGF0YSgpCiAgICAgZ3Bpb2NoaXBfYWRkX2RhdGFfd2l0aF9rZXkoKQogICAgICAgZ3Bp
b2NoaXBfYWxsb2NfdmFsaWRfbWFzaygpCiAgICAgICBvZl9ncGlvY2hpcF9hZGQoKQogICAgICAg
b2ZfZ3Bpb2NoaXBfYWRkX3Bpbl9yYW5nZSgpCiAgICAgICBncGlvY2hpcF9pbml0X3ZhbGlkX21h
c2soKQogICAgICAgICBzdG1meF9waW5jdHJsX2dwaW9faW5pdF92YWxpZF9tYXNrIChidXQgcGN0
bC0+Z3Bpb192YWxpZF9tYXNrIAppcyBub3QgeWV0IGluaXRpYWxpemVkIHNvIGdwaW9jaGlwIHZh
bGlkX21hc2sgaXMgd3JvbmcpCiAgIHN0bWZ4X3BpbmN0cmxfZ3Bpb19mdW5jdGlvbl9lbmFibGUg
KHBjdGwtPmdwaW9fdmFsaWRfbWFzayBpcyBnb2luZyB0byAKYmUgaW5pdGlhbGl6ZWQgdGhhbmtz
IHRvIGdwaW8gcmFuZ2VzKQoKV2hlbiBjb25zdW1lciB0cmllcyB0byB0YWtlIGEgcGluIChpdCBp
cyB0aGUgY2FzZSBmb3IgdGhlIGpveXN0aWNrIG9uIApzdG0zMm1wMTU3Yy1ldjEpLCBpdCBnZXRz
IHRoZSBmb2xsb3dpbmcgaXNzdWU6ClsgICAgMy4zNDczOTFdIGlycTogOnNvYzppMmNANDAwMTMw
MDA6c3RtZnhANDI6c3RtZngtcGluLWNvbnRyb2xsZXIgCmRpZG4ndCBsaWtlIGh3aXJxLTB4MCB0
byBWSVJROTIgbWFwcGluZyAocmM9LTYpClsgICAgMy4zNTY0MThdIGlycTogOnNvYzppMmNANDAw
MTMwMDA6c3RtZnhANDI6c3RtZngtcGluLWNvbnRyb2xsZXIgCmRpZG4ndCBsaWtlIGh3aXJxLTB4
MSB0byBWSVJROTIgbWFwcGluZyAocmM9LTYpClsgICAgMy4zNjY1MTJdIGlycTogOnNvYzppMmNA
NDAwMTMwMDA6c3RtZnhANDI6c3RtZngtcGluLWNvbnRyb2xsZXIgCmRpZG4ndCBsaWtlIGh3aXJx
LTB4MiB0byBWSVJROTIgbWFwcGluZyAocmM9LTYpClsgICAgMy4zNzY2NzFdIGlycTogOnNvYzpp
MmNANDAwMTMwMDA6c3RtZnhANDI6c3RtZngtcGluLWNvbnRyb2xsZXIgCmRpZG4ndCBsaWtlIGh3
aXJxLTB4MyB0byBWSVJROTIgbWFwcGluZyAocmM9LTYpClsgICAgMy4zODcxNjldIGlycTogOnNv
YzppMmNANDAwMTMwMDA6c3RtZnhANDI6c3RtZngtcGluLWNvbnRyb2xsZXIgCmRpZG4ndCBsaWtl
IGh3aXJxLTB4NCB0byBWSVJROTIgbWFwcGluZyAocmM9LTYpClsgICAgMy4zOTcwNjVdIGdwaW8t
a2V5cyBqb3lzdGljazogRm91bmQgYnV0dG9uIHdpdGhvdXQgZ3BpbyBvciBpcnEKWyAgICAzLjQw
MzA0MV0gZ3Bpby1rZXlzOiBwcm9iZSBvZiBqb3lzdGljayBmYWlsZWQgd2l0aCBlcnJvciAtMjIK
CkkgY2FuIHJld29yZCB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gbWFrZSBpdCBjbGVhcmVyLgoKUmVn
YXJkcywKQW1lbGllCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
