Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08F01C8A9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F/D7uxfw7ofyui+VNm+cLMtR+/T0Rmk1cmFhaXLCpAU=; b=asP4aRCN+NKKlIr9EzLXpgH1q
	8SpB3vig4n0Wq8YCA1q0/PwD9IxZNNfB7AVCRa2aXDp/wrBqT7pGWYOTp5QWD2rIG36rSNWFuNRJ3
	ySsRw3zrgcWyjaFUZ22xHhEGFibwNJ5fq/XZYdjunDOwPhnjI32vN0XUrZxf1k8oqePnCnR8xGB4l
	BYFwudJa629Lt5Z5zNfh/x0Yb+CtdiWsSjUXmuSmEWatOStwcMo7Ez5S+tosmLI3rkhdBNuBpKxrG
	h+763L+NJOG6yijEJrBVpQ6O3Fnp1np99USPsViq5325JS6Dp5jaD1odpCu7zilclCeYr4d44xWkW
	lzY9hcNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfWd-00085W-PA; Thu, 07 May 2020 12:21:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfWU-00084G-DC
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:21:08 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 047CBwO7017687; Thu, 7 May 2020 14:21:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=sy+j/OzdVrEShb4BU6oaOmleHPnk3+iamhvdZNojZEw=;
 b=d+NGdAqKZLAQ6HBYKK+y8XVU0Z3aE6OQ0SW6zYRQR/oFSWeN8KB4KtWisXPV4g314C/C
 7gQ2XxwcWR6om6AawV5ikoN2jc75VEKlE6vaDVtmwqxb3o7qcRN0cRtO5Hduvtrpaa97
 AOli0a/6ljvu72oqCiURwN2aJf1kYTG6OzpW+sSokga3M5i5PRVw2qamLK9/04DK1mgs
 clLiN0MoODFrfi+W09hLdjQYqVIf38q57oDDmSTUgzGTBBXb4vFkCb2Gzm0u14T7ojCI
 8QTQXYKlpYGf1EKOjVNV5Ub+XcjLbfYbpVseGXBcsO85i4BiOAqom6oEBWyAn2IbXBTt LQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30ryrjkhm7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 14:21:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E925310002A;
 Thu,  7 May 2020 14:21:01 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D7E6A2B4D2A;
 Thu,  7 May 2020 14:21:01 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 7 May
 2020 14:20:58 +0200
Subject: Re: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
To: Hua Dillon <dillonhua@gmail.com>
References: <1588850125-24344-1-git-send-email-dillon.minfei@gmail.com>
 <98d6d44c-ff23-ac15-c17b-8f5f49ad2274@st.com>
 <CAPTRvHns7WZj49O2MKHN-ByJpHjYftCqakHN_XOzTwMkg57z0Q@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <bf42a03d-0719-b4c9-7153-818e26dae888@st.com>
Date: Thu, 7 May 2020 14:20:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAPTRvHns7WZj49O2MKHN-ByJpHjYftCqakHN_XOzTwMkg57z0Q@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_06:2020-05-07,
 2020-05-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_052106_804968_80CA0B2A 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "philippe.schenker@toradex.com" <philippe.schenker@toradex.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "dillon.minfei@gmail.com" <dillon.minfei@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzcvMjAgMjoxMyBQTSwgSHVhIERpbGxvbiB3cm90ZToKPiBoaSwgYWxleGFuZHJlIHRv
