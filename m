Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5443F13CC13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q5kbV4Q8VQMcOyr7GdcEcn/93oH0l/nTWVQnjlFOPE=; b=NnARFq1Z/VxvNW
	MeA+8lISPXz8KjwZbXh71OKyF7W8/C3UWPlcU8BOmNtzArZBjY4bP8HqYQOiyecmL8rHeSrUvsqvL
	EAJaAVmmPeSDRWg+EY7iZldNxXex6r4x7kTTUAOfBAOUNEHihP+v9yDGjeP/O7ZEcw5vGs/uUFe4W
	oWafB3P5N2wFHBMQ+agmZ2sjfw6rvY+tL4Ha1jsNTMSmxeXVpl2U6YdqJaouHG+r/tDUzhKzmpyxz
	FEeyk914lXvdcjLu65WdpvyXJljcPt/D3yVUwapJPsSPkeBn0MGDjJwq2Dk3Z6WISVQaamGXK25Dg
	0CfbVqpPtOvy5Yje98gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnOE-0005Ti-7O; Wed, 15 Jan 2020 18:27:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnO0-0005QE-0K
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 18:27:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 167AC214AF;
 Wed, 15 Jan 2020 18:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579112842;
 bh=TFG8GMBRpn9SRCREAtd9dchAgn0G4fu0C4dY4SOsvm8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TDwxQqI+PVcoRJ54VnYjH2AYi/CrpFuouks89vAHAwuqsdMmRQ15AuMyVpU77OrF0
 3b8LrdocWZLKtQo5aSIzt6DnLb8pC5cnv9yFgTvhU0djP556qc4PsHMg6sXrwg/Mfr
 Ij8VFO+zW/QoLjTk9X3Np/zU2HQRodFHP1SAhQME=
Date: Wed, 15 Jan 2020 18:27:18 +0000
From: Will Deacon <will@kernel.org>
To: Rachel Sibley <rasibley@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.5.0-rc6-e31626d.cki (arm-next)
Message-ID: <20200115182717.GC31673@willie-the-truck>
References: <cki.8C73ABC341.AD9Q7PNV7C@redhat.com>
 <20200115175414.GB31673@willie-the-truck>
 <5d991a60-f98e-cc47-7188-d996d0832bb3@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d991a60-f98e-cc47-7188-d996d0832bb3@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_102724_069247_BA49274E 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 catalin.marinas@arm.com, Jianlin Shi <jishi@redhat.com>,
 CKI Project <cki-project@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmFjaGVsLAoKT24gV2VkLCBKYW4gMTUsIDIwMjAgYXQgMDE6MTE6MDRQTSAtMDUwMCwgUmFj
