Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E671CB77E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 20:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJwJkCHPAlc9HHngUqO+c9B7UZo68qOQRVwnMw83xbI=; b=DjgFE6VbLSoMQn
	fR/ILcH8O3arhGCbNnXVyuJOHlCpf5IjBQa01WBrgu/kQTk7QL5a2UcqztYHUQnnjYSm/J7DGjLt3
	v42JYpf0MUAkGStmhfGMfp+k26+il1M7CKH+gNyjB76OTzzCoMV1jJnvhuZLItgr3apk22S1eDB+B
	+zn+7zk43SXuBhiIBapSrZtp8x3mXp9TojZw2f8lO+WopOHCeykWPm7ZGe7nHahQNEXd0jkstPX/x
	GMmhpEbHIc+lU/Q1A01tvfU2LEi6McwI2SqxAxRSJ3KGFRvdrPqFR2USKTUd4WZ+tqqcBCKcNbfIZ
	eb0qZI79NZ90CeEc7U9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX7uV-00044x-1u; Fri, 08 May 2020 18:39:47 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX7uJ-00043r-9B
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 18:39:36 +0000
Received: by mail-il1-x141.google.com with SMTP id i16so2309616ils.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 11:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RGIpRsn9hXDxHTNl/QnLM0SbzmG3DHjOVcysfR1ByLg=;
 b=bqJnS5vane6smgkAuFEEcD0f6Ycc9yf0lJgeJRU4JjUw54yjKs7BXh8x7lk1vbGGnV
 0f+IMGeKn3Gw8E15EFVxSoihcpqVq3H2ka3HfRPYyf0OuTLXCPToeBb+OyVQEtZC7lHl
 zuolyQtCP3X66zQBV9+hARMxLnivHPtSnxXf5rUK+0xz88gPQQ3kiIwNSw4silZ09ksy
 iZesm817N+ct23uLjo+cnMxE5KHcCYtZJFFhLRXkIQCkpT0bZ5O/5lBtIwyt1tjgyZpr
 XXPJFtNZ04z6cdHl7rsn9ul842f84tS91OI8taD3ChAh0ODWd61l9meBxJla50/OQul7
 oA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RGIpRsn9hXDxHTNl/QnLM0SbzmG3DHjOVcysfR1ByLg=;
 b=WWUJFzZ35QYfzy/RvdQgBwBzRO09uUs8Kl3r/LP0YOJMzPdbR6u40n7Bc+A05lrgLy
 jEeiwT51pfsQGCisbaW9fd6SJIESD/zxTzIpDc6njhp1yDaGDdAkalfy8Gcb7BaDz0rj
 2eeLWRjX91i+oJARz7UaQVliXgJi3Sb4qUVtW+GvFpj2a4r6v9edQJ7Gu0pE8oUUEtKH
 d2GTmLdVJAmfUeZZQCV9OQJBljCqpzUzM0r/lL3tzldkMR07agmewq8ABsvj2Xm5KSyu
 mDYbMJk4zng002CSf9OVisa4JeH3q+on+by1shfpJWwf3lpVe1TbgbiNgkzkJweg+qmU
 ZrzQ==
X-Gm-Message-State: AGi0PuYFqk1XIpRb4vCRj9xahjzGsZwRQvw7k5Gop41WbAHHthnHhZQu
 pBNxpBYPDtOt7oLZHTmJ3+DmvWxadUloCq74GBNe6Q==
X-Google-Smtp-Source: APiQypIK7HVLTAX4pxfdG4Np+jILsEOGqiII5aB+gQC6LJN5kcIhjqNVKZy0G/G/rBz+o1NbRC9W4C8NgLZeDmRHgVw=
X-Received: by 2002:a92:aa07:: with SMTP id j7mr4467857ili.40.1588963173745;
 Fri, 08 May 2020 11:39:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
 <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMpxmJWckQdKvUGFDAJ1WMtD9WoGWmGe3kyKYhcfRT2nOB93xw@mail.gmail.com>
 <20200507095315.1154a1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMpxmJUEk3itZs4HujJOXUiL80kmEvGBvLF0NFc2UQoVDVTWRg@mail.gmail.com>
 <20200507155650.0c19229e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <c6e12eb6-d6ea-9ba9-4559-b2eda326601f@gmail.com>
