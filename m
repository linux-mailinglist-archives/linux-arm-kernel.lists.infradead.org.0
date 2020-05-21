Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D788D1DD9AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 23:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChiaN6wyY0IhsDsxA3BUGPFWwJTGp2pIDaLE1NYinmI=; b=H+4LB2YDsFfrsH
	boyQHAqS9gvhKUbv+pYRRSC3LpXjl69bxtY9L+KqPbhEDBtAoyD2O3Yv912FysFHYf2hk6YsD6vSe
	KAq+BDEOXJZd4TN7BMG4EC19cAubyRPGKXMoTNtAndOR3cCrWZeG0dDlSBPHtlsM7kJT7FJu3olYt
	p1CgB+dzJOUrJhlakTLbKz+oPRj6kay/D1RMcZbIH5zCprT/fj/Q74IerAP7sqh5kfe11stpG+amT
	debtg8S4AbC/6riBFwUbdvEfbcWyEgWsMc15PyJVJiqrRjHfKCgQ2RTqSHcTGqRHwaTOWqtrNLbg0
	MPlTyU9IBkwIIt+fvqHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbt3P-00044G-FA; Thu, 21 May 2020 21:48:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbt3F-00043d-O1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 21:48:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so8192174wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 14:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1FrDzsjYEcXgrfssVNqqByxFp+Ac+Iq6mZixETRuPi4=;
 b=WmNJz59ItRug2cC5INbpwDKpcDmMtgi6jVU9u719g067ES93QLe8eqTMGzSES6EhYV
 mdMc2M6PGzOF/Q5wqmdP/+0piv/rNvkgZr7PxPh5g3wVI+f0b7hBEdreqS8AJ+DrIblE
 ofDD7ndpAcgLcQ/PBOeUaeUwNJgP5BaLTIZNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1FrDzsjYEcXgrfssVNqqByxFp+Ac+Iq6mZixETRuPi4=;
 b=S8G15kccFoPQJvLbJeQhqYDjE9vA/X9Klvm1J+FSog5Vm6+h/JrbRusbtSUiVbyE2G
 2boB+DzgH954sdErrmJZnFoODLBX+x+XuZfUDLd+q4LRyy3W6/jYUrRSrm6fS1DcDcGB
 3JVFNVUWYH2OkUNUFV/NyER6sngr9hr0fbTdx/+YF0WtyHMVgaF0sdJ3snICBQxyBeQ0
 XJKhau8QL8soBQfnZJw3EzFuPJRYSK3xyPoidYve9wt0xXzGqgkVwc5tYsMjhyrnDrM+
 gnfGnSq8b8pc+fH5tg4tVdL3P/hU3WeVUL3o21W64vw0PLutcMa0sEyvZfTdEbrPCT57
 J3Dw==
X-Gm-Message-State: AOAM532XAfK1tBQl/xUshda8C+Llzv3T5mav2YZWJfJivwZwGfEitiiA
 jMmX7ddESJyecxCWWm0smKJ9/KRyEPk2KVvGsggQJg==
X-Google-Smtp-Source: ABdhPJzO8QjCrwiMc96gkFPxC2xNsu+AaIKQ54rCen8kgp3Tra5gNG8QuZwpex0i5HD/wL/RicupKUhSYd6aPhEXMJ8=
X-Received: by 2002:adf:e688:: with SMTP id r8mr509896wrm.274.1590097708107;
 Thu, 21 May 2020 14:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-8-james.quinlan@broadcom.com>
 <20200520072747.GB5213@pengutronix.de>
