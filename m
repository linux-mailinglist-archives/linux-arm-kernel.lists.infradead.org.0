Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61100D8777
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 06:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zK1m6w49ooY/oELs9QXayzTW3R2mtJinHK9PnmO4HOk=; b=nPtYWrYpAPBGVe
	KrqxtsdPzeYblmJaii9yBrWp1JKKvRnZO3gIaGNut1oPxnwrmC1zfvuhluUjZiUZpeRGYZfCVoX7q
	/K4UXZq6JZyvrFnKXNXw5xf/XpGi8vYF7MYQNAFd+6SvjScpewgM1V+01AaZhj8qn4zepO5xnzRP7
	TyXp6or5THlGq0WERQ55aPX83FQEjZZAv8RUP++Fr0GTupGeq9aJpHlA9e5TCl5D2coCwZS+oExDl
	E1xnz5lEM2qIB87WMLFQJaiuI1osKkEPKEnd5WbedtccjApUKVyeIdjjr9dF+qKGGNTU0DP2088JN
	IOmkxAoMC2qki8+CwJmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKazT-0002s9-VG; Wed, 16 Oct 2019 04:32:51 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKayy-0002ic-Un
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 04:32:23 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9G4SbB7166088;
 Wed, 16 Oct 2019 04:31:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=SjMY2CWkzmBSyTOuZ/oTakA5fkKjvmKR1RWoCcDCaag=;
 b=et4X9bLB3DJbrRCtsHZ486/SIMF49ywsTUL5A0LPtfZZE+DXevPi4A9/O70dhskgcMXs
 lSEZVJkOALfFIhYIF/cGBgxLSFk1BBquzAow/aIEVOwFl0SfqDLetE2IJl2h4u4Cy/rA
 4H5/Q8SkSBD/xTftqtkSA+sd8LGgjK15QFvzbUtd0SI9XEN1QCcFbiXnp9obqycmGiRx
 2o2Xm4HreNHuMBeQc4Eq56yKX0RqdEusRIfU8zzmS+rgndccSwQpOoLvtKUJCMyuNwtU
 7+cpApatYB0PE6UMDgJcWkLibGNmi1cBhVodJrszHPyIjIgTe7C+E9seGyRQ73B3h/Q9 Fw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2vk7frbxgp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 04:31:20 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9G4Rf2U122538;
 Wed, 16 Oct 2019 04:31:20 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vn719wws6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 04:31:20 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9G4V67u007524;
 Wed, 16 Oct 2019 04:31:06 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 15 Oct 2019 21:31:05 -0700
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v5 0/5] Add NUMA-awareness to qspinlock
Date: Wed, 16 Oct 2019 00:28:58 -0400
Message-Id: <20191016042903.61081-1-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9411
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910160040
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9411
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910160040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_213221_074710_6E3C10F4 
X-CRM114-Status: GOOD (  25.51  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, rahul.x.yadav@oracle.com,
 steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hhbmdlcyBmcm9tIHY0OgotLS0tLS0tLS0tLS0tLS0tCgotIFN3aXRjaCB0byBhIGRldGVybWlu
aXN0aWMgYm91bmQgb24gdGhlIG51bWJlciBvZiBpbnRyYS1ub2RlIGhhbmRvZmZzLAphcyBzdWdn
ZXN0ZWQgYnkgTG9uZ21hbi4KCi0gU2NhbiB0aGUgbWFpbiBxdWV1ZSBhZnRlciBhY3F1aXJpbmcg
dGhlIE1DUyBsb2NrIGFuZCBiZWZvcmUgYWNxdWlyaW5nIAp0aGUgc3BpbmxvY2sgKHByZS1zY2Fu
KSwgYXMgc3VnZ2VzdGVkIGJ5IExvbmdtYW4uIElmIG5vIHRocmVhZCBpcyBmb3VuZCAKaW4gcHJl
LXNjYW4sIHRyeSBhZ2FpbiBhZnRlciBhY3F1aXJpbmcgdGhlIHNwaW5sb2NrLCByZXN1bWluZyBm
cm9tIHRoZQpzYW1lIHBsYWNlIHdoZXJlIHByZS1zY2FuIHN0b3BwZWQuCgotIENvbnZlcnQgdGhl
IHNlY29uZGFyeSBxdWV1ZSB0byBhIGN5Y2xpYyBsaXN0IHN1Y2ggdGhhdCB0aGUgdGFpbOKAmXMg
QG5leHQKcG9pbnRzIHRvIHRoZSBoZWFkIG9mIHRoZSBxdWV1ZS4gU3RvcmUgdGhlIHBvaW50ZXIg
dG8gdGhlIHNlY29uZGFyeSBxdWV1ZQp0YWlsIChyYXRoZXIgdGhhbiBoZWFkKSBpbiBAbG9ja2Vk
LiBUaGlzIGVsaW1pbmF0ZXMgdGhlIG5lZWQgZm9yIHRoZSBAdGFpbApmaWVsZCBpbiBDTkEgbm9k
ZXMsIG1ha2luZyBzcGFjZSBmb3IgZmllbGRzIHJlcXVpcmVkIGJ5IHRoZSB0d28gY2hhbmdlcwph
Ym92ZS4KCi0gQ2hhbmdlIGFyY2hfbWNzX3NwaW5fbG9ja19jb250ZW5kZWQoKSB0byBhcmNoX21j
c19zcGluX2xvY2soKSwgYW5kCmZpeCBtaXN1c2Ugb2Ygb2xkIG1hY3JvIG5hbWVzLCBhcyBzdWdn
ZXN0ZWQgYnkgSGFuanVuLgoKClN1bW1hcnkKLS0tLS0tLQoKTG9jayB0aHJvdWdocHV0IGNhbiBi
ZSBpbmNyZWFzZWQgYnkgaGFuZGluZyBhIGxvY2sgdG8gYSB3YWl0ZXIgb24gdGhlCnNhbWUgTlVN
QSBub2RlIGFzIHRoZSBsb2NrIGhvbGRlciwgcHJvdmlkZWQgY2FyZSBpcyB0YWtlbiB0byBhdm9p
ZApzdGFydmF0aW9uIG9mIHdhaXRlcnMgb24gb3RoZXIgTlVNQSBub2Rlcy4gVGhpcyBwYXRjaCBp
bnRyb2R1Y2VzIENOQQooY29tcGFjdCBOVU1BLWF3YXJlIGxvY2spIGFzIHRoZSBzbG93IHBhdGgg
Zm9yIHFzcGlubG9jay4gSXQgaXMKZW5hYmxlZCB0aHJvdWdoIGEgY29uZmlndXJhdGlvbiBvcHRp
b24gKE5VTUFfQVdBUkVfU1BJTkxPQ0tTKS4KCkNOQSBpcyBhIE5VTUEtYXdhcmUgdmVyc2lvbiBv
ZiB0aGUgTUNTIGxvY2suIFNwaW5uaW5nIHRocmVhZHMgYXJlCm9yZ2FuaXplZCBpbiB0d28gcXVl
dWVzLCBhIG1haW4gcXVldWUgZm9yIHRocmVhZHMgcnVubmluZyBvbiB0aGUgc2FtZQpub2RlIGFz
IHRoZSBjdXJyZW50IGxvY2sgaG9sZGVyLCBhbmQgYSBzZWNvbmRhcnkgcXVldWUgZm9yIHRocmVh
ZHMKcnVubmluZyBvbiBvdGhlciBub2Rlcy4gVGhyZWFkcyBzdG9yZSB0aGUgSUQgb2YgdGhlIG5v
ZGUgb24gd2hpY2gKdGhleSBhcmUgcnVubmluZyBpbiB0aGVpciBxdWV1ZSBub2Rlcy4gQWZ0ZXIg
YWNxdWlyaW5nIHRoZSBNQ1MgbG9jayBhbmQKYmVmb3JlIGFjcXVpcmluZyB0aGUgc3BpbmxvY2ss
IHRoZSBsb2NrIGhvbGRlciBzY2FucyB0aGUgbWFpbiBxdWV1ZQpsb29raW5nIGZvciBhIHRocmVh
ZCBydW5uaW5nIG9uIHRoZSBzYW1lIG5vZGUgKHByZS1zY2FuKS4gSWYgZm91bmQgKGNhbGwKaXQg
dGhyZWFkIFQpLCBhbGwgdGhyZWFkcyBpbiB0aGUgbWFpbiBxdWV1ZSBiZXR3ZWVuIHRoZSBjdXJy
ZW50IGxvY2sKaG9sZGVyIGFuZCBUIGFyZSBtb3ZlZCB0byB0aGUgZW5kIG9mIHRoZSBzZWNvbmRh
cnkgcXVldWUuICBJZiBzdWNoIFQKaXMgbm90IGZvdW5kLCB3ZSBtYWtlIGFub3RoZXIgc2NhbiBv
ZiB0aGUgbWFpbiBxdWV1ZSBhZnRlciBhY3F1aXJpbmcgCnRoZSBzcGlubG9jayB3aGVuIHVubG9j
a2luZyB0aGUgTUNTIGxvY2sgKHBvc3Qtc2NhbiksIHN0YXJ0aW5nIGF0IHRoZQpub2RlIHdoZXJl
IHByZS1zY2FuIHN0b3BwZWQuIElmIGJvdGggc2NhbnMgZmFpbCB0byBmaW5kIHN1Y2ggVCwgdGhl
Ck1DUyBsb2NrIGlzIHBhc3NlZCB0byB0aGUgZmlyc3QgdGhyZWFkIGluIHRoZSBzZWNvbmRhcnkg
cXVldWUuIElmIHRoZQpzZWNvbmRhcnkgcXVldWUgaXMgZW1wdHksIHRoZSBNQ1MgbG9jayBpcyBw
YXNzZWQgdG8gdGhlIG5leHQgdGhyZWFkIGluIHRoZQptYWluIHF1ZXVlLiBUbyBhdm9pZCBzdGFy
dmF0aW9uIG9mIHRocmVhZHMgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZSwgdGhvc2UKdGhyZWFkcyBh
cmUgbW92ZWQgYmFjayB0byB0aGUgaGVhZCBvZiB0aGUgbWFpbiBxdWV1ZSBhZnRlciBhIGNlcnRh
aW4KbnVtYmVyIG9mIGludHJhLW5vZGUgbG9jayBoYW5kLW9mZnMuCgpNb3JlIGRldGFpbHMgYXJl
IGF2YWlsYWJsZSBhdCBodHRwczovL2FyeGl2Lm9yZy9hYnMvMTgxMC4wNTYwMC4KCldlIGhhdmUg
ZG9uZSBzb21lIHBlcmZvcm1hbmNlIGV2YWx1YXRpb24gd2l0aCB0aGUgbG9ja3RvcnR1cmUgbW9k
dWxlCmFzIHdlbGwgYXMgd2l0aCBzZXZlcmFsIGJlbmNobWFya3MgZnJvbSB0aGUgd2lsbC1pdC1z
Y2FsZSByZXBvLgpUaGUgZm9sbG93aW5nIGxvY2t0b3J0dXJlIHJlc3VsdHMgYXJlIGZyb20gYW4g
T3JhY2xlIFg1LTQgc2VydmVyCihmb3VyIEludGVsIFhlb24gRTctODg5NSB2MyBAIDIuNjBHSHog
c29ja2V0cyB3aXRoIDE4IGh5cGVydGhyZWFkZWQKY29yZXMgZWFjaCkuIEVhY2ggbnVtYmVyIHJl
cHJlc2VudHMgYW4gYXZlcmFnZSAob3ZlciAyNSBydW5zKSBvZiB0aGUKdG90YWwgbnVtYmVyIG9m
IG9wcyAoeDEwXjcpIHJlcG9ydGVkIGF0IHRoZSBlbmQgb2YgZWFjaCBydW4uIFRoZSAKc3RhbmRh
cmQgZGV2aWF0aW9uIGlzIGFsc28gcmVwb3J0ZWQgaW4gKCksIGFuZCBpbiBnZW5lcmFsIGlzIGFi
b3V0IDMlCmZyb20gdGhlIGF2ZXJhZ2UuIFRoZSAnc3RvY2snIGtlcm5lbCBpcyB2NS40LjAtcmMx
LApjb21taXQgZDkwZjJkZjYzYzVjLCBjb21waWxlZCBpbiB0aGUgZGVmYXVsdCBjb25maWd1cmF0
aW9uLiAKJ3BhdGNoLUNOQScgaXMgdGhlIG1vZGlmaWVkIGtlcm5lbCB3aXRoIE5VTUFfQVdBUkVf
U1BJTkxPQ0tTIHNldDsgCnRoZSBzcGVlZHVwIGlzIGNhbGN1bGF0ZWQgZGl2aWRpbmcgJ3BhdGNo
LUNOQScgYnkgJ3N0b2NrJy4KCiN0aHIgIAkgc3RvY2sgICAgICAgIHBhdGNoLUNOQSAgIHNwZWVk
dXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAyLjY3NCAoMC4xMTgpICAyLjczNiAoMC4xMTkpICAx
LjAyMwogIDIgIDIuNTg4ICgwLjE0MSkgIDIuNjAzICgwLjEwOCkgIDEuMDA2CiAgNCAgNC4yMzAg
KDAuMTIwKSAgNC4yMjAgKDAuMTI3KSAgMC45OTgKICA4ICA1LjM2MiAoMC4xODEpICA2LjY3OSAo
MC4xODIpICAxLjI0NgogMTYgIDYuNjM5ICgwLjEzMykgIDguMDUwICgwLjIwMCkgIDEuMjEzCiAz
MiAgNy4zNTkgKDAuMTQ5KSAgOC43OTIgKDAuMTY4KSAgMS4xOTUKIDM2ICA3LjQ0MyAoMC4xNDIp
ICA4Ljg3MyAoMC4yMzApICAxLjE5MgogNzIgIDYuNTU0ICgwLjE0NykgIDkuMzE3ICgwLjE1OCkg
IDEuNDIxCjEwOCAgNi4xNTYgKDAuMDkzKSAgOS40MDQgKDAuMTkxKSAgMS41MjgKMTQyICA1LjY1
OSAoMC4wOTMpICA5LjM2MSAoMC4xODQpICAxLjY1NAoKVGhlIGZvbGxvd2luZyB0YWJsZXMgY29u
dGFpbiB0aHJvdWdocHV0IHJlc3VsdHMgKG9wcy91cykgZnJvbSB0aGUgc2FtZQpzZXR1cCBmb3Ig
d2lsbC1pdC1zY2FsZS9vcGVuMV90aHJlYWRzOiAKCiN0aHIgIAkgc3RvY2sgICAgICAgIHBhdGNo
LUNOQSAgIHNwZWVkdXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAwLjUzMiAoMC4wMDIpICAwLjUz
MiAoMC4wMDMpICAxLjAwMAogIDIgIDAuNzg1ICgwLjAyNCkgIDAuNzc5ICgwLjAyNSkgIDAuOTky
CiAgNCAgMS40MjYgKDAuMDE4KSAgMS40MDkgKDAuMDIxKSAgMC45ODgKICA4ICAxLjc3OSAoMC4x
MDEpICAxLjcxMSAoMC4xMjcpICAwLjk2MgogMTYgIDEuNzYxICgwLjA5MykgIDEuNjcxICgwLjEw
NCkgIDAuOTQ5CiAzMiAgMC45MzUgKDAuMDYzKSAgMS42MTkgKDAuMDkzKSAgMS43MzEKIDM2ICAw
LjkzNiAoMC4wODIpICAxLjU5MSAoMC4wODYpICAxLjY5OQogNzIgIDAuODM5ICgwLjA0MykgIDEu
NjY3ICgwLjA5NykgIDEuOTg4CjEwOCAgMC44NDIgKDAuMDM1KSAgMS43MDEgKDAuMDkxKSAgMi4w
MjEKMTQyICAwLjgzMCAoMC4wMzcpICAxLjcxNCAoMC4wOTgpICAyLjA2NgoKYW5kIHdpbGwtaXQt
c2NhbGUvbG9jazJfdGhyZWFkczoKCiN0aHIgIAkgc3RvY2sgICAgICAgIHBhdGNoLUNOQSAgIHNw
ZWVkdXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAxLjU1NSAoMC4wMDkpICAxLjU3NyAoMC4wMDIp
ICAxLjAxNAogIDIgIDIuNjQ0ICgwLjA2MCkgIDIuNjgyICgwLjA2MikgIDEuMDE0CiAgNCAgNS4x
NTkgKDAuMjA1KSAgNS4xOTcgKDAuMjMxKSAgMS4wMDcKICA4ICA0LjMwMiAoMC4yMjEpICA0LjI3
OSAoMC4zMTgpICAwLjk5NQogMTYgIDQuMjU5ICgwLjExMSkgIDQuMDg3ICgwLjE2MykgIDAuOTYw
CiAzMiAgMi41ODMgKDAuMTEyKSAgNC4wNzcgKDAuMTIwKSAgMS41NzgKIDM2ICAyLjQ5OSAoMC4x
MDYpICA0LjA3NiAoMC4xMDYpICAxLjYzMQogNzIgIDEuOTc5ICgwLjA4NSkgIDQuMDc3ICgwLjEy
MykgIDIuMDYxCjEwOCAgMi4wOTYgKDAuMDkwKSAgNC4wNDMgKDAuMTMwKSAgMS45MjkKMTQyICAx
LjkxMyAoMC4xMDkpICAzLjk4NCAoMC4xMDgpICAyLjA4MgoKT3VyIGV2YWx1YXRpb24gc2hvd3Mg
dGhhdCBDTkEgYWxzbyBpbXByb3ZlcyBwZXJmb3JtYW5jZSBvZiB1c2VyIAphcHBsaWNhdGlvbnMg
dGhhdCBoYXZlIGhvdCBwdGhyZWFkIG11dGV4ZXMuIFRob3NlIG11dGV4ZXMgYXJlIApibG9ja2lu
ZywgYW5kIHdhaXRpbmcgdGhyZWFkcyBwYXJrIGFuZCB1bnBhcmsgdmlhIHRoZSBmdXRleCAKbWVj
aGFuaXNtIGluIHRoZSBrZXJuZWwuIEdpdmVuIHRoYXQga2VybmVsIGZ1dGV4IGNoYWlucywgd2hp
Y2gKYXJlIGhhc2hlZCBieSB0aGUgbXV0ZXggYWRkcmVzcywgYXJlIGVhY2ggcHJvdGVjdGVkIGJ5
IGEgCmNoYWluLXNwZWNpZmljIHNwaW4gbG9jaywgdGhlIGNvbnRlbnRpb24gb24gYSB1c2VyLW1v
ZGUgbXV0ZXggCnRyYW5zbGF0ZXMgaW50byBjb250ZW50aW9uIG9uIGEga2VybmVsIGxldmVsIHNw
aW5sb2NrLiAKCkhlcmUgYXJlIHRoZSByZXN1bHRzIGZvciB0aGUgbGV2ZWxkYiDigJhyZWFkcmFu
ZG9t4oCZIGJlbmNobWFyazoKCiN0aHIgIAkgc3RvY2sgICAgICAgIHBhdGNoLUNOQSAgIHNwZWVk
dXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAwLjUzMiAoMC4wMDcpICAwLjUzNSAoMC4wMTUpICAx
LjAwNgogIDIgIDAuNjY1ICgwLjAzMCkgIDAuNjczICgwLjAzNCkgIDEuMDExCiAgNCAgMC43MTUg
KDAuMDIzKSAgMC43MTYgKDAuMDI2KSAgMS4wMDIKICA4ICAwLjY4NiAoMC4wMjMpICAwLjY4NiAo
MC4wMjQpICAxLjAwMQogMTYgIDAuNzE5ICgwLjAzMCkgIDAuNzM3ICgwLjAyNSkgIDEuMDI1CiAz
MiAgMC43NDAgKDAuMDM0KSAgMC45NTkgKDAuMTA1KSAgMS4yOTYKIDM2ICAwLjczMCAoMC4wMjQp
ICAxLjA3OSAoMC4xMTIpICAxLjQ3OAogNzIgIDAuNjUyICgwLjAxOCkgIDEuMTYwICgwLjAyNCkg
IDEuNzc4CjEwOCAgMC42MjIgKDAuMDE2KSAgMS4xNTcgKDAuMDI4KSAgMS44NjAKMTQyICAwLjYw
MCAoMC4wMTUpICAxLjE0NSAoMC4wMzUpICAxLjkwOAoKQWRkaXRpb25hbCBwZXJmb3JtYW5jZSBu
dW1iZXJzIGFyZSBhdmFpbGFibGUgaW4gcHJldmlvdXMgcmV2aXNpb25zCm9mIHRoZSBzZXJpZXMu
CgpGdXJ0aGVyIGNvbW1lbnRzIGFyZSB3ZWxjb21lIGFuZCBhcHByZWNpYXRlZC4KCkFsZXggS29n
YW4gKDUpOgogIGxvY2tpbmcvcXNwaW5sb2NrOiBSZW5hbWUgbWNzIGxvY2svdW5sb2NrIG1hY3Jv
cyBhbmQgbWFrZSB0aGVtIG1vcmUKICAgIGdlbmVyaWMKICBsb2NraW5nL3FzcGlubG9jazogUmVm
YWN0b3IgdGhlIHFzcGlubG9jayBzbG93IHBhdGgKICBsb2NraW5nL3FzcGlubG9jazogSW50cm9k
dWNlIENOQSBpbnRvIHRoZSBzbG93IHBhdGggb2YgcXNwaW5sb2NrCiAgbG9ja2luZy9xc3Bpbmxv
Y2s6IEludHJvZHVjZSBzdGFydmF0aW9uIGF2b2lkYW5jZSBpbnRvIENOQQogIGxvY2tpbmcvcXNw
aW5sb2NrOiBJbnRyb2R1Y2UgdGhlIHNodWZmbGUgcmVkdWN0aW9uIG9wdGltaXphdGlvbiBpbnRv
CiAgICBDTkEKCiBhcmNoL2FybS9pbmNsdWRlL2FzbS9tY3Nfc3BpbmxvY2suaCB8ICAgNiArLQog
YXJjaC94ODYvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgfCAgMTkgKysrCiBhcmNoL3g4Ni9p
bmNsdWRlL2FzbS9xc3BpbmxvY2suaCAgICB8ICAgNCArCiBhcmNoL3g4Ni9rZXJuZWwvYWx0ZXJu
YXRpdmUuYyAgICAgICB8ICA0MSArKysrKwogaW5jbHVkZS9hc20tZ2VuZXJpYy9tY3Nfc3Bpbmxv
Y2suaCAgfCAgIDQgKy0KIGtlcm5lbC9sb2NraW5nL21jc19zcGlubG9jay5oICAgICAgIHwgIDIw
ICstLQoga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrLmMgICAgICAgICAgfCAgNzcgKysrKysrKyst
CiBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmggICAgICB8IDMxMiArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKIGtlcm5lbC9sb2NraW5nL3FzcGlubG9ja19wYXJhdmly
dC5oIHwgICAyICstCiA5IGZpbGVzIGNoYW5nZWQsIDQ2MiBpbnNlcnRpb25zKCspLCAyMyBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25h
LmgKCi0tIAoyLjExLjAgKEFwcGxlIEdpdC04MSkKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
