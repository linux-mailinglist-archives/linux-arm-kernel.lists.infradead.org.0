Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9641C5DD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QvCbZZujMfSzrwmDAPVFcJBH/SVkp8BYETJcUM64co=; b=r7jJw4BQ/Q/0vl
	z3DNW8EXjGE6RkxpJbR+6o8toGcYwpzMJG/d5jKugFu4ze1m5I/sxyZj529MoieOmBpoJ0agZieGv
	9OwZ4LyoFzD1xQzQ3e9SZ45Vq4Hu7D04+QKKI5sMSs/dPeFmLFN+XyMyP/yeKR0B/RSZEwVpoOH2Z
	It9SWPNyP5/NEHRIiIC5dZiW2LA191WdslwPDMBA4hxltF15HBDRy5OUvts94HnQfh4fWuQ8Z4tGq
	SUuUzvDZT+clOWTH1zHFeUdrOTJPQnthxj+RbmVWQ1WV0xq3D0b3FFEyQFGc8pgbJ6bZNt84WxpKB
	p1mFTABaAfGcxN87YyOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0hv-00050D-6p; Tue, 05 May 2020 16:46:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0ho-0004z4-VG
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:46:06 +0000
Received: by mail-ot1-f66.google.com with SMTP id g19so2236079otk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 09:46:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=z6UHvy2bHC+nGKEgleyx66e5s4xYSM4ddKdZ92ukujI=;
 b=I/G39kMXhP2g3WZGpWgKNKdJuDlYVjDyU+SSUv6NROt+E1/YRInPv1hM2NEN60w0B8
 TD/YWHDk8sIYLPTEmVNVrXByVIti8raVm9IXzqwYhH6RLbee+wEOJ+b+YwPgtsaTTXRd
 uicwKmaf0aBqr5gFHo6H/jqmnecpA4PEwhAWV7IESObVs8old1M1mneAqLont+TZ7cDt
 tkY37sBlZtdhAI81TpiUkIobEjas3SVr6Nm/5Dc9ZS6iBwIFMh2Omxq3lWidFX+V56VV
 C0bU9xugwiWEJS6IRZ1ijURPU8Bjo7YO9igI2bNIVhgchkhYRqNSxxrhMrYiRJufhFpw
 GwdA==
X-Gm-Message-State: AGi0PuY4rcoC0+wMzP90uelcMVPFDVbWjDSYjVkNnOUV9CZS8Vr6D0V7
 ZZkNRYdtgyaGQm6I34lOh9UpWjkj+QLsba6CYE9Cug==
X-Google-Smtp-Source: APiQypKn5MJKeov3FJiyGU/+h6MprJimE68UiK/y9uNzlvdl+FAS/+uz04/AP2C7f04oGFlgotwushGAOdc5bpFUhLY=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr2786941otn.107.1588697164048; 
 Tue, 05 May 2020 09:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200505150722.1575-1-geert+renesas@glider.be>
 <20200505150722.1575-3-geert+renesas@glider.be>
 <89ad77c9-4bc8-039e-1ba5-e8eb67734597@suse.de>
In-Reply-To: <89ad77c9-4bc8-039e-1ba5-e8eb67734597@suse.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 5 May 2020 18:45:52 +0200
Message-ID: <CAMuHMdV=+J0_d0bUSKtfhkAqDy02aGZwm9fgO2rMpF1rVBTPiA@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] ARM: actions: Drop unneeded select of COMMON_CLK
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_094605_006094_60F5C510 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 arm-soc <soc@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFR1ZSwgTWF5IDUsIDIwMjAgYXQgNjowNCBQTSBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuZGU+IHdyb3RlOgo+IEFtIDA1LjA1LjIwIHVtIDE3OjA3IHNjaHJp
ZWIgR2VlcnQgVXl0dGVyaG9ldmVuOgo+ID4gU3VwcG9ydCBmb3IgQWN0aW9ucyBTZW1pIFNvQ3Mg
ZGVwZW5kcyBvbiBBUkNIX01VTFRJX1Y3LCBhbmQgdGh1cyBvbgo+ID4gQVJDSF9NVUxUSVBMQVRG
T1JNLgo+ID4gQXMgdGhlIGxhdHRlciBzZWxlY3RzIENPTU1PTl9DTEssIHRoZXJlIGlzIG5vIG5l
ZWQgZm9yIEFSQ0hfQUNUSU9OUyB0bwo+ID4gc2VsZWN0IENPTU1PTl9DTEsuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4K
PiA+IENjOiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gPiBDYzogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+IEFj
a2VkLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+ID4gUmV2aWV3ZWQtYnk6IEFu
ZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiA+IC0tLQo+ID4gdjI6Cj4gPiAgICAt
IEFkZCBBY2tlZC1ieSwgUmV2aWV3ZWQtYnkuCj4gPiAtLS0KPiA+ICAgYXJjaC9hcm0vbWFjaC1h
Y3Rpb25zL0tjb25maWcgfCAxIC0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkK
Pgo+IERvIHlvdSBpbnRlbmQgdG8gYXBwbHkgdGhlIHdob2xlIHNlcmllcyB0aHJvdWdoIHNvYyAo
bXkgYXNzdW1wdGlvbiBkdWUKPiB0byBzb2MgaW4gVG8pLCBvciBzaG91bGQgSSBwaWNrIHRoaXMg
b25lIHVwIGFzIG1haW50YWluZXI/CgpUaHJvdWdoIHNvYy4gIFRoaXMgc2VyaWVzIGNvbnRhaW5z
IGFsbCB0aGUgcGF0Y2hlcyBmcm9tIHYxIHRoYXQgd2VyZW4ndApwaWNrZWQgdXAuCgpHcntvZXRq
ZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0
dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBs
aW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBw
ZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpv
dXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQu
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
