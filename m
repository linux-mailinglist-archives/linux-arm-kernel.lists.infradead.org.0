Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50AEE9A93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 12:02:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8A/bHayPO+ZZhlXsbetF/FdyYqjE951jRY0ytH3F+ZA=; b=Q+7OT2dT+0HWNi
	jd8FAW0eDniHjCYdyj64hUku4EtUaF1G09Jvho6Pu7DRXvN2KXgkSW8vQCAvADiZkr65KhosPL8+N
	hHaZLZuSoL9KtaB9lrEc4AAEGfJ55fHK8C8uxlYHUNt2BsImdLA6Z+fKogG9kCvDC2p25K33c1N5g
	34VX7HOPE3c2JDDlZgd4n6s0v8+Eru7Oj8d78wFKh6qZqL7dWkfq8/1bON7Rkcg4ySQj36k33osk5
	V2jf9DProqK4ZxySZUMwF3ldM9piT9dOCleM/2EEKuS3UmB4Vej/cVKz0C497xftxphXI0YhFrybf
	yhZNJpayMDX5kFIRo7Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlkY-0008P4-AI; Wed, 30 Oct 2019 11:02:50 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlkO-0008OW-QJ
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 11:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572433359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gqumuU4Z3i/VmT4pBhuJhoFr2lOsjq2g2xoXo7gRJjk=;
 b=PSdOlea4Cfo1tAfAub4NgQpMH+yeEjJkAZiTzKVdiWaJf03+rZoGb8AJ3W8rO63A69eKih
 eukFpSqSZdOttGyo4DWkaaX58/VnLYbLEyGSc5GfE4n84jD5VaT8cEPGisGI8Q2je1I/W+
 QX1lVhMDWtnpBsc5kbe+iQ+6czTZszY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-qo2GdfMRPEWGX0Io3MTdWA-1; Wed, 30 Oct 2019 07:02:35 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5CB4107ACC0;
 Wed, 30 Oct 2019 11:02:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AA69660870;
 Wed, 30 Oct 2019 11:02:34 +0000 (UTC)
Received: from zmail17.collab.prod.int.phx2.redhat.com
 (zmail17.collab.prod.int.phx2.redhat.com [10.5.83.19])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 65A46180880B;
 Wed, 30 Oct 2019 11:02:34 +0000 (UTC)
Date: Wed, 30 Oct 2019 07:02:34 -0400 (EDT)
From: Jan Stancek <jstancek@redhat.com>
To: CKI Project <cki-project@redhat.com>, Rachel Sibley <rasibley@redhat.com>
Message-ID: <845770535.9696874.1572433354366.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191030100631.GA17773@willie-the-truck>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <20191030100631.GA17773@willie-the-truck>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kerne?=
 =?utf-8?Q?l_5.4.0-rc5-34072e5.cki_(arm-next)?=
MIME-Version: 1.0
X-Originating-IP: [10.43.17.163, 10.4.195.29]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel
 5.4.0-rc5-34072e5.cki (arm-next)
