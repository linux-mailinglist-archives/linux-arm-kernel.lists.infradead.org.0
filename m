Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5B016BFBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 12:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rm6NG/AjVvl8FtSS4jSLIjtEh6ctRS5LkoLWbYYzQQw=; b=Fd0n2pFX3dmzgK
	j7l+zz/AsJPlIHkU7dBEX8NLVXbPpMxo+CLoGxPGAMq7csQWLd/32tHTPINru+NZAXbDubAUOLTET
	960Z37fl6aDRDcITgQ9Gbrk4WzfbXsoWAao6YnRkXcZybBlpNDfeXsP00dxsUwhlV+k+RgOxJMd1U
	fm/EsJ9SfD6BWaKT+RKbUzfj5E/8e/8dEogOkTrZVk8RUx/2CnAvOzWij8yleNvMT6jwSnWEB43CY
	NIx3SThhvrMXvwG7th8UObCBJU5Oh9gcxnjq+1hVTyNR9iKVr94C7VKSZVvvcX4zstmoJWyMB7u+W
	anDuqH4Fu/K2wfz3e7gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6YXs-00040a-9Y; Tue, 25 Feb 2020 11:38:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6YXh-0003zz-GP
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 11:38:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id m10so2027748wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 03:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vWNd4dO9rM0Zn6N45+ujni9L7yvp+AVlxZygsZuZiUk=;
 b=e0xw1Pqeb1tdU2Rqpqe16SGK7lLTGnDR6ly2V1DQ1l6sUygGKmnIgwkEWEX0+aTNZQ
 Q6qfr55Nc1fi9R2ab8zy1Kw0UB+GDYv/ufui4KBNJbO4XGu4b5uV2/Fh5GiymEgOMXyE
 c3xc8W4oC3Zat68vWtvw/vfp2/6mAxEc34SGMtTqrSCgpXw5i7sWkkXiHfinfaX3hlK+
 0QbWdOIGroVyF1xE06P8DT8pAkA/MgMzkIf7648HJzs+Feyw1FPv7/jLEfbV8ABNg4oA
 DZRVmTNGuoSXNr3saqqnqFEBJj1HNaOtF80QqMYmJjf99hrTGLJalG3rKKZXhvTbXjQH
 c7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vWNd4dO9rM0Zn6N45+ujni9L7yvp+AVlxZygsZuZiUk=;
 b=Dc5wTmRXJC9blsm88Dhgz8ZC0FPvRgLTEjr8QbafT4d1tuKtVG8FgX1B2exz3/Sdnv
 bhTTL8Q8+KXI4G1giceHHMo9V7bWcsWHuCVXU9vyloSYG0+bFQagcmgfs1D1OiYfkHzu
 tHjoP3W7czsJc3D4qA6i42yrAIZ1URy+YwfwpvC0SuFzeJFSDUuWvOFXF28ZEYdI0R5n
 ijVGuPbCNn3FzMlBicGrIYdqp868QoKFC3BmXVIbwJw+8OsdT2dR27ro+hJ/e4zPMNwq
 T3DDWA6ykQJDvfkqtBAm6z5pWVf5i3dXNuF4OVsL2QRnY68yC74Q8SORZBenPSc4s6Ac
 dVmQ==
X-Gm-Message-State: APjAAAXpCy13zETS6CDQzXbQ+EmMljXIPEOH24/S2+QnbA2TVomRe3N0
 ge2LUG/XIWTcKovvTja0VcI9V1jN3mjcuxMO0pHO/0WBvek=
X-Google-Smtp-Source: APXvYqxJYb6X2aa8QKMNaCwxTid7DjpjeMWf5aBxYWn0sHuWlTKcUUjVqeGbRB80+4k5vma2rEZLtius03fqLOsmxBE=
X-Received: by 2002:a1c:7919:: with SMTP id l25mr4739099wme.135.1582630703752; 
 Tue, 25 Feb 2020 03:38:23 -0800 (PST)
