Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE0D165448
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMdDX47V6xrU/Q7KTwFi7Nn4OoZ6PzTiFajkPtntghI=; b=ugJU+Ht+2dZ0DB
	HpxDS5ntOrNbxZW+gpiWJqE/J7J7QIsIcUNk5Y9rdtoA4AioxFy9JT05UJCTl4jkQixxCsH76DkWx
	v5sIFoVogJET8WCZ0h6U/WpnVlN6J/R1wb/NDFJMoCxMcAAvjQunfTTO2kIkQVuGA5ACt6QtM/pOw
	3/s8RGqo411pvMdADMd7sCYulKtJ7cIv09u3+1ORjVqLC5MDRIQ4QlSTrVo378vKBouQuGXQhJlFe
	z/Zsol74Tt8HcpuJOoGKyW00vaKN0hn2tjc5tRH9HmLw6FzbyjyD3oZT11pqelDrndJ8X+VOGsGwQ
	QAZlbtnIKw4qT2ccgjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4agY-00050Q-R3; Thu, 20 Feb 2020 01:31:26 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4agO-0004ze-73
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 01:31:17 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m13so173735pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 17:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=szYg2AQsd4vPQUXlNOTQeaWlhRWbCJD6D1ASNIe6NPQ=;
 b=YnmfKpLlHDFp/4r9dbH9mYpcYtDzQkvfjIBwgZOS2FTAVbZEvFLZJV5cYEjVMHryDD
 ZinziWcgxAtkfqZWej/jlk7ErptUcF9zL/uzSUXVV0X8Y/ituH3Puhd62Y94Aby9OSkG
 3UbWxTFpyekwXSZdOygXreubDyUmc65byNxSAW4/uIxvOjBoGj1tmYLH0V8Xds/Gg/TB
 wiCCGBqvOvG9wBmmK/W8WPoO9RMwtjz/i6JLUr2rGsuV4PSe0tqMxW13nlDTwF5PGwPY
 melwQyeC74boGcoqQU9vlVMFYWCOnAYj9pFLH6QPl1xq/lpWe0zHUKeugY3TkPMfI2ps
 bZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=szYg2AQsd4vPQUXlNOTQeaWlhRWbCJD6D1ASNIe6NPQ=;
 b=LRyd10EH0KxOKyP+q1IegCpBY4nt2gPW1n+ubB1BK8KP3wwWv/3oCC7DgJD76ru82s
 D8iC26ZxuGdcciTTix7Z/5f53dFuDV3wThcP1EIsd96mW3PVv52bZaqEhihYVU/hcrPA
 1QvwrdVhvzxlFUEhf6fiRPDrGhsJn8OAexhn+pSjNv4QRo2rzV72SI9e7yj0qKSB2b+W
 J/Iog2uQpkCLVD3NiJzWCfQWukDX4a30nlvwe6wfmfRlUOw5M/RMCOGY5EfOJb4Foc/T
 jlX8DccT7KIKJJjOjRyduBtSLrEvT8RH1sNWUIoY2yPot12y7ajoZtt/EnK+58TogD7k
 CqdQ==
X-Gm-Message-State: APjAAAUue5gy4eFK4qYrQanLvCcSpZgh+qn/4MuAC7Gx7TotRztRxSzf
 JWGUeBRjVssUmFClddv5SdU=
X-Google-Smtp-Source: APXvYqyzmgvxyBGFHEKtfmbVHh4nsUmpCnOiJOLklUkLLXD00WNKvL2PU2ls8e+TkkBLFHlsbUTTpw==
X-Received: by 2002:a17:90a:b318:: with SMTP id
 d24mr687568pjr.142.1582162274835; 
 Wed, 19 Feb 2020 17:31:14 -0800 (PST)
Received: from taoren-ubuntuvm (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id u13sm957679pjn.29.2020.02.19.17.31.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Feb 2020 17:31:14 -0800 (PST)
Date: Wed, 19 Feb 2020 17:31:04 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v3 0/5] aspeed-g6: enable usb support
Message-ID: <20200220013103.GA4830@taoren-ubuntuvm>
References: <20200218031315.562-1-rentao.bupt@gmail.com>
 <5d295199-d0d7-4d58-be29-4621738d7f28@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d295199-d0d7-4d58-be29-4621738d7f28@www.fastmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_173116_258477_14602CF5 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, Tao Ren <taoren@fb.com>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin King <colin.king@canonical.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 10:55:10AM +1030, Andrew Jeffery wrote:
> 
> 
> On Tue, 18 Feb 2020, at 13:43, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > The patch series aims at enabling USB Host and Gadget support on AST2600
> > platforms.
> > 
> > Patch #1 replaces hardcoded vhub port/endpoint number with device tree
> > properties, so that it's more convenient to add support for ast2600-vhub
> > which provides more downstream ports and endpoints.
> 
> Ah, something I should have mentioned on the previous series is you'll need
> to update the binding documentation with the new properties.

Looks like we don't have dt binding documentation for this driver. I will add
the document in my 2nd patch set "allow to customize vhub device IDs/strings"
so all the new dt properties are included in the doc.

> > 
> > Patch #2 enables ast2600 support in aspeed-vhub usb gadget driver.
> 
> Also need to add the 2600 support to the dt binding document.
> 
> Looks good to me otherwise.
> 
> Andrew

Thanks again for the quick review, Andrew.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
