Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0081D34C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2lQqO2LvubRxJQiXJzSuaatWPFlKhZDsI356/HgL6RM=; b=thf/py5kqYQlF3kps2yQFW9tQ
	Zrj9O5RPAMPZ2gG1mXkjL4sEzupkqBbTk29OEbUeTGxP2Fx1A3wsNWAgb90Li1uBF7Lsg/md8NnIf
	R/m+1vLkwbE/+Bjkzav+mi0/BY9XghJQaC2+6jJOXFsJ2M+aU/7Kq5pRUa6j+1ujlXXVIu5x8+Wbj
	8JmlRxikz8yogvKJGZ0YI8CABDaFvEuBqQpyJWD/nnKXGVAKHuxpSdNAKXsv3gvGFbCNZNr5qW9FU
	vqwIjGfmsNRMwpMPcrXh8LJ/H1U7Vzb71rXAPAXgsclN9L7exh7GVilOJtZmKm+yV54+po5tYx+31
	2xGHV83Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFZg-0001Bm-2D; Thu, 14 May 2020 15:15:04 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFZQ-00013W-09
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:14:52 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04EFCPsL032012; Thu, 14 May 2020 17:14:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=DXcy1MTj2HjZebWARaLMtOPUytmDO38gw8qZM9TYdJk=;
 b=msQ4xxKCBfHwwsCI0M418ZXWCj/nELFaZan4ClSeir8qXib+bjaGK1834HhoN4xDaVWT
 4IMxO1mGyzhg22Sk76JtHn4tyWhZiONIAjVTAQRsvJkWgjUX6z6O4oaP701uy5xek3CQ
 s9FzdJP1x4nm1qE+En5a+Q4LW27Ui5vXUtU+ekOJZEuSFihqK+NF9gMFlXKVi1vlZmIo
 SqB7smQt744V+UX4OLWvwZqimvs1DugASuqTCNn8aU94qgfJzzfW9di0xX3URngifB1I
 f3S6RjnfJ/PF+pP4w3qFC6PH6IfYxn9Gvn8UVrs0XU6ySdsJselHg8KCbfq84Bb+a8kA YQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vnc101-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 17:14:40 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 88D9210002A;
 Thu, 14 May 2020 17:14:38 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7284F2CD9A3;
 Thu, 14 May 2020 17:14:38 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 14 May
 2020 17:14:32 +0200
Subject: Re: [PATCH v2 2/3] ARM: dts: stm32: enable l3gd20 on stm32429-disco
 board
To: dillon min <dillon.minfei@gmail.com>
References: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
 <1589269010-18472-3-git-send-email-dillon.minfei@gmail.com>
 <da9fbb80-571d-1217-4028-e413a0c7db84@st.com>
 <CAL9mu0KJ0j6Rxf7YjKxVWKz_d+B6vrwqqxJM-fmzG=NonLeDYQ@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <f3af6148-7b22-303b-aa72-996d061a3c78@st.com>
Date: Thu, 14 May 2020 17:14:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAL9mu0KJ0j6Rxf7YjKxVWKz_d+B6vrwqqxJM-fmzG=NonLeDYQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_05:2020-05-14,
 2020-05-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_081448_514484_A4ECAE89 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>, Hua Dillon <dillonhua@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, p.zabel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzE0LzIwIDk6MDcgQU0sIGRpbGxvbiBtaW4gd3JvdGU6Cj4gSGkgQWxleGFuZHJlLAo+
