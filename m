Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8841B56F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 10:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KOb+xg+Vlux1PLvy5v05RSW+0viDDFkK15o+iTYeELk=; b=j747RVidCGRr3pETNFWaVOJX2
	uKNJWeuN7Vz5ayXXr3EOyMjBXB3wV2XAyorvAq+EsSvxfRSMcIFZuTGK1O64bbvOe/JuWsiZ1jPBG
	2r447twlb7jlC616fe/ZOPuFYhIBD8BXZk8hgMKjbWClWl4QXuWGABbGBspa+DT4llp3bsvEfxLpT
	GkQNgaLaAEaJbW6afaB9zxXN1ulxy82gczo6El3Or5vD28XdqZX7XwLKmmmELspAxeLkNo2JcM76E
	y2I7z/8g5xiP011UH8LzFaEWKyfW1ie4AG41fnqPvt36B+h1htf2tQXLCurIYLSwoaQzw6nUyXvQx
	jyxZDhb+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRWy7-0006Wc-OM; Thu, 23 Apr 2020 08:12:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRWxz-0006W1-Kz
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 08:12:17 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03N88G59031061; Thu, 23 Apr 2020 10:12:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=lnLyhFkF5Kttua+5xE5VipgRM0EklZuvKl52ZMG1pu0=;
 b=J4rMPyEuKrGJ9UDO/aFTHrgID1JgAT0AfVKMA8mllKBEI3ApI300UxBfR85D/Bjvpxmn
 W979/bMwTyZmE4aVbVLQusLaH8uA9ZXzvqVwkl44zOKlsE4OepzRc7AWnFD6Qbl94eFa
 ohbS/QwmYpHBGlu1oVidkKc82Iq2ajY+fgOykq18kSTc7j/HK3mLL0NFqZ0nRbe2sWM2
 AyVgMSqUGARYgHDjyIVxGkHLFkeVsBecKqnmDcCbsXNSrmjBpsNpFsBWSCzJkW9V+bk/
 Aa9Q+cZTAaBxSU+DlKtvAUQ0FceNtz2btH6gn7pZmaeCMDB1fL5hSgTMZJOG23s/jckk aQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11ud7k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Apr 2020 10:12:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6EDDC100038;
 Thu, 23 Apr 2020 10:12:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5C9672AD2B8;
 Thu, 23 Apr 2020 10:12:05 +0200 (CEST)
Received: from lmecxl0923.lme.st.com (10.75.127.44) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 23 Apr
 2020 10:12:04 +0200
Subject: Re: [PATCH] mmc: mmci_sdmmc: fix power on issue due to pwr_reg
 initialization
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20200420161831.5043-1-ludovic.barre@st.com>
 <CAPDyKFqC3fdnQ9CMYhS-=5MiCET=r5Az2S5oFoA2v1gdDeGO3w@mail.gmail.com>
 <CAPDyKFrHcoVd=GKPB70gOFE8STOnTJrJbcZzE_DEgFWh1Vhszg@mail.gmail.com>
 <1d9cefd1-aaed-1eb5-92f2-b1f45b4da2ac@st.com>
 <CAPDyKFpri4VBnH9nbqUa4L=3o_h+fSZ052v7AG_9MhJX2gKgCQ@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <96725b28-fa19-54f0-7ba7-2043098a24a5@st.com>
Date: Thu, 23 Apr 2020 10:12:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFpri4VBnH9nbqUa4L=3o_h+fSZ052v7AG_9MhJX2gKgCQ@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-23_06:2020-04-22,
 2020-04-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_011216_134198_6841E904 
