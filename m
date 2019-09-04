Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6266A85B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+bM3b3Mw/QTSA0nbxn2GnkzduonA51GDkHiqRet1b0=; b=kSrvayavw644IQ
	NyaxREBOwzm8APDE1QrbK74UmjmwAmtg5yBTIAbYvOmhVouYOevj314GM21uu2O8nSYMQ1OHJcCN8
	E//K7hDX28BewhhEoBDvPAHfcZQXZCsw3kqoRy4qzWBqYjtmX4jiOFuZMgeuRZwN9jabhuirNVNxK
	cq8IRs4fkXeB+9ONA891iQYVBdomaSi2lUGv+sqC3WjVSLm4ZkoUpoeSXDWz4qNvS8sMbFcMxcVXL
	f7wKAMrJugVeskA2klvy9KyuUn7Ab2YFyUFewsURbsnaXrb2R9YWJ0dY5bFkaSyyVDYqKiwGskjSi
	+29eQVOJ+umDK1xKYoVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WPP-0001RE-Fk; Wed, 04 Sep 2019 14:37:19 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WPF-0001PP-2S
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:37:10 +0000
Received: by mail-qt1-x842.google.com with SMTP id k10so14385653qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 07:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d0VTPW60ciEzDbSTuQuRbRvDT6v3yNxk5P0Eu/d/VEY=;
 b=hiesufd9dof37ty41zVV23FsDbb6EdAGKoci12L+sx2fwRtB7zuTMNJNGKxb5jCwz9
 DHzP8baEkLMKZv0R+vOxPlQHHayCkkRabTRxE9tGv8GBrtCggPbrv9ZneGvLVdciye0W
 oKJ2yS/yMcGJtYnDMEcxkcx3yEjhGETyZ9MZu7+djjYmUlzMqVrfPpacFQSd9195K0Yk
 mzKwBohACfM1r3cNGvit0KpTACzAZaRlCp8vck6+4Czvy9UzZGxwoDAUW1UE9QTSacTp
 1v9NfrdGanfNnPILfIvtEzagXy8O4LjEy7mQ3Bfk9PNhEOIwk3xsV5QiVUDi0i3zAIKi
 FSkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d0VTPW60ciEzDbSTuQuRbRvDT6v3yNxk5P0Eu/d/VEY=;
 b=ipCj/DIYJEPXdwoJTwmJYO0ZDpwIBkLI29QHQQmbx/c5rPh+fc7lEQ3Vnr6tg+wetS
 ON+6cL7F+cKJImwAIUfpiR5PoucrWSwsxv+8JfVaZDzi9CUj5IqCTVtTVs6MiMU4c8J4
 EkXGMgMrS0TpHhX6CH445YgJuS46HorTJwZgS05xpyPBNZzdPbCYkeCDuH7C4QW8VQcq
 c8Zyc9E7e21r25+L6tBavxfM0N1sPSpG7Hsqxa59zOLF1TfNNszeRuwh1T5TpiODBBKg
 wligV0QuPi/aOyOyY7YyZEae860uEC2jYAKn2ywlYV6gEMuCpLFBFyhk2I+CKdZT9d7M
 Cv0A==
X-Gm-Message-State: APjAAAU6jrn3RHTsmLlo0ssR5towfNN75xqABGRp6UiByXW/8oeRGHMU
 lZjmf5lbqhNrZHAZcZ1qtA3E+A==
X-Google-Smtp-Source: APXvYqydJPB93Rq3tw9fCKkC0CyDiSk4cXDU16sZXbMdZsRfW6glWdDAFI3nQyAxZg890Jq23AVzJQ==
X-Received: by 2002:a0c:c15d:: with SMTP id i29mr18468496qvh.5.1567607826937; 
 Wed, 04 Sep 2019 07:37:06 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id x5sm4919859qkn.102.2019.09.04.07.37.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 07:37:06 -0700 (PDT)
