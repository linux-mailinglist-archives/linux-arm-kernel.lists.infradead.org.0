Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2C3F29C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlUHo98odekSW9E6auMeVXrbH7klnuP41bRDpYll9k8=; b=B7wK1TTKNfZncS
	BFiS+pTwq2tRnN32/RFCqAVmzKmw+Ma5iyCNV+m8OGR+nCRGmmpw1RELIbP7XnVK2u9RtXIc+oW0L
	n0sg+afVn1Fmi6c0pP2fu88V93n2Q2tVTgWMR+wbRJHDXYp+ygtJcUnBFYXDeBqU0YEnp/+PysvQR
	Vl8eHaXV2/xj8Jp057yQ7amxnBPqcy65arYd9UEiuZ9xpmkdEohNIo0dfF8MDJH9JgIAoMbyNd/v1
	5T4fgfXvalCqrMs+7ijKJRfVUF3ActpuSUDQxLNQpIUzeRqeQQZL7D2WT8R27fAxavRkpDvI8QeqI
	YXXpQqM6eGJJao9weAQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdWm-0005eL-DR; Thu, 07 Nov 2019 08:52:28 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdWf-0005dn-3H
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:52:22 +0000
X-AuditID: c0a8fbf4-199ff70000001fa6-ff-5dc3db3fd332
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 8E.72.08102.F3BD3CD5; Thu,  7 Nov 2019 09:52:16 +0100 (CET)
Received: from WILL-MAIL002.REu.RohmEu.com ([fe80::e0c3:e88c:5f22:d174]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Thu, 7 Nov 2019 09:52:11 +0100
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "nandor.han@vaisala.com" <nandor.han@vaisala.com>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
Thread-Topic: [PATCH v2 0/2] Add definition for GPIO direction
Thread-Index: AQHVlJrx7wcBaYPaxUmQrQAzc732Rad+AIyAgAAhVYCAAS5RgIAABxwA
Date: Thu, 7 Nov 2019 08:52:11 +0000
Message-ID: <2ca76ecb58b9e6377925d6790ff4f7722604f57b.camel@fi.rohmeurope.com>
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106120846.5bunrqj3uz4khih5@earth.universe>
 <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
 <20191106142441.GC32742@smile.fi.intel.com>
 <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
In-Reply-To: <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-ID: <854708258CFAAF48AF358D516979CCB9@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe885bq+XU+82bW9WQqMLRU4lgwVW+xCyikIp+lANO+bJSbvI
 2RStD2klMS+l5q2VF8wsUspmlqgDnVIpmB9C8RblJUENTZRJKKtztlK/nPf/Pv/n9/xfOA8k
 pWWiYJhktLCckdErRH5U+4sVe6h6pFMb7logVC1foCrvdimhWirvoVTljwuBqmj1OaGyTwz4
 qJqm5wjV3fkSoIaa/nstYs38YJZYU9AbqhkdaBNpKrpjNY01tzQjTf2UZtEeEgMv+kfFM5bU
 c0mJxrBjV/x1X2vKRMkfJGnT716RGSBXkg0gxCgS53Sps4EflKJ+gFfyin2ygS9/+QiwtV4p
 9IhQFM4eEgs9gegXwJ3jhUC4kMgNsGMhhxQAGTqKe99MEoIORMfwp7pSyqujsbW9FgiaQrtx
 Xnu3p06js9jVOk56k5sIXFCc70n2RbG4st3tAQDaia0Zc56hJJJj+9SypwcjhGva+kivDsLT
 E+5/dQV2/B6jhFeTaD9+3RLmlWrc8EPmnbILF+WMib1PkODuR5NUPthq2xBgW4dt67BtA2zb
 AFcBn5cAG5gkfSJjYSOUHJui5Ew6A39cNRnswPuPl5rBH+dJJyAgcIJtkFAE0YecTq10c7wp
 IV3HmHVxXIqeNTsBhqQikL58v0MrpROY9BssZ/pvbYeUQk7vGyvQSpGQdZ1lk1nuv7sDQgWm
 c4c6tVIJxyayadeS9JZ1m4C+wnC/4EAza0xgOSbFoosTtiPOzK+HYAXwuS4Bp83JjIGvetEe
 EAHzp8urSTjaUMF/u8qfVZNSymgyssFy+ogAIAHQpRjX4maAHAKFjFYLbgC/7mvTZvgggg8K
 H3QKQRZm3QrOAJJIcW7f503KDoMoemE2Vv394ZaGqpi5PU+eyoyXfE+Ryqmbp3++l4X2hLuK
 HPTBJXfdhdZ8V9QweLE3c3a19oHBKs1szeqvr250pLqX39b5+8lDqmOsx/VZK4uryppVrU9d
 yfjQ+eXDY857+Iy+cvTEbl1z5HLAsOxOb3PON4eCMuuYiAMkZ2b+AuiBlI+rAwAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005221_288492_C60D4775 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "andrew@aj.id.au" <andrew@aj.id.au>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu, 2019-11-07 at 09:26 +0100, Linus Walleij wrote:
> On Wed, Nov 6, 2019 at 3:25 PM andriy.shevchenko@linux.intel.com
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Wed, Nov 06, 2019 at 12:25:18PM +0000, Vaittinen, Matti wrote:
> > > If no one
> > > else will take the pinctrl part then I can probably do pinctrl
> > > patches
> > > for v5.6 cycle.
> > 
> > For pin control Intel, since we send PR to Linus and it won't be
> > different to
> > him, we would like to see patch per driver.
> 
> It is generally good to bundle these changes because so many
> driver maintainers are passive. (Not Intel!)

That reminded me.. I got 'unknown recipient' replies
<nandor.han@ge.com>: 550 5.1.1 No such user - pp
<semi.malinen@ge.com>: 550 5.1.1 No such user - pp

from both Semi and Nandor - who seem to be the only maintainers listed
for XRA1403 GPIO EXPANDER in MAINTAINERS.

XRA1403 GPIO EXPANDER
M:      Nandor Han <nandor.han@ge.com>
M:      Semi Malinen <semi.malinen@ge.com>
L:      linux-gpio@vger.kernel.org
S:      Maintained
F:      drivers/gpio/gpio-xra1403.c
F:      Documentation/devicetree/bindings/gpio/gpio-xra1403.txt

Anyone knows new mail addresses or perhaps the separate entry
for XRA1403 should be removed? 

> If you are concerned, what about we just make a separate patch
> for the drivers under drivers/pinctrl/intel and bundle the rest?
> Possibly Geert want the sh-pfc changes separately as well
> as he build his own pinctrl changes.
> 
> Rough consensus and working patches.

In general - Which one is harder? xD

But this works for me.

Br,
	Matti Vaittinen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