X-CRM114-Status: GOOD (  23.94  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

CgpMZSA0LzIyLzIwIMOgIDY6MDMgUE0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4gT24gV2Vk
LCAyMiBBcHIgMjAyMCBhdCAxNTo0MCwgTHVkb3ZpYyBCQVJSRSA8bHVkb3ZpYy5iYXJyZUBzdC5j
b20+IHdyb3RlOgo+Pgo+PiBoaSBVbGYKPj4KPj4gTGUgNC8yMS8yMCDDoCAxMTozOCBBTSwgVWxm
IEhhbnNzb24gYSDDqWNyaXQgOgo+Pj4gT24gVHVlLCAyMSBBcHIgMjAyMCBhdCAxMToyNSwgVWxm
IEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4+Cj4+Pj4gT24gTW9u
LCAyMCBBcHIgMjAyMCBhdCAxODoxOCwgTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJyZUBzdC5j
b20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBUaGlzIHBhdGNoIGZpeCBhIHBvd2VyLW9uIGlzc3VlLCBh
bmQgYXZvaWQgdG8gcmV0cnkgdGhlIHBvd2VyIHNlcXVlbmNlLgo+Pj4+Pgo+Pj4+PiBJbiBwb3dl
ciBvZmYgc2VxdWVuY2U6IHNkbW1jIG11c3Qgc2V0IHB3cl9yZWcgaW4gInBvd2VyLWN5Y2xlIiBz
dGF0ZQo+Pj4+PiAodmFsdWUgMHgyKSwgdG8gcHJldmVudCB0aGUgY2FyZCBmcm9tIGJlaW5nIHN1
cHBsaWVkIHRocm91Z2ggdGhlIHNpZ25hbAo+Pj4+PiBsaW5lcyAoYWxsIHRoZSBsaW5lcyBhcmUg
ZHJpdmVuIGxvdykuCj4+Pj4+Cj4+Pj4+IEluIHBvd2VyIG9uIHNlcXVlbmNlOiB3aGVuIHRoZSBw
b3dlciBpcyBzdGFibGUsIHNkbW1jIG11c3Qgc2V0IHB3cl9yZWcKPj4+Pj4gaW4gInBvd2VyLW9m
ZiIgc3RhdGUgKHZhbHVlIDB4MCkgdG8gZHJpdmUgYWxsIHNpZ25hbCB0byBoaWdoIGJlZm9yZSB0
bwo+Pj4+PiBzZXQgInBvd2VyLW9uIi4KPj4+Pgo+Pj4+IEp1c3QgYSBxdWVzdGlvbiB0byBnYWlu
IGZ1cnRoZXIgdW5kZXJzdGFuZGluZy4KPj4+Pgo+Pj4+IExldCdzIGFzc3VtZSB0aGF0IHRoZSBj
b250cm9sbGVyIGlzIGEgcG93ZXItb24gc3RhdGUsIGJlY2F1c2UgaXQncwo+Pj4+IGJlZW4gaW5p
dGlhbGl6ZWQgYnkgdGhlIGJvb3QgbG9hZGVyLiBXaGVuIHRoZSBtbWMgY29yZSB0aGVuIHN0YXJ0
cyB0aGUKPj4+PiBwb3dlci1vbiBzZXF1ZW5jZSAobm90IGRvaW5nIGEgcG93ZXItb2ZmIGZpcnN0
KSwgd291bGQgJHN1YmplY3QgcGF0Y2gKPj4+PiB0aGVuIGNhdXNlIHRoZQo+Pj4+IE1NQ0lQT1dF
UiB0byByZW1haW4gYXMgaXMsIG9yIGlzIGl0IGdvaW5nIHRvIGJlIG92ZXJ3cml0dGVuPwo+Pgo+
PiBPbiBzZG1tYyBjb250cm9sbGVyLCB0aGUgUFdSQ1RSTFsxOjBdIGZpZWxkIG9mIE1NQ0lQT1dF
UiByZWdpc3RlciBhbGxvdwo+PiB0byBtYW5hZ2Ugc2QgbGluZXMgYW5kIGhhcyBhIHNwZWNpZmlj
IGJhaGF2aW9yLgo+Pgo+PiBQV1JDVFJMIHZhbHVlOgo+PiAgICAtIDB4MDogQWZ0ZXIgcmVzZXQs
IFJlc2V0OiB0aGUgU0RNTUMgaXMgZGlzYWJsZWQgYW5kIHRoZSBjbG9jayB0byB0aGUKPj4gICAg
ICAgICAgIENhcmQgaXMgc3RvcHBlZCwgU0RNTUNfRFs3OjBdLCBhbmQgU0RNTUNfQ01EIGFyZSBI
aVogYW5kCj4+ICAgICAgICAgICBTRE1NQ19DSyBpcyBkcml2ZW4gbG93Lgo+PiAgICAgICAgICAg
V2hlbiB3cml0dGVuIDAwLCBwb3dlci1vZmY6IHRoZSBTRE1NQyBpcyBkaXNhYmxlZCBhbmQgdGhl
IGNsb2NrCj4+ICAgICAgICAgICB0byB0aGUgY2FyZCBpcyBzdG9wcGVkLCBTRE1NQ19EWzc6MF0s
IFNETU1DX0NNRCBhbmQgU0RNTUNfQ0sKPj4gICAgICAgICAgIGFyZSBkcml2ZW4gaGlnaC4KPj4K
Pj4gICAgLSAweDI6IFBvd2VyLWN5Y2xlLCB0aGUgU0RNTUMgaXMgZGlzYWJsZWQgYW5kIHRoZSBj
bG9jayB0byB0aGUgY2FyZCBpcwo+PiAgICAgICAgICAgc3RvcHBlZCwgU0RNTUNfRFs3OjBdLCBT
RE1NQ19DTUQgYW5kIFNETU1DX0NLIGFyZSBkcml2ZW4gbG93Lgo+Pgo+PiAgICAtIDB4MzogUG93
ZXItb246IHRoZSBjYXJkIGlzIGNsb2NrZWQsIFRoZSBmaXJzdCA3NCBTRE1NQ19DSyBjeWNsZXMg
dGhlCj4+ICAgICAgICAgICBTRE1NQyBpcyBzdGlsbCBkaXNhYmxlZC4gQWZ0ZXIgdGhlIDc0IGN5
Y2xlcyB0aGUgU0RNTUMgaXMKPj4gICAgICAgICAgIGVuYWJsZWQgYW5kIHRoZSBTRE1NQ19EWzc6
MF0sIFNETU1DX0NNRCBhbmQgU0RNTUNfQ0sgYXJlCj4+ICAgICAgICAgICBjb250cm9sbGVkIGFj
Y29yZGluZyB0aGUgU0RNTUMgb3BlcmF0aW9uLgo+PiAgICAgICAgICAgKipBbnkgZnVydGhlciB3
cml0ZSB3aWxsIGJlIGlnbm9yZWQsIFBXUkNUUkwgdmFsdWUKPj4gICAgICAgICAgIHdpbGwga2Vl
cCAweDMqKi4gd2hlbiB0aGUgU0RNTUMgaXMgT04gKDB4Mykgb25seSBhIHJlc2V0IGNvdWxkCj4+
ICAgICAgICAgICBjaGFuZ2UgcHdyY3RybCB2YWx1ZSBhbmQgdGhlIHN0YXRlIG9mIHNkbW1jIGxp
bmVzLgo+Pgo+PiBTbyBpZiB0aGUgbGluZXMgYXJlIGFscmVhZHkgIk9OIiwgdGhlIHBvd2VyLW9u
IHNlcXVlbmNlIChkZWNyaWJlZCBpbgo+PiBjb21taXQgbWVzc2FnZSkgbm90IG92ZXJ3cml0ZSB0
aGUgcHdjdHJsIGZpZWxkIGFuZCBub3QgZGlzdHVyYiB0aGUgc2RtbWMKPj4gbGluZXMuCj4gCj4g
VGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgaW5mb3JtYXRpb24sIG11Y2ggYXBwcmVjaWF0ZWQhCj4g
Cj4+Cj4+Pj4KPj4+PiBJIGFtIGEgbGl0dGxlIHdvcnJpZWQgdGhhdCB3ZSBtYXkgc3RhcnQgdG8g
cmVseSBvbiBib290IGxvYWRlcgo+Pj4+IGNvbmRpdGlvbnMsIHdoaWNoIGlzbid0IHJlYWxseSB3
aGF0IHdlIHdhbnQgZWl0aGVyLi4uCj4+Pj4KPj4KPj4gV2Ugbm90IGRlcGVuZCBvZiBib290IGxv
YWRlciBjb25kaXRpb25zLgo+Pgo+PiBUaGlzIHBhdGNoIHNpbXBseSBhbGxvd3MgdG8gZHJpdmUg
aGlnaCB0aGUgc2QgbGluZXMgYmVmb3JlIHRvIHNldAo+PiAicG93ZXItb24iIHZhbHVlIChubyBl
ZmZlY3QgaWYgYWxyZWFkeSBwb3dlciBPTikuCj4gCj4gWWVwLCB0aGFua3MhCj4gCj4+Cj4+Pj4+
Cj4+Pj4+IFRvIGF2b2lkIHdyaXRpbmcgdGhlIHNhbWUgdmFsdWUgdG8gdGhlIHBvd2VyIHJlZ2lz
dGVyIHNldmVyYWwgdGltZXMsIHRoaXMKPj4+Pj4gcmVnaXN0ZXIgaXMgY2FjaGVkIGJ5IHRoZSBw
d3JfcmVnIHZhcmlhYmxlLiBBdCBwcm9iZSBwd3JfcmVnIGlzIGluaXRpYWxpemVkCj4+Pj4+IHRv
IDAgYnkga3phbGxvYyBvZiBtbWNfYWxsb2NfaG9zdC4KPj4+Pj4KPj4+Pj4gTGlrZSBwd3JfcmVn
IHZhbHVlIGlzIDAgYXQgcHJvYmluZywgdGhlIHBvd2VyIG9uIHNlcXVlbmNlIGZhaWwgYmVjYXVz
ZQo+Pj4+PiB0aGUgInBvd2VyLW9mZiIgc3RhdGUgaXMgbm90IHdyaXRlcyAodmFsdWUgMHgwKSBh
bmQgdGhlIGxpbmVzCj4+Pj4+IHJlbWFpbiBkcml2ZSB0byBsb3cuCj4+Pj4+Cj4+Pj4+IFRoaXMg
cGF0Y2ggaW5pdGlhbGl6ZXMgInB3cl9yZWciIHZhcmlhYmxlIHdpdGggcG93ZXIgcmVnaXN0ZXIg
dmFsdWUuCj4+Pj4+IFRoaXMgaXQgZG9uZSBpbiBzZG1tYyB2YXJpYW50IGluaXQgdG8gbm90IGRp
c3R1cmIgZGVmYXVsdCBtbWNpIGJlaGF2aW9yLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBM
dWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KPj4+Pgo+Pj4+IEJlc2lkZXMgdGhl
IGNvbW1lbnQsIHRoZSBjb2RlIGFuZCB0aGUgYXBwcm9hY2ggc2VlbXMgcmVhc29uYWJsZSB0byBt
ZS4KPj4+Cj4+PiBBbm90aGVyIHJlbGF0ZWQgcXVlc3Rpb24uIEkganVzdCByZWFsaXplZCB3aHkg
eW91IHByb2JhYmx5IGhhdmVuJ3Qgc2V0Cj4+PiAucHdycmVnX25vcG93ZXIgZm9yIHRoZSB2YXJp
YW50X3N0bTMyX3NkbW1jIGFuZCB2YXJpYW50X3N0bTMyX3NkbW1jdjIuCj4+Pgo+Pj4gSSBndWVz
cyBpdCdzIGJlY2F1c2UgeW91IG5lZWQgYSBzbGlnaHRseSBkaWZmZXJlbnQgd2F5IHRvIHJlc3Rv
cmUgdGhlCj4+PiBjb250ZXh0IG9mIE1NQ0lQT1dFUiByZWdpc3RlciBhdCAtPnJ1bnRpbWVfcmVz
dW1lKCksIHJhdGhlciB0aGFuIGp1c3QKPj4+IHJlLXdyaXRpbmcgaXQgd2l0aCB0aGUgc2F2ZWQg
cmVnaXN0ZXIgdmFsdWVzLiBJcyB0aGlzIHNvbWV0aGluZyB0aGF0Cj4+PiB5b3UgYXJlIGxvb2tp
bmcgaW50byBhcyB3ZWxsPwo+Pgo+PiBZZXMgZXhhY3RseSwgdGhlIHNlcXVlbmNlIGlzIHNsaWdo
dGx5IGRpZmZlcmVudC4gSSBjYW4ndCB3cml0ZSAwIG9uCj4+IG1tY2lfcnVudGltZV9zdXNwZW5k
LCBhbmQgY2FuJ3QganVzdCByZS13cml0aW5nIHRoZSBzYXZlZCByZWdpc3Rlci4KPiAKPiBTbywg
aXQgc2VlbXMgbGlrZSB5b3UgbmVlZCB0byB1c2UgdGhlIC0+c2V0X2lvcygpIGNhbGxiYWNrLCB0
bwo+IHJlLWNvbmZpZ3VyZSB0aGUgY29udHJvbGxlciBjb3JyZWN0bHkuCj4gCj4gSnVzdCB0ZWxs
IGlmIHlvdSBuZWVkIG1vcmUgaGVscCB0byBtYWtlIHRoYXQgd29yaywgb3RoZXJ3aXNlIEkgYW0g
aGVyZQo+IHRvIHJldmlldyB5b3VyIHBhdGNoZXMuCj4gCj4gSW4gcmVnYXJkcyB0byAkc3ViamVj
dCBwYXRjaCwgSSBoYXZlIGFwcGxpZWQgaXQgZm9yIG5leHQsIHRoYW5rcyEKClRoYW5rcyBmb3Ig
eW91ciByZXZpZXcuCkhhdmUgYSBuaWNlIGRheS4KCj4gCj4gS2luZCByZWdhcmRzCj4gVWZmZQo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
