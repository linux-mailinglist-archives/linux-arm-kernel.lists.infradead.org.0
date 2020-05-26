Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86AA1E1BD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWob1MaMCQZ8jDoKXvmIduhEw0TCbCfOFUOjylgwoMw=; b=Pu0NUorCn7rTkG
	3u2sVK1Ufq7/f6OF24wWYEGA84eTAinrG5N2ssVIAMyqOwke0iUAxcpshS5huvTh8jkHdxQqRBjfj
	QBasGhvPNORDUich6IawFZHTRelVCmIFzNnn++xnYq3GYnCCDgJxf9qIY5Y4v4TPyAzvTDmACphcC
	v22G0xbsOt4YYfNQFU5ifnvncUGrIlQUzCn/yyCBWhhH/b6jj+OU24AxpYvDkVb4zot2n4lSIOOmb
	WeTnq6hQpFf4gtrsHnDDdl0z86ex6KU+1rVBmtDp5Bchbos9frOMJg/3dUZB+EmTZ0oH/sBRYgmXZ
	8mDtYZsv+w618uiCEpPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTcy-0008LJ-1y; Tue, 26 May 2020 07:03:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTcS-0007sA-Iu
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:03:30 +0000
Received: by mail-oi1-f195.google.com with SMTP id x23so17822365oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 00:03:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eylea4IzybGIW6tKiP757miyZUnIcYAn0TGjr5EpQeg=;
 b=n2EFuWKwHNDXtPRjt9a8mS3OFx845pgKrcPADWfUVLjkaUkbYiyY4MI3H57PJmzjZ9
 3g/QLamepBn0JihvYzHRygQsZ9QKZKWt1/9wH+OOIRj0OlMabkbjbSwt3o4CAYnGyB36
 Jel+1jYk2EcsR2UoyeB1yEDjdQnmpV5UOdyFjYW53ZECxK11nWMznJRbgF7xavN72tQg
 BqvcAjD2ajimArN0DtuoYD3CElbZWoKMQDT/AMp6WVK5q2+aq3zbIX+vc4d6Dk5PFX31
 aCZ0CwET+hGIQLQxFIOOBGC0adMScu4YYqx4+uS3MZXdnomRE5ZZj4xfXz2qDB8qcvjJ
 yqcQ==
X-Gm-Message-State: AOAM530sWdD6RnXTjicms8Fcces/xasqAgAakMbVmsKHTiVhacDqc1nE
 mZHsZjF/jj2TtyjHSoiZ3C4xvZ+mnZlOXwzFfI8=
X-Google-Smtp-Source: ABdhPJwoTDU5wULf7eq9/btuEuJSHCIUmidUX0Z2hIGssT3qq1UQVdPUrc1BWTuhuTqVAkLXFujdyBtKyRuneHegSIQ=
X-Received: by 2002:aca:210a:: with SMTP id 10mr12785206oiz.153.1590476601417; 
 Tue, 26 May 2020 00:03:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
 <20200526014444.GB6179@pendragon.ideasonboard.com>
