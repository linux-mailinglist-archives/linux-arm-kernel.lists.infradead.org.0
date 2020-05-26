Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B06C1E192F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 03:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MskATgaY/CUbtAaFoZRHxY7cZiDOrMUxl25z00Pih+M=; b=m7fWTfxJvWqrvn
	LDfTTWbSzrlcHO7HfDF50RuBLXc/uxyGO8UgpEwAIxfQtZJ5QR7Bctwdv6ZZIlvY2NADVfmW+Blwp
	8YAavovqon6otxDQvanCbXl17e+v9rkd9QMA2CXTpFfFtZwITR1Nf4yxhOLkEqbKcrbeG1trHjPzS
	qKBbtArRJ7J16KWhGEiH9FfInsBhSAyz5j/dvt846tmHBnXt9b9+LsengYCFfEnlyEPzhS9pqIg+p
	mNP8fU2pJeGqlP3N+vDF+35nmZgdViuAjbIec64tkL5MwIvW1IjwHotRN3Yrdq409D0N2EZ9mIcE7
	Ui22AjMOdvvi+YJXvSZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdOei-0006NB-Hu; Tue, 26 May 2020 01:45:24 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdOeK-00067i-T8
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 01:45:02 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C9451562;
 Tue, 26 May 2020 03:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590457498;
 bh=WO78qSn6qRwq865tLbnkjyz39KiwOC685Y01AfjqX8Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rA+7VCeTSx+FV23WUjOiz5m8cbmHlx4/aL4TkVantAECyeFmxUUHm95x+oMH4c+SV
 OGbgf6UGcxxX4SjIxTDtGCPDi+GASoR9QZ33Pk1VtSiHyx+ahqYqu8jgmwYCUh8olo
 J3viD2UCBZEgtvz3Ctc33evH4Agj2X+2aUQWLEII=
Date: Tue, 26 May 2020 04:44:44 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200526014444.GB6179@pendragon.ideasonboard.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_184501_091406_2084833F 
X-CRM114-Status: GOOD (  13.02  )
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKCk9uIE1vbiwgTWF5IDI1LCAyMDIwIGF0IDA5OjQzOjM1QU0gKzAyMDAsIFJp
Y2FyZG8gQ2HDsXVlbG8gd3JvdGU6Cj4gT24ganVlIDE0LTA1LTIwMjAgMTg6MjI6MzksIExhdXJl
bnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+IElmIHdlIHdhbnQgdG8gYmUgbW9yZSBzdHJpY3QgYW5k
IHJlcXVpcmUgdGhlIGRlZmluaXRpb24gb2YgYWxsIHRoZQo+ID4gPiBzdXBwbGllcywgdGhlcmUg
d2lsbCBiZSBtYW55IG1vcmUgRFRzIGNoYW5nZXMgaW4gdGhlIHNlcmllcywgYW5kIEknbSBub3QK
PiA+ID4gc3VyZSBJJ2xsIGJlIGFibGUgdG8gZG8gdGhhdCBpbiBhIHJlYXNvbmFibGUgYW1vdW50
IG9mIHRpbWUuIEknbSBsb29raW5nCj4gPiA+IGF0IHRoZW0gYW5kIGl0J3Mgbm90IGFsd2F5cyBj
bGVhciB3aGljaCByZWd1bGF0b3JzIHRvIHVzZSBvciBpZiB0aGV5IGFyZQo+ID4gPiBldmVuIGRl
ZmluZWQuCj4gPiAKPiA+IFdlIGNhbiBkZWNvdXBsZSB0aGUgdHdvIHRob3VnaCAoSSB0aGluayku
IFRoZSBiaW5kaW5ncyBzaG91bGQgcmVmbGVjdAo+ID4gd2hhdCB3ZSBjb25zaWRlciByaWdodCwg
YW5kIHRoZSBkdHMgZmlsZXMgY291bGQgYmUgZml4ZWQgb24gdG9wLgo+IAo+IERvIHlvdSBoYXZl
IGEgc3VnZ2VzdGlvbiBvbiBob3cgdG8gZG8gdGhpcz8gSWYgd2UgZGVjb3VwbGUgdGhlIHR3bwo+
IHRhc2tzIG1vc3Qgb2YgdGhlIHdvcmsgd291bGQgYmUgc2VhcmNoaW5nIGZvciBEVHMgdG8gZml4
IGFuZCBmaW5kaW5nIGEKPiB3YXkgdG8gZml4IGVhY2ggb25lIG9mIHRoZW0sIGFuZCB1bmxlc3Mg
SSBkbyB0aGlzIF9iZWZvcmVfIHRoZSBiaW5kaW5nCj4gY29udmVyc2lvbiBJJ2xsIGdldCBhIGxv
dCBvZiBkdGJzX2NoZWNrIGVycm9ycy4KClJvYiBzaG91bGQgYW5zd2VyIHRoaXMgcXVlc3Rpb24g
YXMgaXQgd2lsbCBiZSBoaXMgZGVjaXNpb24sIGJ1dCBJJ3ZlCnBlcnNvbmFsbHkgbmV2ZXIgY29u
c2lkZXJlZCBub24tY29tcGxpYW50IERUIHNvdXJjZXMgdG8gYmUgYW4gb2JzdGFjbGUKdG8gYmlu
ZGluZ3MgY29udmVyc2lvbiB0byBZQU1MLiBUaGUgRFQgc291cmNlcyBzaG91bGQgYmUgZml4ZWQs
IGJ1dCBJCmRvbid0IHNlZSBpdCBhcyBhIHByZXJlcXVpc2l0ZSAoYWx0aG91Z2ggaXQncyBhIGdv
b2QgcHJhY3RpY2UpLgoKPiBUaGUgYmluZGluZyBjb252ZXJzaW9uIGl0c2VsZiBpcyBkb25lLCBp
ZiB3ZSBnbyB0aGlzIHJvdXRlIHRoZSBvbmx5Cj4gYWRkaXRpb25hbCBjaGFuZ2Ugd291bGQgYmUg
dG8gbWFrZSB0aGUgc3VwcGxpZXMgcmVxdWlyZWQuCgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGlu
Y2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
