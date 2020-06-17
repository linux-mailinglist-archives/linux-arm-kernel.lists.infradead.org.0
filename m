Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF54B1FD920
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2NLZtRPg3dmfHavvqlqhXUfOxSaleH59NMFPnuJiEY=; b=VnlB3KJpJTpAqJ
	97wczcwxMHCARKtx6gqLpm9vxNZoiy2Usl6KtVFrE6nqnQGBeE52P1A0+KOW2yNJXAC1mR1LnBrLA
	PQpfPgGTM5KnDeStEGij5+Cm/TMgRWknp/RXFs6nu+Forn//fwoIS2FdBx3dhv0TNLP9OXsgO4Eox
	oDDa9NxfivL1KzOOcY6YKKVZ5Caj59/KDqDR8tcZjxoMe2zIyayCUoOVs7YUr3PGkZfqKjkTsPE5O
	NfY0PGiZov847kimHg3d7GUvIz8LjKc8P44tkN8yK3+HZuYUrQovQE6KO9KR9Fo4XEjUlWLH/cRgQ
	HaRThjzljzLr9aYA+lJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgmz-0004P4-O0; Wed, 17 Jun 2020 22:44:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgmq-0004OW-Ig
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:44:05 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9B1BCF9;
 Thu, 18 Jun 2020 00:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1592433829;
 bh=RsQLbHMQw0UnnMPXiJLpwb7U7RPinG9A0N7ByG5hyvU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bj4klpDvexsIx02tUwJp8pvRLCUAjQm8xeslbCUfE/Vf4usT2oWacy9HFLrIOZNUf
 faDGeL3MsCLKh6dw9jNJQEXnPRECPJaiMS3FWqICfdf1bITaAvUthue0AMxfepuWtl
 fuv9lwk52SICRGq4BtGOq1jaADjKu3lFoYNKOAA8=
Date: Thu, 18 Jun 2020 01:43:26 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
Message-ID: <20200617224326.GE32604@pendragon.ideasonboard.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
 <20200611102356.31563-6-ricardo.canuelo@collabora.com>
 <20200617223455.GA2953201@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617223455.GA2953201@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_154404_767533_936F9668 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, tomi.valkeinen@ti.com, kernel@collabora.com,
 Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMDQ6MzQ6NTVQTSAtMDYwMCwgUm9iIEhl
cnJpbmcgd3JvdGU6Cj4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMTI6MjM6NTZQTSArMDIwMCwg
UmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiA+IE1ha2UgdGhlIHBvcnRzIG5vZGUgb3B0aW9uYWws
IHNpbmNlIHRoZXJlIGFyZSBzb21lIERUcyB0aGF0IGRvbid0IGRlZmluZQo+ID4gYW55IHBvcnRz
IGZvciB0aSx0ZnA0MTAuCj4gCj4gT25seSBhcmNoL2FybS9ib290L2R0cy9kb3ZlLXNiYy1hNTEw
LmR0cyBBRkFJQ1QuLi4gSXQgc2hvdWxkIGJlIHVwZGF0ZWQgCj4gSU1PLgoKQWdyZWVkLCBidXQg
UmljYXJkbyB3YXNuJ3Qgc3VyZSBob3cgdG8gdXBkYXRlIGl0LiBJdCB3b3VsZCBiZSBuaWNlIGlm
CnNvbWVvbmUgd2l0aCBrbm93bGVkZ2Ugb2YgdGhlIGhhcmR3YXJlIGNvdWxkIGhhdmUgYSBsb29r
LgoKQnkgdGhlIHdheSwgdGhpcyBwYXRjaCBpcyBkcm9wcGVkIGZyb20gdjQgb2YgdGhlIHNlcmll
cy4KCj4gPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVlbG9A
Y29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L2JyaWRnZS90aSx0ZnA0MTAueWFtbCB8IDEgLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvdGksdGZwNDEwLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvdGksdGZwNDEwLnlhbWwK
PiA+IGluZGV4IDYwNTgzMWMxZTgzNi4uMWM5NDIxZWI4MGZhIDEwMDY0NAo+ID4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL3RpLHRmcDQxMC55
YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9i
cmlkZ2UvdGksdGZwNDEwLnlhbWwKPiA+IEBAIC04Myw3ICs4Myw2IEBAIHByb3BlcnRpZXM6Cj4g
PiAgCj4gPiAgcmVxdWlyZWQ6Cj4gPiAgICAtIGNvbXBhdGlibGUKPiA+IC0gIC0gcG9ydHMKPiA+
ICAKPiA+ICBpZjoKPiA+ICAgIHJlcXVpcmVkOgoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNo
YXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
