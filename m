Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32AEB50A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UndCJ9cAzgNnHKu1PBY8mQScEz5+mSXBV2WnBIz/d10=; b=IJySAs0Ki2SS1W
	GrBWnkthkPUS+AMPA4T0ORYT4otCCrfRZICXUn7nlKdXUhU9Dr/mfODqFuA/ENxlwRogil3ifAoub
	m2GNGBDeznOwjpIyPZCTuihRQWZnv3Q8N1UuK6vy2Pkp16JOYOSeEHsUoSYGNdnRM0Kx2kbpdIzv6
	m84LIDM61e/1Ux/wEhKrbtQXBvRTRFViC4NvvgF6UNkA8t/U0IRuw7/v/XGEBTOpksMijYX4PBPJG
	j/pgAiLx2OvAhYzk/RQPVG1hGA8XRnIMT2UqBryPg2wp3w/cQkyL1hZceBbEcHeCwMy3DOj4fbygP
	DlZTZdg1tzEcjRILH0Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEiU-0007z0-Ar; Tue, 17 Sep 2019 14:44:30 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEiG-0007xg-Du; Tue, 17 Sep 2019 14:44:18 +0000
Received: by mail-ot1-f68.google.com with SMTP id g13so3256064otp.8;
 Tue, 17 Sep 2019 07:44:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YwnK4pIMscJKpUNIH9WS0x8BYMP10RHEPdGsIe2GTK8=;
 b=FTBoWlrvGpwVvDYVt4sUkTsbLCVOY/TqyuttlHC+YIBry9ihQ72g7O7ZkePRCaREFb
 zxZEqt4Ngo1pZQiaNj8YYxPmZwRjXLdKupjDnEmtEmVCd7e3u6XHFC7+X37A3lOh00S6
 LLKZISjF/i9kh5NbICq97r/hweccHBKrfPtenj3vDOPKhSo27+YQXUGOd4Rv89TNIDuv
 +nveBcnHFFN3OuHpOeSHYWSJ2dIgTpKRSlArt+DaQo7EScVxUDUt9WXQ4dJvf1J4/ODl
 SISePCbFMhqjg6INWaqQrZpVnfwqQH9W5fFHMLzTKOI6B7N4SwgMsvuKJ0uYhp1hEcV8
 7jfg==
X-Gm-Message-State: APjAAAX7CKZvQnpW616H/IT5jIUgxoON543UOAs20f/o9ruYDUqOgHML
 cIEKa65/b9OMtCCzvSzX7SEpWWw=
X-Google-Smtp-Source: APXvYqx1FbLhv1a9jKgf5RMOiCVzoHqYD3Q5Wg9G+dwariWWOABAA7afzAC9ZFvbbyf6luvEOJZhug==
X-Received: by 2002:a05:6830:182:: with SMTP id
 q2mr2843274ota.175.1568731454272; 
 Tue, 17 Sep 2019 07:44:14 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n13sm721322otl.8.2019.09.17.07.44.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 07:44:13 -0700 (PDT)
Date: Tue, 17 Sep 2019 09:44:12 -0500
From: Rob Herring <robh@kernel.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [V2, 1/2] media: dt-bindings: media: i2c: Add bindings for ov8856
Message-ID: <20190917144412.GA23952@bogus>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-2-dongchun.zhu@mediatek.com>
 <20190910173743.GI2680@smile.fi.intel.com>
 <20190917120205.GO5781@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917120205.GO5781@paasikivi.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_074416_470648_DCDCDD5A 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 03:02:06PM +0300, Sakari Ailus wrote:
> On Tue, Sep 10, 2019 at 08:37:43PM +0300, Andy Shevchenko wrote:
> > On Tue, Sep 10, 2019 at 09:04:45PM +0800, dongchun.zhu@mediatek.com wrote:
> > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > 
> > > This patch adds device tree bindings documentation for the ov8856 CMOS
> > > image sensor.
> > 
> > New bindings in YAML, please.
> 
> My understanding is text documents are still fine.

Schema are preferred, but still up to the subsystem for now.
 
> We don't have things like graph.txt or video-interfaces.txt in YAML yet
> either.

That doesn't really matter too much. You can assume common properties 
will have a common schema and just define what's device specific. The 
device specific bindings have to define 'port' or 'port@N' nodes.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
