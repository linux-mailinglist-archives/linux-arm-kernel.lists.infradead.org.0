Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2932419AE61
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A91NMZstLA44iH/HpQ+NMv+U9bebxGKUXjY/WRuecWE=; b=NxmhjVSh0OBWBStCGkszcYhQw
	o4eA4j0F4XjGmqRnneVkC26qtZtt4/w0uS48mWsWj3XO2ppMsyaXnAW55aPweJahb03tXgUEPsodF
	U8A3OSS6YsHYxaU7++DuNDDgMmTeaq+JKpV+pj92Di/35s0ug53xcqOd6MTPnGomUDvbHXzXmy0u9
	s+XMdCM/EnOU8u2B6EMyaz0R9DOoblF2/fCTkbQZO/4kXggD8bsSUrXH08UxIaZ+ZmETqbiOa6ZRK
	7SLBdvoVx74y3au2WPIbC9+0fOXHoBbZu33Fmq0L16vwAjTJBBMqBDxBsAlvojX93cD6IGvo0TbPn
	r0MTZ4fjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJene-0003l3-Pi; Wed, 01 Apr 2020 14:57:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJenW-0003kW-Nv
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:56:57 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 031EqsY1011855; Wed, 1 Apr 2020 16:56:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=EWMX4dUTXREC+QeK0mkhl2un1ScVfvreF/9iNkJ/5Po=;
 b=EqXV77Ep73eZP2cgb6Lj9cLoPU4qcrBy7L3S7hmXOlTtfCRsZXp+y6peR1F9Kt2uUucl
 rL9Ohb2+xh26Vji44m4fnag+UcTxRGGclg3p67s6rujUDJ2Q2BQYORfVJJIf6+CzmU2a
 de022IfAqZpjYUz4smduOYhweYdzsCP0Cqy96IwA7wvHh+xgxgpZV5IckpQ/gfwVsp4X
 PRygAtG2fEwkEtT8iO1NVg/mor/oLcPde8KpzJ6d09vf9rAKv8MoP6DpSYIzzbIRhXqT
 ynTeu5YKOGaQMZP35x97iOrNjUQqGb7WC3Wg7QvKpyp8zGMGsVvVPdrOS0kjV/1EnbIf rw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y5401q9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 16:56:45 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6E1CE10002A;
 Wed,  1 Apr 2020 16:56:44 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5C4242B1899;
 Wed,  1 Apr 2020 16:56:44 +0200 (CEST)
Received: from lmecxl0923.lme.st.com (10.75.127.46) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 1 Apr
 2020 16:56:43 +0200
Subject: Re: [PATCH V2 2/2] mmc: mmci: initialize pwr|clk|datactrl_reg with
 their hardware values
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20200325143409.13005-1-ludovic.barre@st.com>
 <20200325143409.13005-3-ludovic.barre@st.com>
 <CAPDyKFpO40Ois8pNwYOeqZrJbV9UeCLok=i8z4GWML+A7TP2-w@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <734ef31d-5104-c7d4-bf14-6bb116484010@st.com>
