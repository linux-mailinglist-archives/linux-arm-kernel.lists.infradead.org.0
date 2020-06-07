Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223A81F0FA2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 22:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ58deKZmRH+Eo9Axryp3V4X89pbh9nOmOVN9p59t/Q=; b=cU3w99HcMmBO17
	nDIcqJw3cv/Dihp8IKdfBfc0cllfnwmm4ld8zqWT6t43RV3JBYBTJ+JDhKpRbjU2T/SADPlI+Msws
	yQpppXmr+OQ8c2Jryuq92zKomBoYDL9wwjY4RjouE2B62dyFPht7Lukh8cXAbWIBlWY7j0c7d6D8s
	JI4f/pV17D/y+Mbngdcq+UhtNCFsBw1K6Dtn1/tsFcR5Y+tV+hgvmi/9QlJ5ujyv7xLhSPCt14utK
	keQDjCpGgTDas+v+OMOLU9NvaVhA2j0ec5/5L4nG1myctjHBjE9NGPDKSXuBSJSK9s6mlmjhovH70
	BWvta9NChfRsrbZHuXmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji1vU-00049q-TD; Sun, 07 Jun 2020 20:29:52 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji1vL-00048z-ET
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 20:29:47 +0000
Received: by mail-qk1-x741.google.com with SMTP id v79so15339067qkb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 13:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Lz6rtZK9cjNPAtEwtLuwX/TSYzMGfXgJilYQqWDsi+k=;
 b=qoEfppc4l1T7Tnteea4ezpFwHMv4wHuEtUnWK1i2WOujZ0/uUUZEV5JDjWhOQm0HM5
 lmadO2e2RzPCpHob2PJQCUv8pduTvChQW5AB7tJolmxF+HYaMF+dYSYpllfmikA7wfWx
 fO/vgHjOzLtTDAIj+9bg7i5F7L5/5012scP4UNidpfkLffOv9AlAuiMjUjHrD34hjeCj
 0N59QLDrFIzqpCN8KC4XDuD6Vsby4PBF3VyR7YVUnc+hv3i0x2J8nvxGZGjxFSH7r+fu
 ODBQnt0VqGo9ici5Mry9hDofKgpGRmJiWdat8GvmeLh0/1VHA81xYDIbIqtJlzcsXRzE
 MAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Lz6rtZK9cjNPAtEwtLuwX/TSYzMGfXgJilYQqWDsi+k=;
 b=toBJHTJ0P4PQ5huMiePogbAoSEzNrw/OFL7ch+8W9w5KPi86fcOwCv9SaFOVhWGFbG
 ZHHiMX3RZi4SDG+sO2FmSmY5Oa16YV+MvUf5vu9hoXvn0KiRdt/iUpTN4Mu4W6aBT+zf
 xiLEC3zodwNbOIV6l39zYYZcc/sf01pxIBCNryNo/COaOGa2V79VmYrIxMLH775Wgx1j
 CfT5nwEyl6Jg8FS6zWFTE+nmuKpDq4w1Jxu5T7EyYgDMRgDUJWldDCzJ0m33VP7kKaie
 3GR+pWvFxmc4gOhJTE0EW98gFInyU7xHSBEPinrq6WO3mcAfAe8g2cT5TE4ROlG4FRMu
 EVsg==
X-Gm-Message-State: AOAM530h0NhlKVRI5QKJx7OfLHm5vtNwCueSiWkKRZ6YgSWHI8FYTKYY
 WixFR0EAl3TaElqCL+zFRw+bxA==
X-Google-Smtp-Source: ABdhPJxBY2kuRju1y7Y4Wso16zjhQCkYP7wBN9y8dzrRiSnIbCCe0LSgRuYomUlAn2H++WcfunFvTA==
X-Received: by 2002:a37:a504:: with SMTP id o4mr19036370qke.245.1591561782070; 
 Sun, 07 Jun 2020 13:29:42 -0700 (PDT)
