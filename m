Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476641F9978
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4xN/4zHdQfgyGlhSmNQyieNFoRMyjXL0HKFMCnm6ew=; b=usnjLRzhzPU/Gh
	5Sl1HuGobKnTwOZ2/+z1ye0JslLaSCfriBqdWlBqVBMRVMekEymEyxqlzZ75nq0ySGu2bvm/625nK
	J0zkXd1Y2YgYccmMv9d+hYFMhPTMTnaLxdUee8V/wY2jJpS/evBziwblFrII3tbOecRPeobgMYP07
	8BOiTzoQihuDrnjdmuPHesUPlCIeWMitjIthjh3PXYhTBDI4osbcSD3bEdujTBNLGtRHIRISZEGa+
	phg0IgC9awe4SjMNj9MX+VedsI2SW3oUzcBkcEXUD1GWlrGVcXyzSY+eMDyf8kXXvO5SwfkJUxZst
	oJCisvtiNgRBXG+ffcgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpfm-000530-KT; Mon, 15 Jun 2020 14:01:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpfe-00052O-BR; Mon, 15 Jun 2020 14:01:07 +0000
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C7FA207FF;
 Mon, 15 Jun 2020 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592229665;
 bh=4ZrW2imLQHEXjli9BMhglqZFIS7OW1wia511Wm26A1U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=K/KRxrBXnu5c9C61GD1bP9YnkYAS8ruyvyXbp1IrTBwyjJw+wcLWprnxL6Pt+0wlm
 iClKngonSjFnN4GcpEb/ADtDlsiWUqvVUKQ8JDCe6hgbWqgJU1vZkvsgZoL6NfpZR3
 B5ltzhb/M60tsPAqEQpKTzCJp69GVQrDZHrDNus0=
Received: by mail-ed1-f42.google.com with SMTP id d15so11581285edm.10;
 Mon, 15 Jun 2020 07:01:05 -0700 (PDT)
X-Gm-Message-State: AOAM5312qyMRFdEdQb3rK78o7dhAxg9eNTg6qYklxgRD+kJUPpmZR/nn
 9duYWXwkO5SF3NOAZZD6n5koT+81/3Ty0vj2tw==
X-Google-Smtp-Source: ABdhPJzhTQFzeEH1zu8mZaCAKp7pknQNSxFhk52tv3DYlzeZp7BzgLrUFynXCoEueO+cSHinJ+GV8Pn0MiN3cVMAAd0=
X-Received: by 2002:a05:6402:1247:: with SMTP id
 l7mr22777542edw.61.1592229663698; 
 Mon, 15 Jun 2020 07:01:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200612124007.4990-1-bernard@vivo.com>
 <48891eaf60c5e0c449e573a906894db2c3a7b72c.camel@perches.com>
In-Reply-To: <48891eaf60c5e0c449e573a906894db2c3a7b72c.camel@perches.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 15 Jun 2020 22:00:52 +0800
X-Gmail-Original-Message-ID: <CAAOTY__sSV2f4MqSLJYvSW9TGV=bCKXz+zELYREaEOFVjA6XQQ@mail.gmail.com>
Message-ID: <CAAOTY__sSV2f4MqSLJYvSW9TGV=bCKXz+zELYREaEOFVjA6XQQ@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: remove unnecessary conversion to bool
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_070106_412462_827EACB5 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, opensource.kernel@vivo.com,
 David Airlie <airlied@linux.ie>, Bernard Zhao <bernard@vivo.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sm9lIFBlcmNoZXMgPGpvZUBwZXJjaGVzLmNvbT4g5pa8IDIwMjDlubQ25pyIMTXml6Ug6YCx5LiA
IOS4iuWNiDQ6NDHlr6vpgZPvvJoKPgo+IE9uIEZyaSwgMjAyMC0wNi0xMiBhdCAyMDo0MCArMDgw
MCwgQmVybmFyZCBaaGFvIHdyb3RlOgo+ID4gSW4gZnVuY3Rpb24gbXRrX2RzaV9jbGtfaHNfc3Rh
dGUsIHJlbW92ZSB1bm5lY2Vzc2FyeSBjb252ZXJzaW9uCj4gPiB0byBib29sIHJldHVybiwgdGhp
cyBjaGFuZ2UgaXMgdG8gbWFrZSB0aGUgY29kZSBhIGJpdCByZWFkYWJsZS4KPiBbXQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4gW10KPiA+IEBAIC0zMTksNyArMzE5LDcgQEAgc3Rh
dGljIGJvb2wgbXRrX2RzaV9jbGtfaHNfc3RhdGUoc3RydWN0IG10a19kc2kgKmRzaSkKPiA+ICAg
ICAgIHUzMiB0bXBfcmVnMTsKPiA+Cj4gPiAgICAgICB0bXBfcmVnMSA9IHJlYWRsKGRzaS0+cmVn
cyArIERTSV9QSFlfTENDT04pOwo+ID4gLSAgICAgcmV0dXJuICgodG1wX3JlZzEgJiBMQ19IU19U
WF9FTikgPT0gMSkgPyB0cnVlIDogZmFsc2U7Cj4gPiArICAgICByZXR1cm4gKCh0bXBfcmVnMSAm
IExDX0hTX1RYX0VOKSA9PSAxKTsKPgo+IEdpdmVuOgo+Cj4gZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kc2kuYzojZGVmaW5lIExDX0hTX1RYX0VOICAgICAgICAgICAgICAgICAgQklUKDAp
Cj4KPiBUaGlzIGlzIGxpa2VseSBjbGVhcmVyIGFzCj4KPiAgICAgICAgIHJldHVybiB0bXBfcmVn
MSAmIExDX0hTX1RYX0VOOwo+Cj4gb3IgZXZlbgo+Cj4gc3RhdGljIGJvb2wgbXRrX2RzaV9jbGtf
aHNfc3RhdGUoc3RydWN0IG10a19kc2kgKmRzaSkKPiB7Cj4gICAgICAgICByZXR1cm4gcmVhZGwo
ZHNpLT5yZWdzICsgRFNJX1BIWV9MQ0NPTikgJiBMQ19IU19UWF9FTjsKPiB9CgpJIGxpa2UgdGhl
IHNlY29uZCBvbmUuCgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
