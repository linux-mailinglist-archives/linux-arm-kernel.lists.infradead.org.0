Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABC26AB08
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2WllqGrSOUGIg/K7YtNjxEuvTMBN0azUMUgstiSHXI=; b=nd1qe4EVdU2/PW
	5L/gTvwp8ekobK6QEzc0ylabLMNu6OMsgFo8Gs3uHqUl0O9XCI1RzDR2x40U3uCmEM9RY1PMtz26R
	DEhzKpbtv81VwKwUNtTVS7e6Q2u5qozkZNsKByIUuLbzvPDmvkFIN0ZQPXx34V2MzMBf7KnHtU3Di
	feZWnyRA4CQghubx8ZGC1gdp34dGy4rNgh7nOBaTuA6f0/Um1aoooVXNWh5/rw7Qt7Ak1Ak+cVjR/
	EH5svIVz2nI1O3YEwXXjk/M0tm40axUuWW1bnyA7UwsD88Avg+nQR8u42oTCuJ+f8rElA3XSWQ08L
	7L2J1JmgIouat+U8bgEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOqL-0002HJ-2D; Tue, 16 Jul 2019 14:54:13 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOps-0001vt-Fm
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:53:45 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6GEmcI4125879;
 Tue, 16 Jul 2019 14:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=jMrbDq6/gbs2hZj13b/yWOFJhrxf6vLsu7dgoGkQCnQ=;
 b=QqmIswjnPG8I98M0sG7apghVmwVrT0Sj3eu3GI5ZetScM+7aZhnuZosT7cMwyTi/OULk
 Yhkrqy4VxurAGVNzlj87C3i8GPUxt0eAPj7jRqSr5hQLvYtLXk1Wl9liXZRlGHe/JZo6
 GrGhzBl+yveWTjZT2jEyMmKlse867MdDlLq5RylH11PSss9Sy2cgoELBhRt5VUToKErG
 S0JLzC9rBKj3+jrPP/ymx5I2xeOIxBHiJ0UZLPpDbh2FwdzOxHiu3XBcSihdQ71WAqSo
 Hufnto1Fpzzz2FH8pYRS8j9BolLFQnHkjGINwWSbUU+CdVGa+L+G4FyiY7UixacVvExW wg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2tq6qtn4qc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jul 2019 14:53:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6GEqkxD129539;
 Tue, 16 Jul 2019 14:53:08 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2tq4dtynsf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jul 2019 14:53:08 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6GEr4JB015648;
 Tue, 16 Jul 2019 14:53:04 GMT
Received: from [10.39.235.122] (/10.39.235.122)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jul 2019 14:53:04 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v3 2/5] locking/qspinlock: Refactor the qspinlock slow path
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20190716102034.GN3419@hirez.programming.kicks-ass.net>
Date: Tue, 16 Jul 2019 10:53:02 -0400
Message-Id: <9D5B6F33-6003-4CCA-BBE5-998B5A679B9C@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-3-alex.kogan@oracle.com>
 <20190716102034.GN3419@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=888
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907160183
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=933 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907160182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_075344_611858_91075C7D 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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

