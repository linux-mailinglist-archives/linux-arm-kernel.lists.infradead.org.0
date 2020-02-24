Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AA216AA02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:26:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sR1YPbEqOun5/+nZ+XYgODXgFmLmjLheW3DBY879430=; b=RN9RxLBS9GPtJJ
	i0kCLrL+bGXJal4AVAdVUmJiA7CymZT1KXDfDYgGs8bhLbN9YPR2arVkOdbTUIipuao/ZnolKaFv1
	wchZXUAKnw2zWow8nuSJI4hhRz1x/7Rtr7/jqIhJzt7d9x3CdOaWbIr5Ogg2GSGVxLzGwa6S5VTTP
	7MI/6GemNUHAvvjI7o05xS36hCNVlhKLm2F1WxmYnYB4AcJZjWfmjlQ5S7AzBaipn6Qhtr/O40lby
	JO892jkPblFv9xHZg1INYJV7gVu42Z+Caa5h74kVOU96tzvapqousZGnK7BvZINaIrC+dCAuGp2tr
	mHu1ORhnl0YswgXbQ5zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FcJ-0007kq-0p; Mon, 24 Feb 2020 15:25:55 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Fc5-0007jD-SP; Mon, 24 Feb 2020 15:25:43 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01OFIwwK031537;
 Mon, 24 Feb 2020 15:25:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=fx8T9PWqiKhA8Xj+J1BpIcgR6man23w92s+Rx+tkFg4=;
 b=zzE+6LMZmRR77C0iy5mnsXvBSQx1M9JdXOad7AMTC+576RwvCtLMgjQdeiZG1xVDhbj0
 US+FhHA/ZxqOhzORTO0F8Ormxzk/qOxX32aPbIYPeTGZav9tLh734lUPlI0Wi3E0maXW
 EYwFzhxToa/cKBhGjVSfFymR6ZlduHRrGor3+5OX2rL09mQmzU7regW+36MaS5++zaMz
 vzLPGf75u1IcR9jOP7YuHLKxN9NPMAvZuBxHf3zMjGCy0s6+GtORfOdXXxF8RDo31SeL
 53MVo5rGGvEFRpzZoBzmoJwUrNUgKYJwt8cQL0V9vM7KRiF3GaPm01MQgv+tuSy0gIxg KQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2yavxrfykw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 15:25:20 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01OFIOgP041025;
 Mon, 24 Feb 2020 15:25:20 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2ybe11frf5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 15:25:20 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01OFPDcv023765;
 Mon, 24 Feb 2020 15:25:13 GMT
Received: from [10.39.217.189] (/10.39.217.189)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Feb 2020 07:25:13 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v7 1/4] x86: kdump: move reserve_crashkernel_low() into
 crash_core.c
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <08C19FFB-C6FC-4BB7-A1C2-67CE6B99D2AB@oracle.com>
Date: Mon, 24 Feb 2020 09:25:09 -0600
Message-Id: <73F5F438-0B79-418D-8AA7-B1164D10AA24@oracle.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-2-chenzhou10@huawei.com>
 <20191227055458.GA14893@dhcp-128-65.nay.redhat.com>
 <09d42854-461b-e85c-ba3f-0e1173dc95b5@huawei.com>
 <20191228093227.GA19720@dhcp-128-65.nay.redhat.com>
 <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
 <08C19FFB-C6FC-4BB7-A1C2-67CE6B99D2AB@oracle.com>
