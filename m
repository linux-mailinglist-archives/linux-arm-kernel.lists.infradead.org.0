Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB65152011
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Beyj+bjMcP0eO4oJWM8Uqc+YM+goGWFA1SFzvAK0y0o=; b=He6mHdP38DTgtn
	yneXKop+HvzdIPRRDY3WzruWWF8H191hA/3EefFe2su7EbrA9nX2F92SWmIVUjJHSiW+IHqy0Z2+P
	8CdZq9xrbkvp+Z0BCZddKX5gzRtl7CYpIrLR2zwiimEfaZTl3Wbwzre6H9QwHErK3X0Vys44QTHVU
	N5AqI64kkAO3pdyqRSyT0fnWShKLte78WifXAZdOHeI/TyvFgZomCJaRAp9/skydkd54jW1SDQ8rP
	tkBozHmTJ0bGY3VxxVW4/0fYmPQXwJlbVUsDHHK5V2pxAVx0ykU8OIEcf2u0piYMwS3zTAfLfpFCD
	5clJFcNEtmIfCa3iApeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2PR-0005tF-C6; Tue, 04 Feb 2020 17:54:49 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2PI-0005sm-6p
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:54:41 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 014HrFVZ192141;
 Tue, 4 Feb 2020 17:53:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=/K8bkH1tluP7AqL7A5f3qlqtdLKkacRQXpV1VnbEX58=;
 b=CbAgUNM8xdGO+4tR+vkDHikxaGnulHiTHVcPlTr45h1WaN+kHVZ93QdL3KjgbaeUemjE
 s5gJb/Ezs6mklvvIcvbbGHSRaAvtu5/pLiFFQxnal7DNdfdbRR/QR/MZ1O5t9MbwJ1Nz
 yCpfLEezeXvFO+2x170eFuhc1995C39LSCnEfhe8eFLIAZHo5qf/S+1YuepRum6eE1ok
 ifMak7JJHYO/JD13IxXFalU+ON4G7Gsuuzz+7coaqerRYOc/d4S9pzR+U9ybbkisN1B5
 7zJJkm3adUxRPfM6HLyYTa28L+zu3gYeShH1yn1i0JBWGPMFFBeGsS1hlcSK57gRcyTD 2w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xw0ru8ddp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Feb 2020 17:53:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 014HrloE163721;
 Tue, 4 Feb 2020 17:53:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2xxvusa5p5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Feb 2020 17:53:54 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 014HrngU027321;
 Tue, 4 Feb 2020 17:53:49 GMT