In-Reply-To: <20200526014444.GB6179@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 26 May 2020 09:03:09 +0200
Message-ID: <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi, adv7511.txt: convert
 to yaml
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000324_629245_6D27EA1A 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGF1cmVudCwKCk9uIFR1ZSwgTWF5IDI2LCAyMDIwIGF0IDM6NDQgQU0gTGF1cmVudCBQaW5j
aGFydAo8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiBPbiBNb24s
IE1heSAyNSwgMjAyMCBhdCAwOTo0MzozNUFNICswMjAwLCBSaWNhcmRvIENhw7F1ZWxvIHdyb3Rl
Ogo+ID4gT24ganVlIDE0LTA1LTIwMjAgMTg6MjI6MzksIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6
Cj4gPiA+ID4gSWYgd2Ugd2FudCB0byBiZSBtb3JlIHN0cmljdCBhbmQgcmVxdWlyZSB0aGUgZGVm
aW5pdGlvbiBvZiBhbGwgdGhlCj4gPiA+ID4gc3VwcGxpZXMsIHRoZXJlIHdpbGwgYmUgbWFueSBt
b3JlIERUcyBjaGFuZ2VzIGluIHRoZSBzZXJpZXMsIGFuZCBJJ20gbm90Cj4gPiA+ID4gc3VyZSBJ
J2xsIGJlIGFibGUgdG8gZG8gdGhhdCBpbiBhIHJlYXNvbmFibGUgYW1vdW50IG9mIHRpbWUuIEkn
bSBsb29raW5nCj4gPiA+ID4gYXQgdGhlbSBhbmQgaXQncyBub3QgYWx3YXlzIGNsZWFyIHdoaWNo
IHJlZ3VsYXRvcnMgdG8gdXNlIG9yIGlmIHRoZXkgYXJlCj4gPiA+ID4gZXZlbiBkZWZpbmVkLgo+
ID4gPgo+ID4gPiBXZSBjYW4gZGVjb3VwbGUgdGhlIHR3byB0aG91Z2ggKEkgdGhpbmspLiBUaGUg
YmluZGluZ3Mgc2hvdWxkIHJlZmxlY3QKPiA+ID4gd2hhdCB3ZSBjb25zaWRlciByaWdodCwgYW5k
IHRoZSBkdHMgZmlsZXMgY291bGQgYmUgZml4ZWQgb24gdG9wLgo+ID4KPiA+IERvIHlvdSBoYXZl
IGEgc3VnZ2VzdGlvbiBvbiBob3cgdG8gZG8gdGhpcz8gSWYgd2UgZGVjb3VwbGUgdGhlIHR3bwo+
ID4gdGFza3MgbW9zdCBvZiB0aGUgd29yayB3b3VsZCBiZSBzZWFyY2hpbmcgZm9yIERUcyB0byBm
aXggYW5kIGZpbmRpbmcgYQo+ID4gd2F5IHRvIGZpeCBlYWNoIG9uZSBvZiB0aGVtLCBhbmQgdW5s
ZXNzIEkgZG8gdGhpcyBfYmVmb3JlXyB0aGUgYmluZGluZwo+ID4gY29udmVyc2lvbiBJJ2xsIGdl
dCBhIGxvdCBvZiBkdGJzX2NoZWNrIGVycm9ycy4KPgo+IFJvYiBzaG91bGQgYW5zd2VyIHRoaXMg
cXVlc3Rpb24gYXMgaXQgd2lsbCBiZSBoaXMgZGVjaXNpb24sIGJ1dCBJJ3ZlCj4gcGVyc29uYWxs
eSBuZXZlciBjb25zaWRlcmVkIG5vbi1jb21wbGlhbnQgRFQgc291cmNlcyB0byBiZSBhbiBvYnN0
YWNsZQo+IHRvIGJpbmRpbmdzIGNvbnZlcnNpb24gdG8gWUFNTC4gVGhlIERUIHNvdXJjZXMgc2hv
dWxkIGJlIGZpeGVkLCBidXQgSQo+IGRvbid0IHNlZSBpdCBhcyBhIHByZXJlcXVpc2l0ZSAoYWx0
aG91Z2ggaXQncyBhIGdvb2QgcHJhY3RpY2UpLgoKSSBkbyBteSBiZXN0IHRvIGF2b2lkIGludHJv
ZHVjaW5nIHJlZ3Jlc3Npb25zIHdoZW4gdGhlIGJpbmRpbmcgY29udmVyc2lvbnMKZ28gdXBzdHJl
YW0uCgpGVFIsIGhlbmNlIHBhdGNoZXMgMS0zIGFyZSBhbHJlYWR5IGluIHY1LjctcmM3LgoKR3J7
b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0
IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2Vl
cnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmlj
YWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0
byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0
aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
