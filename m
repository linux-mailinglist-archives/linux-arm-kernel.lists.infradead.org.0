Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AE62ABD4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoXbLVI0/bjAr1Li7ifSiWBzNVNGxFxRKKOX5/yeRjQ=; b=mUr96/3NS35bfB
	oSCsYKr4w8egYZdHwYLRagUfWpunylvTgfKCyhCcvWq5vF0tbNCe9FoDEL0N5xGFomnaSbKZxxV1A
	9a/UuALK1WjMuiLMH8pbTxG54n5rGOXlUKBWHwhbxSCoIBvrK82YdBoBT1bpMPxMRlo4Fq5/bKmZt
	59Ruv6mG+s6G33z2UqlsYPplZg62dIBsfq8qIB3FikoWSZKsDyhnCXvaZ+mhfNCnz95LctPnAQ0nC
	uMrihqgK1ikasMTWe6NIRz/fi8Tpig7jAluIoCy64Yq6M/is+htreHvKlmXwUi6VjumITQb7OSy3N
	aUBZvDA9XccD7nkkRq8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUycr-0000O8-5j; Sun, 26 May 2019 19:16:09 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUycj-0000H5-77
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:16:02 +0000
Received: by mail-yw1-xc41.google.com with SMTP id k70so1565369ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 12:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=noskaXJB+lKStgYLNqjD43scq/LOmprbRcl7XPqZyEI=;
 b=D8JnONzvJVlbSq818NlO2tEUyWIfBoSFmPsh5zvcDyBHWIlsg/7WbzUDiBGXDGAa7t
 t7q/y9nPrbUqqkKlGdqnb0djhVmy6zqH1f47Z4PDzhqU1x2w7hZNelCNTCOpD13xVL1O
 ZXbpqJTWIhIkHYxjvmoGoEFYcUfZ7ezMF2AkwVJlNHt4HR36YZKr2zCpBrXoR3LnYP1K
 PXKJcdeEEjMtuWmQN0LmMdGXR4WGYNss6d30qaK4MmrC9KOQmgn6/n9ZxVEiEa787Ywe
 ZHeqUNq1DmIrBF1UNo7bLY4/n1OEYs7At07Uz5vFO5lZL7KPf6H57qHjmR7U1zykp5tQ
 Qptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=noskaXJB+lKStgYLNqjD43scq/LOmprbRcl7XPqZyEI=;
 b=LW1jbvgaRr0oFFbnVgbFtuwK83sK/4HXhqcMgzkFg2pxvkmrAbeFqqVXADHOs3iOYP
 BilNypU6Ac4ZfirftJPQZTO7fgHM1lUwhnVvq5xq78n3t57am4cOASya9rd2T7c+8pID
 WKJyqMbbEwYiQ4G4RZ7FcfUtAeDTRcN0fA1J06DjuzC62mh99eCzYwjkyfhsOckBkxAi
 rHAKdVKaBJ8CCit3HrhuTV2nvpc0moDUbxIylnhS7+qLvOhTOngNrXHkn8/IxxlmtRii
 N8kcEBDl55fKaEQdsN1W1T0dpj2Vdyu4rvGM5QoilnzIyJl3yf9osUo8dN9F+6cb6O1B
 FwEA==
X-Gm-Message-State: APjAAAWpR9WtQyYDhXLEONx2jiXZQR66/iz93kuiqduTeQtLlQAuN6+C
 eE+QiomIxtSP4mp9rBQgCFIEtyX14q4impHje1o=
X-Google-Smtp-Source: APXvYqz+VzNt0oKUMWNius14IRSdTfbNvnD/DEiP9e5FvjbEQtR2ABEeJ+6nuk7ooQZFFcE+eOm26NaadqAoXgSQSww=
X-Received: by 2002:a81:9a4b:: with SMTP id r72mr30838628ywg.422.1558898160019; 
 Sun, 26 May 2019 12:16:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190525180923.6105-1-peron.clem@gmail.com>
 <20190525180923.6105-5-peron.clem@gmail.com>
 <20190526190410.ngrvrclp5ge5rdqy@flea>
In-Reply-To: <20190526190410.ngrvrclp5ge5rdqy@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 26 May 2019 21:15:49 +0200
Message-ID: <CAJiuCceHhxYt=BY0Jvfv6+80ekKcMLUSv5UWBorYuvtO-DkOtg@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: media: sunxi-ir: Add A64 compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_121601_269470_18868082 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gU3VuLCAyNiBNYXkgMjAxOSBhdCAyMTowNCwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIE1heSAyNSwgMjAx
OSBhdCAwODowOToxN1BNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBUaGVyZSBp
cyBzb21lIG1pbm9yIGRpZmZlcmVuY2VzIGJldHdlZW4gQTMxIGFuZCBBNjQgZHJpdmVyLgo+ID4K
PiA+IEJ1dCBBMzEgSVIgZHJpdmVyIGlzIGNvbXBhdGlibGUgd2l0aCBBNjQuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+IC0t
LQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50
eHQgfCAxICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWly
LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50
eHQKPiA+IGluZGV4IDUzZTg4ZWJiNTNmZS4uZGE1YWViYTg0M2RlIDEwMDY0NAo+ID4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dAo+ID4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4
dAo+ID4gQEAgLTUsNiArNSw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gPiAgICAgICAiYWxs
d2lubmVyLHN1bjRpLWExMC1pciIKPiA+ICAgICAgICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIgo+
ID4gICAgICAgImFsbHdpbm5lcixzdW42aS1hMzEtaXIiCj4gPiArICAgICAiYWxsd2lubmVyLHN1
bjUwaS1hNjQtaXIiLCAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciIKPgo+IEkgZ3Vlc3MgcmVzZXRz
IGlzIG1hbmRhdG9yeSBmb3IgdGhlIEEzMSBvbndhcmRzIHRvbywgcmlnaHQ/CgpJbmRlZWQsIEkg
d2lsbCBhZGQgdGhpcyBpbmZvcm1hdGlvbiBpbiB0aGUgZGV2aWNlLXRyZWUgYmluZGluZ3MuCklk
ZWFsbHksIHdlIHNob3VsZCBhbHNvIGludHJvZHVjZSBhIHF1aXJrcyB3aXRoIGEgImhhc19yZXNl
dCIgcHJvcGVydHkuCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LApDbMOpbWVudAoKPgo+IE1heGlt
ZQo+Cj4gLS0KPiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtl
cm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