aGVsIFNpYmxleSB3cm90ZToKPiBPbiAxLzE1LzIwIDEyOjU0IFBNLCBXaWxsIERlYWNvbiB3cm90
ZToKPiA+IE9uIFdlZCwgSmFuIDE1LCAyMDIwIGF0IDA1OjM4OjI2UE0gLTAwMDAsIENLSSBQcm9q
ZWN0IHdyb3RlOgo+ID4gPiBXZSByYW4gYXV0b21hdGVkIHRlc3RzIG9uIGEgcmVjZW50IGNvbW1p
dCBmcm9tIHRoaXMga2VybmVsIHRyZWU6Cj4gPiA+IAo+ID4gPiAgICAgICAgIEtlcm5lbCByZXBv
OiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGlu
dXguZ2l0Cj4gPiA+ICAgICAgICAgICAgICBDb21taXQ6IGUzMTYyNmQ0NDNkYiAtIE1lcmdlIGJy
YW5jaGVzICdmb3ItbmV4dC9hc20tYW5ub3RhdGlvbnMnLCAnZm9yLW5leHQvY3B1ZmVhdHVyZXMn
LCAnZm9yLW5leHQvZTBwZCcsICdmb3ItbmV4dC9rZXhlYy9jbGVhbnVwJywgJ2Zvci1uZXh0L2tl
eGVjL2ZpbGUta2R1bXAnLCAnZm9yLW5leHQvbWlzYycsICdmb3ItbmV4dC9ub2Zwc2ltZCcgYW5k
ICdmb3ItbmV4dC9wZXJmJyBpbnRvIGZvci1rZXJuZWxjaQo+ID4gPiAKPiA+ID4gVGhlIHJlc3Vs
dHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92aWRlZCBiZWxvdy4KPiA+ID4gCj4g
PiA+ICAgICAgT3ZlcmFsbCByZXN1bHQ6IEZBSUxFRCAoc2VlIGRldGFpbHMgYmVsb3cpCj4gPiA+
ICAgICAgICAgICAgICAgTWVyZ2U6IE9LCj4gPiA+ICAgICAgICAgICAgIENvbXBpbGU6IE9LCj4g
PiA+ICAgICAgICAgICAgICAgVGVzdHM6IEZBSUxFRAo+ID4gPiAKPiA+ID4gQWxsIGtlcm5lbCBi
aW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9h
ZCBoZXJlOgo+ID4gPiAKPiA+ID4gICAgaHR0cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qub3Jn
L3BpcGVsaW5lcy8zODM3ODcKPiA+ID4gCj4gPiA+IE9uZSBvciBtb3JlIGtlcm5lbCB0ZXN0cyBm
YWlsZWQ6Cj4gPiA+IAo+ID4gPiAgICAgIGFhcmNoNjQ6Cj4gPiA+ICAgICAgIOKdjCBOZXR3b3Jr
aW5nIHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3QKPiA+ID4gICAgICAg4p2MIE5ldHdvcmtpbmcg
dHVubmVsOiBncmUgYmFzaWMKPiA+IAo+ID4gCj4gPiBIbW0uIElmIEkgbG9vayBhdCB0aGUgZmls
ZXMgY29ycmVzcG9uZGluZyB0byB0aG9zZSB0ZXN0cyBpbiB0aGUgbG9ncyBsaW5rZWQKPiA+IHRv
IGFib3ZlLCB0aGV5IGFsbCBzZWVtIHRvIGhhdmUgcGFzc2VkLiBGb3IgZXhhbXBsZToKPiA+IAo+
ID4gaHR0cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qub3JnL3BpcGVsaW5lcy8zODM3ODcvbG9n
cy9hYXJjaDY0X2hvc3RfMV9OZXR3b3JraW5nX3R1bm5lbF9fZ3JlX2Jhc2ljX3Jlc3VsdG91dHB1
dGZpbGUubG9nCj4gPiAKPiA+IEFtIEkgbWlzc2luZyBzb21ldGhpbmc/Cj4gCj4gVGhpcyBpcyBh
biBpbmZyYXN0cnVjdHVyZSBwcm9ibGVtIHdpdGggcmVzdHJhaW50IGhhcm5lc3MsIGl0J3MgdGFr
aW5nIHRvbwo+IGxvbmcgZXh0cmFjdGluZyB0aGUgdGVzdHMtYmVha2VyIHJlcG8gd2hlcmUgb3Vy
IHRlc3RzIGxpdmUgYW5kIHdhdGNoZG9nIGlzCj4gYWJvcnRpbmcgdGhlIHRlc3RzIGR1cmluZyBz
ZXR1cCBwaGFzZS4gV2UgYXJlIGFjdGl2ZWx5IGRlYnVnZ2luZyB0aGlzCj4gcHJvYmxlbS4gRmVl
bCBmcmVlIHRvIGlnbm9yZSB0aGVzZSBmYWlsdXJlcywgc29ycnkgZm9yIHRoZSBub2lzZSEKCk9r
ZXkgZG9rZSwgSSdtIG1vcmUgdGhhbiBoYXBweSB0byBpZ25vcmUgdGhlbSA6KQoKVGhhbmtzIGZv
ciB0aGUgcXVpY2sgcmVwbHkuCgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
