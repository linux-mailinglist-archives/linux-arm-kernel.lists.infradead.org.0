Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A72B18BF40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IW6pmVOtfklDqTi5Js2L8hDqoHcJ3xeuclNTkQSIMhk=; b=YF9hYOV8LuZ7st
	kfLdsKflY8pZIyJ8wKTGrP9siwb/vQzexWz8fX01Jn3gjCy3RKBYMMr+UIqGLnS8gcIougUxcl1Bc
	0IYXd1emCUpvuDZNj1HPPFxCDhCYrocQOB6tNbEd1sKKlbYLxaxJtQno3WiIB/Qj/BuMuLyMD3nPF
	53BbE6c8/JKzj+CG4B7QVFQ6YaZCAimJzjgcH5KjfNIBOm/7H6tEkCjyQqN5vevgNYyDaU3M/e26I
	pT94qYGoRcX+Gsem/nR/rg5CvOOsbQxwrQADiUhivN/jjbZ9R9iQd+cx/peJ0RSmVvKaDxSY79kiJ
	8phJnD33sTiOSO4VXKpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzlV-0005h9-Hy; Thu, 19 Mar 2020 18:19:33 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzl6-0005JH-G3; Thu, 19 Mar 2020 18:19:10 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JI8wHq080123;
 Thu, 19 Mar 2020 18:17:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=HXvLR8/3np/VEn4lQcPgfkQDXtCeUG1sWXEv4yIwMjg=;
 b=rmpVyB3d0/cWvHtU9RvF5VWb6i7rdQSOdwNYMXZ5oeoLYOUo/sWN/JFVznP4TARCd8/j
 IOZcupF92YGaCAal0s1483+WIxGL9ohqg+S6vn4mv0ZLtI6i+73jqJUxy/++kh21IAx6
 psTm0iugjrftvG1vtreP8z/8AhtmTionvoNYc5FGURy0BlrOXCHHWs6w8IOKxIXmgPsA
 tqY9g4VPq5KdtvZmjA7fhcxui2F7jvT92/u+ESkjswUWFiQ6i3uOitEqbhB1XvsjWMBY
 YJa5yi8fzQ+JWcuU6zZ3KN4HO7sVh44X2X+NQ5wlD/8IIDNn78qOXnLf6dnarU3i3pwi Ew== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2yrq7m9tpb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 18:17:55 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JIGdv1032600;
 Thu, 19 Mar 2020 18:17:54 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2ys8rmsrj4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 18:17:54 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02JIHoi9022986;
 Thu, 19 Mar 2020 18:17:50 GMT
Received: from [192.168.1.206] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Mar 2020 11:17:49 -0700
Subject: Re: [PATCH 1/4] hugetlbfs: add arch_hugetlb_valid_size
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-2-mike.kravetz@oracle.com>
 <c3071359-c5d3-4247-7f16-6f61b2fa0756@c-s.fr>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <c60fe230-462c-aa8c-be50-61c92840d7b7@oracle.com>
Date: Thu, 19 Mar 2020 11:17:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c3071359-c5d3-4247-7f16-6f61b2fa0756@c-s.fr>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 phishscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190077
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 adultscore=0 bulkscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_111908_636749_A7E8971A 
X-CRM114-Status: GOOD (  31.85  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: openpower.xyz (xyz)]
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

