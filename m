Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59522E5277
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UuGtTaVC1PYzutwAHyhR2Xf9h5t0RmAtsQSBgD3KcU=; b=YOW9qQM/XCN44n
	oxDweG4i4sYQ19/37eh7AdfGfk601kdBoPH67UUz7asauJAKz2GArIMNViXwiOFi4nP3ylEBCNLUy
	BfbXzZVS4GvHOephqJ6NqEyvFSw0xIlArDoKDzcA7pcj4yxGmelvQmeqv3VvwTenYUIkz6c10yBxK
	LwNjsbla2MzCbT50SE18GrrYRRGGZoVgc2ht7FEJti72TsV0nm5xk/zUuMrtFLosL091x6QFbZce2
	Rel30wR6GA7xM8xTj24dbz1LM9zjlxE5ZrT0z0d3ZMCUCb0n0PLJQsdb2TLmOSpNQ65RRV5twEs5F
	fj5RUqDWCepG6DtY+xBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3ZU-0003xM-NO; Fri, 25 Oct 2019 17:40:20 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3Z8-0003vM-KK
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:40:00 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9PHao05115458
 for <linux-arm-kernel@lists.infradead.org>; Fri, 25 Oct 2019 13:39:54 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vv42u37b6-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 25 Oct 2019 13:39:54 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <zohar@linux.ibm.com>;
 Fri, 25 Oct 2019 18:39:51 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 25 Oct 2019 18:39:46 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x9PHdj5W21102994
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Oct 2019 17:39:45 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9B407AE045;
 Fri, 25 Oct 2019 17:39:45 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D8A1AAE053;
 Fri, 25 Oct 2019 17:39:43 +0000 (GMT)
