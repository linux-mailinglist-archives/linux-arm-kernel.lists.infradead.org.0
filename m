Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE3B8E5BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 09:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8BtUDy5qvGHjqpJhcBNMPWprjccJ4hx70G7ht5WRWs=; b=VEunDs4hhGUpq2
	ogO/j6Bly9wMf/4z+Hc1PtzwxWqsZovr8T97kS5OnS37z5Xqo0h3x0Jzw9ySqZh5/gnzRcwfxUixm
	GOi6z7WRu+2e4a9MTRCY5lpsRO+Y+zQZM3CPHSQ9c5mwCo15yHo+dflzTeznC3CID1Hx4135kefDQ
	+A3W1kH2wZfpSvn6HisiwpIrLBYgt+WJixO3K0WJNdlajrKitNBev+KWG18Q8PXpVadRvLi66zNfX
	CVxzHwS0Vq8lPPn4F5dxCcm5+jmNhtIdaMY8s193Rk/lBtIWGlFzxow3qJOvUaYGF2EdlB3xcEOau
	pZe2fDPIzuRcl9kr3lGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyATE-0007eV-R8; Thu, 15 Aug 2019 07:46:53 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyASv-0007e0-Ot
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 07:46:37 +0000
Received: by mail-lf1-x142.google.com with SMTP id x3so1097155lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 00:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KvqA7IsnNASc7CJ4IW1giEyezsBAXupdGLtj7uVYzjo=;
 b=sVDXhXrw4Mg8Lz4WDAzFmuZ45tFznhV2dEah0EpU/mgvuFCNNZJ8gF3oAGHnwiC/KH
 XQyopiul1TP//82B6W+1RH4gU7cIYK9c2/2GBjbSCIwLi9c0pcyeQgSYfNVBn8siH7V3
 Z/iO5QKNgpMNJ//tZjmDHSpJ8IfF3daj+YkyW33pi8vBomTucb0aS0vkbqHqeaRPkpMD
 oODl52VETergHl5tqgx/qNYXfDntP+fOrksSkNhFreNxhgYSdpzQDLenR4hTUUTlIBvG
 aOKQurFvaPhT5g4ttSxG8sPcu9UG92/qMss9ZZVGDHDH+NvLylYJvdQi9FAfPHKzSLo5
 O2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KvqA7IsnNASc7CJ4IW1giEyezsBAXupdGLtj7uVYzjo=;
 b=RaPQsR+0a1yszimtdBa9tORFXlkKRH1e8Wa08bIeT1cmQJw7h8S8z3H1B5WnbO4jcR
 t+5NPSftJAtGJT0vY6EzQFut6VH0KggwU4Y0yC2Ll2Gc2jhm5FEXWPV4ennjGUkgbYUs
 MO0W5/LRbNjVcCH7Ad2XmPWGl8KripYpsz4gseFNVmjl1xsx2YxIqnCp3kC3iwNJ/ULC
 2cjR3sIOcBlSKxyZ2Q9VS3Yzt9tAXwA7fBeHZYTZrK5O9BOvSrJ6JCI41LzdyflOPDIh
 +cPqS2JdZ3DGaK8EafW3eqpEqM1e7Qs854p/V/Kq1M+s8kChdEG2zMC1eoMSHL9gzZS2
 NaKA==
X-Gm-Message-State: APjAAAWCmzy4QS6Y5YNdcOwGpsFhH8nhwbnljChG4nBISj3VGgurikko
 mala9G4EKQX3sDhLZFHNVi0Y3Oe98LZxV/iSq466nA==
X-Google-Smtp-Source: APXvYqzkhC2NmCMDusfDasVwyN9Dfskh9WToFmpwdWNabOnvXr7WeusCj090idUG5TCvhv0VfZX4fsMlPOQ6am60p6Q=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1546229lfq.152.1565855192086; 
 Thu, 15 Aug 2019 00:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-2-lokeshvutla@ti.com>
In-Reply-To: <20190809082947.30590-2-lokeshvutla@ti.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 09:46:20 +0200
Message-ID: <CACRpkdYwOaiNyZ-hhXF2Ly4-tZ67o2u+ouRmsjoXiRbY=+YXoA@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: gpio: davinci: Add new compatible for
 J721E SoCs
To: Lokesh Vutla <lokeshvutla@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_004633_821491_D3F0FA7F 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, Tero Kristo <t-kristo@ti.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 10:30 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:

> J721e SoCs have same gpio IP as K2G davinci gpio. Add a new compatible to
> handle J721E SoCs.
>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Patch applied with Keerthy's review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
