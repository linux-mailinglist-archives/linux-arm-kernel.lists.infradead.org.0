Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8819818BD98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rO6VPjtiQHHMBIuNqRdMTNw66V1PdP6pc7S2LceKRU=; b=mzHfWJrFk9cIzW
	NG/895l0SRzDS8iED12OCVsftFoAPI8udEXRMjhlU8GERZIf6vHJy5i5HEYIhenz5OabW4LlLlhZO
	mN26Q+IahCXy8TxXn+jjXO0ma617TYL85tzRY+6XqWeNlfc0EBnMSDbKZMe3LdFOP8nL77j0kdtoK
	eBNE33zSoonx5Y5eISA0WzyQABMgI/lsqcRHjNJreKeMLOhtlk/dgKgcbBowQ0if0xF54kpmlK0YK
	5sjYXl0m1/hbtDht4oFTU7jpVg1ljnGcjy9NDMNszOTOyF4DjIxSyQsnM/+I9/1rfM8Zg2elJInew
	ia0/tvHWXD7mEnZ1wmhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyec-0002WL-LL; Thu, 19 Mar 2020 17:08:22 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyeR-0002Uo-3R; Thu, 19 Mar 2020 17:08:12 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JGmttO114276;
 Thu, 19 Mar 2020 17:00:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=NPUm1EQJVtgWLM+t8BAch1GSQ3QvGTbOEaPKJ5CUYgc=;
 b=kekiTGkNqqwLecdSsDCvWSDHKiPSanlqw799v3S5DFviUWnOQ3ztxRngAFS7QVKVuacE
 H9fypgtnLfqIpxFhavkZBD1a0KagmuckYo9UcETMNO1iP4WtlY9820y30sxTyZBU/QAl
 w9Wn//zIzJHveGw/tKV6XN1dfwnJLt2KSUiQCTHSuoCDrQz6ImC0G3g1DYmT4pRJzde+
 lcbcd88a8M0kwISscWrYGjsJfKQEoBaxGtyAWoSsXZqwEYYjfirWeePzu2C0uf3zIBOA
 9A9/jYT1gvE+okRihBVBTU1phAcMxT9JD8fHCQnGjn0ZMFVm1KXd5kFQ6mqgsPmZ5dOY Tg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2yrpprhk34-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 17:00:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JGoqSX138311;
 Thu, 19 Mar 2020 17:00:45 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2ys8twc791-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 17:00:45 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02JH0aeb016891;
 Thu, 19 Mar 2020 17:00:36 GMT
