Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADBA6C096
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L299voAno9Qg6yJKsW/ZeqcETPJjlKm6k4mUzx2QNZY=; b=hHyfSDwLFX/ykt
	65FvEsg06SlTepeMgXkuDj3y9iNHhCtPZV/jYhS5bI1V3Im3pQepUfzw+HRRoh2sAH9mBuNmxECXV
	eARThAQ6jTV2+moucfL+ZibkPuwuYP3Q+2GdVNXmL5ZYXBj277B8Xp/EJxbWmBG+Owyno/wuDIiUt
	2Py6NsVTiPo7UNGqoMVpurR/hIC0hy3TFgKTljtHXtLD65Bf0HxtfL0k6uQcygEbf1Nt5cDc6FuZG
	Vxiq6kfOLT5JgIy3oirIB0iVRiF2LOIrOcfLk13GMBDmlHNGjPkTwP+/aw4xigvooCCAqenZTJLNn
	BHdBvCxcAFu/5wtgdjCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnzz-0007X7-Tc; Wed, 17 Jul 2019 17:45:52 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnzm-0007W5-1s
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 17:45:39 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6HHijqc161484;
 Wed, 17 Jul 2019 17:44:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=62sEJWENTox02eq//OEvqptJE1QVSLzhejqBb2Dgys0=;
 b=ZqEOUtFxwUHRZVHpcDOHEbE1e3rzBc871Kkfn2mfgW4bWwpvTbuNI0ZinFisENp1SNXd
 P+HRtpZSYYvoU/uPwfSc+vPKP4ky8HUVwo0JUh+FOTdXv2k3U1I5S/VMhLr8dm1VVaHk
 imTpM5iNqhozKjaQ6KIxG8EUY1N48a6tLNB+HJ86VERkXc6N2Vn8hdnFMYLNV9kQ/9n9
 wBnSGPITc12cBnirah3+7wQBMOhmeqGLX2vXqAXzZJLDrEp8z/sjtpB1uk0VraLMf5X/
 7KE70pr+LJs+r5OaFX/zqqJ80g+AuIlNmwak+lQZr/MReOLJVWcJ7On/VKdiS7BVx8xE +g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2tq78pvcxj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jul 2019 17:44:45 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6HHhOkX003742;
 Wed, 17 Jul 2019 17:44:44 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2tsmccj814-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jul 2019 17:44:44 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6HHiVve022414;
 Wed, 17 Jul 2019 17:44:32 GMT
