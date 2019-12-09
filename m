Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F791172B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:25:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5jcBO6EAuyCytvMQzHokIDmahoDeDHexUzozS+vKiw=; b=rRP9PmVWoNHi8w
	G2bOqWS1P7vRsYb6xpzDI4TLmW8ujadVFjGKK2C7rrO7L5KmF+UeAQGx7rgTj1Zxz7dYrxFZ/MmVz
	Eo+hZhKXr7hs2SzhDtfURQ6VQ9DO5CaL8LAOndK07yLKEl49Y7NN4qW38t839wWofEkOvVzvslrIs
	8Y3qLPl3e13TSCx0PP6Ak6T8hGFNPEVWn54bQUMeo9gjSYOTbm7RZBEL3sWkNRn5PN5cxdGtQDKkQ
	pPewuaU9QT2UNlATpMSwM2BreIsNbaPmQTIezJe0GiGlLguR5230KlE/MC+vy/rTZyEAxGA47YgLu
	kg/IJVaV/QpI/T671DDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMmb-0002F2-R7; Mon, 09 Dec 2019 17:25:17 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMmT-0001sl-Lo
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:25:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id n12so11370904lfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 09:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=39h33bdVIkmXE5JLS4Mzgvx04if8AkYczTdHC9Zhwzk=;
 b=1wz7VrzMi/YdFIAmJks+xsXMikpqe7Mw/kFEBvyfijdiOeij44+YLbtvJKZH4ULvbP
 wScCDsSKJLll0nkDmHyVVoS4YmQy4upskokb9ge8T2+rwto60Ro7nWkVbYxGiri/RMNu
 QXbxVNFP3LoRUcdCh89UtYye6UNZk3qwjoFPS+VV3hlitVdpsBV2O9xpDIgaPE6nPnsc
 3LUq49FBgEF60QhB6Ktx4N5NIJdawwAKwg4iiilxXeDENzKx2fZR3+QmEIInkSPrAxuN
 omUV08IuXjqOLjaZJADZR8g+6bZdl4tIdldTT0tflbxvCUqp/oq990SgmCr9j6cmQASN
 Vpmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=39h33bdVIkmXE5JLS4Mzgvx04if8AkYczTdHC9Zhwzk=;
 b=lwfVnp8ASfEPwAZm0CydUe/M7MmM1uThkVI2QRRRGBwAhRwdYIkeJd8MffamDh6nkk
 2UUeKMeGTvjuLMUFKcGjapt4E2H13pAES1KDf8orwx3AhoXy+EH1cvaU+DRMv4/CGIJL
 KMD+Ds/ZnE5GY+I1gZiPGc6xPASVMxpWCLVX7xp0RVv02EU7NP1YXulmyu9w+FXPO4t5
 s8FOmH3ONuPVQTI32d61XKBeVUO11RsjUWR3ExXawci4eazvLNoqNqvh13Vt+ZT6TRUE
 BAVCDUBKrcCsnTMHdWWdV5zsc2Ulr1H5hwBmXR6EN+RFBvfXQN9Vv7tI6zE/U6CW9juz
 ERKg==
X-Gm-Message-State: APjAAAWC69i+PcpX9Rcir3fGdad7iD2oB5JCfoyHyDyyDuijVMK+BbZb
 xJKn9W9qziO0M1F/IibUrQsYyw==
X-Google-Smtp-Source: APXvYqzuULhT+kR84BkqZec1H/9Nn4vhOtnzAZRDLb4YQKXJPoMj1QnZgUy/f0FRBr7mBgXhW2Dntg==
X-Received: by 2002:ac2:50da:: with SMTP id h26mr15677545lfm.80.1575912306872; 
 Mon, 09 Dec 2019 09:25:06 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d20sm37285lfm.32.2019.12.09.09.25.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 09:25:05 -0800 (PST)
Date: Mon, 9 Dec 2019 09:23:50 -0800
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL] SoCFPGA DTS updates for v5.5, part 2
Message-ID: <20191209172350.bbbp7bmmikejss2y@localhost>
References: <20191118220559.16623-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118220559.16623-1-dinguyen@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_092509_774750_E63695DD 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On Mon, Nov 18, 2019 at 04:05:59PM -0600, Dinh Nguyen wrote:
> Hi Arnd, Kevin, and Olof:
> 
> Please pull in these additional SoCFPGA DTS updates for v5.5.

Given the timing of this pull request, it wasn't included in the material for
the merge window. I have staged it into arm/dt for 5.6 now though. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
