Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57E7D2100
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 08:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rc5NZSDjIrBKax+ddTzB61+KiNNOSj/HXgv0Fiv8/7w=; b=Ubnvv12+Dg8qiW
	6xEW4RF1iL7c2/hXp0c4630ewgitK20pS1lUfvIyVARDOZxAMLU0DTdmNFp8qN1VuUrwmi3jLpkLl
	MH/tTC/s9N8X3Jh61CzMgJDvc+3HCr/yA25K/ikMIqaWxpU/MOgP8I6kgrSOZQ8BkRXMrv83CF1CK
	oxehN2WdgtRBIdJAJyLqV6LgnEfXitExOJEoHs6lSkIo6TaQeQZuQgCJ7TLNY6dMVwRy/juMWi1fe
	uXlTnJTDhRPg73tmSJimWn4kxott1lgjhTdQoWUhLRFGJZRL13Au1JcH+zdcYlJ0LMTDKbopZpU/5
	PL8pCQ5af07DW3Ap7xcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISFZ-0007dK-K6; Thu, 10 Oct 2019 06:48:37 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISFS-0007cg-Cz
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 06:48:31 +0000
Received: by mail-qk1-x742.google.com with SMTP id y189so4643751qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 23:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HfYimyj7XnI5kt+t6lECNj+HcYUo8K48jVJvvrvxJwU=;
 b=CHzh5/CMtBcl4mAy48yu0PywrvQ0pK9mWsdimHH8jgdHSBLl9cNKhCrpdvO4L0Zaaj
 VwAXU+VhkNVrUCrU3RuyIejzaWyqSWwSxMKr7W1whgRO8OpDt4vjoJVGtbQeBkgKQDGh
 vCtjQzVdaFc0D6pK3nDqrBDXTRMmwVcc0T0PI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HfYimyj7XnI5kt+t6lECNj+HcYUo8K48jVJvvrvxJwU=;
 b=OwXTFV/LjeJSMkaVcwht2yPdQ04eXmyEkAc+2Mul2jMFrDiR6cV7uymjWiZ3m10lSu
 K4fmBiHpF39T72ZE063z0WeEkGlLfv8/hjiZaUq6iO1i+54XQ23KeJMGUa9lKtojrpuq
 H3dGkvXzJa4oppB8rE0rAuEYGEXkKHJaUV2hO4MUXNwQQyXIE1yaqvK1wUhIZLqr+h23
 nG6ldUpNoAeb9VNt1sVYp0gRepaxwLgO2RFoVniBKdW/OONReiZbbr7WFsDdwtKojyqL
 qL/XDo5CR+r52dyy7t5aQwBGfsQMKmyDkILhWuUzlXpFwhYz+sBHYjyPd/AQgJNFjzeY
 OYVA==
X-Gm-Message-State: APjAAAV35wPPig6QgYUzFFp17qtlwgciCaqxir56y8mArfoN8+P354+4
 OfBJyMyRz0czwwTQZWyajEKFS+tMR89p0hx1jWM=
X-Google-Smtp-Source: APXvYqwoWtsEFPJ7Ma76eSNtW4TPaTGucXelYXNVmcWl2X/aPwSWHNNk6gYfy+Y0OlvgYSg2H1snmH4FDyZYbyorRFg=
X-Received: by 2002:a37:4dca:: with SMTP id a193mr8086400qkb.292.1570690107291; 
 Wed, 09 Oct 2019 23:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 10 Oct 2019 06:48:15 +0000
Message-ID: <CACPK8XfKCSNsQJa2J2jKZJ7LGZh3zXAOfBYnp5X0w=TH4JfSpQ@mail.gmail.com>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_234830_668185_BCD14584 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Wolfram Sang <wsa@the-dreams.de>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>, Rob Herring <robh+dt@kernel.org>,
 Cedric Le Goater <clg@kaod.org>, Tao Ren <taoren@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 at 21:20, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>
> In case of master pending state, it should not trigger a master
> command, otherwise data could be corrupted because this H/W shares
> the same data buffer for slave and master operations. It also means
> that H/W command queue handling is unreliable because of the buffer
> sharing issue. To fix this issue, it clears command queue if a
> master command is queued in pending state to use S/W solution
> instead of H/W command queue handling. Also, it refines restarting
> mechanism of the pending master command.
>
> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Acked-by: Joel Stanley <joel@jms.id.au>

While reviewing I was concerned about the locking in
aspeed_i2c_master_xfer. It's a bit hairy, and I am not convinced it is
without bugs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
