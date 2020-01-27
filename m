Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DF614A7BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 17:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+2Y3D5MVveBmsrJJRmczYdoEgf8afzM4O6kLXe8jbU=; b=GvpL7xWsoF7ysy
	POSXABhkCxDTMhg4yPaztAmRVHeeez+AvZstJPMxpJFthJ7y2Bb0NK2ro03h8U4wrcB8ED1yN2Ip9
	eG6KyPuyHobS0Fp5IezD3zs4LdSdQUrlSR1+11SiOmX5x2JU4id6D+ZF4C2VyJxDs9mYjcHYUDHB5
	d4h/RgHvcAexuctuVTgQw8+wkc2atabTpS99gkXkzvmSrTuZvrxFXfwGstfG7NO6K+19bcaZU4EP0
	zsnuOcQmXOnLWbgzJoLVnfGK04yjBOQvakVVZtWOPpQCD2lLbdPEtaIcdtiWOQEtVcWsJMPDFbek1
	X6Mfe8I0ACFqGO4p2OzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6qe-000661-Tr; Mon, 27 Jan 2020 16:02:49 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6qV-00065e-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 16:02:41 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00RFw33d009465;
 Mon, 27 Jan 2020 16:01:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=fQJQyN44UUauHocBYRd01tMSTWgiqH1MXpHVaQEGRs8=;
 b=SsBwwRut8ax5nfhXXsjcZEjzQI+wmh46icmI68AODoRKGwFUDgf8e4AIyQZCsWVEdBig
 ahMJYWxG+j3KqSMGLNYA3NgFFLVeNzW0P903/7UqpHJVeqZIA8jgUNTUMxi8oTkCQBZE
 Dm4cDtkZxetID+K2eq2FhwMYTfAcVj3CIMaDYh/4VLx4ORLPDaX7ZMHDAcgYUyKOGtXe
 Wt3L66cbq7XMNoVIJ2DwsRQ1FTZi/bu/GMPDjYtFCopdLw0S/AOJTBu/6VMFvZLZLOMS
 ScU9BFdkSsRk+5RiaD40ItDKgYaXTU3q7PCMbYxo3s4A8GpDVBY36ltcPg35uVeXhAex 3A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xrdmq899q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 16:01:55 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00RG133i175223;
 Mon, 27 Jan 2020 16:01:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2xry4un3pm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 16:01:54 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00RG1VeP030884;
 Mon, 27 Jan 2020 16:01:31 GMT
Received: from [10.11.111.157] (/10.11.111.157)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jan 2020 08:01:30 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <CAC4j=Y--5UQR7Oc5n+sxAwLxd_PKi0Eb-7aiZjDTUW0FTJy8Tw@mail.gmail.com>
Date: Mon, 27 Jan 2020 11:01:33 -0500
Message-Id: <25401561-CD1F-4FDC-AED5-256EBE56B9F6@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
 <4F71A184-42C0-4865-9AAA-79A636743C25@oracle.com>
 <CAC4j=Y_SMHe4WNpaaS0kK1JYfnufM+AAiwwUMBx27L8U6bD8Yg@mail.gmail.com>
 <CAC4j=Y--5UQR7Oc5n+sxAwLxd_PKi0Eb-7aiZjDTUW0FTJy8Tw@mail.gmail.com>
