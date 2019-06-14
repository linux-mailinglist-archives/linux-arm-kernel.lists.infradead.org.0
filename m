Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282C8452FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6psofUB/5tC8iTW7hv5leifBF/mi71x0h3eOXKyQyk=; b=YdZscZNbgZ0ZhD
	/ptMEvVFppy/b1XksTGKwIuDZITOaG0+o7BDDqLHZPZOngXq0ALFP5d0RtTdX5ehWAoUIT44l2dgU
	RGuFv+LjJW6MwG01ccmrqQCvwMXIn0DWiMd9vM1pBkmpLUJUwF3SKuOe3TK9QD4LShcEtDoE9BfM8
	U/QXjNd/afxFXacqLAqar+GOlCFVwiCVMeQ7N/3LTjhbWyh2biMP6kEvmBD3hF5/nSej29yXAXKj7
	RxgvIU4EwrGDJ5wdPopg+H2hZn5m+VBbFPqF3r67zCrXxk1T6+cve/s/5TSsVSqLNC1XDtF0z2ogQ
	DADH/G3VWRutz8M8pIzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcwc-0004Js-BC; Fri, 14 Jun 2019 03:32:02 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcmi-0002Bo-1Q
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:21:49 +0000
Received: by mail-ed1-f65.google.com with SMTP id p15so1297988eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:21:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gVoHYq0itV3pYTA3eOtXIMDIVkYyR0cLDLEAE/xIlME=;
 b=YRgD+h4k+4Yah2PgePhkoHQ2fKr+b9svvARVUrEwcYBu4iR4FPdyLOy/qrdheGZ8US
 Lod8c66QqhuFpuaR9YuYwLhy5BzFyL4wqR4hId3TezuGajPQx10P3M1GUwf+ul6x2Esb
 GutMPRSuJUpwBECFuybxghilbARtlpF3766tOlU4XOE9fESC4QvefkMTCML3Y2omPgrS
 2UFFPIDOsSM+OMQk5hzeqb1v0XalnJGfe/Nx6x/GBxxC5fwT3Q+KEjX83+sU+fcQZUd/
 pG71B5+PSXs1xqcgda4kBpM1xXVwB+AIpJZVz7xAQ64tU03Cw/TNX22NYyWOIUKVTTVx
 TdFw==
X-Gm-Message-State: APjAAAV+gi+k6xoCQ7W9MGSYwlqSAsV41nqaTT8hdrWtWPi769RvyXl8
 T8nYXtc+MRJhoIsg+ACpsT7oMihZkt8=
X-Google-Smtp-Source: APXvYqzB7b6JOss2dBAicM3WgYeVHtRHzEhk9Zg6k4rdv6rk/ESybuILg+wnglIMAk+frJ9bjPAkpQ==
X-Received: by 2002:a17:906:76c8:: with SMTP id
 q8mr76471120ejn.229.1560482505903; 
 Thu, 13 Jun 2019 20:21:45 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id dc1sm315764ejb.39.2019.06.13.20.21.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:21:45 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id d18so881899wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:21:45 -0700 (PDT)
X-Received: by 2002:adf:dc43:: with SMTP id m3mr3389739wrj.279.1560482505069; 
 Thu, 13 Jun 2019 20:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-4-jagan@amarulasolutions.com>
In-Reply-To: <20190613185241.22800-4-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 11:21:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v65mR0DwAuf_YvDS-dwx2RpEdBeV-5R44zgWn83GNEgp6w@mail.gmail.com>
Message-ID: <CAGb2v65mR0DwAuf_YvDS-dwx2RpEdBeV-5R44zgWn83GNEgp6w@mail.gmail.com>
Subject: Re: [PATCH 3/9] ARM: dts: sun8i: r40: Use tcon top clock index macros
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_202148_101173_3936CD66 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:54 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> tcon_tv0, tcon_tv1 nodes have a clock names of tcon-ch0,
> tcon-ch1 which are referring tcon_top clocks via index
> numbers like 0, 1 with CLK_TCON_TV0 and CLK_TCON_TV1
> respectively.
>
> Use the macro in place of index numbers, for more code
> readability.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
