Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E255ADD83
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 18:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcS6X7xNVb3o/cigMSlVuA3dbBBpi1EJJdICzlB0NmQ=; b=dIR7XWMN1U889n
	r/uyvamIBOiSLKfbtk0CXAl8FyUbbfocDE/rNeS7YOQ9EjkPrArn0Bg4xPyXm2CWzDoSJBO1D4z1e
	09nGrxx/QIigyBHNDIiZ3xLI20tTXI1UFSElGRWmTC4dZCROPNSCksU/OdDOfls+ZHY8ecDRvhvLl
	MwHyuDuSSedFB73ih3/X47OfwZVDup6CokVjqlJF7K/g9t0SLQ+gSKcJDX0nVG3HfNlq6uCh3iRog
	Mdrj3isHB9+SI4ESgtWCzafd/m2s7RpQY5Ek35ZReKbmDEdTGS788spogvMM2DyCUn8NY1P/3eqM0
	crzsMHfo6FP3HMOoR2uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7MtT-00057u-P2; Mon, 09 Sep 2019 16:51:59 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7MtA-00056v-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 16:51:42 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x89GkILt112470
 for <linux-arm-kernel@lists.infradead.org>; Mon, 9 Sep 2019 12:51:37 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2uwrrpnj1v-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 09 Sep 2019 12:51:37 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <gerald.schaefer@de.ibm.com>; 
 Mon, 9 Sep 2019 17:51:35 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 9 Sep 2019 17:51:24 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x89GoxbI41157048
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 9 Sep 2019 16:50:59 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 85A0311C050;
 Mon,  9 Sep 2019 16:51:23 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 387CA11C04C;
 Mon,  9 Sep 2019 16:51:22 +0000 (GMT)
