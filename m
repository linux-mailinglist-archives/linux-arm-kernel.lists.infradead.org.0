Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7668B1FEB47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPSJPgWDloDfci/a6Ru8TltfMOAY6X4r0H1kgNPtaSA=; b=kmwS6dttwI2fNc
	C67Dn2XnHkq8eOrnjc1DeA7zUk32dSRdG7pzkYtwlqeGHRuaOCQeEeU3o7BCK/Xdg1hHTOUA46NVi
	qTh8UKPg2cYzuHTOc0gtlbMbfYgIhEV43QPo9JCGxMrfhfUnD/FoXPRvt1qxo3jdgDNcNJ22sdlyI
	7HZdHBgNUI+zfKxCZRYHwhJMYhtpd9OMAF+G+rSiHyFCUvXyxFEbKpQ58hv2Mk0HM6Dp/LPMImK5Q
	zVMhCDe3jqeFN2igjzOBv58wtCszmDXniVACyJG99+PaQ1G4MhvHIKGudAudh0lyquf/u0LjV8Kpe
	ZLJFRFEcem/qg+UdNHbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnkg-0004Lh-Mm; Thu, 18 Jun 2020 06:10:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnkT-0002kT-Nl
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592460603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cwbt/3ySXfcYjFWFtTtB8EpyCpCNxYQXgY4FcRbcGqU=;
 b=anmrhHz4L+gLMBBFGxP1g5KVs7gYOaqJDn6ycOKWmLsDcwPAuOeQcBDJ+pE5mTHQDa65Lz
 w6ewQMHXSAeKbGGdL3DseOC0DmATRhhkson5iKzc39qqQvYwZdTUiDWjbVJZOgWwmj+lrw
 iLQZWySdVZP6JxlqDkx0jquulSi5DpU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-sjVYZ3nLN_mM4x2_FAYRXQ-1; Thu, 18 Jun 2020 02:07:57 -0400
X-MC-Unique: sjVYZ3nLN_mM4x2_FAYRXQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AB8F107ACF6;
 Thu, 18 Jun 2020 06:07:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1347560CD0;
 Thu, 18 Jun 2020 06:07:56 +0000 (UTC)
Received: from zmail17.collab.prod.int.phx2.redhat.com
 (zmail17.collab.prod.int.phx2.redhat.com [10.5.83.19])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D485714CC3;
 Thu, 18 Jun 2020 06:07:55 +0000 (UTC)
Date: Thu, 18 Jun 2020 02:07:55 -0400 (EDT)
From: Jan Stancek <jstancek@redhat.com>
To: CKI Project <cki-project@redhat.com>
Message-ID: <163954071.16503342.1592460475593.JavaMail.zimbra@redhat.com>
In-Reply-To: <cki.72F10DD5A2.1F8H07UJY5@redhat.com>
References: <cki.72F10DD5A2.1F8H07UJY5@redhat.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kerne?=
 =?utf-8?Q?l_5.8.0-rc1-b9249cb.cki_(arm-next)?=
MIME-Version: 1.0
X-Originating-IP: [10.43.17.25, 10.4.195.11]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel
 5.8.0-rc1-b9249cb.cki (arm-next)
Thread-Index: 5AXxqHArwUH8PpBoI+WfNlkgWa7y7w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_231005_872124_FF06FF29 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ci0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPiAKPiBIZWxsbywKPiAKPiBXZSByYW4gYXV0
b21hdGVkIHRlc3RzIG9uIGEgcmVjZW50IGNvbW1pdCBmcm9tIHRoaXMga2VybmVsIHRyZWU6Cj4g
Cj4gICAgICAgIEtlcm5lbCByZXBvOgo+ICAgICAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKPiAgICAgICAgICAgICBDb21t
aXQ6IGI5MjQ5Y2JhMjVhNSAtIGFybTY0OiBidGk6IFJlcXVpcmUgY2xhbmcgPj0gMTAuMC4xIGZv
cgo+ICAgICAgICAgICAgIGluLWtlcm5lbCBCVEkgc3VwcG9ydAo+IAo+IFRoZSByZXN1bHRzIG9m
IHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJvdmlkZWQgYmVsb3cuCj4gCj4gICAgIE92ZXJh
bGwgcmVzdWx0OiBGQUlMRUQgKHNlZSBkZXRhaWxzIGJlbG93KQo+ICAgICAgICAgICAgICBNZXJn
ZTogT0sKPiAgICAgICAgICAgIENvbXBpbGU6IE9LCj4gICAgICAgICAgICAgIFRlc3RzOiBGQUlM
RUQKPiAKPiBBbGwga2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBh
dmFpbGFibGUgZm9yIGRvd25sb2FkIGhlcmU6Cj4gCj4gICBodHRwczovL2NraS1hcnRpZmFjdHMu
czMudXMtZWFzdC0yLmFtYXpvbmF3cy5jb20vaW5kZXguaHRtbD9wcmVmaXg9ZGF0YXdhcmVob3Vz
ZS8yMDIwLzA2LzE3LzYwMjE4NAo+IAo+IE9uZSBvciBtb3JlIGtlcm5lbCB0ZXN0cyBmYWlsZWQ6
Cj4gCj4gICAgIGFhcmNoNjQ6Cj4gICAgICDinYwgTFRQCgpta25vZDA3IC0gdXBkYXRlZAogIGh0
dHBzOi8vZ2l0aHViLmNvbS9saW51eC10ZXN0LXByb2plY3QvbHRwL2NvbW1pdC8xM2ZjZmEyZDZi
ZGQxZmI3MWM0NTI4YjQ3MTcwZThlOGZiM2E4YTMyCgpzZXRuczAxIC0gQ2hyaXN0aWFuIHBvc3Rl
ZCBhIHBhdGNoCiAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMDYxNjIyNTYxMi40
MDY4Nzk5LTEtY2hyaXN0aWFuLmJyYXVuZXJAdWJ1bnR1LmNvbS8KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
