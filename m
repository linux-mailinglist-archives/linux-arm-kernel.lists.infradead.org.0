Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C495147A3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 10:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJokCK+iuW9ljy8uav67s+F8M0lmdF2TfyxNK689YWQ=; b=jDpWVUl5VgiCFZfCsSJh3WkUy
	aPm0Wxw8RLv1vsdlGfaZ/hmgrsyjduVN69sKlpIQ/fiB0s3iBhLdVNfi2EOFbX9/X6bQaPDP/ZQjp
	6XTjXdc7S8RYyJ+BKltKXmeXAtRdIxDh6kWECHj689/tBIHzEjNT6fOlf/aIrSOIAgUDAzrCrzoAU
	lDqklepq/KFFhDsNI+zwWOVhFpOECvLh0JwLwMhuzq+bMxv9cmgica56MD7oNtxuJVLPU7tfrxIrg
	nEdnlOXiga1Ti5Hb3tQZonBp53i5pbLaRWERzQq28tbrYs1mi2vdMPR9AZusM/9KQpkPUEJOG6gLa
	Q2M2esHMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuv6d-0004Gs-TW; Fri, 24 Jan 2020 09:18:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuv6Q-0004Es-Eu
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 09:18:12 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00O97sQB030882; Fri, 24 Jan 2020 10:18:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=cZLtx98F+pTiJlZIarigv1trZFCfx37/z64SpcVKteo=;
 b=InFGsqW1G8RVHcN7Kcc4mxLUyK7ELQ+KVmP1U7dG4WtI+CRMIqhtHYuv85N/+bicSdHu
 5ZeYtpJXq1+62HfjoDreJSceHSW04gupkAiW/YeDSirvQZsi/Y3wV/jsrMeuP6uvC99i
 kxPq0TcAapyz2vyNL1FHsffb8yz8cPBQx5TfgZAhwz8nzsAOBN8L3WMZtSUI7fEE/KF+
 39i/kkPox9aBcjX/uexwU9HsKTBGkXqjnC0sQL9KdI3ojyRTYnL8H+q6SHsUZRCy4rRH
 MDDie2gommBnGxdt2yS5yfC18plj9OiUHZNo/MoVwFi4x7WwxgBbXfwWNpJelQ1C9C2I bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xksspeq2y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 24 Jan 2020 10:18:02 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 27005100038;
 Fri, 24 Jan 2020 10:17:59 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F087E21E5C8;
 Fri, 24 Jan 2020 10:17:58 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 Jan
 2020 10:17:58 +0100
Subject: Re: STM32MP1 level triggered interrupts
To: Marek Vasut <marex@denx.de>, Marc Zyngier <maz@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
 <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
 <20200123101225.nscpc5t4nmlarbw2@pengutronix.de>
 <03fd1cb7b5985b3221f66c6b0058adc8@kernel.org>
 <20200123105214.ru4j76xbisjtbtgw@pengutronix.de>
 <cf98f4fd257ba4f34c75fe1656bd341b@kernel.org>
 <e1fffd57-4814-ec36-68b4-4207e3d4ae5d@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <f9d98afc-6cb8-ef7b-cff7-a04e14dba4c8@st.com>
Date: Fri, 24 Jan 2020 10:17:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <e1fffd57-4814-ec36-68b4-4207e3d4ae5d@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-24_02:2020-01-24,
 2020-01-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_011810_978563_9C29F7C4 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxLzIzLzIwIDExOjIxIFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPiBPbiAxLzIzLzIwIDEy
