Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4061A1C6ECA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tESGwkYSlws2xrVD01lNKgLzP4m3d21KLhv73AicXlw=; b=UR2NZKfUK/PQiW
	q65RZBF2lmeUKvOTV6piH4Mo/pbdUGwjrIP7vVarXFs+m9WcnBggrfWNuFpDefZQKIoAZczlGOk6+
	WwE5EysqC2VODyjI3/bfPbLuvluKdWmG3u74r2xrbjNIlZsEn5i6Yzw4ve4+++6s5UTRwkeKvSqeZ
	UBJv6iKEiFBxae2M2Xyx0dc84JW1ss4VRtPIN5qBHdTeXTdFSZpLS2ug2nhstAt8EnxscANsZgDNo
	GKPLImp1u9L7Qyo8Lw66vWQl7cBmQglI4Ed2BjFAzokh1XQN5sBIElkf52rEcgc7otEPjI0LFEXTb
	zPN7JlJKjECfXa/N5ElA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHk0-00064s-Ff; Wed, 06 May 2020 10:57:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHjs-00064N-8L
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:57:21 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7B60C542;
 Wed,  6 May 2020 12:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1588762630;
 bh=I32MyCC1OP7H6t9W79KkSA6a9fzxwOzEUBb+afX4P4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i7SNdHtQbq4vuSVOE2RZ/TTsLrJ3ZtC7kV6kj1Jul5bHr8PpsaXbp/Rjk4G0Bon/G
 FIqq7cXx88nyUoRFXwoSDuc63I5rrjkx5eggYd22vCoRN9ptrUT418sq95diDES5xS
 Q3yE86YU4rfBT7G+xiQ8Ga3gf2eoKre6DRYQbnWs=
Date: Wed, 6 May 2020 13:57:05 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200506105705.GA5946@pendragon.ideasonboard.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
 <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
 <20200506082332.57ptj42mkrrn4ceo@rcn-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506082332.57ptj42mkrrn4ceo@rcn-XPS-13-9360>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_035720_443427_4E903578 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMTA6MjM6MzJBTSArMDIwMCwgUmljYXJkbyBDYcOxdWVs
byB3cm90ZToKPiBIaSBHZWVydCwKPiAKPiBUaGFua3MgZm9yIHJldmlld2luZyB0aGUgcGF0Y2hl
cy4gU29tZSBjb21tZW50cyBiZWxvdywKPiAKPiBPbiBtacOpIDA2LTA1LTIwMjAgMDk6NDQ6MTks
IEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZTogCj4gPiBDYW4ndCB5b3UgYXZvaWQgdGhlIG5lZWQg
Zm9yIHBhdGNoZXMKPiA+IFtSRlQgUEFUQ0ggMS81XSBhcm02NDogZHRzOiBkcmFhazogUmVvcmRl
ciBoZG1pLWVuY29kZXJAMzkgcmVnIGFuZAo+ID4gcmVnLW5hbWVzIHByb3BlcnRpZXMKPiA+IFtS
RlQgUEFUQ0ggMi81XSBBUk06IGR0czogd2hlYXQ6IHJlb3JkZXIgcmVnIGFuZCByZWctbmFtZXMg
cHJvcGVydGllcwo+ID4gaW4gaGRtaSBicmlkZ2VzCj4gPiAKPiA+IGJ5IHVzaW5nCj4gPiAKPiA+
ICAgICBpdGVtczoKPiA+ICAgICAgIGVudW06Cj4gPiAgICAgICAgIC0gbWFpbgo+ID4gICAgICAg
ICAtIGVkaWQKPiA+ICAgICAgICAgLSBjZWMKPiA+ICAgICAgICAgLSBwYWNrZXQKPiA+IAo+ID4g
aW5zdGVhZD8KPiAKPiBOb3QgcmVhbGx5LCBiZWNhdXNlIHRoYXQgZGVmaW5lcyBhIHNjYWxhciBw
cm9wZXJ0eSB0aGF0IGNhbiB0YWtlIGFueSBvZgo+IHRob3NlIHZhbHVlcyAoaWYgSSdtIG5vdCBt
aXN0YWtlbiksIGFuZCB0aGUgY29yZSBzY2hlbWEgZW5mb3JjZXMgdGhhdAo+IHJlZy1uYW1lcyBt
dXN0IGJlIGFuIGFycmF5Lgo+IAo+IEkgdGhpbmsgdGhlIGNsb3Nlc3QgSSBjYW4gZ2V0IHRvIHdo
YXQgeW91IG1lYW4gd291bGQgYmUgc29tZXRoaW5nIGxpa2UKPiB0aGlzOgo+IAo+ICAgICBpdGVt
czoKPiAgICAgICAtIGVudW06Cj4gICAgICAgICAtIG1haW4KPiAgICAgICAgIC0gZWRpZAo+ICAg
ICAgICAgLSBjZWMKPiAgICAgICAgIC0gcGFja2V0Cj4gICAgICAgLSBlbnVtOgo+ICAgICAgICAg
LSBtYWluCj4gICAgICAgICAtIGVkaWQKPiAgICAgICAgIC0gY2VjCj4gICAgICAgICAtIHBhY2tl
dAo+ICAgICAgIC0gZW51bToKPiAgICAgICAgIC0gbWFpbgo+ICAgICAgICAgLSBlZGlkCj4gICAg
ICAgICAtIGNlYwo+ICAgICAgICAgLSBwYWNrZXQKPiAgICAgICAtIGVudW06Cj4gICAgICAgICAt
IG1haW4KPiAgICAgICAgIC0gZWRpZAo+ICAgICAgICAgLSBjZWMKPiAgICAgICAgIC0gcGFja2V0
Cj4gCj4gQnV0IHRoZW4gdGhhdCB3b3VsZG4ndCBwcmV2ZW50IGFueW9uZSBmcm9tIGRlZmluaW5n
IGR1cGxpY2F0ZSByZWctbmFtZXMKPiAoZWcuICJtYWluIiwgImNlYyIsIGVkaWQiLCAiY2VjIiks
IHdoaWNoIGlzIGV2ZW4gd29yc2UgSU1PLgoKVGhlIGRpcmVjdGlvbiBEVCBiaW5kaW5ncyBhcmUg
dGFraW5nIGlzIHRvIGVuZm9yZSBhIHBhcnRpY3VsYXIgb3JkZXIuIEl0CndpbGwgY2F1c2UgRFQg
dmFsaWRhdGlvbiBlcnJvcnMgZm9yIG9sZCBkZXZpY2UgdHJlZXMsIGJ1dCBpdCB3b24ndCBicmVh
awpiYWNrd2FyZCBjb21wYXRpYmlsaXR5IGFzIHRoZSBvcmRlciB3b24ndCBiZSBlbmZvcmNlZCBh
dCBydW50aW1lLCBzbyBJCnRoaW5rIHRoYXQncyBmaW5lLiBUaWR5aW5nIHVwIHRoZSBleGlzdGlu
ZyBEVCBzb3VyY2VzIHRvIHVzZSBhCmNvbnNpc3RlbnQgb3JkZXIgc2VlbXMgYmVzdCB0byBtZS4K
Ci0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