T24gSnVsIDE2LCAyMDE5LCBhdCA2OjIwIEFNLCBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJh
ZGVhZC5vcmc+IHdyb3RlOgo+IAo+IE9uIE1vbiwgSnVsIDE1LCAyMDE5IGF0IDAzOjI1OjMzUE0g
LTA0MDAsIEFsZXggS29nYW4gd3JvdGU6Cj4gCj4+ICsvKgo+PiArICogc2V0X2xvY2tlZF9lbXB0
eV9tY3MgLSBUcnkgdG8gc2V0IHRoZSBzcGlubG9jayB2YWx1ZSB0byBfUV9MT0NLRURfVkFMLAo+
PiArICogYW5kIGJ5IGRvaW5nIHRoYXQgdW5sb2NrIHRoZSBNQ1MgbG9jayB3aGVuIGl0cyB3YWl0
aW5nIHF1ZXVlIGlzIGVtcHR5Cj4+ICsgKiBAbG9jazogUG9pbnRlciB0byBxdWV1ZWQgc3Bpbmxv
Y2sgc3RydWN0dXJlCj4+ICsgKiBAdmFsOiBDdXJyZW50IHZhbHVlIG9mIHRoZSBsb2NrCj4+ICsg
KiBAbm9kZTogUG9pbnRlciB0byB0aGUgTUNTIG5vZGUgb2YgdGhlIGxvY2sgaG9sZGVyCj4+ICsg
Kgo+PiArICogKiwqLCogLT4gMCwwLDEKPj4gKyAqLwo+PiArc3RhdGljIF9fYWx3YXlzX2lubGlu
ZSBib29sIF9fc2V0X2xvY2tlZF9lbXB0eV9tY3Moc3RydWN0IHFzcGlubG9jayAqbG9jaywKPj4g
KwkJCQkJCSAgIHUzMiB2YWwsCj4+ICsJCQkJCQkgICBzdHJ1Y3QgbWNzX3NwaW5sb2NrICpub2Rl
KQo+PiArewo+PiArCXJldHVybiBhdG9taWNfdHJ5X2NtcHhjaGdfcmVsYXhlZCgmbG9jay0+dmFs
LCAmdmFsLCBfUV9MT0NLRURfVkFMKTsKPj4gK30KPiAKPiBUaGF0IG5hbWUgaXMgbm9uc2Vuc2Uu
IEl0IHNob3VsZCBiZSBzb21ldGhpbmcgbGlrZToKPiAKPiBzdGF0aWMgX19hbHdheXNfaW5saW5l
IGJvb2wgX190cnlfY2xlYXJfdGFpbCjigKYpCgpXZSBhbHJlYWR5IGhhdmUgc2V0X2xvY2tlZCgp
LCBzbyBJIHdhcyB0cnlpbmcgdG8gY29udmV5IHRoZSBmYWN0IHRoYXQgd2UgYXJlCmRvaW5nIHRo
ZSBzYW1lIGhlcmUsIGJ1dCBvbmx5IHdoZW4gdGhlIE1DUyBjaGFpbiBpcyBlbXB0eS4KCkkgY2Fu
IHVzZSBfX3RyeV9jbGVhcl90YWlsKCkgaW5zdGVhZC4KCj4gCj4gCj4+ICsvKgo+PiArICogcGFz
c19tY3NfbG9jayAtIHBhc3MgdGhlIE1DUyBsb2NrIHRvIHRoZSBuZXh0IHdhaXRlcgo+PiArICog
QG5vZGU6IFBvaW50ZXIgdG8gdGhlIE1DUyBub2RlIG9mIHRoZSBsb2NrIGhvbGRlcgo+PiArICog
QG5leHQ6IFBvaW50ZXIgdG8gdGhlIE1DUyBub2RlIG9mIHRoZSBmaXJzdCB3YWl0ZXIgaW4gdGhl
IE1DUyBxdWV1ZQo+PiArICovCj4+ICtzdGF0aWMgX19hbHdheXNfaW5saW5lIHZvaWQgX19wYXNz
X21jc19sb2NrKHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUsCj4+ICsJCQkJCSAgICBzdHJ1Y3Qg
bWNzX3NwaW5sb2NrICpuZXh0KQo+PiArewo+PiArCWFyY2hfbWNzX3NwaW5fdW5sb2NrX2NvbnRl
bmRlZCgmbmV4dC0+bG9ja2VkLCAxKTsKPj4gK30KPiAKPiBJJ20gbm90IGVudGlyZWx5IGhhcHB5
IHdpdGggdGhhdCBuYW1lIGVpdGhlcjsgYnV0IGl0J3Mgbm90IGhvcnJpYmxlIGxpa2UKPiB0aGUg
b3RoZXIgb25lLiBXaHkgbm90IG1jc19zcGluX3VubG9ja19jb250ZW5kZWQoKSA/CgpTdXJlLCBJ
IGNhbiB1c2UgbWNzX3NwaW5fdW5sb2NrX2NvbnRlbmRlZCgpIGluc3RlYWQuCgpUaGFua3MsCuKA
lCBBbGV4CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
