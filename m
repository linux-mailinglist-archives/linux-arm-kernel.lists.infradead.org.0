Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043D02C153
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEAmKTzB6plYhdz1UzcbD/Z1Tzi/sDl2rjyJr91igY8=; b=hS/fiIT3WirMhW
	dQ7NY7TBXomEmHznr0QaQ+puPofYiZDsIopIZzWCk43SmuNcsy6IXbHPMpnyAm+2FTgnEobhWnhxp
	+1piSl+u8x8tGphcxXnVskbQLrSjEX5oNlS3OwTGE4mx9CDirmaizZI0bEjWtaubY8KHZI9GS1EeU
	BUVZbABL2t/5DwixlcmARxogh412yqdir6+Xa/u4ke7aiH2Vb9+WrWHRrG0RSLJ2fjQ1IJ7QOBKgq
	GFZTA+rK+q6AGhc2YRNon89QiJgBRwBZi0iZfhz71GuiTQAJ6/HRexNRJ+agNXdkCpaPzRIGwgAlX
	kms/OFI5JSCzXD82DOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXUr-0006Zm-4H; Tue, 28 May 2019 08:30:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXUi-0005oz-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:30:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id q62so16828199ljq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PMKt4bIgN1HEm/460cE5q68gl3N0MQbJchCnVYWm094=;
 b=kYz0De76bfu7bcWNDUNk28cvkNqBj2DDfPreMRu80+wNclg/Cq4CnbrKsvlyZw+IA7
 4mkUydxfD2Un3cbAhRSfyBoX/ptzp212sf6TWmOnoVmzw5hElpJ/xwBvEz6AuMZva6NF
 xFI5jFTk006v+f8iTbqEtzZisef/yc0VzN1HDMQHuexLTVvjEvw+WSw4oaHzQ1GwXyZP
 B7leIoFy7G91aK8+WgDqlV7Ul/TMeP8u7cjIErXIS/5EvMra0CKyf4nuqkqEf7iO+3Hz
 rYh62p8UD+6LgdQSbmGTNa66vWmZV2k9oSIIxhIecks0VtafIXXxBForI3acUOhb9ZfZ
 w67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PMKt4bIgN1HEm/460cE5q68gl3N0MQbJchCnVYWm094=;
 b=e8fhf0pRT6siLtDJsf/Xwt2QHQP8di8N+Be5TkjBFktpCl7GFkYtyYAuQsmjZX20fZ
 31pxxz2+40LUpbySl/MUssZWgwa5sGSSEAAucVG7loIwdscBgDHVlGSrL35A1bwV+I2q
 KwkrBY7YXFngpRPNtl0gG/8ZFzFLoHqf4i/4919p1j3+wBF71tIifcItK02H0BQYBBk0
 gq1fbAtS22oAZggJlj1AecNRXPRfGX3F5gSKZWQxXEK2A4ASPyJ8g+N+2onpcNLh0bDh
 ZOYa8vAdviSU2DKbNOhEealSbcu+MAGLK07w858OkF68JtMRJJqbwOoJV0BheKoT+wqj
 HbEw==
X-Gm-Message-State: APjAAAWGHZqvZ7OA+MOMkYgfTnJZK9Z94RhZceXvKn7oTa1J/69uWO31
 MowoudYV5L2SosuW1DfjmIj6ENTyln+jyc9DIMR2zA==
X-Google-Smtp-Source: APXvYqy7veIzZ/Dja/15R5nCc1PW1p8U+rNxKMDmvhoEoTgcYhlfBi3GlLvtP/VxTSoMtFsVccJq+nIFR5XuK6elTvw=
X-Received: by 2002:a2e:1284:: with SMTP id 4mr32732859ljs.138.1559032202173; 
 Tue, 28 May 2019 01:30:02 -0700 (PDT)
MIME-Version: 1.0
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
 <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
In-Reply-To: <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 10:29:49 +0200
Message-ID: <CACRpkdYN8_ZGd=FiV3nwbjmPPD9x5p=wTZ4SrCj5syLjYW0Ziw@mail.gmail.com>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_013004_722555_F9595621 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Matt Hart <matthew.hart@linaro.org>,
 mgalka@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 9:13 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:

> This commit has now been reverted in mainline.  Would it be OK
> for you to rebase your for-next branch on v5.2-rc2 or cherry-pick
> the revert to avoid recurring bisections?

Sure I can do that, it's a one-off so why not. I rebased my
devel branch on -rc2.

> Ideally this should have been fixed or reverted in mainline
> before v5.2-rc1 was released, or even earlier when this was first
> found in -next on 13th May.  Unfortunately it was overlooked and
> then spread to other branches like yours.

Usually what we would want for development trees is to ignore
any errors coming from a commit on a release candidate
branch, like -rcN, as it is not directly under our control.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
