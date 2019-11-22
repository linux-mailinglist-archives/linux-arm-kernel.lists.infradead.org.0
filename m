Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E9C10775E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 19:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khdsyZjD2cjIfeivSeGXcL7p1d9YcVB2Rmua9bLk6bA=; b=iwE3s4+jK+GQMb
	o8TReV1IPn8C6jIMJGHsydmHWI839a/OAL1ZqM7zjs02c/Zq//cjILVPI2D4967hWywouAl965ZNw
	9R8jrfoCzzH90aUGCCwEFmQIjScBM8+Vw/W+zRsfhmM4r7eLpi8JWvP6vlzB0qstg/QEJEYP+AI+k
	sR32e7z2lFRx2WxqooEbEAwVslgpblDG3zkKpDlQ2y38uY1yWbEim+pZnLcJM9lyzXpoc00esh1Pl
	cnu3S8vXcnGVyafllPclSkLoFR/8DnOpX0sqjwFPFIAG132FwqmOZzEQEi8O167s9aF5c0ux/03Hb
	6PsfZ6fPZizFZKOZQLoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDhU-0002TU-0Y; Fri, 22 Nov 2019 18:30:36 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDhF-0002Ss-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 18:30:23 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMIONjJ118773;
 Fri, 22 Nov 2019 18:29:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=NQkUG/QqIaYEKdkqScvUyHBIBLEDQ0mhob5S2Y4ohUs=;
 b=E52+dKeqaDVgHp94Xqj3jHLM1YYCYmkprL5gAi578Gtmpf3gxI2rIwdhX15tENum/b7y
 QyUWHpbp7GZKc6EGvcRfjyWE28WHIehtMcCFtjf1LeptGUjkvIuyaFAYRUh50C/FESMA
 l3r7A107MhuGCihEsCCeMpXGeMBK3z01PSmiaw0qyVBqMK+B4pkFiq40g1pObipkF3am
 vBJLxqjfrDssLbo28BvNTRnU9xYq2vqgPk/4YGQ8kz8KJE/HQB3mwSc8BJkLZKOC8mXa
 Vb7FcATdRhp6eJLhhjpsPxkIHK1JaAr/4+Lsp8uWpH/Bllo8K0adXV0C46H9CiMV/Mgq Ag== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2wa92qc8cc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 18:29:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMITCF4189474;
 Fri, 22 Nov 2019 18:29:29 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2wegqs4gna-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 18:29:29 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAMIS5d5000570;
 Fri, 22 Nov 2019 18:28:05 GMT
Received: from [10.39.199.17] (/10.39.199.17)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 Nov 2019 10:28:05 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v6 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <201911202212.CdyX1gua%lkp@intel.com>
Date: Fri, 22 Nov 2019 13:28:02 -0500
Message-Id: <B1A1B09F-C44E-45F7-80EB-09E30AEFD358@oracle.com>
References: <20191107174622.61718-4-alex.kogan@oracle.com>
 <201911202212.CdyX1gua%lkp@intel.com>
To: kbuild test robot <lkp@intel.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9449
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911220153
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9449
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911220153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_103021_797310_1400B8FD 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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
 arnd@arndb.de, peterz@infradead.org, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 longman@redhat.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE5vdiAyMCwgMjAxOSwgYXQgMTA6MTYgQU0sIGtidWlsZCB0ZXN0IHJvYm90IDxsa3BA
