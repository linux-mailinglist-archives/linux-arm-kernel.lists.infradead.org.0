Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262F87DEAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAR75aEzBsev5sDovCC92tWAUUZpFqTvLhWzJN7uf10=; b=Cj5Fi/yoyKyIA4
	+xfLhTGTWttZkjMGHBPlmK+PEiY49zWOnhiakY7vo11pKfK1/0n/10tcOb4PT1UTFrYxeXfOO1vsC
	p6wkD5rAS/Begn8Hah4ztqlDaOS2ADqMvVHFpcIGu9ubz9Xo+YgM1hnxmrpcp0mLOs0S0rzYbgQwf
	jqheWvrj7Y6PiNpxCUvm0G+vimB3t+aCzbkjjDstaXTDZ/A3ct0svsR9VUD7dp9IqtLmzVrd0Su/d
	7CnGXfK1JaYKbG1/iKL4aDJghJA3pZpsL9FWcWTGOoFUGVlBl3B4X/O/cEy6h/gqzNImfw0CyzCSk
	Ubt3dLBXAgHge2cu9Zmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCsW-0007wx-PC; Thu, 01 Aug 2019 15:20:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCsL-0007vX-MO; Thu, 01 Aug 2019 15:20:18 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CB0821726;
 Thu,  1 Aug 2019 15:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564672817;
 bh=A5WVsf7G2kFJI6lI2lC6kb+wdtK4qcYkyJefqOmwKnE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iPvinyI9HCcagqoyjJOmSXdt/1odOuDy24qOv1sHtO2tFYo60EpDtdKR/vJkNTLxQ
 p1YslmBdSI7GE9rHshrM3LJXBthjFmaRgRZ9sLnG6U5C+jCVIzUBAcJCSQjEKodcOE
 71A/4oGB0Wb1P3jtkbdnyfpUrr3DzyZXYWLie7KI=
Received: by mail-qk1-f174.google.com with SMTP id s22so52357047qkj.12;
 Thu, 01 Aug 2019 08:20:17 -0700 (PDT)
X-Gm-Message-State: APjAAAWGmiJsK1u3+6SINQkA038sOYyWuNYWzyBfyoWi5pyCrw89/zqW
 x6vcp2L1x7yGqq9AySddYG2zNqoMy/PPwh8TzQ==
X-Google-Smtp-Source: APXvYqyOTDfIkp0PiGP+4XgmfZUgR81KtILQm6TcrNNBpWndNc5glbXR+cfHFaU1qak5P984zIWlLDST+tVjYpRqtxI=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr21061481qke.393.1564672816295; 
 Thu, 01 Aug 2019 08:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190801135644.12843-1-narmstrong@baylibre.com>
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 1 Aug 2019 09:20:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL7FEAJ9S5j9JSwfj+t8434KsEOcxKEMWNFnG00b07JMA@mail.gmail.com>
Message-ID: <CAL_JsqL7FEAJ9S5j9JSwfj+t8434KsEOcxKEMWNFnG00b07JMA@mail.gmail.com>
Subject: Re: [RFC 0/9] dt-bindings: first tentative of conversion to yaml
 format
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082017_755016_80101EDF 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 7:56 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This is a first tentative to convert some of the simplest Amlogic
> dt-bindings to the yaml format.

Great to see this.

I've gone thru all of the patches. Some of the same minor comments I
made also apply to the patches I didn't comment on.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
