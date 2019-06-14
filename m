Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F92452FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qPEizLScvU+OKt0PMszVZLhB8PXp11Fjldpy0LfP0Y=; b=MXB7RbQ6AE64Fk
	5HI7PDu4n8FzhBBBX45fYRsIW3LQ/FsnvfNLWsdAK+Cgjs70LvosVtixRwA3UaD2FJoSDtcH6JlFU
	di3+kNIgn4PEOQ3bJo3N8mgSnnp/Pk4V0Z58TR0xBcjnY6SfqVkX/Y8HixbNTZFEA5l4qipfKNsTH
	oeqRRt337mCOImR6nrkdBDezQy/x+irok8pU9sUvMVqDBUcLBR9EXqZsaDaxtVOyhua+M7VWk0ejF
	S5mQJuXlYuk2cscH1t+wTheO6cavSjOdEVpw9Kg2Bdn3md3kZ5bggbC/EkqGteNYoZaovFI66JAZp
	h1dIPZJDFxRNA+HFVVvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcvy-0003m4-Ms; Fri, 14 Jun 2019 03:31:22 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcjx-000766-9s
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:19:00 +0000
Received: by mail-ed1-f65.google.com with SMTP id w13so1323753eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:18:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rY0FBLu0h9/AWoT8gIxRHyZHL+wYrWVVxtiQxFiOFAg=;
 b=ruoh+bMMRYEme8QXZDmQ83+PhAN4hxPq/DQ0SsHOZOm4+LOQqrwG9cK8XvMwqEKgUv
 TE+T+53dXar4kkrdiQVJV0Z09Nev0OXD5R2JOJc8Ni+wgAvSCT6V172xkc1f1IczZLS7
 N+gUAwIbFw7tXY53RmqCZZWrTYLJj3Hy4bB7ZrUG+vHE0dXwYeDf9YozF2IR17zP6NEM
 tBHIELv7izKIuBBC30utm5vE77N7lU0l0ozctQ2YQUPI7/WpRCEnI/T6DY8dDSH4Dst0
 sWG7sSXpPAE9QHRqFv53rIgr/uGzD1V+Rc1GtCA7b+jGnBFgUqCCCOBIJSAcoGw0Cmq7
 kc0Q==
X-Gm-Message-State: APjAAAW2tJP1nOTH2ntD/eTsTW+GAZLCc90Ys5mt8YnFoaO4ErHYKo1G
 SM8v27vAaX4gyzHntCR8lhg7mEbV1qU=
X-Google-Smtp-Source: APXvYqyrDkiWoqpiqttqxR65zpAzRn6Ux5uqv71JDPakBVBscV7k6yxsFPfRZNgkhX5IdIPHD2IVmg==
X-Received: by 2002:a50:f385:: with SMTP id g5mr17871312edm.14.1560482334924; 
 Thu, 13 Jun 2019 20:18:54 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id j17sm492423ede.60.2019.06.13.20.18.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:18:54 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id n4so888100wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:18:54 -0700 (PDT)
X-Received: by 2002:a5d:4311:: with SMTP id h17mr64136370wrq.9.1560482334085; 
 Thu, 13 Jun 2019 20:18:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-2-jagan@amarulasolutions.com>
In-Reply-To: <20190613185241.22800-2-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 11:18:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v64NVoakoRzg6XeE0jzgACU3G7=_E6MOGfPYGkw3f8E8nQ@mail.gmail.com>
Message-ID: <CAGb2v64NVoakoRzg6XeE0jzgACU3G7=_E6MOGfPYGkw3f8E8nQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/9] dt-bindings: display: Add TCON LCD
 compatible for R40
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201857_385348_F222EB4B 
X-CRM114-Status: UNSURE (   8.44  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:53 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Like TCON TV0, TV1 allwinner R40 has TCON LCD0, LCD1 which
> are managed via TCON TOP.
>
> Add tcon lcd compatible R40, the same compatible can handle
> TCON LCD0, LCD1.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
