Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EAE1099B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 16:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LONlzScb9IypvvqKcIySLFTHOhBdVZiPv7ngDFmmH14=; b=MlVk44Uv3ZElIL
	pj8XO79LABcwpRs7Qchlfd5pR3VTYAeST8EhWPz0RrHa+MuQC78QM3KLc9EyUTer4nXWraRTtrWCa
	kiIAuQA5BpSHeZlmMKdSTGmU7mUGKOg1+dH362MLuOFwbcycLYo2SN+h/HDyapTiYnNy8lfnRliyW
	jfVyi5AJjZM+ICniFRWTKSEiPVQQdjswiyv4Z2kP9LYia3KTxSD6wVLvjpL0X55gCC+f2ooBypX/Y
	128WWTCGc8vi1YoEyFuqMXfp1tv3e45unfSJnqBCWOPB2Dz5EyGNbS0FD7VDkxABUjnDkDRssnwGa
	7vJRO+7MXSU7fkM7uQSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqYY-0005Pr-AU; Wed, 01 May 2019 14:49:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqYR-0005PW-7K
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 14:49:52 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6AA7EC024915;
 Wed,  1 May 2019 14:49:49 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-85.bos.redhat.com [10.18.17.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E30A710021B4;
 Wed,  1 May 2019 14:49:44 +0000 (UTC)
Subject: Re: [RFC PATCH v9 03/13] mm: Add support for eXclusive Page Frame
 Ownership (XPFO)
To: Khalid Aziz <khalid.aziz@oracle.com>, Ingo Molnar <mingo@kernel.org>
References: <cover.1554248001.git.khalid.aziz@oracle.com>
 <f1ac3700970365fb979533294774af0b0dd84b3b.1554248002.git.khalid.aziz@oracle.com>
 <20190417161042.GA43453@gmail.com>
 <e16c1d73-d361-d9c7-5b8e-c495318c2509@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <35c4635e-8214-7dde-b4ec-4cb266b2ea10@redhat.com>
Date: Wed, 1 May 2019 10:49:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e16c1d73-d361-d9c7-5b8e-c495318c2509@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Wed, 01 May 2019 14:49:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074951_282363_A8C22334 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Dave Hansen <dave@sr71.net>, linux-doc@vger.kernel.org, linux-mm@kvack.org,
 deepa.srinivasan@oracle.com, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, tycho@tycho.ws, x86@kernel.org,
 iommu@lists.linux-foundation.org, jsteckli@amazon.de,
 Arjan van de Ven <arjan@infradead.org>,
 Peter Zijlstra <a.p.zijlstra@chello.nl>, konrad.wilk@oracle.com,
 jcm@redhat.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 boris.ostrovsky@oracle.com, chris.hyser@oracle.com,
 linux-arm-kernel@lists.infradead.org, Khalid Aziz <khalid@gonehiking.org>,
 juergh@gmail.com, andrew.cooper3@citrix.com, linux-kernel@vger.kernel.org,
 tyhicks@canonical.com, linux-security-module@vger.kernel.org,
 Juerg Haefliger <juerg.haefliger@canonical.com>, keescook@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, dwmw@amazon.co.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMDMsIDIwMTkgYXQgMTE6MzQ6MDRBTSAtMDYwMCwgS2hhbGlkIEF6aXogd3Jv
dGU6Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFt
ZXRlcnMudHh0CmIvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50
eHQKCj4gaW5kZXggODU4YjZjMGI5YTE1Li45YjM2ZGE5NDc2MGUgMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4dAo+IEBAIC0yOTk3LDYg
KzI5OTcsMTIgQEAKPgo+wqDCoMKgwqDCoCBub3gyYXBpY8KgwqDCoCBbWDg2LTY0LEFQSUNdIERv
IG5vdCBlbmFibGUgeDJBUElDIG1vZGUuCj4KPiArwqDCoMKgIG5veHBmb8KgwqDCoMKgwqDCoMKg
IFtYUEZPXSBEaXNhYmxlIGVYY2x1c2l2ZSBQYWdlIEZyYW1lIE93bmVyc2hpcCAoWFBGTykKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3aGVuIENPTkZJR19YUEZPIGlzIG9uLiBQaHlzaWNhbCBw
YWdlcyBtYXBwZWQgaW50bwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVzZXIgYXBwbGljYXRp
b25zIHdpbGwgYWxzbyBiZSBtYXBwZWQgaW4gdGhlCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
a2VybmVsJ3MgYWRkcmVzcyBzcGFjZSBhcyBpZiBDT05GSUdfWFBGTyB3YXMgbm90Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZW5hYmxlZC4KPiArCj7CoMKgwqDCoMKgIGNwdTBfaG90cGx1Z8Kg
wqDCoCBbWDg2XSBUdXJuIG9uIENQVTAgaG90cGx1ZyBmZWF0dXJlIHdoZW4KPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIENPTkZJR19CTyBPVFBBUkFNX0hPVFBMVUdfQ1BVMCBpcyBvZmYuCj7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTb21lIGZlYXR1cmVzIGRlcGVuZCBvbiBDUFUwLiBL
bm93biBkZXBlbmRlbmNpZXMgYXJlOgoKR2l2ZW4gdGhlIGJpZyBwZXJmb3JtYW5jZSBpbXBhY3Qg
dGhhdCBYUEZPIGNhbiBoYXZlLiBJdCBzaG91bGQgYmUgb2ZmIGJ5CmRlZmF1bHQgd2hlbiBjb25m
aWd1cmVkLiBJbnN0ZWFkLCB0aGUgeHBmbyBvcHRpb24gc2hvdWxkIGJlIHVzZWQgdG8KZW5hYmxl
IGl0LgoKQ2hlZXJzLApMb25nbWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
