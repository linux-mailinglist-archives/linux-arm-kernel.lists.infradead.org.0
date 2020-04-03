Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2695219E01E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 23:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uks2AImlRZ3/KMmrWUgf+YuqThynVSvfqAhy9lV5p3I=; b=UKgIvWEV/nAOua
	ykPrN4mzJwzAJ9iNj/Tpr0gGRna+n0eoV633I9fP0wSXLaesx3lJEMKiKEi9mPR25FLemDV91QeJR
	0JdyUUjGcNdqbw11JctmPEprpjg07d5FAMIqaHOmTyU0LYZLx9C+MZwB4HQ5GpRoVbOvhJYhj5Gdx
	RX+ik82eRMJtD0w0I9DtThFYqxSlOZVI4sK9NEmm012WcKKAV9QsCT+e+QMndyrIm9Az2in65qfKp
	uLFd5VvrONcbbdyIYZXD3H9kkC8ujB/0LWkWqMzCQKAuyG2jSAWudP87WaDZ2ueqyrPraEqbe2oxk
	mqRWp/EXxWwkFG756hiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTXT-0006Un-CY; Fri, 03 Apr 2020 21:07:43 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTWY-0005pO-Fr
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 21:06:49 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 033Khc9q179187;
 Fri, 3 Apr 2020 21:05:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=AI23mKtPBkJ/eLUckd9mumIA832OrRDUTia6PmRkLrs=;
 b=ZAngsfTVXcwaO5lMLhUbOjj05XuvUctvXZVGfw0gqsYeizUKTxVbo9g88XqguuhUQoX6
 9So8VoqzCVs+DxBgIgUliFoQIwLbvt49vHTeZpSCjQrA4l6jQvBwFxXOLCERKjqnrWPf
 AmBZ2ulOLWbVNVWCX+FsblZCyh6Cis3vdIXQrSM/0lZWZERIhRnLxz7+ycqAV2QJth01
 JEtbbQZjxeOEh30ntvEkgHd+U6wUq+WtIwWtewGLUwTyTPLax4lQ3g0Iu9S2juje0B5Q
 86H45NGpQz0Pzt7mbCtxWiHxbQ7KFkyedQwwf/hhpKW043JCQ0h3lHVZ8iOIUHXbTVwI rg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 303cevk790-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 21:05:51 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 033Kh39s188019;
 Fri, 3 Apr 2020 21:05:51 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 302g2nxnja-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 21:05:51 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 033L5ZBX003963;
 Fri, 3 Apr 2020 21:05:35 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Apr 2020 14:05:35 -0700
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v10 0/5] Add NUMA-awareness to qspinlock
Date: Fri,  3 Apr 2020 16:59:25 -0400
Message-Id: <20200403205930.1707-1-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9580
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9580
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_140646_663288_9C774A47 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, steven.sistare@oracle.com,
 daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hhbmdlcyBmcm9tIHY5OgotLS0tLS0tLS0tLS0tLS0tCgotIFJldmlzZSB0aGUgc2VyaWVzIGJh