To: Lihao Liang <lihaoliang@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9513
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001270135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9513
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001270135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_080239_618139_A605FB73 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, longman@redhat.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIExpaGFvLgoKPj4+IAo+Pj4+IFRoaXMgaXMgcGFydGljdWxhcmx5IHJlbGV2YW50Cj4+Pj4g
aW4gaGlnaCBjb250ZW50aW9uIHNpdHVhdGlvbnMgd2hlbiBuZXcgdGhyZWFkcyBrZWVwIGFycml2
aW5nIG9uIHRoZSBzYW1lCj4+Pj4gc29ja2V0IGFzIHRoZSBsb2NrIGhvbGRlci4KPj4+IEluIHRo
aXMgY2FzZSwgdGhlIGxvY2sgd2lsbCBzdGF5IG9uIHRoZSBzYW1lIE5VTUEgbm9kZS9zb2NrZXQg
Zm9yCj4+PiAyXm51bWFfc3BpbmxvY2tfdGhyZXNob2xkIHRpbWVzLCB3aGljaCBpcyB0aGUgd29y
c3QgY2FzZSBzY2VuYXJpbyBpZiB3ZQo+Pj4gY29uc2lkZXIgdGhlIGxvbmctdGVybSBmYWlybmVz
cy4gQW5kIGlmIHdlIGhhdmUgbXVsdGlwbGUgbm9kZXMsIGl0IHdpbGwgdGFrZQo+Pj4gdXAgdG8g
Ml5udW1hX3NwaW5sb2NrX3RocmVzaG9sZCBYIChucl9ub2RlcyAtIDEpICsgbnJfY3B1c19wZXJf
bm9kZQo+Pj4gbG9jayB0cmFuc2l0aW9ucyB1bnRpbCBhbnkgZ2l2ZW4gdGhyZWFkIHdpbGwgYWNx
dWlyZSB0aGUgbG9jawo+Pj4gKGFzc3VtaW5nIDJebnVtYV9zcGlubG9ja190aHJlc2hvbGQgPiBu
cl9jcHVzX3Blcl9ub2RlKS4KPj4+IAo+PiAKPj4gWW91J3JlIHJpZ2h0IHRoYXQgdGhlIGxhdGVz
dCB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBoYW5kbGVzIGxvbmctdGVybSBmYWlybmVzcwo+PiBkZXRl
cm1pbmlzdGljYWxseS4KPj4gCj4+IEFzIEkgdW5kZXJzdGFuZCBpdCwgdGhlIG4tdGggdGhyZWFk
IGluIHRoZSBtYWluIHF1ZXVlIGlzIGd1YXJhbnRlZWQgdG8KPj4gYWNxdWlyZSB0aGUgbG9jayBh
ZnRlciBOIGxvY2sgaGFuZG92ZXJzLCB3aGVyZSBOIGlzIGJvdW5kZWQgYnkKPj4gCj4+IG4gLSAx
ICsgMl5udW1hX3NwaW5sb2NrX3RocmVzaG9sZCAqIChucl9ub2RlcyAtIDEpCj4+IAo+PiBJJ20g
bm90IHN1cmUgd2hhdCByb2xlIHRoZSB2YXJpYWJsZSBucl9jcHVzX3Blcl9ub2RlIHBsYXlzIGlu
IHlvdXIgYW5hbHlzaXMuCj4+IAo+PiBEbyBJIG1pc3MgYW55dGhpbmc/Cj4+IAo+IAo+IElmIEkg
dW5kZXJzdGFuZCBjb3JyZWN0bHksIHRoZXJlIGFyZSB0d28gcGhhc2VzIGluIHRoZSBhbGdvcml0
aG06Cj4gCj4gTUNTIHBoYXNlOiB3aGVuIHRoZSBzZWNvbmRhcnkgcXVldWUgaXMgZW1wdHksIGFz
IGV4cGxhaW5lZCBpbiB5b3VyIGVtYWlscywKPiB0aGUgYWxnb3JpdGhtIGhhbmRzIHRoZSBsb2Nr
IHRvIHRocmVhZHMgaW4gdGhlIG1haW4gcXVldWUgaW4gYW4gRklGTyBvcmRlci4KPiBXaGVuIHBy
b2JhYmx5KFNIVUZGTEVfUkVEVUNUSU9OX1BST0JfQVJHKSByZXR1cm5zIGZhbHNlICh3aXRoIGRl
ZmF1bHQKPiBwcm9iYWJpbGl0eSAxJSksIGlmIHRoZSBhbGdvcml0aG0gZmluZHMgdGhlIGZpcnN0
IHRocmVhZCBydW5uaW5nIG9uIHRoZSBzYW1lCj4gc29ja2V0IGFzIHRoZSBsb2NrIGhvbGRlciBp
biBjbmFfc2Nhbl9tYWluX3F1ZXVlKCksIGl0IGVudGVycyB0aGUgZm9sbG93aW5nCj4gQ05BIHBo
YXNlClllcC4gV2hlbiBwcm9iYWJseSgpIHJldHVybnMgZmFsc2UsIHdlIHNjYW4gdGhlIG1haW4g
cXVldWUuIElmIGFzIHRoZSByZXN1bHQgb2YKdGhpcyBzY2FuIHRoZSBzZWNvbmRhcnkgcXVldWUg
YmVjb21lcyBub3QgZW1wdHksIHdlIGVudGVyIHdoYXQgeW91IGNhbGwKdGhlIENOQSBwaGFzZS4K
Cj4gLgo+IAo+IENOQSBwaGFzZTogd2hlbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlIGlzIG5vdCBlbXB0
eSwgdGhlIGFsZ29yaXRobSBrZWVwcwo+IGhhbmRpbmcgdGhlIGxvY2sgdG8gdGhyZWFkcyBpbiB0
aGUgbWFpbiBxdWV1ZSB0aGF0IHJ1biBvbiB0aGUgc2FtZSBzb2NrZXQgYXMKPiB0aGUgbG9jayBo
b2xkZXIuIFdoZW4gMl5udW1hX3NwaW5sb2NrX3RocmVzaG9sZCBpcyByZWFjaGVkLCBpdCBzcGxp
Y2VzCj4gdGhlIHNlY29uZGFyeSBxdWV1ZSB0byB0aGUgZnJvbnQgb2YgdGhlIG1haW4gcXVldWUu
IEFuZCB3ZSBhcmUgYmFjayB0byB0aGUKPiBNQ1MgcGhhc2UgYWJvdmUuCkNvcnJlY3QuCgo+IEZv
ciB0aGUgbi10aCB0aHJlYWQgVCBpbiB0aGUgbWFpbiBxdWV1ZSwgdGhlIE1DUyBwaGFzZSBoYW5k
bGVzIHRocmVhZHMgdGhhdAo+IGFycml2ZWQgaW4gdGhlIG1haW4gcXVldWUgYmVmb3JlIFQuIElu
IGhpZ2ggY29udGVudGlvbiBzaXR1YXRpb25zLCB0aGUgQ05BCj4gcGhhc2UgaGFuZGxlcyB0d28g
a2luZHMgb2YgdGhyZWFkczoKPiAKPiAxLiBUaHJlYWRzIGFoZWFkIG9mIFQgdGhhdCBydW4gb24g
dGhlIHNhbWUgc29ja2V0IGFzIHRoZSBsb2NrIGhvbGRlciB3aGVuCj4gYSB0cmFuc2l0aW9uIGZy
b20gdGhlIE1DUyB0byBDTkEgcGhhc2Ugd2FzIG1hZGUuIEFzc3VtZSB0aGVyZSBhcmUgbSBzdWNo
Cj4gdGhyZWFkcy4KPiAKPiAyLiBUaHJlYWRzIHRoYXQga2VlcCBhcnJpdmluZyBvbiB0aGUgc2Ft
ZSBzb2NrZXQgYXMgdGhlIGxvY2sgaG9sZGVyLiBUaGVyZQo+IGFyZSBhdCBtb3N0IDJebnVtYV9z
cGlubG9ja190aHJlc2hvbGQgb2YgdGhlbS4KPiAKPiBUaGVuIHRoZSBudW1iZXIgb2YgbG9jayBo
YW5kb3ZlcnMgaW4gdGhlIENOQSBwaGFzZSBpcyBtYXgobSwKPiAyXm51bWFfc3BpbmxvY2tfdGhy
ZXNob2xkKS4gU28gdGhlIHRvdGFsIG51bWJlciBvZiBsb2NrIGhhbmRvdmVycyBiZWZvcmUgVAo+
IGFjcXVpcmVzIHRoZSBsb2NrIGlzIGF0IG1vc3QKPiAKPiBuIC0gMSArIDJebnVtYV9zcGlubG9j
a190aHJlc2hvbGQgKiAobnJfbm9kZXMgLSAxKQo+IAo+IFBsZWFzZSBsZXQgbWUga25vdyBpZiBJ
IG1pc3VuZGVyc3RhbmQgYW55dGhpbmcuCkkgdGhpbmsgeW91IGdvdCBpdCByaWdodCAobW9kdWxv
IG5yX2NwdXNfcGVyX25vZGUgaW5zdGVhZCBvZiBuLCBhcyBtZW50aW9uZWQgaW4gCm15IG90aGVy
IHJlc3BvbnNlKS4KClJlZ2FyZHMsCuKAlCBBbGV4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
