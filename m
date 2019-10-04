Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23D6CBB16
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=db0angGcHQnOJTqHY2k3q1tEguJ5kDDZUtONsSHzmyk=; b=YD+XtPnZT8FJoAQThEa3oZ8lD
	HhfoMABK+Jokrtdsj3bDosnxgznbbGjVL4CPzomr4Q19VM13532kRcEtGeeSiOtZZVrkYN2KUCwtY
	TiUOxOoj2xFVfUW1zNgQsntq+LF5ik0p8mE1RHZ8jL6n9YcDE5NAA+uV4yRVmbQyiXuT6Dg4jpPDa
	NJe7dkyxkntVXkSS5x73wIVqUix9DienKqqmijTmGlqi9HQtvUbgM62Zg4NhQGJtmMwmQbDpstz6p
	rBrN3yitxfZIr90mD2AQmb4xUZWxhyQx/Hw73WIWEmjFQlxasij1xMzDBuUdM9y3LZ26C3ozounnc
	sa+ZYpgag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNBE-0007iU-S9; Fri, 04 Oct 2019 12:59:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNB6-0007hS-K6
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:59:26 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94Ctm2V004005; Fri, 4 Oct 2019 14:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=jdYkwnHIKXfltbtMEhWAa+g48yPJwrWjJwMzruN2kFY=;
 b=r+ZnBViDiiS3beRXVQVIfZbNkup4XzntMEAd9nv8kDfTNCwK3VdudSION9cWUlUheAnR
 Qlu8gnAqpcZncN0lkCOUGgni+UD6aFuha2LjF+W1+wuEKiJpkg3JetOFOp/QjVVIG6hs
 IFpNc+8NQMBrxJpZiGt5+ybchhDr0xTa/r00mtCQ8puGtBvMopJiQwfOqCXvj5v/pFMH
 15pWA0vfQi64+RIV7cFyE4TKFLtIShTgIFMCKM5Gvlyn9r8F+Fvifg8b9zacoc3nYIsC
 UXeUj9uctUM3W1WvbV86+SFd/9u+hOZtwWs5rlydgpQgIW7kGjXGSeKWZM+r6RwmQ0Mk HA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w9wb2aw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 14:59:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AEA6010002A;
 Fri,  4 Oct 2019 14:59:17 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9CD8F2BFE06;
 Fri,  4 Oct 2019 14:59:17 +0200 (CEST)
Received: from lmecxl0923.lme.st.com (10.75.127.49) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 4 Oct
 2019 14:59:16 +0200
Subject: Re: [PATCH V6 1/3] mmc: mmci: add hardware busy timeout feature
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20190905122112.29672-1-ludovic.Barre@st.com>
 <20190905122112.29672-2-ludovic.Barre@st.com>
 <CAPDyKFpcb=dT0XBAGVL68t--xi5853Dzsgak-vbx5VcvxLZ4zA@mail.gmail.com>
 <CAPDyKFrRDHeVs6RpM=qTT1AogLnFWJLh2S4-wCcrYAON9XVKCA@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <da9072ce-852c-a46c-ecdf-ea6bfd89ef79@st.com>
