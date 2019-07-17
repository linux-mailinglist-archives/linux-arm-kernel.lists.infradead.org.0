Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D986BE90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 16:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPl1gkmjF/gHsAwM1MiF352zd54y09DkrHcaAIUWeL8=; b=ldcNiwBzpjUTWq
	UtNK+S5aK3xYDGy0wtOABs561qJje0NbRKQpio3HRFFxr0JNRLAv/eA2ls9YF7gjH/L2bEfqRW6/Y
	II+m9JP749D90HRqyosIndyyvMnjt8hJPywFYPX3jV8SNr4QomWVSvYyUCceDZEDEOmJ0Iim3/IGJ
	yIrsmy5Pn/eZ2rYaGJavaZZap8/WgdXqxyNoWYshANxUS3u7IMG6+PbOk6SBNJQsIYxCMRoPUCUxM
	6/TPQuBRvtCb1RyPIyYTycKr+4dVVr9VnbyX6HNgxtzS1DDCpJJuClseuTV22e8x6znv6FhHV7v9T
	aX5I8xKP+G5dtFST0BdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlIp-0004Qj-Gj; Wed, 17 Jul 2019 14:53:07 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlIf-0004QN-74
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 14:52:58 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6HEmdQ3110195;
 Wed, 17 Jul 2019 14:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=oYmVwQZsFGYE+fNPNwS0IyHacSBrbfGDnnN6IW7+sSk=;
 b=TCNdZJ8spckOV4ug0H4HDz36K7JhhHdTjU8WS0DnoVxYtq4O3ygJW3vwC7IrFK5ymtx4
 wnjcx7Jrs/lkEljefng81SgJmi+Jcc68W59iINHmfsKICKo5Q7vCfZqWE1MayuxM7oKQ
 xdl3WSaQ3X7egm5jm/1DwClGsZq/GVBl9vxxf037FToUyVKVJKji1M6hn8xOq22cTCSc
 pW/xXj2uY1INJdf7LLrlU46lo7E93dWkUAcgqxCq7op3T9bcUAWOnrzR3cqthsPn7fwM
 coq58UrQXOipTqtxJyVAFGs5alZei1qMpTqYNKZ0DejVwFzZUZ03zfiS1XfAi8+IlWzT 1w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2tq7xr3a2e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jul 2019 14:52:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6HEmS58133702;
 Wed, 17 Jul 2019 14:52:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2tsmccf86f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jul 2019 14:52:13 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6HEqAML025928;
 Wed, 17 Jul 2019 14:52:10 GMT