Received: from [10.11.111.157] (/10.11.111.157)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 04 Feb 2020 09:53:48 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <e26b3afa-80d6-71bf-39c8-0fa4b875cbb2@redhat.com>
Date: Tue, 4 Feb 2020 12:53:46 -0500
Message-Id: <B98581F8-DE4B-4DF6-B435-112993605E8E@oracle.com>
References: <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <20200125111931.GW11457@worktop.programming.kicks-ass.net>
 <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
 <20200203134540.GA14879@hirez.programming.kicks-ass.net>
 <6d11b22b-2fb5-7dea-f88b-b32f1576a5e0@redhat.com>
 <20200203152807.GK14914@hirez.programming.kicks-ass.net>
 <15fa978d-bd41-3ecb-83d5-896187e11244@redhat.com>
 <83762715-F68C-42DF-9B41-C4C48DF6762F@oracle.com>
 <20200204172758.GF14879@hirez.programming.kicks-ass.net>
 <e26b3afa-80d6-71bf-39c8-0fa4b875cbb2@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9521
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=857
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002040119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9521
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=907 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002040119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_095440_435726_F4FCD1DC 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEZlYiA0LCAyMDIwLCBhdCAxMjozOSBQTSwgV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4gT24gMi80LzIwIDEyOjI3IFBNLCBQZXRlciBaaWpsc3RyYSB3
cm90ZToKPj4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMTE6NTQ6MDJBTSAtMDUwMCwgQWxleCBL
b2dhbiB3cm90ZToKPj4+PiBPbiBGZWIgMywgMjAyMCwgYXQgMTA6NDcgQU0sIFdhaW1hbiBMb25n
IDxsb25nbWFuQHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+IAo+Pj4+IE9uIDIvMy8yMCAxMDoyOCBB
TSwgUGV0ZXIgWmlqbHN0cmEgd3JvdGU6Cj4+Pj4+IE9uIE1vbiwgRmViIDAzLCAyMDIwIGF0IDA5
OjU5OjEyQU0gLTA1MDAsIFdhaW1hbiBMb25nIHdyb3RlOgo+Pj4+Pj4gT24gMi8zLzIwIDg6NDUg
QU0sIFBldGVyIFppamxzdHJhIHdyb3RlOgo+Pj4+Pj4+IFByZXN1bWFibHkgeW91IGhhdmUgYSB3
b3JrbG9hZCB3aGVyZSBDTkEgaXMgYWN0dWFsbHkgYSB3aW4/IFRoYXQgaXMsCj4+Pj4+Pj4gd2hh
dCBpbnNwaXJlZCB5b3UgdG8gZ28gZG93biB0aGlzIHJvYWQ/IFdoaWNoIGFjdHVhbCBrZXJuZWwg
bG9jayBpcyBzbwo+Pj4+Pj4+IGNvbnRlbmRlZCBvbiBOVU1BIG1hY2hpbmVzIHRoYXQgd2UgbmVl
ZCB0byBkbyB0aGlzPwo+Pj4gVGhlcmUgYXJlIHF1aXRlIGEgZmV3IGFjdHVhbGx5LiBmaWxlc19z
dHJ1Y3QuZmlsZV9sb2NrLCBmaWxlX2xvY2tfY29udGV4dC5mbGNfbG9jawo+Pj4gYW5kIGxvY2ty
ZWYubG9jayBhcmUgc29tZSBjb25jcmV0ZSBleGFtcGxlcyB0aGF0IGdldCB2ZXJ5IGhvdCBpbiB3
aWxsLWl0LXNjYWxlCj4+PiBiZW5jaG1hcmtzLiAKPj4gUmlnaHQsIHRoYXQncyBhbGwgYSB2YXJp
YW50IG9mIGJhbmdpbmcgb24gdGhlIHNhbWUgcmVzb3VyY2VzIGFjcm9zcwo+PiBub2Rlcy4gSSdt
IG5vdCBzdXJlIHRoZXJlJ3MgYW55dGhpbmcgZnVuZGFtZW50YWwgd2UgY2FuIGZpeCB0aGVyZS4K
Tm90IG11Y2gsIGV4Y2VwdCBnYWluIHRoYXQgMnggZnJvbSBhIGJldHRlciBsb2NrLgoKPj4gCj4+
PiBBbmQgdGhlbiB0aGVyZSBhcmUgc3BpbmxvY2tzIGluIF9fZnV0ZXhfZGF0YS5xdWV1ZXMsIAo+
Pj4gd2hpY2ggZ2V0IGhvdCB3aGVuIGFwcGxpY2F0aW9ucyBoYXZlIGNvbnRlbmRlZCAocHRocmVh
ZCkgbG9ja3Mg4oCUIAo+Pj4gTGV2ZWxEQiBpcyBhbiBleGFtcGxlLgo+PiBBIG51bWEgYXdhcmUg
cmV3b3JrIG9mIGZ1dGV4ZXMgaGFzIGJlZW4gb24gdGhlIHRvZG8gbGlzdCBmb3IgeWVhcnMgOi8K
PiBOb3csIHdlIGFyZSBnb2luZyB0byBnZXQgdGhhdCBmb3IgZnJlZSB3aXRoIHRoaXMgcGF0Y2hz
ZXQ6LSkKRXhhY3RseSEhCgo+PiAKPj4+IE91ciBpbml0aWFsIG1vdGl2YXRpb24gd2FzIGJhc2Vk
IG9uIGFuIG9ic2VydmF0aW9uIHRoYXQga2VybmVsIHFzcGlubG9jayBpcyBub3QgCj4+PiBOVU1B
LWF3YXJlLiBTbyB3aGF0LCB5b3UgbWF5IGFzay4gTXVjaCBsaWtlIHBlb3BsZSByZWFsaXplZCBp
biB0aGUgcGFzdCB0aGF0Cj4+PiBnbG9iYWwgc3Bpbm5pbmcgaXMgYmFkIGZvciBwZXJmb3JtYW5j
ZSwgYW5kIHRoZXkgc3dpdGNoZWQgZnJvbSB0aWNrZXQgbG9jayB0bwo+Pj4gbG9ja3Mgd2l0aCBs
b2NhbCBzcGlubmluZyAoZS5nLiwgTUNTKSwgSSB0aGluayBldmVyeW9uZSB3b3VsZCBhZ3JlZSB0
aGVzZSBkYXlzIHRoYXQKPj4+IGJvdW5jaW5nIGEgbG9jayAoYW5kIGNhY2hlIGxpbmVzIGluIGdl
bmVyYWwpIGFjcm9zcyBudW1hIG5vZGVzIGlzIHNpbWlsYXJseSBiYWQuCj4+PiBBbmQgYXMgQ05B
IGRlbW9uc3RyYXRlcywgd2UgYXJlIGVhc2lseSBsZWF2aW5nIDItM3ggc3BlZWR1cHMgb24gdGhl
IHRhYmxlIGJ5Cj4+PiBkb2luZyBqdXN0IHRoYXQgd2l0aCB0aGUgY3VycmVudCBxc3BpbmxvY2su
Cj4+IEFjdHVhbCBiZW5jaG1hcmtzIHdpdGggcGVyZm9ybWFuY2UgbnVtYmVycyBhcmUgcmVxdWly
ZWQuIEl0IGhlbHBzCj4+IG1vdGl2YXRlIHRoZSBwYXRjaGVzIGFzIHdlbGwgYXMgZ2l2ZXMgcmV2
aWV3ZXJzIGNsdWVzIG9uIGhvdyB0bwo+PiByZXByb2R1Y2UgLyBpbnNwZWN0IHRoZSBjbGFpbXMg
bWFkZS4KPj4gCj4gSSB0aGluayB0aGUgY292ZXItbGV0dGVyIGRvZXMgaGF2ZSBzb21lIGJlbmNo
bWFyayByZXN1bHRzIGxpc3RlZC4KVG8gY2xhcmlmeSBvbiB0aGF0LCBJIF91c2VkIHRvIGluY2x1
ZGUgYmVuY2htYXJrIHJlc3VsdHMgaW4gdGhlIGNvdmVyIGxldHRlciAKZm9yIHByZXZpb3VzIHJl
dmlzaW9ucy4gSSBzdG9wcGVkIGRvaW5nIHRoYXQgYXMgdGhlIGNoYW5nZXMgYmV0d2VlbiByZXZp
c2lvbnMKd2VyZSByYXRoZXIgbWlub3Ig4oCUIG1heWJlIHRoYXQgaXMgdGhlIG1pc3NpbmcgcGFy
dD8gSWYgc28sIG15IGFwb2xvZ2llcywgSSBjYW4KY2VydGFpbmx5IHB1Ymxpc2ggdGhlbSBhZ2Fp
bi4KClRoZSBwb2ludCBpcyB0aGF0IHdlIGhhdmUgbnVtYmVycyBmb3IgYWN0dWFsIGJlbmNobWFy
a3MsIHBsdXMgdGhlIGtlcm5lbCBidWlsZApyb2JvdCBoYXMgc2VudCBxdWl0ZSBhIGZldyByZXBv
cnRzIG9uIHBvc2l0aXZlIGltcHJvdmVtZW50cyBpbiB0aGUgcGVyZm9ybWFuY2UKb2YgQUlNNyBh
bmQgb3RoZXIgYmVuY2htYXJrcyBkdWUgdG8gQ05BIChwbHVzIEFSTSBmb2xrcyBub3RpY2VkIGlt
cHJvdmVtZW50CmluIHRoZWlyIGJlbmNobWFya3MsIGFsdGhvdWdoIEkgdGhpbmsgdGhvc2Ugd2Vy
ZSBtb3N0bHkgbWljcm9iZW5jaG1hcmtzLiAKWWV0LCBpdCBpcyBldmlkZW50IHRoYXQgdGhlIGlt
cHJvdmVtZW50cyBhcmUgY3Jvc3MtcGxhdGZvcm0uKQoKUmVnYXJkcywK4oCUIEFsZXgKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
