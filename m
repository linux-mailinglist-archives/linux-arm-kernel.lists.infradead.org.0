Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60502D8594
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 03:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHZDLw+pqD1EpMflNOMJXYz5AZ4hUujVHlJlw5iOrcI=; b=U9KBWSUMHYRqyb
	FwUgCYjO2Q6O7+pWCo9CpU91PzKzKaYKPlb8rQZ8CJhdAe78GP1TFaViCIqxJE5WbZciMJyD7sVxs
	hgemH31DVdOY65CSDU5xN/vqJFcVTXp6YtjaR8XK7LsxaVLp1kv5u4H8QyVQDDmwSD5z0uQ4EZ2mr
	VtOn9M2nXmYY3CObxPfy5RVcDqJio7nqc0Ktg9+UJEFwJFFYcK+vKO9XSZaxNd4tfVI4EVyoOUJjj
	Ox8avXJ/QQQtfwofoNLDSzDO0uKCORzstPpq+HMcax5LfF0Vz1LMNSL9kApQmhonxcRB0G24eCl+f
	9SkQ07sSZQwBF9htV2Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKYMk-0000eR-SD; Wed, 16 Oct 2019 01:44:42 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKYMZ-0000dK-Fb
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 01:44:33 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9G1fghu120679
 for <linux-arm-kernel@lists.infradead.org>; Tue, 15 Oct 2019 21:44:29 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vnp3b5jhg-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 15 Oct 2019 21:44:29 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <zohar@linux.ibm.com>;
 Wed, 16 Oct 2019 02:44:26 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 16 Oct 2019 02:44:21 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x9G1iK7p60162280
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 01:44:20 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 64D9A11C052;
 Wed, 16 Oct 2019 01:44:20 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AC1D911C04C;
 Wed, 16 Oct 2019 01:44:17 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.85.156.20])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 16 Oct 2019 01:44:17 +0000 (GMT)
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
From: Mimi Zohar <zohar@linux.ibm.com>
To: James Morse <james.morse@arm.com>, prsriva <prsriva@linux.microsoft.com>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Date: Tue, 15 Oct 2019 21:44:16 -0400
In-Reply-To: <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
 <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19101601-4275-0000-0000-000003726CDA
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19101601-4276-0000-0000-00003885806B
Message-Id: <1571190256.5250.200.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-15_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910160013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_184431_525715_F650D8A2 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org, duwe@lst.de,
 bauerman@linux.ibm.com, allison@lohutok.net, linux-integrity@vger.kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpPbiBUdWUsIDIwMTktMTAtMTUgYXQgMTg6MzkgKzAxMDAsIEphbWVzIE1vcnNl