In-Reply-To: <20200520072747.GB5213@pengutronix.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 21 May 2020 17:48:15 -0400
Message-ID: <CA+-6iNxtW66QLrb5BaOOCPJwG-1fShdfZqiLSkKfi6Y669dn5w@mail.gmail.com>
Subject: Re: [PATCH 07/15] PCI: brcmstb: Add control of rescal reset
To: Philipp Zabel <pza@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_144829_782091_8E3FFFCB 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMzoyNyBBTSBQaGlsaXBwIFphYmVsIDxwemFAcGVuZ3V0
cm9uaXguZGU+IHdyb3RlOgo+Cj4gSGkgSmltLAo+Cj4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQg
MDQ6MzQ6MDVQTSAtMDQwMCwgSmltIFF1aW5sYW4gd3JvdGU6Cj4gPiBGcm9tOiBKaW0gUXVpbmxh
biA8anF1aW5sYW5AYnJvYWRjb20uY29tPgo+ID4KPiA+IFNvbWUgU1RCIGNoaXBzIGhhdmUgYSBz
cGVjaWFsIHB1cnBvc2UgcmVzZXQgY29udHJvbGxlciBuYW1lZAo+ID4gUkVTQ0FMIChyZXNldCBj
YWxpYnJhdGlvbikuICBUaGlzIGNvbW1pdCBhZGRzIHRoZSBjb250cm9sCj4gPiBvZiBSRVNDQUwg
YXMgd2VsbCBhcyB0aGUgYWJpbGl0eSB0byBzdGFydCBhbmQgc3RvcCBpdHMKPiA+IG9wZXJhdGlv
biBmb3IgUENJZSBIVy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKaW0gUXVpbmxhbiA8anF1aW5s
YW5AYnJvYWRjb20uY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LWJyY21zdGIuYyB8IDgxICsrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1icmNtc3RiLmMgYi9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtYnJjbXN0Yi5jCj4gPiBpbmRleCAyYzQ3MDEwNGJhMzguLjA3ODdlOGY2
ZjdlNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1icmNtc3Ri
LmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1icmNtc3RiLmMKPiBbLi4u
XQo+ID4gQEAgLTExMDAsNiArMTE2NCwyMSBAQCBzdGF0aWMgaW50IGJyY21fcGNpZV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICAgICAgICBkZXZfZXJyKCZw
ZGV2LT5kZXYsICJjb3VsZCBub3QgZW5hYmxlIGNsb2NrXG4iKTsKPiA+ICAgICAgICAgICAgICAg
cmV0dXJuIHJldDsKPiA+ICAgICAgIH0KPiA+ICsgICAgIHBjaWUtPnJlc2NhbCA9IGRldm1fcmVz
ZXRfY29udHJvbF9nZXRfc2hhcmVkKCZwZGV2LT5kZXYsICJyZXNjYWwiKTsKPiA+ICsgICAgIGlm
IChJU19FUlIocGNpZS0+cmVzY2FsKSkgewo+ID4gKyAgICAgICAgICAgICBpZiAoUFRSX0VSUihw
Y2llLT5yZXNjYWwpID09IC1FUFJPQkVfREVGRVIpCj4gPiArICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gPiArICAgICAgICAgICAgIHBjaWUtPnJlc2NhbCA9IE5V
TEw7Cj4KPiBUaGlzIGlzIGVmZmVjdGl2ZWx5IGFuIG9wdGlvbmFsIHJlc2V0IGNvbnRyb2wsIHNv
IGl0IGlzIGJldHRlciB0byB1c2U6Cj4g4oa1Cj4gICAgICAgICBwY2llLT5yZXNjYWwgPSBkZXZt
X3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX3NoYXJlZCgmcGRldi0+ZGV2LAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInJl
c2NhbCIpO+KGtQo+ICAgICAgICAgaWYgKElTX0VSUihwY2llLT5yZXNjYWwpKQo+ICAgICAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihwY2llLT5yZXNjYWwpOwo+Cj4gPiArICAgICB9IGVsc2Ug
ewo+ID4gKyAgICAgICAgICAgICByZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHBjaWUtPnJl
c2NhbCk7Cj4gPiArICAgICAgICAgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGRlYXNzZXJ0ICdyZXNjYWwnXG4iKTsK
PiA+ICsgICAgIH0KPgo+IHJlc2V0X2NvbnRyb2xfKiBjYW4gaGFuZGxlIHJzdGMgPT0gTlVMTCBw
YXJhbWV0ZXJzIGZvciBvcHRpb25hbCByZXNldAo+IGNvbnRyb2xzLCBzbyB0aGlzIGNhbiBiZSBk
b25lIHVuY29uZGl0aW9uYWxseToKPgo+ICAgICAgICAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFz
c2VydChwY2llLT5yZXNjYWwpO+KGtQo+ICAgICAgICAgaWYgKHJldCnihrUKPiAgICAgICAgICAg
ICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGRlYXNzZXJ0ICdyZXNjYWwnXG4i
KTvihrUKPgo+IElzIHJlc2NhbCBoYW5kbGVkIGJ5IHRoZSByZXNldC1icmNtc3RiLXJlc2NhbCBk
cml2ZXI/IFNpbmNlIHRoYXQgb25seQo+IGltcGxlbWVudHMgdGhlIC5yZXNldCBvcCwgSSB3b3Vs
ZCBleHBlY3QgcmVzZXRfY29udHJvbF9yZXNldCgpIGhlcmUuCldoZXJlIGV4YWN0bHk/ICAicmVz
ZXQuaCIgc2F5cyB0aGF0ICJDYWxsaW5nIHJlc2V0X2NvbnRyb2xfcmVzZSgpdCBpcwpub3QgYWxs
b3dlZCBvbiBhIHNoYXJlZCByZXNldCBjb250cm9sLiIgc28gSSdtIG5vdCBzdXJlIHdoeSAgeW91
IHdvdWxkCndhbnQgbWUgdG8gaW52b2tlIGl0Lgo+IE90aGVyd2lzZSB0aGlzIGxvb2tzIGxpa2Ug
aXQnZCBiZSBtaXNzaW5nIGEgcmVzZXRfY29udHJvbF9hc3NlcnQgaW4KPiByZW1vdmUuCkkgY2Fu
IGFkZCB0aGlzLgpUaGFua3MsCkppbQo+Cj4gcmVnYXJkcwo+IFBoaWxpcHAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
