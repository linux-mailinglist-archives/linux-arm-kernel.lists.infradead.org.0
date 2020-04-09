Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E931A36DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaOMMc6G9fk5nla8EPM6ftxr8Rfwai558ngAnoXWfNY=; b=T2hbEwGR+insYG
	WY1vIilF2rIL2qcMVg8Kg3nBSBkhyJHXqDMRYlnUBYsUj7j0yAQm4If9MSD9U+FnO5CsUJK9/1rwn
	4Hn5wshguTtiAG5gFzJhZZ7tmxp83Ko95MDlG51pU9CuQie97R2uiNSul/OdUx/TvFIJzHYPZ2oAW
	ZOj7l9WSibui5hYR3HNqYiZyljiyniENSon0za8hyv1GfVyG7unzlEEQ/TpQvkize/EzoOsJMTAw0
	yQUftXELtsb9aWC8WrtpCH70YNqDrpwVdwZN4mJa2iTc+Eo9GGegBGeCw9Onor9Rf3xXOIGrIWxgi
	caswwhfJc8JFVR9T6WKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYyt-0000ov-Og; Thu, 09 Apr 2020 15:20:39 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYyg-0000mY-Gp
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:20:27 +0000
Received: by mail-ed1-f67.google.com with SMTP id m12so98305edl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:20:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T94ek2P1vYjI/992XAZLBRMZNsTOICz9I5cPd7mOb1Y=;
 b=nqRotqgeG4x+7LqOki94PpSdlOctvMqIPxznvv3F+GE7tqoCeVZaIdpV7zgNsKCz39
 6GuP+AuoXLkLb5XOaPZq5WUYFFGqzB5C4QiSa01u8Ih2I0L/JNeUBUCdaSIYYaQvfGgV
 hBclPdyR81NuT2V2ua1SododL53ilDu35o8hFEGBx7QGhZDEEO/BxZPGtyJjprdheDDi
 23qCj1dkLnEpv8Ng7opQls+6vAUb6XhtAuSIknr654sjjsVeUS1gd7CpRRvRfVKGuiHG
 AotSfkYZqj/mRLl3LmZcsRLBUZjsabamopVS2m+RPRPSbgAX0wLZI6Ay3ZjdW/H32rtZ
 QayA==
X-Gm-Message-State: AGi0PuZXhadr96nAYC3YQcQxDSdD+kEEi4Ric/MbXjg0anoFUO3frh/h
 QMelQrmHAvoU8Dq+iFzZlO1dIFJT0BE=
X-Google-Smtp-Source: APiQypI9hsjr62m5QHQ08Su2X1Awv4La+ul0Yuyoh+63cdp18TQ5vUBVnnb42iwRsGJy9MKL/Tqkgg==
X-Received: by 2002:aa7:d457:: with SMTP id q23mr549347edr.66.1586445624847;
 Thu, 09 Apr 2020 08:20:24 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id l19sm3749274ejn.31.2020.04.09.08.20.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 08:20:23 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id s8so12342143wrt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:20:23 -0700 (PDT)
X-Received: by 2002:a5d:670f:: with SMTP id o15mr14577113wru.120.1586445622945; 
 Thu, 09 Apr 2020 08:20:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
 <20200317155906.31288-4-dev@pascalroeleven.nl>
In-Reply-To: <20200317155906.31288-4-dev@pascalroeleven.nl>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 9 Apr 2020 23:20:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v65X3QoopHn11K48UbRMfTH2b9SseOR8U4jWWprGTTQB2A@mail.gmail.com>
Message-ID: <CAGb2v65X3QoopHn11K48UbRMfTH2b9SseOR8U4jWWprGTTQB2A@mail.gmail.com>
Subject: Re: [linux-sunxi] [RFC PATCH 3/4] pwm: sun4i: Move delay to function
To: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082026_555952_BE4689CE 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 12:00 AM Pascal Roeleven <dev@pascalroeleven.nl> wrote:
>
> Move the delay to a function so we can reuse it.
>
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
