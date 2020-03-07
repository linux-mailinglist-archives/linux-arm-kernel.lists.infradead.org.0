Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A26217CFA0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 19:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Soj7yCeWsTlmhRWlaWzGv0OW0aIiEwvaB4E4fYhcwqo=; b=eTQfRsxdEPKOlw
	ncAXMi/nkgkdJLRRUpUaP7Oc+bBZeS6zsCpa725HILSCNPRNG/b5SAhNSCWbMHfHOOqoJXviUrWpe
	h1AZbJ8wwS3N08GDyHxJBIlHRAzp/cxbCOBQkohYW5RNp4fJanxUZjrtHKGuFOGQvck8S7hyf+PhK
	jOASeybjwvqluSRbnpc5BCof60wJkiAiDEEJqulIEhBo8LOtoV9fu+Py8fviq8ONPg89CDT0rYW8U
	jmzMrxWxcfpwH4oQhz7RiAZyFehtr0iuFuA5GfDMSxd9TlDjJ0PSlWU+OmVBgnfDKxmgcfghg2h/p
	7zmBBp3Ojuxt1n0RJiEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAeQj-00066X-Ho; Sat, 07 Mar 2020 18:44:09 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAeQY-00065N-I3; Sat, 07 Mar 2020 18:44:00 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 027IYRJ1148148;
 Sat, 7 Mar 2020 18:43:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=x0rdGTG4PgqzGEHHwl4BQb+eQt+cgv+7FrZuLnwZOc4=;
 b=aqul3OUz7zAvhP3G6oSUZbNY1p7L9NLj8jWjr8Z4fTZygjG1s7UfVlqpM/Vie6NxY32U
 XXIwiilKzqnqRpf9+rV2XYMY5FxzVCHSBtod4uKRJHGk0IgfTpE6RnnWL2GoZeB5V74Q
 HFoQUc7Su+fMv2HvAiLii5rdOzT3+kEazNK1xCgcdu9CBUOaCODeYKWlcMu3tKv7Ku3V
 rJ5x6hT7avtBnRydBTwY1nlz0lCQWJXHipC/pNRl9ioIDgBIfopr2niZ/+Wvg2oM6nyX
 RLqTzeI2VNpBbgyWCG/6/+YK8MJ+9j85ptdMZE/xeNU/aSXUk8cqkH1mN7lKCSX/vDs2 3A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2ym31u1h74-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Mar 2020 18:43:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 027IhOgQ109522;
 Sat, 7 Mar 2020 18:43:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2ym1nerqx7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Mar 2020 18:43:24 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 027Ih9Tk031374;
 Sat, 7 Mar 2020 18:43:09 GMT
Received: from dhcp-10-154-175-234.vpn.oracle.com (/10.154.175.234)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 07 Mar 2020 10:43:09 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <0c00f14a-15ca-44db-7f82-00f15ddd3c88@huawei.com>
Date: Sat, 7 Mar 2020 12:43:07 -0600
Message-Id: <B6820665-123F-422A-8E49-BB2A48D02CA7@oracle.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-3-chenzhou10@huawei.com>
 <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
 <0c00f14a-15ca-44db-7f82-00f15ddd3c88@huawei.com>
To: Chen Zhou <chenzhou10@huawei.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9553
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 suspectscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003070136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9553
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003070135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_104358_641351_CEBC31AB 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 xiexiuqi@huawei.com, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dyoung@redhat.com,
 horms@verge.net.au, James Morse <james.morse@arm.com>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 mingo@redhat.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE1hciA3LCAyMDIwLCBhdCA1OjA2IEFNLCBDaGVuIFpob3UgPGNoZW56aG91MTBAaHVh
