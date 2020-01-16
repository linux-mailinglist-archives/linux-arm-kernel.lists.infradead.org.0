Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5723B13DF28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf1SU5BHtJDovI7lTUD2e0btZQ40FIq7T3ATVfnEJyw=; b=izlt4zpjFbmjTv
	djF2cWXrFfa4B0h81vOeMEWn93h3EvGymaIRn6HTdE+7WrTSqaliGjAxBtcdgymJZ8DWYSQTmmyXQ
	PRwB2i01PA7YpNhC7oLR2LyIJo/jz59BSGlQTFeR0iTyZAzkCAd20b0Vp2vr3zsbA2/5bOcOeeWpA
	I77pEINZnXsCtaT+I6L26GLfz/2zMHBn9FBy8vK5FPvDyXh2b4WYm1+xaeSHYbgNjkMRfHl8JwOze
	IL6omrI4W5WX6k8rlNcOSOfthOzkeTE4fsNNwPMgAVpla61g0iT7yGKzhXe1z8lHl8ABQae/RiFv3
	k5bspguWxNUI1bWmEEJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7OB-0005yy-GK; Thu, 16 Jan 2020 15:48:55 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7Nt-0005uj-3A; Thu, 16 Jan 2020 15:48:41 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00GFhTOE085058;
 Thu, 16 Jan 2020 15:48:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=PaqPTMWc+RQXSpJWqh1zx/aHhm5SeMGvC6e6opMEO/Q=;
 b=akPl5NBU+n6z2ZPGKNeCLlf4ah8QUZWKTUZs2LNb/zs5hNwC329MKk1zsG1VgrbJbTvw
 hn+1KxdFx8k5WJw5YiQ9gTMKRbyCwCtxdkgm8RQghrg0J07x13iTv11rYB34Xp/bO3WA
 +lPByhGPUrF4Uf4JuaXPWQlHRzWZGzLTqa6ni5jU3h6PjWMcQR3jdY/YhdAJP/poQthA
 GmXsXxlKrutxSxn6dA59ywHQl9yMZyQ1eLl8uiv1ZV6RJtQ/tcJF8Bo3QdSCcLpW026B
 O3dT0GCVQroLi2QcGyzB900euJUWD/sIgK9JTjHdse62oHJ2JvFIkyUGozVy25vITFxe KQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2xf73u38cn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 15:48:04 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00GFeCuR102007;
 Thu, 16 Jan 2020 15:48:04 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2xj1ptabvr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 15:48:03 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00GFlvtd018057;
 Thu, 16 Jan 2020 15:47:57 GMT
Received: from dhcp-10-154-96-54.vpn.oracle.com (/10.154.96.54)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 16 Jan 2020 07:47:57 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v7 1/4] x86: kdump: move reserve_crashkernel_low() into
 crash_core.c
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
Date: Thu, 16 Jan 2020 09:47:55 -0600
Message-Id: <08C19FFB-C6FC-4BB7-A1C2-67CE6B99D2AB@oracle.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-2-chenzhou10@huawei.com>
 <20191227055458.GA14893@dhcp-128-65.nay.redhat.com>
 <09d42854-461b-e85c-ba3f-0e1173dc95b5@huawei.com>
 <20191228093227.GA19720@dhcp-128-65.nay.redhat.com>
 <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
To: James Morse <james.morse@arm.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001160130
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001160130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_074837_222670_E10E4EBC 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kbuild test robot <lkp@intel.com>, will@kernel.org,
 linux-doc@vger.kernel.org, Chen Zhou <chenzhou10@huawei.com>,
 catalin.marinas@arm.com, bhsharma@redhat.com, xiexiuqi@huawei.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, horms@verge.net.au,
 tglx@linutronix.de, Dave Young <dyoung@redhat.com>, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAxNiwgMjAyMCwgYXQgOToxNyBBTSwgSmFtZXMgTW9yc2UgPGphbWVzLm1vcnNl
