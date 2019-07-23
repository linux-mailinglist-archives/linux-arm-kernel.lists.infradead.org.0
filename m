Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4204E71D9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32HPfifCv+Xs+w16HmtoxGZlu2nWV5GtWxFDVbh397w=; b=CUj4Px4FaYH2Yc
	XJVUK+esfVkID8anQxBH7MFlgCMuENVAn4tD/uUK27tNOO99CtLaPa4a2p5Ptq02VBA0OfpVuUnGn
	spMWiPaY9YeoFVoPJiyGXdii7ePy0RrtQBApHWTOMG/0JQHVqYvpDn/5mBOi1XxXi8Ect8G6oRkP8
	eKfz7ED9d7ubXCK+sLy62dNIQ04qnttZOvW+qMd4PXsarLD+r9orpq5pb8Uise4nxpgavPAnSUSvn
	IOzWlyyDXLnUkk772lJ51Pa5Y/zpEyHy5urGz2falbs3bQWMWyd50XioDQVTsS0XNIjmUz8HbAzLj
	Ta5fn2ZxMBrMqblsR6rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyXw-0007uR-LE; Tue, 23 Jul 2019 17:25:52 +0000
Received: from mail-ua1-f68.google.com ([209.85.222.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyXi-0007tg-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:25:39 +0000
Received: by mail-ua1-f68.google.com with SMTP id j2so17248924uaq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:25:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Ak6PHqRtmFYlCwA7eq7sGy4+MyVCFHT7VQHt77QIIY4=;
 b=EgGQ02RW41O/ya2Zofq1KB1m2rFDJE19kN0ljNF49gOqOrmPZxHel3aC8gaayWVbG4
 9Jy2JVZRmy8LNhCb5WpXNTHo0nHgkz9pW0Vg2ZIgb3AFubEXzzKfO+mzHznhu3yzsJtV
 sNffce5bTUWG08pZiwBQ7eWX8QG9SRwUB9tfvxQu+IV145wM8Nz9vDiMCZcpViOTd+rT
 Xy/RmoLn6QTpxx+ZjSVuUWtEKLQRpCN8KI6tbv9g8gmHNAY+3fKQyjYpfHwW8UkXaP0M
 /VMduvdeOULbATBOuS7BUhe6VCda0gjdE0Ku2uCMLhHnXbSg2rn93B2wp8M//dMGFXsu
 xphQ==
X-Gm-Message-State: APjAAAVz9rA0WWi/S16+0gZ+rfYhR7F1Q4WngGDNarV1mvRPZQhG88wW
 0b44IbzoUWcIJlyRR7gzmrD/nA==
X-Google-Smtp-Source: APXvYqw0uF8oHC6o3b+oyJybCA0xFk9rEgCNQtXzc3IFxBX1HFG5tKXOR+zyF6vacSP7QeS6Z8/PzA==
X-Received: by 2002:a9f:2e0e:: with SMTP id t14mr31440742uaj.119.1563902737094; 
 Tue, 23 Jul 2019 10:25:37 -0700 (PDT)
Received: from dhcp-10-20-1-165.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id l129sm43826023vki.45.2019.07.23.10.25.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 10:25:36 -0700 (PDT)
Message-ID: <9c9b77b3b76e7a7e87c7c3d9076a8339362157bd.camel@redhat.com>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
From: Adam Jackson <ajax@redhat.com>
To: Linus Walleij <linus.walleij@linaro.org>, Daniel Tang
 <dt.tangr@gmail.com>,  Fabian Vogt <fabian@ritter-vogt.de>
Date: Tue, 23 Jul 2019 13:25:35 -0400
In-Reply-To: <20190723133755.22677-2-linus.walleij@linaro.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-2-linus.walleij@linaro.org>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_102538_451939_73C94534 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.68 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-23 at 15:37 +0200, Linus Walleij wrote:
> Migrating the TI nspire calculators to use the PL111 driver for
> framebuffer requires grayscale support for the elder panel
> which uses 8bit grayscale only.
> 
> DRM does not support 8bit grayscale framebuffers in memory,
> but by defining the bus format to be MEDIA_BUS_FMT_Y8_1X8 we
> can get the hardware to turn on a grayscaling feature and
> convert the RGB framebuffer to grayscale for us.

What's wrong with DRM_FORMAT_R8? Yes the hardware is not really
"redscale", but it's still a single color channel and there's not
really any ambiguity.

- ajax


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
