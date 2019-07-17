Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5492A6BE7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 16:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JX96WCLFiKTNDbHoJqSR6WplI4ugW40m7KI8Fv9Ea0U=; b=EmnoodrqMX/Ozb
	jVCwQYwl8Oco7BKcxGyRtEHpEvRxOY+MwzbYO47YW0ZFtHZ3x0155mhD206DrbmDOyuKakGtJ5V3n
	gfCrC8LIpEfu8MXlBdPQ6+VYY3cDE/6aJeAAkEM8lXJMb/1D3Kc0sHTk2yyFXwx6zmqj4Njbts8Mt
	Xm2555AcusWyLSLhMz3OHSV3rXLdZH+7/9dhqDuHHL0BB5EGDtOMyc+kFpZ32nX1LSEopwKTUt+Tn
	q7hUOfWIEeghgZ0PzWXPpKv0sHJLpI06o/BU/eHsusWGVuN0X2wmuGjh1S2T4zgHF2Bd0LzcXHWue
	iGjYkBTHnhygzahAhMTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnl9L-0000vI-OA; Wed, 17 Jul 2019 14:43:19 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnl9D-0000up-F8
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 14:43:12 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6HEdBvo100794;
 Wed, 17 Jul 2019 14:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=ksYZhu2fdY7kAOsQzqB4qBn41JsG7CcF18Hev7FIFKE=;
 b=v0AsSmXvq1TQUtPQP6fHperZC/SOkuz28Z5PxhUtLv9iU8G/lDb4YiWwTfy8HXeQbmvy
 cGJllhe0vBjy+42s6uBkqcZHBc0V++AP3IeeiQ3R3eH6/dyHouzot/ov/5AnWFHOU8Xq
 pKDPoiMErZ9zoBDKqj5DGKBzypX9U0i5TpA2huYIacQo0SjOEQBlB8Y9PQpTG+FTtg1R
 hseJmjrqG9JaFzlPeFGVC9xIpz0R9tBVijQxeDY7dkl7mPtCDqsiwGIUrrHtk7zE4WPI
 WhNuJNVIpss8xSIdaUc+efJAH/6MN3xSIwe9sL5hMn/4PuPdQMemW414vNUZ0ZDojib4 xA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2tq7xr382x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jul 2019 14:42:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6HEbtWW106473;
 Wed, 17 Jul 2019 14:42:38 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2tsmccf337-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jul 2019 14:42:38 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6HEgVhQ014169;
 Wed, 17 Jul 2019 14:42:31 GMT
Received: from [192.168.0.21] (/209.6.165.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jul 2019 14:42:30 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20190717074435.GU3419@hirez.programming.kicks-ass.net>
Date: Wed, 17 Jul 2019 10:42:26 -0400
Message-Id: <779FC7D4-67CE-4D22-8154-FC108479935F@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <9fa54e98-0b9b-0931-db32-c6bd6ccfe75b@redhat.com>
 <20190717074435.GU3419@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=789
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907170172
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=838 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907170172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_074311_642519_5F544575 
X-CRM114-Status: GOOD (  10.76  )
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
 bp@alien8.de, hpa@zytor.com, Waiman Long <longman@redhat.com>,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4+ICAqICAgIG1jc19ub2RlCj4+ICAqICAgKy0tLS0tLS0tKyAgICAgICstLS0tKyAgICAgICAg
ICstLS0tKwo+PiAgKiAgIHwgbmV4dCAgIHwgLS0tPiB8bmV4dHwgLT4gLi4uICB8bmV4dHwgLT4g
TlVMTCAgW01haW4gcXVldWVdCj4+ICAqICAgfCBsb2NrZWQgfCAtKyAgICstLS0tKyAgICAgICAg
ICstLS0tKwo+PiAgKiAgICstLS0tLS0tLSsgIHwKPj4gICogICAgICAgICAgICAgICB8ICAgKy0t
LS0tLS0tLSsgICAgICAgICArLS0tLSsKPj4gICogICAgICAgICAgICAgICArLT4gfG1jczo6bmV4
dHwgLT4gLi4uICB8bmV4dHwgLT4gTlVMTCAgICAgW1NlY29uZGFyeSBxdWV1ZV0KPj4gKiAgICAg
ICAgICAgICAgICAgICB8Y25hOjp0YWlsfCAtKyAgICAgICstLS0tKwo+PiAgKiAgICAgICAgICAg
ICAgICAgICArLS0tLS0tLS0tKyAgfCAgICAgICAgXgo+PiAqICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICArLS0tLS0tLS0rCj4+ICAqCj4+ICAqIE4uQi4gbG9ja2VkID0gMSBpZiBzZWNv
bmRhcnkgcXVldWUgaXMgYWJzZW50Lgo+PiAgKi8KCgpJIHdvdWxkIGNoYW5nZSBtY3Nfbm9kZSB0
byBjbmFfbm9kZSwgbmV4dCB0byBtY3M6Om5leHQgYW5kIGxvY2tlZCB0byBtY3M6OmxvY2tlZApp
biB0aGUgdmVyeSBmaXJzdCBub2RlLiBPdGhlciB0aGFuIHRoYXQsIHRoaXMgaXMgZ3JlYXQuIFRo
YW5rcywgUGV0ZXIgYW5kIExvbmdtYW4hCgpJIHNob3VsZCBwcm9iYWJseSBzdGljayB0aGlzIGdy
YXBoaWMgaW4gdGhlIGNvbW1lbnQgYXQgdGhlIHRvcCBvZiB0aGUgZmlsZSwgCmluc3RlYWQgb2Yg
YSBjb21tZW50IHRvIGZpbmRfc3VjY2Vzc29yKCkgKG9yIHdoYXRldmVyIHRoaXMgZnVuY3Rpb24g
ZW5kcyB1cCAKYmVpbmcgY2FsbGVkKS4KCuKAlCBBbGV4CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