Date: Wed, 1 Apr 2020 16:56:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFpO40Ois8pNwYOeqZrJbV9UeCLok=i8z4GWML+A7TP2-w@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-01_01:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_075655_137164_3E60DEFD 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpMZSAzLzI2LzIwIMOgIDM6MjcgUE0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4g
T24gV2VkLCAyNSBNYXIgMjAyMCBhdCAxNTozNCwgTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Pgo+PiBJbiBtbWNpX3dyaXRlX3B3cnxjbGt8ZGF0YWN0cmxyZWcg
ZnVuY3Rpb25zLCBpZiB0aGUgZGVzaXJlZCB2YWx1ZQo+PiBpcyBlcXVhbCB0byBjb3JyZXNwb25k
aW5nIHZhcmlhYmxlIChwd3JfcmVnfGNsa19yZWd8ZGF0YWN0cmxfcmVnKSwKPj4gdGhlIHZhbHVl
IGlzIG5vdCB3cml0dGVuIGluIHRoZSByZWdpc3Rlci4KPj4KPj4gQXQgcHJvYmUgcHdyfGNsa3xk
YXRhY3RybF9yZWcgb2YgbW1jaV9ob3N0IHN0cnVjdHVyZSBhcmUgaW5pdGlhbGl6ZWQKPj4gdG8g
MCAoa3phbGxvYyBvZiBtbWNfYWxsb2NfaG9zdCkuIEJ1dCB0aGV5IGRvZXMgbm90IG5lY2Vzc2Fy
aWx5IHJlZmxlY3QKPj4gaGFyZHdhcmUgdmFsdWUgb2YgdGhlc2UgcmVnaXN0ZXJzLCBpZiB0aGV5
IGFyZSB1c2VkIHdoaWxlIGJvb3QgbGV2ZWwuCj4+IFRoaXMgaXMgcHJvYmxlbWF0aWMsIGlmIHdl
IHdhbnQgdG8gd3JpdGUgMCBpbiB0aGVzZSByZWdpc3RlcnMuCj4gCj4gSXQgY291bGQgYmUsIGJ1
dCBJIGRvbid0IHNlZSB0aGF0IHdlIGV2ZXIgbmVlZHMgdG8gZG8gdGhhdCAtIGF0IGxlYXN0Cj4g
bm90IGJlZm9yZSB3ZSBoYXZlIHdyaXR0ZW4gc29tZSBvdGhlciBub24temVybyB2YWx1ZXMgdG8g
dGhlbSAodGhyb3VnaAo+IHRoZSBoZWxwZXIgZnVuY3Rpb25zKS4KPiAKClRoZSBzZG1tYyB2YXJp
YW50IGlzIHNsaWdodGx5IGRpZmZlcmVudCBvbiBwd3JfY3RybCBmaWVsZApvZiBNTUNJUE9XRVIg
cmVnaXN0ZXIuCgpJbiBjbGFzc2ljIG1tY2kgd2UgaGF2ZSAzIG9yIDIgdmFsdWVzOgpNTUNJX1BX
Ul9PRkYoMHgwKSwgTU1DSV9QV1JfVVAoMHgyKW9wdGlvbmFsLCBNTUNJX1BXUl9PTigweDMpCi1X
aGVuIHlvdSBzd2l0Y2ggdGhlIGV4dGVybmFsIHBvd2VyIHN1cHBseSBvZmYsIHRoZSBzb2Z0d2Fy
ZSBzZXQKICBwb3dlci1vZmYgKDB4MCkuCgotV2hlbiB5b3Ugc3dpdGNoIHRoZSBleHRlcm5hbCBw
b3dlciBzdXBwbHkgb24sIHRoZSBzb2Z0d2FyZSBmaXJzdCBlbnRlcnMKICB0aGUgcG93ZXItdXAo
MHgyKSBwaGFzZSwgYW5kIHdhaXRzIHVudGlsIHRoZSBzdXBwbHkgb3V0cHV0IGlzIHN0YWJsZQog
IGJlZm9yZSBtb3ZpbmcgdG8gdGhlIHBvd2VyLW9uICgweDMpcGhhc2UuCgpPbiBzZG1tYyB3ZSBo
YXZlIDMgdmFsdWVzOgpNTUNJX1BXUl9PRkYoMHgwKSwgTUNJX1NUTTMyX1BXUl9DWUMoMHgyKSwg
TU1DSV9QV1JfT04oMHgzKQotV2hlbiB5b3Ugc3dpdGNoIHRoZSBleHRlcm5hbCBwb3dlciBzdXBw
bHkgb2ZmLCB0aGUgc29mdHdhcmUgbXVzdAogIE1DSV9TVE0zMl9QV1JfQ1lDKDB4MikgPT4gVGhp
cyB3aWxsIG1ha2UgdGhhdCB0aGUgU0RNTUNfRFs3OjBdLAogIFNETU1DX0NNRCBhbmQgU0RNTUNf
Q0sgYXJlIGRyaXZlbiBsb3csIHRvIHByZXZlbnQgdGhlIGNhcmQgZnJvbSBiZWluZwogIHN1cHBs
aWVkIHRocm91Z2ggdGhlIHNpZ25hbCBsaW5lcy4KCi1XaGVuIHlvdSBzd2l0Y2ggdGhlIGV4dGVy
bmFsIHBvd2VyIHN1cHBseSBvbiwgd2hlbiBzdXBwbHkgb3V0cHV0IGlzCiAgc3RhYmxlIHRoZSBN
TUNJX1BXUl9PRkYoMHgwKSBzdGF0ZSBjYW4gYmUgYXBwbHkgKG1pbmltdW0gMW1zKSA9PiBUaGUK
ICBTRE1NQ19EWzc6MF0sIFNETU1DX0NNRCBhbmQgU0RNTUNfQ0sgYXJlIHNldCB0byBkcml2ZSDi
gJwx4oCdLiBBZnRlcgogIE1NQ0lfUFdSX09OKDB4Mykgc3RhdCBjb3VsZCBiZSBzZXQuCgpJbiBm
YWN0IHRoZSBsYXN0IHZhbHVlIG9mIHBvd2VyIG9mZiBzZXF1ZW5jZSBpcyBkaWZmZXJlbnQgYmV0
d2VlbgpjbGFzc2ljIGFuZCBzZG1tYzoKVGhlIGNsYXNzaWMgbW1jaSBmaW5pc2ggdGhlIHBvd2Vy
IG9mZiBzZXF1ZW5jZSBieSAweDAsIEJ1dCB0aGUgc2RtbWMKZmluaXNoIGJ5IDB4MiwgYW5kIHdl
IG11c3Qgd3JpdGUgMHgwIGluIHBvd2VyIG9uIHNlcXVlbmNlIGJlZm9yZSBzZXQKTU1DSV9QV1Jf
T04uClRoZSAweDAgdmFsdWUgaXMgbm90IHdyaXR0ZW4gZHVlIHRvIGt6YWxsb2MgdmFsdWUgb2Yg
cHdyX3JlZwood2hpY2ggbm90IHJlZmxlY3QgaGFyZHdhcmUgdmFsdWUgb2YgcHdyIHJlZ2lzdGVy
KS4KCj4+Cj4+IFRoaXMgcGF0Y2ggaW5pdGlhbGl6ZXMgcHdyfGNsa3xkYXRhY3RybF9yZWcgdmFy
aWFibGVzIHdpdGggdGhlaXIKPj4gaGFyZHdhcmUgdmFsdWVzIHdoaWxlIHByb2JpbmcuCj4gCj4g
SG1tLCBzbyBpbiBwcmluY2lwbGUgdGhpcyBjaGFuZ2Ugc2VlbXMgcXVpdGUgb2theSwgYnV0IEkg
YW0gaGVzaXRhbnQKPiB0byBwaWNrIGl0IHVwIC0gdW5sZXNzIGl0IHJlYWxseSBhZGRyZXNzZXMg
YSBwcm9ibGVtIHRoYXQgeW91IGhhdmUKPiBvYnNlcnZlZC4KPiAKPiBUaGUgcmVhc29uIGlzLCB0
aGlzIGNoYW5nZSBtYXkgbGVhZCB0byBhdm9pZGluZyB0byByZS13cml0ZSB0aGUKPiByZWdpc3Rl
ciB3aXRoIHRoZSBzYW1lIHZhbHVlIGl0IGdvdCBkdXJpbmcgYm9vdCAtIGFuZCB3aG8ga25vd3Mg
d2hhdAo+IGlzIGJlc3QgaGVyZS4KCkkgdW5kZXJzdGFuZCB5b3VyIGhlc2l0YXRpb24uCklmIHlv
dSBwcmVmZXIsIEkgY2FuIG1vdmUgdGhlIHB3cl9yZWcgaW5pdGlhbGlzYXRpb24KaW4gc2RtbWNf
dmFyaWFudF9pbml0ID8KClJlZ2FyZHMKTHVkbwoKPiAKPiBLaW5kIHJlZ2FyZHMKPiBVZmZlCj4g
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29t
Pgo+PiAtLS0KPj4gICBkcml2ZXJzL21tYy9ob3N0L21tY2kuYyB8IDQgKysrKwo+PiAgIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1j
L2hvc3QvbW1jaS5jIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPj4gaW5kZXggNjQ3NTY3ZGVm
NjEyLi5mMzc4YWUxOGQ1ZGMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5j
Cj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+IEBAIC0yMDg1LDYgKzIwODUsMTAg
QEAgc3RhdGljIGludCBtbWNpX3Byb2JlKHN0cnVjdCBhbWJhX2RldmljZSAqZGV2LAo+PiAgICAg
ICAgICBlbHNlIGlmIChwbGF0LT5vY3JfbWFzaykKPj4gICAgICAgICAgICAgICAgICBkZXZfd2Fy
bihtbWNfZGV2KG1tYyksICJQbGF0Zm9ybSBPQ1IgbWFzayBpcyBpZ25vcmVkXG4iKTsKPj4KPj4g
KyAgICAgICBob3N0LT5wd3JfcmVnID0gcmVhZGxfcmVsYXhlZChob3N0LT5iYXNlICsgTU1DSVBP
V0VSKTsKPj4gKyAgICAgICBob3N0LT5jbGtfcmVnID0gcmVhZGxfcmVsYXhlZChob3N0LT5iYXNl
ICsgTU1DSUNMT0NLKTsKPj4gKyAgICAgICBob3N0LT5kYXRhY3RybF9yZWcgPSByZWFkbF9yZWxh
eGVkKGhvc3QtPmJhc2UgKyBNTUNJREFUQUNUUkwpOwo+PiArCj4+ICAgICAgICAgIC8qIFdlIHN1
cHBvcnQgdGhlc2UgY2FwYWJpbGl0aWVzLiAqLwo+PiAgICAgICAgICBtbWMtPmNhcHMgfD0gTU1D
X0NBUF9DTUQyMzsKPj4KPj4gLS0KPj4gMi4xNy4xCj4+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
