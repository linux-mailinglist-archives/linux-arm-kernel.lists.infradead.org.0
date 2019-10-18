Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B865CDC82C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gjIqEk4+nNMv2pTDv0K4ZskJ4UsVKdkFbgnVyQb5BM=; b=NVolAlfg7pMkL0
	JB++IiLN8GsExffpK0sI7MQ2Zkft9W1oeAYkriqrdhEjsg5RQyTCHhg2xCmOcq/dsifewHv8VpZIs
	ERnoYqiQVNfxBQjqzdIWtsvX39Zvq3DnXDeV45t8WeXOM4nPLWbPLDWhd4xyCLZ1FfonZEZcUKkS4
	meHcekzXK0JW3aGpJGPXHgsfhHYeV/DvtaBfnBvx6KHs0moHlaSUtDSdXnrWi6NnpHruJlZNA4lIx
	CUTWT0xZmyyP7aMeq6c9dMhF7qccFKjmEtxHJZ5X9aBqhx3snA6dGOj9DHkPYQDjwyxj0TkiGFm7A
	JC1SSz+CH496vwvOXggg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTvr-00043D-Ci; Fri, 18 Oct 2019 15:12:47 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTvh-00042s-RX
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:12:39 +0000
Received: by mail-wr1-f67.google.com with SMTP id n14so6655118wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 08:12:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=znPvFD0f1zlQCruHGoFCCf395bn0+9S/9gnxw48rV14=;
 b=qRlXTjPfL+4rKFsnoTpr9SlL+iMGH+sc7W2COiK8LkszSbGxrGE8IHf/EWg7lZFh/a
 RVW0EbHXYE3MILMI6fnV8Ixbumk59V3M4qOTtxfq9sJISRgfCjAIenkG28hALqY4dvt3
 d2rJ5dU7rONCKEhAPU7fK6EFe3zJl5EXpdfBJvQC1rY0tTsQvG56Da8Ox7Z4Hu8/5ERY
 sFNsKqL+098FBW1O1taK07f+YXXq1rIIdJdf7iknUPymW4b3SqoUZI8m4AT6NYoUu/Wf
 igkknIJUhnJWmfBnfga748VOuJqScWYms5ekpuLbhDGyELotHOY300Zb3yuAKH8PRXfJ
 VjAg==
X-Gm-Message-State: APjAAAUSLQVHxHkLA8h13iCApmRmlCyHKlGPdycbTSm58AdNkyedw8G9
 8eB590XJf+SB9k11qZPHgs0=
X-Google-Smtp-Source: APXvYqwcRaNHVAbxxBeb+26jHpZVWUA+aTTJ6NMNr8TadunwyujlGbVylSQcPHGSqMJhEzj+5ZUImw==
X-Received: by 2002:adf:b21a:: with SMTP id u26mr8631871wra.119.1571411555563; 
 Fri, 18 Oct 2019 08:12:35 -0700 (PDT)
Received: from tfsielt31850 ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id d11sm6436777wrf.80.2019.10.18.08.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 08:12:34 -0700 (PDT)
Message-ID: <236f4f152d55231336edb3e3a223fea6add58ba7.camel@andred.net>
Subject: Re: [PATCH 1/1] ARM: dts: imx7s: Add power domain for imx7d HSIC
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Peter Chen <peter.chen@nxp.com>
Date: Fri, 18 Oct 2019 16:12:33 +0100
In-Reply-To: <1571023588-9870-1-git-send-email-peter.chen@nxp.com>
References: <1571023588-9870-1-git-send-email-peter.chen@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_081237_890282_EC6D61F8 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: shawnguo@kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGV0ZXIsCgpUaGFuayB5b3UgZm9yIHRoaXMgcGF0Y2gsIEkgd2FzIG91dCBzbyBJIHdpbGwgdGVz
dCBpdCBlYXJseSBuZXh0IHdlZWsKYW5kIHJlcG9ydCAodG9nZXRoZXIgd2l0aCB0aGUgVVNCIEhT
SUMgZHJpdmVyIGZpeGVzKS4KCgpDaGVlcnMsCkFuZHJlJwoKCk9uIE1vbiwgMjAxOS0xMC0xNCBh
dCAxMToyNiArMDgwMCwgUGV0ZXIgQ2hlbiB3cm90ZToKPiBPdGhlcndpc2UsIHRoZSBzeXN0ZW0g
d2lsbCBoYW5nIGlmIFVTQiBkcml2ZXIgdHJ5IHRvIGFjY2Vzcwo+IHBvcnRzYyByZWdpc3Rlci4K
PiAKPiBDYzogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0Pgo+IFNpZ25lZC1vZmYtYnk6
IFBldGVyIENoZW4gPHBldGVyLmNoZW5AbnhwLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9k
dHMvaW14N3MuZHRzaSB8IDcgKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kgYi9hcmNo
L2FybS9ib290L2R0cy9pbXg3cy5kdHNpCj4gaW5kZXggYzFhNGZmZjVjZWRhLi5hNWIzODBmNTMw
ZjggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kKPiBAQCAtNjU4LDYgKzY1OCwxMiBAQAo+ICAJCQkJ
CQlyZWcgPSA8MT47Cj4gIAkJCQkJCXBvd2VyLXN1cHBseSA9IDwmcmVnXzFwMGQ+Owo+ICAJCQkJ
CX07Cj4gKwo+ICsJCQkJCXBnY19oc2ljX3BoeTogcG93ZXItZG9tYWluQDIgewo+ICsJCQkJCQkj
cG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+ICsJCQkJCQlyZWcgPSA8Mj47Cj4gKwkJCQkJCXBv
d2VyLXN1cHBseSA9IDwmcmVnXzFwMj47Cj4gKwkJCQkJfTsKPiAgCQkJCX07Cj4gIAkJCX07Cj4g
IAkJfTsKPiBAQCAtMTEwMSw2ICsxMTA3LDcgQEAKPiAgCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlt
eDdkLXVzYiIsICJmc2wsaW14MjctdXNiIjsKPiAgCQkJCXJlZyA9IDwweDMwYjMwMDAwIDB4MjAw
PjsKPiAgCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsK
PiArCQkJCXBvd2VyLWRvbWFpbnMgPSA8JnBnY19oc2ljX3BoeT47Cj4gIAkJCQljbG9ja3MgPSA8
JmNsa3MgSU1YN0RfVVNCX0NUUkxfQ0xLPjsKPiAgCQkJCWZzbCx1c2JwaHkgPSA8JnVzYnBoeW5v
cDM+Owo+ICAJCQkJZnNsLHVzYm1pc2MgPSA8JnVzYm1pc2MzIDA+OwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
