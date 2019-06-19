Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134C84BAC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AbhbIOC+yDgtskLLA0NhL6WHCPGmtpdHBne9FrlyBw=; b=IBTMV2D77u9N0F
	nYNrTcyH0bUavvdbARb+zkmXKVzNsUskGgNTvlcEghNXRKDxfEaksjqjOWuGIQgS55F7j+mg7wYce
	6RDHoCQAPczfm/s91lnyJlz7esg+FKcax5L30EEJAw0R2ONf4qp7ZE2Nu0fYX23FLDU7YO/5JywS8
	KivJeU6PY4N5F8GZTtbjqUIvzul52H/L5qi6NRG4adDMZG9QiKZ1QyWk64WWCNhq0+UzP5dNdVPgJ
	VV7W7xgOexEoj2vFkevpRu0phTOf/n3DopPYcRvdeCmmBFlnWAlOoFpgYZxVv0lKcJ/8oGHrfZ0BU
	VdjNcsXdQha7cvei0meA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbFQ-0005pd-GB; Wed, 19 Jun 2019 14:07:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbFE-0005pH-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:07:26 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F1B4206BF
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560953244;
 bh=Gv7KaRBWqiqr3hW8zTUm5eDPSIyUp9V9W3hE/9RwchI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ebHr6ZJnDUdRxTmLYwVgZWVw2cuDekuQMurelaVmvUxad7olctK7riRoGsa5LgR9J
 i5uxAXpMzEkYK4dkvPkri1khmIAyvl+KYKnL7wp4kxhHTfcj/IjDo3dLpcRroofOSY
 aHlVppyz5OgrlfmDW2mooBYVNFQhv7Zj64ZsFV64=
Received: by mail-qt1-f176.google.com with SMTP id s15so19972096qtk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:07:24 -0700 (PDT)
X-Gm-Message-State: APjAAAVAqEi34hLlIVlozL3UaEtj4OsrnUU3BLGRcliUj6u67l4ply5s
 JGLQ5yzQb8GJN3qC45RI0P8tbda7Yu36XBS5LQ==
X-Google-Smtp-Source: APXvYqwvt27LPCNKqYdTaksDB3XZrSVKGXUlUZqYHZQFzDcc2DcbrKLZm3Rpj9gJvYsnzw4i6A/E6B7YVSBCmxedYAQ=
X-Received: by 2002:a0c:8a43:: with SMTP id 3mr34267465qvu.138.1560953243742; 
 Wed, 19 Jun 2019 07:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190508103703.40885-1-wen.he_1@nxp.com>
 <20190613200813.GA895@bogus>
 <DB7PR04MB5195E49670279C9A28C28A5EE2EB0@DB7PR04MB5195.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB5195E49670279C9A28C28A5EE2EB0@DB7PR04MB5195.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 19 Jun 2019 08:07:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJnBw+OqEX46CC1E2=9CDmeT8hQtvMpufsnU8z3+1RoBQ@mail.gmail.com>
Message-ID: <CAL_JsqJnBw+OqEX46CC1E2=9CDmeT8hQtvMpufsnU8z3+1RoBQ@mail.gmail.com>
Subject: Re: [EXT] Re: [v1 1/4] dt-bindings: display: Add DT bindings for
 LS1028A HDP-TX PHY.
