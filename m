Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33573DD142
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 23:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28/w1xz7X0yq75nkgUijPv+1pRWtfvm+8FbyOoBfL9U=; b=WxBVFlwhTBElcX
	lh6jYKsIfzpUH+4mo2h1bvca2DiLA4RCd7uCVucD8C5jAf/uhRB4fnvjN3Sermo57yZlFOsZ/SO/6
	BTJ1CbMAFvGVNwVW9gCEl2ltezTXIY2Rlj4H095f5HSDakZ2diYzCpWYc8EGiBN5p2L1Uu8/qnSei
	s6+We+7LMs5FNme5Azqhsj3qi0r66Z4pXtiC+D2fMmHnWw3bXr+X8u0KdgOKZrSYxDcDMmnh8DRHN
	6ZgAj6qwSPNVHj5j7s3+dnlwY+g9I1BE6wB+arnyKDGIsyM0oi6pyqoLSGNnzbckPM6tj0U9mNIyG
	AvCbQBkmR8NSziTVW8ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLZxh-0000nl-K2; Fri, 18 Oct 2019 21:39:05 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLZxW-0000nH-21
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 21:38:55 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9ILZ6ag074664;
 Fri, 18 Oct 2019 21:38:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=sZQ9OqPwUxjOm8RziMERTbkSNvmy/hpOfAE/PjKrlhU=;
 b=bvSaYRK/Nd79dT6XNWKy4Br5pqJVwrFamZSAcfwGQzCWkvUXhWpewaXpq2r12treyYxk
 snU2APjmW902mRRgz4b7mDs0Q2A48I7LJoCgywboH39fbGNRpFWn2wOAODf5hqe+Fbg7
 RV0GqBjvtyKkYqVKrudbU8VOP2P507CRgHMxcDFxedw+hWtC1v6hWA/wJZ/pqu2HGuWI
 uoCQgDEnPG1m750e4IDG3aLTBG6Mwa2bmhMG+I2FXZaWd/HM1mITDc8mE545VtIR4Akl
 gy7a4LvzxJNblw4Pm6vKc5YQuBtaa2L9C9yJfBoP61SPN0i0R3u2YhX+I5Vbdw6Wh32e 1A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vq0q4685k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 21:38:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9ILc2Y1042326;
 Fri, 18 Oct 2019 21:38:06 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vq0dyjm5m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 21:38:06 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9ILbisJ002499;
 Fri, 18 Oct 2019 21:37:44 GMT
