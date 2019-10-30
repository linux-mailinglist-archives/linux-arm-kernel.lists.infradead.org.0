Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9417E99B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:06:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82P0ZiFPE2qL7/FuSN1+HF3UD+YeTo9KH3q5VdB6dfk=; b=VSBCO6lh1J7Gdh
	Z+Fk4Jbr1v3v3c8xpa4lbRrUlFpE3iTJz7SI5qF4yILjkM5MwjNn+jmZBJZjBRrZJvFfhIP1X/c6D
	rT4pcq+AEKBt6SLWze3FQpI0IwhRwMw3jSC984BsY/qKb8pJX9tMA4ERrRuy3Aio2sf6RrzAalk3y
	b50Ze3shO4sb7YyPTY2FuY5FDzT+St5MiTEg1kFJSI3s4JqPJFzZeEoV8F9BDkq+AnBdmHcdis/7X
	JNiido7n5mNLsFZW5jLSXbmX0QJC2a1Kcf5Ye5svD5Fxb7bjKkqZuXd5qOJnKKybeETKeV6I/Ljuj
	b/z26MvN1asA/H1QlYKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPksI-0007pm-H2; Wed, 30 Oct 2019 10:06:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPks9-0007pF-87
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:06:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C49F217F9;
 Wed, 30 Oct 2019 10:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572429996;
 bh=wX0yaYi6fWLYWUSR8LrKNBBbY+ica/OEyCJEcliWq2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UekG86WlwKyjOAc2N3o5vlXZe9jDn3bR4Eba/2UtTevGoxAOaZr0v0orTbp82fc0E
 o/pzz3zYa3AvKnJSUOI7BUGgqkOP04ddNa0Sr1bRby5eDAax8rXL5BF65GKzdYubAL
 DLF+zo/fHs5ag/memaSEEAnOPHiuDBBLjMVJokHw=
Date: Wed, 30 Oct 2019 10:06:32 +0000
From: Will Deacon <will@kernel.org>
To: CKI Project <cki-project@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.4.0-rc5-34072e5.cki (arm-next)
Message-ID: <20191030100631.GA17773@willie-the-truck>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_030637_311060_04A16516 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
Cc: catalin.marinas@arm.com, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgYWxsLAoKT24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTE6NDM6MTNQTSAtMDAwMCwgQ0tJIFBy
b2plY3Qgd3JvdGU6Cj4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQg
ZnJvbSB0aGlzIGtlcm5lbCB0cmVlOgo+IAo+ICAgICAgICBLZXJuZWwgcmVwbzogZ2l0Oi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdAo+ICAg
ICAgICAgICAgIENvbW1pdDogMzQwNzJlNTJhM2ZjIC0gTWVyZ2UgcmVtb3RlLXRyYWNraW5nIGJy
YW5jaCAnYXJtNjQvZm9yLW5leHQvbWVtb3J5LWhvdHJlbW92ZScgaW50byBmb3Ita2VybmVsY2kK
PiAKPiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHByb3ZpZGVkIGJl
bG93Lgo+IAo+ICAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUgZGV0YWlscyBiZWxvdykK
PiAgICAgICAgICAgICAgTWVyZ2U6IE9LCj4gICAgICAgICAgICBDb21waWxlOiBPSwo+ICAgICAg
ICAgICAgICBUZXN0czogRkFJTEVECj4gCj4gQWxsIGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZp
bGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9hZCBoZXJlOgo+IAo+ICAgaHR0
cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qub3JnL3BpcGVsaW5lcy8yNTUzNjIKPiAKPiBPbmUg
b3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVkOgo+IAo+ICAgICBhYXJjaDY0Ogo+ICAgICAg4p2M
IExUUCBsaXRlCgpBcyBmYXIgYXMgSSBjYW4gbWFrZSBvdXQgZnJvbSB0aGUgbG9ncywgdGhpcyBp
cyBiZWNhdXNlIHRoZSBmb2xsb3dpbmcKc3lzY2FsbCB0ZXN0cyBmYWlsZWQ6CgoJcHJlYWR2MjAy
CglwcmVhZHYyMDJfNjQKCXJlYWR2MDIKCkJlZm9yZSBJIGdvIGRpZ2dpbmcgZGVlcGVyLCBpcyBp
dCBwb3NzaWJsZSB0byBzZWUgd2hldGhlciB0aGVzZSBwYXNzIG9uCmEgdmFuaWxsYSA1LjQtcmM1
IGtlcm5lbD8gSSBjb3VsZG4ndCBmaWd1cmUgb3V0IGEgd2F5IHRvIHRyYW5zbGF0ZQoidjUuNC1y
YzUiIGludG8gYSBkaXJlY3RvcnkgdW5kZXIgaHR0cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qu
b3JnL3BpcGVsaW5lcy8Kd2hpY2ggd291bGQgbGV0IG1lIHNlZSBpZiB3ZSd2ZSByZWdyZXNzZWQg
aW4gdGhlIGFybTY0IHRyZWUuCgpUaGFua3MsCgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
