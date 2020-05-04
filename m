Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7E41C3CFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDrVEardn8A7egb+AXyqeGL3nQDGxQ7Ar6gYZRUiv1s=; b=CXdui9OFQVxBfU
	8KQ18WI/DI2JjZjQikREQKC4ia6dZ7RaNosYGAxaWLUmqeLB3hYUZXqTy2EKGE5hRw0nwhXBI/AOh
	4ObbPxYYQrebhKNtLUft1ffy9dVJpmDUZlvm4gN4+7izRy6JWbP3ymZ6SePZ0Ph2tZ4VlA4IBR6tG
	RoW4XCcp1Pk06/qRUBS2WM5NMupndVOz6pj2biyDTtSYdRAnoe3paIU3fNrDqwrYPZ4omwZSD1dVG
	/rDLUcyt3ChYEiez5nCZqapLRJhvJp8tD8tp2dyoIM3l4bhPEbgiIH/+tNrbHgxB5Ps3sJjmhYnMh
	aMj+M5g6wUQ57PfV2Waw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVc5a-0004Vc-7R; Mon, 04 May 2020 14:28:58 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc5N-0004UK-VO
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:28:47 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 044EHbo1063496;
 Mon, 4 May 2020 14:18:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=94tGbpbZfrGPx3PEjMKqajez4HYY6/WnYiRMTWfEfxw=;
 b=J3RmePcR8ShrP9iW8ROqyeXm145NYHpekoIbMSM0ekGOLfQtOEQ9ulAhaiGKtTVU0IMz
 iXxjbhxvn6qw003ElQAWZ9WP3F8Vw+Vy4VkO4kmXsMnzQFNNV1SrB2VbUcpEwQqZgIaw
 J+O/3cKNbFh3/CTBRhm90ZSjP+U8dECBFINzMOWqhMCeajnrd8mWsRBQxkUnta0uPHDd
 NYaoSF4UpCOWgSeKdPJ08KijlEwwtdUI9iDA3NuCXd+aD6iR6quaXFlRAgowHt/vprhP
 GSxUJlILuylz/MHb4/Fz3jSbnsQ8gn9/KQ1onFL9+flK+ht+2anuRncWCAYMZGzMw7Md 0A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 30s09qy6kp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 May 2020 14:18:10 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 044E5Vqi062768;
 Mon, 4 May 2020 14:18:09 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 30sjnasb8u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 May 2020 14:18:09 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 044EHxd0000815;
 Mon, 4 May 2020 14:17:59 GMT