IHdyb3RlOgo+IElmIFNlY3VyZUJvb3QgaXNuJ3QgcmVsZXZhbnQsIEknbSBjb25mdXNlZCBhcyB0
byB3aHkga2V4ZWNfZmlsZV9sb2FkKCkgaXMuCj4gCj4gSSB0aG91Z2h0IGtleGVjX2ZpbGVfbG9h
ZCgpIG9ubHkgZXhpc3RlZCBiZWNhdXNlIFNlY3VyZUJvb3Qgc3lzdGVtcyBuZWVkIHRvIHZhbGlk
YXRlIHRoZQo+IG5ldyBPUyBpbWFnZXMncyBzaWduYXR1cmUgYmVmb3JlIGxvYWRpbmcgaXQsIGFu
ZCB3ZSBjYW4ndCB0cnVzdCB1c2VyLXNwYWNlIGNhbGxpbmcgS2V4ZWMKPiB0byBkbyB0aGlzLgo+
IAo+IElmIHRoZXJlIGlzIG5vIHNlY3VyZSBib290LCB3aHkgZG9lcyB0aGlzIHRoaW5nIG9ubHkg
d29yayB3aXRoIGtleGVjX2ZpbGVfbG9hZCgpPwo+IChnb29kIG5ld3MhIFdpdGggdGhlIFVFRkkg
bWVtcmVzZXZlIHRhYmxlLCBpdCBzaG91bGQgd29yayB0cmFuc3BhcmVudGx5IHdpdGggcmVndWxh
ciBrZXhlYwo+IHRvbykKCkknbSBzbyBzb3JyeSBmb3IgdGhlIGNvbmZ1c2lvbi4gwqBJTUEgd2Fz
IG9yaWdpbmFsbHkgbGltaXRlZCB0bwpleHRlbmRpbmcgdHJ1c3RlZCBib290IGNvbmNlcHRzIHRv
IHRoZSBPUy4gwqBBcyBvZiBMaW51eCAzLjEwLCBJTUEKYWRkZWQgc3VwcG9ydCBmb3IgZXh0ZW5k
aW5nIHNlY3VyZSBib290IGNvbmNlcHRzIGFuZCBhdWRpdGluZyBmaWxlCmhhc2hlcyAoY29tbWl0
IGU3YzU2OGUwZmQwY2YpLgoKVHJ1ZSwga2V4ZWNfZmlsZV9sb2FkIGlzIHJlcXVpcmVkIGZvciB2
ZXJpZnlpbmcgdGhlIGtleGVjIGtlcm5lbAppbWFnZSwgYnV0IGl0IGlzIGFsc28gcmVxdWlyZWQg
Zm9yIG1lYXN1cmluZyB0aGUga2V4ZWMga2VybmVsIGltYWdlIGFzCndlbGwuCgpBZnRlciByZWFk
aW5nIHRoZSBrZXJuZWwgaW1hZ2UgaW50byBtZW1vcnkgKGtlcm5lbF9yZWFkX2ZpbGVfZnJvbV9m
ZCksCnRoZSBoYXNoIGlzIGNhbGN1bGF0ZWQgYW5kIHRoZW4gYWRkZWQgdG8gdGhlIElNQSBtZWFz
dXJlbWVudCBsaXN0IGFuZAp1c2VkIHRvIGV4dGVuZCB0aGUgVFBNLiDCoEFsbCBvZiB0aGlzIGlz
IGJhc2VkIG9uIHRoZSBJTUEgcG9saWN5LAppbmNsdWRpbmcgdGhlIFRQTSBQQ1IuCgo+IAo+ID4g
SSBhbSBub3Qgc3VyZSBpZiBpIGFkZHJlc3NlZCBhbGwgeW91ciBjb25jZXJucywgcGxlYXNlIGxl
dCBtZSBrbm93Cj4gPiBpZiBpIG1pc3NlZCBhbnl0aGluZy4gVG8gbWUgbW9zdCBjb25jZXJucyBs
b29rIHRvIGJlIHRvd2FyZHMgdGhlIGtleGVjIGNhc2UgYW5kIGRlcGVuZGVuY3kKPiA+IG9uIGhh
cmR3YXJlKEFDUEkvVFBNKSBkdXJpbmcgYm9vdCBhbmQgZWFybHkgYm9vdCBzZXJ2aWNlcywgd2hl
cmUgYXMgY2FycnlpbmcgdGhlIGxvZ3MgaXMKPiA+IG9ubHkgZHVyaW5nIHRoZSBrZXhlY19maWxl
X2xvYWQgc3lzIGNhbGwgYW5kIGRvZXMgbm90IGludGVyZmVyZSB3aXRoIHRoYXQgY29kZSBwYXRo
Lgo+ID4gSU1BIGRvY3VtZW50YXRpb246IGh0dHBzOi8vc291cmNlZm9yZ2UubmV0L3AvbGludXgt
aW1hL3dpa2kvSG9tZS8KPiAKPiBTdXBwb3J0aW5nIEFDUEkgaW4gdGhlIHNhbWUgd2F5IGlzIHNv
bWV0aGluZyB3ZSBuZWVkIHRvIGRvIGZyb20gZGF5IG9uZS4ga2V4ZWNfZmlsZV9sb2FkKCkKPiBh
bHJlYWR5IGRvZXMgdGhpcy4gSSdtIG5vdCBzdXJlICJvbmx5IGtleGVjX2ZpbGVfbG9hZCgpIiBp
cyBhIGp1c3RpZmlhYmxlIHJlc3RyaWN0aW9uLi4uCgpUaGUgVFBNIFBDUnMgYXJlIG5vdCByZXNl
dCBvbiBhIHNvZnQgcmVib290LiDCoEFzIGEgcmVzdWx0LCBpbiBvcmRlciB0bwp2YWxpZGF0ZSB0
aGUgSU1BIG1lYXN1cmVtZW50IGxpc3QgYWdhaW5zdCB0aGUgVFBNIFBDUnMsIHRoZSBJTUEKbWVh
c3VyZW1lbnQgbGlzdCBpcyBzYXZlZCBvbiBrZXhlYyBsb2FkLCByZXN0b3JlZCBvbiBib290LCBh
bmQgdGhlbgp0aGUgbWVtb3J5IGFsbG9jYXRlZCBmb3IgY2FycnlpbmcgdGhlIG1lYXN1cmVtZW50
IGxpc3QgYWNyb3NzIGtleGVjIGlzCmZyZWVkLgoKV2hlcmUvaG93IHRvIHNhdmUgdGhlIElNQSBt
ZWFzdXJlbWVudCBsaXN0IGlzIGFyY2hpdGVjdHVyZSBkZXBlbmRlbnQuCsKgVGhpYWdvIEJhdWVy
bWFubiBpbXBsZW1lbnRlZCBhbGxvY2F0aW5nIGFuZCBmcmVlaW5nIHRoZSBtZWFzdXJlbWVudAps
aXN0IG1lbW9yeSBmb3IgUG93ZXIuCgpNaW1pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
