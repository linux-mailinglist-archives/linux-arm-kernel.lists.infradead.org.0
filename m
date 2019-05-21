Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9843249C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjHXBsFDm8qtREZRDNbUQD9cZTXuVaZ/sGOy2qri9PM=; b=DU2VCYnyZ9/5Hj
	wuypi36ajaUHIG6F0mlhu36HrWoG5OaXM89I9NntNGXeIDa3ZF1171kBm02HEYfbfaAWMIvG5/8ga
	5xDL53iKcyKhSFz6wiR1WEGxDHCzSzz9GHdZ3ZAokMbJ6FRKyIU/TI/qCmqGCX+wCBjrhm2w34oVs
	iSsR/C8zeQVPp3BgvN+bVtJb+KCzXdBR0sqxO83Rpz/3NOGK4Thq9WxNoPhIxX0eqi/VS3LRbqUci
	BHMKLo/Oa4Ihqzc9RCvs61svySbfdc7WlOog6IO22UmomDr0ibGIYSXtgowshbFTll7/g+ogs0ugL
	2KtUR9SD9RPhV6GbMWKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzol-00018I-QF; Tue, 21 May 2019 08:08:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzoc-00016R-3b
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:08:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id b18so17370794wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 01:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=06+DCEbyMY34D3BOjzKRvN7V1nIU5XaEGS8h9soAWyg=;
 b=jSm5ZYDHwpEZV6Lzr77c04c2MsvRIb8GM2tdOjIu3a2j2Kuvh1LWiDWnldvzLDlnBj
 HPNkQsMMobx1yQDQdatXHtT/9sX8GU5yKkLkVHTt0+p3194e/HDjg1nkNJ7XKxTEGBga
 EcdX0Gfgcbm7mFDeTcViHTODqK/m48MVMH4N3DoATpMRcUxtLdFW1jVevWos//50lGmt
 0K2J4UrYGQVYEM9PI67EJdGFvRMoJKYo7J4Ki8Pz132sHFpC62odL2CfXsm2CARdgey7
 WOCYjTdhVfor+T3w+k4roiYmD3KjwBpH4OaDtikgsMElU8vUvadU2JYcpC3mlr3miOh4
 +NTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=06+DCEbyMY34D3BOjzKRvN7V1nIU5XaEGS8h9soAWyg=;
 b=geh7X4yhMRGlBWo3bel31LbevO5LskRbIKebeo0bnMBV76QZ+jiG6t4M7V6bcaGo+P
 OALitfr8jMsvFZek/NOJteff5Du5TcVJKJfwyh9xC8fgCY8tXRi4SMcjufRR9kGkDS+q
 T1kOvumfjWQT6Li11wx7zIeznf1s1Z0LgawyzZgUoGTlTNJsGKgv6yCVyvaANlsNFi9g
 7cMpfhWWcfhqVDQL3q2Dkng/rhqSLUTFE3+lA0pJRTnY7l7LsGAVFRR8h/ThzgjlFf7H
 svzYTKSBjsLuahUj+0i6kXvjfiEeO1QjiUSizki7Yrw86sZi+NCBXXd/5hyXHrdw+Dsw
 JiDg==
X-Gm-Message-State: APjAAAXLRBWDJwRV2RCoOH2C2pZklJ3ww0xx9QQDYuDX2Oc28e/XUyJI
 zsYyKfNvkCrUpTNwWu3UzgKBP/62wz7PNEGcgRIqvw==
X-Google-Smtp-Source: APXvYqy1XwQ/YD98w6cEQSPMGYKJYFFqtxnEz9VURWZ8UkMaYFj8x70GVpHFVifwBScAIxHO6A61uC4G2dXRZMxc1kg=
X-Received: by 2002:adf:dd51:: with SMTP id u17mr44688507wrm.150.1558426084074; 
 Tue, 21 May 2019 01:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
 <20190520194353.24445-3-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190520194353.24445-3-martin.blumenstingl@googlemail.com>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Tue, 21 May 2019 10:07:53 +0200
Message-ID: <CAMO6naw0Fe9g4pTODFs8TfcWBWO8jdf2EOB2ZAhyebqmfMWg9w@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] soc: amlogic: canvas: add support for Meson8,
 Meson8b and Meson8m2
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_010806_283481_807D3838 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 9:44 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Maxime Jourdan <mjourdan@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
