Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80F5AB88B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mclTDGQxjLfR2KXduvDfJkce3ws5lXP1fXTLF63HBjE=; b=QkqPqmWlVbZAWx
	7tfIjy2YIZ4N4UvQ5UkfnXJyPagVaiIZTuc0oW7CEuAhq+CNDzQR9li0YRl6ZmR5xZFq5V+tFaKad
	h1fJfqltVTcumg6p/u8b+Apo3q96K/NQ21e57V1Fb/8BbkN63P85qnjrRI+kY5gWqT89ZGwWXdGfk
	9uH/A1PXgtX+HO+5KsQ9L9e/u0P+U6neSK8IOJe/wLZ1B/UEkTDFIoV7y4Khd/6oFCa8QXOQTYUZ4
	+tjhdrs9BsP7uZe9eTwDRsrnTMVDKRilA9M01jGTpwIIMUO2nWXLHsL4VELHgmIXeUq7lTw+BcKL9
	ss28AIdDsnm8L3ewXlQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Dnh-0002ON-BC; Fri, 06 Sep 2019 12:57:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Dnb-0002Ny-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 12:57:12 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE9142082C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 12:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567774631;
 bh=NL02bNQfH90Jrh+T8P44tgOkFtizvrx9wmPax7o59to=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vDMxptgHsUae7s7z00ld+VjzFkQDdCjcUSozl7tLfuvMQHWN3Rn35I8UJpOTQP1n1
 +x1TCX+cwuFwmBTss46FBiUWuHnvvt5X+2eAm3Eas/565ha+NwrLKikC8q4IDQAQXU
 ORP3TBiGUU6g2gSv1iHZQ4I4hqdZ9Mg41OurrDmg=
Received: by mail-qt1-f176.google.com with SMTP id o12so6915774qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 05:57:10 -0700 (PDT)
X-Gm-Message-State: APjAAAVXghy4SRNtrrOdcu339e0sUuoKNJceEZkBj2UUmrzkzVojg/64
 ZO7ebO90gpZAEJtlt7mBORhjEuG2mKXxtP3zjw==
X-Google-Smtp-Source: APXvYqyDk0WFHsHVbn49ivVXFxlgtYthvW6nlgjYDlf1/VbP/QyxY/nRvcooxFGw9uRPTPZaOoDz4E2YHy7hCWtcbLg=
X-Received: by 2002:ac8:31b3:: with SMTP id h48mr9073369qte.300.1567774630183; 
 Fri, 06 Sep 2019 05:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190830121816.30034-2-t-kristo@ti.com>
 <20190906103558.17694-1-t-kristo@ti.com>
In-Reply-To: <20190906103558.17694-1-t-kristo@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 6 Sep 2019 13:56:58 +0100
X-Gmail-Original-Message-ID: <CAL_JsqLHTsEz6RJSi3rZ9AKyTBc00abyAxqwG8B9zAqL6cnv+w@mail.gmail.com>
Message-ID: <CAL_JsqLHTsEz6RJSi3rZ9AKyTBc00abyAxqwG8B9zAqL6cnv+w@mail.gmail.com>
Subject: Re: [PATCHv4 01/10] dt-bindings: omap: add new binding for PRM
 instances
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_055711_540831_111CF03C 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:36 AM Tero Kristo <t-kristo@ti.com> wrote:
>
> Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> of these will act as a power domain controller and potentially as a reset
> provider.
>
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
> v4:
> - renamed nodes as power-controller
> - added documentation about hierarchy
>
>  .../devicetree/bindings/arm/omap/prm-inst.txt | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