MIME-Version: 1.0
References: <c753b529bdcdfdd40a3cf69121527ec8c63775cb.1581505183.git.michal.simek@xilinx.com>
In-Reply-To: <c753b529bdcdfdd40a3cf69121527ec8c63775cb.1581505183.git.michal.simek@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Date: Tue, 25 Feb 2020 12:38:12 +0100
Message-ID: <CAHTX3dJN5No9wUSDnmcMQXsGRKXKcLrDx_OhP-MF2yL+dXFu7w@mail.gmail.com>
Subject: Re: [PATCH] usb: gadget: udc-xilinx: Fix xudc_stop() kernel-doc format
To: LKML <linux-kernel@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 git <git@xilinx.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_033825_547115_FFC10B4D 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm <linux-arm-kernel@lists.infradead.org>, linux-usb@vger.kernel.org,
 Peter Chen <peter.chen@freescale.com>, Felipe Balbi <balbi@ti.com>,
 Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpzdCAxMi4gMi4gMjAyMCB2IDExOjU5IG9kZXPDrWxhdGVsIE1pY2hhbCBTaW1layA8bWlj
aGFsLnNpbWVrQHhpbGlueC5jb20+IG5hcHNhbDoKPgo+IFRoZSBwYXRjaCByZW1vdmVzICJkcml2
ZXIiIHBhcmFtZXRlciB3aGljaCBoYXMgYmVlbiByZW1vdmVkIHdpdGhvdXQKPiB1cGRhdGluZyBr
ZXJuZWwtZG9jIGZvcm1hdC4KPgo+IEZpeGVzOiAyMjgzNWI4MDdlN2MgKCJ1c2I6IGdhZGdldDog
cmVtb3ZlIHVubmVjZXNzYXJ5ICdkcml2ZXInIGFyZ3VtZW50IikKPiBTaWduZWQtb2ZmLWJ5OiBN
aWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0B4aWxpbnguY29tPgo+IC0tLQo+Cj4gIGRyaXZlcnMv
dXNiL2dhZGdldC91ZGMvdWRjLXhpbGlueC5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy91ZGMteGls
aW54LmMgYi9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL3VkYy14aWxpbnguYwo+IGluZGV4IDI5ZDhl
NWY4YmI1OC4uYjFjZmM4Mjc5YzNkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91
ZGMvdWRjLXhpbGlueC5jCj4gKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy91ZGMteGlsaW54
LmMKPiBAQCAtMTM5OSw3ICsxMzk5LDYgQEAgc3RhdGljIGludCB4dWRjX3N0YXJ0KHN0cnVjdCB1
c2JfZ2FkZ2V0ICpnYWRnZXQsCj4gIC8qKgo+ICAgKiB4dWRjX3N0b3AgLSBzdG9wcyB0aGUgZGV2
aWNlLgo+ICAgKiBAZ2FkZ2V0OiBwb2ludGVyIHRvIHRoZSB1c2IgZ2FkZ2V0IHN0cnVjdHVyZQo+
IC0gKiBAZHJpdmVyOiBwb2ludGVyIHRvIHVzYiBnYWRnZXQgZHJpdmVyIHN0cnVjdHVyZQo+ICAg
Kgo+ICAgKiBSZXR1cm46IHplcm8gYWx3YXlzCj4gICAqLwo+IC0tCj4gMi4yNS4wCj4KCkNhbiBz
b21lb25lIHRha2UgYSBsb29rIGF0IHRoaXMgcGF0Y2g/CgpUaGFua3MsCk1pY2hhbAoKLS0gCk1p
Y2hhbCBTaW1laywgSW5nLiAoTS5FbmcpLCBPcGVuUEdQIC0+IEtleUlEOiBGRTNEMUY5MQp3OiB3
d3cubW9uc3RyLmV1IHA6ICs0Mi0wLTcyMTg0Mjg1NApNYWludGFpbmVyIG9mIExpbnV4IGtlcm5l
bCAtIFhpbGlueCBNaWNyb2JsYXplCk1haW50YWluZXIgb2YgTGludXgga2VybmVsIC0gWGlsaW54
IFp5bnEgQVJNIGFuZCBaeW5xTVAgQVJNNjQgU29DcwpVLUJvb3QgY3VzdG9kaWFuIC0gWGlsaW54
IE1pY3JvYmxhemUvWnlucS9aeW5xTVAvVmVyc2FsIFNvQ3MKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