Received: from skullcanyon
 (marriott-chateau-champlain-montreal.sites.intello.com. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id z4sm5237262qkj.131.2020.06.07.13.29.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 13:29:41 -0700 (PDT)
Message-ID: <3b1150a327aa1e6810b153a4ba1fe32cf6c98f45.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264
 content
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Jernej Skrabec
 <jernej.skrabec@siol.net>
Date: Sun, 07 Jun 2020 16:29:40 -0400
In-Reply-To: <572f23d1945a685bf899e96de147454f31674ae1.camel@ndufresne.ca>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
 <572f23d1945a685bf899e96de147454f31674ae1.camel@ndufresne.ca>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_132943_968596_3FE19AE7 
X-CRM114-Status: GOOD (  31.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgZGltYW5jaGUgMDcganVpbiAyMDIwIMOgIDE2OjIxIC0wNDAwLCBOaWNvbGFzIER1ZnJlc25l
IGEgw6ljcml0IDoKPiBMZSBzYW1lZGkgMDYganVpbiAyMDIwIMOgIDA5OjQ2IC0wMzAwLCBFemVx
dWllbCBHYXJjaWEgYSDDqWNyaXQgOgo+ID4gSGkgSmVybmVqLAo+ID4gCj4gPiBPbiBUaHUsIDQg
SnVuIDIwMjAgYXQgMTU6NTUsIEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4gd3JvdGU6Cj4gPiA+IEN1cnJlbnRseSBIMjY0IGludGVybGFjZWQgY29udGVudCBpdCdzIG5v
dCBwcm9wZXJseSBkZWNvZGVkIG9uIENlZHJ1cy4KPiA+ID4gVGhlcmUgYXJlIHR3byByZWFzb25z
IGZvciB0aGlzOgo+ID4gPiAxLiBzbGljZSBwYXJhbWV0ZXJzIGNvbnRyb2wgZG9lc24ndCBwcm92
aWRlIGVub3VnaCBpbmZvcm1hdGlvbgo+ID4gPiAyLiBidWcgaW4gZnJhbWUgbGlzdCBjb25zdHJ1
Y3Rpb24gaW4gQ2VkcnVzIGRyaXZlcgo+ID4gPiAKPiA+ID4gQXMgZGVzY3JpYmVkIGluIGNvbW1p
dCBtZXNzYWdlIGluIHBhdGNoIDEsIHJlZmVyZW5jZXMgc3RvcmVkIGluCj4gPiA+IHJlZmVyZW5j
ZSBsaXN0cyBzaG91bGQgdGVsbCBpZiByZWZlcmVuY2UgdGFyZ2V0cyB0b3Agb3IgYm90dG9tIGZp
ZWxkLgo+ID4gPiBIb3dldmVyLCB0aGlzIGluZm9ybWF0aW9uIGlzIGN1cnJlbnRseSBub3QgcHJv
dmlkZWQuIFBhdGNoIDEgYWRkcwo+ID4gPiBpdCBpbiBmb3JtIG9mIGZsYWdzIHdoaWNoIGFyZSBz
ZXQgZm9yIGVhY2ggcmVmZXJlbmNlLiBQYXRjaCAyIHRoZW4KPiA+ID4gdXNlcyB0aG9zZSBmbGFn
cyBpbiBDZWRydXMgZHJpdmVyLgo+ID4gPiAKPiA+ID4gRnJhbWUgbGlzdCBjb25zdHJ1Y3Rpb24g
aXMgZml4ZWQgaW4gcGF0Y2ggMy4KPiA+ID4gCj4gPiA+IFRoaXMgc29sdXRpb24gd2FzIGV4dGVu
c2l2ZWx5IHRlc3RlZCB1c2luZyBLb2RpIG9uIExpYnJlRUxFQyB3aXRoIEE2NCwKPiA+ID4gSDMs
IEg1IGFuZCBINiBTb0NzIGluIHNsaWdodGx5IGRpZmZlcmVudCBmb3JtIChmbGFncyB3ZXJlIHRy
YW5zbWl0dGVkCj4gPiA+IGluIE1TQiBiaXRzIGluIGluZGV4KS4KPiA+ID4gCj4gPiAKPiA+IFNv
LCBpZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5IHRoZSBmaWVsZCBuZWVkcyB0byBiZSBwYXNzZWQg
cGVyLXJlZmVyZW5jZSwKPiA+IGFuZCB0aGUgY3VycmVudCBwZXItRFBCIGVudHJ5IGlzIG5vdCBn
b29kPwo+IAo+IEZvciBpbnRlcmxhY2VkIGNvbnRlbnQgd2UgcmVmZXJlbmNlIGZpZWxkcyBzZXBh
cmF0ZWx5LiBUaGF0J3MgdGhlCj4gcmVhc29uIHRoZXJlIGlzIDMyIGVudHJpZXMgaW4gbDAvbDEu
IFRob3VnaCwgYXMgd2UgZGVjb2RlIGJvdGggZmllbGRzCj4gaW4gdGhlIHNhbWUgYnVmZmVyIChp
bnRlcmxlYXZlZCksIHRoZSBEUEIgaW5kaWNlIGlzIG5vdCBzdWZmaWNpZW50IHRvCj4gaW5mb3Jt
IHRoZSBkZWNvZGVyIHdoYXQgd2UgYXJlIHJlZmVyZW5jaW5nLiBVbmRlcnN0YW5kIHRoYXQgYSB0
b3AgZmllbGQKPiBjYW4gYmUgdXNlZCB0byBkZWNvZGUgdGhlIG5leHQgYm90dG9tIGZpZWxkLiBU
aGlzIGV2ZW4gbWFrZSBzZW5zZSBhcwo+IHRoZXkgYXJlIGNsb3NlciBvbiB0aGUgY2FwdHVyZSB0
aW1lbGluZS4gVGhpcyBjb3ZlcnMgc2xpY2UgYmFzZWQKPiBkZWNvZGVycy4KPiAKPiBUaGUgZmxh
Z3MgdG8gaW5kaWNhdGUgcHJlc2VuY2Ugb2YgdG9wL2JvdHRvbSBmaWVsZHMgaW4gRFBCIGFycmF5
IHNlZW1zCj4gb25seSB1c2VmdWwgdG8gZnJhbWUgYmFzZSBkZWNvZGVycy4gVGhpcyBpcyBzbyB0
aGF0IGRlY29kZXIgY2FuIGF2b2lkCj4gdXNpbmcgbG9zdCBmaWVsZHMgd2hlbiBjb25zdHJ1Y3Rp
bmcgaXQncyBvd24gbDAvbDEgaW50ZXJuYWxseS4KPiAKPiA+IElmIHlvdSBjb3VsZCBwb2ludCBh
dCB0aGUgdXNlcnNwYWNlIGNvZGUgZm9yIHRoaXMsIGl0IHdvdWxkIGJlIGludGVyZXN0aW5nCj4g
PiB0byB0YWtlIGEgbG9vay4KPiA+IAo+ID4gPiBOb3RlOiBJJ20gbm90IDEwMCUgc3VyZSBpZiBm
bGFncyBmb3IgYm90aCwgdG9wIGFuZCBib3R0b20gZmllbGRzIGFyZQo+ID4gPiBuZWVkZWQuIEFu
eSBpbnB1dCBoZXJlIHdvdWxkIGJlIHdlbGNvbWUuCj4gPiA+IAo+ID4gCj4gPiBHaXZlbiBlbnVt
IHY0bDJfZmllbGQgaXMgYWxyZWFkeSBwYXJ0IG9mIHRoZSB1QVBJLCBwZXJoYXBzIGl0IG1ha2Vz
Cj4gPiBzZW5zZSB0byBqdXN0IHJldXNlIHRoYXQgZm9yIHRoZSBmaWVsZCB0eXBlPyBNYXliZSBp
dCdzIGFuIG92ZXJraWxsLAo+ID4gYnV0IGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gcmV1c2UgdGhl
IGNvbmNlcHRzIGFuZCB0eXBlcyB0aGF0Cj4gPiBhbHJlYWR5IGV4aXN0Lgo+ID4gCj4gPiBXZSBj
YW4gc3RpbGwgYWRkIGEgcmVzZXJ2ZWQgZmllbGQgdG8gbWFrZSB0aGlzIG5ldyByZWZlcmVuY2Ug
dHlwZQo+ID4gZXh0ZW5zaXZlLgo+IAo+IEkgdGhpbmsgaXQncyBmaW5lIHRvIGNyZWF0ZSBuZXcg
ZmxhZyBmb3IgdGhpcywgYXMgeW91ciBzb2x1dGlvbiB3b3VsZAo+IHJlcXVpcmUgZXh0ZW5kaW5n
IGEgcmVmZXJlbmNlIHRvIDI0Yml0ICh0aGlzIHBhdGNoIGV4dGVuZCB0byAxNmJpdHMpLgo+IFRo
b3VnaCBpbmRlZWQsIHdlIGNvdWxkIGNvbWJpbmUgZnJhbWUgYW5kIFRPUCBhbmQgcmVzZXJ2ZSBt
b3JlIGJpdHMgZm9yCj4gZnV0dXJlIHVzZS4KClNvcnJ5IGZvciB0aGUgb3ZlcnNpZ2h0LCB0aGUg
ZmxhZ3MgaXMgMTZiaXRzLCBzbyB3ZSBhbHJlYWR5IHVzZSAyNGJpdHMuCkJ1dCBsb29raW5nIGF0
ICJlbnVtIHY0bDJfZmllbGQiLCB3aGljaCBpcyBub3QgYSBmbGFnLCBzZWVtcyBsaWtlIGEKbWlz
cy1maXQuIEl0IHdvdWxkIGNyZWF0ZSBzdWNoIGEgY29uZnVzaW9uLCBhcyBWNEwyX0ZJRUxEX1NF
UV9UQi9CVCBjYW4Kc3RpbGwgYmUgdXNlZCB3aXRoIHRoaXMgaW50ZXJmYWNlLCBldmVuIHRob3Vn
aCB3ZSBzdGlsbCBuZWVkIHRvIHNheSBpZgp3ZSByZWZlcmVuY2UgVE9QIG9yIEJPVFRPTS4gT25s
eSBWNEwyX0ZJRUxEX0FMVEVSTkFURSBpcyBub3Qgc3VwcG9ydGVkLgpCdXQgYXMgeW91IGNhbiBz
ZWUsICJlbnVtIHY0bDJfZmllbCIgaXMgcmVhbGx5IG1lYW50IHRvIGRlc2NyaWJlIHRoZQpsYXlv
dXQgb2YgdGhlIGludGVybGVhdmVkIGZyYW1lIHJhdGhlciB0aGVuIHNpZ25hbGxpbmcgYSBmaWVs
ZApkaXJlY3RseS4KCj4gCj4gPiBUaGFua3MsCj4gPiBFemVxdWllbAo+ID4gCj4gPiAKPiA+ID4g
UGxlYXNlIHRha2UgYSBsb29rLgo+ID4gPiAKPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBKZXJu
ZWoKPiA+ID4gCj4gPiA+IEplcm5laiBTa3JhYmVjICgzKToKPiA+ID4gICBtZWRpYTogdWFwaTog
aDI2NDogdXBkYXRlIHJlZmVyZW5jZSBsaXN0cwo+ID4gPiAgIG1lZGlhOiBjZWRydXM6IGgyNjQ6
IFByb3Blcmx5IGNvbmZpZ3VyZSByZWZlcmVuY2UgZmllbGQKPiA+ID4gICBtZWRpYTogY2VkcnVz
OiBoMjY0OiBGaXggZnJhbWUgbGlzdCBjb25zdHJ1Y3Rpb24KPiA+ID4gCj4gPiA+ICAuLi4vbWVk
aWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgICAgICAgICAgICAgfCA0MCArKysrKysrKysrKysr
KysrKystCj4gPiA+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQu
YyAgfCAyNyArKysrKysrLS0tLS0tCj4gPiA+ICBpbmNsdWRlL21lZGlhL2gyNjQtY3RybHMuaCAg
ICAgICAgICAgICAgICAgICAgfCAxMiArKysrKy0KPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNjIg
aW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiAtLQo+ID4gPiAyLjI3
LjAKPiA+ID4gCj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