Received: from dhcp-9-31-103-196.watson.ibm.com (unknown [9.31.103.196])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 25 Oct 2019 17:39:43 +0000 (GMT)
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
From: Mimi Zohar <zohar@linux.ibm.com>
To: James Morse <james.morse@arm.com>
Date: Fri, 25 Oct 2019 13:39:43 -0400
In-Reply-To: <3879883b-8c27-df25-ce20-97ed7274dc80@arm.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
 <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
 <1571190256.5250.200.camel@linux.ibm.com>
 <3879883b-8c27-df25-ce20-97ed7274dc80@arm.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19102517-0020-0000-0000-0000037EA105
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19102517-0021-0000-0000-000021D4EF22
Message-Id: <1572025183.4532.34.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-25_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910250161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_103958_672573_BC2CCCD2 
X-CRM114-Status: GOOD (  33.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 ard.biesheuvel@linaro.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, prsriva <prsriva@linux.microsoft.com>,
 takahiro.akashi@linaro.org, duwe@lst.de,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>, allison@lohutok.net,
 linux-integrity@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTEwLTI1IGF0IDE4OjA3ICswMTAwLCBKYW1lcyBNb3JzZSB3cm90ZToKPiBI
aSBNaW1pLAo+IAo+IE9uIDE2LzEwLzIwMTkgMDI6NDQsIE1pbWkgWm9oYXIgd3JvdGU6Cj4gPiBP
biBUdWUsIDIwMTktMTAtMTUgYXQgMTg6MzkgKzAxMDAsIEphbWVzIE1vcnNlIHdyb3RlOgo+ID4+
IElmIFNlY3VyZUJvb3QgaXNuJ3QgcmVsZXZhbnQsIEknbSBjb25mdXNlZCBhcyB0byB3aHkga2V4
ZWNfZmlsZV9sb2FkKCkgaXMuCj4gPj4KPiA+PiBJIHRob3VnaHQga2V4ZWNfZmlsZV9sb2FkKCkg
b25seSBleGlzdGVkIGJlY2F1c2UgU2VjdXJlQm9vdCBzeXN0ZW1zIG5lZWQgdG8gdmFsaWRhdGUg
dGhlCj4gPj4gbmV3IE9TIGltYWdlcydzIHNpZ25hdHVyZSBiZWZvcmUgbG9hZGluZyBpdCwgYW5k
IHdlIGNhbid0IHRydXN0IHVzZXItc3BhY2UgY2FsbGluZyBLZXhlYwo+ID4+IHRvIGRvIHRoaXMu
Cj4gPj4KPiA+PiBJZiB0aGVyZSBpcyBubyBzZWN1cmUgYm9vdCwgd2h5IGRvZXMgdGhpcyB0aGlu
ZyBvbmx5IHdvcmsgd2l0aCBrZXhlY19maWxlX2xvYWQoKT8KPiA+PiAoZ29vZCBuZXdzISBXaXRo
IHRoZSBVRUZJIG1lbXJlc2V2ZSB0YWJsZSwgaXQgc2hvdWxkIHdvcmsgdHJhbnNwYXJlbnRseSB3
aXRoIHJlZ3VsYXIga2V4ZWMKPiA+PiB0b28pCj4gCj4gPiBJJ20gc28gc29ycnkgZm9yIHRoZSBj
b25mdXNpb24uIMKgSU1BIHdhcyBvcmlnaW5hbGx5IGxpbWl0ZWQgdG8KPiA+IGV4dGVuZGluZyB0
cnVzdGVkIGJvb3QgY29uY2VwdHMgdG8gdGhlIE9TLiDCoEFzIG9mIExpbnV4IDMuMTAsIElNQQo+
ID4gYWRkZWQgc3VwcG9ydCBmb3IgZXh0ZW5kaW5nIHNlY3VyZSBib290IGNvbmNlcHRzIGFuZCBh
dWRpdGluZyBmaWxlCj4gPiBoYXNoZXMgKGNvbW1pdCBlN2M1NjhlMGZkMGNmKS4KPiA+IAo+ID4g
VHJ1ZSwga2V4ZWNfZmlsZV9sb2FkIGlzIHJlcXVpcmVkIGZvciB2ZXJpZnlpbmcgdGhlIGtleGVj
IGtlcm5lbAo+ID4gaW1hZ2UsIGJ1dCBpdCBpcyBhbHNvIHJlcXVpcmVkIGZvciBtZWFzdXJpbmcg
dGhlIGtleGVjIGtlcm5lbCBpbWFnZSBhcwo+ID4gd2VsbC4KPiA+IAo+ID4gQWZ0ZXIgcmVhZGlu
ZyB0aGUga2VybmVsIGltYWdlIGludG8gbWVtb3J5IChrZXJuZWxfcmVhZF9maWxlX2Zyb21fZmQp
LAo+ID4gdGhlIGhhc2ggaXMgY2FsY3VsYXRlZCBhbmQgdGhlbiBhZGRlZCB0byB0aGUgSU1BIG1l
YXN1cmVtZW50IGxpc3QgYW5kCj4gPiB1c2VkIHRvIGV4dGVuZCB0aGUgVFBNLiDCoEFsbCBvZiB0
aGlzIGlzIGJhc2VkIG9uIHRoZSBJTUEgcG9saWN5LAo+ID4gaW5jbHVkaW5nIHRoZSBUUE0gUENS
Lgo+IAo+IERvbid0IHdlIGdldCBhIHNldCBvZiBzZWdtZW50cyB3aXRoIHRoZSByZWd1bGFyIGtl
eGVjIHN5c2NhbGw/IFRoZXNlIGNvdWxkIGVxdWFsbHkgYmUKPiBoYXNoZWQgYW5kIG1lYXN1cmVk
LCBhbmQgbG9nZ2VkIHZpYSBJTUEgYW5kL29yIGV4dGVuZGluZyB0aGUgVFBNcyBtZWFzdXJlbWVu
dHMuCgpJTUEgd29ya3MgYXQgdGhlIGZpbGUgbGV2ZWwuIMKgSSdtIG5vdCBzdXJlIHdoYXQgaXQg
d291bGQgbWVhbiB0bwptZWFzdXJlICJzZWdtZW50cyIuCgpPcmlnaW5hbGx5LCBrZXhlY19maWxl
X2xvYWQgcmVhZCB0aGUgS0VYRUMga2VybmVsIGltYWdlIHR3aWNlLCBvbmNlIHRvCmNhbGN1bGF0
ZSB0aGUgZmlsZSBoYXNoLCBhbmQgYWdhaW4gdG8gdmVyaWZ5IHRoZSBzaWduYXR1cmUuIMKgTm93
CmtleGVjX2ZpbGVfbG9hZCBjYWxscyBrZXJuZWxfcmVhZF9maWxlX2Zyb21fZmQsIHdoaWNoIHJl
YWRzIHRoZSBmaWxlCmludG8gbWVtb3J5LCBiZWZvcmUgSU1BIGNhbGN1bGF0ZXMgdGhlIGZpbGUg
YnVmZmVyIGhhc2guCgo+IAo+IChvYnZpb3VzbHkgdGhpcyB3b3VsZCBpbmNsdWRlIHRoZSBjb21t
YW5kLWxpbmUgYW5kIG1heWJlIHB1cmdhdG9yeSwgd2hpY2ggbWFrZXMgaXQgbGVzcwo+IHByZWRp
Y3RhYmxlLCBidXQgdGhlc2UgYXJlIHN0aWxsIHRoZSBiaW5hcnkgYmxvYnMgdGhhdCB3ZXJlIGdp
dmVuIHByaXZpbGVnZWQgYWNjZXNzIHRvIHRoZQo+IHN5c3RlbSkuCj4gCj4gCj4gPj4+IEkgYW0g
bm90IHN1cmUgaWYgaSBhZGRyZXNzZWQgYWxsIHlvdXIgY29uY2VybnMsIHBsZWFzZSBsZXQgbWUg
a25vdwo+ID4+PiBpZiBpIG1pc3NlZCBhbnl0aGluZy4gVG8gbWUgbW9zdCBjb25jZXJucyBsb29r
IHRvIGJlIHRvd2FyZHMgdGhlIGtleGVjIGNhc2UgYW5kIGRlcGVuZGVuY3kKPiA+Pj4gb24gaGFy
ZHdhcmUoQUNQSS9UUE0pIGR1cmluZyBib290IGFuZCBlYXJseSBib290IHNlcnZpY2VzLCB3aGVy
ZSBhcyBjYXJyeWluZyB0aGUgbG9ncyBpcwo+ID4+PiBvbmx5IGR1cmluZyB0aGUga2V4ZWNfZmls
ZV9sb2FkIHN5cyBjYWxsIGFuZCBkb2VzIG5vdCBpbnRlcmZlcmUgd2l0aCB0aGF0IGNvZGUgcGF0
aC4KPiA+Pj4gSU1BIGRvY3VtZW50YXRpb246IGh0dHBzOi8vc291cmNlZm9yZ2UubmV0L3AvbGlu
dXgtaW1hL3dpa2kvSG9tZS8KPiA+Pgo+ID4+IFN1cHBvcnRpbmcgQUNQSSBpbiB0aGUgc2FtZSB3
YXkgaXMgc29tZXRoaW5nIHdlIG5lZWQgdG8gZG8gZnJvbSBkYXkgb25lLiBrZXhlY19maWxlX2xv
YWQoKQo+ID4+IGFscmVhZHkgZG9lcyB0aGlzLiBJJ20gbm90IHN1cmUgIm9ubHkga2V4ZWNfZmls
ZV9sb2FkKCkiIGlzIGEganVzdGlmaWFibGUgcmVzdHJpY3Rpb24uLi4KPiAKPiA+IFRoZSBUUE0g
UENScyBhcmUgbm90IHJlc2V0IG9uIGEgc29mdCByZWJvb3QuIMKgQXMgYSByZXN1bHQsIGluIG9y
ZGVyIHRvCj4gPiB2YWxpZGF0ZSB0aGUgSU1BIG1lYXN1cmVtZW50IGxpc3QgYWdhaW5zdCB0aGUg
VFBNIFBDUnMsIHRoZSBJTUEKPiA+IG1lYXN1cmVtZW50IGxpc3QgaXMgc2F2ZWQgb24ga2V4ZWMg
bG9hZCwgcmVzdG9yZWQgb24gYm9vdCwgYW5kIHRoZW4KPiA+IHRoZSBtZW1vcnkgYWxsb2NhdGVk
IGZvciBjYXJyeWluZyB0aGUgbWVhc3VyZW1lbnQgbGlzdCBhY3Jvc3Mga2V4ZWMgaXMKPiA+IGZy
ZWVkLgo+IAo+IEhtbSwgdGhpcyBpcyB3aHkgdGhlIHJlc2VydmVkIG1lbW9yeSBnZXRzIGZyZWVk
LgoKWWVzCj4gCj4gV2hhdCBoYXBwZW5zIHRvIHN0dWZmIHRoYXQgaGFwcGVucyBiZXR3ZWVuIGtl
eGVjLWxvYWQgYW5kIGJvb3Q/Cj4gVGhlcmUgaXMgYSBjb21tZW50Ogo+IHwgLyogc2VnbWVudCBz
aXplIGNhbid0IGNoYW5nZSBiZXR3ZWVuIGtleGVjIGxvYWQgYW5kIGV4ZWN1dGUgKi8KClJpZ2h0
LCB0aGUgb3JpZ2luYWwgdmVyc2lvbiBhZGRyZXNzZWQgdGhpcywgYnV0IHdhcyBuaXhlZCBieSBF
cmljLApzYXlpbmcgaXQgd2FzIHVubmVjZXNzYXJ5LiDCoFRoZSBjdXJyZW50IHZlcnNpb24gYWxs
b2NhdGVzIG1vcmUgbWVtb3J5CnRoYW4gbmVlZGVkIHRvIGhvcGVmdWxseSBjb21wZW5zYXRlLsKg
Cgo+IAo+IEJ1dCBJIGNhbid0IHNlZSBhbnl3aGVyZSB0aGF0IGVuZm9yY2VzIHRoYXQuIEkgZ3Vl
c3MgdGhvc2UgbWVhc3VyZW1lbnRzIHdpbGwgZ28gbWlzc2luZywKPiBhbmQgdGhlIFRQTSB2YWx1
ZSB3aWxsIG5vdCBtYXRjaCBhZnRlciBrZXhlYy4KCk5vLCB0aGUga2V4ZWMgbG9hZCB3aWxsIHN1
Y2NlZWQsIGJ1dCBpZiB0aGVyZSBpc24ndCBlbm91Z2ggbWVtb3J5IHRvCnN0b3JlIHRoZSBtZWFz
dXJlbWVudCBsaXN0LCB0aGUgZXhlYyBzaG91bGQgZmFpbC4KCk1pbWkKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