d2VpLmNvbT4gd3JvdGU6Cj4gCj4gCj4gCj4gT24gMjAyMC8zLzUgMTg6MTMsIFByYWJoYWthciBL
dXNod2FoYSB3cm90ZToKPj4gT24gTW9uLCBEZWMgMjMsIDIwMTkgYXQgODo1NyBQTSBDaGVuIFpo
b3UgPGNoZW56aG91MTBAaHVhd2VpLmNvbT4gd3JvdGU6Cj4+PiAKPj4+IENyYXNoa2VybmVsPVgg
dHJpZXMgdG8gcmVzZXJ2ZSBtZW1vcnkgZm9yIHRoZSBjcmFzaCBkdW1wIGtlcm5lbCB1bmRlcgo+
Pj4gNEcuIElmIGNyYXNoa2VybmVsPVgsbG93IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNseSwg
cmVzZXJ2ZSBzcGNpZmllZAo+Pj4gc2l6ZSBsb3cgbWVtb3J5IGZvciBjcmFzaCBrZHVtcCBrZXJu
ZWwgZGV2aWNlcyBmaXJzdGx5IGFuZCB0aGVuIHJlc2VydmUKPj4+IG1lbW9yeSBhYm92ZSA0Ry4K
Pj4+IAo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hlbiBaaG91IDxjaGVuemhvdTEwQGh1YXdlaS5jb20+
Cj4+PiAtLS0KPj4+IGFyY2gvYXJtNjQva2VybmVsL3NldHVwLmMgfCAgOCArKysrKysrLQo+Pj4g
YXJjaC9hcm02NC9tbS9pbml0LmMgICAgICB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0KPj4+IDIgZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPj4+IAo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3NldHVwLmMgYi9hcmNo
L2FybTY0L2tlcm5lbC9zZXR1cC5jCj4+PiBpbmRleCA1NmY2NjQ1Li4wNGQxYzg3IDEwMDY0NAo+
Pj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvc2V0dXAuYwo+Pj4gKysrIGIvYXJjaC9hcm02NC9r
ZXJuZWwvc2V0dXAuYwo+Pj4gQEAgLTIzOCw3ICsyMzgsMTMgQEAgc3RhdGljIHZvaWQgX19pbml0
IHJlcXVlc3Rfc3RhbmRhcmRfcmVzb3VyY2VzKHZvaWQpCj4+PiAgICAgICAgICAgICAgICAgICAg
a2VybmVsX2RhdGEuZW5kIDw9IHJlcy0+ZW5kKQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBy
ZXF1ZXN0X3Jlc291cmNlKHJlcywgJmtlcm5lbF9kYXRhKTsKPj4+ICNpZmRlZiBDT05GSUdfS0VY
RUNfQ09SRQo+Pj4gLSAgICAgICAgICAgICAgIC8qIFVzZXJzcGFjZSB3aWxsIGZpbmQgIkNyYXNo
IGtlcm5lbCIgcmVnaW9uIGluIC9wcm9jL2lvbWVtLiAqLwo+Pj4gKyAgICAgICAgICAgICAgIC8q
Cj4+PiArICAgICAgICAgICAgICAgICogVXNlcnNwYWNlIHdpbGwgZmluZCAiQ3Jhc2gga2VybmVs
IiByZWdpb24gaW4gL3Byb2MvaW9tZW0uCj4+PiArICAgICAgICAgICAgICAgICogTm90ZTogdGhl
IGxvdyByZWdpb24gaXMgcmVuYW1lZCBhcyBDcmFzaCBrZXJuZWwgKGxvdykuCj4+PiArICAgICAg
ICAgICAgICAgICovCj4+PiArICAgICAgICAgICAgICAgaWYgKGNyYXNoa19sb3dfcmVzLmVuZCAm
JiBjcmFzaGtfbG93X3Jlcy5zdGFydCA+PSByZXMtPnN0YXJ0ICYmCj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNyYXNoa19sb3dfcmVzLmVuZCA8PSByZXMtPmVuZCkKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHJlcXVlc3RfcmVzb3VyY2UocmVzLCAmY3Jhc2hrX2xvd19y
ZXMpOwo+Pj4gICAgICAgICAgICAgICAgaWYgKGNyYXNoa19yZXMuZW5kICYmIGNyYXNoa19yZXMu
c3RhcnQgPj0gcmVzLT5zdGFydCAmJgo+Pj4gICAgICAgICAgICAgICAgICAgIGNyYXNoa19yZXMu
ZW5kIDw9IHJlcy0+ZW5kKQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICByZXF1ZXN0X3Jlc291
cmNlKHJlcywgJmNyYXNoa19yZXMpOwo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvbW0vaW5p
dC5jIGIvYXJjaC9hcm02NC9tbS9pbml0LmMKPj4+IGluZGV4IGI2NWRmZmQuLjBkN2FmZDUgMTAw
NjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L21tL2luaXQuYwo+Pj4gKysrIGIvYXJjaC9hcm02NC9t
bS9pbml0LmMKPj4+IEBAIC04MCw2ICs4MCw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCByZXNlcnZl
X2NyYXNoa2VybmVsKHZvaWQpCj4+PiB7Cj4+PiAgICAgICAgdW5zaWduZWQgbG9uZyBsb25nIGNy
YXNoX2Jhc2UsIGNyYXNoX3NpemU7Cj4+PiAgICAgICAgaW50IHJldDsKPj4+ICsgICAgICAgcGh5
c19hZGRyX3QgY3Jhc2hfbWF4ID0gYXJtNjRfZG1hMzJfcGh5c19saW1pdDsKPj4+IAo+Pj4gICAg
ICAgIHJldCA9IHBhcnNlX2NyYXNoa2VybmVsKGJvb3RfY29tbWFuZF9saW5lLCBtZW1ibG9ja19w
aHlzX21lbV9zaXplKCksCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmNyYXNo
X3NpemUsICZjcmFzaF9iYXNlKTsKPj4+IEBAIC04NywxMiArODgsMzggQEAgc3RhdGljIHZvaWQg
X19pbml0IHJlc2VydmVfY3Jhc2hrZXJuZWwodm9pZCkKPj4+ICAgICAgICBpZiAocmV0IHx8ICFj
cmFzaF9zaXplKQo+Pj4gICAgICAgICAgICAgICAgcmV0dXJuOwo+Pj4gCj4+PiArICAgICAgIHJl
dCA9IHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93KCk7Cj4+PiArICAgICAgIGlmICghcmV0ICYmIGNy
YXNoa19sb3dfcmVzLmVuZCkgewo+Pj4gKyAgICAgICAgICAgICAgIC8qCj4+PiArICAgICAgICAg
ICAgICAgICogSWYgY3Jhc2hrZXJuZWw9WCxsb3cgc3BlY2lmaWVkLCB0aGVyZSBtYXkgYmUgdHdv
IHJlZ2lvbnMsCj4+PiArICAgICAgICAgICAgICAgICogd2UgbmVlZCB0byBtYWtlIHNvbWUgY2hh
bmdlcyBhcyBmb2xsb3dzOgo+Pj4gKyAgICAgICAgICAgICAgICAqCj4+PiArICAgICAgICAgICAg
ICAgICogMS4gcmVuYW1lIHRoZSBsb3cgcmVnaW9uIGFzICJDcmFzaCBrZXJuZWwgKGxvdykiCj4+
PiArICAgICAgICAgICAgICAgICogSW4gb3JkZXIgdG8gZGlzdGluY3QgZnJvbSB0aGUgaGlnaCBy
ZWdpb24gYW5kIG1ha2Ugbm8gZWZmZWN0Cj4+PiArICAgICAgICAgICAgICAgICogdG8gdGhlIHVz
ZSBvZiBleGlzdGluZyBrZXhlYy10b29scywgcmVuYW1lIHRoZSBsb3cgcmVnaW9uIGFzCj4+PiAr
ICAgICAgICAgICAgICAgICogIkNyYXNoIGtlcm5lbCAobG93KSIuCj4+PiArICAgICAgICAgICAg
ICAgICoKPj4+ICsgICAgICAgICAgICAgICAgKiAyLiBjaGFuZ2UgdGhlIHVwcGVyIGJvdW5kIGZv
ciBjcmFzaCBtZW1vcnkKPj4+ICsgICAgICAgICAgICAgICAgKiBTZXQgTUVNQkxPQ0tfQUxMT0Nf
QUNDRVNTSUJMRSB1cHBlciBib3VuZCBmb3IgY3Jhc2ggbWVtb3J5Lgo+Pj4gKyAgICAgICAgICAg
ICAgICAqCj4+PiArICAgICAgICAgICAgICAgICogMy4gbWFyayB0aGUgbG93IHJlZ2lvbiBhcyAi
bm9tYXAiCj4+PiArICAgICAgICAgICAgICAgICogVGhlIGxvdyByZWdpb24gaXMgaW50ZW5kZWQg
dG8gYmUgdXNlZCBmb3IgY3Jhc2ggZHVtcCBrZXJuZWwKPj4+ICsgICAgICAgICAgICAgICAgKiBk
ZXZpY2VzLCBqdXN0IG1hcmsgdGhlIGxvdyByZWdpb24gYXMgIm5vbWFwIiBzaW1wbHkuCj4+PiAr
ICAgICAgICAgICAgICAgICovCj4+PiArICAgICAgICAgICAgICAgY29uc3QgY2hhciAqcmVuYW1l
ID0gIkNyYXNoIGtlcm5lbCAobG93KSI7Cj4+PiArCj4+PiArICAgICAgICAgICAgICAgY3Jhc2hr
X2xvd19yZXMubmFtZSA9IHJlbmFtZTsKPj4+ICsgICAgICAgICAgICAgICBjcmFzaF9tYXggPSBN
RU1CTE9DS19BTExPQ19BQ0NFU1NJQkxFOwo+Pj4gKyAgICAgICAgICAgICAgIG1lbWJsb2NrX21h
cmtfbm9tYXAoY3Jhc2hrX2xvd19yZXMuc3RhcnQsCj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZXNvdXJjZV9zaXplKCZjcmFzaGtfbG93X3JlcykpOwo+Pj4gKyAgICAg
ICB9Cj4+PiArCj4+PiAgICAgICAgY3Jhc2hfc2l6ZSA9IFBBR0VfQUxJR04oY3Jhc2hfc2l6ZSk7
Cj4+PiAKPj4+ICAgICAgICBpZiAoY3Jhc2hfYmFzZSA9PSAwKSB7Cj4+PiAgICAgICAgICAgICAg
ICAvKiBDdXJyZW50IGFybTY0IGJvb3QgcHJvdG9jb2wgcmVxdWlyZXMgMk1CIGFsaWdubWVudCAq
Lwo+Pj4gLSAgICAgICAgICAgICAgIGNyYXNoX2Jhc2UgPSBtZW1ibG9ja19maW5kX2luX3Jhbmdl
KDAsIGFybTY0X2RtYTMyX3BoeXNfbGltaXQsCj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGNyYXNoX3NpemUsIFNaXzJNKTsKPj4+ICsgICAgICAgICAgICAgICBjcmFzaF9iYXNl
ID0gbWVtYmxvY2tfZmluZF9pbl9yYW5nZSgwLCBjcmFzaF9tYXgsIGNyYXNoX3NpemUsCj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNaXzJNKTsKPj4+ICAgICAgICAgICAgICAg
IGlmIChjcmFzaF9iYXNlID09IDApIHsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgcHJfd2Fy
bigiY2Fubm90IGFsbG9jYXRlIGNyYXNoa2VybmVsIChzaXplOjB4JWxseClcbiIsCj4+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgY3Jhc2hfc2l6ZSk7Cj4+PiAtLQo+PiAKPj4gSSB0
ZXN0ZWQgdGhpcyBwYXRjaCBzZXJpZXMgb24gQVJNNjQtVGh1bmRlclgyIHdpdGggbm8gaXNzdWUg
d2l0aAo+PiBib290YXJncyBjcmFzaGtlbmVsPVhAWSBjcmFzaGtlcm5lbD0yNTBNLGxvdwo+PiAK
Pj4gJCBkbWVzZyB8IGdyZXAgY3Jhc2gKPj4gWyAgICAwLjAwMDAwMF0gY3Jhc2hrZXJuZWwgcmVz
ZXJ2ZWQ6IDB4MDAwMDAwMGI4MTIwMDAwMCAtCj4+IDB4MDAwMDAwMGM4MTIwMDAwMCAoNDA5NiBN
QikKPj4gWyAgICAwLjAwMDAwMF0gS2VybmVsIGNvbW1hbmQgbGluZToKPj4gQk9PVF9JTUFHRT0v
Ym9vdC92bWxpbnV6LTUuNi4wLXJjNCsKPj4gcm9vdD1VVUlEPTg2NmI4ZGYzLTE0ZjQtNGUxMS05
NWExLTc0YTkwZWU5YjY5NCBybwo+PiBjcmFzaGtlcm5lbD00R0AweGI4MTIwMDAwMCBjcmFzaGtl
cm5lbD0yNTBNLGxvdyBub3dhdGNoZG9nIGVhcmx5Y29uCj4+IFsgICAyOS4zMTAyMDldICAgICBj
cmFzaGtlcm5lbD0yNTBNLGxvdwo+PiAKPj4gJCAga2V4ZWMgLXAgLWkgL2Jvb3Qvdm1saW51ei1g
dW5hbWUgLXJgCj4+IC0taW5pdHJkPS9ib290L2luaXRyZC5pbWctYHVuYW1lIC1yYCAtLXJldXNl
LWNtZGxpbmUKPj4gJCBlY2hvIDEgPiAvcHJvYy9zeXMva2VybmVsL3N5c3JxIDsgZWNobyBjID4g
L3Byb2Mvc3lzcnEtdHJpZ2dlcgo+PiAKPj4gQnV0IHdoZW4gaSB0cmllZCB3aXRoIGNyYXNoa2Vy
bmVsPTRHIGNyYXNoa2VybmVsPTI1ME0sbG93IGFzIGJvb3RhcmdzLgo+PiBLZXJuZWwgaXMgbm90
IGFibGUgdG8gYWxsb2NhdGUgbWVtb3J5Lgo+PiBbICAgIDAuMDAwMDAwXSBjYW5ub3QgYWxsb2Nh
dGUgY3Jhc2hrZXJuZWwgKHNpemU6MHgxMDAwMDAwMDApCj4+IFsgICAgMC4wMDAwMDBdIEtlcm5l
bCBjb21tYW5kIGxpbmU6Cj4+IEJPT1RfSU1BR0U9L2Jvb3Qvdm1saW51ei01LjYuMC1yYzQrCj4+
IHJvb3Q9VVVJRD04NjZiOGRmMy0xNGY0LTRlMTEtOTVhMS03NGE5MGVlOWI2OTQgcm8gY3Jhc2hr
ZXJuZWw9NEcKPj4gY3Jhc2hrZXJuZWw9MjUwTSxsb3cgbm93YXRjaGRvZwo+PiBbICAgMjkuMzMy
MDgxXSAgICAgY3Jhc2hrZXJuZWw9MjUwTSxsb3cKPj4gCj4+IGRvZXMgY3Jhc2hrZXJuZWw9WEBZ
IG1hbmRhdG9yeSB0byBnZXQgYWxsb2NhdGVkIGJleW9uZCA0Rz8KPj4gYW0gSSBtaXNzaW5nIHNv
bWV0aGluZz8KPiAKCiAgIGNyYXNoa2VybmVsPTRHCgogICBZb3UgbmVlZCB0byBsb29rIGF0IHRo
ZSBtZW1vcnkgbWFwIG9uIG5vZGUgMCAgZnJvbSBkbWVzZyAgICAgKCBvciAvcHJvYy9pb21lbSAp
IHRvIGRldGVybWluZSBpZiB0aGVyZSBpcyBhbnkgbWVtb3J5IGluIHRoYXQgcmFuZ2UgIC0gMHgx
MDAwMDAwMDAgPT0gMXN0IGJ5dGUgYWJvdmUgNEcgLgoKT24gdGhlIEFybSBzZXJ2ZXIgY2xhc3Mg
bWFjaGluZXMgIEnigJl2ZSBzZWVuIHRoZSAxc3QgdXNhYmxlIG1lbW9yeSByYW5nZSBhYm92ZSA0
RyBpcyAzMkcgYXJlYS4gSXQgaXMgcGxhdGZvcm0gZGVwZW5kZW50IHdoZXJlIHRoZSAxc3QgcmFu
Z2UgaXMuIAoKPiBJIGNhbid0IHJlcHJvZHVjZSB0aGUgcHJvYmxlbSBpbiBteSBlbnZpcm9ubWVu
dCwgY2FuIHlvdSB0ZXN0IHdpdGggb3RoZXIgc2l6ZSwKPiBzdWNoIGFzICJjcmFzaGtlcm5lbD0x
RyBjcmFzaGtlcm5lbD0yNTBNLGxvdyIsIHNlZSBpZiB0aGVyZSBpcyB0aGUgc2FtZSBpc3N1ZS4K
PiAKPiBCZXNpZGVzLCBjcmFzaGtlcm5lbD1YQFkgaXNuJ3QgbWFuZGF0b3J5IHRvIGdldCBhbGxv
Y2F0ZWQgYmV5b25kIDRHLAo+IGNhbiB5b3Ugc2hvdyB0aGUgd2hvbGUgZmlsZSAvcHJvYy9pb21l
bS4KPiAKPiBUaGFua3MsCj4gQ2hlbiBaaG91Cj4gCj4+IAo+PiAtLXBrCj4+IAo+PiAuCj4+IAo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
a2V4ZWMgbWFpbGluZyBsaXN0Cj4ga2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHBzOi8v
dXJsZGVmZW5zZS5jb20vdjMvX19odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2tleGVjX187ISFHcWl2UFZhN0JyaW8hT0RtQVduZzRGOEgzOVBqdkEtOHEtWTl5T0NR
TjhwbFBNOTVYZUpzclhMTXdia0ZDWjVyM05QQnIwZHVZMFJrdV9NQ2UkCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