Received: from [192.168.0.21] (/209.6.165.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jul 2019 17:44:31 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <2a7a3ea8-7a94-52d4-b8ef-581de28e0063@redhat.com>
Date: Wed, 17 Jul 2019 13:44:28 -0400
Message-Id: <10197432-47E5-49D7-AD68-8A412782012B@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <77bba626-f3e6-45a8-aae8-43b945d0fab9@redhat.com>
 <aa73b86d-902a-bb6f-d372-8645c8299a6d@redhat.com>
 <C1C55A40-FDB1-43B5-B551-F9B8BE776DF8@oracle.com>
 <2a7a3ea8-7a94-52d4-b8ef-581de28e0063@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9321
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907170203
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9321
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907170203
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_104538_190801_FB28CAD2 
X-CRM114-Status: GOOD (  16.71  )
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
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, Will Deacon <will.deacon@arm.com>,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com,
 Ingo Molnar <mingo@redhat.com>, bp@alien8.de, hpa@zytor.com,
 steven.sistare@oracle.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gSnVsIDE2LCAyMDE5LCBhdCAxMDo1MCBBTSwgV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4gT24gNy8xNi8xOSAxMDoyOSBBTSwgQWxleCBLb2dhbiB3cm90
ZToKPj4gCj4+PiBPbiBKdWwgMTUsIDIwMTksIGF0IDc6MjIgUE0sIFdhaW1hbiBMb25nIDxsb25n
bWFuQHJlZGhhdC5jb20KPj4+IDxtYWlsdG86bG9uZ21hbkByZWRoYXQuY29tPj4gd3JvdGU6Cj4+
PiAKPj4+IE9uIDcvMTUvMTkgNTozMCBQTSwgV2FpbWFuIExvbmcgd3JvdGU6Cj4+Pj4+IC0jaWZu
ZGVmIF9HRU5fUFZfTE9DS19TTE9XUEFUSAo+Pj4+PiArI2lmICFkZWZpbmVkKF9HRU5fUFZfTE9D
S19TTE9XUEFUSCkgJiYgIWRlZmluZWQoX0dFTl9DTkFfTE9DS19TTE9XUEFUSCkKPj4+Pj4gCj4+
Pj4+ICNpbmNsdWRlIDxsaW51eC9zbXAuaD4KPj4+Pj4gI2luY2x1ZGUgPGxpbnV4L2J1Zy5oPgo+
Pj4+PiBAQCAtNzcsMTggKzc3LDE0IEBACj4+Pj4+ICNkZWZpbmUgTUFYX05PREVTCTQKPj4+Pj4g
Cj4+Pj4+IC8qCj4+Pj4+IC0gKiBPbiA2NC1iaXQgYXJjaGl0ZWN0dXJlcywgdGhlIG1jc19zcGlu
bG9jayBzdHJ1Y3R1cmUgd2lsbCBiZSAxNiBieXRlcyBpbgo+Pj4+PiAtICogc2l6ZSBhbmQgZm91
ciBvZiB0aGVtIHdpbGwgZml0IG5pY2VseSBpbiBvbmUgNjQtYnl0ZSBjYWNoZWxpbmUuIEZvcgo+
Pj4+PiAtICogcHZxc3BpbmxvY2ssIGhvd2V2ZXIsIHdlIG5lZWQgbW9yZSBzcGFjZSBmb3IgZXh0
cmEgZGF0YS4gVG8gYWNjb21tb2RhdGUKPj4+Pj4gLSAqIHRoYXQsIHdlIGluc2VydCB0d28gbW9y
ZSBsb25nIHdvcmRzIHRvIHBhZCBpdCB1cCB0byAzMiBieXRlcy4gSU9XLCBvbmx5Cj4+Pj4+IC0g
KiB0d28gb2YgdGhlbSBjYW4gZml0IGluIGEgY2FjaGVsaW5lIGluIHRoaXMgY2FzZS4gVGhhdCBp
cyBPSyBhcyBpdCBpcyByYXJlCj4+Pj4+IC0gKiB0byBoYXZlIG1vcmUgdGhhbiAyIGxldmVscyBv
ZiBzbG93cGF0aCBuZXN0aW5nIGluIGFjdHVhbCB1c2UuIFdlIGRvbid0Cj4+Pj4+IC0gKiB3YW50
IHRvIHBlbmFsaXplIHB2cXNwaW5sb2NrcyB0byBvcHRpbWl6ZSBmb3IgYSByYXJlIGNhc2UgaW4g
bmF0aXZlCj4+Pj4+IC0gKiBxc3BpbmxvY2tzLgo+Pj4+PiArICogT24gNjQtYml0IGFyY2hpdGVj
dHVyZXMsIHRoZSBtY3Nfc3BpbmxvY2sgc3RydWN0dXJlIHdpbGwgYmUgMjAgYnl0ZXMgaW4KPj4+
Pj4gKyAqIHNpemUuIEZvciBwdnFzcGlubG9jayBvciB0aGUgTlVNQS1hd2FyZSB2YXJpYW50LCBo
b3dldmVyLCB3ZSBuZWVkIG1vcmUKPj4+Pj4gKyAqIHNwYWNlIGZvciBleHRyYSBkYXRhLiBUbyBh
Y2NvbW1vZGF0ZSB0aGF0LCB3ZSBpbnNlcnQgdHdvIG1vcmUgbG9uZyB3b3Jkcwo+Pj4+PiArICog
dG8gcGFkIGl0IHVwIHRvIDM2IGJ5dGVzLgo+Pj4+PiAqLwo+Pj4+IFRoZSAyMCBieXRlcyBmaWd1
cmUgaXMgd3JvbmcuIEl0IGlzIGFjdHVhbGx5IDI0IGJ5dGVzIGZvciA2NC1iaXQgYXMgdGhlCj4+
Pj4gbWNzX3NwaW5sb2NrIHN0cnVjdHVyZSBpcyA4LWJ5dGUgYWxpZ25lZC4gRm9yIGJldHRlciBj
YWNoZWxpbmUKPj4+PiBhbGlnbm1lbnQsIEkgd2lsbCBsaWtlIHRvIGtlZXAgbWNzX3NwaW5sb2Nr
IHRvIDE2IGJ5dGVzIGFzIGJlZm9yZS4KPj4+PiBJbnN0ZWFkLCB5b3UgY2FuIHVzZSBlbmNvZGVf
dGFpbCgpIHRvIHN0b3JlIHRoZSBDTkEgbm9kZSBwb2ludGVyIGluCj4+Pj4gImxvY2tlZCIuIEZv
ciBpbnN0YW5jZSwgdXNlIChlbmNvZGVfdGFpbCgpIDw8IDEpIGluIGxvY2tlZCB0bwo+Pj4+IGRp
c3Rpbmd1aXNoIGl0IGZyb20gdGhlIHJlZ3VsYXIgbG9ja2VkPTEgdmFsdWUuCj4+PiAKPj4+IEFj
dHVhbGx5LCB0aGUgZW5jb2RlZCB0YWlsIHZhbHVlIGlzIGFscmVhZHkgc2hpZnQgbGVmdCBlaXRo
ZXIgMTYgYml0cwo+Pj4gb3IgOSBiaXRzLiBTbyB0aGVyZSBpcyBubyBuZWVkIHRvIHNoaWZ0IGl0
LiBZb3UgY2FuIGFzc2lnbmVkIGl0IGRpcmVjdGx5Ogo+Pj4gCj4+PiBtY3MtPmxvY2tlZCA9IGNu
YS0+ZW5jb2RlZF90YWlsOwo+Pj4gCj4+PiBZb3UgZG8gbmVlZCB0byBjaGFuZ2UgdGhlIHR5cGUg
b2YgbG9ja2VkIHRvICJ1bnNpZ25lZCBpbnQiLCB0aG91Z2gsCj4+PiBmb3IgcHJvcGVyIGNvbXBh
cmlzb24gd2l0aCAiMSIuCj4+PiAKPj4gR290IGl0LCB0aGFua3MuCj4+IAo+IEkgZm9yZ290IHRv
IG1lbnRpb24gdGhhdCBJIHdvdWxkIGxpa2UgdG8gc2VlIGEgYm9vdCBjb21tYW5kIGxpbmUgb3B0
aW9uCj4gdG8gZm9yY2Ugb2ZmIGFuZCBtYXliZSBvbiBhcyB3ZWxsIHRoZSBudW1hIHFzcGlubG9j
ayBjb2RlLiBUaGlzIGNhbiBoZWxwCj4gaW4gdGVzdGluZyBhcyB5b3UgZG9uJ3QgbmVlZCB0byBi
dWlsZCAyIHNlcGFyYXRlIGtlcm5lbHMsIG9uZSB3aXRoCj4gTlVNQV9BV0FSRV9TUElOTE9DS1Mg
b24gYW5kIG9uZSB3aXRoIGl0IG9mZi4KSUlVQyBpdCBzaG91bGQgYmUgZWFzeSB0byBhZGQgYSBi
b290IG9wdGlvbiB0byBmb3JjZSBvZmYgdGhlIE5VTUEtYXdhcmUgc3BpbmxvY2sgCmV2ZW4gaWYg
aXQgaXMgZW5hYmxlZCB0aG91Z2ggY29uZmlnLCBidXQgdGhlIG90aGVyIHdheSBhcm91bmQgd291
bGQgcmVxdWlyZSAKY29tcGlsaW5nIGluIHRoZSBOVU1BLWF3YXJlIHNwaW5sb2NrIHN0dWZmIGV2
ZW4gaWYgdGhlIGNvbmZpZyBvcHRpb24gaXMgZGlzYWJsZWQuCklzIHRoYXQgb2s/CgpBbHNvLCB3
aGF0IHNob3VsZCB0aGUgb3B0aW9uIG5hbWUgYmU/CiJudW1hX3NwaW5sb2NrPW9uL29mZuKAnSBp
ZiB3ZSB3YW50IGJvdGggd2F5cywgb3Ig4oCcbm9fbnVtYV9zcGlubG9jayIgaWYgd2Ugd2FudCBq
dXN0IHRoZSDigJxmb3JjZSBvZmbigJ0gb3B0aW9uPwoKPiBGb3Igc21hbGwgMi1zb2NrZXQgc3lz
dGVtcywKPiBudW1hIHFzcGlubG9jayBtYXkgbm90IGhlbHAgbXVjaC4KSXQgYWN0dWFsbHkgaGVs
cHMgcXVpdGUgYSBiaXQgKGUuZy4sIHNwZWVkdXAgb2YgdXAgdG8gNDItNTclIGZvciB3aWxsLWl0
LXNjYWxlIG9uIGEgZHVhbC1zb2NrZXQgeDg2IHN5c3RlbSkuCldlIGhhdmUgbnVtYmVycyBhbmQg
cGxvdHMgaW4gb3VyIHBhcGVyIG9uIGFyeGl2LgoKUmVnYXJkcywK4oCUIEFsZXgKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
