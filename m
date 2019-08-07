Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BA884442
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 08:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtnS5g9w0oH1OvOt5FZNCc/QK8uEb82kPv3rGuuJaGk=; b=pX1A1AaqEXv6wB
	U8lDyNaQo2z4BBkcjExse2D8wR8jmQX1Ax2WPYyEvy+jjT+C/+pkgKl5Z6mJe5XvWkq0lbgEWWJl/
	ShwRLheWdkcYZuv7Yp8Z9+QhT+GOlOxlw3O5WuO3bIzokLid+9tNZvK/tQzTE7Le95Qtlo4ORvJMU
	f2Y9/N+LsCyB5NsbYdljg65JCxvTJttaoQLpFvgRC6w4dS8EzlgSLXV/MfQL9AgXFQdNRcw9jbImN
	Yy+V4gQPJLU+YZj5UWUJt9n78/JZsnQNUqIl38oBl+PwaXQWyvpx48TTJYo6N1oWypR4iBwnWdYxx
	UmC3zZ5IJGx9LVtJXoLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvF68-0003iH-Qt; Wed, 07 Aug 2019 06:06:56 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvF5z-0003hs-Pu
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 06:06:49 +0000
Received: by mail-ed1-f68.google.com with SMTP id d4so84983740edr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 23:06:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e/lpt31sW6IRKi7RJr9azX9nzTF8MLAC2zx0C+oX2sE=;
 b=dUnjI3QxYL04wERG2wplKuTyxDN3gye+1beXT3t1ZPf6z4mCsWjCoOAs7ElVqrEKKL
 TkICITNWHqj3D0iVZ6TZHyALkR2gjnq8pnnroZME25silYrNxRxphvO+mAFhaT9zeev9
 Q+TjbyaNL01XXxI4BGv4NA+bK2kUkkqJomIzmeG7K7+xIgJ/Mz9NdfK7HluTZAqggH8N
 aHxfcyMFq59i/KmIYqfhbOp1OqZqh8uXI2eBOnrU9BCchlMpp/j8z4TMiREGVYlBfnqY
 UN43RQP90BAcF4G+HmTTVwR9F0ojGBpxkvt3j2PCx+gzZKd1HtqWvtFBxplQR7lcFQ9W
 R9Vw==
X-Gm-Message-State: APjAAAW35ODNVEhgpkVPAVt96rYC5f/JyWAo50AQfE6eqnzK7RSQJ6z8
 KjEb41+JeerVZ6RXrHqXxRWZQYpSH9Y=
X-Google-Smtp-Source: APXvYqwDRDYbF6IEoW/1OYYfF7kqAaTPs91sNhgNp3Kihg44SsplIgYLqHRJVmTj6JUTJ7QmYgtxGA==
X-Received: by 2002:a17:906:d8ab:: with SMTP id
 qc11mr6871619ejb.219.1565158005870; 
 Tue, 06 Aug 2019 23:06:45 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id gz5sm15028860ejb.21.2019.08.06.23.06.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 23:06:45 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id s3so80465458wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 23:06:45 -0700 (PDT)
X-Received: by 2002:a1c:c545:: with SMTP id v66mr8804543wmf.51.1565158005041; 
 Tue, 06 Aug 2019 23:06:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190728145944.4091-1-wens@kernel.org>
In-Reply-To: <20190728145944.4091-1-wens@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 7 Aug 2019 14:06:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v64P6BtZp+nRSG+Qegpx3bO-ie_GHdYpRjJM3Uf0mwvTLA@mail.gmail.com>
Message-ID: <CAGb2v64P6BtZp+nRSG+Qegpx3bO-ie_GHdYpRjJM3Uf0mwvTLA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sun8i: a83t: Enable HDMI output on Cubietruck
 Plus
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_230647_836282_6237CA38 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 10:59 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> The Cubietruck Plus has an HDMI connector tied to the HDMI output of the
> SoC.
>
> Enables display output via HDMI on the Cubietruck Plus. The connector
> device node is named "hdmi-connector" as there is also a display port
> connector, which is tied to the MIPI DSI output of the SoC through a
> MIPI-DSI-to-DP bridge. This part is not supported yet.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied for 5.4.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