Date: Fri, 4 Oct 2019 14:59:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFrRDHeVs6RpM=qTT1AogLnFWJLh2S4-wCcrYAON9XVKCA@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_055925_027908_CA934435 
X-CRM114-Status: GOOD (  29.09  )
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpMZSAxMC80LzE5IMOgIDg6MjAgQU0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4g
T24gRnJpLCA0IE9jdCAyMDE5IGF0IDA4OjEyLCBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGlu
YXJvLm9yZz4gd3JvdGU6Cj4+Cj4+IE9uIFRodSwgNSBTZXAgMjAxOSBhdCAxNDoyMSwgTHVkb3Zp
YyBCYXJyZSA8bHVkb3ZpYy5CYXJyZUBzdC5jb20+IHdyb3RlOgo+Pj4KPj4+IEZyb206IEx1ZG92
aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+Pj4KPj4+IEluIHNvbWUgdmFyaWFudHMs
IHRoZSBkYXRhIHRpbWVyIHN0YXJ0cyBhbmQgZGVjcmVtZW50cwo+Pj4gd2hlbiB0aGUgRFBTTSBl
bnRlcnMgaW4gV2FpdF9SIG9yIEJ1c3kgc3RhdGUKPj4+ICh3aGlsZSBkYXRhIHRyYW5zZmVyIG9y
IE1NQ19SU1BfQlVTWSksIGFuZCBnZW5lcmF0ZXMgYQo+Pj4gZGF0YSB0aW1lb3V0IGVycm9yIGlm
IHRoZSBjb3VudGVyIHJlYWNoIDAuCj4+Cj4+Cj4+Pgo+Pj4gLURlZmluZSBtYXhfYnVzeV90aW1l
b3V0IChpbiBtcykgYWNjb3JkaW5nIHRvIGNsb2NrLgo+Pj4gLVNldCBkYXRhIHRpbWVyIHJlZ2lz
dGVyIGlmIHRoZSBjb21tYW5kIGhhcyByc3BfYnVzeSBmbGFnLgo+Pj4gICBJZiBidXN5X3RpbWVv
dXQgaXMgbm90IGRlZmluZWQgYnkgZnJhbWV3b3JrLCB0aGUgYnVzeQo+Pj4gICBsZW5ndGggYWZ0
ZXIgRGF0YSBCdXJzdCBpcyBkZWZpbmVkIGFzIDEgc2Vjb25kCj4+PiAgIChyZWZlcjogNC42LjIu
MiBXcml0ZSBvZiBzZCBzcGVjaWZpY2F0aW9uIHBhcnQxIHY2LTApLgo+Pgo+PiBIb3cgYWJvdXQg
cmUtcGhyYXNpbmcgdGhpcyBhcyBiZWxvdzoKPj4KPj4gLS0tLS0KPj4gSW4gdGhlIHN0bTMyX3Nk
bW1jIHZhcmlhbnQsIHRoZSBkYXRhdGltZXIgaXMgYWN0aXZlIG5vdCBvbmx5IGR1cmluZwo+PiBk
YXRhIHRyYW5zZmVycyB3aXRoIHRoZSBEUFNNLCBidXQgYWxzbyB3aGlsZSB3YWl0aW5nIGZvciB0
aGUgYnVzeWVuZAo+PiBJUlFzIGZyb20gY29tbWFuZHMgaGF2aW5nIHRoZSBNTUNfUlNQX0JVU1kg
ZmxhZyBzZXQuIFRoaXMgbGVhZHMgdG8gYW4KPj4gaW5jb3JyZWN0IElSUSBiZWluZyByYWlzZWQg
dG8gc2lnbmFsIE1DSV9EQVRBVElNRU9VVCBlcnJvciwgd2hpY2gKPj4gc2ltcGx5IGJyZWFrcyB0
aGUgYmVoYXZpb3VyLgo+Pgo+PiBBZGRyZXNzIHRoaXMgYnkgdXBkYXRpbmcgdGhlIGRhdGF0aW1l
ciB2YWx1ZSBiZWZvcmUgc2VuZGluZyBhIGNvbW1hbmQKPj4gaGF2aW5nIHRoZSBNTUNfUlNQX0JV
U1kgZmxhZyBzZXQuIFRvIGluZm9ybSB0aGUgbW1jIGNvcmUgYWJvdXQgdGhlCj4+IG1heGltdW0g
c3VwcG9ydGVkIGJ1c3kgdGltZW91dCwgd2hpY2ggYWxzbyBkZXBlbmRzIG9uIHRoZSBjdXJyZW50
Cj4+IGNsb2NrIHJhdGUsIHNldCAtPm1heF9idXN5X3RpbWVvdXQgKGluIG1zKS4KClRoYW5rcyBm
b3IgdGhlIHJlLXBocmFzaW5nLgoKPj4gLS0tLS0KPj4KPj4gUmVnYXJkaW5nIHRoZSBidXN5X3Rp
bWVvdXQsIHRoZSBjb3JlIHNob3VsZCByZWFsbHkgYXNzaWduIGl0IGEgdmFsdWUKPj4gZm9yIGFs
bCBjb21tYW5kcyBoYXZpbmcgdGhlIFJTUF9CVVNZIGZsYWcgc2V0LiBIb3dldmVyLCBJIHJlYWxp
emUgdGhlCj4+IGNvcmUgbmVlZHMgdG8gYmUgaW1wcm92ZWQgdG8gY292ZXIgYWxsIHRoZXNlIGNh
c2VzIC0gYW5kIEkgYW0gbG9va2luZwo+PiBhdCB0aGF0LCBidXQgbm90IHRoZXJlIHlldC4KPj4K
Pj4gSSB3b3VsZCBhbHNvIHN1Z2dlc3QgdG8gdXNlIGEgZ3JlYXRlciB2YWx1ZSB0aGFuIDFzLCBh
cyB0aGF0IHNlZW1zIGEKPj4gYml0IGxvdyBmb3IgdGhlICJ1bmRlZmluZWQiIGNhc2UuIFBlcmhh
cHMgdXNlIHRoZSBtYXhfYnVzeV90aW1lb3V0LAo+PiB3aGljaCB3b3VsZCBiZSBuaWNlIGEgc2lt
cGxlIG9yIDEwcywgd2hpY2ggSSB0aGluayBpcyB1c2VkIGJ5IHNvbWUKPj4gb3RoZXIgZHJpdmVy
cy4KCk9LLCBJIHdpbGwgc2V0IDEwcywgdGhlIG1heF9idXN5X3RpbWVvdXQgY291bGQgYmUgdmVy
eSBsb25nIGZvciBzbWFsbCAKZnJlcXVlbmNpZXMgKGV4YW1wbGUsIDI1TWh6ID0+IDE3MXMpLgoK
Pj4KPj4+IC1BZGQgTUNJX0RBVEFUSU1FT1VUIGVycm9yIG1hbmFnZW1lbnQgaW4gbW1jaV9jbWRf
aXJxLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVA
c3QuY29tPgo+Pj4gLS0tCj4+PiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIHwgNDIgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KPj4+ICAgZHJpdmVycy9tbWMvaG9z
dC9tbWNpLmggfCAgMyArKysKPj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L21t
Y2kuYyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+PiBpbmRleCBjMzdlNzBkYmUyNTAuLmMz
MDMxOTI1NWRjMiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+PiAr
KysgYi9kcml2ZXJzL21tYy9ob3N0L21tY2kuYwo+Pj4gQEAgLTEwNzUsNiArMTA3NSw3IEBAIHN0
YXRpYyB2b2lkCj4+PiAgIG1tY2lfc3RhcnRfY29tbWFuZChzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0
LCBzdHJ1Y3QgbW1jX2NvbW1hbmQgKmNtZCwgdTMyIGMpCj4+PiAgIHsKPj4+ICAgICAgICAgIHZv
aWQgX19pb21lbSAqYmFzZSA9IGhvc3QtPmJhc2U7Cj4+PiArICAgICAgIHVuc2lnbmVkIGxvbmcg
bG9uZyBjbGtzOwo+Pj4KPj4+ICAgICAgICAgIGRldl9kYmcobW1jX2Rldihob3N0LT5tbWMpLCAi
b3AgJTAyeCBhcmcgJTA4eCBmbGFncyAlMDh4XG4iLAo+Pj4gICAgICAgICAgICAgIGNtZC0+b3Bj
b2RlLCBjbWQtPmFyZywgY21kLT5mbGFncyk7Cj4+PiBAQCAtMTA5Nyw2ICsxMDk4LDE2IEBAIG1t
Y2lfc3RhcnRfY29tbWFuZChzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LCBzdHJ1Y3QgbW1jX2NvbW1h
bmQgKmNtZCwgdTMyIGMpCj4+PiAgICAgICAgICAgICAgICAgIGVsc2UKPj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICBjIHw9IGhvc3QtPnZhcmlhbnQtPmNtZHJlZ19zcnNwOwo+Pj4gICAgICAg
ICAgfQo+Pj4gKwo+Pj4gKyAgICAgICBpZiAoaG9zdC0+dmFyaWFudC0+YnVzeV90aW1lb3V0ICYm
IGNtZC0+ZmxhZ3MgJiBNTUNfUlNQX0JVU1kpIHsKPj4+ICsgICAgICAgICAgICAgICBpZiAoIWNt
ZC0+YnVzeV90aW1lb3V0KQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgY21kLT5idXN5X3Rp
bWVvdXQgPSAxMDAwOwo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICAgIGNsa3MgPSAodW5zaWduZWQg
bG9uZyBsb25nKWNtZC0+YnVzeV90aW1lb3V0ICogaG9zdC0+Y2NsazsKPj4+ICsgICAgICAgICAg
ICAgICBkb19kaXYoY2xrcywgTVNFQ19QRVJfU0VDKTsKPj4+ICsgICAgICAgICAgICAgICB3cml0
ZWxfcmVsYXhlZChjbGtzLCBob3N0LT5iYXNlICsgTU1DSURBVEFUSU1FUik7Cj4+PiArICAgICAg
IH0KPj4+ICsKPj4+ICAgICAgICAgIGlmICgvKmludGVycnVwdCovMCkKPj4+ICAgICAgICAgICAg
ICAgICAgYyB8PSBNQ0lfQ1BTTV9JTlRFUlJVUFQ7Cj4+Pgo+Pj4gQEAgLTEyMDEsNiArMTIxMiw3
IEBAIHN0YXRpYyB2b2lkCj4+PiAgIG1tY2lfY21kX2lycShzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0
LCBzdHJ1Y3QgbW1jX2NvbW1hbmQgKmNtZCwKPj4+ICAgICAgICAgICAgICAgdW5zaWduZWQgaW50
IHN0YXR1cykKPj4+ICAgewo+Pj4gKyAgICAgICB1MzIgZXJyX21zayA9IE1DSV9DTURDUkNGQUlM
IHwgTUNJX0NNRFRJTUVPVVQ7Cj4+PiAgICAgICAgICB2b2lkIF9faW9tZW0gKmJhc2UgPSBob3N0
LT5iYXNlOwo+Pj4gICAgICAgICAgYm9vbCBzYmMsIGJ1c3lfcmVzcDsKPj4+Cj4+PiBAQCAtMTIx
NSw4ICsxMjI3LDExIEBAIG1tY2lfY21kX2lycShzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LCBzdHJ1
Y3QgbW1jX2NvbW1hbmQgKmNtZCwKPj4+ICAgICAgICAgICAqIGhhbmRsaW5nLiBOb3RlIHRoYXQg
d2UgdGFnIG9uIGFueSBsYXRlbnQgSVJRcyBwb3N0cG9uZWQKPj4+ICAgICAgICAgICAqIGR1ZSB0
byB3YWl0aW5nIGZvciBidXN5IHN0YXR1cy4KPj4+ICAgICAgICAgICAqLwo+Pj4gLSAgICAgICBp
ZiAoISgoc3RhdHVzfGhvc3QtPmJ1c3lfc3RhdHVzKSAmCj4+PiAtICAgICAgICAgICAgIChNQ0lf
Q01EQ1JDRkFJTHxNQ0lfQ01EVElNRU9VVHxNQ0lfQ01EU0VOVHxNQ0lfQ01EUkVTUEVORCkpKQo+
Pj4gKyAgICAgICBpZiAoaG9zdC0+dmFyaWFudC0+YnVzeV90aW1lb3V0ICYmIGJ1c3lfcmVzcCkK
Pj4+ICsgICAgICAgICAgICAgICBlcnJfbXNrIHw9IE1DSV9EQVRBVElNRU9VVDsKPj4+ICsKPj4+
ICsgICAgICAgaWYgKCEoKHN0YXR1cyB8IGhvc3QtPmJ1c3lfc3RhdHVzKSAmCj4+PiArICAgICAg
ICAgICAgIChlcnJfbXNrIHwgTUNJX0NNRFNFTlQgfCBNQ0lfQ01EUkVTUEVORCkpKQo+Pj4gICAg
ICAgICAgICAgICAgICByZXR1cm47Cj4+Pgo+Pj4gICAgICAgICAgLyogSGFuZGxlIGJ1c3kgZGV0
ZWN0aW9uIG9uIERBVDAgaWYgdGhlIHZhcmlhbnQgc3VwcG9ydHMgaXQuICovCj4+PiBAQCAtMTIz
NSw4ICsxMjUwLDcgQEAgbW1jaV9jbWRfaXJxKHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QsIHN0cnVj
dCBtbWNfY29tbWFuZCAqY21kLAo+Pj4gICAgICAgICAgICAgICAgICAgKiB3aGlsZSwgdG8gYWxs
b3cgaXQgdG8gYmUgc2V0LCBidXQgdGVzdHMgaW5kaWNhdGVzIHRoYXQgaXQKPj4+ICAgICAgICAg
ICAgICAgICAgICogaXNuJ3QgbmVlZGVkLgo+Pj4gICAgICAgICAgICAgICAgICAgKi8KPj4+IC0g
ICAgICAgICAgICAgICBpZiAoIWhvc3QtPmJ1c3lfc3RhdHVzICYmCj4+PiAtICAgICAgICAgICAg
ICAgICAgICEoc3RhdHVzICYgKE1DSV9DTURDUkNGQUlMfE1DSV9DTURUSU1FT1VUKSkgJiYKPj4+
ICsgICAgICAgICAgICAgICBpZiAoIWhvc3QtPmJ1c3lfc3RhdHVzICYmICEoc3RhdHVzICYgZXJy
X21zaykgJiYKPj4+ICAgICAgICAgICAgICAgICAgICAgIChyZWFkbChiYXNlICsgTU1DSVNUQVRV
UykgJiBob3N0LT52YXJpYW50LT5idXN5X2RldGVjdF9mbGFnKSkgewo+Pj4KPj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICB3cml0ZWwocmVhZGwoYmFzZSArIE1NQ0lNQVNLMCkgfAo+Pj4gQEAg
LTEyOTAsNiArMTMwNCw5IEBAIG1tY2lfY21kX2lycShzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LCBz
dHJ1Y3QgbW1jX2NvbW1hbmQgKmNtZCwKPj4+ICAgICAgICAgICAgICAgICAgY21kLT5lcnJvciA9
IC1FVElNRURPVVQ7Cj4+PiAgICAgICAgICB9IGVsc2UgaWYgKHN0YXR1cyAmIE1DSV9DTURDUkNG
QUlMICYmIGNtZC0+ZmxhZ3MgJiBNTUNfUlNQX0NSQykgewo+Pj4gICAgICAgICAgICAgICAgICBj
bWQtPmVycm9yID0gLUVJTFNFUTsKPj4+ICsgICAgICAgfSBlbHNlIGlmIChob3N0LT52YXJpYW50
LT5idXN5X3RpbWVvdXQgJiYgYnVzeV9yZXNwICYmCj4+PiArICAgICAgICAgICAgICAgICAgc3Rh
dHVzICYgTUNJX0RBVEFUSU1FT1VUKSB7Cj4+PiArICAgICAgICAgICAgICAgY21kLT5lcnJvciA9
IC1FVElNRURPVVQ7Cj4+Cj4+IEl0J3Mgbm90IHJlYWxseSBjbGVhciB0byBtZSB3aGF0IGhhcHBl
bnMgd2l0aCB0aGUgYnVzeSBkZXRlY3Rpb24KPj4gc3RhdHVzIGJpdCAodmFyaWFudC0+YnVzeV9k
ZXRlY3RfZmxhZyksIGluIGNhc2UgYSBNQ0lfREFUQVRJTUVPVVQgSVJRCj4+IGlzIHJhaXNlZCwg
d2hpbGUgYWxzbyBoYXZpbmcgaG9zdC0+YnVzeV9zdGF0dXMgc2V0ICh3YWl0aW5nIGZvcgo+PiBi
dXN5ZW5kKS4KPj4KPj4gQnkgbG9va2luZyBhdCB0aGUgY29kZSBhIGZldyBsaW5lcyBhYm92ZSB0
aGlzLCB3ZSBtYXkgZG8gYSAicmV0dXJuOyIKPj4gd2hpbGUgd2FpdGluZyBmb3IgdGhlIGJ1c3ll
bmQgSVJRIGV2ZW4gaWYgTUNJX0RBVEFUSU1FT1VUIGFsc28gaXMKPj4gcmFpc2VkLCBwb3RlbnRp
YWxseSBsb3NpbmcgdGhhdCBmcm9tIGJlaW5nIGNhdWdodC4gSXMgdGhhdCByZWFsbHkKPj4gY29y
cmVjdD8KPiAKPiBBIHNlY29uZCB0aG91Z2h0LiBUaGF0ICJyZXR1cm47IiBpcyB0byBtYW5hZ2Ug
dGhlIGJ1c3llbmQgSVJRIGJlaW5nCj4gcmFpc2VkIG9mIHRoZSBmaXJzdCBlZGdlIGR1ZSB0byBi
cm9rZW4gSFcuIFNvIEkgZ3Vlc3MsIHRoaXMgaXNuJ3QgYW4KPiBpc3N1ZSBmb3Igc3RtMzJfc2Rt
bWMgdmFyaWFudCBhZnRlciBhbGw/Cj4KPiBJIGhhdmUgYSBsb29rIGF0IHRoZSBuZXh0IHBhdGNo
ZXMgaW4gdGhlIHNlcmllcy4uCgp5b3UncmUgcmVmZXJyaW5nIHRvICJyZXR1cm4iIG9mID8KCWlm
IChob3N0LT5idXN5X3N0YXR1cyAmJgoJICAgIChzdGF0dXMgJiBob3N0LT52YXJpYW50LT5idXN5
X2RldGVjdF9mbGFnKSkgewoJCXdyaXRlbChob3N0LT52YXJpYW50LT5idXN5X2RldGVjdF9tYXNr
LAoJCSAgICAgICBob3N0LT5iYXNlICsgTU1DSUNMRUFSKTsKCQlyZXR1cm47Cgl9CgpGb3Igc3Rt
MzIgdmFyaWFudCAoaW4gcGF0Y2ggMy8zKTogdGhlICJidXN5IGNvbXBsZXRpb24iIGlzCnJlbGVh
c2VkIGltbWVkaWF0ZWx5IGlmIHRoZXJlIGlzIGFuIGVycm9yIG9yIGJ1c3lkMGVuZCwKYW5kIGNs
ZWFuczogaXJxLCBidXN5ZDBlbmQgbWFzaywgYnVzeV9zdGF0dXMgdmFyaWFibGUuCgpJIGNvdWxk
IGFkZCBzaW1pbGFyIGFjdGlvbiBpbiBwYXRjaCAyLzMgZnVuY3Rpb246ICJ1eDUwMF9idXN5X2Nv
bXBsZXRlIgoKc3RhdGljIGJvb2wgdXg1MDBfYnVzeV9jb21wbGV0ZShzdHJ1Y3QgbW1jaV9ob3N0
ICpob3N0LCB1MzIgc3RhdHVzLCB1MzIgCmVycl9tc2spCnsKCXZvaWQgX19pb21lbSAqYmFzZSA9
IGhvc3QtPmJhc2U7CgoJaWYgKHN0YXR1cyAmIGVycl9tc2spCgkJZ290byBjb21wbGV0ZTsKLi4u
CmNvbXBsZXRlOgoJLyogc3BlY2lmaWMgYWN0aW9uIHRvIGNsZWFuIGJ1c3kgZGV0ZWN0aW9uLCBp
cnEsIG1hc2ssIGJ1c3lfc3RhdHVzICovCn0KCndoYXQgZG8geW91IHRoaW5rIGFib3V0IGl0PwoK
PiAKPiBbLi4uXQo+IAo+IEtpbmQgcmVnYXJkcwo+IFVmZmUKPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