Message-ID: <1567607824.5576.77.camel@lca.pw>
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
From: Qian Cai <cai@lca.pw>
To: Walter Wu <walter-zh.wu@mediatek.com>, Andrey Konovalov
 <andreyknvl@google.com>
Date: Wed, 04 Sep 2019 10:37:04 -0400
In-Reply-To: <1567606591.32522.21.camel@mtksdccf07>
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
 <CAAeHK+wyvLF8=DdEczHLzNXuP+oC0CEhoPmp_LHSKVNyAiRGLQ@mail.gmail.com>
 <1567606591.32522.21.camel@mtksdccf07>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_073709_249194_67CEF6E5 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA5LTA0IGF0IDIyOjE2ICswODAwLCBXYWx0ZXIgV3Ugd3JvdGU6Cj4gT24g
V2VkLCAyMDE5LTA5LTA0IGF0IDE1OjQ0ICswMjAwLCBBbmRyZXkgS29ub3ZhbG92IHdyb3RlOgo+
ID4gT24gV2VkLCBTZXAgNCwgMjAxOSBhdCA4OjUxIEFNIFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1
QG1lZGlhdGVrLmNvbT4gd3JvdGU6Cj4gPiA+ICtjb25maWcgS0FTQU5fRFVNUF9QQUdFCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoGJvb2wgIkR1bXAgdGhlIHBhZ2UgbGFzdCBzdGFjayBpbmZvcm1hdGlv
biIKPiA+ID4gK8KgwqDCoMKgwqDCoMKgZGVwZW5kcyBvbiBLQVNBTiAmJiBQQUdFX09XTkVSCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoGhlbHAKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoEJ5IGRlZmF1
bHQsIEtBU0FOIGRvZXNuJ3QgcmVjb3JkIGFsbG9jL2ZyZWUgc3RhY2sgZm9yIHBhZ2UKPiA+ID4g
YWxsb2NhdG9yLgo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgSXQgaXMgZGlmZmljdWx0IHRvIGZp
eCB1cCBwYWdlIHVzZS1hZnRlci1mcmVlIGlzc3VlLgo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
VGhpcyBmZWF0dXJlIGRlcGVuZHMgb24gcGFnZSBvd25lciB0byByZWNvcmQgdGhlIGxhc3Qgc3Rh
Y2sgb2YKPiA+ID4gcGFnZS4KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoEl0IGlzIHZlcnkgaGVs
cGZ1bCBmb3Igc29sdmluZyB0aGUgcGFnZSB1c2UtYWZ0ZXItZnJlZSBvciBvdXQtCj4gPiA+IG9m
LWJvdW5kLgo+ID4gCj4gPiBJJ20gbm90IHN1cmUgaWYgd2UgbmVlZCBhIHNlcGFyYXRlIGNvbmZp
ZyBmb3IgdGhpcy4gSXMgdGhlcmUgYW55Cj4gPiByZWFzb24gdG8gbm90IGhhdmUgdGhpcyBlbmFi
bGVkIGJ5IGRlZmF1bHQ/Cj4gCj4gUEFHRV9PV05FUiBuZWVkIHNvbWUgbWVtb3J5IHVzYWdlLCBp
dCBpcyBub3QgYWxsb3dlZCB0byBlbmFibGUgYnkKPiBkZWZhdWx0IGluIGxvdyBSQU0gZGV2aWNl
LiBzbyBJIGNyZWF0ZSBuZXcgZmVhdHVyZSBvcHRpb24gYW5kIHRoZSBwZXJzb24KPiB3aG8gd2Fu
dHMgdG8gdXNlIGl0IHRvIGVuYWJsZSBpdC4KCk9yIHlvdSBjYW4gdHJ5IHRvIGxvb2sgaW50byBy
ZWR1Y2luZyB0aGUgbWVtb3J5IGZvb3RwcmludCBvZiBQQUdFX09XTkVSIHRvIGZpdAp5b3VyIG5l
ZWRzLiBJdCBkb2VzIG5vdCBhbHdheXMgbmVlZCB0byBiZSB0aGF0IHdheS4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