OjE4IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+IE9uIDIwMjAtMDEtMjMgMTA6NTIsIFV3ZSBL
bGVpbmUtS8O2bmlnIHdyb3RlOgo+Pj4gT24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMTA6NDQ6MDNB
TSArMDAwMCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+IE9uIDIwMjAtMDEtMjMgMTA6MTIsIFV3
ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+Pj4+PiBPbiBUaHUsIEphbiAyMywgMjAyMCBhdCAwOToy
Mjo0OEFNICswMDAwLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+Pj4+PiBPbiAyMDIwLTAxLTIzIDA4
OjI3LCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+Pj4+Pj4+IE9uIDEvMjIvMjAgODoyOSBQTSwg
TWFyZWsgVmFzdXQgd3JvdGU6Cj4+Pj4+Pj4+IE9uIDEvMjIvMjAgNjoxOSBQTSwgQWxleGFuZHJl
IFRvcmd1ZSB3cm90ZToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gSGksCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFsu
Li5dCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IENvbmNlcm5pbmcsIHlvdXIgcXVlc3Rpb246Cj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IFNldHRpbmcgeW91ciBncGlvQyBpbnRlcnJ1cHRpb24gYXMgImZh
bGxpbmcgZWRnZSIgc2hvdWxkCj4+Pj4+Pj4+Pj4+IGJlIGVub3VnaC4gT24KPj4+Pj4+Pj4+Pj4g
Z3Bpb0N4IGZhbGxpbmcgZWRnZSwgYSBoaWdoLWxldmVsIHNpZ25hbCBpcyBnZW5lcmF0ZWQgYnkK
Pj4+Pj4+Pj4+Pj4gZXh0aSBhbmQgc2VudAo+Pj4+Pj4+Pj4+PiB0byBHSUMgKHdoaWNoIHRyaWdn
ZXJzIEdJQyBpbnRlcnJ1cHQpLiBUaGlzIHNpZ25hbAo+Pj4+Pj4+Pj4+PiByZW1haW5zIGhpZ2gg
dW50aWwKPj4+Pj4+Pj4+Pj4gc3RtMzJfaXJxX2FjayBpcyBjYWxsZWQuCj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4+IFNvIHlvdSBvbmx5IG5lZWQ6IChleCBmb3IgZ3Bpb2MgMSkuCj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+IGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW9jPjsKPj4+Pj4+Pj4+Pj4gaW50
ZXJydXB0cyA9IDwxIElSUV9UWVBFX0VER0VfRkFMTElORz47Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
PiBIb3cgZG9lcyB0aGlzIGRlYWwgd2l0aCB0aGUgY2FzZSB3aGVyZSB0aGUgZGV2aWNlIGhvbGRz
IHRoZQo+Pj4+Pj4+Pj4+IGludGVycnVwdAo+Pj4+Pj4+Pj4+IGxpbmUgbG93IChzaW5jZSBpdCdz
IGxldmVsLXNlbnNpdGl2ZSwgYWN0aXZlIGxvdykgYWZ0ZXIKPj4+PiB0aGUgZHJpdmVyCj4+Pj4+
Pj4+Pj4gaW50ZXJydXB0IGhhbmRsZXIgZmluaXNoZXMgPyBEb2VzIHN1Y2ggY29uZGl0aW9uIGdl
bmVyYXRlCj4+Pj4gYW5vdGhlcgo+Pj4+Pj4+Pj4+IGludGVycnVwdCBhbmQgY2FsbCB0aGUgZHJp
dmVyIGludGVycnVwdCBoYW5kbGVyIGFnYWluID8gSQo+Pj4+Pj4+Pj4+IHdvdWxkIGV4cGVjdAo+
Pj4+Pj4+Pj4+IHRoZSBhbnN3ZXIgaXMgbm8sIGJlY2F1c2UgdGhlIGludGVycnVwdCBpcyBlZGdl
LXRyaWdnZXJlZAo+Pj4+Pj4+Pj4+IGFuZCB0aGVyZSBpcwo+Pj4+Pj4+Pj4+IG5vIGVkZ2UuCj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gWW91ciBhc3N1bXB0aW9uIGlzIGdvb2QuIElmIHlvdXIgZGV2aWNl
IGNvbnRpbnVlIHRvIGhvbGQgdGhlCj4+Pj4+Pj4+PiBsaW5lIHRvIGxvdwo+Pj4+Pj4+Pj4gYXQg
dGhlIGVuZCBvZiB5b3VyIGludGVycnVwdCBoYW5kbGVyLCBubyBtb3JlIGludGVycnVwdAo+Pj4+
IHdpbGwgYmUKPj4+Pj4+Pj4+IGdlbmVyYXRlZC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQnV0IGRvZXMg
dGhhdCBiYXNpY2FsbHkgbWVhbiB0aGF0IHN1Y2ggYSBkZXZpY2UgY2Fubm90IGJlCj4+Pj4gdXNl
ZCB3aXRoCj4+Pj4+Pj4+IFNUTTMyTVAxIG9yIGFtIEkgZnVuZGFtZW50YWxseSBtaXN0YWtlbiBh
bmQgZG9uJ3QgdW5kZXJzdGFuZAo+Pj4+IGhvdyBhCj4+Pj4+Pj4+IGxldmVsLXRyaWdnZXJlZCBp
bnRlcnJ1cHQgd29ya3MgPyA6KQo+Pj4+Pj4+Cj4+Pj4+Pj4gWW91IG5lZWQgdG8gcmVsZWFzZSB0
aGUgbGluZSBpbiB5b3VyIGRldmljZSBpbnRlcnJ1cHQgaGFuZGxlci4KPj4+PiBJZiBub3QsCj4+
Pj4+Pj4geWVzLCB5b3Ugd2lsbCBtaXNzIGludGVycnVwdHMgOiQKPj4+Pj4+Cj4+Pj4+PiBTbyB0
byBzdW0gaXQgdXAsIHRoaXMgU29DIGRvZXNuJ3Qgc3VwcG9ydCBleHRlcm5hbCBsZXZlbCBpbnRl
cnJ1cHRzCj4+Pj4+PiBvbiBpdHMgb3duLCBmdWxsIHN0b3AuIFlvdSdkIG5lZWQgc29tZSBhZGRp
dGlvbmFsIGV4dGVybmFsIHNhbXBsaW5nCj4+Pj4+PiBIVyB0byByZXRyaWdnZXIgYW4gZWRnZSBv
biBFT0kuCj4+Pj4+Cj4+Pj4+IE9yIHlvdSBuZWVkIHNvZnR3YXJlIHN1cHBvcnQgdGhhdCBtYXJr
cyB0aGUgaXJxIHBlbmRpbmcgYWdhaW4gaWYgb24KPj4+Pj4gdW5tYXNrIHRoZSBpcnEgbGluZSBp
cyBzdGlsbCBhY3RpdmUuCj4+Pj4KPj4+PiBBc3N1bWluZyB5b3UgY2FuIGFjdHVhbGx5IG9ic2Vy
dmUgdGhlIHN0YXRlIG9mIHRoZSBsaW5lIGRpcmVjdGx5LAo+Pj4+IHdpdGhvdXQgaGF2aW5nIHRv
IGFkZCBzcGVjaWZpYyBrbm93bGVkZ2Ugb2YgdGhlIGdlbmVyYXRpbmcgZGV2aWNlLgo+Pj4KPj4+
IEFjaywgeW91IHdvbid0IHdhbnQgdG8gbG9vayBpbnRvIHRoZSByZWdpc3RlcnMgb2YgdGhlIGly
cSBnZW5lcmF0aW5nCj4+PiBkZXZpY2UgZm9yIHRoYXQuIEkgYXNzdW1lZCB0aGUgbGluZSdzIHN0
YXRlIGlzIG9ic2VydmFibGUgaW4gYW4KPj4+IGlycS1jb250cm9sbGVyIHNwZWNpZmljIHdheS4K
Pj4KPj4gVW5mb3J0dW5hdGVseSwgdGhhdCdzIG5vdCBhbHdheXMgdGhlIGNhc2UuIEFuZCBpZiB0
aGUgbXV4IGhhcyBiZWVuCj4+IGRlc2lnbmVkIGZvciBlZGdlLXNpZ25hbGxpbmcgb25seSwgdGhp
cyBwYXJ0aWN1bGFyIGZlYXR1cmUgaXMgdW5saWtlbHkKPj4gdG8gZXhpc3QgYmVjYXVzZSBpdCBt
YWtlcyBsaXR0bGUgc2Vuc2UgaW4gdGhpcyBjb250ZXh0ICh0aGUgaW5wdXQKPj4gZXZlbnRzIGFy
ZSBvbmx5IHRyYW5zaWVudCwgc28geW91IHdvdWxkbid0IG9ic2VydmUgbXVjaCkuIEluc3RlYWQs
IHlvdQo+PiB3b3VsZCBpbXBsZW1lbnQgYSBzZXQgb2YgbGF0Y2hlcy4KPj4KPj4gQnV0IHdobyBr
bm93cywgbWF5YmUgYXMgYSBkZWJ1ZyBmZWF0dXJlIChhbHRob3VnaCBsb29raW5nIGF0IHRoZSBU
Uk0KPj4gZGlkbid0IGxlYWQgdG8gYW55dGhpbmcgdXNlZnVsKS4uLgo+Pgo+Pj4+IERvaW5nIHRo
aXMga2luZCBvZiB0cmlja3MgaW4gMjAyMCBpcyBwcmV0dHkgcG9vciBmb3IgYSBtb2Rlcm4gU29D
Lgo+Pj4KPj4+IFdpdGggdGhlIGFib3ZlIGFzc3VtcHRpb24gZ2l2ZW4sIEkgdGhpbmsgdGhhdCBp
cyBvayBldmVuIGluIDIwMjAuIChCdXQgSQo+Pj4gd29uZGVyIGFib3V0IFNvQ3MgaW4gMjAyMCBu
b3QgYmVpbmcgYWJsZSB0byBoYW5kbGUgbGV2ZWwgc2Vuc2l0aXZlIGlycXMKPj4+IDotKQo+Pgo+
PiBRdWl0ZS4gU2VlbXMgaW5jcmVkaWJseSByZXN0cmljdGl2ZSwgYW5kIHZlcnkgdW5mb3J0dW5h
dGUuCj4gCj4gU28gSSB3b25kZXIsIHRoZSBFWFRJIHNob3VsZCBiZSBhYmxlIHRvIHJlYWQgdGhl
IEdQSU8gbGluZSB3aGljaCBjYXVzZWQKPiB0aGUgaW50ZXJydXB0IHdoZW4gdGhlIGludGVycnVw
dCBoYW5kbGVyIHJldHVybnMsIGFuZCB0cmlnZ2VyIHRoZQo+IGludGVycnVwdCBhZ2FpbiBpZiB0
aGUgbGluZSBpcyBzdGlsbCBsb3cuIFRoaXMgbWlnaHQgbmVlZCBzb21lIHBoYW5kbGUKPiBmcm9t
IHRoZSBFWFRJIHRvIEdQSU8gYmFuayBpbiBEVCwgYnV0IHNob3VsZCBiZSBnZW5lcmFsbHkgZG9h
YmxlLCBubyA/Cj4gSXQncyBhIGNydXRjaCBhbGwgcmlnaHQuCj4gCj4gQnV0IEkgc3RpbGwgd29u
ZGVyLCB3aGF0IGlzIHRoZSBwdXJwb3NlIG9mIHRoZSBFWFRJbXV4IGluIHRoYXQgU29DPwo+IFNo
b3VsZG4ndCB0aGF0IHBlcm1pdCByb3V0aW5nIEdQSU9zIGRpcmVjdGx5IGludG8gR0lDIFNQSXMs
IHdoaWNoIHdvdWxkCj4gdGhlbiBwZXJtaXQgZGV0ZWN0aW5nIGF0IGxlYXN0IGxldmVsLWhpZ2gg
aW50ZXJydXB0cyA/Cj4gCgpGb3IgdGhpcyBTb0MsIEVYVEkgYmxvY2sgZGV0ZWN0cyBleHRlcm5h
bCBsaW5lIGVkZ2VzIGFuZCByaXNlcyBhIEdJQyBTUEkgCmludGVycnVwdC4gVGhpcyBFWFRpIGJs
b2NrIGlzIG1haW5seSB1c2VkIHRvIGhhbmRsZSBIVyBldmVudHMgbGlrZSAKYnV0dG9ucywgY2xv
Y2tzIC4uLiBTbyBmaXJzdCBpc3N1ZSBzZWVtcyBtb3JlIHRvIGJlIGEgZGVzaWduIGlzc3VlICh5
b3VyIApkZXNpZ24gZG9lc24ndCBmaXQgd2l0aCBNUDEgZGF0YXNoZWV0KS4KCk5vdywgbGV0J3Mg
ZmluZCBhIHNvbHV0aW9uLiBJJ2xsIGhhdmUgYSBsb29rIG9uIHlvdXIgcHJvcG9zaXRpb246ICJj
aGVjayAKdGhlIGxpbmUgaW4gRU9JIGNhbGxiYWNrIGFuZCByZXRyaWciLgoKTWFyYywgdGhpcyBr
aW5kIGEgc29sdXRpb24gY291bGQgYmUgYWNjZXB0YWJsZSBvbiB5b3VyIHNpZGUgPwoKcmVnYXJk
cwpBbGV4CgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