Thread-Index: v7s0gs3FUpmWsw8DQnsuAuFim7lslQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: qo2GdfMRPEWGX0Io3MTdWA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_040240_929402_8CE55662 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgotLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4gSGkgYWxsLAo+IAo+IE9uIFR1ZSwgT2N0
IDI5LCAyMDE5IGF0IDExOjQzOjEzUE0gLTAwMDAsIENLSSBQcm9qZWN0IHdyb3RlOgo+ID4gV2Ug
cmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0aGlzIGtlcm5lbCB0
cmVlOgo+ID4gCj4gPiAgICAgICAgS2VybmVsIHJlcG86Cj4gPiAgICAgICAgZ2l0Oi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdAo+ID4gICAg
ICAgICAgICAgQ29tbWl0OiAzNDA3MmU1MmEzZmMgLSBNZXJnZSByZW1vdGUtdHJhY2tpbmcgYnJh
bmNoCj4gPiAgICAgICAgICAgICAnYXJtNjQvZm9yLW5leHQvbWVtb3J5LWhvdHJlbW92ZScgaW50
byBmb3Ita2VybmVsY2kKPiA+IAo+ID4gVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRl
c3RzIGFyZSBwcm92aWRlZCBiZWxvdy4KPiA+IAo+ID4gICAgIE92ZXJhbGwgcmVzdWx0OiBGQUlM
RUQgKHNlZSBkZXRhaWxzIGJlbG93KQo+ID4gICAgICAgICAgICAgIE1lcmdlOiBPSwo+ID4gICAg
ICAgICAgICBDb21waWxlOiBPSwo+ID4gICAgICAgICAgICAgIFRlc3RzOiBGQUlMRUQKPiA+IAo+
ID4gQWxsIGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxh
YmxlIGZvciBkb3dubG9hZAo+ID4gaGVyZToKPiA+IAo+ID4gICBodHRwczovL2FydGlmYWN0cy5j
a2ktcHJvamVjdC5vcmcvcGlwZWxpbmVzLzI1NTM2Mgo+ID4gCj4gPiBPbmUgb3IgbW9yZSBrZXJu
ZWwgdGVzdHMgZmFpbGVkOgo+ID4gCj4gPiAgICAgYWFyY2g2NDoKPiA+ICAgICAg4p2MIExUUCBs
aXRlCj4gCj4gQXMgZmFyIGFzIEkgY2FuIG1ha2Ugb3V0IGZyb20gdGhlIGxvZ3MsIHRoaXMgaXMg
YmVjYXVzZSB0aGUgZm9sbG93aW5nCj4gc3lzY2FsbCB0ZXN0cyBmYWlsZWQ6Cj4gCj4gCXByZWFk
djIwMgo+IAlwcmVhZHYyMDJfNjQKPiAJcmVhZHYwMgoKQENLSTogVGhlcmUgc2VlbSB0byBiZSBv
bmx5IGhpZ2ggbGV2ZWwgdGVzdCBzdGF0dXM/CiAgICAgIENhbiB5b3UgdXBsb2FkIGFsc28gdmVy
Ym9zZSB0ZXN0IG91dHB1dCB0byBhcnRpZmFjdHM/CgpUaGUgZmlsZSBpcyB1c3VhbGx5IG5hbWVk
ICoucnVuLmxvZy4gSXQgZ2l2ZXMgbXVjaCBiZXR0ZXIgZGV0YWlscyBmb3IgZmFpbHVyZXM6Cgp0
c3RfdGVzdC5jOjExMTY6IElORk86IFRpbWVvdXQgcGVyIHJ1biBpcyAwaCAwNW0gMDBzCnByZWFk
djIwMi5jOjgyOiBQQVNTOiBwcmVhZHYyKCkgZmFpbGVkIGFzIGV4cGVjdGVkOiBFSU5WQUwgKDIy
KQpwcmVhZHYyMDIuYzo4MjogUEFTUzogcHJlYWR2MigpIGZhaWxlZCBhcyBleHBlY3RlZDogRUlO
VkFMICgyMikKcHJlYWR2MjAyLmM6ODI6IFBBU1M6IHByZWFkdjIoKSBmYWlsZWQgYXMgZXhwZWN0
ZWQ6IEVPUE5PVFNVUFAgKDk1KQpwcmVhZHYyMDIuYzo4NjogRkFJTDogcHJlYWR2MigpIGZhaWxl
ZCB1bmV4cGVjdGVkbHksIGV4cGVjdGVkIEVGQVVMVDogU1VDQ0VTUyAoMCkKcHJlYWR2MjAyLmM6
ODI6IFBBU1M6IHByZWFkdjIoKSBmYWlsZWQgYXMgZXhwZWN0ZWQ6IEVCQURGICg5KQpwcmVhZHYy
MDIuYzo4MjogUEFTUzogcHJlYWR2MigpIGZhaWxlZCBhcyBleHBlY3RlZDogRUJBREYgKDkpCnBy
ZWFkdjIwMi5jOjgyOiBQQVNTOiBwcmVhZHYyKCkgZmFpbGVkIGFzIGV4cGVjdGVkOiBFSVNESVIg
KDIxKQpwcmVhZHYyMDIuYzo4MjogUEFTUzogcHJlYWR2MigpIGZhaWxlZCBhcyBleHBlY3RlZDog
RVNQSVBFICgyOSkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
