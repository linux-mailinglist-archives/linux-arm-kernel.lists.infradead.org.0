Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443C23ABD9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 22:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWT6skVTopqSPB/ypze8CmrAcPL1e8I/zsOxzwp0nuc=; b=U3SQWxWRw3mxxh
	/GzqE+ZAeTtVPZeQU96ksG/bO6YcpEaRXB/Yf7mHlxeynad2z5MYzcXpizxA2yIl/Yv4ksUf7HjGd
	efKx0LOC5tZeSPZ0c38sgcxnoeUL1l3GSE2KjdmzYNvkZ4Q1YgEcOhGj+M8WypTdXIaoWgMusJJIR
	IyIlFGV5V6fhhpUwM1V/joaTNIsg5Omq1J8lHUezVly4gur7lM0JxfPhFqGg+sbnR9k3/cqBk9ZQ8
	5VmajJXqQjSDqqrn9Kv+ZoWmBHrOTIORu8tzz9LYl4tceC14SNYL55oiIMlYGnOFVK4QCpab+sMIm
	4lE7mBkIX/RehwQR6BPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha4eS-0000Md-PB; Sun, 09 Jun 2019 20:42:52 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha4eK-0000LO-Px
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 20:42:46 +0000
Received: by mail-yw1-xc43.google.com with SMTP id t2so2976237ywe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 13:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dHOuiC6jFhECkmRndI+3xRNUfQfecXP3FcFTB3ajICg=;
 b=mbFFD5EGsJnRs+WtuLfzRnsU7i83wTtVB8J5XF2rATaAIYVOgMz7F+JEZGNaHzUvfF
 u5YmOGLpbDkZeGXy6PutvA2NYPJD/76V68n75vw7IvryLqcXA8t6Mum9qFVRgLYgc+w3
 LfNNl6FRGbUzWpheasOWOowkbIvUWj3rKdMMZCdaKgHyzy+gIePTpGCuIoO8hd5/ho6F
 k+1i6cRy3eRvVKwhxiZZBmKsbDy6P0T5DlgkhIRp1GyhhxiQfy86M5t5Q9TnmQ4OJ8RB
 Ri2q95+a8BTeg3xz7IUwzBSXkLmM5ZZlb925gAjT8bg95v1qfPUsKXkWrsG1PwBMOVps
 8s5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dHOuiC6jFhECkmRndI+3xRNUfQfecXP3FcFTB3ajICg=;
 b=PRD1Ff1xoYU3UtpXCmTXES7v3TVA96RONNvHVyCL5WnBoobYVhve5nq/YgsUS3uOtJ
 XA+4U6FJ4h2dGlPXgAphYYVExnRDkB0zoydJdOSMx9W1GKm35gS0Ei0BsLEXb/2rdFDM
 O/fiV7R8elJVYPprB7U9WEHQYknMzseOMrF2teeU5Xynr95hkE3UrxqoMr8qx3CnVAJd
 j3q4xh6zzi2YDX/0ao+RyOMkB9cCUaiirahqnT81BHGp3ieeJJ4jNh8yaJu4qpO/L6wv
 BLbMhlSrVAAw9v3NvgF3NnRFghCROUr1SEpiAe/rdHvfYuBHsgcqgWSfUHSZr67bs5W2
 LPcA==
X-Gm-Message-State: APjAAAWcd+9u/ZE9RdiKfDxr7QsMwEyHgcNL97OB6gyjrJL4FM6tl9pq
 asAlD1TptChcpjnp6veGbEJiU6pyf/QMB8lWk6A=
X-Google-Smtp-Source: APXvYqythVEaeiFW8xnZx3alFf6puC+4RKU77X/tV3b27TEXcp0Dskr/eyS/U9ZI1M0PKDZN+WyHQVOaeJi7ultK2nw=
X-Received: by 2002:a0d:edc3:: with SMTP id
 w186mr13821844ywe.306.1560112962176; 
 Sun, 09 Jun 2019 13:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190527201459.20130-1-peron.clem@gmail.com>
 <20190528111024.gj25jh5vstizze74@flea>
In-Reply-To: <20190528111024.gj25jh5vstizze74@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 9 Jun 2019 22:42:31 +0200
Message-ID: <CAJiuCcebCkdkR9tDOUOEO+Rs-VuSUVLtDpqw3pWUX8o8aPtMsw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Allwinner H6 DMA support
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_134244_870428_34F9291E 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCAyOCBNYXkgMjAxOSBhdCAxMzoxMCwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIE1heSAyNywgMjAx
OSBhdCAxMDoxNDo1MlBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBIaSwKPiA+
Cj4gPiBUaGlzIHNlcmllcyBoYXMgYmVlbiBmaXJzdCBwcm9wb3NlZCBieSBKZXJuZWogU2tyYWJl
Y1sxXS4KPiA+IEFzIHRoaXMgc2VyaWVzIGlzIG1hbmRhdG9yeSBmb3IgU1BESUYvSTJTIHN1cHBv
cnQgYW5kIGJlY2F1c2UgaGUgaXMKPiA+IGJ1c3kgb24gQ2VkcnVzIHN0dWZmLiBJIGFza2VkIGhp
bSB0byBtYWtlIHRoZSBtaW5vciBjaGFuZ2UgcmVxdWVzdGVkCj4gPiBhbmQgcmVwb3N0IGl0Lgo+
ID4gQXV0aG9yc2hpcCByZW1haW5zIHRvIGhpbS4KPiA+Cj4gPiBJIGhhdmUgdGVzdGVkIHRoaXMg
c2VyaWVzIHdpdGggU1BESUYgZHJpdmVyIGFuZCBhZGRlZCBhIHBhdGNoIHRvIGVuYWJsZQo+ID4g
RE1BX1NVTjZJX0NPTkZJRyBmb3IgYXJtNjQuCj4gPgo+ID4gT3JpZ2luYWwgUG9zdDoKPiA+ICIK
PiA+IERNQSBlbmdpbmUgZW5naW5lIG9uIEg2IGFsbW9zdCB0aGUgc2FtZSBhcyBvbiBvbGRlciBT
b0NzLiBUaGUgYmlnZ2VzdAo+ID4gZGlmZmVyZW5jZSBpcyB0aGF0IGl0IGhhcyBzbGlnaHRseSBy
ZWFycmFuZ2VkIGJpdHMgaW4gcmVnaXN0ZXJzIGFuZAo+ID4gaXQgbmVlZHMgYWRkaXRpb25hbCBj
bG9jaywgcHJvYmFibHkgZHVlIHRvIGlvbW11Lgo+ID4KPiA+IFRoZXNlIHBhdGNoZXMgd2VyZSB0
ZXN0ZWQgd2l0aCBJMlMgY29ubmVjdGVkIHRvIEhETUkuIEkyUyBuZWVkcwo+ID4gYWRkaXRpb25h
bCBwYXRjaGVzIHdoaWNoIHdpbGwgYmUgc2VudCBsYXRlci4KPgo+IEZvciB0aGUgd2hvbGUgc2Vy
aWVzLAo+IEFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29t
PgoKVGhhbmtzLCBJcyBpdCBvayB0byBwaWNrIHBhdGNoIDUvNi83IHRvIHN1bnhpIHRyZWUgPwoK
UmVnYXJkcywKQ2zDqW1lbnQKCj4KPiBNYXhpbWUKPgo+IC0tCj4gTWF4aW1lIFJpcGFyZCwgQm9v
dGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPiBodHRwczovL2Jv
b3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
