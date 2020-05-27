Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BCE1E4FFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnI1s6APmrysinANgNNK0sgLDvyr9WNXHdmnSdZheDU=; b=E1DyAzihsfGi2Z
	7R6sjQcFjmhdEfTsTkzwQOvGh8UZUFUJhN8oNysvrE5d55fXHQTT6Xsn1Ed2FQB/xL8FPUBHzmgQP
	r/7OIfH4rAGVwvM6ZsAf8L9CJBJzTZlyTDqEeRoZAMyP7Sfsjv32pkYyfhOaLTmYbUdZmwsMHAKEZ
	dkIWVv3KiXt+INOIpV+8XwmR0krE76U5zJ6W5d3vNq4FfISXDOdUvg1oqeVIx5GDSjsHX5Xo4Gd3R
	VfwS5iLEjPNkvKRLHZXHxPEBH4tqCbSVsGRJxofbOxAXxCLHFHJP/HQSRLX9Giy/eJgrTxJPWSKgR
	Ixs+TFtFl3t/h3njUyRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3Qz-0000sC-8L; Wed, 27 May 2020 21:17:57 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3Qn-0000qZ-Vx
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:17:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e7tiZMIiYuTbb+03A1KtQnZH+j3s8ttBBXpLw45dAS0=; b=6LlhV+r1K7qAycippK72vCEiPn
 c0NM4ZjQCpKRVzGcyTa9buhlm2plrnI2+LoPj8rGLnzkAaEhBdDOH6GhSkIyt4RSrRmo2k/KhZwHP
 m6wfFs/dCwrLP9yBfZx7nVTzQ9gsQi2SPB1cmp4AI3lsnCf4AM+6SZ+A19c0HtPu+LYk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1je3QV-003SEI-M8; Wed, 27 May 2020 23:17:27 +0200