Received: from [192.168.0.21] (/209.6.165.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jul 2019 14:52:09 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20190717085900.GS3463@hirez.programming.kicks-ass.net>
Date: Wed, 17 Jul 2019 10:52:05 -0400
Message-Id: <57614CAF-AF4C-4814-A628-2D30B399C117@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <20190716155022.GR3419@hirez.programming.kicks-ass.net>
 <193BBB31-F376-451F-BDE1-D4807140EB51@oracle.com>
 <20190716184724.GH3402@hirez.programming.kicks-ass.net>
 <20190717083944.GR3463@hirez.programming.kicks-ass.net>
 <20190717085900.GS3463@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=784
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907170174
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=836 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907170174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_075257_345736_A0FA9446 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gSnVsIDE3LCAyMDE5LCBhdCA0OjU5IEFNLCBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGlu
ZnJhZGVhZC5vcmc+IHdyb3RlOgo+IAo+IE9uIFdlZCwgSnVsIDE3LCAyMDE5IGF0IDEwOjM5OjQ0
QU0gKzAyMDAsIFBldGVyIFppamxzdHJhIHdyb3RlOgo+PiBPbiBUdWUsIEp1bCAxNiwgMjAxOSBh
dCAwODo0NzoyNFBNICswMjAwLCBQZXRlciBaaWpsc3RyYSB3cm90ZToKPiAKPj4+IE15IHByaW1h
cnkgY29uY2VybiB3YXMgcmVhZGFiaWxpdHk7IEkgZmluZCB0aGUgYWJvdmUgc3VnZ2VzdGlvbiBt
dWNoCj4+PiBtb3JlIHJlYWRhYmxlLiBNYXliZSBpdCBjYW4gYmUgd3JpdHRlbiBkaWZmZXJlbnRs
eTsgeW91J2xsIGhhdmUgdG8gcGxheQo+Pj4gYXJvdW5kIGEgYml0Lgo+PiAKPj4gc3RhdGljIHZv
aWQgY25hX3NwbGljZV90YWlsKHN0cnVjdCBjbmFfbm9kZSAqY24sIHN0cnVjdCBjbmFfbm9kZSAq
aGVhZCwgc3RydWN0IGNuYV9ub2RlICp0YWlsKQo+PiB7Cj4+IAlzdHJ1Y3QgY25hX25vZGUgKmxp
c3Q7Cj4+IAo+PiAJLyogcmVtb3ZlIFtoZWFkLHRhaWxdICovCj4+IAlXUklURV9PTkNFKGNuLT5t
Y3MubmV4dCwgdGFpbC0+bWNzLm5leHQpOwo+PiAJdGFpbC0+bWNzLm5leHQgPSBOVUxMOwo+PiAK
Pj4gCS8qIHN0aWNrIFtoZWFkLHRhaWxdIG9uIHRoZSBzZWNvbmRhcnkgbGlzdCB0YWlsICovCj4+
IAlpZiAoY24tPm1jcy5sb2NrZWQgPD0gMSkgewo+PiAJCS8qIGNyZWF0ZSBzZWNvbmRhcnkgbGlz
dCAqLwo+PiAJCWhlYWQtPnRhaWwgPSB0YWlsOwo+PiAJCWNuLT5tY3MubG9ja2VkID0gaGVhZC0+
ZW5jb2RlZF90YWlsOwo+PiAJfSBlbHNlIHsKPj4gCQkvKiBhZGQgdG8gdGFpbCAqLwo+PiAJCWxp
c3QgPSAoc3RydWN0IGNuYV9ub2RlICopZGVjb2RlX3RhaWwoY24tPm1jcy5sb2NrZWQpOwo+PiAJ
CWxpc3QtPnRhaWwtPm5leHQgPSBoZWFkOwo+PiAJCWxpc3QtPnRhaWwgPSB0YWlsOwo+PiAJfQo+
PiB9Cj4+IAo+PiBzdGF0aWMgc3RydWN0IGNuYV9ub2RlICpjbmFfZmluZF9uZXh0KHN0cnVjdCBt
Y3Nfc3BpbmxvY2sgKm5vZGUpCj4+IHsKPj4gCXN0cnVjdCBjbmFfbm9kZSAqY25pLCAqY24gPSAo
c3RydWN0IGNuYV9ub2RlICopbm9kZTsKPj4gCXN0cnVjdCBjbmFfbm9kZSAqaGVhZCwgKnRhaWwg
PSBOVUxMOwo+PiAKPj4gCS8qIGZpbmQgYW55IG5leHQgbG9jayBmcm9tICdvdXInIG5vZGUgKi8K
Pj4gCWZvciAoaGVhZCA9IGNuaSA9IChzdHJ1Y3QgY25hX25vZGUgKilSRUFEX09OQ0UoY24tPm1j
cy5uZXh0KTsKPj4gCSAgICAgY25pICYmIGNuaS0+bm9kZSAhPSBjbi0+bm9kZTsKPj4gCSAgICAg
dGFpbCA9IGNuaSwgY25pID0gKHN0cnVjdCBjbmFfbm9kZSAqKVJFQURfT05DRShjbmktPm1jcy5u
ZXh0KSkKPj4gCQk7Cj4gCj4gSSB0aGluayB3ZSBjYW4gZG8gYXdheSB3aXRoIHRob3NlIFJFQURf
T05DRSgpcywgYXQgdGhpcyBwb2ludCB0aG9zZQo+IHBvaW50ZXJzIHNob3VsZCBiZSBzdGFibGUu
IEJ1dCBwbGVhc2UgZG91YmxlIGNoZWNrLgoKSSB0aGluayB3ZSBjYW4gZ2V0IHJpZCBvZiBXUklU
RV9PTkNFIGFib3ZlIGFuZCB0aGUgZmlyc3QgUkVBRF9PTkNFLCBhcyB0aGUgCuKAnGZpcnN04oCd
IG5leHQgcG9pbnRlciAoaW4gdGhlIG5vZGUgb2YgdGhlIGN1cnJlbnQgbG9jayBob2xkZXIpIGlz
IHN0YWJsZSBhdCB0aGlzCnBvaW50LCBhbmQgaXMgbm90IHJlYWQgLyB3cml0dGVuIGNvbmN1cnJl
bnRseS4gV2UgZG8gbmVlZCB0aGUgc2Vjb25kIFJFQURfT05DRQphcyB3ZSB0cmF2ZXJzZSB0aGUg
bGlzdCBhbmQgY2FuIGNvbWUgYWNyb3NzIGEgbmV4dCBwb2ludGVyIGJlaW5nIGNoYW5nZWQuCgri
gJQgQWxleAoKPiAKPj4gCS8qIHdoZW4gZm91bmQsIHNwbGljZSBhbnkgc2tpcHBlZCBsb2NrcyBv
bnRvIHRoZSBzZWNvbmRhcnkgbGlzdCAqLwo+PiAJaWYgKGNuaSAmJiB0YWlsKQo+PiAJCWNuYV9z
cGxpY2VfdGFpbChjbiwgaGVhZCwgdGFpbCk7Cj4+IAo+PiAJcmV0dXJuIGNuaTsKPj4gfQo+PiAK
Pj4gSG93J3MgdGhhdD8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
