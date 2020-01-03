Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC8A12F9CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 16:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+j5GTN/NhgJap88jEgwr3ACfZE6boOQg8Uyjt783Y0=; b=JbDLV7/6T9K1Dl
	1bUVWTwQoPrkonAZS7x0/RQEdZaChNwv1gZbXFwrBE+nvPWeo0hbFbg/AFe2WZJECuEjDG8WGZpv7
	U5HtNejnDJBGscwpDG5P072JewRBv88L8/RmazYxAQ5b2dqqwIW9/20ckVcmIw0aefigZNryJEHig
	3x44W9siD+yhN924SXr+6oMiSzLxaZAxY99mbeRFxTJymKiN8SVQEvUWboOLwxHjLW8yi3+BSnizp
	xF62/tyjBOnI2XKy3BN1HObSTsn5Yj8OMV15v7yardgvHe5bBWR5GMBGnPsPowvAWxXED5AdF6K5y
	UQlKaI6dwUtCq0s+5DKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOuM-0006rX-KP; Fri, 03 Jan 2020 15:30:38 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOuD-0006qs-2w
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 15:30:30 +0000
Received: by mail-ed1-f66.google.com with SMTP id f8so41917202edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 07:30:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ByAdBB1G/PoGRjeTtrFxzGAEpeGoWNuIbHWkC7xwGOE=;
 b=hV4kSPw2rIAbCRN0DsZpHZVfKEatXG5yodUjOb40/DVyVUxGKrVynQNStWZ/AkYzGW
 Upz5u65ONKdak8Dwcf1gs7o477z45Bzdykm/9/rP1ddI66dNhCSQoxAG3vHULPCbq+q4
 UmdQPkBDwmDcbWHTC90WfhnPlzt+r7EzmQGTcEzPzP0J9P3tvjbF/CDsNasYheFCcBRY
 JtdqukNZqoNHooYIfOVmhj3/KB9qyYrUqjf5IP4L6/nZyeX2EEv+roCOLbv6/vVxMJYw
 3sLoZNSXCH0HJB9B/BTCX64OcyhDeomY8J+bUiE1ZVSyCYd05UBz5ZFi2212jVJxgXkw
 uW9w==
X-Gm-Message-State: APjAAAUMx5fQtg4TpUWN90UfbKSGBqQYFfB6Oy91Z2Pw9+jpUvtjpbGd
 /4Csv8dZk7R5ithICctWDNIQxLGHuNE=
X-Google-Smtp-Source: APXvYqxuu0MO3lUapzxRTed7chmpHiWj2UMSk+TgZLGEKXBGmTF6oKN9oa3zR6165LkvUGrNL8CZ5g==
X-Received: by 2002:a50:f70c:: with SMTP id g12mr93037973edn.142.1578065425812; 
 Fri, 03 Jan 2020 07:30:25 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id w12sm7142966edq.94.2020.01.03.07.30.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jan 2020 07:30:25 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id b19so8685534wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 07:30:25 -0800 (PST)
X-Received: by 2002:a05:600c:2409:: with SMTP id
 9mr18988080wmp.109.1578065424941; 
 Fri, 03 Jan 2020 07:30:24 -0800 (PST)
MIME-Version: 1.0
References: <20200103152801.47254-1-maxime@cerno.tech>
 <20200103152801.47254-2-maxime@cerno.tech>
In-Reply-To: <20200103152801.47254-2-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 3 Jan 2020 23:30:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v679hRb+068xcA7DvnwYjp1V9MP9rOWWy_MqXwAG1_d_Zw@mail.gmail.com>
Message-ID: <CAGb2v679hRb+068xcA7DvnwYjp1V9MP9rOWWy_MqXwAG1_d_Zw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] clk: sunxi: a31: Export the MIPI PLL
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_073029_127177_DA9731F1 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 11:28 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The MIPI PLL is used for LVDS. Make sure it's exported in the dt bindings
> headers.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
