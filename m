Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8787B1D58F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 20:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gMnmOuVtqWxRkTgmoCcYhwmVMcinck1x/0+1IeWVYbs=; b=e0ZirdiABU++qMeUeYFaJSkHL
	87pdOGDxw/WTRjdYxi8PKdIY3+EJJTYRfdMMr9/0y7xYI1wPLZUfyHyQElKBRs3qODgj3qAPax0zs
	bnphq/8xiUsYJGu7AT4JXkKmE6hWoOOn+aFN+1KVZpgeQO8lUyblYx7N3O5WamHp/xszu3WiYhmv+
	GdQ+xuYtA6UcD2kcspPOtvID44zT8g0XL1FpmXbbjX5qk68Uc79tR6KWM6+5HdqEhBJ/cryO4qMRo
	zpGcv1ERDiHW2rUoB1fiQOKSoz7Sf5TIHX7z3sPAvYaq6TVHPkV/Q08WIgDVdXv6W+PeoXZ3LvSXK
	EA+NUgvgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZewV-0003Au-2a; Fri, 15 May 2020 18:20:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZewL-0002OO-Vk
 for linux-arm-kernel@bombadil.infradead.org; Fri, 15 May 2020 18:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=; b=j6wbmZdqVoZBAoV6S5eTnQqYlS
 eFuAc+Mrt/pjJQn4f2RTR10JIJuJB2VTHicjlFMXtgpxCKGgcMMKdb2Jl9FzqB9ge7vNEZEZ4dBrN
 UtAPc505bbodXxQ+gExKqcvGi/3mCqQhP2KPn1vzbzpVK0CazBbSkOasbyTvvZRFaOJiCzjMnKDTE
 ioom/p5nQWoNOVJ0KThWGZm8OGV8ccEUtsAc5vreMBFjoIR6E/7qmTPm71TJKWhzhCTvpO2g0gtMy
 niM8nE5hH+nG18A4Ba8U4SSXoHWehlidJ+hLSnYJLEuErBvcU89OQ1CrKulSoBchIQ1ipoSizRDJ+
 GSWHBc1g==;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZewJ-0001uD-BH
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 18:20:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589566760;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=;
 b=ZmDYVpXosFgIG3j4+0pLuixbaUp0zFS1KmnBKBjGs3CnGBG2MVpGlMwinLoAhuLSPL2iR1
 FzsUyOqwNbQftJt3Hym+DbuZLr9OSrYewPUjQ4bpVqJQZjEeTUZGyp8P1jYfGuZzkgnrFN
 PSUaC3qT9VqhUbfxOXDk7TiefoJknEs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589566778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=;
 b=Gl1FMKMszZupE/h7fq8r2pNJNOEwWGUJYHFPCoeQkK7wCJ/vbwfNZ/5fVAwTnIG5TiYIh6
 rWAv59O751FOZElQOEVm3gRUHUnyI9P3z+/cdexSfRFwmCh4G2h1VkWxeX5Co2Yi7hWBPv
 Efv/m0RzzYx+E6d3Zw+N120tu7y+G3Y=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589566806;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=;
 b=Qs/xmxSB5pQnSncUV6q4KfRAMDrzNTwK/J6+XxLZIV9eLVKAcV0tg/oBUBpzXZQGssk6Or
 NXXkUhStYQF7foXEAx1rvWRMd2Bcz2gA9u0+zCk96lFkg8FXfj1m8tNJmQKPGuN3YzcaVH
 4+x4w5wtmgEELRiJPhhS8WZRCBJYmis=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-_6T_lYk-OjW6XkDMkLZ1ZQ-1; Fri, 15 May 2020 14:19:13 -0400
X-MC-Unique: _6T_lYk-OjW6XkDMkLZ1ZQ-1
Received: by mail-wm1-f70.google.com with SMTP id f62so1548493wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 11:19:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Fedn2inRka4QMAnXx9FxSm7/vZYS9uY++6sVEGlzAa0=;
 b=bCYl7Sx3sxBtE4g36LTILt0WnqdwPqRm5L7bT++bERzEhfI0juZq5F1Y/idQ3kTSJi
 u8dTVkcwxogPJHlK/w5sb9v7Rs0wq1vTjpc4xCp+pKsND57clFJ9AYz3rjPB5/aPEOn9
 yIpxxU1IQpUSPki6LbPJecZuZoCL+vmgAaLwRkk2R6hs9fPNcYIn17FZtI93hqxuMUxB
 VIoAqFKb8cHfOZqgxlEIojwOxjwY9iCxP6m1U0froqudBsUnt61bE6T5mEgy9AjyUEof
 6rfmNtVD/27mTyemxWixMHOz+5XANJ9gWhs88HlO74pkZyn+2LirdJtPSGdDNdVLsulp
 +0Ig==