To: James Morse <james.morse@arm.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9541
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002240125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9541
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 lowpriorityscore=0
 spamscore=0 clxscore=1011 suspectscore=0 bulkscore=0 mlxlogscore=999
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002240125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_072541_962274_8B37AB86 
X-CRM114-Status: GOOD (  28.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild test robot <lkp@intel.com>, linux-doc@vger.kernel.org,
 Chen Zhou <chenzhou10@huawei.com>, catalin.marinas@arm.com,
 bhsharma@redhat.com, xiexiuqi@huawei.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dave Young <dyoung@redhat.com>,
 horms@verge.net.au, tglx@linutronix.de, will@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAxNiwgMjAyMCwgYXQgOTo0NyBBTSwgSm9obiBEb25uZWxseSA8am9obi5wLmRv
bm5lbGx5QG9yYWNsZS5jb20+IHdyb3RlOgo+IAo+IAo+IAo+PiBPbiBKYW4gMTYsIDIwMjAsIGF0
IDk6MTcgQU0sIEphbWVzIE1vcnNlIDxqYW1lcy5tb3JzZUBhcm0uY29tPiB3cm90ZToKPj4gCj4+
IEhpIGd1eXMsCj4+IAo+PiBPbiAyOC8xMi8yMDE5IDA5OjMyLCBEYXZlIFlvdW5nIHdyb3RlOgo+
Pj4gT24gMTIvMjcvMTkgYXQgMDc6MDRwbSwgQ2hlbiBaaG91IHdyb3RlOgo+Pj4+IE9uIDIwMTkv
MTIvMjcgMTM6NTQsIERhdmUgWW91bmcgd3JvdGU6Cj4+Pj4+IE9uIDEyLzIzLzE5IGF0IDExOjIz
cG0sIENoZW4gWmhvdSB3cm90ZToKPj4+Pj4+IEluIHByZXBhcmF0aW9uIGZvciBzdXBwb3J0aW5n
IHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93IGluIGFybTY0IGFzCj4+Pj4+PiB4ODZfNjQgZG9lcywg
bW92ZSByZXNlcnZlX2NyYXNoa2VybmVsX2xvdygpIGludG8ga2VybmVsL2NyYXNoX2NvcmUuYy4K
Pj4+Pj4+IAo+Pj4+Pj4gTm90ZSwgaW4gYXJtNjQsIHdlIHJlc2VydmUgbG93IG1lbW9yeSBpZiBh
bmQgb25seSBpZiBjcmFzaGtlcm5lbD1YLGxvdwo+Pj4+Pj4gaXMgc3BlY2lmaWVkLiBEaWZmZXJl
bnQgd2l0aCB4ODZfNjQsIGRvbid0IHNldCBsb3cgbWVtb3J5IGF1dG9tYXRpY2FsbHkuCj4+Pj4+
IAo+Pj4+PiBEbyB5b3UgaGF2ZSBhbnkgcmVhc29uIGZvciB0aGUgZGlmZmVyZW5jZT8gIEknZCBl
eHBlY3Qgd2UgaGF2ZSBzYW1lCj4+Pj4+IGxvZ2ljIGlmIHBvc3NpYmxlIGFuZCByZW1vdmUgc29t
ZSBvZiB0aGUgaWZkZWZzLgo+Pj4+IAo+Pj4+IEluIHg4Nl82NCwgaWYgd2UgcmVzZXJ2ZSBjcmFz
aGtlcm5lbCBhYm92ZSA0RywgdGhlbiB3ZSBjYWxsIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkK
Pj4+PiB0byByZXNlcnZlIGxvdyBtZW1vcnkuCj4+Pj4gCj4+Pj4gSW4gYXJtNjQsIHRvIHNpbXBs
aWZ5LCB3ZSBjYWxsIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgYXQgdGhlIGJlZ2lubmluZyBv
ZiByZXNlcnZlX2NyYXNoa2VybmVsKCkKPj4+PiBhbmQgdGhlbiByZWxheCB0aGUgYXJtNjRfZG1h
MzJfcGh5c19saW1pdCBpZiByZXNlcnZlX2NyYXNoa2VybmVsX2xvdygpIGFsbG9jYXRlZCBzb21l
dGhpbmcuCj4+Pj4gSW4gdGhpcyBjYXNlLCBpZiByZXNlcnZlIGNyYXNoa2VybmVsIGJlbG93IDRH
IHRoZXJlIHdpbGwgYmUgMjU2TSBsb3cgbWVtb3J5IHNldCBhdXRvbWF0aWNhbGx5Cj4+Pj4gYW5k
IHRoaXMgbmVlZHMgZXh0cmEgY29uc2lkZXJhdGlvbnMuCj4+IAo+Pj4gU29ycnkgdGhhdCBJIGRp
ZCBub3QgcmVhZCB0aGUgb2xkIHRocmVhZCBkZXRhaWxzIGFuZCB0aG91Z2h0IHRoYXQgaXMKPj4+
IGFyY2ggZGVwZW5kZW50LiAgQnV0IHJldGhpbmsgYWJvdXQgdGhhdCwgaXQgd291bGQgYmUgYmV0
dGVyIHRoYXQgd2UgY2FuCj4+PiBoYXZlIHNhbWUgc2VtYW50aWMgYWJvdXQgY3Jhc2hrZXJuZWwg
cGFyYW1ldGVycyBhY3Jvc3MgYXJjaGVzLiAgSWYgd2UKPj4+IG1ha2UgdGhlbSBkaWZmZXJlbnQg
dGhlbiBpdCBjYXVzZXMgY29uZnVzaW9uLCBlc3BlY2lhbGx5IGZvcgo+Pj4gZGlzdHJpYnV0aW9u
cy4KPj4gCj4+IFN1cmVseSBkaXN0cm9zIGFsc28gd2FudCBvbmUgY3Jhc2hrZXJuZWwqIHN0cmlu
ZyB0aGV5IGNhbiB1c2Ugb24gYWxsIHBsYXRmb3JtcyB3aXRob3V0Cj4+IGhhdmluZyB0byBkZXRl
Y3QgdGhlIGtlcm5lbCB2ZXJzaW9uLCBwbGF0Zm9ybSBvciBjaGFuZ2VhYmxlIG1lbW9yeSBsYXlv
dXQuLi4KPj4gCj4+IAo+Pj4gT1RPSCwgSSB0aG91Z2h0IGlmIHdlIHJlc2VydmUgaGlnaCBtZW1v
cnkgdGhlbiB0aGUgbG93IG1lbW9yeSBzaG91bGQgYmUKPj4+IG5lZWRlZC4gIFRoZXJlIG1pZ2h0
IGJlIHNvbWUgZXhjZXB0aW9ucywgYnV0IEkgZG8gbm90IGtub3cgdGhlIGV4YWN0Cj4+PiBvbmUs
Cj4+IAo+Pj4gY2FuIHdlIG1ha2UgdGhlIGJlaGF2aW9yIHNhbWUsIGFuZCBzcGVjaWFsIGNhc2Ug
dGhvc2Ugc3lzdGVtcyB3aGljaAo+Pj4gZG8gbm90IG5lZWQgbG93IG1lbW9yeSByZXNlcnZhdGlv
bi4KPj4gCj4+IEl0cyB0cmlja3kgdG8gd29yayBvdXQgd2hpY2ggc3lzdGVtcyBhcmUgdGhlICdu
b3JtYWwnIG9uZXMuCj4+IAo+PiBXZSBkb24ndCBoYXZlIGEgZml4ZWQgbWVtb3J5IGxheW91dCBm
b3IgYXJtNjQuIFNvbWUgc3lzdGVtcyBoYXZlIG5vIG1lbW9yeSBiZWxvdyA0Ry4KPj4gT3RoZXJz
IGhhdmUgbm8gbWVtb3J5IGFib3ZlIDRHLgo+PiAKPj4gQ2hlbiBaaG91J3MgbWFjaGluZSBoYXMg
c29tZSBtZW1vcnkgYmVsb3cgNEcsIGJ1dCBpdHMgdG9vIHByZWNpb3VzIHRvIHJlc2VydmUgYSBs
YXJnZQo+PiBjaHVuayBmb3Iga2R1bXAuIFdpdGhvdXQgYW55IG1lbW9yeSBiZWxvdyA0RyBzb21l
IG9mIHRoZSBkcml2ZXJzIHdvbid0IHdvcmsuCj4+IAo+PiBJIGRvbid0IHNlZSB3aGF0IGRpc3Ry
b3MgY2FuIHNldCBhcyB0aGVpciBkZWZhdWx0IGZvciBhbGwgcGxhdGZvcm1zIGlmIGhpZ2gvbG93
IGFyZQo+PiBtdXR1YWxseSBleGNsdXNpdmUgd2l0aCB0aGUgJ2NyYXNoa2VybmVsPScgaW4gdXNl
IHRvZGF5LiBIb3cgZGlkIHg4NiBuYXZpZ2F0ZSB0aGlzLCAuLi4gb3IKPj4gd2FzIGl0IHNvIGxv
bmcgYWdvPwo+PiAKPj4gTm8gb25lIGVsc2UgaGFzIHJlcG9ydGVkIGEgcHJvYmxlbSB3aXRoIHRo
ZSBleGlzdGluZyBwbGFjZW1lbnQgbG9naWMsIGhlbmNlIHRyZWF0aW5nIHRoaXMKPj4gJ2xvdycg
dGhpbmcgYXMgdGhlICdpbiBhZGRpdGlvbicgc3BlY2lhbCBjYXNlLgo+IAo+IAo+IEhpLAo+IAo+
IEkgYW0gc2VlaW5nIHNpbWlsYXIgIEFybSBjcmFzaCBkdW1wIGlzc3VlcyAgb24gIDUuNCBrZXJu
ZWxzICB3aGVyZSB3ZSBuZWVkICByYXRoZXIgbGFyZ2UgYW1vdW50IG9mIGNyYXNoa2VybmVsIG1l
bW9yeSByZXNlcnZlZCB0aGF0IGlzIG5vdCBhdmFpbGFibGUgYmVsb3cgNEdCICggVGhlIG1heGlt
dW0gcmVzZXJ2ZWQgc2l6ZSBhcHBlYXJzIHRvIGJlIGFyb3VuZCA3NjhNICkgLiBXaGVuIEkgcGlj
ayBtZW1vcnkgcmFuZ2UgaGlnaGVyIHRoYW4gNEdCICwgSSBzZWUgIGFkYXB0ZXJzIHRoYXQgZmFp
bCB0byBpbml0aWFsaXplIDoKPiAKPiAKPiBUaGVyZSBpcyBubyBsb3ctbWVtb3J5ICA8NEcgIG1l
bW9yeSBmb3IgRE1BIDsgICAgIAo+IAo+IFsgICAxMS41MDY3OTJdIGt3b3JrZXIvMDoxNDogcGFn
ZSBhbGxvY2F0aW9uIGZhaWx1cmU6IG9yZGVyOjAsIAo+IG1vZGU6MHgxMDQoR0ZQX0RNQTMyfF9f
R0ZQX1pFUk8pLCBub2RlbWFzaz0obnVsbCksY3B1c2V0PS8sbWVtc19hbGxvd2VkPTAgCj4gWyAg
IDExLjUxODc5M10gQ1BVOiAwIFBJRDogMTUwIENvbW06IGt3b3JrZXIvMDoxNCBOb3QgdGFpbnRl
ZCAKPiA1LjQuMC0xOTQ4LjMuZWw4dWVrLmFhcmNoNjQgIzEgCj4gWyAgIDExLjUyNjk1NV0gSGFy
ZHdhcmUgbmFtZTogVG8gYmUgZmlsbGVkIGJ5IE8uRS5NLiBTYWJlci9TYWJlciwgQklPUyAKPiAw
QUNLTDAyNSAwMS8xOC8yMDE5IAo+IFsgICAxMS41MzQ5NDhdIFdvcmtxdWV1ZTogZXZlbnRzIHdv
cmtfZm9yX2NwdV9mbiAKPiBbICAgMTEuNTM5MjkxXSBDYWxsIHRyYWNlOiAKPiBbICAgMTEuNTQx
NzI3XSAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MThjIAo+IFsgICAxMS41NDUzNzZdICBzaG93X3N0
YWNrKzB4MjQvMHgzMCAKPiBbICAgMTEuNTQ4Njc5XSAgZHVtcF9zdGFjaysweGJjLzB4ZTAgCj4g
WyAgIDExLjU1MTk4Ml0gIHdhcm5fYWxsb2MrMHhmMC8weDE1YyAKPiBbICAgMTEuNTU1MzcwXSAg
X19hbGxvY19wYWdlc19zbG93cGF0aCsweGI0Yy8weGI4NCAKPiBbICAgMTEuNTU5ODg3XSAgX19h
bGxvY19wYWdlc19ub2RlbWFzaysweDJkMC8weDMzMCAKPiBbICAgMTEuNTY0NDA1XSAgYWxsb2Nf
cGFnZXNfY3VycmVudCsweDhjLzB4ZjggCj4gWyAgIDExLjU2ODQ5Nl0gIHR0bV9ib19kZXZpY2Vf
aW5pdCsweDE4OC8weDIyMCBbdHRtXSAKPiBbICAgMTEuNTczMTg3XSAgZHJtX3ZyYW1fbW1faW5p
dCsweDU4LzB4ODAgW2RybV92cmFtX2hlbHBlcl0gCj4gWyAgIDExLjU3ODU3Ml0gIGRybV92cmFt
X2hlbHBlcl9hbGxvY19tbSsweDY0LzB4YjAgW2RybV92cmFtX2hlbHBlcl0gCj4gWyAgIDExLjU4
NDY1NV0gIGFzdF9tbV9pbml0KzB4MzgvMHg4MCBbYXN0XSAKPiBbICAgMTEuNTg4NTY2XSAgYXN0
X2RyaXZlcl9sb2FkKzB4NDc0LzB4YTcwIFthc3RdIAo+IFsgICAxMS41OTMwMjldICBkcm1fZGV2
X3JlZ2lzdGVyKzB4MTQ0LzB4MWM4IFtkcm1dIAo+IFsgICAxMS41OTc1NzNdICBkcm1fZ2V0X3Bj
aV9kZXYrMHhhNC8weDE2OCBbZHJtXSAKPiBbICAgMTEuNjAxOTE5XSAgYXN0X3BjaV9wcm9iZSsw
eDhjLzB4OWMgW2FzdF0gCj4gWyAgIDExLjYwNjAwNF0gIGxvY2FsX3BjaV9wcm9iZSsweDQ0LzB4
OTggCj4gWyAgIDExLjYwOTczOV0gIHdvcmtfZm9yX2NwdV9mbisweDIwLzB4MzAgCj4gWyAgIDEx
LjYxMzQ3NF0gIHByb2Nlc3Nfb25lX3dvcmsrMHgxYzQvMHg0MWMgCj4gWyAgIDExLjYxNzQ3MF0g
IHdvcmtlcl90aHJlYWQrMHgxNTAvMHg0YjAgCj4gWyAgIDExLjYyMTIwNl0gIGt0aHJlYWQrMHgx
MTAvMHgxMTQgCj4gWyAgIDExLjYyNDQyMl0gIHJldF9mcm9tX2ZvcmsrMHgxMC8weDE4IAo+IAo+
IFRoaXMgZmFpbHVyZSBpcyByZWxhdGVkIHRvIGEgZ3JhcGhpY3MgYWRhcHRlci4gCj4gCj4gVGhl
IG1vcmUgY29tcGxleCBrZHVtcCBjb25maWd1cmF0aW9ucyB0aGF0IHVzZSBuZXR3b3JraW5nIHN0
YWNrIHRvIE5GUyBtb3VudCBhIGZpbGVzeXN0ZW0gdG8gZHVtcCB0byAsIG9yIHVzZSBzc2ggdG8g
Y29weSB0byBhbm90aGVyIG1hY2hpbmUsICByZXF1aXJlIG1vcmUgY3Jhc2hrZXJuZWwgbWVtb3J5
IHJlc2VydmF0aW9ucyB0aGFuIHBlcmhhcHMgdGhlIOKAnGRlZmF1bHQq4oCdIHNldHRpbmdzIG9m
ICBhIG1pbmltYWwga2R1bXAgdGhhdCBjcmVhdGVzIGEgbWluaW1hbCAgdm1jb3JlIHRvIGxvY2Fs
IHN0b3JhZ2UgaW4gIC92YXIvY3Jhc2guIElmIGNyYXNoa2VybmVsIGlzIHRvbyBzbWFsbCBJIGdl
dCBPdXQgb2YgTWVtb3J5IGlzc3VlcyBhbmQgdGhlIGVudGlyZSB2bWNvcmUgIHByb2Nlc3MgZmFp
bHMuIAo+IAo+ICggKmRlZmF1bHQga2R1bXAgc2V0dGluZyBJIGFzc3VtZSBhcmUgYSBtaW5pbWFs
IHZtY29yZSB0byAvdmFyL2NyYXNoIHVzaW5nIHByaW1hcnkgYm9vdCBkZXZpY2Ugd2hlcmUgL3Jv
b3QgaXMgbG9jYXRlZCAgKSAKPiAKSGkgQ2hlbiwKCgpJIHdhcyBhYmxlIHRvIHVuaXQgdGVzdCB0
aGVzZSBzZXJpZXMgb2Yga2VybmVsICBwYXRjaGVzICBhcHBsaWVkIHRvIGEgNS40LjE3IHRlc3Qg
a2VybmVsICBhbG9uZyB3aXRoIHRoZSBrZXhlYyBDTEkgIGNoYW5nZSA6CgowMDAxLWFybTY0LWtk
dW1wLWFkZC1hbm90aGVyLURULXByb3BlcnR5LXRvLWNyYXNoLWR1bXAta2UucGF0Y2gKCkFwcGxp
ZWQgdG8gOgoKa2V4ZWMtdG9vbHMtMi4wLjE5LTEyLjAuNC5lbDguc3JjLnJwbQoKQW5kIG9idGFp
bmVkIGEgdm1jb3JlIHVzaW5nIHRoaXMgY21kbGluZSA6CgpCT09UX0lNQUdFPShoZDYsZ3B0Mikv
dm1saW51ei01LjQuMTctNC11ZWs2bV9vbDgtanBkb25uZWwrIHJvb3Q9L2Rldi9tYXBwZXIvb2ww
MS1yb290IHJvIGNyYXNoa2VybmVsPTIwNDhNQDM1RyBjcmFzaGtlcm5lbD0yNTBNLGxvdyByZC5s
dm0ubHY9b2wwMS9yb290IHJkLmx2bS5sdj1vbDAxL3N3YXAgY29uc29sZT10dHlTNCBsb2dsZXZl
bD03CgpDYW4geW91IGFkZCA6CgpUZXN0ZWQtYnk6IEpvaG4gRG9ubmVsbHkgPEpvaG4ucC5kb25u
ZWxseUBvcmFjbGUuY29tPgoKCkhvdyBjYW4gd2UgIGdldCB0aGVzZSBjaGFuZ2VzIGluY2x1ZGVk
IGludG8gYW4gcmMga2VybmVsIHJlbGVhc2UgID8KClRoYW5rcywKCkpvaG4uCgoKPiAKPiAKPiAK
Pj4gCj4+IAo+Pj4+IHByZXZpb3VzIGRpc2N1c3NlczoKPj4+PiAJaHR0cHM6Ly91cmxkZWZlbnNl
LnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19sa21sLm9yZ19sa21sXzIwMTlfNl81
XzY3MCZkPUR3SUNBZyZjPVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1ZWFwSV9K
bkUmcj10MmZQZzlEODdGN0Q4am0wXzNDRzl5b2lJS2RSZzRxY190aEJ3NGJ6TWhjJm09ak9BdTFE
VERwb2hzV3N6YWxmVENZeDQ2ZUdGMTlUU1dWTGNoTjV5QlBnayZzPWdTOUJMT2ttajc4bFA1TDdT
UDZfVkxId3ZQMjQ5dVdLYUUyUjdON3N4Z00mZT0gCj4+Pj4gCWh0dHBzOi8vdXJsZGVmZW5zZS5w
cm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fbGttbC5vcmdfbGttbF8yMDE5XzZfMTNf
MjI5JmQ9RHdJQ0FnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0pu
RSZyPXQyZlBnOUQ4N0Y3RDhqbTBfM0NHOXlvaUlLZFJnNHFjX3RoQnc0YnpNaGMmbT1qT0F1MURU
RHBvaHNXc3phbGZUQ1l4NDZlR0YxOVRTV1ZMY2hONXlCUGdrJnM9VTFOaXMyOW4zQTdYU0J6RUQ1
M2ZpRTRNREF2NU5seFlwMVVvcnZ2Qk9PdyZlPSAKPj4+IAo+Pj4gQW5vdGhlciBjb25jZXJuIGZy
b20gSmFtZXM6Cj4+PiAiCj4+PiBXaXRoIGJvdGggY3Jhc2hrX2xvd19yZXMgYW5kIGNyYXNoa19y
ZXMsIHdlIGVuZCB1cCB3aXRoIHR3byBlbnRyaWVzIGluIC9wcm9jL2lvbWVtIGNhbGxlZAo+Pj4g
IkNyYXNoIGtlcm5lbCIuIEJlY2F1c2UgaXRzIHNvcnRlZCBieSBhZGRyZXNzLCBhbmQga2V4ZWMt
dG9vbHMgc3RvcHMgc2VhcmNoaW5nIHdoZW4gaXQKPj4+IGZpbmQgIkNyYXNoIGtlcm5lbCIsIHlv
dSBhcmUgYWx3YXlzIGdvaW5nIHRvIGdldCB0aGUga2VybmVsIHBsYWNlZCBpbiB0aGUgbG93ZXIg
cG9ydGlvbi4KPj4+ICIKPj4+IAo+Pj4gVGhlIGtleGVjLXRvb2xzIGNvZGUgaXMgaXRlcmF0aW5n
IGFsbCAiQ3Jhc2gga2VybmVsIiByYW5nZXMgYW5kIGFkZCB0aGVtCj4+PiBpbiBhbiBhcnJheS4g
IEluIFg4NiBjb2RlLCBpdCB1c2VzIHRoZSBoaWdoZXIgcmFuZ2UgdG8gbG9jYXRlIG1lbW9yeS4K
Pj4gCj4+IFRoZW4gbXkgaHVycmllZCByZWFkaW5nIG9mIHdoYXQgdGhlIHVzZXItc3BhY2UgY29k
ZSBkb2VzIHdhcyB3cm9uZyEKPj4gCj4+IElmIGtleGVjLXRvb2xzIHBsYWNlcyB0aGUga2VybmVs
IGluIHRoZSBsb3cgcmVnaW9uLCB0aGVyZSBtYXkgbm90IGJlIGVub3VnaCBtZW1vcnkgbGVmdAo+
PiBmb3Igd2hhdGV2ZXIgcHVycG9zZSBpdCB3YXMgcmVzZXJ2ZWQgZm9yLiBUaGlzIHdhcyB0aGUg
bW90aXZhdGlvbiBmb3IgZ2l2aW5nIGl0IGEKPj4gZGlmZmVyZW50IG5hbWUuCj4+IAo+PiAKPj4g
VGhhbmtzLAo+PiAKPj4gSmFtZXMKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+IGtleGVjIG1haWxpbmcgbGlzdAo+PiBrZXhlY0BsaXN0cy5p
bmZyYWRlYWQub3JnCj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/
dT1odHRwLTNBX19saXN0cy5pbmZyYWRlYWQub3JnX21haWxtYW5fbGlzdGluZm9fa2V4ZWMmZD1E
d0lDQWcmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9dDJm
UGc5RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPWpPQXUxRFREcG9oc1dz
emFsZlRDWXg0NmVHRjE5VFNXVkxjaE41eUJQZ2smcz1icXAwMmlRRFBfRXotWHZMSXZqLUlQSHFi
Ylp3TVBsRGdtRWNHOHZoWEZFJmU9IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4ga2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/
dT1odHRwLTNBX19saXN0cy5pbmZyYWRlYWQub3JnX21haWxtYW5fbGlzdGluZm9fa2V4ZWMmZD1E
d0lHYVEmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9dDJm
UGc5RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPXdobTlfQk9yZ0FqSnZC
bjBFeV9ickhoRmcyWU1VX1AwSEYwMmRoZ2Rnd1Umcz12TGFyX201SmJpY1l3d3VvNk44NFppQkRH
WlVQTThiQkxTUExRQnRQWk5ZJmU9IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
