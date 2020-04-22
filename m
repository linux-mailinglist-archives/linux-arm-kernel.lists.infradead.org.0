Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67861B4667
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 15:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l8bZilHpmPaPOEuqNImQS7WTviq4SxiwIh8dw+vvqM0=; b=t27eu5CRlz0gsll/QDcDtAzbf
	nGHpo1wghKdzjowNlNpezzV4tCYHlJNpkjEBGw5FZ0nDyqS2dnnf8SacN1N0kfMjZptKfs3yd5D0S
	n+FsOF8V6d+jMthlMWXnBKeyNHLzRHDbdWSQ48xbKzp1Qfi5s/d5mT3m0YBffDus1F75284KwcvFm
	llNJ8tloLdEj8O9bTcc6gmquNwBBnzR5VovM0KKa3cQ3hG0DeA3KGx4la+rFW5wLBywVhFUe8nLRY
	f2XZYs0bBpcKO/wdLlOAudU6sx56af3PRPWE9+dGETh0IDjRiws+GOOTXqbOgXp7hKhhU3cB921Oz
	xXM3Yjzog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFcL-0001QC-SS; Wed, 22 Apr 2020 13:40:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFcC-0001OS-Gv
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 13:40:38 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03MDcOSJ007859; Wed, 22 Apr 2020 15:40:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ZeG5MEBElFGxvDwVRDIezNZHBbeSXf35WjhoaaZsj6A=;
 b=jO+y+5a32gAoEFM1QqBzK5iYTjSmrs7P8SuFYvtFR+W3OnGhd/4Gp2BDA+qrlTFbFTsJ
 BMn/lRxiRcbFnqblJhnf66LRE9O5sRx/AVwyDw4vAR9QnnI8f45cuFdhMWDmbuTrSvve
 r/QZ4eDjlMGNpiKxrPC7aMnHM/XUFDgUpURhbDLJNeg8kMRXvtNWCChZlPVwjRhCPwLr
 KsSAgre6hLBCL0tCNVVJTIRtjNULSb8E/g+FBEyovrkI4Gbgb3I/NKjZJhC+/UFoC6pi
 x+VoUY4+cq/cYppqFIlXllWqSMXhqt1SgXCeVltwpvaV7u0MUR8TDZYQ3JqT1dXmpTRW og== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fregpq4d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Apr 2020 15:40:09 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 951D310002A;
 Wed, 22 Apr 2020 15:40:07 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8015C2B1889;
 Wed, 22 Apr 2020 15:40:07 +0200 (CEST)
Received: from lmecxl0923.lme.st.com (10.75.127.44) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 Apr
 2020 15:40:06 +0200
Subject: Re: [PATCH] mmc: mmci_sdmmc: fix power on issue due to pwr_reg
 initialization
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20200420161831.5043-1-ludovic.barre@st.com>
 <CAPDyKFqC3fdnQ9CMYhS-=5MiCET=r5Az2S5oFoA2v1gdDeGO3w@mail.gmail.com>
 <CAPDyKFrHcoVd=GKPB70gOFE8STOnTJrJbcZzE_DEgFWh1Vhszg@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <1d9cefd1-aaed-1eb5-92f2-b1f45b4da2ac@st.com>
Date: Wed, 22 Apr 2020 15:40:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFrHcoVd=GKPB70gOFE8STOnTJrJbcZzE_DEgFWh1Vhszg@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-22_06:2020-04-22,
 2020-04-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_064036_910741_282D0046 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpMZSA0LzIxLzIwIMOgIDExOjM4IEFNLCBVbGYgSGFuc3NvbiBhIMOpY3JpdMKgOgo+