X-Gm-Message-State: AOAM531nSRvCFclgnn/avw0A17oGZ6Lfr7G+0S/cGkNYs4L7+wSynAgR
 JzY5zo79V19iBdul62ZSjDOtbiKyTLxOc0td8zy6jQsoE4xvi+3feB/3+CjKFNntixmJFCJwAmc
 o2J0+RR2Ro5CNg/o9bI4oyj6eZEDi1MhV/yw=
X-Received: by 2002:a1c:b406:: with SMTP id d6mr5299487wmf.89.1589566752600;
 Fri, 15 May 2020 11:19:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEhyZogIb52tbS8Sjh71yaPa5wKbVCzzV1bSu62tN2QyZWoHUXHTTKTerADtg5ez9J3v5UBw==
X-Received: by 2002:a1c:b406:: with SMTP id d6mr5299458wmf.89.1589566752273;
 Fri, 15 May 2020 11:19:12 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id a15sm4604338wrw.56.2020.05.15.11.19.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 11:19:11 -0700 (PDT)
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-input@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
Date: Fri, 15 May 2020 20:19:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200515164943.28480-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nick Dyer <nick@shmanahar.org>, Benjamin Tissoires <btissoir@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Len Brown <lenb@kernel.org>,
 Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV6aiwKCk9uIDUvMTUvMjAgNjo0OSBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdy
