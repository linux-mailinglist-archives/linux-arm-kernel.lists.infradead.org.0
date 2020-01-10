Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB97137686
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 20:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtKIqEGMFFGPJnjP3Ot9dAvJwSuCDkr69gEhPpO0mPY=; b=KeFhA6hpfQtMPk
	u6tH6/6BiktRfT8g/C6mK3fBU7rHCZDM4e7M94Ho3lLXIs05ClnDLQEOr15Nt6720RwNIVtU/vhIK
	M4jSc3/ATLteqTNwsl14dXpreCJgltlg9vdFy4LMi1I0uIt+OJQQ3cfoBhUaDY3GTIvblzmkrPdKi
	AW7evg8+OFqDMUY8Uxyp1XUawDFjoAZQAi3iRd9mKIKOumsIVCOLCFmpC8CkqMpNYam66rj+EWETC
	ZhJ8vFhQehCcjjBDhrbeJABAnVO0klp8Ghlx3TBT7c3wX/2k+ONF14mpnzMCZwbP8lew85wbDDusm
	L+3YRkFXiVu1KhUMQP+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipzYC-0005sN-Ru; Fri, 10 Jan 2020 19:02:28 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipzY3-0005qr-Qe
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 19:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578682936;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lZ3MJlwKsmTahhEKZ7liwmdaP72hxHg0nFRVSSgd63k=;
 b=A0r0nVS5cUH8/ekZgXdFf+RhkD81CbziZqyfF8mDU/5nZWrWms3rK6Xh+XstQfmBqFGdU7
 I0O5a0Yt9IaEkhaRtJuBfjtbwFEuZgy9N+O7RhK8kXfriCzvxr+zsi++pNbLCzlLZMWSb0
 qG/lLNxAfXmZIA7xKb77YWB/FqOIiVU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-JSww2fMSNV2NKcoejt9luw-1; Fri, 10 Jan 2020 14:00:15 -0500
X-MC-Unique: JSww2fMSNV2NKcoejt9luw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4E2B8048F1;
 Fri, 10 Jan 2020 19:00:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 878E35E241;
 Fri, 10 Jan 2020 19:00:11 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 301E581C72;
 Fri, 10 Jan 2020 19:00:11 +0000 (UTC)
Date: Fri, 10 Jan 2020 14:00:10 -0500 (EST)
From: Dave Anderson <anderson@redhat.com>
To: James Morse <james.morse@arm.com>
Message-ID: <351975548.1986001.1578682810951.JavaMail.zimbra@redhat.com>
In-Reply-To: <f791e777-781c-86ce-7619-1de3fe3e7b90@arm.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
 <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
 <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
 <f791e777-781c-86ce-7619-1de3fe3e7b90@arm.com>