QGFybS5jb20+IHdyb3RlOgo+IAo+IEhpIGd1eXMsCj4gCj4gT24gMjgvMTIvMjAxOSAwOTozMiwg
RGF2ZSBZb3VuZyB3cm90ZToKPj4gT24gMTIvMjcvMTkgYXQgMDc6MDRwbSwgQ2hlbiBaaG91IHdy
b3RlOgo+Pj4gT24gMjAxOS8xMi8yNyAxMzo1NCwgRGF2ZSBZb3VuZyB3cm90ZToKPj4+PiBPbiAx
Mi8yMy8xOSBhdCAxMToyM3BtLCBDaGVuIFpob3Ugd3JvdGU6Cj4+Pj4+IEluIHByZXBhcmF0aW9u
IGZvciBzdXBwb3J0aW5nIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93IGluIGFybTY0IGFzCj4+Pj4+
IHg4Nl82NCBkb2VzLCBtb3ZlIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgaW50byBrZXJuZWwv
Y3Jhc2hfY29yZS5jLgo+Pj4+PiAKPj4+Pj4gTm90ZSwgaW4gYXJtNjQsIHdlIHJlc2VydmUgbG93
IG1lbW9yeSBpZiBhbmQgb25seSBpZiBjcmFzaGtlcm5lbD1YLGxvdwo+Pj4+PiBpcyBzcGVjaWZp
ZWQuIERpZmZlcmVudCB3aXRoIHg4Nl82NCwgZG9uJ3Qgc2V0IGxvdyBtZW1vcnkgYXV0b21hdGlj
YWxseS4KPj4+PiAKPj4+PiBEbyB5b3UgaGF2ZSBhbnkgcmVhc29uIGZvciB0aGUgZGlmZmVyZW5j
ZT8gIEknZCBleHBlY3Qgd2UgaGF2ZSBzYW1lCj4+Pj4gbG9naWMgaWYgcG9zc2libGUgYW5kIHJl
bW92ZSBzb21lIG9mIHRoZSBpZmRlZnMuCj4+PiAKPj4+IEluIHg4Nl82NCwgaWYgd2UgcmVzZXJ2
ZSBjcmFzaGtlcm5lbCBhYm92ZSA0RywgdGhlbiB3ZSBjYWxsIHJlc2VydmVfY3Jhc2hrZXJuZWxf
bG93KCkKPj4+IHRvIHJlc2VydmUgbG93IG1lbW9yeS4KPj4+IAo+Pj4gSW4gYXJtNjQsIHRvIHNp
bXBsaWZ5LCB3ZSBjYWxsIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgYXQgdGhlIGJlZ2lubmlu
ZyBvZiByZXNlcnZlX2NyYXNoa2VybmVsKCkKPj4+IGFuZCB0aGVuIHJlbGF4IHRoZSBhcm02NF9k
bWEzMl9waHlzX2xpbWl0IGlmIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCkgYWxsb2NhdGVkIHNv
bWV0aGluZy4KPj4+IEluIHRoaXMgY2FzZSwgaWYgcmVzZXJ2ZSBjcmFzaGtlcm5lbCBiZWxvdyA0
RyB0aGVyZSB3aWxsIGJlIDI1Nk0gbG93IG1lbW9yeSBzZXQgYXV0b21hdGljYWxseQo+Pj4gYW5k
IHRoaXMgbmVlZHMgZXh0cmEgY29uc2lkZXJhdGlvbnMuCj4gCj4+IFNvcnJ5IHRoYXQgSSBkaWQg
bm90IHJlYWQgdGhlIG9sZCB0aHJlYWQgZGV0YWlscyBhbmQgdGhvdWdodCB0aGF0IGlzCj4+IGFy
Y2ggZGVwZW5kZW50LiAgQnV0IHJldGhpbmsgYWJvdXQgdGhhdCwgaXQgd291bGQgYmUgYmV0dGVy
IHRoYXQgd2UgY2FuCj4+IGhhdmUgc2FtZSBzZW1hbnRpYyBhYm91dCBjcmFzaGtlcm5lbCBwYXJh
bWV0ZXJzIGFjcm9zcyBhcmNoZXMuICBJZiB3ZQo+PiBtYWtlIHRoZW0gZGlmZmVyZW50IHRoZW4g
aXQgY2F1c2VzIGNvbmZ1c2lvbiwgZXNwZWNpYWxseSBmb3IKPj4gZGlzdHJpYnV0aW9ucy4KPiAK
PiBTdXJlbHkgZGlzdHJvcyBhbHNvIHdhbnQgb25lIGNyYXNoa2VybmVsKiBzdHJpbmcgdGhleSBj
YW4gdXNlIG9uIGFsbCBwbGF0Zm9ybXMgd2l0aG91dAo+IGhhdmluZyB0byBkZXRlY3QgdGhlIGtl
cm5lbCB2ZXJzaW9uLCBwbGF0Zm9ybSBvciBjaGFuZ2VhYmxlIG1lbW9yeSBsYXlvdXQuLi4KPiAK
PiAKPj4gT1RPSCwgSSB0aG91Z2h0IGlmIHdlIHJlc2VydmUgaGlnaCBtZW1vcnkgdGhlbiB0aGUg
bG93IG1lbW9yeSBzaG91bGQgYmUKPj4gbmVlZGVkLiAgVGhlcmUgbWlnaHQgYmUgc29tZSBleGNl
cHRpb25zLCBidXQgSSBkbyBub3Qga25vdyB0aGUgZXhhY3QKPj4gb25lLAo+IAo+PiBjYW4gd2Ug
bWFrZSB0aGUgYmVoYXZpb3Igc2FtZSwgYW5kIHNwZWNpYWwgY2FzZSB0aG9zZSBzeXN0ZW1zIHdo
aWNoCj4+IGRvIG5vdCBuZWVkIGxvdyBtZW1vcnkgcmVzZXJ2YXRpb24uCj4gCj4gSXRzIHRyaWNr
eSB0byB3b3JrIG91dCB3aGljaCBzeXN0ZW1zIGFyZSB0aGUgJ25vcm1hbCcgb25lcy4KPiAKPiBX
ZSBkb24ndCBoYXZlIGEgZml4ZWQgbWVtb3J5IGxheW91dCBmb3IgYXJtNjQuIFNvbWUgc3lzdGVt
cyBoYXZlIG5vIG1lbW9yeSBiZWxvdyA0Ry4KPiBPdGhlcnMgaGF2ZSBubyBtZW1vcnkgYWJvdmUg
NEcuCj4gCj4gQ2hlbiBaaG91J3MgbWFjaGluZSBoYXMgc29tZSBtZW1vcnkgYmVsb3cgNEcsIGJ1
dCBpdHMgdG9vIHByZWNpb3VzIHRvIHJlc2VydmUgYSBsYXJnZQo+IGNodW5rIGZvciBrZHVtcC4g
V2l0aG91dCBhbnkgbWVtb3J5IGJlbG93IDRHIHNvbWUgb2YgdGhlIGRyaXZlcnMgd29uJ3Qgd29y
ay4KPiAKPiBJIGRvbid0IHNlZSB3aGF0IGRpc3Ryb3MgY2FuIHNldCBhcyB0aGVpciBkZWZhdWx0
IGZvciBhbGwgcGxhdGZvcm1zIGlmIGhpZ2gvbG93IGFyZQo+IG11dHVhbGx5IGV4Y2x1c2l2ZSB3
aXRoIHRoZSAnY3Jhc2hrZXJuZWw9JyBpbiB1c2UgdG9kYXkuIEhvdyBkaWQgeDg2IG5hdmlnYXRl
IHRoaXMsIC4uLiBvcgo+IHdhcyBpdCBzbyBsb25nIGFnbz8KPiAKPiBObyBvbmUgZWxzZSBoYXMg
cmVwb3J0ZWQgYSBwcm9ibGVtIHdpdGggdGhlIGV4aXN0aW5nIHBsYWNlbWVudCBsb2dpYywgaGVu
Y2UgdHJlYXRpbmcgdGhpcwo+ICdsb3cnIHRoaW5nIGFzIHRoZSAnaW4gYWRkaXRpb24nIHNwZWNp
YWwgY2FzZS4KCgpIaSwKCkkgYW0gc2VlaW5nIHNpbWlsYXIgIEFybSBjcmFzaCBkdW1wIGlzc3Vl
cyAgb24gIDUuNCBrZXJuZWxzICB3aGVyZSB3ZSBuZWVkICByYXRoZXIgbGFyZ2UgYW1vdW50IG9m
IGNyYXNoa2VybmVsIG1lbW9yeSByZXNlcnZlZCB0aGF0IGlzIG5vdCBhdmFpbGFibGUgYmVsb3cg
NEdCICggVGhlIG1heGltdW0gcmVzZXJ2ZWQgc2l6ZSBhcHBlYXJzIHRvIGJlIGFyb3VuZCA3NjhN
ICkgLiBXaGVuIEkgcGljayBtZW1vcnkgcmFuZ2UgaGlnaGVyIHRoYW4gNEdCICwgSSBzZWUgIGFk
YXB0ZXJzIHRoYXQgZmFpbCB0byBpbml0aWFsaXplIDoKCgpUaGVyZSBpcyBubyBsb3ctbWVtb3J5
ICA8NEcgIG1lbW9yeSBmb3IgRE1BIDsgICAgIAoKWyAgIDExLjUwNjc5Ml0ga3dvcmtlci8wOjE0
OiBwYWdlIGFsbG9jYXRpb24gZmFpbHVyZTogb3JkZXI6MCwgCm1vZGU6MHgxMDQoR0ZQX0RNQTMy
fF9fR0ZQX1pFUk8pLCBub2RlbWFzaz0obnVsbCksY3B1c2V0PS8sbWVtc19hbGxvd2VkPTAgClsg
ICAxMS41MTg3OTNdIENQVTogMCBQSUQ6IDE1MCBDb21tOiBrd29ya2VyLzA6MTQgTm90IHRhaW50
ZWQgCjUuNC4wLTE5NDguMy5lbDh1ZWsuYWFyY2g2NCAjMSAKWyAgIDExLjUyNjk1NV0gSGFyZHdh
cmUgbmFtZTogVG8gYmUgZmlsbGVkIGJ5IE8uRS5NLiBTYWJlci9TYWJlciwgQklPUyAKMEFDS0ww
MjUgMDEvMTgvMjAxOSAKWyAgIDExLjUzNDk0OF0gV29ya3F1ZXVlOiBldmVudHMgd29ya19mb3Jf
Y3B1X2ZuIApbICAgMTEuNTM5MjkxXSBDYWxsIHRyYWNlOiAKWyAgIDExLjU0MTcyN10gIGR1bXBf
YmFja3RyYWNlKzB4MC8weDE4YyAKWyAgIDExLjU0NTM3Nl0gIHNob3dfc3RhY2srMHgyNC8weDMw
IApbICAgMTEuNTQ4Njc5XSAgZHVtcF9zdGFjaysweGJjLzB4ZTAgClsgICAxMS41NTE5ODJdICB3
YXJuX2FsbG9jKzB4ZjAvMHgxNWMgClsgICAxMS41NTUzNzBdICBfX2FsbG9jX3BhZ2VzX3Nsb3dw
YXRoKzB4YjRjLzB4Yjg0IApbICAgMTEuNTU5ODg3XSAgX19hbGxvY19wYWdlc19ub2RlbWFzaysw
eDJkMC8weDMzMCAKWyAgIDExLjU2NDQwNV0gIGFsbG9jX3BhZ2VzX2N1cnJlbnQrMHg4Yy8weGY4
IApbICAgMTEuNTY4NDk2XSAgdHRtX2JvX2RldmljZV9pbml0KzB4MTg4LzB4MjIwIFt0dG1dIApb
ICAgMTEuNTczMTg3XSAgZHJtX3ZyYW1fbW1faW5pdCsweDU4LzB4ODAgW2RybV92cmFtX2hlbHBl
cl0gClsgICAxMS41Nzg1NzJdICBkcm1fdnJhbV9oZWxwZXJfYWxsb2NfbW0rMHg2NC8weGIwIFtk
cm1fdnJhbV9oZWxwZXJdIApbICAgMTEuNTg0NjU1XSAgYXN0X21tX2luaXQrMHgzOC8weDgwIFth
c3RdIApbICAgMTEuNTg4NTY2XSAgYXN0X2RyaXZlcl9sb2FkKzB4NDc0LzB4YTcwIFthc3RdIApb
ICAgMTEuNTkzMDI5XSAgZHJtX2Rldl9yZWdpc3RlcisweDE0NC8weDFjOCBbZHJtXSAKWyAgIDEx
LjU5NzU3M10gIGRybV9nZXRfcGNpX2RldisweGE0LzB4MTY4IFtkcm1dIApbICAgMTEuNjAxOTE5
XSAgYXN0X3BjaV9wcm9iZSsweDhjLzB4OWMgW2FzdF0gClsgICAxMS42MDYwMDRdICBsb2NhbF9w
Y2lfcHJvYmUrMHg0NC8weDk4IApbICAgMTEuNjA5NzM5XSAgd29ya19mb3JfY3B1X2ZuKzB4MjAv
MHgzMCAKWyAgIDExLjYxMzQ3NF0gIHByb2Nlc3Nfb25lX3dvcmsrMHgxYzQvMHg0MWMgClsgICAx
MS42MTc0NzBdICB3b3JrZXJfdGhyZWFkKzB4MTUwLzB4NGIwIApbICAgMTEuNjIxMjA2XSAga3Ro
cmVhZCsweDExMC8weDExNCAKWyAgIDExLjYyNDQyMl0gIHJldF9mcm9tX2ZvcmsrMHgxMC8weDE4
IAoKVGhpcyBmYWlsdXJlIGlzIHJlbGF0ZWQgdG8gYSBncmFwaGljcyBhZGFwdGVyLiAKClRoZSBt
b3JlIGNvbXBsZXgga2R1bXAgY29uZmlndXJhdGlvbnMgdGhhdCB1c2UgbmV0d29ya2luZyBzdGFj
ayB0byBORlMgbW91bnQgYSBmaWxlc3lzdGVtIHRvIGR1bXAgdG8gLCBvciB1c2Ugc3NoIHRvIGNv
cHkgdG8gYW5vdGhlciBtYWNoaW5lLCAgcmVxdWlyZSBtb3JlIGNyYXNoa2VybmVsIG1lbW9yeSBy
ZXNlcnZhdGlvbnMgdGhhbiBwZXJoYXBzIHRoZSDigJxkZWZhdWx0KuKAnSBzZXR0aW5ncyBvZiAg
YSBtaW5pbWFsIGtkdW1wIHRoYXQgY3JlYXRlcyBhIG1pbmltYWwgIHZtY29yZSB0byBsb2NhbCBz
dG9yYWdlIGluICAvdmFyL2NyYXNoLiBJZiBjcmFzaGtlcm5lbCBpcyB0b28gc21hbGwgSSBnZXQg
T3V0IG9mIE1lbW9yeSBpc3N1ZXMgYW5kIHRoZSBlbnRpcmUgdm1jb3JlICBwcm9jZXNzIGZhaWxz
LiAKCiggKmRlZmF1bHQga2R1bXAgc2V0dGluZyBJIGFzc3VtZSBhcmUgYSBtaW5pbWFsIHZtY29y
ZSB0byAvdmFyL2NyYXNoIHVzaW5nIHByaW1hcnkgYm9vdCBkZXZpY2Ugd2hlcmUgL3Jvb3QgaXMg
bG9jYXRlZCAgKSAKCgoKCj4gCj4gCj4+PiBwcmV2aW91cyBkaXNjdXNzZXM6Cj4+PiAJaHR0cHM6
Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19sa21sLm9yZ19s
a21sXzIwMTlfNl81XzY3MCZkPUR3SUNBZyZjPVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJ
ck1VQjY1ZWFwSV9KbkUmcj10MmZQZzlEODdGN0Q4am0wXzNDRzl5b2lJS2RSZzRxY190aEJ3NGJ6
TWhjJm09ak9BdTFEVERwb2hzV3N6YWxmVENZeDQ2ZUdGMTlUU1dWTGNoTjV5QlBnayZzPWdTOUJM
T2ttajc4bFA1TDdTUDZfVkxId3ZQMjQ5dVdLYUUyUjdON3N4Z00mZT0gCj4+PiAJaHR0cHM6Ly91
cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19sa21sLm9yZ19sa21s
XzIwMTlfNl8xM18yMjkmZD1Ed0lDQWcmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJN
VUI2NWVhcElfSm5FJnI9dDJmUGc5RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1o
YyZtPWpPQXUxRFREcG9oc1dzemFsZlRDWXg0NmVHRjE5VFNXVkxjaE41eUJQZ2smcz1VMU5pczI5
bjNBN1hTQnpFRDUzZmlFNE1EQXY1Tmx4WXAxVW9ydnZCT093JmU9IAo+PiAKPj4gQW5vdGhlciBj
b25jZXJuIGZyb20gSmFtZXM6Cj4+ICIKPj4gV2l0aCBib3RoIGNyYXNoa19sb3dfcmVzIGFuZCBj
cmFzaGtfcmVzLCB3ZSBlbmQgdXAgd2l0aCB0d28gZW50cmllcyBpbiAvcHJvYy9pb21lbSBjYWxs
ZWQKPj4gIkNyYXNoIGtlcm5lbCIuIEJlY2F1c2UgaXRzIHNvcnRlZCBieSBhZGRyZXNzLCBhbmQg
a2V4ZWMtdG9vbHMgc3RvcHMgc2VhcmNoaW5nIHdoZW4gaXQKPj4gZmluZCAiQ3Jhc2gga2VybmVs
IiwgeW91IGFyZSBhbHdheXMgZ29pbmcgdG8gZ2V0IHRoZSBrZXJuZWwgcGxhY2VkIGluIHRoZSBs
b3dlciBwb3J0aW9uLgo+PiAiCj4+IAo+PiBUaGUga2V4ZWMtdG9vbHMgY29kZSBpcyBpdGVyYXRp
bmcgYWxsICJDcmFzaCBrZXJuZWwiIHJhbmdlcyBhbmQgYWRkIHRoZW0KPj4gaW4gYW4gYXJyYXku
ICBJbiBYODYgY29kZSwgaXQgdXNlcyB0aGUgaGlnaGVyIHJhbmdlIHRvIGxvY2F0ZSBtZW1vcnku
Cj4gCj4gVGhlbiBteSBodXJyaWVkIHJlYWRpbmcgb2Ygd2hhdCB0aGUgdXNlci1zcGFjZSBjb2Rl
IGRvZXMgd2FzIHdyb25nIQo+IAo+IElmIGtleGVjLXRvb2xzIHBsYWNlcyB0aGUga2VybmVsIGlu
IHRoZSBsb3cgcmVnaW9uLCB0aGVyZSBtYXkgbm90IGJlIGVub3VnaCBtZW1vcnkgbGVmdAo+IGZv
ciB3aGF0ZXZlciBwdXJwb3NlIGl0IHdhcyByZXNlcnZlZCBmb3IuIFRoaXMgd2FzIHRoZSBtb3Rp
dmF0aW9uIGZvciBnaXZpbmcgaXQgYQo+IGRpZmZlcmVudCBuYW1lLgo+IAo+IAo+IFRoYW5rcywK
PiAKPiBKYW1lcwo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4ga2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwLTNBX19saXN0
cy5pbmZyYWRlYWQub3JnX21haWxtYW5fbGlzdGluZm9fa2V4ZWMmZD1Ed0lDQWcmYz1Sb1AxWXVt
Q1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9dDJmUGc5RDg3RjdEOGptMF8z
Q0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPWpPQXUxRFREcG9oc1dzemFsZlRDWXg0NmVHRjE5
VFNXVkxjaE41eUJQZ2smcz1icXAwMmlRRFBfRXotWHZMSXZqLUlQSHFiYlp3TVBsRGdtRWNHOHZo
WEZFJmU9IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