c2VkIG9uIFBldGVyJ3MgdmVyc2lvbiwgYWRvcHRpbmcgbmFtZXMsIHN0eWxlLCBldGMuCgotIEFk
ZCBhIG5ldyBwYXRjaCB0aGF0IGFsbG93cyB0byBwcmlvcml0aXplIGNlcnRhaW4gdGhyZWFkcyAo
ZS5nLiwgaW4gCmlycSBhbmQgbm1pIGNvbnRleHRzKSBhbmQgYXZvaWRzIG1vdmluZyB0aGVtIGJl
dHdlZW4gd2FpdGluZyBxdWV1ZXMsCmJhc2VkIG9uIHRoZSBzdWdnZXN0aW9uIGJ5IExvbmdtYW4u
CgotIERyb3AgdGhlIHNodWZmbGUgcmVkdWN0aW9uIG9wdGltaXphdGlvbiBmcm9tIHRoZSBzZXJp
ZXMgKG5ldyBwZXJmb3JtYW5jZQpkYXRhIGRpZCBub3QganVzdGlmeSBpdCkuCgotIERvIG5vdCBj
YWxsIGNuYV9pbml0X25vZGVzKCkgYXMgYW4gZWFybHlfaW5pdGNhbGwgKGNhbGwgaXQgZnJvbSAK
Y25hX2NvbmZpZ3VyZV9zcGluX2xvY2tfc2xvd3BhdGgoKSBpbnN0ZWFkKSwgYmFzZWQgb24gdGhl
IGNvbW1lbnQgZnJvbSAKTG9uZ21hbi4KCgpTdW1tYXJ5Ci0tLS0tLS0KCkxvY2sgdGhyb3VnaHB1
dCBjYW4gYmUgaW5jcmVhc2VkIGJ5IGhhbmRpbmcgYSBsb2NrIHRvIGEgd2FpdGVyIG9uIHRoZQpz
YW1lIE5VTUEgbm9kZSBhcyB0aGUgbG9jayBob2xkZXIsIHByb3ZpZGVkIGNhcmUgaXMgdGFrZW4g
dG8gYXZvaWQKc3RhcnZhdGlvbiBvZiB3YWl0ZXJzIG9uIG90aGVyIE5VTUEgbm9kZXMuIFRoaXMg
cGF0Y2ggaW50cm9kdWNlcyBDTkEKKGNvbXBhY3QgTlVNQS1hd2FyZSBsb2NrKSBhcyB0aGUgc2xv
dyBwYXRoIGZvciBxc3BpbmxvY2suIEl0IGlzCmVuYWJsZWQgdGhyb3VnaCBhIGNvbmZpZ3VyYXRp
b24gb3B0aW9uIChOVU1BX0FXQVJFX1NQSU5MT0NLUykuCgpDTkEgaXMgYSBOVU1BLWF3YXJlIHZl
cnNpb24gb2YgdGhlIE1DUyBsb2NrLiBTcGlubmluZyB0aHJlYWRzIGFyZQpvcmdhbml6ZWQgaW4g
dHdvIHF1ZXVlcywgYSBwcmltYXJ5IHF1ZXVlIGZvciB0aHJlYWRzIHJ1bm5pbmcgb24gdGhlIHNh
bWUKbm9kZSBhcyB0aGUgY3VycmVudCBsb2NrIGhvbGRlciwgYW5kIGEgc2Vjb25kYXJ5IHF1ZXVl
IGZvciB0aHJlYWRzCnJ1bm5pbmcgb24gb3RoZXIgbm9kZXMuIFRocmVhZHMgc3RvcmUgdGhlIElE
IG9mIHRoZSBub2RlIG9uIHdoaWNoCnRoZXkgYXJlIHJ1bm5pbmcgaW4gdGhlaXIgcXVldWUgbm9k
ZXMuIEFmdGVyIGFjcXVpcmluZyB0aGUgTUNTIGxvY2sgYW5kCmJlZm9yZSBhY3F1aXJpbmcgdGhl
IHNwaW5sb2NrLCB0aGUgbG9jayBob2xkZXIgc2NhbnMgdGhlIHByaW1hcnkgcXVldWUKbG9va2lu
ZyBmb3IgYSB0aHJlYWQgcnVubmluZyBvbiB0aGUgc2FtZSBub2RlIChwcmUtc2NhbikuIElmIGZv
dW5kIChjYWxsCml0IHRocmVhZCBUKSwgYWxsIHRocmVhZHMgaW4gdGhlIHByaW1hcnkgcXVldWUg
YmV0d2VlbiB0aGUgY3VycmVudCBsb2NrCmhvbGRlciBhbmQgVCBhcmUgbW92ZWQgdG8gdGhlIGVu
ZCBvZiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiAgSWYgc3VjaCBUCmlzIG5vdCBmb3VuZCwgd2UgbWFr
ZSBhbm90aGVyIHNjYW4gb2YgdGhlIHByaW1hcnkgcXVldWUgYWZ0ZXIgYWNxdWlyaW5nIAp0aGUg
c3BpbmxvY2sgd2hlbiB1bmxvY2tpbmcgdGhlIE1DUyBsb2NrIChwb3N0LXNjYW4pLCBzdGFydGlu
ZyBhdCB0aGUKbm9kZSB3aGVyZSBwcmUtc2NhbiBzdG9wcGVkLiBJZiBib3RoIHNjYW5zIGZhaWwg
dG8gZmluZCBzdWNoIFQsIHRoZQpNQ1MgbG9jayBpcyBwYXNzZWQgdG8gdGhlIGZpcnN0IHRocmVh
ZCBpbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiBJZiB0aGUKc2Vjb25kYXJ5IHF1ZXVlIGlzIGVtcHR5
LCB0aGUgTUNTIGxvY2sgaXMgcGFzc2VkIHRvIHRoZSBuZXh0IHRocmVhZCBpbiB0aGUKcHJpbWFy
eSBxdWV1ZS4gVG8gYXZvaWQgc3RhcnZhdGlvbiBvZiB0aHJlYWRzIGluIHRoZSBzZWNvbmRhcnkg
cXVldWUsIHRob3NlCnRocmVhZHMgYXJlIG1vdmVkIGJhY2sgdG8gdGhlIGhlYWQgb2YgdGhlIHBy
aW1hcnkgcXVldWUgYWZ0ZXIgYSBjZXJ0YWluCm51bWJlciBvZiBpbnRyYS1ub2RlIGxvY2sgaGFu
ZC1vZmZzLiBMYXN0bHksIGNlcnRhaW4gdGhyZWFkcyAoZS5nLiwgaW4KaW4gaXJxIGFuZCBubWkg
Y29udGV4dHMpIGFyZSBnaXZlbiBhIHByZWZlcmVudGlhbCB0cmVhdG1lbnQgLS0gdGhlIHNjYW4K
c3RvcHMgd2hlbiBzdWNoIGEgdGhyZWFkIGlzIGZvdW5kLCBlZmZlY3RpdmVseSBuZXZlciBtb3Zp
bmcgdGhvc2UgdGhyZWFkcyAKaW50byB0aGUgc2Vjb25kYXJ5IHF1ZXVlLgoKTW9yZSBkZXRhaWxz
IGFyZSBhdmFpbGFibGUgYXQgaHR0cHM6Ly9hcnhpdi5vcmcvYWJzLzE4MTAuMDU2MDAuCgpXZSBo
YXZlIGRvbmUgc29tZSBwZXJmb3JtYW5jZSBldmFsdWF0aW9uIHdpdGggdGhlIGxvY2t0b3J0dXJl
IG1vZHVsZQphcyB3ZWxsIGFzIHdpdGggc2V2ZXJhbCBiZW5jaG1hcmtzIGZyb20gdGhlIHdpbGwt
aXQtc2NhbGUgcmVwby4KVGhlIGZvbGxvd2luZyBsb2NrdG9ydHVyZSByZXN1bHRzIGFyZSBmcm9t
IGFuIE9yYWNsZSBYNS00IHNlcnZlcgooZm91ciBJbnRlbCBYZW9uIEU3LTg4OTUgdjMgQCAyLjYw
R0h6IHNvY2tldHMgd2l0aCAxOCBoeXBlcnRocmVhZGVkCmNvcmVzIGVhY2gpLiBFYWNoIG51bWJl
ciByZXByZXNlbnRzIGFuIGF2ZXJhZ2UgKG92ZXIgMjUgcnVucykgb2YgdGhlCnRvdGFsIG51bWJl
ciBvZiBvcHMgKHgxMF43KSByZXBvcnRlZCBhdCB0aGUgZW5kIG9mIGVhY2ggcnVuLiBUaGUgCnN0
YW5kYXJkIGRldmlhdGlvbiBpcyBhbHNvIHJlcG9ydGVkIGluICgpLCBhbmQgaW4gZ2VuZXJhbCBp
cyBhYm91dCAzJQpmcm9tIHRoZSBhdmVyYWdlLiBUaGUgJ3N0b2NrJyBrZXJuZWwgaXMgdjUuNi4w
LXJjNiwKY29tbWl0IDVhZDBlYzBiODY1MiwgY29tcGlsZWQgaW4gdGhlIGRlZmF1bHQgY29uZmln
dXJhdGlvbi4gCidwYXRjaC1DTkEnIGlzIHRoZSBtb2RpZmllZCBrZXJuZWwgd2l0aCBOVU1BX0FX
QVJFX1NQSU5MT0NLUyBzZXQ7IAp0aGUgc3BlZWR1cCBpcyBjYWxjdWxhdGVkIGRpdmlkaW5nICdw
YXRjaC1DTkEnIGJ5ICdzdG9jaycuCgojdGhyICAJIHN0b2NrICAgICAgICBwYXRjaC1DTkEgICBz
cGVlZHVwIChwYXRjaC1DTkEvc3RvY2spCiAgMSAgMi43MDIgKDAuMTAwKSAgMi43MTIgKDAuMTIy
KSAgMS4wMDMKICAyICAzLjY5MSAoMC4xNjIpICAzLjY3MiAoMC4xMzgpICAwLjk5NQogIDQgIDQu
Mjg1ICgwLjEwOCkgIDQuMjU2ICgwLjEyNCkgIDAuOTkzCiAgOCAgNS4xMTcgKDAuMTMzKSAgNS45
NzIgKDAuMjU4KSAgMS4xNjcKIDE2ICA2LjI3MyAoMC4xOTYpICA3LjYyOCAoMC4yNzQpICAxLjIx
NgogMzIgIDYuNzU3ICgwLjEyMikgIDguNTQ0ICgwLjIyNSkgIDEuMjY0CiAzNiAgNi43NjEgKDAu
MDkxKSAgOC42OTEgKDAuMTcwKSAgMS4yODUKIDcyICA2LjU2OSAoMC4xMzIpICA5LjI4MCAoMC4y
MjUpICAxLjQxMwoxMDggIDYuMTY3ICgwLjExMikgIDkuNDEwICgwLjE3MSkgIDEuNTI2CjE0MiAg
NS45MDEgKDAuMTE3KSAgOS40MTUgKDAuMjExKSAgMS41OTUKClRoZSBmb2xsb3dpbmcgdGFibGVz
IGNvbnRhaW4gdGhyb3VnaHB1dCByZXN1bHRzIChvcHMvdXMpIGZyb20gdGhlIHNhbWUKc2V0dXAg
Zm9yIHdpbGwtaXQtc2NhbGUvb3BlbjFfdGhyZWFkczogCgojdGhyICAJIHN0b2NrICAgICAgICBw
YXRjaC1DTkEgICBzcGVlZHVwIChwYXRjaC1DTkEvc3RvY2spCiAgMSAgMC41MTEgKDAuMDAyKSAg
MC41MjUgKDAuMDAzKSAgMS4wMjcKICAyICAwLjc3NCAoMC4wMTgpICAwLjc2OSAoMC4wMTcpICAw
Ljk5MwogIDQgIDEuMzUyICgwLjAyMykgIDEuMzcyICgwLjAzMikgIDEuMDE0CiAgOCAgMS42NzUg
KDAuMDkwKSAgMS42NjAgKDAuMTM2KSAgMC45OTEKIDE2ICAxLjY2NSAoMC4xMTQpICAxLjU4MyAo
MC4wOTIpICAwLjk1MQogMzIgIDAuOTY2ICgwLjAzOCkgIDEuNjM3ICgwLjA4NykgIDEuNjk0CiAz
NiAgMC45NzMgKDAuMDY2KSAgMS41NzAgKDAuMDgxKSAgMS42MTMKIDcyICAwLjg0NCAoMC4wNDAp
ICAxLjYyMCAoMC4wOTEpICAxLjkxOQoxMDggIDAuODM2ICgwLjA0MCkgIDEuNjcwICgwLjA4NCkg
IDEuOTk5CjE0MiAgMC43OTkgKDAuMDQzKSAgMS42OTkgKDAuMDg3KSAgMi4xMjcKCmFuZCB3aWxs
LWl0LXNjYWxlL2xvY2syX3RocmVhZHM6CgojdGhyICAJIHN0b2NrICAgICAgICBwYXRjaC1DTkEg
ICBzcGVlZHVwIChwYXRjaC1DTkEvc3RvY2spCiAgMSAgMS41ODEgKDAuMDA0KSAgMS41NzYgKDAu
MDA3KSAgMC45OTcKICAyICAyLjY5OSAoMC4wNTkpICAyLjY4NyAoMC4wNjcpICAwLjk5NgogIDQg
IDUuMjQwICgwLjIzNCkgIDUuMTU1ICgwLjI1MikgIDAuOTg0CiAgOCAgNC4zNzAgKDAuMjQxKSAg
NC4xMTEgKDAuMzQyKSAgMC45NDEKIDE2ICA0LjE1MiAoMC4xMTIpICA0LjExMyAoMC4xNjQpICAw
Ljk5MQogMzIgIDIuNTc5ICgwLjA5OSkgIDQuMDk5ICgwLjEyNykgIDEuNTg5CiAzNiAgMi42MDQg
KDAuMDY2KSAgNC4wMDUgKDAuMTA0KSAgMS41MzgKIDcyICAyLjAyOCAoMC4wOTEpICA0LjAyNCAo
MC4xMTIpICAxLjk4NAoxMDggIDIuMDc5ICgwLjEwNikgIDMuOTk3ICgwLjA5MykgIDEuOTIzCjE0
MiAgMS44NTggKDAuMTAzKSAgMy45NTUgKDAuMTA5KSAgMi4xMjkKCk91ciBldmFsdWF0aW9uIHNo
b3dzIHRoYXQgQ05BIGFsc28gaW1wcm92ZXMgcGVyZm9ybWFuY2Ugb2YgdXNlciAKYXBwbGljYXRp
b25zIHRoYXQgaGF2ZSBob3QgcHRocmVhZCBtdXRleGVzLiBUaG9zZSBtdXRleGVzIGFyZSAKYmxv
Y2tpbmcsIGFuZCB3YWl0aW5nIHRocmVhZHMgcGFyayBhbmQgdW5wYXJrIHZpYSB0aGUgZnV0ZXgg
Cm1lY2hhbmlzbSBpbiB0aGUga2VybmVsLiBHaXZlbiB0aGF0IGtlcm5lbCBmdXRleCBjaGFpbnMs
IHdoaWNoCmFyZSBoYXNoZWQgYnkgdGhlIG11dGV4IGFkZHJlc3MsIGFyZSBlYWNoIHByb3RlY3Rl
ZCBieSBhIApjaGFpbi1zcGVjaWZpYyBzcGluIGxvY2ssIHRoZSBjb250ZW50aW9uIG9uIGEgdXNl
ci1tb2RlIG11dGV4IAp0cmFuc2xhdGVzIGludG8gY29udGVudGlvbiBvbiBhIGtlcm5lbCBsZXZl
bCBzcGlubG9jay4gCgpIZXJlIGFyZSB0aGUgcmVzdWx0cyBmb3IgdGhlIGxldmVsZGIg4oCYcmVh
ZHJhbmRvbeKAmSBiZW5jaG1hcms6CgojdGhyICAJIHN0b2NrICAgICAgICBwYXRjaC1DTkEgICBz
cGVlZHVwIChwYXRjaC1DTkEvc3RvY2spCiAgMSAgMC41MzAgKDAuMDEzKSAgMC41MzMgKDAuMDEx
KSAgMS4wMDYKICAyICAwLjgzOSAoMC4wNDMpICAwLjg0NyAoMC4wMzEpICAxLjAxMAogIDQgIDAu
NzU4ICgwLjAyMSkgIDAuNzY0ICgwLjAxOCkgIDEuMDA4CiAgOCAgMC42NzcgKDAuMDIyKSAgMC42
ODIgKDAuMDE2KSAgMS4wMDgKIDE2ICAwLjcxNCAoMC4wMjMpICAwLjgxNCAoMC4wMjcpICAxLjE0
MAogMzIgIDAuNzY1ICgwLjA0MCkgIDEuMTY4ICgwLjAzMikgIDEuNTI3CiAzNiAgMC43MDYgKDAu
MDIzKSAgMS4xMzkgKDAuMDY2KSAgMS42MTQKIDcyICAwLjYyNCAoMC4wMTcpICAxLjE4NCAoMC4w
MjYpICAxLjg5OAoxMDggIDAuNjA1ICgwLjAxMykgIDEuMTQ3ICgwLjAyMykgIDEuODk0CjE0MiAg
MC41OTMgKDAuMDEyKSAgMS4xMzEgKDAuMDE5KSAgMS45MDgKCkZ1cnRoZXIgY29tbWVudHMgYXJl
IHdlbGNvbWUgYW5kIGFwcHJlY2lhdGVkLgoKQWxleCBLb2dhbiAoNSk6CiAgbG9ja2luZy9xc3Bp
bmxvY2s6IFJlbmFtZSBtY3MgbG9jay91bmxvY2sgbWFjcm9zIGFuZCBtYWtlIHRoZW0gbW9yZQog
ICAgZ2VuZXJpYwogIGxvY2tpbmcvcXNwaW5sb2NrOiBSZWZhY3RvciB0aGUgcXNwaW5sb2NrIHNs
b3cgcGF0aAogIGxvY2tpbmcvcXNwaW5sb2NrOiBJbnRyb2R1Y2UgQ05BIGludG8gdGhlIHNsb3cg
cGF0aCBvZiBxc3BpbmxvY2sKICBsb2NraW5nL3FzcGlubG9jazogSW50cm9kdWNlIHN0YXJ2YXRp
b24gYXZvaWRhbmNlIGludG8gQ05BCiAgbG9ja2luZy9xc3BpbmxvY2s6IEF2b2lkIG1vdmluZyBj
ZXJ0YWluIHRocmVhZHMgYmV0d2VlbiB3YWl0aW5nIHF1ZXVlcwogICAgaW4gQ05BCgogLi4uL2Fk
bWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4dCAgICAgICAgIHwgIDE4ICsKIGFyY2gvYXJt
L2luY2x1ZGUvYXNtL21jc19zcGlubG9jay5oICAgICAgICAgICB8ICAgNiArLQogYXJjaC94ODYv
S2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIwICsKIGFyY2gveDg2L2lu
Y2x1ZGUvYXNtL3FzcGlubG9jay5oICAgICAgICAgICAgICB8ICAgNiArCiBhcmNoL3g4Ni9rZXJu
ZWwvYWx0ZXJuYXRpdmUuYyAgICAgICAgICAgICAgICAgfCAgIDIgKwogaW5jbHVkZS9hc20tZ2Vu
ZXJpYy9tY3Nfc3BpbmxvY2suaCAgICAgICAgICAgIHwgICA0ICstCiBrZXJuZWwvbG9ja2luZy9t
Y3Nfc3BpbmxvY2suaCAgICAgICAgICAgICAgICAgfCAgMjAgKy0KIGtlcm5lbC9sb2NraW5nL3Fz
cGlubG9jay5jICAgICAgICAgICAgICAgICAgICB8ICA4MiArKystCiBrZXJuZWwvbG9ja2luZy9x
c3BpbmxvY2tfY25hLmggICAgICAgICAgICAgICAgfCA0MDcgKysrKysrKysrKysrKysrKysrCiBr
ZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfcGFyYXZpcnQuaCAgICAgICAgICAgfCAgIDIgKy0KIDEw
IGZpbGVzIGNoYW5nZWQsIDU0NCBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmgKCi0tIAoyLjIxLjEg
KEFwcGxlIEdpdC0xMjIuMykKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