In-Reply-To: <c6e12eb6-d6ea-9ba9-4559-b2eda326601f@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 8 May 2020 20:39:22 +0200
Message-ID: <CAMRc=MdKjZbHFfTYV12DjMet3sXbBht+qgiViddxs9csDvrf-Q@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Heiner Kallweit <hkallweit1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_113935_393436_D189A122 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>, netdev <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCA4IG1haiAyMDIwIG8gMDc6NTQgSGVpbmVyIEthbGx3ZWl0IDxoa2FsbHdlaXQxQGdtYWls
LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBPbiAwOC4wNS4yMDIwIDAwOjU2LCBKYWt1YiBLaWNpbnNr
aSB3cm90ZToKPiA+IE9uIFRodSwgNyBNYXkgMjAyMCAxOTowMzo0NCArMDIwMCBCYXJ0b3N6IEdv
bGFzemV3c2tpIHdyb3RlOgo+ID4+PiBUbyBpbXBsZW1lbnQgRWR3aW4ncyBzdWdnZXN0aW9uPyBN
YWtlcyBzZW5zZSwgYnV0IEknbSBubyBleHBlcnQsIGxldCdzCj4gPj4+IGFsc28gQ0MgSGVpbmVy
IHNpbmNlIGhlIHdhcyBhc2tpbmcgYWJvdXQgaXQgbGFzdCB0aW1lLgo+ID4+Cj4gPj4gWWVzLCBi
ZWNhdXNlIHRha2luZyB0aGUgbGFzdCBiaXQgb2YgcHJpdl9mbGFncyBmcm9tIG5ldF9kZXZpY2Ug
c2VlbXMKPiA+PiB0byBiZSBtb3JlIGNvbnRyb3ZlcnNpYWwgYnV0IGlmIG5ldCBtYWludGFpbmVy
cyBhcmUgZmluZSB3aXRoIHRoYXQgSQo+ID4+IGNhbiBzaW1wbHkgZ28gd2l0aCB0aGUgY3VycmVu
dCBhcHByb2FjaC4KPiA+Cj4gPiBGcm9tIG15IHBlcnNwZWN0aXZlIHdoYXQgRWR3aW4gc3VnZ2Vz
dHMgbWFrZXMgc2Vuc2UuIEFwYXJ0IGZyb20KPiA+IGxpdHRsZSB1c2UgZm9yIHRoZSBiaXQgYWZ0
ZXIgcHJvYmUsIGl0IGFsc28gc2VlbXMgY2xlYW5lciBmb3IgZGV2cmVzCj4gPiB0byBiZSBhYmxl
IHRvIHJlY29nbml6ZSBtYW5hZ2VkIG9iamVjdHMgYmFzZWQgb24gaXRzIG93biBzdGF0ZS4KPiA+
Cj4gV2hhdCBJIHdhcyBzYXlpbmcgaXMgdGhhdCB3ZSBzaG91bGQgY2F0Y2ggdGhlIGNhc2UgdGhh
dCBhIGRyaXZlcgo+IGF1dGhvciB1c2VzIGEgZGV2aWNlLW1hbmFnZWQgcmVnaXN0ZXIoKSB3L28g
ZG9pbmcgdGhlIHNhbWUgZm9yIHRoZQo+IGFsbG9jKCkuIEEgY29yZSBmdW5jdGlvbiBzaG91bGQg
bm90IGFzc3VtZSB0aGF0IGRyaXZlciBhdXRob3JzIGRvCj4gc2FuZSB0aGluZ3Mgb25seS4KPiBJ
IGRvbid0IGhhdmUgYSBzdHJvbmcgcHJlZmVyZW5jZSBob3cgaXQgc2hvdWxkIGJlIGRvbmUuCj4g
Q29uc2lkZXJpbmcgd2hhdCBpcyBiZWluZyBkaXNjdXNzZWQsIGhhdmUgYSBsb29rIGF0IGdldF9w
Y2lfZHIoKSBhbmQKPiBmaW5kX3BjaV9kcigpLCB0aGV5IGRlYWwgd2l0aCBtYW5hZ2luZyB3aGlj
aCBwYXJ0cyBvZiB0aGUgUENJCj4gc3Vic3lzdGVtIGFyZSBkZXZpY2UtbWFuYWdlZC4KClllcywg
SSBoYXZlIC0gdGhhdCdzIHdoeSBJIGFza2VkIGlmIGFueW9uZSBvYmplY3RzIHRvIG1lIG1vdmlu
ZyBhbGwKbmV0d29ya2luZyBkZXZyZXMgZnVuY3Rpb25zIGludG8gdGhlaXIgb3duIHNvdXJjZSBm
aWxlLiBUaGUgcmVhc29uIGZvcgp0aGF0IGJlaW5nOiBkZXZyZXNfZmluZCgpIG5lZWRzIHRvIGtu
b3cgdGhlIGFkZHJlc3Mgb2YgdGhlIHJlbGVhc2UKZnVuY3Rpb24sIG1lYW53aGlsZSBkZXZtX3Jl
Z2lzdGVyX25ldGRldigpIHdvdWxkIGhhdmUgdG8gZ28gaW50bwpuZXQvY29yZSwgd2hpbGUgZGV2
bV9hbGxvY19ldGhlcmRldigpIGxpdmVzIGluIG5ldC9ldGhlcm5ldC4KCkJhcnQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