cmd1ZQo+IAo+IHNvLCBpZiBpIGFkZCAiLS0tIiBiZWxvdwo+ICDCoFNpZ25lZC1vZmYtYnk6IGRp
bGxvbiBtaW4gPGRpbGxvbi5taW5mZWlAZ21haWwuY29tIAo+IDxtYWlsdG86ZGlsbG9uLm1pbmZl
aUBnbWFpbC5jb20+Pgo+ICDCoGluIGdpdCBjb21taXQgcHJvY2Vzcywgd2l0aCBjaGFuZ2VzIGxv
ZyBhZnRlciB0aGF0LsKgIHRoZSBsb2cgd2lsbCBub3QgCj4gc2hvdyBpbiBjb21taXQgbWVzc2Fn
ZXMsIGJ1dCB3aWxsIGV4aXN0IGluIGdpdCBwYXRjaHMsIGp1c3Qgc2hvd2luZyBmb3IgCj4gcmV2
aWV3ZXJzID8KClNvcnJ5IEkgd2FzIG5vdCBlbm91Z2ggY2xlYXIuIEFkZCAtLS0gYWZ0ZXIgeW91
ciBzaWduZWQtb2ZmIGFuZCBhZGQgeW91ciAKbG9nIGNoYW5nZSBhZnRlcgoKPiAKPiBpIHdpbGwg
dHJ5IHRoaXMgdG9tb3Jyb3csIHJlc3VibWl0IGl0Lgo+IAo+IHRoYW5rcyBmb3IgeW91ciBoZWxw
Lgo+IAo+IGJlc3QgcmVnYXJkcwo+IAo+IGRpbGxvbgo+IAo+IOWcqCAyMDIw5bm0NeaciDfml6Xm
mJ/mnJ/lm5vvvIxBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbSAKPiA8
bWFpbHRvOmFsZXhhbmRyZS50b3JndWVAc3QuY29tPj4g5YaZ6YGT77yaCj4gCj4gICAgIEhpIERp
bGxvbgo+IAo+ICAgICBPbiA1LzcvMjAgMToxNSBQTSwgZGlsbG9uLm1pbmZlaUBnbWFpbC5jb20K
PiAgICAgPG1haWx0bzpkaWxsb24ubWluZmVpQGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gICAgICAg
ICBGcm9tOiBkaWxsb24gbWluIDxkaWxsb24ubWluZmVpQGdtYWlsLmNvbQo+ICAgICAgICAgPG1h
aWx0bzpkaWxsb24ubWluZmVpQGdtYWlsLmNvbT4+Cj4gCj4gICAgICAgICBFbmFibGUgdGhlIHN0
bXBlODExIHRvdWNoIHNjcmVlbiBvbiBzdG0zMjQyOS1kaXNjbyBib2FyZC4KPiAKPiAgICAgICAg
IFNpZ25lZC1vZmYtYnk6IGRpbGxvbiBtaW4gPGRpbGxvbi5taW5mZWlAZ21haWwuY29tCj4gICAg
ICAgICA8bWFpbHRvOmRpbGxvbi5taW5mZWlAZ21haWwuY29tPj4KPiAKPiAgICAgICAgIFtQQVRD
SCAzLzRdOiBBUk06IGR0czogc3RtMzI6IGVuYWJsZSBzdG1wZTgxMSBvbiBzdG0zMjQyOS1kaXNj
bwo+IAo+ICAgICAgICAgVjI6Cj4gICAgICAgICBwYXRjaCAzOiByZW1vdmUgdW51c2VkIGlkLCBi
bG9ja3MsIGlycS10cmlnZ2VyCj4gCj4gICAgICAgICBWMToKPiAgICAgICAgIHBhdGNoIDQ6IGZp
eCByZWFkIHRvdWNoIHNjcmVlbiB4eXogdGltZW91dCBidWcKPiAgICAgICAgIHBhdGNoIDM6IGVu
YWJsZSBzdG1wZV90b3VjaHNjcmVlbiBvbiBzdG0zMmY0MjktZGlzY28gYm9hcmQKPiAgICAgICAg
IHBhdGNoIDI6IGFkZCBpMmMzIHBpbiBtdXggZm9yIHN0bTMyZjQKPiAgICAgICAgIHBhdGNoIDE6
IGFkZCBpMmMzIGNvbnRyb2xsZXIgaW50ZXJmYWNlIGZvciBzdG0zMmY0Cj4gCj4gCj4gICAgIEdv
b2QgaWRlYSB0byBhZGQgY2hhbmdlcyBsb2cgZm9yIHRoaXMgcGF0Y2guIEJ1dCB0aGlzIGxvZyBo
YXMgdG8gYmUKPiAgICAgcGxhY2VkwqAgYWZ0ZXIgIi0tLSIgYmVsb3cuIFRoaXMgbG9nIGhhcyBu
b3QgdG8gYXBwZWFyIGluIHlvdXIgY29tbWl0Cj4gICAgIG1lc3NhZ2UuIEZ1cnRoZXJtb3JlLCB5
b3Ugc2hvdWxkIG9ubHkgYWRkIGNoYW5nZXMgZm9yIHRoaXMgcGF0Y2gKPiAgICAgd2l0aG91dCB0
YWxraW5nIGFib3V0IG90aGVyIHBhdGNoZXMgLgo+IAo+IAo+ICAgICAgICAgU2lnbmVkLW9mZi1i
eTogZGlsbG9uIG1pbiA8ZGlsbG9uLm1pbmZlaUBnbWFpbC5jb20KPiAgICAgICAgIDxtYWlsdG86
ZGlsbG9uLm1pbmZlaUBnbWFpbC5jb20+Pgo+ICAgICAgICAgLS0tCj4gCj4gCj4gICAgIEFkZCBw
YXRjaCBjaGFuZ2UgbG9nIGhlcmUuCj4gCj4gICAgICAgICAgwqAgYXJjaC9hcm0vYm9vdC9kdHMv
c3RtMzJmNDI5LWRpc2NvLmR0cyB8IDQ3Cj4gICAgICAgICArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ICAgICAgICAgIMKgIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25z
KCspCj4gCj4gICAgICAgICBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJmNDI5
LWRpc2NvLmR0cwo+ICAgICAgICAgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMmY0MjktZGlzY28u
ZHRzCj4gICAgICAgICBpbmRleCAzMGMwZjY3Li5mYWQxZWMxIDEwMDY0NAo+ICAgICAgICAgLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJmNDI5LWRpc2NvLmR0cwo+ICAgICAgICAgKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJmNDI5LWRpc2NvLmR0cwo+ICAgICAgICAgQEAgLTQ5LDYg
KzQ5LDggQEAKPiAgICAgICAgICDCoCAjaW5jbHVkZSAic3RtMzJmNDI5LmR0c2kiCj4gICAgICAg
ICAgwqAgI2luY2x1ZGUgInN0bTMyZjQyOS1waW5jdHJsLmR0c2kiCj4gICAgICAgICAgwqAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4gICAgICAgICArI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+ICAgICAgICAgKyNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiAgICAgICAgICDCoCDCoCAvIHsKPiAgICAgICAg
ICDCoCDCoCDCoCDCoCBtb2RlbCA9ICJTVE1pY3JvZWxlY3Ryb25pY3MgU1RNMzJGNDI5aS1ESVND
TyBib2FyZCI7Cj4gICAgICAgICBAQCAtMTI3LDMgKzEyOSw0OCBAQAo+ICAgICAgICAgIMKgIMKg
IMKgIMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAgICAgwqAgwqAgwqAgwqAg
c3RhdHVzID0gIm9rYXkiOwo+ICAgICAgICAgIMKgIH07Cj4gICAgICAgICArCj4gICAgICAgICAr
JmkyYzMgewo+ICAgICAgICAgK8KgIMKgIMKgIMKgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiAgICAgICAgICvCoCDCoCDCoCDCoHBpbmN0cmwtMCA9IDwmaTJjM19waW5zPjsKPiAgICAgICAg
ICvCoCDCoCDCoCDCoGNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDA+Owo+ICAgICAgICAgK8KgIMKg
IMKgIMKgc3RhdHVzID0gIm9rYXkiOwo+ICAgICAgICAgKwo+ICAgICAgICAgK8KgIMKgIMKgIMKg
c3RtcGU4MTFANDEgewo+ICAgICAgICAgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY29tcGF0aWJs
ZSA9ICJzdCxzdG1wZTgxMSI7Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZWcg
PSA8MHg0MT47Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpbnRlcnJ1cHRzID0g
PDE1IElSUV9UWVBFX0VER0VfRkFMTElORz47Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvYT47Cj4gICAgICAgICArwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAvKiAzLjI1IE1IeiBBREMgY2xvY2sgc3BlZWQgKi8KPiAgICAgICAgICvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoHN0LGFkYy1mcmVxID0gPDE+Owo+ICAgICAgICAgK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgLyogMTItYml0IEFEQyAqLwo+ICAgICAgICAgK8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgc3QsbW9kLTEyYiA9IDwxPjsKPiAgICAgICAgICvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoC8qIGludGVybmFsIEFEQyByZWZlcmVuY2UgKi8KPiAgICAgICAgICvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHN0LHJlZi1zZWwgPSA8MD47Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAvKiBBREMgY29udmVyc3Rpb24gdGltZTogODAgY2xvY2tzICovCj4gICAgICAgICArwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBzdCxzYW1wbGUtdGltZSA9IDw0PjsKPiAgICAgICAgICsKPiAg
ICAgICAgICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0bXBlX3RvdWNoc2NyZWVuIHsKPiAgICAg
ICAgICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbXBhdGlibGUgPSAic3Qs
c3RtcGUtdHMiOwo+ICAgICAgICAgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
LyogOCBzYW1wbGUgYXZlcmFnZSBjb250cm9sICovCj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBzdCxhdmUtY3RybCA9IDwzPjsKPiAgICAgICAgICvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIDcgbGVuZ3RoIGZyYWN0aW9uYWwgcGFydCBp
biB6ICovCj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdCxm
cmFjdGlvbi16ID0gPDc+Owo+ICAgICAgICAgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgLyoKPiAgICAgICAgICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAq
IDUwIG1BIHR5cGljYWwgODAgbUEgbWF4IHRvdWNoc2NyZWVuCj4gICAgICAgICBkcml2ZXJzCj4g
ICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKiBjdXJyZW50IGxp
bWl0IHZhbHVlCj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
Ki8KPiAgICAgICAgICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0LGktZHJp
dmUgPSA8MT47Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAv
KiAxIG1zIHBhbmVsIGRyaXZlciBzZXR0bGluZyB0aW1lICovCj4gICAgICAgICArwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdCxzZXR0bGluZyA9IDwzPjsKPiAgICAgICAgICvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIDUgbXMgdG91Y2ggZGV0ZWN0IGlu
dGVycnVwdCBkZWxheSAqLwo+ICAgICAgICAgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgc3QsdG91Y2gtZGV0LWRlbGF5ID0gPDU+Owo+ICAgICAgICAgK8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgfTsKPiAgICAgICAgICsKPiAgICAgICAgICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHN0bXBlX2FkYyB7Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBjb21wYXRpYmxlID0gInN0LHN0bXBlLWFkYyI7Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAvKiBmb3JiaWQgdG8gdXNlIEFEQyBjaGFubmVscyAzLTAgKHRv
dWNoKSAqLwo+ICAgICAgICAgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3Qs
bm9yZXF1ZXN0LW1hc2sgPSA8MHgwRj47Cj4gICAgICAgICArwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqB9Owo+ICAgICAgICAgK8KgIMKgIMKgIMKgfTsKPiAgICAgICAgICt9Owo+IAo+IAo+ICAgICBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ICAgICBsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ICAgICBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiAgICAgPG1haWx0bzpsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmc+Cj4gICAgIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo+ICAgICA8aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsPgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
