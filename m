Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F16426B76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 21:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2NW9djbj/Z7oXNKCdXuTUFDhfrlLwRiXek+LWu55vU=; b=SYa02Qq1C5ccWR
	0SC/yoWGph2OsqPULAnruBe1QZ59mSxCbsdS7C2d69Sm+WL55YqvwKSiz19ZIUOoWMwEUqUsm0Zdi
	ROAmI731XvANBQFajuJHt+GTwiSW7yquGFYPDu3qwoZ4K2sRP5G9nPSwbYKW6OX+FYWnK4R3dwiy8
	GuMcsnUbsZIz4jw5Prcv6vFViLJIpecq/cpwCdpjuNT8HRSUd2zpUeVexozik80nXIPDDMVOC4yFj
	DbvR2+f1k1tU/fB8Ioa3FUfof7nxwHagdSBz7/ZZqCTqVIzDmnJqT8zhLdbl9DwcxylmWQAIdo0l/
	iP14h5Tu2nAqRJjDrF0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWtb-00044I-Ut; Wed, 22 May 2019 19:27:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWtU-00043S-AL
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 19:27:21 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E77E821880
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 19:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558553240;
 bh=hlAVIiOpRcQkmn1FUyVhG2T73UvpIg1zkjRYmBGZFbY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iJ9rpfbd2rv6v3D4lAjk3XAx6LiuJ1QwweDrobD9sc2Rq9jjukvgLxtf9Z6bsyYvl
 h7svq0ygKqIntZoPr6aG5/rmJQzL4gL6dXYn/n/Kgb8bOsMZ2oq3/B6kedC79uwqyK
 z6dhugAon3gLUC97OTzeg0GfrOQs/ZoISnlsFDLg=
Received: by mail-qt1-f182.google.com with SMTP id l3so3833663qtj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 12:27:19 -0700 (PDT)
X-Gm-Message-State: APjAAAXxLa9r8VxLr57EUr5NoXr8Ur554DENE35so6CBwDTazWBpg17Q
 uMryURnI7JPy/VYf49B29GzbJoipH+6Dptzyog==
