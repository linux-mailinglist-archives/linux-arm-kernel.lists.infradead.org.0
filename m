Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525C7E99A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oiU5Wtw1FlQ3rgGdjjd7nkaoy6kF85SokioE5lEGz4=; b=tbW8nLq3Bi0URW
	4hdQ5xBEc6yYlx9V7Vwsmc5o5XG18e/EHi2a6b48R1IrffeRwgMECEKXe0Fsc9ItEzlYxmiNPBlXF
	X98XIbWV3SQWODp/fBaPnERaYijFeABDxrEuDDuRVi5R8Nl7lAI/yO7Eg5r/IaAtscgQvxgY2jx7k
	lIdTB3Cns4biZkmiw5+7x/U4lOTxCZxRh1YU8boniSjNqUW+p9fNKSkfSTObngNqF/LyazL4NGUKu
	ZS2NSIZlV++Xg6HKPIGYaRGdZBvjZV7ufRsmWZIN2IeVWQQu7rBt9Mpj7c88swmBOWL8IQ7v32y8u
	X5ktZbKy6DjHknCUzx2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkpr-0005i9-Rp; Wed, 30 Oct 2019 10:04:15 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkph-0005gw-9X
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572429842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SE72ez4yUODGT/AGhdazwao9d/zqT7+SfHEIeTTThwA=;
 b=fiSeo+rAx1wn7kV8zMiBRtWTXmatsHB6KDt27CbNfPvVxq2u3hBRsVEG/d4vFtlMppTtPk
 5QPF02qvFuar2c/k8ua3KDyU3ynTPaLh0l3ph7XSH9ZYxhguOg1KS/SpIRbIFkKXiuoeaF
 ns+SaOBdE56sAyMMcm1VxezEcPvIvWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-7i6_A6ThPTOiGw0OyEMDsQ-1; Wed, 30 Oct 2019 06:03:57 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F32091005500;
 Wed, 30 Oct 2019 10:03:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E9F285D6D0;
 Wed, 30 Oct 2019 10:03:56 +0000 (UTC)
Received: from zmail17.collab.prod.int.phx2.redhat.com
 (zmail17.collab.prod.int.phx2.redhat.com [10.5.83.19])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCF674E589;
 Wed, 30 Oct 2019 10:03:56 +0000 (UTC)
Date: Wed, 30 Oct 2019 06:03:56 -0400 (EDT)
From: Jan Stancek <jstancek@redhat.com>
To: will@kernel.org, linux-arm-kernel@lists.infradead.org, 
 catalin marinas <catalin.marinas@arm.com>
Message-ID: <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
In-Reply-To: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kerne?=
 =?utf-8?Q?l_5.4.0-rc5-34072e5.cki_(arm-next)?=
MIME-Version: 1.0
X-Originating-IP: [10.43.17.163, 10.4.195.26]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel
 5.4.0-rc5-34072e5.cki (arm-next)
Thread-Index: 0OD8PCgqTM0QYatMo5mWC7bsuPgZXw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 7i6_A6ThPTOiGw0OyEMDsQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_030405_409534_B935FA0C 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
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
Cc: Memory Management <mm-qe@redhat.com>, CKI Project <cki-project@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgotLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4gCj4gSGVsbG8sCj4gCj4gV2UgcmFuIGF1
dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0aGlzIGtlcm5lbCB0cmVlOgo+
IAo+ICAgICAgICBLZXJuZWwgcmVwbzoKPiAgICAgICAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdAo+ICAgICAgICAgICAgIENvbW1p
dDogMzQwNzJlNTJhM2ZjIC0gTWVyZ2UgcmVtb3RlLXRyYWNraW5nIGJyYW5jaAo+ICAgICAgICAg
ICAgICdhcm02NC9mb3ItbmV4dC9tZW1vcnktaG90cmVtb3ZlJyBpbnRvIGZvci1rZXJuZWxjaQo+
IAo+IFRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJvdmlkZWQgYmVs
b3cuCj4gCj4gICAgIE92ZXJhbGwgcmVzdWx0OiBGQUlMRUQgKHNlZSBkZXRhaWxzIGJlbG93KQo+
ICAgICAgICAgICAgICBNZXJnZTogT0sKPiAgICAgICAgICAgIENvbXBpbGU6IE9LCj4gICAgICAg
ICAgICAgIFRlc3RzOiBGQUlMRUQKPiAKPiBBbGwga2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmls
ZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9yIGRvd25sb2FkIGhlcmU6Cj4gCj4gICBodHRw
czovL2FydGlmYWN0cy5ja2ktcHJvamVjdC5vcmcvcGlwZWxpbmVzLzI1NTM2Mgo+IAo+IE9uZSBv
ciBtb3JlIGtlcm5lbCB0ZXN0cyBmYWlsZWQ6Cj4gCj4gICAgIGFhcmNoNjQ6Cj4gICAgICDinYwg
TFRQIGxpdGUKCldoYXQncyBmYWlsaW5nIGlzIHByZWFkdjIvcmVhZHYgb3ZlciBQUk9UX05PTkUg
bWFwcGluZzoKCltwaWQgIDI0MjRdIG1tYXAoTlVMTCwgMSwgUFJPVF9OT05FLCBNQVBfUFJJVkFU
RXxNQVBfQU5PTllNT1VTLCAwLCAwKSA9IDB4M2ZmN2Y4YjAwMDAKW3BpZCAgMjQyNF0gcHJlYWR2
MigzLCBbe2lvdl9iYXNlPTB4M2ZmN2Y4YjAwMDAsIGlvdl9sZW49NjR9XSwgMSwgMCwgMCkgPSAx
NgoKVGVzdCBleHBlY3RzIEVGQVVMVC4KCkl0IHNlZW1zIHNwZWNpZmljIHRvIGFybTY0L2xpbnV4
LmdpdCBhcyBJIGRvIG5vdCBzZWUgaXQgZmFpbCBvbgpMaW51cycgbWFzdGVyICh2NS40LXJjNS0z
NC1nMjNmZGIxOThhZTgxKS4KClJlZ2FyZHMsCkphbgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
