Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5229710790A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 20:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIdot8QtRhHDwrq9kf/fNFtmiUN7wKwcOsFfzJEHRNo=; b=SgEGBumPdq7oCi
	74jVRwjFuUCYtlWjU4eUPolg/pLYhe5f6+uiahQCYXRKlYOve/pUxGNDVK0IoddfnJPeSfl+G/6/l
	PKmzX3b6h08qn/Kpt3o3E+msebACu9cC5s7U4s4C19kNxOUHpQIy5+TaxLhtikzvP8j99hcuDEFwG
	XyYbrYXZMd70ZHYA0S3LBFT3rp4Uqh5JSyq17PjiTel8NuCNFnJZQN9GKMDN1yHk7EXW+d6mypq7k
	HGJ6fNphQsOPmLPwjEpej5AYH2zaoZprmFTd3+f9aXDujpIWybeWWSLJbg8MT6lrvyDi+bfD2Oh+N
	X+wa7bgCYsJ/O/grR+8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYF1b-0002B2-Ae; Fri, 22 Nov 2019 19:55:27 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYF1R-0002AK-3W
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 19:55:18 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMJnj9o174827;
 Fri, 22 Nov 2019 19:54:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=kB5fnXEkxm1dpQwuBz6yIEH0Q8mz9a5fLzlvbR2+y5E=;
 b=c8hxZExoG6zdyVyuOabznF5627mf91ecZ/0RI9C1UXNK5vpNFibVu1IJmJZrCBW1EV1p
 KfmoUR+JfotBW6Fkk4Vp9dQCxdNtS6Pqwiy5dvhF24qQjGMfSKT072zRyOy4eaAMQumB
 IlzuJgNQRB9lLJj3p7Q76DO5RbPHIkfdYa5QWxmNJdvyN4uH724mYZ4xf2SG/PWSzPau
 QC4/FTGRFpQq5qzg3lsWTMSs31Boj1sw3j1wGAHuRv2RwNyuddL22q9WJzRRlfO7MIYs
 T0zPWwnLwlxMKWcvlNvWy/8YI9lWWholigwChRNRqVWYmQvF6DaJYK5Jv1PutlKVDe02 dQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2wa9rr4khu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 19:54:03 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMJrqJT018686;
 Fri, 22 Nov 2019 19:54:02 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2we8ygc37p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 19:54:02 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAMJqTPF011464;
 Fri, 22 Nov 2019 19:52:29 GMT
