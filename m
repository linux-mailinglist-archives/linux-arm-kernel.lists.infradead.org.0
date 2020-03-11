Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A4182428
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBMOygS5Mjztk2DlUVEkrtqf/UoK6Z4z3NixWSwlO0A=; b=fXhpQt+u0nrgMw
	qUK3Dt3CRZwmCIadDNja0BBYO0JprepcvLXxP5stMLpqjLwCKVHSbq9kuIO6jZF2m8EYsvLzOlbOd
	LRqnko/jYRDGFyuOQKTVuaeJ9U4vn5cLUkTyQCmEoOjxp6/x9Kupgkh2LYgxt7biKpCsE8LcuhuL0
	kZRvQHJJrpFupXvZpOC++ckv15os4SPT69U3B8+baVOSSaa2+wIBGGRjgAAqn7J03BR1jdx40W+lP
	Hw15WM1F45e6mp1BTHFCwdaoY/3EwJ4XRMJgkRYkv6EBE6XR8N6U/zwxYkb/bJf58PDKQvJ4pXggc
	k3yUErsKjQs+1ks9KsGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9Aq-0007ie-Q5; Wed, 11 Mar 2020 21:45:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9Ai-0007fT-1b
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 21:45:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id r15so4685697wrx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 14:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=n7HvHKiTnPOuqemknJ105xUPY/fhPykhkmE2tki5wUw=;
 b=EICxn6Fn7AFSWWWApb9dqMF1HA9elGbNGMudsmJElLrVolmjUJKkpJAEkSDaK3gkoy
 dgJTsiVARL15UIMk+HsgvC/dtdB9NQ9x5loTMa6PnUplCqBUc8gLUd0i0FrjzjG7a/Np
 lHJJZYOUEEH8afSng01BNAy/u+zq5ZYjuSmrGKyHMovqwUD+B/aadjqBSbWvbOZe44ut
 kDSaei0FjnGc1PjMfWhCPIwFbRzdcI7C7x/wbo41nWMzHlIWqGc/x4oieFEbnAQ0NN/X
 o6ed44eOo8ngzEtNUF9miYkor1nZIGitcJqPbsS4x89oMdx1NGJlhY1nhJmfXyCS+UWG
 LmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=n7HvHKiTnPOuqemknJ105xUPY/fhPykhkmE2tki5wUw=;
 b=VSiXo4oBG9RRPFl2p6XHyZpeKRaI18zSlnf32EiCPIPW97F0s26eea6+otgqOU9D8t
 YT6twGBt5yDME2c67BNBwNo0fKEZM0/xQrC6u8EqQkDuvmAB/EPs8rriUhe5dTAiuR33
 Axi+z9NVBxylD/jP8GukeQCXZzFEx93qKjwN+qFCZNzz0LO3PbG6iZJTcLq7VPAg98Td
 LIYUX5wKeAfc9d2uw4yeA4gdeR1f+s88GzOsNaAzQYNe7EqtcnZzWtq4a/t08D9nb4D9
 br/UVc+6unXSvujDZlMMA5h1fruWAJSBQywe4amedJBuSxuP+M5SiEdxWo3tD9/oTc02
 c7rg==
X-Gm-Message-State: ANhLgQ2ZIuWps/ZPdN/ve+bT+IgBYxlLWQ8bcZfFYY0pHWzhcOTpHEUk
 Tiz+fVMqrhzlRlAwkon3AM53xw==
X-Google-Smtp-Source: ADFU+vvaCB3U3dIhxKX4tIuvn9wPcxA11wZ/JEilVShuY982q31z6n5RZ4IMJftU0QVsHPTsWtxWpg==
X-Received: by 2002:adf:f584:: with SMTP id f4mr6798624wro.77.1583963145223;
 Wed, 11 Mar 2020 14:45:45 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w9sm34772517wrn.35.2020.03.11.14.45.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 14:45:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Heiko Stuebner <heiko@sntech.de>, khilman@kernel.org, nm@ti.com
Subject: Re: [PATCH] PM / AVS: rockchip-io: fix the supply naming for the emmc
 supply on px30
In-Reply-To: <20200121222859.4069263-1-heiko@sntech.de>
References: <20200121222859.4069263-1-heiko@sntech.de>
Date: Wed, 11 Mar 2020 14:45:41 -0700
Message-ID: <7hwo7qr2ey.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_144548_087975_E7A2E43C 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Heiko Stuebner <heiko@sntech.de> writes:

> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>
> The supply going to the emmc/flash is named vccio6, not vccio0 and while
> the code does this correctly already, the comments and error output do not.
>
> So just change these values to the correct ones.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Raafael, feel free to apply directly.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
