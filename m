Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA548CE86C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rVpzHKm7ueN1PjcuP8Ly6r6xFX/TrYzXFTS16l8NrhY=; b=NsLPy9Y/JWSbVPWUcZ7U7nAAW
	b7Y40M8CtCQc3ikjRhJGE3pIRKM7DI/JnJZdm8/d/jcrazXiWptbJ9/w3KsrzfhR7g+cVmQBglJty
	yoUb3m4jonuxvtK2mwvycdgFWOTtK+3ZxNzTTFaZJjDDkfciQwp20KTO9WrFI70wFSTikzKLz165g
	rXpVpXjJkWIIgz8Dd5dpEf/BKRpS1WbQ7hFoM0vMRcChXz/Og68rHDvNgJgnPcBbExOYx1GwRKD3a
	g24+VGqLA9d9yxapR6sRTvhXBS0+iWWdNJmtEBxLWDuF1bIwKdbfoDGmv986sPK/lld8IE+qM4k6W
	6PI7ZS45g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVMj-0001Qu-Dd; Mon, 07 Oct 2019 15:56:05 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVMX-0001Q6-D8
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:55:55 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97FpF8F032613; Mon, 7 Oct 2019 17:55:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=IndfOZ3euQc5yphJYWP38eEWIsfndJdvzqT18BJbLBE=;
 b=BSXssWeK1Mo6yqm+2U1oQeCvWE5+GMrSlBWKv888GkcVGm8epFn33b5bl/Pl4fNbPluW
 CaBwHZdt2Y+ee3MmzKCMJK/Xziqhxk8n58A6rG5C6a6NTLwtHjfRMyjV6dfrpvTPewW6
 cqcfy9OyGuQu9AGM1qr0yK3gmauhQZiZQrYjzJ1oRcanWjgHvkGBA1MI7DUsLE87yu5P
 WO6zX+Lu0+JUeu575plVRyQiB4NkJaGRf3erkApWZXbrTuJa2OxdZjheoEWQGTEAxmp0
 SDKFF6oG9gf6taGd7g0WyGIswXLoKFIvngWL/mbQXYMco+ER9lTJHhvxKON1JcFoljyO eA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vegaguk9m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 17:55:46 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 79555100034;
 Mon,  7 Oct 2019 17:55:45 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 671082D3768;
 Mon,  7 Oct 2019 17:55:45 +0200 (CEST)
Received: from lmecxl0923.lme.st.com (10.75.127.48) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 7 Oct
 2019 17:55:44 +0200
Subject: Re: [PATCH V6 3/3] mmc: mmci: sdmmc: add busy_complete callback
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20190905122112.29672-1-ludovic.Barre@st.com>
 <20190905122112.29672-4-ludovic.Barre@st.com>
 <CAPDyKFqbEzYpNty8u_QuSDfLgPoiTMZS2Bx4GbzfX-Y9TqXJTg@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <6a45203b-66c8-25d6-55d6-042778695c8d@st.com>