IE9uIFR1ZSwgMjEgQXByIDIwMjAgYXQgMTE6MjUsIFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBs
aW5hcm8ub3JnPiB3cm90ZToKPj4KPj4gT24gTW9uLCAyMCBBcHIgMjAyMCBhdCAxODoxOCwgTHVk
b3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJyZUBzdC5jb20+IHdyb3RlOgo+Pj4KPj4+IFRoaXMgcGF0
Y2ggZml4IGEgcG93ZXItb24gaXNzdWUsIGFuZCBhdm9pZCB0byByZXRyeSB0aGUgcG93ZXIgc2Vx
dWVuY2UuCj4+Pgo+Pj4gSW4gcG93ZXIgb2ZmIHNlcXVlbmNlOiBzZG1tYyBtdXN0IHNldCBwd3Jf
cmVnIGluICJwb3dlci1jeWNsZSIgc3RhdGUKPj4+ICh2YWx1ZSAweDIpLCB0byBwcmV2ZW50IHRo
ZSBjYXJkIGZyb20gYmVpbmcgc3VwcGxpZWQgdGhyb3VnaCB0aGUgc2lnbmFsCj4+PiBsaW5lcyAo
YWxsIHRoZSBsaW5lcyBhcmUgZHJpdmVuIGxvdykuCj4+Pgo+Pj4gSW4gcG93ZXIgb24gc2VxdWVu
Y2U6IHdoZW4gdGhlIHBvd2VyIGlzIHN0YWJsZSwgc2RtbWMgbXVzdCBzZXQgcHdyX3JlZwo+Pj4g
aW4gInBvd2VyLW9mZiIgc3RhdGUgKHZhbHVlIDB4MCkgdG8gZHJpdmUgYWxsIHNpZ25hbCB0byBo
aWdoIGJlZm9yZSB0bwo+Pj4gc2V0ICJwb3dlci1vbiIuCj4+Cj4+IEp1c3QgYSBxdWVzdGlvbiB0
byBnYWluIGZ1cnRoZXIgdW5kZXJzdGFuZGluZy4KPj4KPj4gTGV0J3MgYXNzdW1lIHRoYXQgdGhl
IGNvbnRyb2xsZXIgaXMgYSBwb3dlci1vbiBzdGF0ZSwgYmVjYXVzZSBpdCdzCj4+IGJlZW4gaW5p
dGlhbGl6ZWQgYnkgdGhlIGJvb3QgbG9hZGVyLiBXaGVuIHRoZSBtbWMgY29yZSB0aGVuIHN0YXJ0
cyB0aGUKPj4gcG93ZXItb24gc2VxdWVuY2UgKG5vdCBkb2luZyBhIHBvd2VyLW9mZiBmaXJzdCks
IHdvdWxkICRzdWJqZWN0IHBhdGNoCj4+IHRoZW4gY2F1c2UgdGhlCj4+IE1NQ0lQT1dFUiB0byBy
ZW1haW4gYXMgaXMsIG9yIGlzIGl0IGdvaW5nIHRvIGJlIG92ZXJ3cml0dGVuPwoKT24gc2RtbWMg
Y29udHJvbGxlciwgdGhlIFBXUkNUUkxbMTowXSBmaWVsZCBvZiBNTUNJUE9XRVIgcmVnaXN0ZXIg
YWxsb3cKdG8gbWFuYWdlIHNkIGxpbmVzIGFuZCBoYXMgYSBzcGVjaWZpYyBiYWhhdmlvci4KClBX
UkNUUkwgdmFsdWU6CiAgLSAweDA6IEFmdGVyIHJlc2V0LCBSZXNldDogdGhlIFNETU1DIGlzIGRp
c2FibGVkIGFuZCB0aGUgY2xvY2sgdG8gdGhlCiAgICAgICAgIENhcmQgaXMgc3RvcHBlZCwgU0RN
TUNfRFs3OjBdLCBhbmQgU0RNTUNfQ01EIGFyZSBIaVogYW5kCiAgICAgICAgIFNETU1DX0NLIGlz
IGRyaXZlbiBsb3cuCiAgICAgICAgIFdoZW4gd3JpdHRlbiAwMCwgcG93ZXItb2ZmOiB0aGUgU0RN
TUMgaXMgZGlzYWJsZWQgYW5kIHRoZSBjbG9jawogICAgICAgICB0byB0aGUgY2FyZCBpcyBzdG9w
cGVkLCBTRE1NQ19EWzc6MF0sIFNETU1DX0NNRCBhbmQgU0RNTUNfQ0sKICAgICAgICAgYXJlIGRy
aXZlbiBoaWdoLgoKICAtIDB4MjogUG93ZXItY3ljbGUsIHRoZSBTRE1NQyBpcyBkaXNhYmxlZCBh
bmQgdGhlIGNsb2NrIHRvIHRoZSBjYXJkIGlzCiAgICAgICAgIHN0b3BwZWQsIFNETU1DX0RbNzow
XSwgU0RNTUNfQ01EIGFuZCBTRE1NQ19DSyBhcmUgZHJpdmVuIGxvdy4KCiAgLSAweDM6IFBvd2Vy
LW9uOiB0aGUgY2FyZCBpcyBjbG9ja2VkLCBUaGUgZmlyc3QgNzQgU0RNTUNfQ0sgY3ljbGVzIHRo
ZQogICAgICAgICBTRE1NQyBpcyBzdGlsbCBkaXNhYmxlZC4gQWZ0ZXIgdGhlIDc0IGN5Y2xlcyB0
aGUgU0RNTUMgaXMKICAgICAgICAgZW5hYmxlZCBhbmQgdGhlIFNETU1DX0RbNzowXSwgU0RNTUNf
Q01EIGFuZCBTRE1NQ19DSyBhcmUKICAgICAgICAgY29udHJvbGxlZCBhY2NvcmRpbmcgdGhlIFNE
TU1DIG9wZXJhdGlvbi4KICAgICAgICAgKipBbnkgZnVydGhlciB3cml0ZSB3aWxsIGJlIGlnbm9y
ZWQsIFBXUkNUUkwgdmFsdWUKICAgICAgICAgd2lsbCBrZWVwIDB4MyoqLiB3aGVuIHRoZSBTRE1N
QyBpcyBPTiAoMHgzKSBvbmx5IGEgcmVzZXQgY291bGQKICAgICAgICAgY2hhbmdlIHB3cmN0cmwg
dmFsdWUgYW5kIHRoZSBzdGF0ZSBvZiBzZG1tYyBsaW5lcy4KClNvIGlmIHRoZSBsaW5lcyBhcmUg
YWxyZWFkeSAiT04iLCB0aGUgcG93ZXItb24gc2VxdWVuY2UgKGRlY3JpYmVkIGluCmNvbW1pdCBt
ZXNzYWdlKSBub3Qgb3ZlcndyaXRlIHRoZSBwd2N0cmwgZmllbGQgYW5kIG5vdCBkaXN0dXJiIHRo
ZSBzZG1tYyAKbGluZXMuCgo+Pgo+PiBJIGFtIGEgbGl0dGxlIHdvcnJpZWQgdGhhdCB3ZSBtYXkg
c3RhcnQgdG8gcmVseSBvbiBib290IGxvYWRlcgo+PiBjb25kaXRpb25zLCB3aGljaCBpc24ndCBy
ZWFsbHkgd2hhdCB3ZSB3YW50IGVpdGhlci4uLgo+PgoKV2Ugbm90IGRlcGVuZCBvZiBib290IGxv
YWRlciBjb25kaXRpb25zLgoKVGhpcyBwYXRjaCBzaW1wbHkgYWxsb3dzIHRvIGRyaXZlIGhpZ2gg
dGhlIHNkIGxpbmVzIGJlZm9yZSB0byBzZXQKInBvd2VyLW9uIiB2YWx1ZSAobm8gZWZmZWN0IGlm
IGFscmVhZHkgcG93ZXIgT04pLgoKPj4+Cj4+PiBUbyBhdm9pZCB3cml0aW5nIHRoZSBzYW1lIHZh
bHVlIHRvIHRoZSBwb3dlciByZWdpc3RlciBzZXZlcmFsIHRpbWVzLCB0aGlzCj4+PiByZWdpc3Rl
ciBpcyBjYWNoZWQgYnkgdGhlIHB3cl9yZWcgdmFyaWFibGUuIEF0IHByb2JlIHB3cl9yZWcgaXMg
aW5pdGlhbGl6ZWQKPj4+IHRvIDAgYnkga3phbGxvYyBvZiBtbWNfYWxsb2NfaG9zdC4KPj4+Cj4+
PiBMaWtlIHB3cl9yZWcgdmFsdWUgaXMgMCBhdCBwcm9iaW5nLCB0aGUgcG93ZXIgb24gc2VxdWVu
Y2UgZmFpbCBiZWNhdXNlCj4+PiB0aGUgInBvd2VyLW9mZiIgc3RhdGUgaXMgbm90IHdyaXRlcyAo
dmFsdWUgMHgwKSBhbmQgdGhlIGxpbmVzCj4+PiByZW1haW4gZHJpdmUgdG8gbG93Lgo+Pj4KPj4+
IFRoaXMgcGF0Y2ggaW5pdGlhbGl6ZXMgInB3cl9yZWciIHZhcmlhYmxlIHdpdGggcG93ZXIgcmVn
aXN0ZXIgdmFsdWUuCj4+PiBUaGlzIGl0IGRvbmUgaW4gc2RtbWMgdmFyaWFudCBpbml0IHRvIG5v
dCBkaXN0dXJiIGRlZmF1bHQgbW1jaSBiZWhhdmlvci4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBM
dWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KPj4KPj4gQmVzaWRlcyB0aGUgY29t
bWVudCwgdGhlIGNvZGUgYW5kIHRoZSBhcHByb2FjaCBzZWVtcyByZWFzb25hYmxlIHRvIG1lLgo+
IAo+IEFub3RoZXIgcmVsYXRlZCBxdWVzdGlvbi4gSSBqdXN0IHJlYWxpemVkIHdoeSB5b3UgcHJv
YmFibHkgaGF2ZW4ndCBzZXQKPiAucHdycmVnX25vcG93ZXIgZm9yIHRoZSB2YXJpYW50X3N0bTMy
X3NkbW1jIGFuZCB2YXJpYW50X3N0bTMyX3NkbW1jdjIuCj4gCj4gSSBndWVzcyBpdCdzIGJlY2F1
c2UgeW91IG5lZWQgYSBzbGlnaHRseSBkaWZmZXJlbnQgd2F5IHRvIHJlc3RvcmUgdGhlCj4gY29u
dGV4dCBvZiBNTUNJUE9XRVIgcmVnaXN0ZXIgYXQgLT5ydW50aW1lX3Jlc3VtZSgpLCByYXRoZXIg
dGhhbiBqdXN0Cj4gcmUtd3JpdGluZyBpdCB3aXRoIHRoZSBzYXZlZCByZWdpc3RlciB2YWx1ZXMu
IElzIHRoaXMgc29tZXRoaW5nIHRoYXQKPiB5b3UgYXJlIGxvb2tpbmcgaW50byBhcyB3ZWxsPwoK
WWVzIGV4YWN0bHksIHRoZSBzZXF1ZW5jZSBpcyBzbGlnaHRseSBkaWZmZXJlbnQuIEkgY2FuJ3Qg
d3JpdGUgMCBvbiAKbW1jaV9ydW50aW1lX3N1c3BlbmQsIGFuZCBjYW4ndCBqdXN0IHJlLXdyaXRp
bmcgdGhlIHNhdmVkIHJlZ2lzdGVyLgoKUmVnYXJkcwpMdWRvCgo+IAo+IFsuLi5dCj4gCj4gS2lu
ZCByZWdhcmRzCj4gVWZmZQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