X-Google-Smtp-Source: APXvYqy+PeJM7o3ppEVTbfv/xeDCVQT0aKFYAppgCGRW5RshOFOrnfI1FkipG2N2RO8u2GCiHsgMEikYAzbvgjw3ptY=
X-Received: by 2002:ac8:7688:: with SMTP id g8mr48798907qtr.224.1558553239094; 
 Wed, 22 May 2019 12:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190521161102.29620-1-peron.clem@gmail.com>
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 22 May 2019 14:27:07 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+86nNEBzjbf_GLWWrAN91jwU+JQ7zrEoFaT_dxUzVv4A@mail.gmail.com>
Message-ID: <CAL_Jsq+86nNEBzjbf_GLWWrAN91jwU+JQ7zrEoFaT_dxUzVv4A@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] Allwinner H6 Mali GPU support
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Joerg Roedel <joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_122720_385132_EE37C342 
X-CRM114-Status: GOOD (  18.94  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMTE6MTEgQU0gQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5j
bGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IFRoZSBBbGx3aW5uZXIgSDYgaGFzIGEg
TWFsaS1UNzIwIE1QMiB3aGljaCBzaG91bGQgYmUgc3VwcG9ydGVkIGJ5Cj4gdGhlIG5ldyBwYW5m
cm9zdCBkcml2ZXIuIFRoaXMgc2VyaWVzIGZpeCB0d28gaXNzdWVzIGFuZCBpbnRyb2R1Y2UgdGhl
Cj4gZHQtYmluZGluZ3MgYnV0IGEgc2ltcGxlIGJlbmNobWFyayBzaG93IHRoYXQgaXQncyBzdGls
bCBOT1QgV09SS0lORy4KPgo+IEknbSBwdXNoaW5nIGl0IGluIGNhc2Ugc29tZW9uZSB3YW50IHRv
IGNvbnRpbnVlIHRoZSB3b3JrLgo+Cj4gVGhpcyBoYXMgYmVlbiB0ZXN0ZWQgd2l0aCBNZXNhM0Qg
MTkuMS4wLVJDMiBhbmQgYSBHUFUgYml0bmVzcyBwYXRjaFsxXS4KPgo+IE9uZSBwYXRjaCBpcyBm
cm9tIEljZW5vd3kgWmhlbmcgd2hlcmUgSSBjaGFuZ2VkIHRoZSBvcmRlciBhcyByZXF1aXJlZAo+
IGJ5IFJvYiBIZXJyaW5nWzJdLgo+Cj4gVGhhbmtzLAo+IENsZW1lbnQKPgo+IFsxXSBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcva3N6YXEvbWVzYS90cmVlL3BhbmZyb3N0XzY0XzMyCj4g
WzJdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA2OTk4MjkvCj4KPgo+IFsg
IDM0NS4yMDQ4MTNdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUgaXJxIHN0YXR1cz0xCj4gWyAg
MzQ1LjIwOTYxN10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGlu
IEFTMCBhdCBWQQo+IDB4MDAwMDAwMDAwMjQwMDQwMAo+IFsgIDM0NS4yMDk2MTddIFJlYXNvbjog
VE9ETwo+IFsgIDM0NS4yMDk2MTddIHJhdyBmYXVsdCBzdGF0dXM6IDB4ODAwMDAyQzEKPiBbICAz
NDUuMjA5NjE3XSBkZWNvZGVkIGZhdWx0IHN0YXR1czogU0xBVkUgRkFVTFQKPiBbICAzNDUuMjA5
NjE3XSBleGNlcHRpb24gdHlwZSAweEMxOiBUUkFOU0xBVElPTl9GQVVMVF9MRVZFTDEKPiBbICAz
NDUuMjA5NjE3XSBhY2Nlc3MgdHlwZSAweDI6IFJFQUQKPiBbICAzNDUuMjA5NjE3XSBzb3VyY2Ug
aWQgMHg4MDAwCj4gWyAgMzQ1LjcyOTk1N10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGdwdSBzY2hl
ZCB0aW1lb3V0LCBqcz0wLAo+IHN0YXR1cz0weDgsIGhlYWQ9MHgyNDAwNDAwLCB0YWlsPTB4MjQw
MDQwMCwgc2NoZWRfam9iPTAwMDAwMDAwOWUyMDRkZTkKPiBbICAzNDYuMDU1ODc2XSBwYW5mcm9z
dCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQo+IFsgIDM0Ni4wNjA2ODBdIHBhbmZyb3N0
IDE4MDAwMDAuZ3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKPiAweDAwMDAw
MDAwMDJDMDBBMDAKPiBbICAzNDYuMDYwNjgwXSBSZWFzb246IFRPRE8KPiBbICAzNDYuMDYwNjgw
XSByYXcgZmF1bHQgc3RhdHVzOiAweDgxMDAwMkMxCj4gWyAgMzQ2LjA2MDY4MF0gZGVjb2RlZCBm
YXVsdCBzdGF0dXM6IFNMQVZFIEZBVUxUCj4gWyAgMzQ2LjA2MDY4MF0gZXhjZXB0aW9uIHR5cGUg
MHhDMTogVFJBTlNMQVRJT05fRkFVTFRfTEVWRUwxCj4gWyAgMzQ2LjA2MDY4MF0gYWNjZXNzIHR5
cGUgMHgyOiBSRUFECj4gWyAgMzQ2LjA2MDY4MF0gc291cmNlIGlkIDB4ODEwMAo+IFsgIDM0Ni41
NjE5NTVdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBncHUgc2NoZWQgdGltZW91dCwganM9MSwKPiBz
dGF0dXM9MHg4LCBoZWFkPTB4MmMwMGEwMCwgdGFpbD0weDJjMDBhMDAsIHNjaGVkX2pvYj0wMDAw
MDAwMGI1NWE5YTg1Cj4gWyAgMzQ2LjU3MzkxM10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBp
cnEgc3RhdHVzPTEKPiBbICAzNDYuNTc4NzA3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogVW5oYW5k
bGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCj4gMHgwMDAwMDAwMDAyQzAwQjgwCj4KPiBDaGFu
Z2UgaW4gdjU6Cj4gIC0gUmVtb3ZlIGZpeCBpbmRlbnQKPgo+IENoYW5nZXMgaW4gdjQ6Cj4gIC0g
QWRkIGJ1c19jbG9jayBwcm9iZQo+ICAtIEZpeCBzYW5pdHkgY2hlY2sgaW4gaW8tcGd0YWJsZQo+
ICAtIEFkZCB2cmFtcC1kZWxheQo+ICAtIE1lcmdlIGFsbCBib2FyZHMgaW50byBvbmUgcGF0Y2gK
PiAgLSBSZW1vdmUgdXBzdHJlYW1lZCBOZWlsIEEuIHBhdGNoCj4KPiBDaGFuZ2UgaW4gdjMgKFRo
YW5rcyB0byBNYXhpbWUgUmlwYXJkKToKPiAgLSBSZWF1dGhvciBJY2Vub3d5IGZvciBoZXIgcGF0
aAo+Cj4gQ2hhbmdlcyBpbiB2MiAoVGhhbmtzIHRvIE1heGltZSBSaXBhcmQpOgo+ICAtIERyb3Ag
R1BVIE9QUCBUYWJsZQo+ICAtIEFkZCBjbG9ja3MgYW5kIGNsb2NrLW5hbWVzIGluIHJlcXVpcmVk
Cj4KPiBDbMOpbWVudCBQw6lyb24gKDUpOgo+ICAgZHJtOiBwYW5mcm9zdDogYWRkIG9wdGlvbmFs
IGJ1c19jbG9jawo+ICAgaW9tbXU6IGlvLXBndGFibGU6IGZpeCBzYW5pdHkgY2hlY2sgZm9yIG5v
biA0OC1iaXQgbWFsaSBpb21tdQo+ICAgZHQtYmluZGluZ3M6IGdwdTogbWFsaS1taWRnYXJkOiBB
ZGQgSDYgbWFsaSBncHUgY29tcGF0aWJsZQo+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBBZGQg
QVJNIE1hbGkgR1BVIG5vZGUgZm9yIEg2Cj4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IEFkZCBt
YWxpIEdQVSBzdXBwbHkgZm9yIEg2IGJvYXJkcwo+Cj4gSWNlbm93eSBaaGVuZyAoMSk6Cj4gICBk
dC1iaW5kaW5nczogZ3B1OiBhZGQgYnVzIGNsb2NrIGZvciBNYWxpIE1pZGdhcmQgR1BVcwoKSSd2
ZSBhcHBsaWVkIHBhdGNoZXMgMSBhbmQgMyB0byBkcm0tbWlzYy4gSSB3YXMgZ29pbmcgdG8gZG8g
cGF0Y2ggNAp0b28sIGJ1dCBpdCBkb2Vzbid0IGFwcGx5LgoKUGF0Y2ggMiBjYW4gZ28gaW4gdmlh
IHRoZSBpb21tdSB0cmVlIGFuZCB0aGUgcmVzdCB2aWEgdGhlIGFsbHdpbm5lciB0cmVlLgoKUm9i
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
