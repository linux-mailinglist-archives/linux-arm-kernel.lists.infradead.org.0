Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45335169591
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2QHnFQXzfVDLNTQgkt3O20pykCCjnUfBOjolAbjqb4=; b=PZsvqJd5JmDjbz
	I3bxf78sZByJWG/hDhHgLn+4xpf8iS4IG7zc2DFKS0wCPzMbv01hDEDfrKIL6vcRnotPWoI4xYbYF
	619jz3cXW4CYfLzxrXBf8/BCLIyPZzZXwu0BXlH9L6faoodWLpeeSyQtPJuw60nzAj9Id/f3DoheU
	5ghfPvnYttdDUN+dxXDo3dQOztA4XgqVcLb/4ou1jKJOz/Y5KT1sxwnYNWnWaPD+ub/ZAqs3oQW3q
	/qLxwDmd9jI72PfAD7mSpiT40QpUpiPornPmnWoSdGIZoIXfG2IpP1QLNMeJe7pae2UlmMJaDhtXo
	EnEvL+tXZkEpV3UHQZAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hxR-0003Q5-SB; Sun, 23 Feb 2020 03:29:29 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hxH-0003PR-WA
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:29:21 +0000
Received: by mail-ed1-f66.google.com with SMTP id r18so7589111edl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:29:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CblN7nCexE9hCYpZuW6auACpdPiU3JSJPvxkqoB8jC4=;
 b=LrQfhw904K/yy3QvuSrVTiLxEFzNMSgTCebecT8Qn5As0EiaINNdZx+uZzI4HXEdZ9
 yMgKshU0rnol9RXAkVR/LfHNaB8B2unFuMsc7PHlV+mWcTinPDPIpEOwDJyRnqM0YgHZ
 T02ivDYZAxfzxTPkKFYUbdes7YE9gwQepBCdabpXcuiVgcPWesDl/hs/o6ccBDvLLiti
 v9BkZtE1ZOdp0o4TCtBmI1BcaO0l2yMmD4UjmzmDKFHeawPf3/pJd/IxSxK6bnz0giat
 MhY2Hc18mUkLZHUkAtLsFO+f6hct5U2Q3uTAg92cipR4TgnXfx6KYuDp/dYJLW33Jpkf
 jgKg==
X-Gm-Message-State: APjAAAVYDGPgxMwZBzNBefzbRQ5me0C37AANDd0UUJ1JibEIjD6xKPJX
 3j1YPQ/wbhgQaQaHZxBZfIlYvFelaAw=
X-Google-Smtp-Source: APXvYqxV5M+GFEEKk7fD2qBIZf21AwEW5cmUpvWB9di3Ur37pWhe+d3i6il5GfPlsSOCbiKIZlT1xg==
X-Received: by 2002:a05:6402:1347:: with SMTP id
 y7mr41062666edw.140.1582428558145; 
 Sat, 22 Feb 2020 19:29:18 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id br7sm603278ejb.13.2020.02.22.19.29.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 19:29:17 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id e8so6371579wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:29:17 -0800 (PST)
X-Received: by 2002:a5d:534b:: with SMTP id t11mr57232727wrv.120.1582428557465; 
 Sat, 22 Feb 2020 19:29:17 -0800 (PST)
MIME-Version: 1.0
References: <20200222214039.209426-1-megous@megous.com>
In-Reply-To: <20200222214039.209426-1-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 23 Feb 2020 11:29:07 +0800
X-Gmail-Original-Message-ID: <CAGb2v647zKVrDvnHeLvwNPEZLX+yTgPq-x7MJkp9=duzkQN3mw@mail.gmail.com>
Message-ID: <CAGb2v647zKVrDvnHeLvwNPEZLX+yTgPq-x7MJkp9=duzkQN3mw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sun8i-a83t: Add thermal trip points/cooling maps
To: Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_192920_033457_BC3F6960 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, Feb 23, 2020 at 5:40 AM Ondrej Jirman <megous@megous.com> wrote:
>
> This enables passive cooling by down-regulating CPU voltage
> and frequency.

Please state for the record how the trip points were derived. Were they from
the BSP? Or the user manual?

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
