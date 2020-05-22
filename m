Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E521DE117
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 09:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4wiCdYxBIlJWvtLHLS3O/XNh5eT1TQWJeFiXThCBtk=; b=S99UfQdPusZbz8
	NbugY+Kcae1cratGJb/Z/8qPTeQ4uwtfDtDNqOvy3Lgmmcx6M00q7WNZfgzLPAQwnwWzTraHippQO
	ztIHiPLZUAQemafluoje0cBW0a1zIvC3hKIV77UJcJZWjncZ0qEu249k6Tsr10keHNcDSRlUB4spf
	j2B416eBS3/Kxdtcvmqn7VMV1CKlWF/0JQuDeBfaRu2YV0KtRVbwZ1cCzsqdlcbNroxt56+iJ/rk6
	swnsYJiY9nUWZ6I7TowWHXacsZMXgB83lziWNL5XbMpgMlvhDLrrJFXIOClUSxqzkZeRn0zld/2sR
	PFlA+gKMT17JrHx04oJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2FL-0005DZ-Lf; Fri, 22 May 2020 07:37:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2FD-0005CX-Ba
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 07:37:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id u188so8881820wmu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 00:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=FxhyYotOdsb3Prsxlw/PCmLh9cDfCT3MjS19m7K8Q5o=;
 b=s2XwS2bDg3iy2QFTSYYUp2zSt1XfNkCltyHI70cuooryTjTrmQxbyoYtC7EKyK4J/A
 CMELJ8ZUfGTSxOg6AYlN57glArOF+Ly3LjBs501uqsGcZR+l5Ibxqj5DBoVL8XlApo+b
 atG2eMn0WIvN4x1PzdTxcIHXw7mmI8zyZgEqdH4lRMCpbTWYzhSglv9A05yWl0+Rvm4o
 a1TeQChSuAktfp1bMBydXDruT0T7jEQlllRF0IEpKC1x+j4OCj2MCcDtMbvOQOrfVMww
 V3l5bx0/GQmy7oWXfKlljrEXIicKaJzqGjj0q/1VOv2DQAj2EGtyTx5RDElE8IrTsPbQ
 hSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=FxhyYotOdsb3Prsxlw/PCmLh9cDfCT3MjS19m7K8Q5o=;
 b=GRqdtohRfS2FfJIYqhQ1of+0UqkfXzfpDl3z1NW1gWs4nxW+phh6V3YUU0ggxXn6Ma
 TohoDUbx03caozgjcJqrhY0/TV8FrhKiP5HaF/KxctuREOzt5zn6loUN8mbfi6EifUBJ
 kEObeNa9WNXP583e8GYqS0kb3jmH4teSnJUuguJYQ8vYUeobBEfiafOgIv0NdhjoHCqX
 qjT6xl7aAbQqsMPBPkOCW0JBkNQwVlFWI+eOVvm8YY6tuzzjQp/FRGecdb5b/WzwYnlI
 FfJEzlQoHP6x1xlX8n4E9ns2m+rKiCi9+7bpoShmgx9vfZzqhXUWswnNpGc713r+ZTMM
 dyYA==
X-Gm-Message-State: AOAM531Kr+m4DEsbJth4ZxYByU98PNN1Fo39as2N3rYr4+oSB8mKSMvh
 3OyMrKVPnKRKnC9awmFq4FX/xg==
X-Google-Smtp-Source: ABdhPJxs2hJYnfDm6N4+o9/p+SF/UJ8IDcPxC+ZnYoNz7e9Bj+uhDyIZoQpHZd769I0Jckb0UavO0Q==
X-Received: by 2002:a1c:6042:: with SMTP id u63mr12028802wmb.65.1590133045474; 
 Fri, 22 May 2020 00:37:25 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id l19sm9221775wmj.14.2020.05.22.00.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 00:37:24 -0700 (PDT)
Date: Fri, 22 May 2020 08:37:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: mediatek: Add MT6397 Pin Controller
Message-ID: <20200522073722.GP271301@dell>
References: <20200110145952.9720-1-matthias.bgg@kernel.org>
 <20200115151938.GA8182@bogus>
 <ce3747e5-41db-a168-0602-37337d8530f2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce3747e5-41db-a168-0602-37337d8530f2@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_003727_426114_2C3FB322 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMSBNYXkgMjAyMCwgTWF0dGhpYXMgQnJ1Z2dlciB3cm90ZToKCj4gSGkgTGVlLAo+
IAo+IE9uIDE1LzAxLzIwMjAgMTY6MTksIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gT24gRnJpLCAx
MCBKYW4gMjAyMCAxNTo1OTo1MSArMDEwMCwgbWF0dGhpYXMuYmdnQGtlcm5lbC5vcmcgd3JvdGU6
Cj4gPj4gRnJvbTogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KPiA+
Pgo+ID4+IFRoZSBNVDYzOTcgbWZkIGluY2x1ZGVzIGEgcGluIGNvbnRyb2xsZXIuIEFkZCBiaW5k
aW5nCj4gPj4gYSBkZXNjcmlwdGlvbiBmb3IgaXQuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBN
YXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+ID4+Cj4gPj4gLS0tCj4g
Pj4KPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0
IHwgNSArKysrKwo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPj4KPiA+
IAo+ID4gQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiAKPiAKPiBJ
dCBsb29rcyBsaWtlIHRoaXMgZmFsbCB0aHJvdWdoIHRoZSBjcmFja3MuCj4gV291bGQgeW91IGNv
bnNpZGVyIHRvIHF1ZXVlIGl0IG9yIGRvIHlvdSBoYXZlIGZ1cnRoZXIgY29tbWVudHM/CgpUaGVy
ZSBpcyBhIGN1cnJlbnQgaXNzdWUgd2hlcmUgUm9iIGFuZCBJIGFyZSBib3RoIHRha2luZyBwYXRj
aGVzLgpTb21ldGltZXMgd2UgYm90aCBhc3N1bWUgdGhlIG90aGVyIHdpbGwgdGFrZSB0aGUgcGF0
Y2guCgpBcG9sb2dpZXMuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