Subject: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
MIME-Version: 1.0
X-Originating-IP: [10.10.120.164, 10.4.195.27]
Thread-Topic: arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
Thread-Index: ic50YQVuXt31PDeSAHGv7IV2UM9mpA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_110219_986675_2F9311EF 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 bhupesh linux <bhupesh.linux@gmail.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgotLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4gSGkgQmh1cGVzaCwKPiAKPiBPbiAyNS8x
Mi8yMDE5IDE5OjAxLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPiA+IE9uIDEyLzEyLzIwMTkgMDQ6
MDIgUE0sIEphbWVzIE1vcnNlIHdyb3RlOgo+ID4+IE9uIDI5LzExLzIwMTkgMTk6NTksIEJodXBl
c2ggU2hhcm1hIHdyb3RlOgo+ID4+PiB2YWJpdHNfYWN0dWFsIHZhcmlhYmxlIG9uIGFybTY0IGlu
ZGljYXRlcyB0aGUgYWN0dWFsIFZBIHNwYWNlIHNpemUsCj4gPj4+IGFuZCBhbGxvd3MgYSBzaW5n
bGUgYmluYXJ5IHRvIHN1cHBvcnQgYm90aCA0OC1iaXQgYW5kIDUyLWJpdCBWQQo+ID4+PiBzcGFj
ZXMuCj4gPj4+Cj4gPj4+IElmIHRoZSBBUk12OC4yLUxWQSBvcHRpb25hbCBmZWF0dXJlIGlzIHBy
ZXNlbnQsIGFuZCB3ZSBhcmUgcnVubmluZwo+ID4+PiB3aXRoIGEgNjRLQiBwYWdlIHNpemU7IHRo
ZW4gaXQgaXMgcG9zc2libGUgdG8gdXNlIDUyLWJpdHMgb2YgYWRkcmVzcwo+ID4+PiBzcGFjZSBm
b3IgYm90aCB1c2Vyc3BhY2UgYW5kIGtlcm5lbCBhZGRyZXNzZXMuIEhvd2V2ZXIsIGFueSBrZXJu
ZWwKPiA+Pj4gYmluYXJ5IHRoYXQgc3VwcG9ydHMgNTItYml0IG11c3QgYWxzbyBiZSBhYmxlIHRv
IGZhbGwgYmFjayB0byA0OC1iaXQKPiA+Pj4gYXQgZWFybHkgYm9vdCB0aW1lIGlmIHRoZSBoYXJk
d2FyZSBmZWF0dXJlIGlzIG5vdCBwcmVzZW50Lgo+ID4+Pgo+ID4+PiBTaW5jZSBUQ1JfRUwxLlQx
U1ogaW5kaWNhdGVzIHRoZSBzaXplIG9mZnNldCBvZiB0aGUgbWVtb3J5IHJlZ2lvbgo+ID4+PiBh
ZGRyZXNzZWQgYnkgVFRCUjFfRUwxIChhbmQgaGVuY2UgY2FuIGJlIHVzZWQgZm9yIGRldGVybWlu
aW5nIHRoZQo+ID4+PiB2YWJpdHNfYWN0dWFsIHZhbHVlKSBpdCBtYWtlcyBtb3JlIHNlbnNlIHRv
IGV4cG9ydCB0aGUgc2FtZSBpbgo+ID4+PiB2bWNvcmVpbmZvIHJhdGhlciB0aGFuIHZhYml0c19h
Y3R1YWwgdmFyaWFibGUsIGFzIHRoZSBuYW1lIG9mIHRoZQo+ID4+PiB2YXJpYWJsZSBjYW4gY2hh
bmdlIGluIGZ1dHVyZSBrZXJuZWwgdmVyc2lvbnMsIGJ1dCB0aGUgYXJjaGl0ZWN0dXJhbAo+ID4+
PiBjb25zdHJ1Y3RzIGxpa2UgVENSX0VMMS5UMVNaIGNhbiBiZSB1c2VkIGJldHRlciB0byBpbmRp
Y2F0ZSBpbnRlbmRlZAo+ID4+PiBzcGVjaWZpYyBmaWVsZHMgdG8gdXNlci1zcGFjZS4KPiA+Pj4K
PiA+Pj4gVXNlci1zcGFjZSB1dGlsaXRpZXMgbGlrZSBtYWtlZHVtcGZpbGUgYW5kIGNyYXNoLXV0
aWxpdHksIG5lZWQgdG8KPiA+Pj4gcmVhZC93cml0ZSB0aGlzIHZhbHVlIGZyb20vdG8gdm1jb3Jl
aW5mbwo+ID4+Cj4gPj4gKHdyaXRlPykKPiA+IAo+ID4gWWVzLCBhbHNvIHdyaXRlIHNvIHRoYXQg
dGhlIHZtY29yZWluZm8gZnJvbSBhbiAoY3Jhc2hpbmcpIGFybTY0IHN5c3RlbSBjYW4KPiA+IGJl
IHVzZWQgZm9yCj4gPiBhbmFseXNpcyBvZiB0aGUgcm9vdC1jYXVzZSBvZiBwYW5pYy9jcmFzaCBv
biBzYXkgYW4geDg2XzY0IGhvc3QgdXNpbmcKPiA+IHV0aWxpdGllcyBsaWtlCj4gPiBjcmFzaC11
dGlsaXR5L2dkYi4KPiAKPiBJIHJlYWQgdGhpcyBhcyBhcyAiVXNlci1zcGFjZSBbLi4uXSBuZWVk
cyB0byB3cml0ZSB0byB2bWNvcmVpbmZvIi4KPiAKPiAKPiA+Pj4gZm9yIGRldGVybWluaW5nIGlm
IGEgdmlydHVhbCBhZGRyZXNzIGxpZXMgaW4gdGhlIGxpbmVhciBtYXAgcmFuZ2UuCj4gPj4KPiA+
PiBJIHRoaW5rIHRoaXMgaXMgYSBmcmFnaWxlIGV4YW1wbGUuIFRoZSBkZWJ1Z2dlciBzaG91bGRu
J3QgbmVlZCB0byBrbm93Cj4gPj4gdGhpcy4KPiA+IAo+ID4gV2VsbCB0aGF0IHRoZSBjdXJyZW50
IHVzZXItc3BhY2UgdXRpbGl0eSBkZXNpZ24sIHNvIEkgYW0gbm90IHN1cmUgd2UgY2FuCj4gPiB0
d2VhayB0aGF0IHRvbyBtdWNoLgo+ID4gCj4gPj4+IFRoZSB1c2VyLXNwYWNlIGNvbXB1dGF0aW9u
IGZvciBkZXRlcm1pbmluZyB3aGV0aGVyIGFuIGFkZHJlc3MgbGllcyBpbgo+ID4+PiB0aGUgbGlu
ZWFyIG1hcCByYW5nZSBpcyB0aGUgc2FtZSBhcyB3ZSBoYXZlIGluIGtlcm5lbC1zcGFjZToKPiA+
Pj4KPiA+Pj4gwqDCoCAjZGVmaW5lIF9faXNfbG1fYWRkcmVzcyhhZGRyKcKgwqDCoCAoISgoKHU2
NClhZGRyKSAmIEJJVCh2YWJpdHNfYWN0dWFsIC0KPiA+Pj4gwqDCoCAxKSkpCj4gPj4KPiA+PiBU
aGlzIHdhcyBjaGFuZ2VkIHdpdGggMTRjMTI3Yzk1N2MxICgiYXJtNjQ6IG1tOiBGbGlwIGtlcm5l
bCBWQSBzcGFjZSIpLiBJZgo+ID4+IHVzZXItc3BhY2UKPiA+PiB0b29scyByZWx5IG9uICdrbm93
aW5nJyB0aGUga2VybmVsIG1lbW9yeSBsYXlvdXQsIHRoZXkgbXVzdCBoYXZlIHRvCj4gPj4gY29u
c3RhbnRseSBiZSBmaXhlZAo+ID4+IGFuZCB1cGRhdGVkLiBUaGlzIGlzIGEgcG9vciBhcmd1bWVu
dCBmb3IgYWRkaW5nIHRoaXMgdG8gc29tZXRoaW5nIHRoYXQKPiA+PiBlbmRzIHVwIGFzIEFCSS4K
PiA+IAo+ID4gU2VlIGFib3ZlLiBUaGUgdXNlci1zcGFjZSBoYXMgdG8gcmVseSBvbiBzb21lIEFC
SS9ndWFyYW50ZWVkCj4gPiBoYXJkd2FyZS1zeW1ib2xzIHdoaWNoIGNhbiBiZQo+ID4gdXNlZCBm
b3IgJ2RldGVybWluaW5nJyB0aGUga2VybmVsIG1lbW9yeSBsYXlvdXQuCj4gCj4gSSBkaXNhZ3Jl
ZS4gRXZlcnl0aGluZyBhbmQgYW55dGhpbmcgaW4gdGhlIGtlcm5lbCB3aWxsIGNoYW5nZS4gVGhl
IEFCSSBydWxlcyBhcHBseSB0bwo+IHN0dWZmIGV4cG9zZWQgdmlhIHN5c2NhbGxzIGFuZCBrZXJu
ZWwgZmlsZXN5c3RlbXMuIEl0IGRvZXMgbm90IGFwcGx5IHRvIGtlcm5lbCBpbnRlcm5hbHMsCj4g
bGlrZSB0aGUgbWVtb3J5IGxheW91dCB3ZSB1c2VkIHllc3RlcmRheS4gMTRjMTI3Yzk1N2MxIGlz
IGEgY2FzZSBpbiBwb2ludC4KPiAKPiBBIGRlYnVnZ2VyIHRyeWluZyB0byByZWx5IG9uIHRoaXMg
c29ydCBvZiB0aGluZyB3b3VsZCBoYXZlIHRvIHBsYXkgY2F0Y2h1cCB3aGVuZXZlciBpdAo+IGNo
YW5nZXMuCgpFeGFjdGx5LiAgVGhhdCdzIHRoZSB3aG9sZSBwb2ludC4KClRoZSBjcmFzaCB1dGls
aXR5IGFuZCBtYWtlZHVtcGZpbGUgYXJlIG5vdCBpbiB0aGUgc2FtZSBsZWFndWUgYXMgb3RoZXIg
dXNlci1zcGFjZSB0b29scy4KVGhleSBoYXZlIGFsd2F5cyBoYWQgdG8gInBsYXkgY2F0Y2h1cCIg
cHJlY2lzZWx5IGJlY2F1c2UgdGhleSBkZXBlbmQgdXBvbiBrZXJuZWwgaW50ZXJuYWxzLAp3aGlj
aCBjb25zdGFudGx5IGNoYW5nZS4KCkRhdmUgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
