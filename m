Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2974F7DA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 20:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8CYVYQyonYfwk8Tko0WkxdMn/ioip6ytx851Io1p08=; b=rhDpSC+vmbY4qn
	VTzhjGko5rL7sPjzeWwYGgFK7P7KtnyN+Y1KFOfg8Ugpqec/Y7WAiioD6dmZZEOjs+RLC7rioGGEJ
	DfCpCik7USwNY2qe4OOyjWkfEGyFXV/qWbLutEhqefiapfh6YOEZy/+x589vSGm+kB+eeh5stQ4/4
	UGXPVKHplMPDRdPjTnYPBz7STIPbC3CfrN7fWyr+HIMb7NJW8E2IUy18dNm65GMVot537uzucac6R
	P6Xa9C6yPRi4e4alJnTYUI2JMZFb43I9gINAaecJ8s4yaKxTUg26GDmuZWp4LBTykxQmPVCjp2ZOr
	mjHsVG+wRUCa2B98f+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hel7T-0000Mj-69; Sat, 22 Jun 2019 18:52:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hel7H-0000M8-A6
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 18:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FNchdyzDRfton4O0BjEZ53xQZ5SAbOUZFhf5GgIrTak=; b=w1jBMoyVjRtHZfFywyPLoX6SG
 fVrxVeRH9G031W7YO9uOl2Cs72Z5dzJNJO2DmbJhLC4sk+E/ZJmIyCzwsDkLwiAmyXrhONIgqhWz+
 gFRUJLo6zuRGWTHucavTJMfPVL/4c3ajmnkl8tX+glwSLJSEEpY6f6Hi7VGO0NIbnJZyYK2DV2F0l
 x/Ypqep2v08iITwWKB1aSTvC9xjW/r74Y3qDMWnpSvFLfkohzycUWTSOrJslpyM8sA9dGNbkYFMP8
 g1vXD49S1vbdbHUuScLG8h+cZ28QG6kwxX/HFgM3QKCpaVqkpcVIqGcSem9J66J3d1YIQaX7uy6V5
 p1LtQ6RIA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59892)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hel79-0005LU-Sg; Sat, 22 Jun 2019 19:51:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hel78-0004Np-Rg; Sat, 22 Jun 2019 19:51:50 +0100
Date: Sat, 22 Jun 2019 19:51:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Michael Olbrich <m.olbrich@pengutronix.de>
Subject: Re: [BUG] imx-sdma: readl_relaxed_poll_timeout_atomic() conversion
Message-ID: <20190622185150.b2megz2oinfvij3r@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <20190622181029.iy72xkz3xcomwjtl@pengutronix.de>
 <20190622184237.ld7xwc5kk7sbghae@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190622184237.ld7xwc5kk7sbghae@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_115159_610210_95F25F9E 