Received: from thinkpad (unknown [9.152.212.222])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon,  9 Sep 2019 16:51:22 +0000 (GMT)
Date: Mon, 9 Sep 2019 18:51:21 +0200
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
In-Reply-To: <3d5de35f-8192-1c75-50a9-03e66e3b8e5c@arm.com>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904221618.1b624a98@thinkpad>
 <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
 <20190905190629.523bdb87@thinkpad>
 <3c609e33-afbb-ffaf-481a-6d225a06d1d0@arm.com>
 <20190906210346.5ecbff01@thinkpad>
 <3d5de35f-8192-1c75-50a9-03e66e3b8e5c@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19090916-0020-0000-0000-00000369E0CB
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19090916-0021-0000-0000-000021BF62C6
Message-Id: <20190909185121.6271e9be@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-09_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909090170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_095140_619943_247D11FC 
X-CRM114-Status: GOOD (  35.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCA5IFNlcCAyMDE5IDExOjU2OjUwICswNTMwCkFuc2h1bWFuIEtoYW5kdWFsIDxhbnNo
dW1hbi5raGFuZHVhbEBhcm0uY29tPiB3cm90ZToKClsuLl0KPiA+IAo+ID4gSG1tLCBJIHNpbXBs
eSB1c2VkIHRoaXMgb24gbXkgc3lzdGVtIHRvIG1ha2UgcHVkX2NsZWFyX3Rlc3RzKCkgd29yaywg
bm90Cj4gPiBzdXJlIGlmIGl0IHdvcmtzIG9uIGFsbCBhcmNoczoKPiA+IAo+ID4gcHVkX3ZhbCgq
cHVkcCkgfD0gUkFORE9NX05aVkFMVUU7ICAKPiAKPiBXaGljaCBjb21waWxlcyBvbiBhcm02NCBi
dXQgdGhlbiBmYWlscyBvbiB4ODYgYmVjYXVzZSBvZiB0aGUgd2F5IHBtZF92YWwoKQo+IGhhcyBi
ZWVuIGRlZmluZWQgdGhlcmUuIG9uIGFybTY0IGFuZCBzMzkwICh3aXRoIG1hbnkgb3RoZXJzKSBw
bWRfdmFsKCkgaXMKPiBhIG1hY3JvIHdoaWNoIHN0aWxsIGdvdCB0aGUgdmFyaWFibGUgdGhhdCBj
YW4gYmUgdXNlZCBhcyBsdmFsdWUgYnV0IHRoYXQgaXMKPiBub3QgdHJ1ZSBmb3Igc29tZSBvdGhl
ciBwbGF0Zm9ybXMgbGlrZSB4ODYuCj4gCj4gYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxl
LXR5cGVzLmg6CSNkZWZpbmUgcG1kX3ZhbCh4KQkoKHgpLnBtZCkKPiBhcmNoL3MzOTAvaW5jbHVk
ZS9hc20vcGFnZS5oOgkJI2RlZmluZSBwbWRfdmFsKHgpCSgoeCkucG1kKQo+IGFyY2gveDg2L2lu
Y2x1ZGUvYXNtL3BndGFibGUuaDoJCSNkZWZpbmUgcG1kX3ZhbCh4KSAgICAgICBuYXRpdmVfcG1k
X3ZhbCh4KQo+IAo+IHN0YXRpYyBpbmxpbmUgcG1kdmFsX3QgbmF0aXZlX3BtZF92YWwocG1kX3Qg
cG1kKQo+IHsKPiAgICAgICAgIHJldHVybiBwbWQucG1kOwo+IH0KPiAKPiBVbmxlc3MgSSBhbSBt
aXN0YWtlbiwgdGhlIHJldHVybiB2YWx1ZSBmcm9tIHRoaXMgZnVuY3Rpb24gY2FuIG5vdCBiZSB1
c2VkIGFzCj4gbHZhbHVlIGZvciBmdXR1cmUgYXNzaWdubWVudHMuCj4gCj4gbW0vYXJjaF9wZ3Rh
YmxlX3Rlc3QuYzogSW4gZnVuY3Rpb24g4oCYcHVkX2NsZWFyX3Rlc3Rz4oCZOgo+IG1tL2FyY2hf
cGd0YWJsZV90ZXN0LmM6MTU2OjE3OiBlcnJvcjogbHZhbHVlIHJlcXVpcmVkIGFzIGxlZnQgb3Bl
cmFuZCBvZiBhc3NpZ25tZW50Cj4gICBwdWRfdmFsKCpwdWRwKSB8PSBSQU5ET01fT1JWQUxVRTsK
PiAgICAgICAgICAgICAgICAgIF5+Cj4gQUZBSUNTIHB4eF92YWwoKSB3ZXJlIG5ldmVyIGludGVu
ZGVkIHRvIGJlIHVzZWQgYXMgbHZhbHVlIGFuZCB1c2luZyBpdCB0aGF0IHdheQo+IG1pZ2h0IGp1
c3QgaGFwcGVuIHRvIHdvcmsgb24gYWxsIHRob3NlIHBsYXRmb3JtcyB3aGljaCBkZWZpbmUgdGhl
bSBhcyBtYWNyb3MuCj4gVGhleSBtZWFudCB0byBqdXN0IHByb3ZpZGUgdmFsdWVzIGZvciBhbiBl
bnRyeSBhcyBiZWluZyBkZXRlcm1pbmVkIGJ5IHRoZSBwbGF0Zm9ybS4KPiAKPiBJbiBwcmluY2lw
bGUgcHh4X3ZhbCgpIG9uIGFuIGVudHJ5IHdhcyBub3Qgc3VwcG9zZWQgdG8gYmUgbW9kaWZpZWQg
ZGlyZWN0bHkgZnJvbQo+IGdlbmVyaWMgY29kZSB3aXRob3V0IGdvaW5nIHRocm91Z2ggKGFnYWlu
KSBwbGF0Zm9ybSBoZWxwZXJzIGZvciBhbnkgc3BlY2lmaWMgc3RhdGUKPiBjaGFuZ2UgKHdyaXRl
LCBvbGQsIGRpcnR5LCBzcGVjaWFsLCBodWdlIGV0YykuIFRoZSBjdXJyZW50IHVzZSBjYXNlIGlz
IGEgZGV2aWF0aW9uCj4gZm9yIHRoYXQuCj4gCj4gSSBvcmlnaW5hbGx5IHdlbnQgd2l0aCBtZW1z
ZXQoKSBqdXN0IHRvIGxvYWQgdXAgdGhlIGVudHJpZXMgd2l0aCBub24temVybyB2YWx1ZSBzbwo+
IHRoYXQgd2Uga25vdyBweHhfY2xlYXIoKSBhcmUgcmVhbGx5IGRvaW5nIHRoZSBjbGVhcmluZy4g
VGhlIHNhbWUgaXMgYmVpbmcgZm9sbG93ZWQKPiBmb3IgYWxsIHB4eF9zYW1lKCkgY2hlY2tzLgo+
IAo+IEFub3RoZXIgd2F5IGZvciBmaXhpbmcgdGhlIHByb2JsZW0gd291bGQgYmUgdG8gbWFyayB0
aGVtIHdpdGgga25vd24gYXR0cmlidXRlcwo+IGxpa2Ugd3JpdGUveW91bmcvaHVnZSBldGMgaW5z
dGVhZCB3aGljaCBmb3Igc3VyZSB3aWxsIGNyZWF0ZSBub24temVybyBlbnRyaWVzLgo+IFdlIGNh
biBkbyB0aGF0IGZvciBweHhfY2xlYXIoKSBhbmQgcHh4X3NhbWUoKSB0ZXN0cyBhbmQgZHJvcCBS
QU5ET01fTlpWQUxVRQo+IGNvbXBsZXRlbHkuIERvZXMgdGhhdCBzb3VuZCBnb29kID8KClVtbSwg
bm90IHJlYWxseS4gVGhvc2UgbWt3cml0ZS95b3VuZy9odWdlIGV0Yy4gaGVscGVycyBkbyBvbmx5
IGV4aXN0IGZvcgpwYWdlIHRhYmxlIGxldmVscyB3aGVyZSB3ZSBjYW4gYWxzbyBoYXZlIGxhcmdl
IG1hcHBpbmdzLCBhdCBsZWFzdCBvbiBzMzkwLgpBbHNvLCB3ZSBkbyAob24gczM5MCkgYWdhaW4g
Y2hlY2sgZm9yIGNlcnRhaW4gc2FuaXR5IGJlZm9yZSBhY3R1YWxseSBzZXR0aW5nCnRoZSBiaXRz
LgpHb29kIG5ld3MgaXMgdGhhdCBhdCBsZWFzdCBmb3IgdGhlIHB4eF9zYW1lKCkgY2hlY2tzIHRo
ZSBtZW1zZXQoKSBpcyBubwpwcm9ibGVtLCBiZWNhdXNlIHB4eF9zYW1lKCkgZG9lcyBub3QgZG8g
YW55IGNoZWNrcyBvdGhlciB0aGFuIHRoZSBzYW1lIGNoZWNrLgoKRm9yIHRoZSBweHhfY2xlYXJf
dGVzdHMoKSwgbWF5YmUgaXQgY291bGQgYmUgYW4gb3B0aW9uIHRvIHB1dCB0aGVtIGJlaGluZCB0
aGUKcHh4X3BvcHVsYXRlX3Rlc3RzKCksIGFuZCByZWx5IG9uIHRoZW0gaGF2aW5nIHByb3Blcmx5
IHBvcHVsYXRlZCAobm9uLWNsZWFyKQp2YWx1ZXMgYWZ0ZXIgdGhhdD8KClsuLi5dCj4gPiAKPiA+
IEFjdHVhbGx5LCB1c2luZyBnZXRfdW5tYXBwZWRfYXJlYSgpIGFzIHN1Z2dlc3RlZCBieSBLaXJp
bGwgY291bGQgYWxzbwo+ID4gc29sdmUgdGhpcyBpc3N1ZS4gV2UgZG8gY3JlYXRlIGEgbmV3IG1t
IHdpdGggMy1sZXZlbCBwYWdlIHRhYmxlcyBvbiBzMzkwLAo+ID4gYW5kIHRoZSBkeW5hbWljIHVw
Z3JhZGUgdG8gNCBvciA1IGxldmVscyBpcyB0aGVuIHRyaWdnZXJlZCBleGFjdGx5IGJ5Cj4gPiBh
cmNoX2dldF91bm1hcHBlZF9hcmVhKCksIGRlcGVuZGluZyBvbiB0aGUgYWRkci4gQnV0IEkgY3Vy
cmVudGx5IGRvbid0Cj4gPiBzZWUgaG93IC8gd2hlcmUgYXJjaF9nZXRfdW5tYXBwZWRfYXJlYSgp
IGlzIHNldCB1cCBmb3Igc3VjaCBhIGR1bW15IG1tCj4gPiBjcmVhdGVkIGJ5IG1tX2FsbG9jKCku
ICAKPiAKPiBOb3JtYWxseSB0aGV5IGFyZSBzZXQgZHVyaW5nIHByb2dyYW0gbG9hZGluZyBidXQg
d2UgY2FuIHNldCBpdCB1cCBleHBsaWNpdGx5Cj4gZm9yIHRoZSB0ZXN0IG1tX3N0cnVjdCBpZiB3
ZSBuZWVkIHRvIGJ1dCB0aGVyZSBhcmUgc29tZSBvdGhlciBjaGFsbGVuZ2VzLgo+IAo+IGxvYWRf
W2FvdXR8ZWxmfGZsYXR8Li5dX2JpbmFyeSgpCj4gCXNldHVwX25ld19leGVjKCkKPiAJCWFyY2hf
cGlja19tbWFwX2xheW91dCgpLgo+IAo+IEkgZGlkIHNvbWUgaW5pdGlhbCBleHBlcmltZW50cyBh
cm91bmQgZ2V0X3VubWFwcGVkX2FyZWEoKS4gU2VlbXMgYml0IHRyaWNreQo+IHRvIGdldCBpdCB3
b3JraW5nIG9uIGEgcHVyZSAndGVzdCcgbW1fc3RydWN0LiBJdCBleHBlY3RzIGEgcmVhbCB1c2Vy
IGNvbnRleHQKPiBpbiB0aGUgZm9ybSBvZiBjdXJyZW50LT5tbS4KClllcywgdGhhdCdzIHdoZXJl
IEkgc3RvcHBlZCBiZWNhdXNlIGl0IGxvb2tlZCByYXRoZXIgY29tcGxpY2F0ZWQgOi0pCk5vdCBz
dXJlIHdoeSBLaXJpbGwgc3VnZ2VzdGVkIGl0IGluaXRpYWxseSwgYnV0IGlmIHVzaW5nIGdldF91
bm1hcHBlZF9hcmVhKCkKd291bGQgb25seSBiZSBuZWNlc3NhcnkgdG8gZ2V0IHByb3Blcmx5IGlu
aXRpYWxpemVkIHBhZ2UgdGFibGUgbGV2ZWxzCm9uIHMzOTAsIHlvdSBjb3VsZCBhbHNvIGRlZmVy
IHRoaXMgdG8gYSBsYXRlciBhZGQtb24gcGF0Y2guCgpSZWdhcmRzLApHZXJhbGQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