aW50ZWwuY29tPiB3cm90ZToKPiAKPiBIaSBBbGV4LAo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBh
dGNoISBZZXQgc29tZXRoaW5nIHRvIGltcHJvdmU6Cj4gCj4gW2F1dG8gYnVpbGQgdGVzdCBFUlJP
UiBvbiBsaW51cy9tYXN0ZXJdCj4gW2Fsc28gYnVpbGQgdGVzdCBFUlJPUiBvbiB2NS40LXJjOCBu
ZXh0LTIwMTkxMTIwXQo+IFtpZiB5b3VyIHBhdGNoIGlzIGFwcGxpZWQgdG8gdGhlIHdyb25nIGdp
dCB0cmVlLCBwbGVhc2UgZHJvcCB1cyBhIG5vdGUgdG8gaGVscAo+IGltcHJvdmUgdGhlIHN5c3Rl
bS4gQlRXLCB3ZSBhbHNvIHN1Z2dlc3QgdG8gdXNlICctLWJhc2UnIG9wdGlvbiB0byBzcGVjaWZ5
IHRoZQo+IGJhc2UgdHJlZSBpbiBnaXQgZm9ybWF0LXBhdGNoLCBwbGVhc2Ugc2VlIGh0dHBzOi8v
dXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fc3RhY2tvdmVyZmxv
dy5jb21fYV8zNzQwNjk4MiZkPUR3SUJBZyZjPVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJ
ck1VQjY1ZWFwSV9KbkUmcj1IdmhrM0Y0b21kQ2stR0UxUFRPbTNLbjBBN0FwV09aMmFaTFR1VnhG
SzRrJm09QnhFdDEyMzJjY0dsTUdEaW5BQjBRQVVhVEZ5bC1tNXNwNEMtY3JIanBvVSZzPU96elFx
ZzRmVERWNTVYLXk0dmJuR2VYb0phUEhTdk9fRWZyVVFuTVZSSGMmZT0gXQo+IAo+IHVybDogICAg
aHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19naXRo
dWIuY29tXzBkYXktMkRjaV9saW51eF9jb21taXRzX0FsZXgtMkRLb2dhbl9sb2NraW5nLTJEcXNw
aW5sb2NrLTJEUmVuYW1lLTJEbWNzLTJEbG9jay0yRHVubG9jay0yRG1hY3Jvcy0yRGFuZC0yRG1h
a2UtMkR0aGVtLTJEbW9yZS0yRGdlbmVyaWNfMjAxOTExMDktMkQxODA1MzUmZD1Ed0lCQWcmYz1S
b1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9SHZoazNGNG9tZENr
LUdFMVBUT20zS24wQTdBcFdPWjJhWkxUdVZ4Rks0ayZtPUJ4RXQxMjMyY2NHbE1HRGluQUIwUUFV
YVRGeWwtbTVzcDRDLWNySGpwb1Umcz11RTdaZVlYT0ZpdTA5UFVWam5DbnRFZTJyUjV4X1F4UzZk
RVc5dHdwZm9rJmU9IAo+IGJhc2U6ICAgaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29t
L3YyL3VybD91PWh0dHBzLTNBX19naXQua2VybmVsLm9yZ19wdWJfc2NtX2xpbnV4X2tlcm5lbF9n
aXRfdG9ydmFsZHNfbGludXguZ2l0JmQ9RHdJQkFnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4
QnY3cUlyTVVCNjVlYXBJX0puRSZyPUh2aGszRjRvbWRDay1HRTFQVE9tM0tuMEE3QXBXT1oyYVpM
VHVWeEZLNGsmbT1CeEV0MTIzMmNjR2xNR0RpbkFCMFFBVWFURnlsLW01c3A0Qy1jckhqcG9VJnM9
YUFLeHVYY19jN09GMGZmaW9RZlZzSUI2SC00U2Q5UFl4U003a3VybTJpZyZlPSAgMDA1OGIwYTUw
NmU0MGQ5YTJjNjIwMTVmZTkyZWI2NGE0NGQ3OGNkOQo+IGNvbmZpZzogaTM4Ni1yYW5kY29uZmln
LWYwMDMtMjAxOTExMjAgKGF0dGFjaGVkIGFzIC5jb25maWcpCj4gY29tcGlsZXI6IGdjYy03IChE
ZWJpYW4gNy40LjAtMTQpIDcuNC4wCj4gcmVwcm9kdWNlOgo+ICAgICAgICAjIHNhdmUgdGhlIGF0
dGFjaGVkIC5jb25maWcgdG8gbGludXggYnVpbGQgdHJlZQo+ICAgICAgICBtYWtlIEFSQ0g9aTM4
NiAKPiAKPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4g
UmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IAo+IEFsbCBl
cnJvci93YXJuaW5ncyAobmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOgo+IAo+ICAgSW4gZmlsZSBp
bmNsdWRlZCBmcm9tIGluY2x1ZGUvbGludXgvZXhwb3J0Lmg6NDI6MCwKPiAgICAgICAgICAgICAg
ICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4L2xpbmthZ2UuaDo3LAo+ICAgICAgICAgICAgICAgICAg
ICBmcm9tIGluY2x1ZGUvbGludXgva2VybmVsLmg6OCwKPiAgICAgICAgICAgICAgICAgICAgZnJv
bSBpbmNsdWRlL2xpbnV4L2xpc3QuaDo5LAo+ICAgICAgICAgICAgICAgICAgICBmcm9tIGluY2x1
ZGUvbGludXgvc21wLmg6MTIsCj4gICAgICAgICAgICAgICAgICAgIGZyb20ga2VybmVsL2xvY2tp
bmcvcXNwaW5sb2NrLmM6MTY6Cj4gICBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmg6IElu
IGZ1bmN0aW9uICdjbmFfaW5pdF9ub2Rlcyc6Cj4+PiBpbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6
MzUwOjM4OiBlcnJvcjogY2FsbCB0byAnX19jb21waWxldGltZV9hc3NlcnRfODAnIGRlY2xhcmVk
IHdpdGggYXR0cmlidXRlIGVycm9yOiBCVUlMRF9CVUdfT04gZmFpbGVkOiBzaXplb2Yoc3RydWN0
IGNuYV9ub2RlKSA+IHNpemVvZihzdHJ1Y3QgcW5vZGUpCj4gICAgIF9jb21waWxldGltZV9hc3Nl
cnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19MSU5FX18pCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiAgIGluY2x1ZGUvbGludXgv
Y29tcGlsZXIuaDozMzE6NDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyAnX19jb21waWxl
dGltZV9hc3NlcnQnCj4gICAgICAgcHJlZml4ICMjIHN1ZmZpeCgpOyAgICBcCj4gICAgICAgXn5+
fn5+Cj4gICBpbmNsdWRlL2xpbnV4L2NvbXBpbGVyLmg6MzUwOjI6IG5vdGU6IGluIGV4cGFuc2lv
biBvZiBtYWNybyAnX2NvbXBpbGV0aW1lX2Fzc2VydCcKPiAgICAgX2NvbXBpbGV0aW1lX2Fzc2Vy
dChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBfX0xJTkVfXykKPiAgICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fgo+ICAgaW5jbHVkZS9saW51eC9idWlsZF9idWcuaDozOTozNzog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdjb21waWxldGltZV9hc3NlcnQnCj4gICAgI2Rl
ZmluZSBCVUlMRF9CVUdfT05fTVNHKGNvbmQsIG1zZykgY29tcGlsZXRpbWVfYXNzZXJ0KCEoY29u
ZCksIG1zZykKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+
fn5+fn5+fn5+fn4KPiAgIGluY2x1ZGUvbGludXgvYnVpbGRfYnVnLmg6NTA6Mjogbm90ZTogaW4g
ZXhwYW5zaW9uIG9mIG1hY3JvICdCVUlMRF9CVUdfT05fTVNHJwo+ICAgICBCVUlMRF9CVUdfT05f
TVNHKGNvbmRpdGlvbiwgIkJVSUxEX0JVR19PTiBmYWlsZWQ6ICIgI2NvbmRpdGlvbikKPiAgICAg
Xn5+fn5+fn5+fn5+fn5+fgo+Pj4ga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrX2NuYS5oOjgwOjI6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnQlVJTERfQlVHX09OJwo+ICAgICBCVUlMRF9C
VUdfT04oc2l6ZW9mKHN0cnVjdCBjbmFfbm9kZSkgPiBzaXplb2Yoc3RydWN0IHFub2RlKSk7Cj4g
ICAgIF5+fn5+fn5+fn5+fgoKQ29uc2lkZXIgdGhlIGZvbGxvd2luZyBkZWZpbml0aW9uIG9mIHFu
b2RlOgoKc3RydWN0IHFub2RlIHsKCXN0cnVjdCBtY3Nfc3BpbmxvY2sgbWNzOwojaWYgZGVmaW5l
ZChDT05GSUdfUEFSQVZJUlRfU1BJTkxPQ0tTKSB8fCBkZWZpbmVkKENPTkZJR19OVU1BX0FXQVJF
X1NQSU5MT0NLUykKCWxvbmcgcmVzZXJ2ZWRbMl07CiNlbmRpZgp9OwoKYW5kIHRoaXMgaXMgaG93
IGNuYV9ub2RlIGlzIGRlZmluZWQ6CgpzdHJ1Y3QgY25hX25vZGUgewoJc3RydWN0IG1jc19zcGlu
bG9jawltY3M7CglpbnQJCQludW1hX25vZGU7Cgl1MzIJCQllbmNvZGVkX3RhaWw7Cgl1MzIJCQlw
cmVfc2Nhbl9yZXN1bHQ7IC8qIDAsIDEsIDIgb3IgZW5jb2RlZCB0YWlsICovCgl1MzIJCQlpbnRy
YV9jb3VudDsKfTsKClNpbmNlIGxvbmcgaXMgMzIgYml0IG9uIGkzODYsIHdlIGdldCB0aGUgY29t
cGlsYXRpb24gZXJyb3IgYWJvdmUuCgpXZSBjYW4gdHJ5IGFuZCBzcXVlZXplIENOQS1zcGVjaWZp
YyBmaWVsZHMgaW50byA2NCBiaXQgb24gaTM4NiAob3IgYW55IDMyYml0IAphcmNoaXRlY3R1cmUg
Zm9yIHRoYXQgbWF0dGVyKS4gTm90ZSB0aGF0IGFuIGVuY29kZWQgdGFpbCBwb2ludGVyIHJlcXVp
cmVzIHVwIAp0byAyNCBiaXRzLCBhbmQgd2UgaGF2ZSB0d28gb2YgdGhvc2UuIFdlIHdvdWxkIHdh
bnQgZGlmZmVyZW50IGZpZWxkIGVuY29kaW5ncyAKZm9yIDMyIHZzIDY0Yml0IGFyY2hpdGVjdHVy
ZXMsIGFuZCB0aGlzIGFsbCB3aWxsIGJlIHF1aXRlIHVnbHkuCgpTbyBpbnN0ZWFkIHdlIHNob3Vs
ZCBwcm9iYWJseSBlaXRoZXIgY2hhbmdlIHRoZSBkZWZpbml0aW9uIG9mIEByZXNlcnZlZCBpbiBx
bm9kZSAKdG8gbG9uZyBsb25nLCBvciBwZXJoYXBzIGRpc2FibGUgQ05BIG9uIDMyYml0IGFyY2hp
dGVjdHVyZXMgYWx0b2dldGhlcj8KSSB3b3VsZCBjZXJ0YWlubHkgcHJlZmVyIHRoZSBmb3JtZXIs
IGVzcGVjaWFsbHkgYXMgaXQgcmVxdWlyZXMgdGhlIGxlYXN0IGFtb3VudCAKb2YgY29kZS9jb25m
aWcgY2hhbmdlcy4KCkFueSBvYmplY3Rpb25zIC8gdGhvdWdodHM/CgpUaGFua3MsCuKAlCBBbGV4
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