Received: from [172.31.33.200] (/155.48.255.248)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Oct 2019 21:37:43 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v5 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <6ce50aeb-6b87-5d1c-9011-4329e8dadfec@redhat.com>
Date: Fri, 18 Oct 2019 17:37:51 -0400
Message-Id: <1B59E517-D418-46DF-BC58-174BAFC5EC23@oracle.com>
References: <20191016042903.61081-1-alex.kogan@oracle.com>
 <20191016042903.61081-4-alex.kogan@oracle.com>
 <6ce50aeb-6b87-5d1c-9011-4329e8dadfec@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=970
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910180190
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910180189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_143854_191008_89A1CB5C 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Rahul Yadav <rahul.x.yadav@oracle.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gT2N0IDE4LCAyMDE5LCBhdCAxMjowMyBQTSwgV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4gT24gMTAvMTYvMTkgMTI6MjkgQU0sIEFsZXggS29nYW4gd3Jv
dGU6Cj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgY25hX3Bhc3NfbG9jayhzdHJ1Y3QgbWNzX3NwaW5s
b2NrICpub2RlLAo+PiArCQkJCSBzdHJ1Y3QgbWNzX3NwaW5sb2NrICpuZXh0KQo+PiArewo+PiAr
CXN0cnVjdCBjbmFfbm9kZSAqY24gPSAoc3RydWN0IGNuYV9ub2RlICopbm9kZTsKPj4gKwlzdHJ1
Y3QgbWNzX3NwaW5sb2NrICpuZXh0X2hvbGRlciA9IG5leHQsICp0YWlsXzJuZDsKPj4gKwl1MzIg
dmFsID0gMTsKPj4gKwo+PiArCXUzMiBzY2FuID0gY24tPnByZV9zY2FuX3Jlc3VsdDsKPj4gKwo+
PiArCS8qCj4+ICsJICogY2hlY2sgaWYgYSBzdWNjZXNzb3IgZnJvbSB0aGUgc2FtZSBudW1hIG5v
ZGUgaGFzIG5vdCBiZWVuIGZvdW5kIGluCj4+ICsJICogcHJlLXNjYW4sIGFuZCBpZiBzbywgdHJ5
IHRvIGZpbmQgaXQgaW4gcG9zdC1zY2FuIHN0YXJ0aW5nIGZyb20gdGhlCj4+ICsJICogbm9kZSB3
aGVyZSBwcmUtc2NhbiBzdG9wcGVkIChzdG9yZWQgaW4gQHByZV9zY2FuX3Jlc3VsdCkKPj4gKwkg
Ki8KPj4gKwlpZiAoc2NhbiA+IDApCj4+ICsJCXNjYW4gPSBjbmFfc2Nhbl9tYWluX3F1ZXVlKG5v
ZGUsIGRlY29kZV90YWlsKHNjYW4pKTsKPj4gKwo+PiArCWlmICghc2NhbikgeyAvKiBpZiBmb3Vu
ZCBhIHN1Y2Nlc3NvciBmcm9tIHRoZSBzYW1lIG51bWEgbm9kZSAqLwo+PiArCQluZXh0X2hvbGRl
ciA9IG5vZGUtPm5leHQ7Cj4+ICsJCS8qCj4+ICsJCSAqIG1ha2Ugc3VyZSBAdmFsIGdldHMgMSBp
ZiBjdXJyZW50IGhvbGRlcidzIEBsb2NrZWQgaXMgMCBhcwo+PiArCQkgKiB3ZSBoYXZlIHRvIHN0
b3JlIGEgbm9uLXplcm8gdmFsdWUgaW4gc3VjY2Vzc29yJ3MgQGxvY2tlZAo+PiArCQkgKiB0byBw
YXNzIHRoZSBsb2NrCj4+ICsJCSAqLwo+PiArCQl2YWwgPSBub2RlLT5sb2NrZWQgKyAobm9kZS0+
bG9ja2VkID09IDApOwo+IAo+IG5vZGUtPmxvY2tlZCBjYW4gYmUgMCB3aGVuIHRoZSBjcHUgZW50
ZXJzIGludG8gYW4gZW1wdHkgTUNTIHF1ZXVlLiBXZQo+IGNvdWxkIHVuY29uZGl0aW9uYWxseSBz
ZXQgbm9kZS0+bG9ja2VkIHRvIDEgZm9yIHRoaXMgY2FzZSBpbiBxc3BpbmxvY2suYwo+IG9yIHdp
dGggeW91ciBhYm92ZSBjb2RlLgoKUmlnaHQsIEkgd2FzIGRvaW5nIHRoYXQgaW4gdGhlIGZpcnN0
IHR3byB2ZXJzaW9ucyBvZiB0aGUgc2VyaWVzLiBJdCBhZGRzIAp1bm5lY2Vzc2FyeSBzdG9yZSBp
bnRvIEBsb2NrZWQgZm9yIG5vbi1DTkEgdmFyaWFudHMsIGFuZCBldmVuIGlmIGl0IGRvZXMgbm90
CmhhdmUgYW55IHJlYWwgcGVyZm9ybWFuY2UgaW1wbGljYXRpb25zLCBJIHRoaW5rIFBldGVyIGRp
ZCBub3QgbGlrZSB0aGF0IChvciwgCmF0IGxlYXN0LCB0aGUgY29tbWVudCBJIGhhZCB0byBleHBs
YWluIHdoeSB3ZSBuZWVkZWQgdGhhdCBzdG9yZSkuCgo+IFBlcmhhcHMsIGEgY29tbWVudCBhYm91
dCB3aGVuIG5vZGUtPmxvY2tlZCB3aWxsCj4gYmUgMC4KWWVhaCwgSSB3YXMgdGlua2VyaW5nIHdp
dGggdGhpcyBjb21tZW50LiBIZXJlIGlzIGhvdyBpdCByZWFkIGluIHYzOgovKgogKiBXZSB1bmxv
Y2sgYSBzdWNjZXNzb3IgYnkgcGFzc2luZyBhIG5vbi16ZXJvIHZhbHVlLAogKiBzbyBzZXQgQHZh
bCB0byAxIGlmZiBAbG9ja2VkIGlzIDAsIHdoaWNoIHdpbGwgaGFwcGVuCiAqIGlmIHdlIGFjcXVp
cmVkIHRoZSBNQ1MgbG9jayB3aGVuIGl0cyBxdWV1ZSB3YXMgZW1wdHkKICovCgpJIGNhbiBjaGFu
Z2UgYmFjayB0byBzb21ldGhpbmcgbGlrZSB0aGF0IGlmIGl0IGlzIGJldHRlci4KCj4gCj4gSXQg
bWF5IGJlIGVhc2llciB0byB1bmRlcnN0YW5kIGlmIHlvdSBqdXN0IGRvCj4gCj4gICAgIHZhbCA9
IG5vZGUtPmxvY2tlZCA/IG5vZGUtPmxvY2tlZCA6IDE7CllvdeKAmXJlIHJpZ2h0LCB0aGF04oCZ
cyBhbm90aGVyIHBvc3NpYmlsaXR5LgpIb3dldmVyLCBpdCBhZGRzIHlldCBhbm90aGVyIGlmLXN0
YXRlbWVudCBvbiB0aGUgY3JpdGljYWwgcGF0aCwgd2hpY2ggSSB3YXMKdHJ5aW5nIHRvIGF2b2lk
IHRoYXQuCgpCZXN0IHJlZ2FyZHMsCuKAlCBBbGV4CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
