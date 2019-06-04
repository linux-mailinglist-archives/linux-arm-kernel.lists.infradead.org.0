Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE27235312
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 01:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iAzo0RNrXxSliu/6ykolu3axygMEtZajuU+uNZh/OM=; b=Y5LLGkkqXfmXsS
	56GZ4jomGuFAP+1WAn5tlpx+z2LWzjQznGCQ/mvybIfJRDmg91SV1u8i26jsG2bnZcZEcMLt3Xos6
	5GbPLvt4tT7xYDf4GMuf8ziYHICjGiH+5gwkoxCGMcJGYI9SC7uTzvbILpBbXtVYGboqzTTxuCNXs
	tI1HIAUEXAmhbh1rVphQnqYh221+bXC2YTav3nZKSXwqUkLalYdNaVZsbq/rIWXUgqertHqtBPT6b
	tXA5vWog6m/Ak00qmQjPfBEzxWlZKmQ/x++aAYgLzDXsRi6MhspIp7mx+EGVV0kzwgexVQq1rcocf
	9jATEqt3tWlU4kJ/dRkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYIlG-0000my-TD; Tue, 04 Jun 2019 23:22:34 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYIl9-0000ls-GM
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 23:22:29 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x54NE9sa117761;
 Tue, 4 Jun 2019 23:21:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=YXvYIW/TW5gVwJgPNuplVdUZS0b4Nt48gIxbsBj1q/A=;
 b=RtHIB50u7sCZX9RPoLJf0ZHJkpch7IXBg43GqRPBZNwQNAKIZ1Fe1PhgpNlRK+DGJQo8
 lSVGhzJjuIVibp+vRd2n7xvFHcA0mUp+yl6zRpu/O1SdhEbRN8KVPNzg3MuJ665wOt8D
 OXBjmWQJtRpmguu4bIch0Rtht6EHlilGvOM6jgxv+O/87WyMCwGCZo6Xse+EXPa8teDX
 rjR995hOuZyKMICZD2fQse9ORiTlNsim1r28tHpjiESTwKW8UAdpG+JsMg+tDWtWmsBh
 96TEzBexMUmmKxxluIaxbJWn0djN0qPyA3q+05GNXykuOBeveW8FJpcOUIDfWQCPvZxz Pg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2suj0qfuae-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Jun 2019 23:21:29 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x54NKbcE183651;
 Tue, 4 Jun 2019 23:21:28 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2swnhbvdnw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Jun 2019 23:21:28 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x54NLFRu018591;
 Tue, 4 Jun 2019 23:21:15 GMT
