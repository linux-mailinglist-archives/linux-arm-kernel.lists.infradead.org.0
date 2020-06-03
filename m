Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C56C1ED849
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 00:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7k5rXepoYfMX6seXSBbw4i5TIMcKNFgqi7OUQ7+1Rk=; b=EJzjenaWUHos0f
	z/y3ht2gdA7wM6Vxs6AXWut4k2Ep9he82DBfC8IzUSKVVgDlWbLdjAa+NKJ0pWtV5Wp8x5u0WAJYd
	KTmtdtV4v0Uf7m7Zb1Lxutv/yveSKnLlmrKgHSjyF7FTpYwTiIndViSAL8wl1p/40UDx8oy1I2lBV
	5DS//yH8IP37TU8saf5pbZlYU2iHDevgdd25RsQmIpkz3hsvqFur6CIFiN5laz+i80Pc+MHl3FYBy
	Jy5wsdCFAlaCMHTAmSdxOiiBQ1e2dNWOvHslnKeUC5x4Q/C2s2eVWZbtlMwkiz7aPbhbMPqIps4xm
	6LklmfUNAgmIaNFZZR7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgbS8-0007sW-Gb; Wed, 03 Jun 2020 22:01:40 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgbS2-0007re-M1
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 22:01:36 +0000
Received: by mail-oo1-f68.google.com with SMTP id 7so838372oof.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 15:01:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+06hodQysHDpNsjgZkygN56Nz2rPEoF5BWYIAZ/Qdgo=;
 b=PFtmHjuPoiBC1Ie8cMqw4ZHRH6v+aY85pAys6cUZEr/jqgh2CCXDPHWT0U6ltUrDOD
 mUMPwGtOZulGApoblG8dRFwtaMXdb85Ve7fLX7H5gM0Dnff5kFIMIsWjNP1UneF7jFuK
 DPTtoZ+TXCtKqnbDl3Uh1Z2DqX5GWpKUN8UnNueX9cE0YSaoX+G5zzJlSYFmtyNlKGOD
 XZgJkIIDbf1WcrUDNf2L2CFFnKNkrpX9bkRWd5VGRAIlGF6maFyYmWBCzKqt6cATw4xd
 pAom1/tBlJiCGOPLZ+iEXBA7tXdLsGQ/jMlXe5M8EL9zrssPbRjS4x3B3EjIp3rLIDSz
 6VCw==
X-Gm-Message-State: AOAM532QE0mCQqorcujDae6NU4s9hnfXcAbkdeuVSuQOIYA8HJC1w/mV
 iZusX/CMEXvnhJJ2KNXbwUOPYLX+8iTrdaJ/5+k=
X-Google-Smtp-Source: ABdhPJw2dvLU83LDOWGT3Ey3MICfHVX0fif6rBgcuJmgPR+tbro9yGk/hxuKrku9g4yCfFqkljto2jY7BsgBPmTl34k=
X-Received: by 2002:a4a:db4b:: with SMTP id 11mr1580565oot.11.1591221690958;
 Wed, 03 Jun 2020 15:01:30 -0700 (PDT)
MIME-Version: 1.0
References: <873bfb31-52d8-7c9b-5480-4a94dc945307@web.de>
In-Reply-To: <873bfb31-52d8-7c9b-5480-4a94dc945307@web.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2020 00:01:19 +0200
Message-ID: <CAMuHMdU3wMT_pnh4NE9W9Su6qip_oObgd6OiRCwfuvouqjXKHA@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: stm32-mdma: call pm_runtime_put if
 pm_runtime_get_sync fails
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_150134_717341_8DF8AB13 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Kangjie Lu <kjlu@umn.edu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Qiushi Wu <wu000273@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 dmaengine <dmaengine@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFya3VzLAoKVGhhbmtzIGZvciB5b3VyIGNvbW1lbnQhCgpPbiBXZWQsIEp1biAzLCAyMDIw
IGF0IDg6NTMgUE0gTWFya3VzIEVsZnJpbmcgPE1hcmt1cy5FbGZyaW5nQHdlYi5kZT4gd3JvdGU6
Cj4gPiBDYWxsaW5nIHBtX3J1bnRpbWVfZ2V0X3N5bmMgaW5jcmVtZW50cyB0aGUgY291bnRlciBl
dmVuIGluIGNhc2Ugb2YKPiA+IGZhaWx1cmUsIGNhdXNpbmcgaW5jb3JyZWN0IHJlZiBjb3VudC4g
Q2FsbCBwbV9ydW50aW1lX3B1dCBpZgo+ID4gcG1fcnVudGltZV9nZXRfc3luYyBmYWlscy4KPgo+
IElzIGl0IGFwcHJvcHJpYXRlIHRvIGNvcHkgYSBzZW50ZW5jZSBmcm9tIHRoZSBjaGFuZ2UgZGVz
Y3JpcHRpb24KPiBpbnRvIHRoZSBwYXRjaCBzdWJqZWN0Pwo+Cj4gSG93IGRvIHlvdSB0aGluayBh
Ym91dCBhIHdvcmRpbmcgdmFyaWFudCBsaWtlIHRoZSBmb2xsb3dpbmc/Cj4KPiAgICBUaGUgUE0g
cnVudGltZSByZWZlcmVuY2UgY291bnRlciBpcyBnZW5lcmFsbHkgaW5jcmVtZW50ZWQgYnkgYSBj
YWxsIG9mCj4gICAgdGhlIGZ1bmN0aW9uIOKAnHBtX3J1bnRpbWVfZ2V0X3N5bmPigJ0uCj4gICAg
VGh1cyBjYWxsIHRoZSBmdW5jdGlvbiDigJxwbV9ydW50aW1lX3B1dOKAnSBhbHNvIGluIHR3byBl
cnJvciBjYXNlcwo+ICAgIHRvIGtlZXAgdGhlIHJlZmVyZW5jZSBjb3VudGluZyBjb25zaXN0ZW50
LgoKSU1ITyB0aGUgaW1wb3J0YW50IHBhcnQgaXMgImV2ZW4gaW4gY2FzZSBvZiBmYWlsdXJlIiwg
d2hpY2ggeW91IGRyb3BwZWQuCk1pc3NpbmcgdGhhdCBwb2ludCB3YXMgdGhlIHJvb3QgY2F1c2Ug
b2YgdGhlIGlzc3VlIGJlaW5nIGZpeGVkLgpIZW5jZSBJIHByZWZlciB0aGUgb3JpZ2luYWwgZGVz
Y3JpcHRpb24sIEZXSVcuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAg
ICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51
eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVy
c2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1
dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIi
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