b3RlOgo+IFVzZXJzcGFjZSBtaWdodCB3YW50IHRvIGltcGxlbWVudCBhIHBvbGljeSB0byB0ZW1w
b3JhcmlseSBkaXNyZWdhcmQgaW5wdXQKPiBmcm9tIGNlcnRhaW4gZGV2aWNlcywgaW5jbHVkaW5n
IG5vdCB0cmVhdGluZyB0aGVtIGFzIHdha2V1cCBzb3VyY2VzLgo+IAo+IEFuIGV4YW1wbGUgdXNl
IGNhc2UgaXMgYSBsYXB0b3AsIHdob3NlIGtleWJvYXJkIGNhbiBiZSBmb2xkZWQgdW5kZXIgdGhl
Cj4gc2NyZWVuIHRvIGNyZWF0ZSB0YWJsZXQtbGlrZSBleHBlcmllbmNlLiBUaGUgdXNlciB0aGVu
IG11c3QgaG9sZCB0aGUgbGFwdG9wCj4gaW4gc3VjaCBhIHdheSB0aGF0IGl0IGlzIGRpZmZpY3Vs
dCB0byBhdm9pZCBwcmVzc2luZyB0aGUga2V5Ym9hcmQga2V5cy4gSXQKPiBpcyB0aGVyZWZvcmUg
ZGVzaXJhYmxlIHRvIHRlbXBvcmFyaWx5IGRpc3JlZ2FyZCBpbnB1dCBmcm9tIHRoZSBrZXlib2Fy
ZCwKPiB1bnRpbCBpdCBpcyBmb2xkZWQgYmFjay4gVGhpcyBvYnZpb3VzbHkgaXMgYSBwb2xpY3kg
d2hpY2ggc2hvdWxkIGJlIGtlcHQKPiBvdXQgb2YgdGhlIGtlcm5lbCwgYnV0IHRoZSBrZXJuZWwg
bXVzdCBwcm92aWRlIHN1aXRhYmxlIG1lYW5zIHRvIGltcGxlbWVudAo+IHN1Y2ggYSBwb2xpY3ku
CgpBY3R1YWxseSBsaWJpbnB1dCBhbHJlYWR5IGJpbmRzIHRvZ2V0aGVyIChpbnNpZGUgbGliaW5w
dXQpIFNXX1RBQkxFVF9NT0RFCmdlbmVyYXRpbmcgZXZkZXYgbm9kZXMgYW5kIGUuZy4gaW50ZXJu
YWwga2V5Ym9hcmRzIG9uIGRldmljZXMgd2l0aCAzNjDCsApoaW5nZXMgZm9yIHRoaXMgcmVhc29u
LiBsaWJpbnB1dCBzaW1wbHkgY2xvc2VzIHRoZSAvZGV2L2lucHV0L2V2ZW50Iwpub2RlIHdoZW4g
Zm9sZGVkIGFuZCByZS1vcGVucyBpdCB3aGVuIHRoZSBrZXlib2FyZCBzaG91bGQgYmVjb21lIGFj
dGl2ZQphZ2Fpbi4gVGh1cyBub3Qgb25seSBzdXBwcmVzc2VzIGV2ZW50cyBidXQgYWxsb3dzIGUu
Zy4gdG91Y2hwYWRzIHRvCmVudGVyIHJ1bnRpbWUgc3VzcGVuZCBtb2RlIHdoaWNoIHNhdmVzIHBv
d2VyLiBUeXBpY2FsbHkgY2xvc2luZyB0aGUKL2Rldi9pbnB1dC9ldmVudCMgbm9kZSB3aWxsIGFs
c28gZGlzYWJsZSB0aGUgZGV2aWNlIGFzIHdha2V1cCBzb3VyY2UuCgpTbyBJIHdvbmRlciB3aGF0
IHRoaXMgc2VyaWVzIGFjdHVhbGx5IGFkZHMgZm9yIGZ1bmN0aW9uYWxpdHkgZm9yCnVzZXJzcGFj
ZSB3aGljaCBjYW4gbm90IGFscmVhZHkgYmUgYWNoaWV2ZWQgdGhpcyB3YXk/CgpJIGFsc28gbm90
aWNlZCB0aGF0IHlvdSBrZWVwIHRoZSBkZXZpY2Ugb3BlbiAoZG8gbm90IGNhbGwgdGhlCmlucHV0
X2RldmljZSdzIGNsb3NlIGNhbGxiYWNrKSB3aGVuIGluaGliaXRlZCBhbmQganVzdCB0aHJvdyBh
d2F5CmFueSBldmVudHMgZ2VuZXJhdGVkLiBUaGlzIHNlZW1zIGluZWZmaWNpZW50IGFuZCBtYXkg
bGVhZCB0bwp0aGUgaW50ZXJuYWwgc3RhdGUgZ2V0dGluZyBvdXQgb2Ygc3luYy4gV2hhdCBpZiBh
IGtleSBpcyBwcmVzc2VkCndoaWxlIGluaGliaXRlZCBhbmQgdGhlbiB0aGUgZGV2aWNlIGlzIHVu
aW5oaWJpdGVkIHdoaWxlIHRoZSBrZXkKaXMgc3RpbGwgcHJlc3NlZD8gIE5vdyB0aGUgcHJlc3Mg
ZXZlbnQgaXMgbG9zdCBhbmQgdXNlcnNwYWNlCnF1ZXJ5aW5nIHRoZSBjdXJyZW50IHN0YXRlIHdp
bGwgc2VlIHRoZSBwcmVzc2VkIGtleSBhcyBiZWluZwpyZWxlYXNlZC4KCk9uIHRvcCBvZiB0aGlz
IHlvdSBhZGQgc3BlY2lhbCBpbmhpYml0IGFuZCB1bmluaGliaXQgY2FsbGJhY2tzCmFuZCBpbXBs
ZW1lbnQgdGhvc2UgZm9yIGp1c3QgYSBmZXcgZGV2aWNlcy4gSG93IGRvIHRoZXNlIGRpZmZlcgpm
cm9tIGp1c3QgY2xvc2luZyB0aGUgZGV2aWNlIGFuZCBsYXRlciBvcGVuaW5nIGl0IGFnYWluID8K
CkFsc28gdXNpbmcgYSBzeXNmcyBwcm9wZXJ0eSBmb3IgdGhpcyBpcyB2ZXJ5IHdlaXJkIGdpdmVu
IHRoYXQgdGhlCnJlc3Qgb2YgdGhlIGV2ZGV2IGludGVyZmFjZSBpcyB1c2luZyBpb2N0bHMgZm9y
IGV2ZXJ5dGhpbmcuLi4KClNvIGFsbCBpbiBhbGwgSSBzZWUgYSBsb3Qgb2YgcXVlc3Rpb24gbWFy
a3MgaGVyZSBhbmQgSSB0aGluayB3ZQpuZWVkIHRvIGhhdmUgYSBkZXRhaWxlZCBkaXNjdXNzaW9u
IGFib3V0IHdoYXQgdXNlLWNhc2VzIHRoaXMKc2VyaWVzIHRyaWVzIHRvIGVuYWJsZSBiZWZvcmUg
bW92aW5nIGZvcndhcmQgd2l0aCB0aGlzLgoKUmVnYXJkcywKCkhhbnMKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
