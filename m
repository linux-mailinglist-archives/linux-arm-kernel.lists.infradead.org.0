Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F6FE99B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DCFTIObnYZmNZSP01459m7dD8rCJMO499+nCypFDFM=; b=nMehbY4Xp0dj2D
	zvE6XiSfK0vco0EbgqMciG3TleqOjT4QROF50keUGQwe79ZxLGyvoClRQ3ZCE7TwLK9zChmpR69RV
	WRlqp8Oc7PgdV3yAuI0ln+jn4UkTOlNhiDtNmegk0vw/Plvy7M0inCPWgTKaxFweL0OzeAqfR+4KC
	kvpwNc3nieiKnm2eCw9gNuBJ7Bi2r8ru+Mt3k8VZh4CuyIzCENLvCobe7SAPCwO4I5BzkivNnXI+Y
	j5o4MjgpGplvDHg1W17Lgd/zN/J3FpvvBMlRPKp3kCMZLeC0X7K1Npjz4Ejlea4bTcRvw91zAU+HD
	/+pXsqQXzWBSJSNFrXtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPktW-00087s-Rp; Wed, 30 Oct 2019 10:08:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPktM-00087D-Ga
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:07:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 307E720862;
 Wed, 30 Oct 2019 10:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572430072;
 bh=ZSC1pS78JVvL51QcHrVIIOScFUVceBP265/cOrW1peA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QS8zqaq4UV1QoIE3jvb2qjhocS+Z27owqGoJyjuOhOTGgoh9qa6JHdSyXmaCcLqjC
 nmoKPdjb90+k7KxqrtRsNU8F5003WVbDGTe5bH0WNRdCS/4o+xYZXRkln/H5L+oZb7
 rxg3Vqk1YqI6KgkPXTwy5ro00tMKdWV4kLFnPaRs=
Date: Wed, 30 Oct 2019 10:07:48 +0000
From: Will Deacon <will@kernel.org>
To: Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.4.0-rc5-34072e5.cki (arm-next)
Message-ID: <20191030100747.GB17773@willie-the-truck>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_030752_588537_BF33465D 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Memory Management <mm-qe@redhat.com>, CKI Project <cki-project@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMDY6MDM6NTZBTSAtMDQwMCwgSmFuIFN0YW5jZWsgd3Jv
dGU6Cj4gCj4gCj4gLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+ID4gCj4gPiBIZWxsbywK
PiA+IAo+ID4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgo+ID4gCj4gPiAgICAgICAgS2VybmVsIHJlcG86Cj4gPiAgICAgICAg
Z2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4
LmdpdAo+ID4gICAgICAgICAgICAgQ29tbWl0OiAzNDA3MmU1MmEzZmMgLSBNZXJnZSByZW1vdGUt
dHJhY2tpbmcgYnJhbmNoCj4gPiAgICAgICAgICAgICAnYXJtNjQvZm9yLW5leHQvbWVtb3J5LWhv
dHJlbW92ZScgaW50byBmb3Ita2VybmVsY2kKPiA+IAo+ID4gVGhlIHJlc3VsdHMgb2YgdGhlc2Ug
YXV0b21hdGVkIHRlc3RzIGFyZSBwcm92aWRlZCBiZWxvdy4KPiA+IAo+ID4gICAgIE92ZXJhbGwg
cmVzdWx0OiBGQUlMRUQgKHNlZSBkZXRhaWxzIGJlbG93KQo+ID4gICAgICAgICAgICAgIE1lcmdl
OiBPSwo+ID4gICAgICAgICAgICBDb21waWxlOiBPSwo+ID4gICAgICAgICAgICAgIFRlc3RzOiBG
QUlMRUQKPiA+IAo+ID4gQWxsIGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9n
cyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9hZCBoZXJlOgo+ID4gCj4gPiAgIGh0dHBzOi8vYXJ0
aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBlbGluZXMvMjU1MzYyCj4gPiAKPiA+IE9uZSBvciBt
b3JlIGtlcm5lbCB0ZXN0cyBmYWlsZWQ6Cj4gPiAKPiA+ICAgICBhYXJjaDY0Ogo+ID4gICAgICDi
nYwgTFRQIGxpdGUKPiAKPiBXaGF0J3MgZmFpbGluZyBpcyBwcmVhZHYyL3JlYWR2IG92ZXIgUFJP
VF9OT05FIG1hcHBpbmc6Cj4gCj4gW3BpZCAgMjQyNF0gbW1hcChOVUxMLCAxLCBQUk9UX05PTkUs
IE1BUF9QUklWQVRFfE1BUF9BTk9OWU1PVVMsIDAsIDApID0gMHgzZmY3ZjhiMDAwMAo+IFtwaWQg
IDI0MjRdIHByZWFkdjIoMywgW3tpb3ZfYmFzZT0weDNmZjdmOGIwMDAwLCBpb3ZfbGVuPTY0fV0s
IDEsIDAsIDApID0gMTYKPiAKPiBUZXN0IGV4cGVjdHMgRUZBVUxULgo+IAo+IEl0IHNlZW1zIHNw
ZWNpZmljIHRvIGFybTY0L2xpbnV4LmdpdCBhcyBJIGRvIG5vdCBzZWUgaXQgZmFpbCBvbgo+IExp
bnVzJyBtYXN0ZXIgKHY1LjQtcmM1LTM0LWcyM2ZkYjE5OGFlODEpLgoKQWhhLCBvdXIgZW1haWxz
IGNyb3NzZWQgcGF0aHMuIFRoYW5rcywgSSdsbCB0cnkgdG8gcmVwcm9kdWNlIHRoZSBmYWlsdXJl
CmxvY2FsbHkuCgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