X-CRM114-Status: GOOD (  31.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMjIsIDIwMTkgYXQgMDc6NDI6MzdQTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IE9uIFNhdCwgSnVuIDIyLCAyMDE5IGF0IDA4OjEwOjI5
UE0gKzAyMDAsIE1pY2hhZWwgT2xicmljaCB3cm90ZToKPiA+IE9uIFNhdCwgSnVuIDIyLCAyMDE5
IGF0IDA1OjUzOjE4UE0gKzAxMDAsIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90
ZToKPiA+ID4gT2xkIGNvZGU6Cj4gPiA+IAo+ID4gPiAtICAgICAgIHdoaWxlICghKHJldCA9IHJl
YWRsX3JlbGF4ZWQoc2RtYS0+cmVncyArIFNETUFfSF9JTlRSKSAmIDEpKSB7Cj4gPiA+IC0gICAg
ICAgICAgICAgICBpZiAodGltZW91dC0tIDw9IDApCj4gPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgIGJyZWFrOwo+ID4gPiAtICAgICAgICAgICAgICAgdWRlbGF5KDEpOwo+ID4gPiAtICAgICAg
IH0KPiA+ID4gCj4gPiA+IFNvLCB3aGlsZSBiaXQgMCBpcyBfY2xlYXJfIHRoZSBsb29wIGNvbnRp
bnVlcyB0byBwb2xsLgo+ID4gPiAKPiA+ID4gCj4gPiA+IE5ldyBjb2RlOgo+ID4gPiAKPiA+ID4g
KyAgICAgICByZXQgPSByZWFkbF9yZWxheGVkX3BvbGxfdGltZW91dF9hdG9taWMoc2RtYS0+cmVn
cyArIFNETUFfSF9TVEFUU1RPUCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnLCAhKHJlZyAmIDEpLCAxLCA1MDApOwo+ID4gPiAKPiA+ID4g
RG9lc24ndCByZWFsbHkgdGVsbCB1cyB3aGF0IHRoZSB0ZXJtaW5hdGlvbiBjb25kaXRpb24gaXMg
KGJlY2F1c2Ugb2YKPiA+ID4gdGhlIG9iZnVzY2F0aW9uIHRha2luZyBhd2F5IHRoZSBkZXRhaWxz
KSwgYnV0IGlmIHdlIGRpZyBpbnRvIHRoZQo+ID4gPiBtYWNybyBtYXplOgo+ID4gPiAKPiA+ID4g
I2RlZmluZSByZWFkbF9yZWxheGVkX3BvbGxfdGltZW91dF9hdG9taWMoYWRkciwgdmFsLCBjb25k
LCBkZWxheV91cywgdGltZW91dF91cykgXAo+ID4gPiAgICAgICAgIHJlYWR4X3BvbGxfdGltZW91
dF9hdG9taWMocmVhZGxfcmVsYXhlZCwgYWRkciwgdmFsLCBjb25kLCBkZWxheV91cywgdGltZW91
dF91cykKPiA+ID4gCj4gPiA+ICNkZWZpbmUgcmVhZHhfcG9sbF90aW1lb3V0X2F0b21pYyhvcCwg
YWRkciwgdmFsLCBjb25kLCBkZWxheV91cywgdGltZW91dF91cykgXAo+ID4gPiAoeyBcCj4gPiA+
ICAgICAgICAgdTY0IF9fdGltZW91dF91cyA9ICh0aW1lb3V0X3VzKTsgXAo+ID4gPiAgICAgICAg
IHVuc2lnbmVkIGxvbmcgX19kZWxheV91cyA9IChkZWxheV91cyk7IFwKPiA+ID4gICAgICAgICBr
dGltZV90IF9fdGltZW91dCA9IGt0aW1lX2FkZF91cyhrdGltZV9nZXQoKSwgX190aW1lb3V0X3Vz
KTsgXAo+ID4gPiAgICAgICAgIGZvciAoOzspIHsgXAo+ID4gPiAgICAgICAgICAgICAgICAgKHZh
bCkgPSBvcChhZGRyKTsgXAo+ID4gPiAgICAgICAgICAgICAgICAgaWYgKGNvbmQpIFwKPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7IFwKPiA+ID4gCj4gPiA+ICJjb25kIiBpcyBw
YXNzZWQgaW4gdG8gaGVyZSB1bm1vZGlmaWVkLCBzbyB0aGlzIGJlY29tZXM6Cj4gPiA+IAo+ID4g
PiAJZm9yICg7Oykgewo+ID4gPiAJCXJlZyA9IHJlYWRsX3JlbGF4ZWQoc2RtYS0+cmVncyArIFNE
TUFfSF9TVEFUU1RPUCk7Cj4gPiA+IAkJaWYgKCEocmVnICYgMSkpCj4gPiA+IAkJCWJyZWFrOwo+
ID4gPiAKPiA+ID4gU28sIGlmIGJpdCAwIG9mIHRoaXMgcmVnaXN0ZXIgaXMgY2xlYXIsIHdlIHRl
cm1pbmF0ZSB0aGUgbG9vcC4KPiA+ID4gCj4gPiA+IFNlZW1zIHRvIG1lIGxpa2UgdGhpcyBpcyBh
IGdyZWF0IGlsbHVzdHJhdGlvbiB3aHkgdXNpbmcgYSBoZWxwZXIKPiA+ID4gX2ludHJvZHVjZXNf
IGJ1Z3MsIGJlY2F1c2UgaXQgaGlkZXMgdGhlIGRldGFpbCBhYm91dCB3aGF0IHRoZSBleGl0Cj4g
PiA+IGNvbmRpdGlvbiBmb3IgdGhlIGVtYmVkZGVkIGxvb3AgYWN0dWFsbHkgaXMsIGFuZCBsZWFk
cyB0byB0aGlzIGtpbmQKPiA+ID4gb2YgZXJyb3IuCj4gPiA+IAo+ID4gPiBJbiBhbnkgY2FzZSwg
dGhlIGNvbnZlcnNpb24gaXMgb2J2aW91c2x5IGluY29ycmVjdC4KPiA+ID4gCj4gPiA+IEkgb2Nj
YXNpb25hbGx5IHNlZSB0aGUgIlRpbWVvdXQgd2FpdGluZyBmb3IgQ0gwIHJlYWR5IiBlcnJvciBk
dXJpbmcKPiA+ID4gYm9vdCBvbiBhIGNiaTQsIHdoaWNoLCBnaXZlbiB0aGUgYWJvdmUsIG1lYW5z
IHRoYXQgd2UgZGlkIGVuZCB1cAo+ID4gPiBzZWVpbmcgYml0IDEgc2V0IChzbyBhY2NvcmRpbmcg
dG8gdGhlIG9sZCBjb2RlLCB3ZSB3YWl0ZWQKPiA+ID4gc3VjY2Vzc2Z1bGx5LikKPiA+IAo+ID4g
VGhlIG9sZCBjb2RlIHdhcyBwb2xsaW5nIFNETUFfSF9JTlRSIHNvIGl0IHdhaXRlZCBmb3IgdGhl
IGJpdCB0byBiZSBzZXQuCj4gPiBUaGUgbmV3IGNvZGUgKGFzIGRvY3VtZW50ZWQgaW4gdGhlIGNv
bW1pdCBtZXNzYWdlKSBwb2xscyBTRE1BX0hfU1RBVFNUT1AKPiA+IGluc3RlYWQuCj4gPiBJIGJl
bGlldmUgdGhpcyByZWdpc3RlciBpcyBjYWxsZWQgU0RNQUFSTV9TVE9QX1NUQVQgaW4gdGhlIHJl
ZmVyZW5jZQo+ID4gbWFudWFsLiBBbmQgdGhlIGRvY3VtZW50YXRpb24gc3RhdGVzOiAiUmVhZGlu
ZyB0aGlzIHJlZ2lzdGVyIHlpZWxkcyB0aGUKPiA+IGN1cnJlbnQgc3RhdGUgb2YgdGhlIEhFW2ld
IGJpdHMiLgo+ID4gQW5kIGZyb20gdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlIFNETUEgIkRPTkUi
IGluc3RydWN0aW9uOgo+ID4gIkNsZWFyIEhFIGJpdCBmb3IgdGhlIGN1cnJlbnQgY2hhbm5lbCwg
c2VuZCBhbiBpbnRlcnJ1cHQgdG8gdGhlIEFybQo+ID4gcGxhdGZvcm0gZm9yIHRoZSBjdXJyZW50
IGNoYW5uZWwgYW5kIHJlc2NoZWR1bGUuIgo+ID4gCj4gPiBNeSBpbnRlcnByZXRhdGlvbiBvZiB0
aGlzIGlzLCB0aGF0IHdhaXRpbmcgZm9yIHRoZSBiaXQgaW4gU0RNQV9IX1NUQVRTVE9QCj4gPiB0
byBiZWNvbWUgemVybyBoYXMgdGhlIHNhbWUgZWZmZWN0IGFzIHdhaXRpbmcgZm9yIHRoZSBiaXQg
aW4gU0RNQV9IX0lOVFIgdG8KPiA+IGJlIHNldC4gT3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8K
PiAKPiBTbywgd2h5IGRvIGFsbCBteSBpTVg2IHBsYXRmb3JtcyBub3cgcmFuZG9tbHkgc3BpdCBv
dXQ6Cj4gCj4gImlteC1zZG1hIDIwZWMwMDAuc2RtYTogVGltZW91dCB3YWl0aW5nIGZvciBDSDAg
cmVhZHkiCj4gCj4gYXQgYm9vdCwgd2hlcmVhcyB0aGV5IGRpZG4ndCB1c2VkIHRvIHdpdGggb2xk
ZXIga2VybmVscz8gIE1heWJlIGNoYW5uZWwKPiAwIGRvZXMgbm90IGNsZWFyIHRoZSBIRVswXSBi
aXQ/Cj4gCj4gVGhlIGRvY3VtZW50YXRpb24gZXhwbGljaXRseSBzdGF0ZXMgdGhhdCBmb3IgaW5p
dGlhbGlzYXRpb24sIHRoZQo+IGZvbGxvd2luZyBpcyByZXF1aXJlZDoKPiAKPiDigKIgU2V0IGJp
dCAwIG9mIHRoZSBTRE1BX0hTVEFSVCByZWdpc3RlciB0byBzZXQgSEVbMF0gYW5kIGFsbG93IENo
YW5uZWwgMAo+ICAgdG8gcnVuIChhc3N1bWVzIEVPWzBdIGFuZCBET1swXSB3ZXJlIGJvdGggc2V0
IGluIHByZXZpb3VzIHN0ZXApLiBUaGlzCj4gICB3aWxsIGNhdXNlIFNETUEgdG9sb2FkIHRoZSBw
cm9ncmFtIFJBTSBhbmQgY2hhbm5lbCBjb250ZXh0cyBjb25maWd1cmVkCj4gICBwcmV2aW91c2x5
Lgo+IOKAoiBXYWl0IGZvciBDaGFubmVsIDAgdG8gZmluaXNoIHJ1bm5pbmcuIFRoaXMgaXMgaW5k
aWNhdGVkIGJ5IEhJWzBdPTEgaW4KPiAgIHRoZSBTRE1BX1NETUFfSU5UUiByZWdpc3Rlciwgb3Ig
Ynkgb3B0aW9uYWwgaW50ZXJydXB0IHRvIHRoZSBBUk0gcGxhdGZvcm0uCj4gCj4gU28sIGlzIHRo
ZXJlIGEgd2F5IGZvciBhIEhJIGJpdCB0byBiZSBzZXQgd2l0aG91dCBjbGVhcmluZyB0aGUgSEUg
Yml0Pwo+IFllcywgdmlhIHRoZSBOT1RJRlkgY29tbWFuZDoKPiAKPiA1NS41LjIuMzUgTk9USUZZ
IChOb3RpZnkgdG8gQVJNIHBsYXRmb3JtKQo+IE9wZXJhdGlvbjoKPiBpZiAoampqICYgNCA9PSAw
KQo+IHsKPiAgIGlmIChqamomMiA9PSAyKQo+ICAgICBIRVtDQ1JdIOKGkCAwCj4gICBpZiAoampq
JjE9PSAxKQo+ICAgICBISVtDQ1JdIOKGkCAxCj4gfQo+IGVsc2UgaWYgKGpqaiA9PSA0KQo+ICAg
RVBbQ0NSXSDihpAgMAo+IGVsc2UKPiAKPiBTbywgaWYgampqIGlzIDAwMSBiaW5hcnksIHRoZSBI
RSBiaXQgY2FuIHJlbWFpbiBzZXQgd2hpbGUgdGhlIEhJIGJpdAo+IGlzIGNsZWFyZWQuICBNYXli
ZSB0aGUgZmlybXdhcmUgdXNlcyB0aGlzIHJhdGhlciB0aGFuIGEgRE9ORSBpbnN0cnVjdGlvbgoK
U29ycnksICpzZXQqLgoKPiB3aGVuIHBlcmZvcm1pbmcgdGhlIGluaXRpYWxpc2F0aW9uIGZ1bmN0
aW9ucywgd2hpY2ggbWVhbnMgeW91ciBpZGVhIG9mCj4gZ29pbmcgYWdhaW5zdCB3aGF0IGlzIHNw
ZWNpZmllZCBpbiB0aGUgbWFudWFsLCBhbmQgdXNpbmcgSEVbMF0gaW5zdGVhZAo+IG9mIEhJWzBd
IGlzIG9uIF92ZXJ5XyBzaGFrZXkgZ3JvdW5kLgo+IAo+IEdpdmVuIHRoYXQgSSdtIHNlZWluZyB0
aGUgc2FtZSBpc3N1ZSBvbiBfZm91cl8gaU1YNiBwbGF0Zm9ybXMgaGVyZSwKPiBJIHRoaW5rIGl0
J3MgcHJldHR5IG11Y2ggb2J2aW91cyB0aGF0IHlvdXIgYXNzdW1wdGlvbnMgaGVyZSBhcmUKPiBm
YWxzZS4KPiAgCj4gPiBNaWNoYWVsCj4gPiAKPiA+ID4gTG9va2luZyBhdCB0aGUgZGF0ZSBvZiB0
aGUgY29tbWl0LCB0aGlzIGlzIGFsbW9zdCBhIHRocmVlIHllYXIgb2xkCj4gPiA+IGJ1Zy4KPiA+
ID4gCj4gPiA+IC0tIAo+ID4gPiBSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxp
bnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KPiA+ID4gRlRUQyBicm9hZGJhbmQgZm9yIDAu
OG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAK
PiA+ID4gQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1
cAo+ID4gPiAKPiA+IAo+ID4gLS0gCj4gPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ID4gSW5kdXN0cmlh
bCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25p
eC5kZS8gIHwKPiA+IFBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8
IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8Cj4gPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWlt
LCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAo+ID4g
Cj4gCj4gLS0gCj4gUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcu
dWsvZGV2ZWxvcGVyL3BhdGNoZXMvCj4gRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBp
biBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKPiBBY2NvcmRpbmcg
dG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2Rl
dmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVy
YmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0
ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
