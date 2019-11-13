Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78848FAE1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kn4sLypeXNJrS/PKQ1ZiVGZ6Ur62YDvDzc+rDzva9ow=; b=QiB733a4yegTcR/tWrzLIh8EF
	ojfT9UStyc6zKL7SsQF4ds5A0ShiYTLjScgQqYJysriXtnX53lNAHslC6NmCPXU4vOWqI8b3ZnxwV
	sNlqPgGT+eApCUQRce2x10sUytSIsp6GRNCyH2rU1r17ABtIEdLdOs7cSwnArLaxKklIuOQjMIz7X
	HP4Tmq3kr6rJcqVrLScHAYGUZnBc0RF055jTtJujYkAba8T4d7dWx4/hkgunLdTmki9JlvmGDxJuy
	gDGgV/r7ZYRkDRRCZ3owN0O/HOX/Le0g6+ohhgQfZC4GPm+wPKzdpNgohpb2ZFsXdPHrKdhJay+Lz
	mngnc9ONQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpaZ-0004fG-Mi; Wed, 13 Nov 2019 10:09:27 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpaP-0004dy-5E
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:09:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xADA7X3u000396; Wed, 13 Nov 2019 11:08:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=LN9GfHT8J8E/J1FjZzDKs8dd1ZDPcHLn4UnTjLS5qt4=;
 b=vqtpbLG63F4Fmtdn+dCCkh1RRje6fgseyGikfy6WQjO52GTKNCqqEyUHWcZlkxOMdueN
 j8Uy/5MXgBB87+8ij+kPNObM3MLUOGv1lghbIbMFRFl4ttJ4uYK4HU/dOee1DAeMHx0h
 YaqZylg1ivtyLyzz820RX27YUMDy3yz2tF0T+gxiieJQOwwh30RdR0wISgqvy3Z2LJo1
 iCs3QFp8+zadRPGia0VtWpuYzVdBaq+89mAOKw/83ikq748ssEKmE2qcAH5+asHR4iOt
 pFXwgbK/IpVDk7Gj0X7dIqLyNjCpJRN7AJrAL1L0xsq6rwQ36Thm5Y4qQVsSIx2tCKiD 9g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psf7f1p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 Nov 2019 11:08:58 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 98F62100038;
 Wed, 13 Nov 2019 11:08:57 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 78AB72B494E;
 Wed, 13 Nov 2019 11:08:57 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.50) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 13 Nov
 2019 11:08:56 +0100
Subject: Re: [PATCH 1/3] mmc: mmci: Support odd block sizes for ux500v2 and
 qcom variant
To: Linus Walleij <linus.walleij@linaro.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, <linux-mmc@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>
References: <20191113075335.31775-1-linus.walleij@linaro.org>
 <20191113075335.31775-2-linus.walleij@linaro.org>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <e52b49cf-6f16-85f1-455c-3fe95bab5aef@st.com>