IAo+IEFsZXhhbmRyZSBUb3JndWUgPGFsZXhhbmRyZS50b3JndWVAc3QuY29tPiDkuo4yMDIw5bm0
NeaciDE05pel5ZGo5ZubIOS4i+WNiDEwOjEw5YaZ6YGT77yaCj4+Cj4+IEhpIERpbGxvbgo+Pgo+
PiBPbiA1LzEyLzIwIDk6MzYgQU0sIGRpbGxvbi5taW5mZWlAZ21haWwuY29tIHdyb3RlOgo+Pj4g
RnJvbTogZGlsbG9uIG1pbiA8ZGlsbG9uLm1pbmZlaUBnbWFpbC5jb20+Cj4+Pgo+Pj4gTDNnZDIw
LCBzdCBtZW1zIG1vdGlvbiBzZW5zb3IsIDMtYXhpcyBkaWdpdGFsIG91dHB1dCBneXJvc2NvcGUs
Cj4+PiBjb25uZWN0IHRvIHN0bTMyZjQyOSB2aWEgc3BpNQo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IGRpbGxvbiBtaW4gPGRpbGxvbi5taW5mZWlAZ21haWwuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gSGkg
QWxleGFuZHJlLAo+Pj4KPj4+IFYyOgo+Pj4gICAgICAgMSwgaW5zZXJ0IGJsYW5rIGxpbmUgYXQg
c3RtMzJmNDIwLWRpc2NvLmR0cyBsaW5lIDE0Mwo+Pj4gICAgICAgMiwgYWRkIG1vcmUgZGVzY3Jp
cHRpb24gYWJvdXQgbDNnZDIwIGluIGNvbW1pdCBtZXNzYWdlCj4+Pgo+Pj4gVjE6Cj4+PiAgICAg
ICBlbmFibGUgbDNnZDIwIGR0cyBiaW5kaW5nIG9uIHN0bTMyZjQyOS1kaXNjbwo+Pj4KPj4+IHRo
YW5rcy4KPj4+Cj4+PiBkaWxsb24sCj4+Pgo+Pj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJm
NDI5LWRpc2NvLmR0cyB8IDI1ICsrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgIDEgZmls
ZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3N0bTMyZjQyOS1kaXNjby5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMmY0
MjktZGlzY28uZHRzCj4+PiBpbmRleCAzMGMwZjY3Li4xYmZiOTAzIDEwMDY0NAo+Pj4gLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJmNDI5LWRpc2NvLmR0cwo+Pj4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvc3RtMzJmNDI5LWRpc2NvLmR0cwo+Pj4gQEAgLTQ5LDYgKzQ5LDggQEAKPj4+ICAg
ICNpbmNsdWRlICJzdG0zMmY0MjkuZHRzaSIKPj4+ICAgICNpbmNsdWRlICJzdG0zMmY0MjktcGlu
Y3RybC5kdHNpIgo+Pj4gICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4+
PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+Pj4g
KyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPj4+Cj4+PiAgICAvIHsKPj4+ICAg
ICAgICBtb2RlbCA9ICJTVE1pY3JvZWxlY3Ryb25pY3MgU1RNMzJGNDI5aS1ESVNDTyBib2FyZCI7
Cj4+PiBAQCAtMTI3LDMgKzEyOSwyNiBAQAo+Pj4gICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4+PiAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gICAgfTsKPj4+ICsKPj4+ICsm
c3BpNSB7Cj4+PiArICAgICBzdGF0dXMgPSAib2theSI7Cj4+PiArICAgICBwaW5jdHJsLTAgPSA8
JnNwaTVfcGlucz47Cj4+PiArICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4gKyAg
ICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+PiArICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPj4+
ICsgICAgIGNzLWdwaW9zID0gPCZncGlvYyAxIEdQSU9fQUNUSVZFX0xPVz47Cj4+PiArICAgICBk
bWFzID0gPCZkbWEyIDMgMiAweDQwMCAweDA+LAo+Pj4gKyAgICAgICAgICAgIDwmZG1hMiA0IDIg
MHg0MDAgMHgwPjsKPj4+ICsgICAgIGRtYS1uYW1lcyA9ICJyeCIsICJ0eCI7Cj4+PiArCj4+Cj4+
IFlvdSBhZGRlZCB0aGlzIHNwaTUgbm9kZSBpbiB0aGlzIHBhdGNoIGJ1dCBhbHNvIGluIHRoZSBk
aXNwbGF5IHNlcmllcy4gSQo+PiB3aWxsIGhhdmUgaXNzdWUgdG8gbWVyZ2UuIEV2ZW4gaWYgSSBj
b3VsZCBmaXggaXQgZWFzaWx5LCBhcyB5b3UgYXJlCj4+IGdvaW5nIHRvIHJlc2VuZCwgdGhlIGdv
b2QgcHJhY3RpY2UgY291bGQgYmUgdG8gaGF2ZSBzZXZlcmFsIHBhdGNoZXMgaW4KPj4gb25lIHNl
cmllczogb25lIHBhdGNoIGZvciBzcGk1IGNvbnRyb2xsZXIsIGFub3RoZXIgZm9yIGd5cm8gYW5k
IGFub3RoZXIKPj4gZm9yIGRpc3BsYXkuCj4+Cj4+IEFuZCBhbHNvIHNhbWUgcmVtYXJrIHRoYW4g
TGludXMgZGlkIGluIGRpc3BsYXkgc2VyaWVzIG1vdmUgRE1BIHRvIHNvYwo+PiBkdHNpIGZpbGUg
cGxlYXNlLgo+IAo+IFN1cmUsIGhvdyBhYm91dCB0aGlzIHBhdGNoIHNlcXVlbmNlOgo+IDEgYWRk
IHNwaTUgZG1hIHRvIHNvYyAoc3RtMzJmNDI5LmR0c2kpCj4gMiBhZGQgcGluIG1hcCBmb3Igc3Bp
NSAoc3RtMzJmNC1waW5jdHJsLmR0c2kpCj4gMyBhZGQgc3BpNSBjb250cm9sbGVyIHdpdGggZ3ly
byAoc3RtMzJmNDI5LWRpc2NvLmR0cykKPiA0IGFkZCBzcGkgbW9kaWZpY2F0aW9uIHRvIHN1cHBv
cnQgZ3lybyAoc3BpLXN0bTMyLmMpCj4gCj4gNSBhZGQgbHRkYyBwaW4gbWFwIGZvciBzdG0zMmY0
MjktZGlzY28gYm9hcmQgKHN0bTMyZjQtcGluY3RybC5kdHNpKQo+IDYgYWRkIGlsaXRlay1pbGk5
MzQxIGR0cyBiaW5kaW5ncyBmb3IgZGlzY28gKHN0bTMyZjQyOS1kaXNjby5kdHMsCj4gZGVwZW5k
cyBvbiBhYm92ZSBzdGVwIDMpCj4gNyBhZGQgeWFtbCBkb2N1bWVudCBhYm91dCBpbGl0ZWstaWxp
OTM0MSAoaWxpdGVrLGlsaTkzNDEueWFtbCkKPiA4IGFkZCBjbGsgY2hhbmdlcyB0byBzdXBwb3J0
IGx0ZGMgZHJpdmVyIChjbGstc3RtMzJmNC5jKQo+IAo+IHNvLCBpIHdpbGwgY29tYmluZSBneXJv
IGFuZCBkaXNwbGF5IHR3byBwYXRjaGVzIHRvIG9uZSBwYXRjaHNldCBuZXh0Cj4gdGltZS4gcmln
aHQgPwo+IAoKbG9va3MgZ29vZAoKPiB0aGFua3MuCj4+Cj4+Cj4+PiArICAgICBsM2dkMjA6IGwz
Z2QyMEAwIHsKPj4+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzdCxsM2dkMjAtZ3lybyI7
Cj4+PiArICAgICAgICAgICAgIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwMDAwMDAwPjsKPj4+ICsg
ICAgICAgICAgICAgc3QsZHJkeS1pbnQtcGluID0gPDI+Owo+Pj4gKyAgICAgICAgICAgICBpbnRl
cnJ1cHQtcGFyZW50ID0gPCZncGlvYT47Cj4+PiArICAgICAgICAgICAgIGludGVycnVwdHMgPSA8
MSBJUlFfVFlQRV9FREdFX1JJU0lORz4sCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8MiBJUlFfVFlQRV9FREdFX1JJU0lORz47Cj4+PiArICAgICAgICAgICAgIHJlZyA9IDwwPjsK
Pj4+ICsgICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gKyAgICAgfTsKPj4+ICt9Owo+
Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
