Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01EF1ED69B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 21:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AmQRkvxX4szwBqDnYuR4EwIB2vYRMc7K7cj1M5csik=; b=NaM5XTjt4x8VgI
	7iNEDgV6nv3R1/viSP/Oi5wacOVlzzs6zLmFpU9zUqbJpeMlHTcbMlQL59DLCFATGiR2bnUZddxq1
	l7Pb96UqtSrLDDIRbR2B/BiHIFkp/5EK2kabHbuMCIFraSAQO3+4Sn7zVntBn64WAdPJjykb8bBRN
	fp+QJNizii/9LIcIadya7/Wwxv7tnr/KZXea9vJPmaUAThYlPhJggK2aAbof62D+QaCEGmqrny+Xe
	Bj8bCXEB9+yJPqHjQ6hOr3T0Z+WqnZTXnJA2+sJIxfYLotTrljUl9O6/TJWz9asc7K1hLULaQhrse
	Y0aWD5lA5L7aQIolZ9EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYtE-0004b3-H4; Wed, 03 Jun 2020 19:17:28 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYt7-0004aI-Ve
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 19:17:23 +0000
Received: by mail-io1-xd41.google.com with SMTP id k18so3615986ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 12:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6d7NwLsGT9XBwpif8ssbO5j7lS7Uj+B9cyPHxQfDOJc=;
 b=ADCpHKoU8KPg9vkQLXJpeR2WvdNX3yale3lmsNmB/MlAT85XGugfW6Lj0JQIuZBniy
 pQhMCZLP6wlhfgTC5gyglucH2XVir347K8atgenZhITjMWwV9H9/FwzDEgYd/1YM9O3e
 A/5oqkqKVDG+XvOnHRH4owoIxfCtewEsQ7GGcKqrkVYiBhThb0Q/wzmL+Xhr/MVq2CNd
 /lmNCqfogZR2eRo2oDHe2UGsyCbvTIH13ZQYfXGfDPdPnBu6L4wBqGJFfVIv7dXtGBEG
 8mbWK69KdDvbTbmX5/BgzPHcEdTQaYVxjxlVv+Id4Dzo3tsflxDTgn6MnBaoVQEfc4M+
 xvhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6d7NwLsGT9XBwpif8ssbO5j7lS7Uj+B9cyPHxQfDOJc=;
 b=SNsZvaBspV/Q5QCvYF784dw7ExBoPwEO1Z3kedyoFGABuugBQMP9prl+VCOKLq3O9Q
 XLM5GbCVLJEuKzExDG+LsachvpJlEjFWVAZd/AKfBMJnQoi/7cIdlnn/2bsZ6bPhoEIo
 4sHXgobee3QpP3lY7tJazy/jlOc9X+/i+DL7HcjiRcT4HPT1etZ4A7YGqYv2PwrQEGxn
 dg5SiH+rECE5qKj46aJKjCX4WDmsD11AmkiMbttiel/eetLBoDHIkhV5AdX+GvCLYjEV
 NNLFEnXNQOgs9gSqW8Wv7ALVS87ppXLWEa+IvEI3w4ukqcTU5uqtvfNLEKR69cgcWhet
 5g+A==
X-Gm-Message-State: AOAM531BJW24cArpN4D/Ktv2bCDHKRPZc0a+55NsBPTzADLFQj+vHBNT
 qVoe0xvz/hN4NxSKxEmzOFZRo4Sp/sKjrAmhJStn0ZBhnlM=
X-Google-Smtp-Source: ABdhPJzEkWwXprp+yt91ZkoWfd2FIUCPSY9OM5q2dRIJlmJE+OxklnUcJjSB4jVOukPnhdXpz7ftkqgqD+u6aFWPSPM=
X-Received: by 2002:a02:dc8:: with SMTP id 191mr1279079jax.95.1591211839673;
 Wed, 03 Jun 2020 12:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <873bfb31-52d8-7c9b-5480-4a94dc945307@web.de>
In-Reply-To: <873bfb31-52d8-7c9b-5480-4a94dc945307@web.de>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Wed, 3 Jun 2020 14:17:08 -0500
Message-ID: <CAEkB2ET_gfNUAuoZHxiGWZX7d3CQaJYJJqS2Fspif5mFq4-xfA@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: stm32-mdma: call pm_runtime_put if
 pm_runtime_get_sync fails
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_121722_036624_270DFC13 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Qiushi Wu <wu000273@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMywgMjAyMCBhdCAxOjUyIFBNIE1hcmt1cyBFbGZyaW5nIDxNYXJrdXMuRWxm
cmluZ0B3ZWIuZGU+IHdyb3RlOgo+Cj4gPiBDYWxsaW5nIHBtX3J1bnRpbWVfZ2V0X3N5bmMgaW5j
cmVtZW50cyB0aGUgY291bnRlciBldmVuIGluIGNhc2Ugb2YKPiA+IGZhaWx1cmUsIGNhdXNpbmcg
aW5jb3JyZWN0IHJlZiBjb3VudC4gQ2FsbCBwbV9ydW50aW1lX3B1dCBpZgo+ID4gcG1fcnVudGlt
ZV9nZXRfc3luYyBmYWlscy4KPgo+IElzIGl0IGFwcHJvcHJpYXRlIHRvIGNvcHkgYSBzZW50ZW5j
ZSBmcm9tIHRoZSBjaGFuZ2UgZGVzY3JpcHRpb24KPiBpbnRvIHRoZSBwYXRjaCBzdWJqZWN0Pwo+
Cj4gSG93IGRvIHlvdSB0aGluayBhYm91dCBhIHdvcmRpbmcgdmFyaWFudCBsaWtlIHRoZSBmb2xs
b3dpbmc/ClBsZWFzZSBzdG9wIHByb3Bvc2luZyByZXdvcmRpbmcgb24gbXkgcGF0Y2hlcyEKCkkg
d2lsbCBjb25zaWRlciB1cGRhdGluZyBteSBwYXRjaGVzIG9ubHkgaWYgYSBtYWludGFpbmVyIGFz
a3MgZm9yIGl0LgoKPgo+ICAgIFRoZSBQTSBydW50aW1lIHJlZmVyZW5jZSBjb3VudGVyIGlzIGdl
bmVyYWxseSBpbmNyZW1lbnRlZCBieSBhIGNhbGwgb2YKPiAgICB0aGUgZnVuY3Rpb24g4oCccG1f
cnVudGltZV9nZXRfc3luY+KAnS4KPiAgICBUaHVzIGNhbGwgdGhlIGZ1bmN0aW9uIOKAnHBtX3J1
bnRpbWVfcHV04oCdIGFsc28gaW4gdHdvIGVycm9yIGNhc2VzCj4gICAgdG8ga2VlcCB0aGUgcmVm
ZXJlbmNlIGNvdW50aW5nIGNvbnNpc3RlbnQuCj4KPgo+IFdvdWxkIHlvdSBsaWtlIHRvIGFkZCB0
aGUgdGFnIOKAnEZpeGVz4oCdIHRvIHRoZSBjb21taXQgbWVzc2FnZT8KPgo+IFJlZ2FyZHMsCj4g
TWFya3VzCgoKCi0tIApOYXZpZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
