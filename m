Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328C01D1A81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 18:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zdhfL/i8nbXYKycJo/Zo39awA2Lw46chN1oULFCZLE=; b=Cx1L1DcwtoVNOn
	aYmcjLZrhUTWJI1XDkrkiOsaFwulekXM3Y1Iy3gNZlWmmmFX9wQm3eHZMUPIR1oI5YKjKxiOhKe9y
	2xT59bpVroOpGz2HhiCxv90zudBZ4tckG+2lTvW0d9gv4Vs1JoY30yxCWlPombpupH82oBnbkzZZd
	IeyQstEXb3kEd6VzvbBKHLacHl+jjKUOYLnvxSFKBSPMOeWFljiSJw26TDODYgS0FTlXYYKm1KhcH
	dXr/0URakj4AUkWReOL/ophCj332sererOg0YgHfzO+B3DjOtJFiYIySKr2oF2SMAFzjI5zwe8iCp
	khLE4+4nyrZxtyHta69A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtrE-0005Ju-Lz; Wed, 13 May 2020 16:03:44 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtr6-0005JH-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 16:03:37 +0000
Received: by mail-ot1-x32b.google.com with SMTP id v17so5860311ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 09:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DcUVRaqbwMsvXCe1nYZD4pM9Y/sg0W2dqTT9BbaaIfQ=;
 b=Uy+rlTdWUs2SBiqH+o/YBe+BHrltfWf/RlI6TyHBEsB+Bba5Ts79PKethqDGq0PNsD
 PbATwpICZw2makPfE8xEb/aDbrvRQJnF/y88tZiqK0D0n3ZIBeTdsJVfWDGQXY4SfcXu
 vezBoap2sQemvF670uCEIfNyIh00CTZcr9xP+n+xD0DnPfYKaDn0dsjvtFE9feKUHRjb
 H2vwsy6AJTclH+JecoRwvdZnbbeRDzjHeb27wVEXYbeha6NRe1tdeA0DHKW4rDupMaHl
 nCLv/QAKDMg6Y5JTluOcfxnJ0AcV9hvkAH+Zc/Xn2E16OiGeriEDWzQMKaW/LYZKGkYv
 GpGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DcUVRaqbwMsvXCe1nYZD4pM9Y/sg0W2dqTT9BbaaIfQ=;
 b=GOXbHHqccSpdLXYRX7pKpOrq8ktqnTTVcwDNCv+ADd8UY6KQMUFIH1Y+LD+d4mF8pM
 9qCcfciB13rJFIyUX9NngNmgHTSLaCHQbai9VTL5st2Tnr/+DuVqHz16K9XPEptmzyiK
 mhf7t2xQdPZNDaJeBgREhYCYMW7fs0sS8g1qdwAN9aUzok4VtNBOz0ki9kRiAIOza6hD
 +jU0lcR1mXwgPGeSWMlti1tRqvgbaGukq/puIdOguSQD6JPEa1pVp29fkd/oN/8cDCiU
 /1ZmuX2PrXGka7u/0L8TkMU+qoRcGO63Q/YIXsZLvtCT9N9Bts1Ou1XN5yZHIykikARl
 zyrw==
X-Gm-Message-State: AOAM531z94wkXzSGJTn6jRJZAttRHHcXgbIZzDA5MBvm3JGBGf7VUTp0
 BBx4JXj63Sf3WHDzT9bAB6BV3dV81PoXjokR0A==
X-Google-Smtp-Source: ABdhPJxQwqMT3MJv7iP/UeDPZSLnKmYyh0L0alN/1ijkycObsiqpWca2Nqnj2V/inAjapt4ae9YUH4TCzxbAvoRxYQY=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr131296oth.192.1589385815195; 
 Wed, 13 May 2020 09:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAL_Jsq+qsuYWaJi2B7=Wt_F4MhHVE8QNKbykR4JTGFsbb28hCg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+qsuYWaJi2B7=Wt_F4MhHVE8QNKbykR4JTGFsbb28hCg@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
Date: Wed, 13 May 2020 11:03:23 -0500
Message-ID: <CAL_JsqJByx=gXHocU1BO1cms29QG6i-J-k2wXThvm6ewq0O1Og@mail.gmail.com>
Subject: Re: [GIT PULL] VExpress modularization
To: SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_090336_265280_7034D2E9 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 1:13 PM Rob Herring <robherring2@gmail.com> wrote:
>
> Arnd, Olof,
>
> Sudeep suggested I just send this series direct to you, so please pull.

I need to respin this. Turning CLK_VEXPRESS_OSC into a tristate got
dropped in rebasing which can cause a build error.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
