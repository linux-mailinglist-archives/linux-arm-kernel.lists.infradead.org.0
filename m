Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8917F14E556
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 23:06:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNJT8My1Xqft3/rwLPU+Ud3UgR6TVaKmHK2aKFwYhww=; b=LWUpI2c7sUUCns
	vrvito6JYurn3I9O1en/wr3YVRxPtJrv7YT3ezupMPCW0NVRbpNobmVBO/0iRcpUhj+/5no2y7zMY
	bUKLV6LzID/MWhLhF9RrhTYM3svoHgZPDHAySXCl4slAoN9R36YUD7lOnrNDID5cpAp6YfWTOP53D
	0B+LnYCx1FxvaKP59o3h8LtzUqC1dycdkPTaYDlJvrQRzD0oMbVtOEu3iUbJciWh5ZqjgffulCycr
	0ocCB7D6jF1FWoqZiaiSpErS+s8l/EXbVBLvbv5bCny0nDWt90OMLGcYxB6OYcv9gnFC24vExZ9RZ
	lnIzckKULS36wqAd9Ttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixHxW-00011b-4H; Thu, 30 Jan 2020 22:06:46 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixHxD-0000uP-QF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 22:06:29 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00UM3PG3086147;
 Thu, 30 Jan 2020 22:05:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=YcC/ENL9iqZSK4D+kLTsVIomtiqLWyzWEd1epN64/qk=;
 b=ioKZPM/slJXaLf4ZqEMqjvk+50DLqvuHkdOHw+Cgz8ayZR5+WNQDpbi+xWzC6CTS4RLn
 i3wVxKs03PWdcARBZlEUP/KsqLSz610530AVUDlI8I5/aW+Hd6HWJFiiaHRZIzJdV3Fg
 p8OihU85jmRVEcM6UZKji5cXyfayxFbypX7itJApNsW84VvXKL+RF1e22fwewf3h0K/H
 2DvwJG2xHcGPXJSWW7z1EGzHVNlPlGf+5aD9b35PzKGqjV2zmjZXtiTXusU1TuwNrxeQ
 YG9dvPPKsKK6hiJgPFc61QUVg8U/hpQYi6es26RzP4RG1R5PlKRyoyrMAsC3dWiH2fpQ Ig== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xrdmqy3u2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Jan 2020 22:05:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00UM3hR2033459;
 Thu, 30 Jan 2020 22:05:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2xuemxby59-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Jan 2020 22:05:37 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00UM5VAY018630;
 Thu, 30 Jan 2020 22:05:31 GMT
Received: from [10.39.234.252] (/10.39.234.252)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 Jan 2020 14:05:30 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20200125111931.GW11457@worktop.programming.kicks-ass.net>
Date: Thu, 30 Jan 2020 17:05:28 -0500
Message-Id: <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
References: <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <20200125111931.GW11457@worktop.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001300147
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001300147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_140627_956725_9661FED1 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 Steven Sistare <steven.sistare@oracle.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gSmFuIDI1LCAyMDIwLCBhdCA2OjE5IEFNLCBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGlu
ZnJhZGVhZC5vcmc+IHdyb3RlOgo+IAo+IE9uIEZyaSwgSmFuIDI0LCAyMDIwIGF0IDAxOjE5OjA1
UE0gLTA1MDAsIEFsZXggS29nYW4gd3JvdGU6Cj4gCj4+IElzIHRoZXJlIGEgbGlnaHR3ZWlnaHQg
d2F5IHRvIGlkZW50aWZ5IHN1Y2ggYSDigJxwcmlvcml0aXplZOKAnSB0aHJlYWQ/Cj4gCj4gTm87
IHBlb3BsZSBtaWdodCBmb3IgaW5zdGFuY2UgY2FyZSBhYm91dCB0YWlsIGxhdGVuY2llcyBiZXR3
ZWVuIHRoZWlyCj4gaWRlbnRpY2FsbHkgc3BlYydlZCB3b3JrZXIgdGFza3MuCgpJIHdvdWxkIGFy
Z3VlIHRoYXQgdGhvc2UgdXNlcnMgbmVlZCB0byB0dW5lL3JlZHVjZSB0aGUgaW50cmEtbm9kZSBo
YW5kb2ZmCnRocmVzaG9sZCBmb3IgdGhlaXIgbmVlZHMuIE9yIGRpc2FibGUgQ05BIGFsdG9nZXRo
ZXIuCgpJbiBnZW5lcmFsLCBQZXRlciwgc2VlbXMgbGlrZSB5b3UgYXJlIG5vdCBvbiBib2FyZCB3
aXRoIHRoZSB3YXkgTG9uZ21hbgpzdWdnZXN0ZWQgdG8gaGFuZGxlIHByaW9yaXRpemVkIHRocmVh
ZHMuIEFtIEkgcmlnaHQ/CgpUaGFua3MsCuKAlCBBbGV4CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