Received: from [10.39.199.17] (/10.39.199.17)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 Nov 2019 11:52:27 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v6 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <dc31b3ea-1b03-16d3-1a03-a0a7ad1729d2@redhat.com>
Date: Fri, 22 Nov 2019 14:52:23 -0500
Message-Id: <78BB046F-700B-4108-923B-0FC5D7550385@oracle.com>
References: <20191107174622.61718-4-alex.kogan@oracle.com>
 <201911202212.CdyX1gua%lkp@intel.com>
 <B1A1B09F-C44E-45F7-80EB-09E30AEFD358@oracle.com>
 <dc31b3ea-1b03-16d3-1a03-a0a7ad1729d2@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9449
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911220163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9449
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911220163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_115517_235394_B42AE223 
X-CRM114-Status: GOOD (  22.10  )
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, arnd@arndb.de, peterz@infradead.org,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 steven.sistare@oracle.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE5vdiAyMiwgMjAxOSwgYXQgMjoyOSBQTSwgV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4gT24gMTEvMjIvMTkgMToyOCBQTSwgQWxleCBLb2dhbiB3cm90
ZToKPj4gCj4+PiBPbiBOb3YgMjAsIDIwMTksIGF0IDEwOjE2IEFNLCBrYnVpbGQgdGVzdCByb2Jv
dCA8bGtwQGludGVsLmNvbT4gd3JvdGU6Cj4+PiAKPj4+IEhpIEFsZXgsCj4+PiAKPj4+IFRoYW5r
IHlvdSBmb3IgdGhlIHBhdGNoISBZZXQgc29tZXRoaW5nIHRvIGltcHJvdmU6Cj4+PiAKPj4+IFth
dXRvIGJ1aWxkIHRlc3QgRVJST1Igb24gbGludXMvbWFzdGVyXQo+Pj4gW2Fsc28gYnVpbGQgdGVz
dCBFUlJPUiBvbiB2NS40LXJjOCBuZXh0LTIwMTkxMTIwXQo+Pj4gW2lmIHlvdXIgcGF0Y2ggaXMg
YXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIHBsZWFzZSBkcm9wIHVzIGEgbm90ZSB0byBo
ZWxwCj4+PiBpbXByb3ZlIHRoZSBzeXN0ZW0uIEJUVywgd2UgYWxzbyBzdWdnZXN0IHRvIHVzZSAn
LS1iYXNlJyBvcHRpb24gdG8gc3BlY2lmeSB0aGUKPj4+IGJhc2UgdHJlZSBpbiBnaXQgZm9ybWF0
LXBhdGNoLCBwbGVhc2Ugc2VlIGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91
cmw/dT1odHRwcy0zQV9fc3RhY2tvdmVyZmxvdy5jb21fYV8zNzQwNjk4MiZkPUR3SUJBZyZjPVJv
UDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1ZWFwSV9KbkUmcj1IdmhrM0Y0b21kQ2st
R0UxUFRPbTNLbjBBN0FwV09aMmFaTFR1VnhGSzRrJm09QnhFdDEyMzJjY0dsTUdEaW5BQjBRQVVh
VEZ5bC1tNXNwNEMtY3JIanBvVSZzPU96elFxZzRmVERWNTVYLXk0dmJuR2VYb0phUEhTdk9fRWZy
VVFuTVZSSGMmZT0gXQo+Pj4gCj4+PiB1cmw6ICAgIGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBv
aW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fZ2l0aHViLmNvbV8wZGF5LTJEY2lfbGludXhfY29t
bWl0c19BbGV4LTJES29nYW5fbG9ja2luZy0yRHFzcGlubG9jay0yRFJlbmFtZS0yRG1jcy0yRGxv
Y2stMkR1bmxvY2stMkRtYWNyb3MtMkRhbmQtMkRtYWtlLTJEdGhlbS0yRG1vcmUtMkRnZW5lcmlj
XzIwMTkxMTA5LTJEMTgwNTM1JmQ9RHdJQkFnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3
cUlyTVVCNjVlYXBJX0puRSZyPUh2aGszRjRvbWRDay1HRTFQVE9tM0tuMEE3QXBXT1oyYVpMVHVW
eEZLNGsmbT1CeEV0MTIzMmNjR2xNR0RpbkFCMFFBVWFURnlsLW01c3A0Qy1jckhqcG9VJnM9dUU3
WmVZWE9GaXUwOVBVVmpuQ250RWUyclI1eF9ReFM2ZEVXOXR3cGZvayZlPSAKPj4+IGJhc2U6ICAg
aHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19naXQu
a2VybmVsLm9yZ19wdWJfc2NtX2xpbnV4X2tlcm5lbF9naXRfdG9ydmFsZHNfbGludXguZ2l0JmQ9
RHdJQkFnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0puRSZyPUh2
aGszRjRvbWRDay1HRTFQVE9tM0tuMEE3QXBXT1oyYVpMVHVWeEZLNGsmbT1CeEV0MTIzMmNjR2xN
R0RpbkFCMFFBVWFURnlsLW01c3A0Qy1jckhqcG9VJnM9YUFLeHVYY19jN09GMGZmaW9RZlZzSUI2
SC00U2Q5UFl4U003a3VybTJpZyZlPSAgMDA1OGIwYTUwNmU0MGQ5YTJjNjIwMTVmZTkyZWI2NGE0
NGQ3OGNkOQo+Pj4gY29uZmlnOiBpMzg2LXJhbmRjb25maWctZjAwMy0yMDE5MTEyMCAoYXR0YWNo
ZWQgYXMgLmNvbmZpZykKPj4+IGNvbXBpbGVyOiBnY2MtNyAoRGViaWFuIDcuNC4wLTE0KSA3LjQu
MAo+Pj4gcmVwcm9kdWNlOgo+Pj4gICAgICAgIyBzYXZlIHRoZSBhdHRhY2hlZCAuY29uZmlnIHRv
IGxpbnV4IGJ1aWxkIHRyZWUKPj4+ICAgICAgIG1ha2UgQVJDSD1pMzg2IAo+Pj4gCj4+PiBJZiB5
b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4+PiBSZXBvcnRlZC1i
eToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+PiAKPj4+IEFsbCBlcnJvci93
YXJuaW5ncyAobmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOgo+Pj4gCj4+PiAgSW4gZmlsZSBpbmNs
dWRlZCBmcm9tIGluY2x1ZGUvbGludXgvZXhwb3J0Lmg6NDI6MCwKPj4+ICAgICAgICAgICAgICAg
ICAgIGZyb20gaW5jbHVkZS9saW51eC9saW5rYWdlLmg6NywKPj4+ICAgICAgICAgICAgICAgICAg
IGZyb20gaW5jbHVkZS9saW51eC9rZXJuZWwuaDo4LAo+Pj4gICAgICAgICAgICAgICAgICAgZnJv
bSBpbmNsdWRlL2xpbnV4L2xpc3QuaDo5LAo+Pj4gICAgICAgICAgICAgICAgICAgZnJvbSBpbmNs
dWRlL2xpbnV4L3NtcC5oOjEyLAo+Pj4gICAgICAgICAgICAgICAgICAgZnJvbSBrZXJuZWwvbG9j
a2luZy9xc3BpbmxvY2suYzoxNjoKPj4+ICBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmg6
IEluIGZ1bmN0aW9uICdjbmFfaW5pdF9ub2Rlcyc6Cj4+Pj4+IGluY2x1ZGUvbGludXgvY29tcGls
ZXIuaDozNTA6Mzg6IGVycm9yOiBjYWxsIHRvICdfX2NvbXBpbGV0aW1lX2Fzc2VydF84MCcgZGVj
bGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEJVSUxEX0JVR19PTiBmYWlsZWQ6IHNpemVvZihz
dHJ1Y3QgY25hX25vZGUpID4gc2l6ZW9mKHN0cnVjdCBxbm9kZSkKPj4+ICAgIF9jb21waWxldGlt
ZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19MSU5FX18p
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4+PiAgaW5jbHVk
ZS9saW51eC9jb21waWxlci5oOjMzMTo0OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvICdf
X2NvbXBpbGV0aW1lX2Fzc2VydCcKPj4+ICAgICAgcHJlZml4ICMjIHN1ZmZpeCgpOyAgICBcCj4+
PiAgICAgIF5+fn5+fgo+Pj4gIGluY2x1ZGUvbGludXgvY29tcGlsZXIuaDozNTA6Mjogbm90ZTog
aW4gZXhwYW5zaW9uIG9mIG1hY3JvICdfY29tcGlsZXRpbWVfYXNzZXJ0Jwo+Pj4gICAgX2NvbXBp
bGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBfX0xJ
TkVfXykKPj4+ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KPj4+ICBpbmNsdWRlL2xpbnV4L2J1aWxk
X2J1Zy5oOjM5OjM3OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ2NvbXBpbGV0aW1lX2Fz
c2VydCcKPj4+ICAgI2RlZmluZSBCVUlMRF9CVUdfT05fTVNHKGNvbmQsIG1zZykgY29tcGlsZXRp
bWVfYXNzZXJ0KCEoY29uZCksIG1zZykKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4+PiAgaW5jbHVkZS9saW51eC9idWlsZF9idWcu
aDo1MDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ0JVSUxEX0JVR19PTl9NU0cnCj4+
PiAgICBCVUlMRF9CVUdfT05fTVNHKGNvbmRpdGlvbiwgIkJVSUxEX0JVR19PTiBmYWlsZWQ6ICIg
I2NvbmRpdGlvbikKPj4+ICAgIF5+fn5+fn5+fn5+fn5+fn4KPj4+Pj4ga2VybmVsL2xvY2tpbmcv
cXNwaW5sb2NrX2NuYS5oOjgwOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnQlVJTERf
QlVHX09OJwo+Pj4gICAgQlVJTERfQlVHX09OKHNpemVvZihzdHJ1Y3QgY25hX25vZGUpID4gc2l6
ZW9mKHN0cnVjdCBxbm9kZSkpOwo+Pj4gICAgXn5+fn5+fn5+fn5+Cj4+IENvbnNpZGVyIHRoZSBm
b2xsb3dpbmcgZGVmaW5pdGlvbiBvZiBxbm9kZToKPj4gCj4+IHN0cnVjdCBxbm9kZSB7Cj4+IAlz
dHJ1Y3QgbWNzX3NwaW5sb2NrIG1jczsKPj4gI2lmIGRlZmluZWQoQ09ORklHX1BBUkFWSVJUX1NQ
SU5MT0NLUykgfHwgZGVmaW5lZChDT05GSUdfTlVNQV9BV0FSRV9TUElOTE9DS1MpCj4+IAlsb25n
IHJlc2VydmVkWzJdOwo+PiAjZW5kaWYKPj4gfTsKPj4gCj4+IGFuZCB0aGlzIGlzIGhvdyBjbmFf
bm9kZSBpcyBkZWZpbmVkOgo+PiAKPj4gc3RydWN0IGNuYV9ub2RlIHsKPj4gCXN0cnVjdCBtY3Nf
c3BpbmxvY2sJbWNzOwo+PiAJaW50CQkJbnVtYV9ub2RlOwo+PiAJdTMyCQkJZW5jb2RlZF90YWls
Owo+PiAJdTMyCQkJcHJlX3NjYW5fcmVzdWx0OyAvKiAwLCAxLCAyIG9yIGVuY29kZWQgdGFpbCAq
Lwo+PiAJdTMyCQkJaW50cmFfY291bnQ7Cj4+IH07Cj4+IAo+PiBTaW5jZSBsb25nIGlzIDMyIGJp
dCBvbiBpMzg2LCB3ZSBnZXQgdGhlIGNvbXBpbGF0aW9uIGVycm9yIGFib3ZlLgo+PiAKPj4gV2Ug
Y2FuIHRyeSBhbmQgc3F1ZWV6ZSBDTkEtc3BlY2lmaWMgZmllbGRzIGludG8gNjQgYml0IG9uIGkz
ODYgKG9yIGFueSAzMmJpdCAKPj4gYXJjaGl0ZWN0dXJlIGZvciB0aGF0IG1hdHRlcikuIE5vdGUg
dGhhdCBhbiBlbmNvZGVkIHRhaWwgcG9pbnRlciByZXF1aXJlcyB1cCAKPj4gdG8gMjQgYml0cywg
YW5kIHdlIGhhdmUgdHdvIG9mIHRob3NlLiBXZSB3b3VsZCB3YW50IGRpZmZlcmVudCBmaWVsZCBl
bmNvZGluZ3MgCj4+IGZvciAzMiB2cyA2NGJpdCBhcmNoaXRlY3R1cmVzLCBhbmQgdGhpcyBhbGwg
d2lsbCBiZSBxdWl0ZSB1Z2x5Lgo+PiAKPj4gU28gaW5zdGVhZCB3ZSBzaG91bGQgcHJvYmFibHkg
ZWl0aGVyIGNoYW5nZSB0aGUgZGVmaW5pdGlvbiBvZiBAcmVzZXJ2ZWQgaW4gcW5vZGUgCj4+IHRv
IGxvbmcgbG9uZywgb3IgcGVyaGFwcyBkaXNhYmxlIENOQSBvbiAzMmJpdCBhcmNoaXRlY3R1cmVz
IGFsdG9nZXRoZXI/Cj4+IEkgd291bGQgY2VydGFpbmx5IHByZWZlciB0aGUgZm9ybWVyLCBlc3Bl
Y2lhbGx5IGFzIGl0IHJlcXVpcmVzIHRoZSBsZWFzdCBhbW91bnQgCj4+IG9mIGNvZGUvY29uZmln
IGNoYW5nZXMuCj4+IAo+PiBBbnkgb2JqZWN0aW9ucyAvIHRob3VnaHRzPwo+PiAKPj4gVGhhbmtz
LAo+PiDigJQgQWxleAo+PiAKPiBUaGUgZWFzeSB3YXkgb3V0IGlzIHRvIHJlc3RyaWN0IE5VTUEg
cXNwaW5sb2NrIHRvIDY0LWJpdCBvbmx5LiBUaGVyZQo+IGFyZW4ndCB0aGF0IG1hbnkgMzItYml0
IE5VTUEgc3lzdGVtcyBvdXQgdGhlcmUgdGhhdCB3ZSBoYXZlIHRvIHdvcnJ5IGFib3V0Lgo+IAo+
IEp1c3QgYWRkICJkZXBlbmRzIG9uIDY0QklUIiB0byB0aGUgY29uZmlnIGVudHJ5LgpPaywgd2ls
bCBkby4KClRoYW5rcywK4oCUIEFsZXgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