Received: from [192.168.0.159] (/108.20.144.72)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 04 May 2020 07:17:59 -0700
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v10 0/5] Add NUMA-awareness to qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20200403205930.1707-1-alex.kogan@oracle.com>
Date: Mon, 4 May 2020 10:17:56 -0400
Message-Id: <6DE89034-0388-4F62-A75D-898EE53D45A7@oracle.com>
References: <20200403205930.1707-1-alex.kogan@oracle.com>
To: Peter Zijlstra <peterz@infradead.org>, Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9610
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005040118
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9610
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1011 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005040118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_072846_099583_E68FE247 
X-CRM114-Status: GOOD (  27.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFBldGVyLCBMb25nbWFuIChhbmQgZXZlcnlvbmUgb24gdGhpcyBsaXN0KSwKCkhvcGUgeW91
IGFyZSBkb2luZyB3ZWxsLgoKSSB3YXMgd29uZGVyaW5nIHdoZXRoZXIgeW91IGhhdmUgaGFkIGEg
Y2hhbmNlIHRvIHJldmlldyB0aGlzIHNlcmllcywKYW5kIGhhdmUgYW55IGZ1cnRoZXIgY29tbWVu
dHMuCgpUaGFua3MsCuKAlCBBbGV4Cgo+IE9uIEFwciAzLCAyMDIwLCBhdCA0OjU5IFBNLCBBbGV4
IEtvZ2FuIDxhbGV4LmtvZ2FuQG9yYWNsZS5jb20+IHdyb3RlOgo+IAo+IENoYW5nZXMgZnJvbSB2
OToKPiAtLS0tLS0tLS0tLS0tLS0tCj4gCj4gLSBSZXZpc2UgdGhlIHNlcmllcyBiYXNlZCBvbiBQ
ZXRlcidzIHZlcnNpb24sIGFkb3B0aW5nIG5hbWVzLCBzdHlsZSwgZXRjLgo+IAo+IC0gQWRkIGEg
bmV3IHBhdGNoIHRoYXQgYWxsb3dzIHRvIHByaW9yaXRpemUgY2VydGFpbiB0aHJlYWRzIChlLmcu
LCBpbiAKPiBpcnEgYW5kIG5taSBjb250ZXh0cykgYW5kIGF2b2lkcyBtb3ZpbmcgdGhlbSBiZXR3
ZWVuIHdhaXRpbmcgcXVldWVzLAo+IGJhc2VkIG9uIHRoZSBzdWdnZXN0aW9uIGJ5IExvbmdtYW4u
Cj4gCj4gLSBEcm9wIHRoZSBzaHVmZmxlIHJlZHVjdGlvbiBvcHRpbWl6YXRpb24gZnJvbSB0aGUg
c2VyaWVzIChuZXcgcGVyZm9ybWFuY2UKPiBkYXRhIGRpZCBub3QganVzdGlmeSBpdCkuCj4gCj4g
LSBEbyBub3QgY2FsbCBjbmFfaW5pdF9ub2RlcygpIGFzIGFuIGVhcmx5X2luaXRjYWxsIChjYWxs
IGl0IGZyb20gCj4gY25hX2NvbmZpZ3VyZV9zcGluX2xvY2tfc2xvd3BhdGgoKSBpbnN0ZWFkKSwg
YmFzZWQgb24gdGhlIGNvbW1lbnQgZnJvbSAKPiBMb25nbWFuLgo+IAo+IAo+IFN1bW1hcnkKPiAt
LS0tLS0tCj4gCj4gTG9jayB0aHJvdWdocHV0IGNhbiBiZSBpbmNyZWFzZWQgYnkgaGFuZGluZyBh
IGxvY2sgdG8gYSB3YWl0ZXIgb24gdGhlCj4gc2FtZSBOVU1BIG5vZGUgYXMgdGhlIGxvY2sgaG9s
ZGVyLCBwcm92aWRlZCBjYXJlIGlzIHRha2VuIHRvIGF2b2lkCj4gc3RhcnZhdGlvbiBvZiB3YWl0
ZXJzIG9uIG90aGVyIE5VTUEgbm9kZXMuIFRoaXMgcGF0Y2ggaW50cm9kdWNlcyBDTkEKPiAoY29t
cGFjdCBOVU1BLWF3YXJlIGxvY2spIGFzIHRoZSBzbG93IHBhdGggZm9yIHFzcGlubG9jay4gSXQg
aXMKPiBlbmFibGVkIHRocm91Z2ggYSBjb25maWd1cmF0aW9uIG9wdGlvbiAoTlVNQV9BV0FSRV9T
UElOTE9DS1MpLgo+IAo+IENOQSBpcyBhIE5VTUEtYXdhcmUgdmVyc2lvbiBvZiB0aGUgTUNTIGxv
Y2suIFNwaW5uaW5nIHRocmVhZHMgYXJlCj4gb3JnYW5pemVkIGluIHR3byBxdWV1ZXMsIGEgcHJp
bWFyeSBxdWV1ZSBmb3IgdGhyZWFkcyBydW5uaW5nIG9uIHRoZSBzYW1lCj4gbm9kZSBhcyB0aGUg
Y3VycmVudCBsb2NrIGhvbGRlciwgYW5kIGEgc2Vjb25kYXJ5IHF1ZXVlIGZvciB0aHJlYWRzCj4g
cnVubmluZyBvbiBvdGhlciBub2Rlcy4gVGhyZWFkcyBzdG9yZSB0aGUgSUQgb2YgdGhlIG5vZGUg
b24gd2hpY2gKPiB0aGV5IGFyZSBydW5uaW5nIGluIHRoZWlyIHF1ZXVlIG5vZGVzLiBBZnRlciBh
Y3F1aXJpbmcgdGhlIE1DUyBsb2NrIGFuZAo+IGJlZm9yZSBhY3F1aXJpbmcgdGhlIHNwaW5sb2Nr
LCB0aGUgbG9jayBob2xkZXIgc2NhbnMgdGhlIHByaW1hcnkgcXVldWUKPiBsb29raW5nIGZvciBh
IHRocmVhZCBydW5uaW5nIG9uIHRoZSBzYW1lIG5vZGUgKHByZS1zY2FuKS4gSWYgZm91bmQgKGNh
bGwKPiBpdCB0aHJlYWQgVCksIGFsbCB0aHJlYWRzIGluIHRoZSBwcmltYXJ5IHF1ZXVlIGJldHdl
ZW4gdGhlIGN1cnJlbnQgbG9jawo+IGhvbGRlciBhbmQgVCBhcmUgbW92ZWQgdG8gdGhlIGVuZCBv
ZiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiAgSWYgc3VjaCBUCj4gaXMgbm90IGZvdW5kLCB3ZSBtYWtl
IGFub3RoZXIgc2NhbiBvZiB0aGUgcHJpbWFyeSBxdWV1ZSBhZnRlciBhY3F1aXJpbmcgCj4gdGhl
IHNwaW5sb2NrIHdoZW4gdW5sb2NraW5nIHRoZSBNQ1MgbG9jayAocG9zdC1zY2FuKSwgc3RhcnRp
bmcgYXQgdGhlCj4gbm9kZSB3aGVyZSBwcmUtc2NhbiBzdG9wcGVkLiBJZiBib3RoIHNjYW5zIGZh
aWwgdG8gZmluZCBzdWNoIFQsIHRoZQo+IE1DUyBsb2NrIGlzIHBhc3NlZCB0byB0aGUgZmlyc3Qg
dGhyZWFkIGluIHRoZSBzZWNvbmRhcnkgcXVldWUuIElmIHRoZQo+IHNlY29uZGFyeSBxdWV1ZSBp
cyBlbXB0eSwgdGhlIE1DUyBsb2NrIGlzIHBhc3NlZCB0byB0aGUgbmV4dCB0aHJlYWQgaW4gdGhl
Cj4gcHJpbWFyeSBxdWV1ZS4gVG8gYXZvaWQgc3RhcnZhdGlvbiBvZiB0aHJlYWRzIGluIHRoZSBz
ZWNvbmRhcnkgcXVldWUsIHRob3NlCj4gdGhyZWFkcyBhcmUgbW92ZWQgYmFjayB0byB0aGUgaGVh
ZCBvZiB0aGUgcHJpbWFyeSBxdWV1ZSBhZnRlciBhIGNlcnRhaW4KPiBudW1iZXIgb2YgaW50cmEt
bm9kZSBsb2NrIGhhbmQtb2Zmcy4gTGFzdGx5LCBjZXJ0YWluIHRocmVhZHMgKGUuZy4sIGluCj4g
aW4gaXJxIGFuZCBubWkgY29udGV4dHMpIGFyZSBnaXZlbiBhIHByZWZlcmVudGlhbCB0cmVhdG1l
bnQgLS0gdGhlIHNjYW4KPiBzdG9wcyB3aGVuIHN1Y2ggYSB0aHJlYWQgaXMgZm91bmQsIGVmZmVj
dGl2ZWx5IG5ldmVyIG1vdmluZyB0aG9zZSB0aHJlYWRzIAo+IGludG8gdGhlIHNlY29uZGFyeSBx
dWV1ZS4KPiAKPiBNb3JlIGRldGFpbHMgYXJlIGF2YWlsYWJsZSBhdCBodHRwczovL2FyeGl2Lm9y
Zy9hYnMvMTgxMC4wNTYwMC4KPiAKPiBXZSBoYXZlIGRvbmUgc29tZSBwZXJmb3JtYW5jZSBldmFs
dWF0aW9uIHdpdGggdGhlIGxvY2t0b3J0dXJlIG1vZHVsZQo+IGFzIHdlbGwgYXMgd2l0aCBzZXZl
cmFsIGJlbmNobWFya3MgZnJvbSB0aGUgd2lsbC1pdC1zY2FsZSByZXBvLgo+IFRoZSBmb2xsb3dp
bmcgbG9ja3RvcnR1cmUgcmVzdWx0cyBhcmUgZnJvbSBhbiBPcmFjbGUgWDUtNCBzZXJ2ZXIKPiAo
Zm91ciBJbnRlbCBYZW9uIEU3LTg4OTUgdjMgQCAyLjYwR0h6IHNvY2tldHMgd2l0aCAxOCBoeXBl
cnRocmVhZGVkCj4gY29yZXMgZWFjaCkuIEVhY2ggbnVtYmVyIHJlcHJlc2VudHMgYW4gYXZlcmFn
ZSAob3ZlciAyNSBydW5zKSBvZiB0aGUKPiB0b3RhbCBudW1iZXIgb2Ygb3BzICh4MTBeNykgcmVw
b3J0ZWQgYXQgdGhlIGVuZCBvZiBlYWNoIHJ1bi4gVGhlIAo+IHN0YW5kYXJkIGRldmlhdGlvbiBp
cyBhbHNvIHJlcG9ydGVkIGluICgpLCBhbmQgaW4gZ2VuZXJhbCBpcyBhYm91dCAzJQo+IGZyb20g
dGhlIGF2ZXJhZ2UuIFRoZSAnc3RvY2snIGtlcm5lbCBpcyB2NS42LjAtcmM2LAo+IGNvbW1pdCA1
YWQwZWMwYjg2NTIsIGNvbXBpbGVkIGluIHRoZSBkZWZhdWx0IGNvbmZpZ3VyYXRpb24uIAo+ICdw
YXRjaC1DTkEnIGlzIHRoZSBtb2RpZmllZCBrZXJuZWwgd2l0aCBOVU1BX0FXQVJFX1NQSU5MT0NL
UyBzZXQ7IAo+IHRoZSBzcGVlZHVwIGlzIGNhbGN1bGF0ZWQgZGl2aWRpbmcgJ3BhdGNoLUNOQScg
YnkgJ3N0b2NrJy4KPiAKPiAjdGhyICAJIHN0b2NrICAgICAgICBwYXRjaC1DTkEgICBzcGVlZHVw
IChwYXRjaC1DTkEvc3RvY2spCj4gIDEgIDIuNzAyICgwLjEwMCkgIDIuNzEyICgwLjEyMikgIDEu
MDAzCj4gIDIgIDMuNjkxICgwLjE2MikgIDMuNjcyICgwLjEzOCkgIDAuOTk1Cj4gIDQgIDQuMjg1
ICgwLjEwOCkgIDQuMjU2ICgwLjEyNCkgIDAuOTkzCj4gIDggIDUuMTE3ICgwLjEzMykgIDUuOTcy
ICgwLjI1OCkgIDEuMTY3Cj4gMTYgIDYuMjczICgwLjE5NikgIDcuNjI4ICgwLjI3NCkgIDEuMjE2
Cj4gMzIgIDYuNzU3ICgwLjEyMikgIDguNTQ0ICgwLjIyNSkgIDEuMjY0Cj4gMzYgIDYuNzYxICgw
LjA5MSkgIDguNjkxICgwLjE3MCkgIDEuMjg1Cj4gNzIgIDYuNTY5ICgwLjEzMikgIDkuMjgwICgw
LjIyNSkgIDEuNDEzCj4gMTA4ICA2LjE2NyAoMC4xMTIpICA5LjQxMCAoMC4xNzEpICAxLjUyNgo+
IDE0MiAgNS45MDEgKDAuMTE3KSAgOS40MTUgKDAuMjExKSAgMS41OTUKPiAKPiBUaGUgZm9sbG93
aW5nIHRhYmxlcyBjb250YWluIHRocm91Z2hwdXQgcmVzdWx0cyAob3BzL3VzKSBmcm9tIHRoZSBz
YW1lCj4gc2V0dXAgZm9yIHdpbGwtaXQtc2NhbGUvb3BlbjFfdGhyZWFkczogCj4gCj4gI3RociAg
CSBzdG9jayAgICAgICAgcGF0Y2gtQ05BICAgc3BlZWR1cCAocGF0Y2gtQ05BL3N0b2NrKQo+ICAx
ICAwLjUxMSAoMC4wMDIpICAwLjUyNSAoMC4wMDMpICAxLjAyNwo+ICAyICAwLjc3NCAoMC4wMTgp
ICAwLjc2OSAoMC4wMTcpICAwLjk5Mwo+ICA0ICAxLjM1MiAoMC4wMjMpICAxLjM3MiAoMC4wMzIp
ICAxLjAxNAo+ICA4ICAxLjY3NSAoMC4wOTApICAxLjY2MCAoMC4xMzYpICAwLjk5MQo+IDE2ICAx
LjY2NSAoMC4xMTQpICAxLjU4MyAoMC4wOTIpICAwLjk1MQo+IDMyICAwLjk2NiAoMC4wMzgpICAx
LjYzNyAoMC4wODcpICAxLjY5NAo+IDM2ICAwLjk3MyAoMC4wNjYpICAxLjU3MCAoMC4wODEpICAx
LjYxMwo+IDcyICAwLjg0NCAoMC4wNDApICAxLjYyMCAoMC4wOTEpICAxLjkxOQo+IDEwOCAgMC44
MzYgKDAuMDQwKSAgMS42NzAgKDAuMDg0KSAgMS45OTkKPiAxNDIgIDAuNzk5ICgwLjA0MykgIDEu
Njk5ICgwLjA4NykgIDIuMTI3Cj4gCj4gYW5kIHdpbGwtaXQtc2NhbGUvbG9jazJfdGhyZWFkczoK
PiAKPiAjdGhyICAJIHN0b2NrICAgICAgICBwYXRjaC1DTkEgICBzcGVlZHVwIChwYXRjaC1DTkEv
c3RvY2spCj4gIDEgIDEuNTgxICgwLjAwNCkgIDEuNTc2ICgwLjAwNykgIDAuOTk3Cj4gIDIgIDIu
Njk5ICgwLjA1OSkgIDIuNjg3ICgwLjA2NykgIDAuOTk2Cj4gIDQgIDUuMjQwICgwLjIzNCkgIDUu
MTU1ICgwLjI1MikgIDAuOTg0Cj4gIDggIDQuMzcwICgwLjI0MSkgIDQuMTExICgwLjM0MikgIDAu
OTQxCj4gMTYgIDQuMTUyICgwLjExMikgIDQuMTEzICgwLjE2NCkgIDAuOTkxCj4gMzIgIDIuNTc5
ICgwLjA5OSkgIDQuMDk5ICgwLjEyNykgIDEuNTg5Cj4gMzYgIDIuNjA0ICgwLjA2NikgIDQuMDA1
ICgwLjEwNCkgIDEuNTM4Cj4gNzIgIDIuMDI4ICgwLjA5MSkgIDQuMDI0ICgwLjExMikgIDEuOTg0
Cj4gMTA4ICAyLjA3OSAoMC4xMDYpICAzLjk5NyAoMC4wOTMpICAxLjkyMwo+IDE0MiAgMS44NTgg
KDAuMTAzKSAgMy45NTUgKDAuMTA5KSAgMi4xMjkKPiAKPiBPdXIgZXZhbHVhdGlvbiBzaG93cyB0
aGF0IENOQSBhbHNvIGltcHJvdmVzIHBlcmZvcm1hbmNlIG9mIHVzZXIgCj4gYXBwbGljYXRpb25z
IHRoYXQgaGF2ZSBob3QgcHRocmVhZCBtdXRleGVzLiBUaG9zZSBtdXRleGVzIGFyZSAKPiBibG9j
a2luZywgYW5kIHdhaXRpbmcgdGhyZWFkcyBwYXJrIGFuZCB1bnBhcmsgdmlhIHRoZSBmdXRleCAK
PiBtZWNoYW5pc20gaW4gdGhlIGtlcm5lbC4gR2l2ZW4gdGhhdCBrZXJuZWwgZnV0ZXggY2hhaW5z
LCB3aGljaAo+IGFyZSBoYXNoZWQgYnkgdGhlIG11dGV4IGFkZHJlc3MsIGFyZSBlYWNoIHByb3Rl
Y3RlZCBieSBhIAo+IGNoYWluLXNwZWNpZmljIHNwaW4gbG9jaywgdGhlIGNvbnRlbnRpb24gb24g
YSB1c2VyLW1vZGUgbXV0ZXggCj4gdHJhbnNsYXRlcyBpbnRvIGNvbnRlbnRpb24gb24gYSBrZXJu
ZWwgbGV2ZWwgc3BpbmxvY2suIAo+IAo+IEhlcmUgYXJlIHRoZSByZXN1bHRzIGZvciB0aGUgbGV2
ZWxkYiDigJhyZWFkcmFuZG9t4oCZIGJlbmNobWFyazoKPiAKPiAjdGhyICAJIHN0b2NrICAgICAg
ICBwYXRjaC1DTkEgICBzcGVlZHVwIChwYXRjaC1DTkEvc3RvY2spCj4gIDEgIDAuNTMwICgwLjAx
MykgIDAuNTMzICgwLjAxMSkgIDEuMDA2Cj4gIDIgIDAuODM5ICgwLjA0MykgIDAuODQ3ICgwLjAz
MSkgIDEuMDEwCj4gIDQgIDAuNzU4ICgwLjAyMSkgIDAuNzY0ICgwLjAxOCkgIDEuMDA4Cj4gIDgg
IDAuNjc3ICgwLjAyMikgIDAuNjgyICgwLjAxNikgIDEuMDA4Cj4gMTYgIDAuNzE0ICgwLjAyMykg
IDAuODE0ICgwLjAyNykgIDEuMTQwCj4gMzIgIDAuNzY1ICgwLjA0MCkgIDEuMTY4ICgwLjAzMikg
IDEuNTI3Cj4gMzYgIDAuNzA2ICgwLjAyMykgIDEuMTM5ICgwLjA2NikgIDEuNjE0Cj4gNzIgIDAu
NjI0ICgwLjAxNykgIDEuMTg0ICgwLjAyNikgIDEuODk4Cj4gMTA4ICAwLjYwNSAoMC4wMTMpICAx
LjE0NyAoMC4wMjMpICAxLjg5NAo+IDE0MiAgMC41OTMgKDAuMDEyKSAgMS4xMzEgKDAuMDE5KSAg
MS45MDgKPiAKPiBGdXJ0aGVyIGNvbW1lbnRzIGFyZSB3ZWxjb21lIGFuZCBhcHByZWNpYXRlZC4K
PiAKPiBBbGV4IEtvZ2FuICg1KToKPiAgbG9ja2luZy9xc3BpbmxvY2s6IFJlbmFtZSBtY3MgbG9j
ay91bmxvY2sgbWFjcm9zIGFuZCBtYWtlIHRoZW0gbW9yZQo+ICAgIGdlbmVyaWMKPiAgbG9ja2lu
Zy9xc3BpbmxvY2s6IFJlZmFjdG9yIHRoZSBxc3BpbmxvY2sgc2xvdyBwYXRoCj4gIGxvY2tpbmcv
cXNwaW5sb2NrOiBJbnRyb2R1Y2UgQ05BIGludG8gdGhlIHNsb3cgcGF0aCBvZiBxc3BpbmxvY2sK
PiAgbG9ja2luZy9xc3BpbmxvY2s6IEludHJvZHVjZSBzdGFydmF0aW9uIGF2b2lkYW5jZSBpbnRv
IENOQQo+ICBsb2NraW5nL3FzcGlubG9jazogQXZvaWQgbW92aW5nIGNlcnRhaW4gdGhyZWFkcyBi
ZXR3ZWVuIHdhaXRpbmcgcXVldWVzCj4gICAgaW4gQ05BCj4gCj4gLi4uL2FkbWluLWd1aWRlL2tl
cm5lbC1wYXJhbWV0ZXJzLnR4dCAgICAgICAgIHwgIDE4ICsKPiBhcmNoL2FybS9pbmNsdWRlL2Fz
bS9tY3Nfc3BpbmxvY2suaCAgICAgICAgICAgfCAgIDYgKy0KPiBhcmNoL3g4Ni9LY29uZmlnICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjAgKwo+IGFyY2gveDg2L2luY2x1ZGUvYXNt
L3FzcGlubG9jay5oICAgICAgICAgICAgICB8ICAgNiArCj4gYXJjaC94ODYva2VybmVsL2FsdGVy
bmF0aXZlLmMgICAgICAgICAgICAgICAgIHwgICAyICsKPiBpbmNsdWRlL2FzbS1nZW5lcmljL21j
c19zcGlubG9jay5oICAgICAgICAgICAgfCAgIDQgKy0KPiBrZXJuZWwvbG9ja2luZy9tY3Nfc3Bp
bmxvY2suaCAgICAgICAgICAgICAgICAgfCAgMjAgKy0KPiBrZXJuZWwvbG9ja2luZy9xc3Bpbmxv
Y2suYyAgICAgICAgICAgICAgICAgICAgfCAgODIgKysrLQo+IGtlcm5lbC9sb2NraW5nL3FzcGlu
bG9ja19jbmEuaCAgICAgICAgICAgICAgICB8IDQwNyArKysrKysrKysrKysrKysrKysKPiBrZXJu
ZWwvbG9ja2luZy9xc3BpbmxvY2tfcGFyYXZpcnQuaCAgICAgICAgICAgfCAgIDIgKy0KPiAxMCBm
aWxlcyBjaGFuZ2VkLCA1NDQgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCj4gY3JlYXRl
IG1vZGUgMTAwNjQ0IGtlcm5lbC9sb2NraW5nL3FzcGlubG9ja19jbmEuaAo+IAo+IC0tIAo+IDIu
MjEuMSAoQXBwbGUgR2l0LTEyMi4zKQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