T24gMy8xOS8yMCAxMjowMCBBTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiBMZSAxOC8w
My8yMDIwIMOgIDIzOjA2LCBNaWtlIEtyYXZldHogYSDDqWNyaXQgOgo+PiBUaGUgYXJjaGl0ZWN0
dXJlIGluZGVwZW5kZW50IHJvdXRpbmUgaHVnZXRsYl9kZWZhdWx0X3NldHVwIHNldHMgdXAKPj4g
dGhlIGRlZmF1bHQgaHVnZSBwYWdlcyBzaXplLiAgSXQgaGFzIG5vIHdheSB0byB2ZXJpZnkgaWYg
dGhlIHBhc3NlZAo+PiB2YWx1ZSBpcyB2YWxpZCwgc28gaXQgYWNjZXB0cyBpdCBhbmQgYXR0ZW1w
dHMgdG8gdmFsaWRhdGUgYXQgYSBsYXRlcgo+PiB0aW1lLiAgVGhpcyByZXF1aXJlcyB1bmRvY3Vt
ZW50ZWQgY29vcGVyYXRpb24gYmV0d2VlbiB0aGUgYXJjaCBzcGVjaWZpYwo+PiBhbmQgYXJjaCBp
bmRlcGVuZGVudCBjb2RlLgo+Pgo+PiBGb3IgYXJjaGl0ZWN0dXJlcyB0aGF0IHN1cHBvcnQgbW9y
ZSB0aGFuIG9uZSBodWdlIHBhZ2Ugc2l6ZSwgcHJvdmlkZQo+PiBhIHJvdXRpbmUgYXJjaF9odWdl
dGxiX3ZhbGlkX3NpemUgdG8gdmFsaWRhdGUgYSBodWdlIHBhZ2Ugc2l6ZS4KPj4gaHVnZXRsYl9k
ZWZhdWx0X3NldHVwIGNhbiB1c2UgdGhpcyB0byB2YWxpZGF0ZSBwYXNzZWQgdmFsdWVzLgo+Pgo+
PiBhcmNoX2h1Z2V0bGJfdmFsaWRfc2l6ZSB3aWxsIGFsc28gYmUgdXNlZCBpbiBhIHN1YnNlcXVl
bnQgcGF0Y2ggdG8KPj4gbW92ZSBwcm9jZXNzaW5nIG9mIHRoZSAiaHVnZXBhZ2Vzej0iIGluIGFy
Y2ggc3BlY2lmaWMgY29kZSB0byBhIGNvbW1vbgo+PiByb3V0aW5lIGluIGFyY2ggaW5kZXBlbmRl
bnQgY29kZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWlrZSBLcmF2ZXR6IDxtaWtlLmtyYXZldHpA
b3JhY2xlLmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9odWdldGxiLmgg
ICB8ICAyICsrCj4+ICAgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jICAgICAgICB8IDE5ICsr
KysrKysrKysrKysrLS0tLS0KPj4gICBhcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vaHVnZXRsYi5o
IHwgIDMgKysrCj4+ICAgYXJjaC9wb3dlcnBjL21tL2h1Z2V0bGJwYWdlLmMgICAgICB8IDIwICsr
KysrKysrKysrKystLS0tLS0tCj4+ICAgYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9odWdldGxiLmgg
ICB8ICAzICsrKwo+PiAgIGFyY2gvcmlzY3YvbW0vaHVnZXRsYnBhZ2UuYyAgICAgICAgfCAyOCAr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tCj4+ICAgYXJjaC9zMzkwL2luY2x1ZGUvYXNtL2h1
Z2V0bGIuaCAgICB8ICAzICsrKwo+PiAgIGFyY2gvczM5MC9tbS9odWdldGxicGFnZS5jICAgICAg
ICAgfCAxOCArKysrKysrKysrKysrLS0tLS0KPj4gICBhcmNoL3NwYXJjL2luY2x1ZGUvYXNtL2h1
Z2V0bGIuaCAgIHwgIDMgKysrCj4+ICAgYXJjaC9zcGFyYy9tbS9pbml0XzY0LmMgICAgICAgICAg
ICB8IDIzICsrKysrKysrKysrKysrKystLS0tLS0tCj4+ICAgYXJjaC94ODYvaW5jbHVkZS9hc20v
aHVnZXRsYi5oICAgICB8ICAzICsrKwo+PiAgIGFyY2gveDg2L21tL2h1Z2V0bGJwYWdlLmMgICAg
ICAgICAgfCAyMSArKysrKysrKysrKysrKystLS0tLS0KPj4gICBpbmNsdWRlL2xpbnV4L2h1Z2V0
bGIuaCAgICAgICAgICAgIHwgIDcgKysrKysrKwo+PiAgIG1tL2h1Z2V0bGIuYyAgICAgICAgICAg
ICAgICAgICAgICAgfCAxNiArKysrKysrKysrKysrLS0tCj4+ICAgMTQgZmlsZXMgY2hhbmdlZCwg
MTI2IGluc2VydGlvbnMoKyksIDQzIGRlbGV0aW9ucygtKQo+Pgo+IAo+IFtzbmlwXQo+IAo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL2h1Z2V0bGIuaCBiL2FyY2gvcG93
ZXJwYy9pbmNsdWRlL2FzbS9odWdldGxiLmgKPj4gaW5kZXggYmQ2NTA0YzI4YzJmLi4zYjU5Mzkw
MTY5NTUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvcG93ZXJwYy9pbmNsdWRlL2FzbS9odWdldGxiLmgK
Pj4gKysrIGIvYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL2h1Z2V0bGIuaAo+PiBAQCAtNjQsNiAr
NjQsOSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgYXJjaF9jbGVhcl9odWdlcGFnZV9mbGFncyhzdHJ1
Y3QgcGFnZSAqcGFnZSkKPj4gICB7Cj4+ICAgfQo+PiAgICsjZGVmaW5lIGFyY2hfaHVnZXRsYl92
YWxpZF9zaXplIGFyY2hfaHVnZXRsYl92YWxpZF9zaXplCj4+ICtleHRlcm4gYm9vbCBfX2luaXQg
YXJjaF9odWdldGxiX3ZhbGlkX3NpemUodW5zaWduZWQgbG9uZyBsb25nIHNpemUpOwo+IAo+IERv
bid0IGFkZCAnZXh0ZXJuJyBrZXl3b3JkLCBpdCBpcyBpcnJlbGV2YW50IGZvciBhIGZ1bmN0aW9u
IGRlY2xhcmF0aW9uLgo+IAoKV2lsbCBkby4gIE9uZSBvZiB0aGUgb3RoZXIgYXJjaCdzIGRpZCB0
aGlzIGFuZCBJIGdvdCBpbnRvIGEgYmFkIGhhYml0LgoKPiBjaGVja3BhdGNoIC0tc3RyaWN0IGRv
ZXNuJ3QgbGlrZSBpdCBlaXRoZXIgKGh0dHBzOi8vb3BlbnBvd2VyLnh5ei9qb2Ivc25vd3BhdGNo
L2pvYi9zbm93cGF0Y2gtbGludXgtY2hlY2twYXRjaC8xMjMxOC8vYXJ0aWZhY3QvbGludXgvY2hl
Y2twYXRjaC5sb2cpCj4gCj4+ICsKPj4gICAjaW5jbHVkZSA8YXNtLWdlbmVyaWMvaHVnZXRsYi5o
Pgo+PiAgICAgI2Vsc2UgLyogISBDT05GSUdfSFVHRVRMQl9QQUdFICovCj4+IGRpZmYgLS1naXQg
YS9hcmNoL3Bvd2VycGMvbW0vaHVnZXRsYnBhZ2UuYyBiL2FyY2gvcG93ZXJwYy9tbS9odWdldGxi
cGFnZS5jCj4+IGluZGV4IDMzYjM0NjFkOTFlOC4uYjc4ZjY2MDI1MmYzIDEwMDY0NAo+PiAtLS0g
YS9hcmNoL3Bvd2VycGMvbW0vaHVnZXRsYnBhZ2UuYwo+PiArKysgYi9hcmNoL3Bvd2VycGMvbW0v
aHVnZXRsYnBhZ2UuYwo+PiBAQCAtNTU4LDcgKzU1OCw3IEBAIHVuc2lnbmVkIGxvbmcgdm1hX21t
dV9wYWdlc2l6ZShzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPj4gICAgICAgcmV0dXJuIHZt
YV9rZXJuZWxfcGFnZXNpemUodm1hKTsKPj4gICB9Cj4+ICAgLXN0YXRpYyBpbnQgX19pbml0IGFk
ZF9odWdlX3BhZ2Vfc2l6ZSh1bnNpZ25lZCBsb25nIGxvbmcgc2l6ZSkKPj4gK2Jvb2wgX19pbml0
IGFyY2hfaHVnZXRsYl92YWxpZF9zaXplKHVuc2lnbmVkIGxvbmcgbG9uZyBzaXplKQo+PiAgIHsK
Pj4gICAgICAgaW50IHNoaWZ0ID0gX19mZnMoc2l6ZSk7Cj4+ICAgICAgIGludCBtbXVfcHNpemU7
Cj4+IEBAIC01NjYsMjAgKzU2NiwyNiBAQCBzdGF0aWMgaW50IF9faW5pdCBhZGRfaHVnZV9wYWdl
X3NpemUodW5zaWduZWQgbG9uZyBsb25nIHNpemUpCj4+ICAgICAgIC8qIENoZWNrIHRoYXQgaXQg
aXMgYSBwYWdlIHNpemUgc3VwcG9ydGVkIGJ5IHRoZSBoYXJkd2FyZSBhbmQKPj4gICAgICAgICog
dGhhdCBpdCBmaXRzIHdpdGhpbiBwYWdldGFibGUgYW5kIHNsaWNlIGxpbWl0cy4gKi8KPj4gICAg
ICAgaWYgKHNpemUgPD0gUEFHRV9TSVpFIHx8ICFpc19wb3dlcl9vZl8yKHNpemUpKQo+PiAtICAg
ICAgICByZXR1cm4gLUVJTlZBTDsKPj4gKyAgICAgICAgcmV0dXJuIGZhbHNlOwo+PiAgICAgICAg
IG1tdV9wc2l6ZSA9IGNoZWNrX2FuZF9nZXRfaHVnZV9wc2l6ZShzaGlmdCk7Cj4+ICAgICAgIGlm
IChtbXVfcHNpemUgPCAwKQo+PiAtICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4gKyAgICAgICAg
cmV0dXJuIGZhbHNlOwo+PiAgICAgICAgIEJVR19PTihtbXVfcHNpemVfZGVmc1ttbXVfcHNpemVd
LnNoaWZ0ICE9IHNoaWZ0KTsKPj4gICAtICAgIC8qIFJldHVybiBpZiBodWdlIHBhZ2Ugc2l6ZSBo
YXMgYWxyZWFkeSBiZWVuIHNldHVwICovCj4+IC0gICAgaWYgKHNpemVfdG9faHN0YXRlKHNpemUp
KQo+PiAtICAgICAgICByZXR1cm4gMDsKPj4gKyAgICByZXR1cm4gdHJ1ZTsKPj4gK30KPj4gICAt
ICAgIGh1Z2V0bGJfYWRkX2hzdGF0ZShzaGlmdCAtIFBBR0VfU0hJRlQpOwo+PiArc3RhdGljIGlu
dCBfX2luaXQgYWRkX2h1Z2VfcGFnZV9zaXplKHVuc2lnbmVkIGxvbmcgbG9uZyBzaXplKQo+PiAr
ewo+PiArICAgIGludCBzaGlmdCA9IF9fZmZzKHNpemUpOwo+PiArCj4+ICsgICAgaWYgKCFhcmNo
X2h1Z2V0bGJfdmFsaWRfc2l6ZShzaXplKSkKPj4gKyAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4+
ICAgKyAgICBpZiAoIXNpemVfdG9faHN0YXRlKHNpemUpKQo+PiArICAgICAgICBodWdldGxiX2Fk
ZF9oc3RhdGUoc2hpZnQgLSBQQUdFX1NISUZUKTsKPj4gICAgICAgcmV0dXJuIDA7Cj4+ICAgfQo+
PiAgIAo+IAo+IFtzbmlwXQo+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvbW0vaHVnZXRsYnBh
Z2UuYyBiL2FyY2gveDg2L21tL2h1Z2V0bGJwYWdlLmMKPj4gaW5kZXggNWJmZDVhZWY1Mzc4Li41
MWU2MjA4ZmRlZWMgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gveDg2L21tL2h1Z2V0bGJwYWdlLmMKPj4g
KysrIGIvYXJjaC94ODYvbW0vaHVnZXRsYnBhZ2UuYwo+PiBAQCAtMTgxLDE2ICsxODEsMjUgQEAg
aHVnZXRsYl9nZXRfdW5tYXBwZWRfYXJlYShzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgbG9u
ZyBhZGRyLAo+PiAgICNlbmRpZiAvKiBDT05GSUdfSFVHRVRMQl9QQUdFICovCj4+ICAgICAjaWZk
ZWYgQ09ORklHX1g4Nl82NAo+PiArYm9vbCBfX2luaXQgYXJjaF9odWdldGxiX3ZhbGlkX3NpemUo
dW5zaWduZWQgbG9uZyBsb25nIHNpemUpCj4+ICt7Cj4+ICsgICAgaWYgKHNpemUgPT0gUE1EX1NJ
WkUpCj4+ICsgICAgICAgIHJldHVybiB0cnVlOwo+PiArICAgIGVsc2UgaWYgKHNpemUgPT0gUFVE
X1NJWkUgJiYgYm9vdF9jcHVfaGFzKFg4Nl9GRUFUVVJFX0dCUEFHRVMpKQo+PiArICAgICAgICBy
ZXR1cm4gdHJ1ZTsKPj4gKyAgICBlbHNlCj4+ICsgICAgICAgIHJldHVybiBmYWxzZTsKPj4gK30K
Pj4gKwo+PiAgIHN0YXRpYyBfX2luaXQgaW50IHNldHVwX2h1Z2VwYWdlc3ooY2hhciAqb3B0KQo+
PiAgIHsKPj4gLSAgICB1bnNpZ25lZCBsb25nIHBzID0gbWVtcGFyc2Uob3B0LCAmb3B0KTsKPj4g
LSAgICBpZiAocHMgPT0gUE1EX1NJWkUpIHsKPj4gLSAgICAgICAgaHVnZXRsYl9hZGRfaHN0YXRl
KFBNRF9TSElGVCAtIFBBR0VfU0hJRlQpOwo+PiAtICAgIH0gZWxzZSBpZiAocHMgPT0gUFVEX1NJ
WkUgJiYgYm9vdF9jcHVfaGFzKFg4Nl9GRUFUVVJFX0dCUEFHRVMpKSB7Cj4+IC0gICAgICAgIGh1
Z2V0bGJfYWRkX2hzdGF0ZShQVURfU0hJRlQgLSBQQUdFX1NISUZUKTsKPj4gKyAgICB1bnNpZ25l
ZCBsb25nIGxvbmcgcHMgPSBtZW1wYXJzZShvcHQsICZvcHQpOwo+PiArCj4+ICsgICAgaWYgKGFy
Y2hfaHVnZXRsYl92YWxpZF9zaXplKHBzKSkgewo+PiArICAgICAgICBodWdldGxiX2FkZF9oc3Rh
dGUoaWxvZzIocHMpIC0gUEFHRV9TSElGVCk7Cj4+ICAgICAgIH0gZWxzZSB7Cj4+ICAgICAgICAg
ICBodWdldGxiX2JhZF9zaXplKCk7Cj4+IC0gICAgICAgIHByaW50ayhLRVJOX0VSUiAiaHVnZXBh
Z2VzejogVW5zdXBwb3J0ZWQgcGFnZSBzaXplICVsdSBNXG4iLAo+PiArICAgICAgICBwcmludGso
S0VSTl9FUlIgImh1Z2VwYWdlc3o6IFVuc3VwcG9ydGVkIHBhZ2Ugc2l6ZSAlbGx1IE1cbiIsCj4+
ICAgICAgICAgICAgICAgcHMgPj4gMjApOwo+IAo+IE5vd2FkYXlzIHdlIHVzZSBwcl9lcnIoKSBp
bnN0ZWFkIG9mIHByaW50ay4KPiAKPiBJdCB3b3VsZCBhbHNvIGxpa2VseSBhbGxvdyB5b3UgdG8g
aGF2ZSBldmVyeXRoaW5nIGZpdCBvbiBhIHNpbmdsZSBsaW5lLgoKSSBtYXkganVzdCBsZWF2ZSB0
aGlzICdhcyBpcycgYXMgaXQgd2lsbCBiZSByZW1vdmVkIGluIGEgbGF0ZXIgcGF0Y2guCgo+PiAg
ICAgICAgICAgcmV0dXJuIDA7Cj4+ICAgICAgIH0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvaHVnZXRsYi5oIGIvaW5jbHVkZS9saW51eC9odWdldGxiLmgKPj4gaW5kZXggYjgzMWU5ZmEx
YTI2Li4zMzM0M2ViOTgwZDAgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvaHVnZXRsYi5o
Cj4+ICsrKyBiL2luY2x1ZGUvbGludXgvaHVnZXRsYi5oCj4+IEBAIC02NzgsNiArNjc4LDEzIEBA
IHN0YXRpYyBpbmxpbmUgc3BpbmxvY2tfdCAqaHVnZV9wdGVfbG9ja3B0cihzdHJ1Y3QgaHN0YXRl
ICpoLAo+PiAgICAgICByZXR1cm4gJm1tLT5wYWdlX3RhYmxlX2xvY2s7Cj4+ICAgfQo+PiAgICsj
aWZuZGVmIGFyY2hfaHVnZXRsYl92YWxpZF9zaXplCj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgYXJj
aF9odWdldGxiX3ZhbGlkX3NpemUodW5zaWduZWQgbG9uZyBsb25nIHNpemUpCj4+ICt7Cj4+ICsg
ICAgcmV0dXJuIChzaXplID09IEhQQUdFX1NJWkUpOwo+IAo+IE5vdCBzdXJlIHRoZSAoICkgYXJl
IG5lY2Vzc2FyeS4KCkxpa2VseSBub3QuICBJIHdpbGwgbG9vayBhdCByZW1vdmluZy4KCj4gCj4+
ICt9Cj4+ICsjZW5kaWYKPj4gKwo+PiAgICNpZm5kZWYgaHVnZXBhZ2VzX3N1cHBvcnRlZAo+PiAg
IC8qCj4+ICAgICogU29tZSBwbGF0Zm9ybSBkZWNpZGUgd2hldGhlciB0aGV5IHN1cHBvcnQgaHVn
ZSBwYWdlcyBhdCBib290Cj4+IGRpZmYgLS1naXQgYS9tbS9odWdldGxiLmMgYi9tbS9odWdldGxi
LmMKPj4gaW5kZXggZDhlYmQ4NzY4NzFkLi4yZjk5MzU5YjkzYWYgMTAwNjQ0Cj4+IC0tLSBhL21t
L2h1Z2V0bGIuYwo+PiArKysgYi9tbS9odWdldGxiLmMKPj4gQEAgLTMyMjQsMTIgKzMyMjQsMjIg
QEAgc3RhdGljIGludCBfX2luaXQgaHVnZXRsYl9ucnBhZ2VzX3NldHVwKGNoYXIgKnMpCj4+ICAg
fQo+PiAgIF9fc2V0dXAoImh1Z2VwYWdlcz0iLCBodWdldGxiX25ycGFnZXNfc2V0dXApOwo+PiAg
IC1zdGF0aWMgaW50IF9faW5pdCBodWdldGxiX2RlZmF1bHRfc2V0dXAoY2hhciAqcykKPj4gK3N0
YXRpYyBpbnQgX19pbml0IGRlZmF1bHRfaHVnZXBhZ2Vzel9zZXR1cChjaGFyICpzKQo+PiAgIHsK
Pj4gLSAgICBkZWZhdWx0X2hzdGF0ZV9zaXplID0gbWVtcGFyc2UocywgJnMpOwo+PiArICAgIHVu
c2lnbmVkIGxvbmcgbG9uZyBzaXplOwo+IAo+IFdoeSB1bnNpZ25lZCBsb25nIGxvbmcgPwo+IAo+
IGRlZmF1bHRfaHN0YXRlX3NpemUgaXMgbG9uZy4KCk9ubHkgYmVjYXVzZSBtZW1wYXJzZSBpcyBk
ZWZpbmVkIGFzIHVuc2lnbmVkIGxvbmcgbG9uZy4gIEkgYWN0dWFsbHkgdG9vawp0aGlzIGZyb20g
dGhlIGV4aXN0aW5nIHBvd2VycGMgaHVnZXRsYiBzZXR1cCBjb2RlLiAgVGhlcmUgYXJlIG5vIGNv
bXBpbGVyCndhcm5pbmdzL2lzc3VlcyBhc3NpZ25pbmcgdW5zaWduZWQgbG9uZyBsb25nIHRvIGxv
bmcgb24gNjQgYml0IGJ1aWxkcy4KVGhvdWdodCB0aGVyZSB3b3VsZCBiZSBvbiAzMiBiaXQgcGxh
dGZvcm1lcy4KClRoYXQgd2FzIGFsc28gdGhlIHJlYXNvbiBmb3IgbWFraW5nIHRoZSBhcmd1bWVu
dCB0byBhcmNoX2h1Z2V0bGJfdmFsaWRfc2l6ZQpiZSB1bnNpZ25lZCBsb25nIGxvbmcuICBTbyB0
aGF0IGl0IHdvdWxkIG1hdGNoIHRoZSB0eXBlIGZyb20gbWVtcGFyc2UuCkkgc3VwcG9zZSBtYWtp
bmcgdGhlc2UgdW5zaWduZWQgbG9uZyBhbmQgY2FzdGluZyB3b3VsZCBiZSBPSyBiYXNlZCBvbiB0
aGUKZXhwZWN0ZWQgc2l6ZXMuCgo+IAo+IEkgY2FuJ3QgaW1hZ2luZSAzMiBiaXRzIHBsYXRmb3Jt
cyBoYXZpbmcgYSBodWdlcGFnZSB3aXRoIGEgNjQgYml0cyBzaXplLgo+IAo+PiArICAgIGNoYXIg
KnNhdmVkX3MgPSBzOwo+PiArCj4+ICsgICAgc2l6ZSA9IG1lbXBhcnNlKHMsICZzKTsKPiAKPiBU
aGUgdXBkYXRlZCBzIGlzIG5vdCByZXVzZWQgYWZ0ZXIgdGhhdCBzbyB5b3UgY2FuIHBhc3MgTlVM
TCBpbnN0ZWFkIG9mICZzIGFuZCB0aGVuIHlvdSBkb24ndCBuZWVkIHRoZSBzYXZlZF9zLgo+IAoK
VGhhbmtzIGZvciB0aGlzIGFuZCBhbGwgdGhlIGNvbW1lbnRzLiAgSSB3aWxsIGluY29ycG9yYXRl
IGluIHYyLgotLSAKTWlrZSBLcmF2ZXR6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