To: Wen He <wen.he_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_070724_993057_9D03B86B 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBKdW4gMTYsIDIwMTkgYXQgNzo0NSBQTSBXZW4gSGUgPHdlbi5oZV8xQG54cC5jb20+
IHdyb3RlOgo+Cj4KPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiBTZW50OiAyMDE55bm0NuaciDE05pelIDQ6
MDgKPiA+IFRvOiBXZW4gSGUgPHdlbi5oZV8xQG54cC5jb20+Cj4gPiBDYzogbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+
ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbyBM
aQo+ID4gPGxlb3lhbmcubGlAbnhwLmNvbT4KPiA+IFN1YmplY3Q6IFtFWFRdIFJlOiBbdjEgMS80
XSBkdC1iaW5kaW5nczogZGlzcGxheTogQWRkIERUIGJpbmRpbmdzIGZvciBMUzEwMjhBCj4gPiBI
RFAtVFggUEhZLgo+ID4KPiA+IENhdXRpb246IEVYVCBFbWFpbAo+ID4KPiA+IE9uIFdlZCwgTWF5
IDA4LCAyMDE5IGF0IDEwOjM1OjI1QU0gKzAwMDAsIFdlbiBIZSB3cm90ZToKPiA+ID4gQWRkIERU
IGJpbmRpbmdzIGRvY3VtZW50bWF0aW9uIGZvciB0aGUgSERQLVRYIFBIWSBjb250cm9sbGVyLiBU
aGUKPiA+ID4gZGVzY3JpYmVzIHdoaWNoIGNvdWxkIGJlIGZvdW5kIG9uIE5YUCBMYXllcnNjYXBl
IGxzMTAyOGEgcGxhdGZvcm0uCj4gPgo+ID4gRHJvcCB0aGUgaGFyZCBzdG9wICguKSBmcm9tIHRo
ZSBzdWJqZWN0Lgo+ID4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogV2VuIEhlIDx3ZW4uaGVf
MUBueHAuY29tPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvZnNsLGhkcC50eHQgICB8IDU2ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQKPiA+ID4g
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvZnNsLGhkcC50eHQKPiA+
ID4KPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L2ZzbCxoZHAudHh0Cj4gPiA+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Rpc3BsYXkvZnNsLGhkcC50eHQKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4g
aW5kZXggMDAwMDAwMDAwMDAwLi4zNmI1Njg3YTEyNjEKPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4g
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9mc2wsaGRw
LnR4dAo+ID4gPiBAQCAtMCwwICsxLDU2IEBACj4gPiA+ICtOWFAgTGF5ZXJzY3BhZSBsczEwMjhh
IEhEUC1UWCBQSFkgQ29udHJvbGxlcgo+ID4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KPiA+ID4gKwo+ID4gPiArVGhlIGZvbGxvd2luZyBiaW5kaW5ncyBk
ZXNjcmliZSB0aGUgQ2FkZW5jZSBIRFAgVFggUEhZIG9uIGxzMTAyOGEKPiA+ID4gK3RoYXQgb2Zm
ZXIgbXVsdGktcHJvdG9jb2wgc3VwcG9ydCBvZiBzdGFuZGFycyBzdWNoIGFzIGVEUCBhbmQKPiA+
ID4gK0Rpc3BsYXlwb3J0LCBzdXBwb3J0cyBmb3IgMjUtNjAwTUh6IHBpeGVsIGNsb2NrIGFuZCB1
cCB0byA0azJrIGF0IDYwTUh6Cj4gPiByZXNvbHV0aW9uLgo+ID4gPiArVGhlIEhEUCB0cmFuc21p
dHRlciBpcyBhIENhZGVuY2UgSERQIFRYIGNvbnRyb2xsZXIgSVAgd2l0aCBhCj4gPiA+ICtjb21w
YW5pb24gUEhZIElQLgo+ID4KPiA+IEknbSBjb25mdXNlZC4gVGhpcyBiaW5kaW5nIGNvdmVycyBi
b3RoIGJsb2NrcyBvciBpcyBqdXN0IG9uZSBvZiB0aGVtPwo+ID4KPgo+IEhpIFJvYiwKPgo+IFRo
aXMgYmluZGluZyBjb3ZlcnMgYm90aCBibG9ja3MoSERQIFRYIFBIWSBhbmQgSERQIFRYIENvbnRy
b2xsZXIpLAo+IEJlY2F1c2UgdGhleSBhcmUgYmVsb25nIHRvIHRoZSBvbmUgSVAuCgpJbiB0aGF0
IGNhc2UsIHlvdSBzaG91bGQgYWxzbyBoYXZlIGFuIG91dHB1dCBwb3J0IHRvIGEgRFAgY29ubmVj
dG9yCm5vZGUgKG9yIERQIHBhbmVsKS4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