Date: Mon, 7 Oct 2019 17:55:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFqbEzYpNty8u_QuSDfLgPoiTMZS2Bx4GbzfX-Y9TqXJTg@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_03:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_085553_726311_0A8A3E4F 
X-CRM114-Status: GOOD (  32.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

aGkgVWxmCgpMZSAxMC80LzE5IMOgIDk6MzEgQU0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4g
T24gVGh1LCA1IFNlcCAyMDE5IGF0IDE0OjIyLCBMdWRvdmljIEJhcnJlIDxsdWRvdmljLkJhcnJl
QHN0LmNvbT4gd3JvdGU6Cj4+Cj4+IEZyb206IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVA
c3QuY29tPgo+Pgo+PiBUaGlzIHBhdGNoIGFkZHMgYSBzcGVjaWZpYyBidXN5X2NvbXBsZXRlIGNh
bGxiYWNrIGZvciBzZG1tYyB2YXJpYW50Lgo+Pgo+PiBzZG1tYyBoYXMgMiBzdGF0dXMgZmxhZ3M6
Cj4+IC1idXN5ZDA6IFRoaXMgaXMgYSBoYXJkd2FyZSBzdGF0dXMgZmxhZyAoaW52ZXJ0ZWQgdmFs
dWUgb2YgZDAgbGluZSkuCj4+IGl0IGRvZXMgbm90IGdlbmVyYXRlIGFuIGludGVycnVwdC4KPj4g
LWJ1c3lkMGVuZDogVGhpcyBpbmRpY2F0ZXMgb25seSBlbmQgb2YgYnVzeSBmb2xsb3dpbmcgYSBD
TUQgcmVzcG9uc2UuCj4+IE9uIGJ1c3kgdG8gTm90IGJ1c3kgY2hhbmdlcywgYW4gaW50ZXJydXB0
IGlzIGdlbmVyYXRlZCAoaWYgdW5tYXNrKQo+PiBhbmQgQlVTWUQwRU5EIHN0YXR1cyBmbGFnIGlz
IHNldC4gU3RhdHVzIGZsYWcgaXMgY2xlYXJlZCBieSB3cml0aW5nCj4+IGNvcnJlc3BvbmRpbmcg
aW50ZXJydXB0IGNsZWFyIGJpdCBpbiBNTUNJQ0xFQVIuCj4+Cj4+IFRoZSBsZWdhY3kgYnVzeSBj
b21wbGV0aW9uIG1vbml0b3JzIHN0ZXAgYnkgc3RlcCB0aGUgYnVzeSBwcm9ncmVzc2lvbgo+PiBz
dGFydC9pbi1wcm9ncmVzcy9lbmQuIE9uIHNkbW1jIHZhcmlhbnQsIHRoZSBtb25pdG9yaW5nIG9m
IGJ1c3kgc3RlcHMKPj4gaXMgZGlmZmljdWx0IGFuZCBub3QgYWRhcHRlZCAodGhlIHNvZnR3YXJl
IGNhbiBtaXNzIGEgc3RlcCBhbmQgbG9ja3MKPj4gdGhlIG1vbml0b3JpbmcpLCB0aGUgc2RtbWMg
aGFzIGp1c3QgbmVlZCB0byB3YWl0IHRoZSBidXN5ZDBlbmQgYml0Cj4+IHdpdGhvdXQgbW9uaXRv
cmluZyBhbGwgdGhlIGNoYW5nZXMuCj4gCj4gVG8gbWUgaXQncyBhIGJpdCBvZiB0aGUgb3Bwb3Np
dGUgYXMgeW91IGRlc2NyaWJlIGl0IGFib3ZlLiBUaGUgbGVnYWN5Cj4gdmFyaWFudHMgc3VmZmVy
cyBmcm9tIGEgc29tZXdoYXQgYnJva2VuIEhXIHRoYXQgZ2VuZXJhdGVzIGFsc28gYQo+ICJidXN5
c3RhcnQiIElSUS4gRm9yIHRoZSBzdG0zMl9zZG1tYyB2YXJpYW50LCBpdCdzIG1vcmUgY2xlYW4v
Y29ycmVjdAo+IGFzIG9ubHkgYSBidXN5ZW5kIElSUSBpcyByYWlzZWQuCj4gCj4gTWF5YmUgeW91
IGNhbiByZXBocmFzZSB0aGUgYWJvdmUgYSBiaXQgdG8gbWFrZSB0aGF0IG1vcmUgY2xlYXIgc29t
ZWhvdy4KClllcywgSSB3aWxsIHJlcGhyYXNlLgogICAgIFRoZSBsZWdhY3kgYnVzeSBjb21wbGV0
aW9uIGhhcyBubyBkZWRpY2F0ZWQgaW50ZXJydXB0IGZvciB0aGUgZW5kCiAgICAgb2YgYnVzeSwg
c28gaXQncyBtdXN0IG1vbml0b3Igc3RlcCBieSBzdGVwIHRoZSBidXN5IHByb2dyZXNzaW9uLgog
ICAgIE9uIHNkbW1jIHZhcmlhbnQsIHRoaXMgcHJvY2VkdXJlIGlzIG5vdCBuZWVkZWQsIGl0J3Mg
anVzdCBuZWVkCiAgICAgdG8gd2FpdCB0aGUgYnVzeWQwZW5kIHN0YXR1cy4KCj4gCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+PiAtLS0K
Pj4gICBkcml2ZXJzL21tYy9ob3N0L21tY2kuYyAgICAgICAgICAgICB8ICAzICsrKwo+PiAgIGRy
aXZlcnMvbW1jL2hvc3QvbW1jaS5oICAgICAgICAgICAgIHwgIDEgKwo+PiAgIGRyaXZlcnMvbW1j
L2hvc3QvbW1jaV9zdG0zMl9zZG1tYy5jIHwgMzggKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPj4gICAzIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPj4g
aW5kZXggZTIwMTY0ZjQzNTRkLi5hNjY2ZDgyNmRiYmQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bW1jL2hvc3QvbW1jaS5jCj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+IEBAIC0y
NjAsNiArMjYwLDkgQEAgc3RhdGljIHN0cnVjdCB2YXJpYW50X2RhdGEgdmFyaWFudF9zdG0zMl9z
ZG1tYyA9IHsKPj4gICAgICAgICAgLmRhdGFsZW5ndGhfYml0cyAgICAgICAgPSAyNSwKPj4gICAg
ICAgICAgLmRhdGFjdHJsX2Jsb2Nrc3ogICAgICAgPSAxNCwKPj4gICAgICAgICAgLnN0bTMyX2lk
bWFic2l6ZV9tYXNrICAgPSBHRU5NQVNLKDEyLCA1KSwKPj4gKyAgICAgICAuYnVzeV90aW1lb3V0
ICAgICAgICAgICA9IHRydWUsCj4+ICsgICAgICAgLmJ1c3lfZGV0ZWN0X2ZsYWcgICAgICAgPSBN
Q0lfU1RNMzJfQlVTWUQwLAo+PiArICAgICAgIC5idXN5X2RldGVjdF9tYXNrICAgICAgID0gTUNJ
X1NUTTMyX0JVU1lEMEVORE1BU0ssCj4+ICAgICAgICAgIC5pbml0ICAgICAgICAgICAgICAgICAg
ID0gc2RtbWNfdmFyaWFudF9pbml0LAo+PiAgIH07Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21tYy9ob3N0L21tY2kuaCBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5oCj4+IGluZGV4IDczM2Y5
YTAzNWIwNi4uODQxYzUyODFiZWI1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L21t
Y2kuaAo+PiArKysgYi9kcml2ZXJzL21tYy9ob3N0L21tY2kuaAo+PiBAQCAtMTY0LDYgKzE2NCw3
IEBACj4+ICAgI2RlZmluZSBNQ0lfU1RfQ0FSREJVU1kgICAgICAgICAgICAgICAgKDEgPDwgMjQp
Cj4+ICAgLyogRXh0ZW5kZWQgc3RhdHVzIGJpdHMgZm9yIHRoZSBTVE0zMiB2YXJpYW50cyAqLwo+
PiAgICNkZWZpbmUgTUNJX1NUTTMyX0JVU1lEMCAgICAgICBCSVQoMjApCj4+ICsjZGVmaW5lIE1D
SV9TVE0zMl9CVVNZRDBFTkQgICAgQklUKDIxKQo+Pgo+PiAgICNkZWZpbmUgTU1DSUNMRUFSICAg
ICAgICAgICAgICAweDAzOAo+PiAgICNkZWZpbmUgTUNJX0NNRENSQ0ZBSUxDTFIgICAgICAoMSA8
PCAwKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpX3N0bTMyX3NkbW1jLmMg
Yi9kcml2ZXJzL21tYy9ob3N0L21tY2lfc3RtMzJfc2RtbWMuYwo+PiBpbmRleCA4ZTgzYWU2OTIw
YWUuLmJiNTQ5OWNjOWU4MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpX3N0
bTMyX3NkbW1jLmMKPj4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpX3N0bTMyX3NkbW1jLmMK
Pj4gQEAgLTI4Miw2ICsyODIsNDMgQEAgc3RhdGljIHUzMiBzZG1tY19nZXRfZGN0cmxfY2ZnKHN0
cnVjdCBtbWNpX2hvc3QgKmhvc3QpCj4+ICAgICAgICAgIHJldHVybiBkYXRhY3RybDsKPj4gICB9
Cj4+Cj4+ICtib29sIHNkbW1jX2J1c3lfY29tcGxldGUoc3RydWN0IG1tY2lfaG9zdCAqaG9zdCwg
dTMyIHN0YXR1cywgdTMyIGVycl9tc2spCj4+ICt7Cj4+ICsgICAgICAgdm9pZCBfX2lvbWVtICpi
YXNlID0gaG9zdC0+YmFzZTsKPj4gKyAgICAgICB1MzIgYnVzeV9kMCwgYnVzeV9kMGVuZCwgbWFz
azsKPj4gKwo+PiArICAgICAgIG1hc2sgPSByZWFkbF9yZWxheGVkKGJhc2UgKyBNTUNJTUFTSzAp
Owo+PiArICAgICAgIGJ1c3lfZDBlbmQgPSByZWFkbF9yZWxheGVkKGJhc2UgKyBNTUNJU1RBVFVT
KSAmIE1DSV9TVE0zMl9CVVNZRDBFTkQ7Cj4+ICsgICAgICAgYnVzeV9kMCA9IHJlYWRsX3JlbGF4
ZWQoYmFzZSArIE1NQ0lTVEFUVVMpICYgTUNJX1NUTTMyX0JVU1lEMDsKPiAKPiBJIGhhdmUgZm91
bmQgc29tZSBwb3RlbnRpYWwgb3B0aW1pemF0aW9ucywgYnV0IEkgbGVhdmUgaXQgdG8geW91IHRv
Cj4gZGVjaWRlIHdoYXQgdG8gZG8gd2l0aCBteSBjb21tZW50cy4KPiAKPiAqKSBZb3UgY291bGQg
YXZvaWQgdG8gcmVhZCByZWdpc3RlcnMgdXBmcm9udCwgaWYgdGhhdCBiZSBza2lwcGVkCj4gYmVj
YXVzZSBvZiBjaGVja2luZyBhIGtub3duIGVycm9yIGNvbmRpdGlvbi4gRm9yIGV4YW1wbGU6Cj4g
ImlmICghaG9zdC0+YnVzeV9zdGF0dXMgJiYgIShzdGF0dXMgJiBlcnJfbXNrKSkiIC0gd291bGQg
dGVsbCBpZiBpdCdzCj4gZXZlbiB3b3J0aCBjb25zaWRlcmluZyB0byB1bm1hc2sgdGhlIGJ1c3ll
bmQgSVJRLgoKWWVzLCBpdCdzIGEgcG9zc2liaWxpdHksIGJ1dCBJIHByZWZlciB0byBrZWVwIHJl
YWRpbmcgdGhlIGJpdHMKYnVzeV9kb2VuZCBhbmQgYnVzeV9kMC4gVGhpcyBpcyBub3QgdGhlIG1v
c3Qgb3B0aW1pemVkIHdheSwgYnV0IGl0IGlzCmVhc2llciB0byB1bmRlcnN0YW5kIHRoZSBjb21w
bGV0aW9uJ3MgcmVhc29uIChiYXNlZCBvbiBoYXJkd2FyZSBiaXQpLgpPbiB0aGUgb3RoZXIgaGFu
ZCwgSSB3b3VsZCBiZSBpbmRlcGVuZGVudCBvZiBhbnkgY2hhbmdlIGFib3V0IHN0YXR1cyBvciAK
YnVzeV9zdGF0dXMuCgo+IAo+ICoqKSBSZWFkaW5nIE1NQ0lTVEFUVVMgdHdpY2UgaW4gcm93IHNl
ZW1zIGEgYml0IHNpbGx5LCB3aHkgbm90IHJlYWQgaXQKPiBvbmNlIGFuZCBzdG9yZSBpdHMgdmFs
dWUgaW4gYSBsb2NhbCB2YXJpYWJsZSB0aGF0IHlvdSBvcGVyYXRlIHVwb24KPiBpbnN0ZWFkLgo+
IAoKeWVzLCBJIHdpbGwgc3RvcmUgTU1DSVNUQVRVUyBpbiBsb2NhbCB2YXJpYWJsZSAodGh4KS4K
Cj4+ICsKPj4gKyAgICAgICAvKiBjb21wbGV0ZSBpZiB0aGVyZSBpcyBhbiBlcnJvciBvciBidXN5
X2QwZW5kICovCj4+ICsgICAgICAgaWYgKChzdGF0dXMgJiBlcnJfbXNrKSB8fCBidXN5X2QwZW5k
KQo+PiArICAgICAgICAgICAgICAgZ290byBjb21wbGV0ZTsKPiAKPiAgRnJvbSBoZXJlLCB5b3Ug
bWF5IGVuZCB1cCB3cml0aW5nIHRvIE1NQ0lNQVNLMCBhbmQgTU1DSUNMRUFSLCBldmVuIGlmCj4g
eW91IGRpZG4ndCB1bm1hc2sgdGhlIGJ1c3llbmQgSVJRIGluIGZpcnN0IHBsYWNlLgoKSSB3aWxs
IGFkZCB0aGlzIGNvbmRpdGlvbiBpbnRvCmNvbXBsZXRlOgoJaWYgKGhvc3QtPmJ1c3lfc3RhdHVz
KSB7CgkJLi4uCgl9CglyZXR1cm4gdHJ1ZTsKfQoKPiAKPj4gKwo+PiArICAgICAgIC8qCj4+ICsg
ICAgICAgICogT24gcmVzcG9uc2UgdGhlIGJ1c3kgc2lnbmFsaW5nIGlzIHJlZmxlY3RlZCBpbiB0
aGUgQlVTWUQwIGZsYWcuCj4+ICsgICAgICAgICogaWYgYnVzeV9kMCBpcyBpbi1wcm9ncmVzcyB3
ZSBtdXN0IGFjdGl2YXRlIGJ1c3lkMGVuZCBpbnRlcnJ1cHQKPj4gKyAgICAgICAgKiB0byB3YWl0
IHRoaXMgY29tcGxldGlvbi4gRWxzZSB0aGlzIHJlcXVlc3QgaGFzIG5vIGJ1c3kgc3RlcC4KPj4g
KyAgICAgICAgKi8KPj4gKyAgICAgICBpZiAoYnVzeV9kMCkgewo+PiArICAgICAgICAgICAgICAg
aWYgKCFob3N0LT5idXN5X3N0YXR1cykgewo+PiArICAgICAgICAgICAgICAgICAgICAgICB3cml0
ZWxfcmVsYXhlZChtYXNrIHwgaG9zdC0+dmFyaWFudC0+YnVzeV9kZXRlY3RfbWFzaywKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmFzZSArIE1NQ0lNQVNLMCk7Cj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIGhvc3QtPmJ1c3lfc3RhdHVzID0gc3RhdHVzICYKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoTUNJX0NNRFNFTlQgfCBNQ0lfQ01EUkVT
UEVORCk7Cj4+ICsgICAgICAgICAgICAgICB9Cj4+ICsgICAgICAgICAgICAgICByZXR1cm4gZmFs
c2U7Cj4+ICsgICAgICAgfQo+PiArCj4+ICtjb21wbGV0ZToKPj4gKyAgICAgICB3cml0ZWxfcmVs
YXhlZChtYXNrICYgfmhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0X21hc2ssCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgYmFzZSArIE1NQ0lNQVNLMCk7Cj4+ICsgICAgICAgd3JpdGVsX3JlbGF4
ZWQoaG9zdC0+dmFyaWFudC0+YnVzeV9kZXRlY3RfbWFzaywgYmFzZSArIE1NQ0lDTEVBUik7Cj4+
ICsgICAgICAgaG9zdC0+YnVzeV9zdGF0dXMgPSAwOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIHRy
dWU7Cj4+ICt9Cj4+ICsKPj4gICBzdGF0aWMgc3RydWN0IG1tY2lfaG9zdF9vcHMgc2RtbWNfdmFy
aWFudF9vcHMgPSB7Cj4+ICAgICAgICAgIC52YWxpZGF0ZV9kYXRhID0gc2RtbWNfaWRtYV92YWxp
ZGF0ZV9kYXRhLAo+PiAgICAgICAgICAucHJlcF9kYXRhID0gc2RtbWNfaWRtYV9wcmVwX2RhdGEs
Cj4+IEBAIC0yOTIsNiArMzI5LDcgQEAgc3RhdGljIHN0cnVjdCBtbWNpX2hvc3Rfb3BzIHNkbW1j
X3ZhcmlhbnRfb3BzID0gewo+PiAgICAgICAgICAuZG1hX2ZpbmFsaXplID0gc2RtbWNfaWRtYV9m
aW5hbGl6ZSwKPj4gICAgICAgICAgLnNldF9jbGtyZWcgPSBtbWNpX3NkbW1jX3NldF9jbGtyZWcs
Cj4+ICAgICAgICAgIC5zZXRfcHdycmVnID0gbW1jaV9zZG1tY19zZXRfcHdycmVnLAo+PiArICAg
ICAgIC5idXN5X2NvbXBsZXRlID0gc2RtbWNfYnVzeV9jb21wbGV0ZSwKPj4gICB9Owo+Pgo+PiAg
IHZvaWQgc2RtbWNfdmFyaWFudF9pbml0KHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QpCj4+IC0tCj4+
IDIuMTcuMQo+Pgo+IAo+IE90aGVyIHRoYW4gdGhlIGNvbW1lbnRzIGFib3ZlLCB3aGljaCBhcmUg
cGxhaW4gc3VnZ2VzdGlvbnMgZm9yCj4gb3B0aW1pemF0aW9ucywgdGhlIGNvZGUgbG9va3MgY29y
cmVjdCB0byBtZSEKCkkgd2lsbCBzZW5kIGEgbmV4dCBzZXJpZXMgc29vbiwgdGh4IGZvciByZXZp
ZXcuCgo+IAo+IEtpbmQgcmVnYXJkcwo+IFVmZmUKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