Date: Wed, 27 May 2020 23:17:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
Message-ID: <20200527211727.GB818296@lunn.ch>
References: <20200526110318.69006-1-eesposit@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526110318.69006-1-eesposit@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141746_026810_CE8EF16F 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMDE6MDM6MTBQTSArMDIwMCwgRW1hbnVlbGUgR2l1c2Vw
cGUgRXNwb3NpdG8gd3JvdGU6Cj4gVGhlcmUgaXMgY3VycmVudGx5IG5vIGNvbW1vbiB3YXkgZm9y
IExpbnV4IGtlcm5lbCBzdWJzeXN0ZW1zIHRvIGV4cG9zZQo+IHN0YXRpc3RpY3MgdG8gdXNlcnNw
YWNlIHNoYXJlZCB0aHJvdWdob3V0IHRoZSBMaW51eCBrZXJuZWw7IHN1YnN5c3RlbXMgaGF2ZQo+
IHRvIHRha2UgY2FyZSBvZiBnYXRoZXJpbmcgYW5kIGRpc3BsYXlpbmcgc3RhdGlzdGljcyBieSB0
aGVtc2VsdmVzLCBmb3IKPiBleGFtcGxlIGluIHRoZSBmb3JtIG9mIGZpbGVzIGluIGRlYnVnZnMu
IEZvciBleGFtcGxlIEtWTSBoYXMgaXRzIG93biBjb2RlCj4gc2VjdGlvbiB0aGF0IHRha2VzIGNh
cmUgb2YgdGhpcyBpbiB2aXJ0L2t2bS9rdm1fbWFpbi5jLCB3aGVyZSBpdCBzZXRzIHVwCj4gZGVi
dWdmcyBoYW5kbGVycyBmb3IgZGlzcGxheWluZyB2YWx1ZXMgYW5kIGFnZ3JlZ2F0aW5nIHRoZW0g
ZnJvbSB2YXJpb3VzCj4gc3ViZm9sZGVycyB0byBvYnRhaW4gaW5mb3JtYXRpb24gYWJvdXQgdGhl
IHN5c3RlbSBzdGF0ZSAoaS5lLiBkaXNwbGF5aW5nCj4gdGhlIHRvdGFsIG51bWJlciBvZiBleGl0
cywgY2FsY3VsYXRlZCBieSBzdW1taW5nIGFsbCBleGl0cyBvZiBhbGwgY3B1cyBvZgo+IGFsbCBy
dW5uaW5nIHZpcnR1YWwgbWFjaGluZXMpLgo+IAo+IEFsbG93aW5nIGVhY2ggc2VjdGlvbiBvZiB0
aGUga2VybmVsIHRvIGRvIHNvIGhhcyB0d28gZGlzYWR2YW50YWdlcy4gRmlyc3QsCj4gaXQgd2ls
bCBpbnRyb2R1Y2UgcmVkdW5kYW50IGNvZGUuIFNlY29uZCwgZGVidWdmcyBpcyBhbnl3YXkgbm90
IHRoZSByaWdodAo+IHBsYWNlIGZvciBzdGF0aXN0aWNzIChmb3IgZXhhbXBsZSBpdCBpcyBhZmZl
Y3RlZCBieSBsb2NrZG93bikKPiAKPiBJbiB0aGlzIHBhdGNoIHNlcmllcyBJIGludHJvZHVjZSBz
dGF0c2ZzLCBhIHN5bnRoZXRpYyByYW0tYmFzZWQgdmlydHVhbAo+IGZpbGVzeXN0ZW0gdGhhdCB0
YWtlcyBjYXJlIG9mIGdhdGhlcmluZyBhbmQgZGlzcGxheWluZyBzdGF0aXN0aWNzIGZvciB0aGUK
PiBMaW51eCBrZXJuZWwgc3Vic3lzdGVtcy4KPiAKPiBUaGUgZmlsZSBzeXN0ZW0gaXMgbW91bnRl
ZCBvbiAvc3lzL2tlcm5lbC9zdGF0cyBhbmQgd291bGQgYmUgYWxyZWFkeSB1c2VkCj4gYnkga3Zt
LiBTdGF0c2ZzIHdhcyBpbml0aWFsbHkgaW50cm9kdWNlZCBieSBQYW9sbyBCb256aW5pIFsxXS4K
PiAKPiBTdGF0c2ZzIG9mZmVycyBhIGdlbmVyaWMgYW5kIHN0YWJsZSBBUEksIGFsbG93aW5nIGFu
eSBraW5kIG9mCj4gZGlyZWN0b3J5L2ZpbGUgb3JnYW5pemF0aW9uIGFuZCBzdXBwb3J0aW5nIG11
bHRpcGxlIGtpbmQgb2YgYWdncmVnYXRpb25zCj4gKG5vdCBvbmx5IHN1bSwgYnV0IGFsc28gYXZl
cmFnZSwgbWF4LCBtaW4gYW5kIGNvdW50X3plcm8pIGFuZCBkYXRhIHR5cGVzCj4gKGJvb2xlYW4s
IHVuc2lnbmVkL3NpZ25lZCBhbmQgY3VzdG9tIHR5cGVzKS4gVGhlIGltcGxlbWVudGF0aW9uLCB3
aGljaCBpcwo+IGEgZ2VuZXJhbGl6YXRpb24gb2YgS1ZN4oCZcyBkZWJ1Z2ZzIHN0YXRpc3RpY3Mg
Y29kZSwgdGFrZXMgY2FyZSBvZiBnYXRoZXJpbmcKPiBhbmQgZGlzcGxheWluZyBpbmZvcm1hdGlv
biBhdCBydW4gdGltZTsgdXNlcnMgb25seSBuZWVkIHRvIHNwZWNpZnkgdGhlCj4gdmFsdWVzIHRv
IGJlIGluY2x1ZGVkIGluIGVhY2ggc291cmNlLgo+IAo+IFN0YXRzZnMgd291bGQgYWxzbyBiZSBh
IGRpZmZlcmVudCBtb3VudHBvaW50IGZyb20gZGVidWdmcywgYW5kIHdvdWxkIG5vdAo+IHN1ZmZl
ciBmcm9tIGxpbWl0ZWQgYWNjZXNzIGR1ZSB0byB0aGUgc2VjdXJpdHkgbG9jayBkb3duIHBhdGNo
ZXMuIEl0cyBtYWluCj4gZnVuY3Rpb24gaXMgdG8gZGlzcGxheSBlYWNoIHN0YXRpc3RpY3MgYXMg
YSBmaWxlIGluIHRoZSBkZXNpcmVkIGZvbGRlcgo+IGhpZXJhcmNoeSBkZWZpbmVkIHRocm91Z2gg
dGhlIEFQSS4gU3RhdHNmcyBmaWxlcyBjYW4gYmUgcmVhZCwgYW5kIHBvc3NpYmx5Cj4gY2xlYXJl
ZCBpZiB0aGVpciBmaWxlIG1vZGUgYWxsb3dzIGl0Lgo+IAo+IFN0YXRzZnMgaGFzIHR3byBtYWlu
IGNvbXBvbmVudHM6IHRoZSBwdWJsaWMgQVBJIGRlZmluZWQgYnkKPiBpbmNsdWRlL2xpbnV4L3N0
YXRzZnMuaCwgYW5kIHRoZSB2aXJ0dWFsIGZpbGUgc3lzdGVtIHdoaWNoIHNob3VsZCBlbmQgdXAg
aW4KPiAvc3lzL2tlcm5lbC9zdGF0cy4KPiAKCkhpIEVtYW51ZWxlCgo+IFRoZSBBUEkgaGFzIHR3
byBtYWluIGVsZW1lbnRzLCB2YWx1ZXMgYW5kIHNvdXJjZXMuIEtlcm5lbCBzdWJzeXN0ZW1zIGxp
a2UKPiBLVk0gY2FuIHVzZSB0aGUgQVBJIHRvIGNyZWF0ZSBhIHNvdXJjZSwgYWRkIGNoaWxkIHNv
dXJjZXMvdmFsdWVzL2FnZ3JlZ2F0ZXMKPiBhbmQgcmVnaXN0ZXIgaXQgdG8gdGhlIHJvb3Qgc291
cmNlICh0aGF0IG9uIHRoZSB2aXJ0dWFsIGZzIHdvdWxkIGJlCj4gL3N5cy9rZXJuZWwvc3RhdHNm
cykuCgpBbm90aGVyIGlzc3VlIGkgc2VlIHdpdGggbmV0d29ya2luZyBpcyB0aGF0IHN0YXRpc3Rp
YyBjb3VudGVycyBjYW4gYmUKZHluYW1pYy4gVGhleSBjYW4gY29tZSBhbmQgZ28uIE9uZSBvZiB0
aGUgZHJpdmVycyBpIHdvcmsgb24gaGFzIGV4dHJhCnN0YXRpc3RpY3MgYXZhaWxhYmxlIHdoZW4g
YSBmaWJyZSBpbnRlcmZhY2UgaXMgdXNlZCwgY29tcGFyZWQgdG8gYQpjb3BwZXIgaW50ZXJmYWNl
LiBBbmQgdGhpcyBoYXBwZW5zIGF0IHJ1biB0aW1lLiBUaGUgbmV0bGluayBBUEkgaGFzIG5vCnBy
b2JsZW1zIHdpdGggdGhpcy4gSXQgaXMgYSBzbmFwc2hvdCBvZiB3aGF0IGNvdW50ZXJzIGFyZSBj
dXJyZW50bHkKYXZhaWxhYmxlLiBUaGVyZSBpcyBubyBzdGF0ZSBpbiB0aGUgQVBJLgoKSW4gbXkg
aHVtYmxlIG9waW5pb24sIG5ldHdvcmtpbmcgaXMgdW5saWtlbHkgdG8gYWRvcHQgeW91ciBhcHBy
b2FjaC4KWW91IHByb2JhYmx5IHdhbnQgdG8gbG9vayBhcm91bmQgZm9yIG90aGVyIHN1YnN5c3Rl
bXMgd2hpY2ggaGF2ZQpzdGF0aXN0aWNzLCBhbmQgc2VlIGlmIHlvdSBjYW4gY292ZXIgdGhlaXIg
cmVxdWlyZW1lbnRzLCBhbmQgZ2V0IHRoZW0Kb24gYm9hcmQuCgogICBBbmRyZXcKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