Date: Wed, 13 Nov 2019 11:08:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191113075335.31775-2-linus.walleij@linaro.org>
Content-Language: fr
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-13_02:2019-11-13,2019-11-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_020917_566965_A5C1BC22 
X-CRM114-Status: GOOD (  37.97  )
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
Cc: Niklas Cassel <niklas.cassel@linaro.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Russell King <linux@arm.linux.org.uk>, Brian Masney <masneyb@onstation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGVzdGVkLWJ5OiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KCkxlIDExLzEz
LzE5IMOgIDg6NTMgQU0sIExpbnVzIFdhbGxlaWogYSDDqWNyaXTCoDoKPiBGcm9tOiBVbGYgSGFu
c3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4KPiAKPiBUaGlzIGlzIHNvbWV0aGluZyBsaWtl
IHRoZSA1dGggdGltZSB0aGlzIHBhdGNoIGlzIHBvc3RlZCwKPiBzbyBsZXQncyB0cnkgdG8gZml4
IHRoaXMgbm93LCBvbmNlIGFuZCBmb3IgYWxsLgo+IAo+IEZvciB0aGUgdXg1MDB2MiB2YXJpYW50
IG9mIHRoZSBQTDE4eCBibG9jaywgb2RkIGJsb2NrIHNpemVzIGFyZQo+IHN1cHBvcnRlZC4gVGhp
cyBpcyBuZWNlc3NhcnkgdG8gc3VwcG9ydCBzb21lIFNESU8gdHJhbnNmZXJzCj4gc3VjaCBhcyBz
aW5nbGUgYnl0ZXMuIFRoaXMgYWxzbyBhZmZlY3RzIHRoZSBRQ09NIE1NQ0kgdmFyaWFudC4KPiAK
PiBUaGlzIHdpbGwgd29yayBmaW5lIGZvciBQSU8gdXNpbmcgSVJRczogU0RJTyBwYWNrZXRzIGFy
ZQo+IGFjY2VwdGVkIGRvd24gdG8gc2luZ2xlIGJ5dGVzIGFuZCB0aGUgdHJhbnNmZXJzIGdvIHRo
cm91Z2gKPiBqdXN0IGZpbmUuCj4gCj4gVGhpcyBwYXRjaCBoYXMgcHJvdmVuIG5lY2Vzc2FyeSBm
b3IgZW5hYmxpbmcgU0RJTyBmb3IgV0xBTiBvbgo+IFBvc3RtYXJrZXRPUy1iYXNlZCBVeDUwMCBw
bGF0Zm9ybXMuCj4gCj4gVGhpcyBwYXRjaCBpcyBiYXNlZCBvbiBVbGYgSGFuc3NvbidzIHBhdGNo
Cj4gaHR0cDovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1tbWMvbXNnMTIxNjAuaHRtbAo+
IAo+IFVsZiBub3RlZCBvbiBhbiBlYXJsaWVyIGl0ZXJhdGlvbiBpbjoKPiBodHRwczovL21hcmMu
aW5mby8/bD1saW51eC1tbWMmbT0xNDA4NDUxODkzMTYzNzAmdz0yCj4gCj4gIlRoZXJlIGFyZSBz
b21lIHByZXJlcXVpc2l0ZXMgb2YgdGhlIGRhdGEgYnVmZmVycyB0byBzdXBwb3J0cwo+IGFueSBi
bG9jayBzaXplLCBhdCBsZWFzdCBmb3IgdXg1MDAuICguLi4pIFRoZSBjb25jbHVzaW9uIGZyb20K
PiB0aGUgYWJvdmUgaXMgdGhhdCB3ZSBuZWVkIHRvIGFkb3B0IG1tY2lfcGlvX3dyaXRlKCkgdG8g
aGFuZGxlCj4gY29ybmVyIGNhc2VzLiIKPiAKPiBUaGlzIHBvaW50cyBiYWNrIHRvIGEgZGlzY3Vz
c2lvbiBpbiAyMDEyLiBUaGUgbWFpbiBwb2ludCB3YXMKPiBtYWRlIGJ5IFJ1c3NlbGwgaW4gdGhp
cyBtZXNzYWdlOgo+IGh0dHBzOi8vbWFyYy5pbmZvLz9sPWxpbnV4LWFybS1rZXJuZWwmbT0xMzUz
NTEyMzcwMTgzMDEmdz0yCj4gCj4gSUlVQyB0aGlzIHBlcnRhaW5zIHRvIHRoaXMgY29kZSAobm93
IGdvbmUgZnJvbSB0aGUgcGF0Y2gpOgo+IAo+ICAgIGlmIChkYXRhLT5zZy0+b2Zmc2V0ICYgMykg
ewo+ICAgICAgICBkZXZfZXJyKC4uLik7Cj4gICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICAgIH0K
PiAKPiBUaGlzIGhpdCBTdGVwaGFuIGFzIGhlIG5vdGljZWQgdGhhdCBETUEgKERNQTQwKSB3b3Vs
ZCBub3Qgd29yawo+IHdpdGggdGhlIE1NQ0kgZHJpdmVyLCBzbyB0aGlzIHBhdGNoIGNvbWJpbmVk
IHdpdGggZGlzYWJsaW5nCj4gRE1BIHdvdWxkIGRvIHRoZSB0cmljay4gVGhhdCB3YXkgd2UgZG9u
J3QgdG9zcyB1bmFsaWduZWQKPiBhY2Nlc3NlcyBhdCB0aGUgRE1BIGVuZ2luZSBhcyBTRElPIGFw
cGFyZW50bHkgdGVuZHMgdG8KPiBkby4gKFRoaXMgaXMgbm90IGEgcHJvYmxlbSB3aGVuIHdyaXRp
bmcgb3JkaW5hcnkgYmxvY2sgZGV2aWNlCj4gYmxvY2tzIGFzIHRoZXNlIGFyZSBhbHdheXMgNTEy
IGJ5dGVzIGFsaWduZWQgb24gYSA0LWJ5dGUKPiBib3VuZGFyeS4pCj4gCj4gQXMgVWxmIG5vdGVz
LCBvZGQgU0cgb2Zmc2V0cyBsaWtlIHRoaXMgc2hvdWxkIGJlIGhhbmRsZWQKPiBieSB0aGUgZHJp
dmVyIGV2ZW4gaWYgd2UgcnVuIGl0IGluIERNQSBtb2RlLiBJIGNvbmNsdWRlCj4gaXQgbXVzdCBi
ZSB0aGUgZHV0eSBvZiB0aGUgRE1BIGRyaXZlciB0byBzYXkgTk8gdG8gU0cKPiBvZmZzZXRzIGl0
IGNhbm5vdCBoYW5kbGUsIG9yIG90aGVyd2lzZSBiaXRzdHVmZiB0aGluZ3MKPiBhcm91bmQgdG8g
YXZvaWQgdGhlIHNpdHVhdGlvbi4KPiAKPiBTbyBhcyBhIGZpcnN0IHN0ZXAgbWFrZSBzdXJlIGVy
cm9ycyBhcmUgcHJvcGFnYXRlZCB1cHdhcmQKPiBmcm9tIHRoZSBETUEgZW5naW5lLCBhbmQgYXNz
dW1lIHRoZSBETUEgZW5naW5lIHdpbGwgc2F5IG5vCj4gdG8gdGhpbmdzIHdpdGggd2VpcmQgU0cg
b2Zmc2V0cyB0aGF0IGl0IGNhbm5vdCBoYW5kbGUsIGFuZAo+IHRoZW4gdGhlIGRyaXZlciB3aWxs
IGZhbGwgYmFjayB0byB1c2luZyBQSU8uCj4gCj4gSXQgbWlnaHQgYmUgdGhhdCBzb21lIERNQSBl
bmdpbmVzIChzdWNoIGFzIHRoZSBVeDUwMAo+IERNQTQwKSBkbyBub3QgcHJvcGVybHkgc2F5IG5v
IHRvIHNnbGlzdHMgd2l0aCB1bmV2ZW4KPiBvZmZzZXRzLCBvciBpZ25vcmUgdGhlIG9mZnNldCBh
bHRvZ2V0aGVyIHJlc3VsdGluZyBpbgo+IHVucHJlZGljdGFibGUgYmVoYXZpb3IuIFRoYXQgaXMg
aW4gdGhhdCBjYXNlIGEgYnVnIGluIHRoZQo+IERNQSBkcml2ZXIgYW5kIG5lZWRzIHRvIGJlIGZp
eGVkIHRoZXJlLiBJIGdvdCB0aGUgaW1wcmVzc2lvbgo+IHRoYXQgdGhlIFF1YWxjb21tIERNQSBh
Y3R1YWxseSBjYW4gaGFuZGxlIHRoZXNlIG9kZAo+IGFsaWdubWVudHMgd2l0aG91dCBwcm9ibGVt
cy4KPiAKPiAoTWFrZSBhIGRyaXZlLWJ5IGZpeCBmb3IgZGF0YWN0cmxfYmxvY2tzeiwgbWlzc3Bl
bGxlZC4pCj4gCj4gQ2M6IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+IENj
OiBCcmlhbiBNYXNuZXkgPG1hc25leWJAb25zdGF0aW9uLm9yZz4KPiBDYzogU3RlcGhhbiBHZXJo
b2xkIDxzdGVwaGFuQGdlcmhvbGQubmV0Pgo+IENjOiBOaWtsYXMgQ2Fzc2VsIDxuaWtsYXMuY2Fz
c2VsQGxpbmFyby5vcmc+Cj4gQ2M6IFJ1c3NlbGwgS2luZyA8cm1rK2tlcm5lbEBhcm1saW51eC5v
cmcudWs+Cj4gVGVzdGVkLWJ5OiBTdGVwaGFuIEdlcmhvbGQgPHN0ZXBoYW5AZ2VyaG9sZC5uZXQ+
Cj4gU2lnbmVkLW9mZi1ieTogVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+Cj4g
U2lnbmVkLW9mZi1ieTogU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2YXMua2FuZGFnYXRsYUBs
aW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpA
bGluYXJvLm9yZz4KPiAtLS0KPiBDaGFuZ2VMb2cgdjItPnYzOgo+IC0gUmVwb3N0IHdpdGggdGhl
IGluY2x1c2lvbiBvZiBvdGhlciBwYXRjaGVzLgo+IENoYW5nZUxvZyB2MS0+djI6Cj4gLSBTcGVj
aWZ5IG9kZCBibG9ja3NpemUgZmllbGQgdG8gMSBiaXQgKDoxKQo+IC0gU3BlY2lmeSB0aGF0IFNU
TU1DIHN1cHBvcnRzIG9kZCBibG9jayBzaXplcwo+IC0gQ29sbGVjdCBTdGVwaGFuJ3MgdGVzdCB0
YWcKPiAtLS0KPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIHwgMjAgKysrKysrKysrKysrKysr
Ky0tLS0KPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5oIHwgIDYgKysrKystCj4gICAyIGZpbGVz
IGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPiBp
bmRleCBjMzdlNzBkYmUyNTAuLjNmZmNkZjc4YTQyOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21t
Yy9ob3N0L21tY2kuYwo+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4gQEAgLTE2OCw2
ICsxNjgsNyBAQCBzdGF0aWMgc3RydWN0IHZhcmlhbnRfZGF0YSB2YXJpYW50X3V4NTAwID0gewo+
ICAgCS5jbWRyZWdfc3JzcAkJPSBNQ0lfQ1BTTV9SRVNQT05TRSwKPiAgIAkuZGF0YWxlbmd0aF9i
aXRzCT0gMjQsCj4gICAJLmRhdGFjdHJsX2Jsb2Nrc3oJPSAxMSwKPiArCS5kYXRhY3RybF9vZGRf
YmxvY2tzegk9IHRydWUsCj4gICAJLmRhdGFjdHJsX21hc2tfc2Rpbwk9IE1DSV9EUFNNX1NUX1NE
SU9FTiwKPiAgIAkuc3Rfc2RpbwkJPSB0cnVlLAo+ICAgCS5zdF9jbGtkaXYJCT0gdHJ1ZSwKPiBA
QCAtMjAxLDYgKzIwMiw3IEBAIHN0YXRpYyBzdHJ1Y3QgdmFyaWFudF9kYXRhIHZhcmlhbnRfdXg1
MDB2MiA9IHsKPiAgIAkuZGF0YWN0cmxfbWFza19kZHJtb2RlCT0gTUNJX0RQU01fU1RfRERSTU9E
RSwKPiAgIAkuZGF0YWxlbmd0aF9iaXRzCT0gMjQsCj4gICAJLmRhdGFjdHJsX2Jsb2Nrc3oJPSAx
MSwKPiArCS5kYXRhY3RybF9vZGRfYmxvY2tzegk9IHRydWUsCj4gICAJLmRhdGFjdHJsX21hc2tf
c2Rpbwk9IE1DSV9EUFNNX1NUX1NESU9FTiwKPiAgIAkuc3Rfc2RpbwkJPSB0cnVlLAo+ICAgCS5z
dF9jbGtkaXYJCT0gdHJ1ZSwKPiBAQCAtMjYwLDYgKzI2Miw3IEBAIHN0YXRpYyBzdHJ1Y3QgdmFy
aWFudF9kYXRhIHZhcmlhbnRfc3RtMzJfc2RtbWMgPSB7Cj4gICAJLmRhdGFjbnRfdXNlbGVzcwk9
IHRydWUsCj4gICAJLmRhdGFsZW5ndGhfYml0cwk9IDI1LAo+ICAgCS5kYXRhY3RybF9ibG9ja3N6
CT0gMTQsCj4gKwkuZGF0YWN0cmxfb2RkX2Jsb2Nrc3oJPSB0cnVlLAo+ICAgCS5zdG0zMl9pZG1h
YnNpemVfbWFzawk9IEdFTk1BU0soMTIsIDUpLAo+ICAgCS5pbml0CQkJPSBzZG1tY192YXJpYW50
X2luaXQsCj4gICB9Owo+IEBAIC0yNzksNiArMjgyLDcgQEAgc3RhdGljIHN0cnVjdCB2YXJpYW50
X2RhdGEgdmFyaWFudF9xY29tID0gewo+ICAgCS5kYXRhX2NtZF9lbmFibGUJPSBNQ0lfQ1BTTV9R
Q09NX0RBVENNRCwKPiAgIAkuZGF0YWxlbmd0aF9iaXRzCT0gMjQsCj4gICAJLmRhdGFjdHJsX2Js
b2Nrc3oJPSAxMSwKPiArCS5kYXRhY3RybF9vZGRfYmxvY2tzegk9IHRydWUsCj4gICAJLnB3cnJl
Z19wb3dlcnVwCQk9IE1DSV9QV1JfVVAsCj4gICAJLmZfbWF4CQkJPSAyMDgwMDAwMDAsCj4gICAJ
LmV4cGxpY2l0X21jbGtfY29udHJvbAk9IHRydWUsCj4gQEAgLTQ0NywxMCArNDUxLDExIEBAIHZv
aWQgbW1jaV9kbWFfc2V0dXAoc3RydWN0IG1tY2lfaG9zdCAqaG9zdCkKPiAgIHN0YXRpYyBpbnQg
bW1jaV92YWxpZGF0ZV9kYXRhKHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QsCj4gICAJCQkgICAgICBz
dHJ1Y3QgbW1jX2RhdGEgKmRhdGEpCj4gICB7Cj4gKwlzdHJ1Y3QgdmFyaWFudF9kYXRhICp2YXJp
YW50ID0gaG9zdC0+dmFyaWFudDsKPiArCj4gICAJaWYgKCFkYXRhKQo+ICAgCQlyZXR1cm4gMDsK
PiAtCj4gLQlpZiAoIWlzX3Bvd2VyX29mXzIoZGF0YS0+Ymxrc3opKSB7Cj4gKwlpZiAoIWlzX3Bv
d2VyX29mXzIoZGF0YS0+Ymxrc3opICYmICF2YXJpYW50LT5kYXRhY3RybF9vZGRfYmxvY2tzeikg
ewo+ICAgCQlkZXZfZXJyKG1tY19kZXYoaG9zdC0+bW1jKSwKPiAgIAkJCSJ1bnN1cHBvcnRlZCBi
bG9jayBzaXplICglZCBieXRlcylcbiIsIGRhdGEtPmJsa3N6KTsKPiAgIAkJcmV0dXJuIC1FSU5W
QUw7Cj4gQEAgLTUxNSw3ICs1MjAsOSBAQCBpbnQgbW1jaV9kbWFfc3RhcnQoc3RydWN0IG1tY2lf
aG9zdCAqaG9zdCwgdW5zaWduZWQgaW50IGRhdGFjdHJsKQo+ICAgCQkgIlN1Ym1pdCBNTUNJIERN
QSBqb2IsIHNnbGVuICVkIGJsa3N6ICUwNHggYmxrcyAlMDR4IGZsYWdzICUwOHhcbiIsCj4gICAJ
CSBkYXRhLT5zZ19sZW4sIGRhdGEtPmJsa3N6LCBkYXRhLT5ibG9ja3MsIGRhdGEtPmZsYWdzKTsK
PiAgIAo+IC0JaG9zdC0+b3BzLT5kbWFfc3RhcnQoaG9zdCwgJmRhdGFjdHJsKTsKPiArCXJldCA9
IGhvc3QtPm9wcy0+ZG1hX3N0YXJ0KGhvc3QsICZkYXRhY3RybCk7Cj4gKwlpZiAocmV0KQo+ICsJ
CXJldHVybiByZXQ7Cj4gICAKPiAgIAkvKiBUcmlnZ2VyIHRoZSBETUEgdHJhbnNmZXIgKi8KPiAg
IAltbWNpX3dyaXRlX2RhdGFjdHJscmVnKGhvc3QsIGRhdGFjdHJsKTsKPiBAQCAtODcyLDkgKzg3
OSwxNCBAQCBpbnQgbW1jaV9kbWFlX3ByZXBfZGF0YShzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LAo+
ICAgaW50IG1tY2lfZG1hZV9zdGFydChzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LCB1bnNpZ25lZCBp
bnQgKmRhdGFjdHJsKQo+ICAgewo+ICAgCXN0cnVjdCBtbWNpX2RtYWVfcHJpdiAqZG1hZSA9IGhv
c3QtPmRtYV9wcml2Owo+ICsJaW50IHJldDsKPiAgIAo+ICAgCWhvc3QtPmRtYV9pbl9wcm9ncmVz
cyA9IHRydWU7Cj4gLQlkbWFlbmdpbmVfc3VibWl0KGRtYWUtPmRlc2NfY3VycmVudCk7Cj4gKwly
ZXQgPSBkbWFfc3VibWl0X2Vycm9yKGRtYWVuZ2luZV9zdWJtaXQoZG1hZS0+ZGVzY19jdXJyZW50
KSk7Cj4gKwlpZiAocmV0IDwgMCkgewo+ICsJCWhvc3QtPmRtYV9pbl9wcm9ncmVzcyA9IGZhbHNl
Owo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4gICAJZG1hX2FzeW5jX2lzc3VlX3BlbmRpbmcoZG1h
ZS0+Y3VyKTsKPiAgIAo+ICAgCSpkYXRhY3RybCB8PSBNQ0lfRFBTTV9ETUFFTkFCTEU7Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5oIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNp
LmgKPiBpbmRleCA4MzMyMzZlY2IzMWUuLmM3Zjk0NzI2ZWFhMSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21tYy9ob3N0L21tY2kuaAo+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5oCj4gQEAg
LTI3OCw3ICsyNzgsMTAgQEAgc3RydWN0IG1tY2lfaG9zdDsKPiAgICAqIEBzdG0zMl9jbGtkaXY6
IHRydWUgaWYgdXNpbmcgYSBTVE0zMi1zcGVjaWZpYyBjbG9jayBkaXZpZGVyIGFsZ29yaXRobQo+
ICAgICogQGRhdGFjdHJsX21hc2tfZGRybW9kZTogZGRyIG1vZGUgbWFzayBpbiBkYXRhY3RybCBy
ZWdpc3Rlci4KPiAgICAqIEBkYXRhY3RybF9tYXNrX3NkaW86IFNESU8gZW5hYmxlIG1hc2sgaW4g
ZGF0YWN0cmwgcmVnaXN0ZXIKPiAtICogQGRhdGFjdHJsX2Jsa3N6OiBibG9jayBzaXplIGluIHBv
d2VyIG9mIHR3bwo+ICsgKiBAZGF0YWN0cmxfYmxvY2tzejogYmxvY2sgc2l6ZSBpbiBwb3dlciBv
ZiB0d28KPiArICogQGRhdGFjdHJsX29kZF9ibG9ja3N6OiB0cnVlIGlmIGJsb2NrIGFueSBzaXpl
cyBhcmUgc3VwcG9ydGVkLCBzdWNoIGFzIG9uZQo+ICsgKgkJICAgICAgc2luZ2xlIGNoYXJhY3Rl
ciwgYXMgaXMgbmVjZXNzYXJ5IHdoZW4gdXNpbmcgc29tZSBTRElPCj4gKyAqCQkgICAgICBkZXZp
Y2VzLgo+ICAgICogQGRhdGFjdHJsX2ZpcnN0OiB0cnVlIGlmIGRhdGEgbXVzdCBiZSBzZXR1cCBi
ZWZvcmUgc2VuZCBjb21tYW5kCj4gICAgKiBAZGF0YWNudF91c2VsZXNzOiB0cnVlIGlmIHlvdSBj
b3VsZCBub3QgdXNlIGRhdGFjbnQgcmVnaXN0ZXIgdG8gcmVhZAo+ICAgICoJCSAgICAgcmVtYWlu
aW5nIGRhdGEKPiBAQCAtMzIzLDYgKzMyNiw3IEBAIHN0cnVjdCB2YXJpYW50X2RhdGEgewo+ICAg
CXVuc2lnbmVkIGludAkJZGF0YWN0cmxfbWFza19kZHJtb2RlOwo+ICAgCXVuc2lnbmVkIGludAkJ
ZGF0YWN0cmxfbWFza19zZGlvOwo+ICAgCXVuc2lnbmVkIGludAkJZGF0YWN0cmxfYmxvY2tzejsK
PiArCXU4CQkJZGF0YWN0cmxfb2RkX2Jsb2Nrc3o6MTsKPiAgIAl1OAkJCWRhdGFjdHJsX2ZpcnN0
OjE7Cj4gICAJdTgJCQlkYXRhY250X3VzZWxlc3M6MTsKPiAgIAl1OAkJCXN0X3NkaW86MTsKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
