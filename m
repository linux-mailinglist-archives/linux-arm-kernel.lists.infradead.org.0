Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C27377C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4CXgKH6T+XrwmnFaPlAdf+ZdwJ5hN2EqPDsITUyTwE=; b=G1xfoUR7oeUj/H
	y3Okq8WAD2lY8h/vUnFO5i4Gi5bVdbHjO3HRE4L7Z/UwZrNYkTnaB3DO5wwpoLzXUdmUQIuCDf+oM
	g1OjqEE01XzG7gh8fDR8eHAax4IrIGTruRIL1wSpeM0bfdD72QeRr/Kh9Q8MLaEtAwuL7C8tKgcUj
	AATD8HwbtySu+kuJViJpDI4JF8GUnfY7BgFDlOZta5G8awCdxizEL43ngR/2pj8Lz3OGhJmYOKOfi
	g5MfHyNK3c2hXR/EJ5p6maqbZVaKnT03nyD8BHyhLGHi5/HMqVyxCcgDECsAeP1dvWLdHj1tdjkCR
	1Vaw1RiEI06XdtVCbwOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuEI-0000Wz-Rx; Thu, 06 Jun 2019 15:23:02 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuEB-0000WW-KQ
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:22:57 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56F8dwU141560;
 Thu, 6 Jun 2019 15:22:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=ketKTVwbtklQIJXqAbX+H6nxp1mYN2KsNnWPbZLX+qw=;
 b=YU740Z7r5N9HPgb5jCMJGJJWLnq7dSsMg5QxEXG0zQCxJcR7gw8s1v6LJfzQbwYEbjXC
 2QL7hJTBixRhxTYbEXatWnvAlC5kz5Y6xlDf8NbEDayqlICWqzF8zPWRoXu2ZAEbdCN1
 oKRHmUUruLaY3qONu64FgBq98cOi7l/RcCgBW0jmNfjOkGeUrHAji/AWDVhYNg9nM/I/
 wvohiWVeAYfvCdQql/iinBNGVsDJmjZY3dxYQEL3g9esS/9Sj2PwkGi7oGO8UTV+Oihc
 bWnqx4nhAdQDqTZpXXr4xCMzKR5zG/0q4a1bplhhUK4C2EtuKZ9lvX66MWobqI40ytRl 6Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2suj0qs2uc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 15:22:10 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56FKgBb070053;
 Thu, 6 Jun 2019 15:22:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2swnhcrbhx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 15:22:09 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x56FLnw4008838;
 Thu, 6 Jun 2019 15:21:49 GMT
Received: from [10.11.111.157] (/10.11.111.157)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 06 Jun 2019 08:21:48 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v2 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20190605204003.GC3402@hirez.programming.kicks-ass.net>
Date: Thu, 6 Jun 2019 11:21:48 -0400
Message-Id: <6426D627-77EE-471C-B02A-A85271B666E9@oracle.com>
References: <20190329152006.110370-1-alex.kogan@oracle.com>
 <20190329152006.110370-4-alex.kogan@oracle.com>
 <60a3a2d8-d222-73aa-2df1-64c9d3fa3241@redhat.com>
 <20190402094320.GM11158@hirez.programming.kicks-ass.net>
 <6AEDE4F2-306A-4DF9-9307-9E3517C68A2B@oracle.com>
 <20190403160112.GK4038@hirez.programming.kicks-ass.net>
 <C0BC44A5-875C-4BED-A616-D380F6CF25D5@oracle.com>
 <20190605204003.GC3402@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9280
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906060104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9280
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906060104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_082255_810089_156DFD0A 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Steven Sistare <steven.sistare@oracle.com>, linux-kernel@vger.kernel.org,
 Rahul Yadav <rahul.x.yadav@oracle.com>, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, Waiman Long <longman@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4gQWxzbywgdGhlIHBhcmF2aXJ0IGNvZGUgaXMgdW5kZXIgYXJjaC94ODYsIHdoaWxlIENOQSBp
cyBnZW5lcmljIChub3QKPj4geDg2LXNwZWNpZmljKS4gIERvIHlvdSBzdGlsbCB3YW50IHRvIHNl
ZSBDTkEtcmVsYXRlZCBwYXRjaGluZyByZXNpZGluZwo+PiB1bmRlciBhcmNoL3g4Nj8KPj4gCj4+
IFdlIHN0aWxsIG5lZWQgYSBjb25maWcgb3B0aW9uIChzb21ldGhpbmcgbGlrZSBOVU1BX0FXQVJF
X1NQSU5MT0NLUykgdG8KPj4gZW5hYmxlIENOQSBwYXRjaGluZyB1bmRlciB0aGlzIGNvbmZpZyBv
bmx5LCBjb3JyZWN0Pwo+IAo+IFRoZXJlIGlzIHRoZSBzdGF0aWNfY2FsbCgpIHN0dWZmIHRoYXQg
Y291bGQgYmUgZ2VuZXJpYzsgSSBwb3N0ZWQgYSBuZXcKPiB2ZXJzaW9uIG9mIHRoYXQgdG9kYXkg
KHg4NiBvbmx5IGZvciBub3csIGJ1dCBJSVJDIHRoZXJlJ3MgYXJtNjQgcGF0Y2hlcwo+IGZvciB0
aGF0IGFyb3VuZCBzb21ld2hlcmUgdG9vKS4KClRoZSBzdGF0aWNfY2FsbCB0ZWNobmlxdWUgYXBw
ZWFycyBhcyB0aGUgbW9yZSBkZXNpcmFibGUgbG9uZy10ZXJtIGFwcHJvYWNoLCBidXQgSSB0aGlu
ayBpdCB3b3VsZCBiZSBwcnVkZW50IHRvIGtlZXAgdGhlIHBhdGNoZXMgZGVjb3VwbGVkIGZvciBu
b3cgc28gd2UgY2FuIG1vdmUgZm9yd2FyZCB3aXRoIGxlc3MgZW50YW5nbGVtZW50cy4KU28gdW5s
ZXNzIGFueW9uZSBvYmplY3RzLCB3ZSB3aWxsIHdvcmsgb24gcGx1Z2dpbmcgaW50byB0aGUgZXhp
c3RpbmcgcGF0Y2hpbmcgZm9yIHB2LgpBbmQgd2Ugd2lsbCBrZWVwIHRoYXQgY29kZSB1bmRlciBh
cmNoL3g4NiwgYnV0IHdpbGwgYmUgb3BlbiBmb3IgYW55IHN1Z2dlc3Rpb24gdG8gbW92ZSBpdCBl
bHNld2hlcmUuCgpUaGFua3MhCuKAlCBBbGV4CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