Received: from [172.16.8.192] (/206.166.194.194)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 04 Jun 2019 16:21:15 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v2 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20190403160112.GK4038@hirez.programming.kicks-ass.net>
Date: Tue, 4 Jun 2019 19:21:13 -0400
Message-Id: <C0BC44A5-875C-4BED-A616-D380F6CF25D5@oracle.com>
References: <20190329152006.110370-1-alex.kogan@oracle.com>
 <20190329152006.110370-4-alex.kogan@oracle.com>
 <60a3a2d8-d222-73aa-2df1-64c9d3fa3241@redhat.com>
 <20190402094320.GM11158@hirez.programming.kicks-ass.net>
 <6AEDE4F2-306A-4DF9-9307-9E3517C68A2B@oracle.com>
 <20190403160112.GK4038@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>, Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9278
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=998
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906040147
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9278
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906040147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_162227_692990_7DD00BE4 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, arnd@arndb.de, dave.dice@oracle.com,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Rahul Yadav <rahul.x.yadav@oracle.com>,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFBldGVyLCBMb25nbWFuLCAKCj4gT24gQXByIDMsIDIwMTksIGF0IDEyOjAxIFBNLCBQZXRl
ciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+IHdyb3RlOgo+IAo+IE9uIFdlZCwgQXBy
IDAzLCAyMDE5IGF0IDExOjM5OjA5QU0gLTA0MDAsIEFsZXggS29nYW4gd3JvdGU6Cj4gCj4+Pj4g
VGhlIHBhdGNoIHRoYXQgSSBhbSBsb29raW5nIGZvciBpcyB0byBoYXZlIGEgc2VwYXJhdGUKPj4+
PiBudW1hX3F1ZXVlZF9zcGlubG9ja19zbG93cGF0aCgpIHRoYXQgY29leGlzdHMgd2l0aAo+Pj4+
IG5hdGl2ZV9xdWV1ZWRfc3BpbmxvY2tfc2xvd3BhdGgoKSBhbmQKPj4+PiBwYXJhdmlydF9xdWV1
ZWRfc3BpbmxvY2tfc2xvd3BhdGgoKS4gQXQgYm9vdCB0aW1lLCB3ZSBzZWxlY3QgdGhlIG1vc3QK
Pj4+PiBhcHByb3ByaWF0ZSBvbmUgZm9yIHRoZSBzeXN0ZW0gYXQgaGFuZC4KPj4gSXMgdGhpcyBo
b3cgdGhpcyBzZWxlY3Rpb24gd29ya3MgdG9kYXkgZm9yIHBhcmF2aXJ0Pwo+PiBJIHNlZSBhIFBB
UkFWSVJUX1NQSU5MT0NLUyBjb25maWcgb3B0aW9uLCBidXQgSUlVQyB5b3UgYXJlIHRhbGtpbmcg
YWJvdXQgYSBkaWZmZXJlbnQgbWVjaGFuaXNtIGhlcmUuCj4+IENhbiB5b3UsIHBsZWFzZSwgZWxh
Ym9yYXRlIG9yIGdpdmUgbWUgYSBsaW5rIHRvIGEgcGFnZSB0aGF0IGV4cGxhaW5zIHRoYXQ/Cj4g
Cj4gT2ggbWFuLCB5b3UgYXNrIHVzIHRvIGV4cGxhaW4gaG93IHBhcmF2aXJ0IHBhdGNoaW5nIHdv
cmtzLi4uIHRoYXQncwo+IG1hZ2ljIDotKQo+IAo+IEJhc2ljYWxseSwgdGhlIGNvbXBpbGVyIHdp
bGwgZW1pdCBhIGJ1bmNoIG9mIGluZGlyZWN0IGNhbGxzIHRvIHRoZQo+IHZhcmlvdXMgcHZfb3Bz
LiouKiBmdW5jdGlvbnMuCj4gCj4gVGhlbiwgYXQgYWx0ZXJuYXRpdmVfaW5zdHJ1Y3Rpb25zKCkg
PC0gYXBwbHlfcGFyYXZpcnQoKSBpdCB3aWxsIHJld3JpdGUKPiBhbGwgdGhlc2UgaW5kaXJlY3Qg
Y2FsbHMgdG8gZGlyZWN0IGNhbGxzIHRvIHRoZSBmdW5jdGlvbiBwb2ludGVycyB0aGF0Cj4gYXJl
IGluIHRoZSBwdl9vcHMgc3RydWN0dXJlIGF0IHRoYXQgdGltZSAoKy0gbW9yZSBtYWdpYykuClRy
eWluZyB0byByZXN1bWUgdGhpcyB3b3JrLCBJIGFtIGxvb2tpbmcgZm9yIGNvbmNyZXRlIHN0ZXBz
IHJlcXVpcmVkIHRvIGludGVncmF0ZSBDTkEgd2l0aCB0aGUgcGFyYXZpcnQgcGF0Y2hpbmcuCgpM
b29raW5nIGF0IGFsdGVybmF0aXZlX2luc3RydWN0aW9ucygpLCBJIHdvbmRlciBpZiBJIG5lZWQg
dG8gYWRkIGFub3RoZXIgY2FsbCwgc29tZXRoaW5nIGxpa2UgYXBwbHlfbnVtYSgpIHNpbWlsYXIg
dG8gYXBwbHlfcGFyYXZpcnQoKSwgYW5kIGRvIHRoZSBwYXRjaCB3b3JrIHRoZXJlLgpPciBwZXJo
YXBzIEkgc2hvdWxkIOKAnGp1c3QiIGluaXRpYWxpemUgdGhlIHB2X29wcyBzdHJ1Y3R1cmUgd2l0
aCB0aGUgY29ycmVzcG9uZGluZyBudW1hX3F1ZXVlZF9zcGlubG9ja19zbG93cGF0aCgpIGluIHBh
cmF2aXJ0LmM/CgpBbHNvLCB0aGUgcGFyYXZpcnQgY29kZSBpcyB1bmRlciBhcmNoL3g4Niwgd2hp
bGUgQ05BIGlzIGdlbmVyaWMgKG5vdCB4ODYtc3BlY2lmaWMpLgpEbyB5b3Ugc3RpbGwgd2FudCB0
byBzZWUgQ05BLXJlbGF0ZWQgcGF0Y2hpbmcgcmVzaWRpbmcgdW5kZXIgYXJjaC94ODY/CgpXZSBz
dGlsbCBuZWVkIGEgY29uZmlnIG9wdGlvbiAoc29tZXRoaW5nIGxpa2UgTlVNQV9BV0FSRV9TUElO
TE9DS1MpIHRvIGVuYWJsZSBDTkEgcGF0Y2hpbmcgdW5kZXIgdGhpcyBjb25maWcgb25seSwgY29y
cmVjdD8KClRoYW5rcyBpbiBhZHZhbmNlLArigJQgQWxleAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
