Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96116AA9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDeCrm/cgFcQkKaEPC2czeifHM6MP58RdArXHqJ6L3I=; b=JC/iizhvaPkp/A
	mQ2iQteOU2rIiB4keeXCa9FXck+hZv/NwRPnsb08LOX0VTzd6TTmBkLth3X9iwtcPivwHXDcAw9pV
	Q3ZJpkVn0zu4thCgvb7laHefrqYFxaDkU0oA/Q6CIxgcK0c6rFvMTN+Mag6yHmjH+L7uVm5iYa+c2
	y63gyWiWy4gG2QNng2xsFdKgEcaDxzoI68GOi2/87TcMnLfqfTUqT0FT9jGDsIaeJguIN/8i5TNfj
	QkTlJsU3o2XpwJEG4o3hYyVrbCLaI87aeaYYhfUE/UNIvBABsf1j8aD3B+6nbomw5jL//OeMBdDv4
	0BJrpiAqdSRR29OfNNiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOUA-0008WG-G6; Tue, 16 Jul 2019 14:31:18 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOTx-0008Vr-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:31:06 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6GESeuB114127;
 Tue, 16 Jul 2019 14:30:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=N/b6VOTPb74aJOzgxtMHhEZs0/2R4+eOxM9iauY4Cqo=;
 b=TYIwu/vXzDGP10SKtj166MVC8ei7IqLWvnBGRm8foSd5zDykmbm2AQ5DxeMVe0m3G5tG
 jAPcv/h9wMpyhAlKC+y8VqaSykrEo+SPJDAstUtqUbVU+dDsi54IdMSq+nl/9N6Bc+GD
 6o8yQj2ABHPFYvxrBLJEAMOcsm/BBYjdq/5G5j+EefxsWllZZxLfmu00gJT9MLwjAx8z
 iq6CubmrHZ6mNazgzj+cXgjNjxVsibSPKt1wsgXSqfwpZb6xr6/AWZFGRSdsa/03BmXs
 p5LwhzhwqYaO5nb/1dS8TEzyUiZm5mVzjjxdFkugPoVyj7zAuEJ6jL0wpKmlO+utgS64 XA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2tq7xqvua1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jul 2019 14:30:36 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6GES5wd183813;
 Tue, 16 Jul 2019 14:30:35 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2tq5bcevaf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jul 2019 14:30:35 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6GEUXUa023587;
 Tue, 16 Jul 2019 14:30:33 GMT
Received: from [10.39.235.122] (/10.39.235.122)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jul 2019 07:30:33 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20190716110518.GQ3419@hirez.programming.kicks-ass.net>
Date: Tue, 16 Jul 2019 10:30:28 -0400
Message-Id: <FDD00A3A-6938-40DE-B464-A56C641B4634@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <20190716110518.GQ3419@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=879
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907160178
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=930 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907160178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_073105_380553_362D4AA9 
X-CRM114-Status: GOOD (  14.23  )
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

Cj4gT24gSnVsIDE2LCAyMDE5LCBhdCA3OjA1IEFNLCBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGlu
ZnJhZGVhZC5vcmc+IHdyb3RlOgo+IAo+IE9uIE1vbiwgSnVsIDE1LCAyMDE5IGF0IDAzOjI1OjM0
UE0gLTA0MDAsIEFsZXggS29nYW4gd3JvdGU6Cj4+ICsvKioKPj4gKyAqIGZpbmRfc3VjY2Vzc29y
IC0gU2NhbiB0aGUgbWFpbiB3YWl0aW5nIHF1ZXVlIGxvb2tpbmcgZm9yIHRoZSBmaXJzdAo+PiAr
ICogdGhyZWFkIHJ1bm5pbmcgb24gdGhlIHNhbWUgbm9kZSBhcyB0aGUgbG9jayBob2xkZXIuIElm
IGZvdW5kIChjYWxsIGl0Cj4+ICsgKiB0aHJlYWQgVCksIG1vdmUgYWxsIHRocmVhZHMgaW4gdGhl
IG1haW4gcXVldWUgYmV0d2VlbiB0aGUgbG9jayBob2xkZXIKPj4gKyAqIGFuZCBUIHRvIHRoZSBl
bmQgb2YgdGhlIHNlY29uZGFyeSBxdWV1ZSBhbmQgcmV0dXJuIFQ7IG90aGVyd2lzZSwgcmV0dXJu
IE5VTEwuCj4+ICsgKi8KPj4gK3N0YXRpYyBzdHJ1Y3QgY25hX25vZGUgKmZpbmRfc3VjY2Vzc29y
KHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm1lKQo+IAo+IEVpdGhlciBkb24ndCB1c2UgYSBrZXJuZWwg
ZG9jIGNvbW1lbnQsIGJ1dCBpZiB5b3UgbXVzdCwgeW91IGhhdmUgdG8KPiBzdGljayB0byB0aGVp
ciBmb3JtYXQsIG90aGVyd2lzZSB3ZSdsbCBnZXQgZW5kbGVzcyBzdHVwaWQgcGF0Y2hlcyBmaXhp
bmcKPiB1cCB0aGUgc3R1cGlkIGNvbW1lbnQuCldpbGwgZml4IHRoYXQuCgpUaGFua3MsCuKAlCBB
bGV4CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