Received: from [192.168.1.206] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Mar 2020 10:00:36 -0700
Subject: Re: [PATCH 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-3-mike.kravetz@oracle.com>
 <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <bb1c86b0-5d06-8999-5e3a-f9d20ca46fa1@oracle.com>
Date: Thu, 19 Mar 2020 10:00:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1011
 impostorscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_100811_185853_6F0364ED 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "David S.Miller" <davem@davemloft.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Andrew Morton <akpm@linux-foundation.org>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8xOS8yMCAxMjowNCBBTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBMZSAx
OC8wMy8yMDIwIMOgIDIzOjA2LCBNaWtlIEtyYXZldHogYSDDqWNyaXQgOgo+PiBOb3cgdGhhdCBh
cmNoaXRlY3R1cmVzIHByb3ZpZGUgYXJjaF9odWdldGxiX3ZhbGlkX3NpemUoKSwgcGFyc2luZwo+
PiBvZiAiaHVnZXBhZ2Vzej0iIGNhbiBiZSBkb25lIGluIGFyY2hpdGVjdHVyZSBpbmRlcGVuZGVu
dCBjb2RlLgo+PiBDcmVhdGUgYSBzaW5nbGUgcm91dGluZSB0byBoYW5kbGUgaHVnZXBhZ2Vzej0g
cGFyc2luZyBhbmQgcmVtb3ZlCj4+IGFsbCBhcmNoIHNwZWNpZmljIHJvdXRpbmVzLiAgV2UgY2Fu
IGFsc28gcmVtb3ZlIHRoZSBpbnRlcmZhY2UKPj4gaHVnZXRsYl9iYWRfc2l6ZSgpIGFzIHRoaXMg
aXMgbm8gbG9uZ2VyIHVzZWQgb3V0c2lkZSBhcmNoIGluZGVwZW5kZW50Cj4+IGNvZGUuCj4+Cj4+
IFRoaXMgYWxzbyBwcm92aWRlcyBjb25zaXN0ZW50IGJlaGF2aW9yIG9mIGh1Z2V0bGJmcyBjb21t
YW5kIGxpbmUKPj4gb3B0aW9ucy4gIFRoZSBodWdlcGFnZXN6PSBvcHRpb24gc2hvdWxkIG9ubHkg
YmUgc3BlY2lmaWVkIG9uY2UgZm9yCj4+IGEgc3BlY2lmaWMgc2l6ZSwgYnV0IHNvbWUgYXJjaGl0
ZWN0dXJlcyBhbGxvdyBtdWx0aXBsZSBpbnN0YW5jZXMuCj4+IFRoaXMgYXBwZWFycyB0byBiZSBt
b3JlIG9mIGFuIG92ZXJzaWdodCB3aGVuIGNvZGUgd2FzIGFkZGVkIGJ5IHNvbWUKPj4gYXJjaGl0
ZWN0dXJlcyB0byBzZXQgdXAgQUxMIGh1Z2UgcGFnZXMgc2l6ZXMuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IE1pa2UgS3JhdmV0eiA8bWlrZS5rcmF2ZXR6QG9yYWNsZS5jb20+Cj4+IC0tLQo+PiAgIGFy
Y2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYyAgIHwgMTUgLS0tLS0tLS0tLS0tLS0tCj4+ICAgYXJj
aC9wb3dlcnBjL21tL2h1Z2V0bGJwYWdlLmMgfCAxNSAtLS0tLS0tLS0tLS0tLS0KPj4gICBhcmNo
L3Jpc2N2L21tL2h1Z2V0bGJwYWdlLmMgICB8IDE2IC0tLS0tLS0tLS0tLS0tLS0KPj4gICBhcmNo
L3MzOTAvbW0vaHVnZXRsYnBhZ2UuYyAgICB8IDE4IC0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIGFy
Y2gvc3BhcmMvbW0vaW5pdF82NC5jICAgICAgIHwgMjIgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
PiAgIGFyY2gveDg2L21tL2h1Z2V0bGJwYWdlLmMgICAgIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQo+
PiAgIGluY2x1ZGUvbGludXgvaHVnZXRsYi5oICAgICAgIHwgIDEgLQo+PiAgIG1tL2h1Z2V0bGIu
YyAgICAgICAgICAgICAgICAgIHwgMjQgKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+ICAgOCBm
aWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxMDkgZGVsZXRpb25zKC0pCj4+Cj4gCj4g
W3NuaXBdCj4gCj4+IGRpZmYgLS1naXQgYS9tbS9odWdldGxiLmMgYi9tbS9odWdldGxiLmMKPj4g
aW5kZXggMmY5OTM1OWI5M2FmLi5jZDRlYzA3MDgwZmIgMTAwNjQ0Cj4+IC0tLSBhL21tL2h1Z2V0
bGIuYwo+PiArKysgYi9tbS9odWdldGxiLmMKPj4gQEAgLTMxNDksMTIgKzMxNDksNiBAQCBzdGF0
aWMgaW50IF9faW5pdCBodWdldGxiX2luaXQodm9pZCkKPj4gICB9Cj4+ICAgc3Vic3lzX2luaXRj
YWxsKGh1Z2V0bGJfaW5pdCk7Cj4+ICAgLS8qIFNob3VsZCBiZSBjYWxsZWQgb24gcHJvY2Vzc2lu
ZyBhIGh1Z2VwYWdlc3o9Li4uIG9wdGlvbiAqLwo+PiAtdm9pZCBfX2luaXQgaHVnZXRsYl9iYWRf
c2l6ZSh2b2lkKQo+PiAtewo+PiAtICAgIHBhcnNlZF92YWxpZF9odWdlcGFnZXN6ID0gZmFsc2U7
Cj4+IC19Cj4+IC0KPj4gICB2b2lkIF9faW5pdCBodWdldGxiX2FkZF9oc3RhdGUodW5zaWduZWQg
aW50IG9yZGVyKQo+PiAgIHsKPj4gICAgICAgc3RydWN0IGhzdGF0ZSAqaDsKPj4gQEAgLTMyMjQs
NiArMzIxOCwyNCBAQCBzdGF0aWMgaW50IF9faW5pdCBodWdldGxiX25ycGFnZXNfc2V0dXAoY2hh
ciAqcykKPj4gICB9Cj4+ICAgX19zZXR1cCgiaHVnZXBhZ2VzPSIsIGh1Z2V0bGJfbnJwYWdlc19z
ZXR1cCk7Cj4+ICAgK3N0YXRpYyBpbnQgX19pbml0IGh1Z2VwYWdlc3pfc2V0dXAoY2hhciAqcykK
Pj4gK3sKPj4gKyAgICB1bnNpZ25lZCBsb25nIGxvbmcgc2l6ZTsKPj4gKyAgICBjaGFyICpzYXZl
ZF9zID0gczsKPj4gKwo+PiArICAgIHNpemUgPSBtZW1wYXJzZShzLCAmcyk7Cj4gCj4gWW91IGRv
bid0IHVzZSBzIGFmdGVyIHRoYXQsIHNvIHlvdSBjYW4gcGFzcyBOVUxMIGluc3RlYWQgb2YgJnMg
YW5kIGF2b2lkIHRoZSBzYXZlZF9zCgpUaGFua3MhCgpJJ2xsIGluY29ycG9yYXRlIGluIHYyLgoK
LS0gCk1pa2UgS3JhdmV0egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
