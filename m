Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBB69A25E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 23:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sU/9EOuY8FoHUQW7IR/t9vxK5+igfDpGAX4/m2ckbl8=; b=DlNwmFqQSbSyfq
	m+/IrRDQLpx7a3yB9tM8AWRud/EL94vN7KJMdrdIMuHx89pW6OCt32QaBEZRmIlPc9Oa9lyPQT6Fd
	tdwNq9Sz8gDH/3H2/cOUyn7CYBVvAyPSIvkVcI0r91xC5O+YNzUKr7DtLFhtyRdK9TejjpPBMwwBG
	dkti+LqqP4aAJVTCBXabDs4gPUZ0wee5lzd+EJWHMfhn7143Yq3vc9NLfMI9D3TsUEULMF/P49Yaj
	0hLJpXGDjK5YPwfMgYMgBiUyqBMPOngUKQ8lbsNaUYlsXIaIr3keRaULS9LwVxSsvvVZnlzrO7TNd
	owmvvV1nH33bE04QosOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0uzQ-0004CJ-8y; Thu, 22 Aug 2019 21:51:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0uzF-0004Bx-Uv
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 21:51:19 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ED7033175291;
 Thu, 22 Aug 2019 21:51:16 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6269A5D713;
 Thu, 22 Aug 2019 21:51:15 +0000 (UTC)
Date: Thu, 22 Aug 2019 16:51:12 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Julien <julien.thierry.kdev@gmail.com>
Subject: Re: [RFC v4 07/18] objtool: Introduce INSN_UNKNOWN type
Message-ID: <20190822215112.n36slswph64nbzhb@treble>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-8-raphael.gault@arm.com>
 <20190822200406.jc3yf77pomxxwep6@treble>
 <3c4e3227-eeb3-371a-d015-a0e0e60e5332@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c4e3227-eeb3-371a-d015-a0e0e60e5332@gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 22 Aug 2019 21:51:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_145118_016277_F0EA6AD6 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 Raphael Gault <raphael.gault@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDk6NDU6MDBQTSArMDEwMCwgSnVsaWVuIHdyb3RlOgo+
IEhpIEpvc2gsCj4gCj4gT24gMjIvMDgvMTkgMjE6MDQsIEpvc2ggUG9pbWJvZXVmIHdyb3RlOgo+
ID4gT24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMDE6MjM6NTJQTSArMDEwMCwgUmFwaGFlbCBHYXVs
dCB3cm90ZToKPiA+ID4gT24gYXJtNjQgc29tZSBvYmplY3QgZmlsZXMgY29udGFpbiBkYXRhIHN0
b3JlZCBpbiB0aGUgLnRleHQgc2VjdGlvbi4KPiA+ID4gVGhpcyBkYXRhIGlzIGludGVycHJldGVk
IGJ5IG9ianRvb2wgYXMgaW5zdHJ1Y3Rpb24gYnV0IGNhbid0IGJlCj4gPiA+IGlkZW50aWZpZWQg
YXMgYSB2YWxpZCBvbmUuIEluIG9yZGVyIHRvIGtlZXAgYW5hbHlzaW5nIHRob3NlIGZpbGVzIHdl
Cj4gPiA+IGludHJvZHVjZSBJTlNOX1VOS05PV04gdHlwZS4gVGhlICJ1bmtub3duIGluc3RydWN0
aW9uIiB3YXJuaW5nIHdpbGwgdGh1cwo+ID4gPiBvbmx5IGJlIHJhaXNlZCBpZiBzdWNoIGluc3Ry
dWN0aW9ucyBhcmUgdW5jb3VudGVyZWQgd2hpbGUgdmFsaWRhdGluZyBhbgo+ID4gPiBleGVjdXRp
b24gYnJhbmNoLgo+ID4gPiAKPiA+ID4gVGhpcyBjaGFuZ2UgZG9lc24ndCBpbXBhY3QgdGhlIHg4
NiBkZWNvZGluZyBsb2dpYyBzaW5jZSAwIGlzIHN0aWxsIHVzZWQKPiA+ID4gYXMgYSB3YXkgdG8g
c3BlY2lmeSBhbiB1bmtub3duIHR5cGUsIHJhaXNpbmcgdGhlICJ1bmtub3duIGluc3RydWN0aW9u
Igo+ID4gPiB3YXJuaW5nIGR1cmluZyB0aGUgZGVjb2RpbmcgcGhhc2Ugc3RpbGwuCj4gPiA+IAo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBSYXBoYWVsIEdhdWx0IDxyYXBoYWVsLmdhdWx0QGFybS5jb20+
Cj4gPiAKPiA+IElzIHRoZXJlIGEgcmVhc29uIHN1Y2ggZGF0YSBjYW4ndCBiZSBtb3ZlZCB0byAu
cm9kYXRhPyAgVGhhdCB3b3VsZCBzZWVtCj4gPiBsaWtlIHRoZSBwcm9wZXIgZml4Lgo+ID4gCj4g
Cj4gUmFwaGHDq2wgY2FuIGNvbmZpcm0sIGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCB0aGF0IGlz
c3VlIHdhcyBlbmNvdW50ZXJlZCBvbgo+IGFzc2VtYmx5IGZpbGVzIGltcGxlbWVudGluZyBjcnlw
dG8gYWxnb3JpdGhtcyB3ZXJlIHNvbWUgd29yZHMvZG91YmxlLXdvcmRzCj4gb2YgZGF0YSB3ZXJl
IGluIHRoZSBtaWRkbGUgb2YgdGhlIC50ZXh0LiBJIHRoaW5rIGl0IGlzIGRvbmUgdGhpcyB3YXkg
dG8gbWFrZQo+IHN1cmUgdGhlIGRhdGEgY2FuIGJlIGxvYWRlZCBpbiBhIHNpbmdsZSBpbnN0cnVj
dGlvbi4gU28gbW92aW5nIGl0IHRvIGFub3RoZXIKPiBzZWN0aW9uIGNvdWxkIGltcGFjdCB0aGUg
Y3J5cHRvIHBlcmZvcm1hbmNlIGRlcGVuZGluZyBvbiB0aGUgcmVsb2NhdGlvbnMuCj4gCj4gVGhh
dCB3YXMgbXkgdW5kZXJzdGFuZGluZyBhdCBsZWFzdC4KClRoYW5rcy4gIElmIHRoYXQncyB0aGUg
Y2FzZSB0aGVuIHRoYXQgd291bGQgYmUgdXNlZnVsIGluZm9ybWF0aW9uIHRvIHB1dAppbiB0aGUg
cGF0Y2ggZGVzY3JpcHRpb24uICBBIGNvZGUgZXhjZXJwdCBvZiBhbiBleGFtcGxlIGNvZGUgc2l0
ZSB3b3VsZApiZSB1c2VmdWwgdG9vLgoKSSdtIG5vdCBzdXJlIElOU05fVU5LTk9XTiBpcyB0aGUg
cmlnaHQgbmFtZSB0aG91Z2gsIHNpbmNlIHRoZSBkZWNvZGVyCmRvZXMgYWN0dWFsbHkga25vdyBh
Ym91dCBpdC4gIE1heWJlIElOU05fREFUQSBvciBzb21ldGhpbmc/CgotLSAKSm9zaAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
