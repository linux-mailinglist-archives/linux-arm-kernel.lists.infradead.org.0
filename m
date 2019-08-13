Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95088B485
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXvIk5mMze+vKfe1Guz0KmeWRgLh/wyqZ2erWl2nr7Q=; b=YDasnC2re2PUcA
	Mrll+OR8iV3+xKkfTUtIjEcv9TN/gr6AyqYiKTHnFA94wZJHlc8ycWaue4L1BOGskITBsJrVodwXO
	TUrN6byUV7jY8wWIfxzIOaaMS3by51Bo2CS+WhViGgNC564XAjbD9wp/6mXht6KboGQ0ObHBqlEmw
	3hKANLl189Gd3X1KttN5joU1BNc/U42oWJdPBLP8IczHnpw4drRQPcOJRfCLEGKNDw8TkNLykUdIU
	zDIZ5xvxBOwLzNuy3UkwryzAz1DBXGvT/LvhhkgdIgGIJ7hKc1wAGQ44yCWbvnck8vd2LAcqNwwXM
	cYlJSB/JX2ItrvljvIWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTPB-0000Ey-JO; Tue, 13 Aug 2019 09:47:49 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTOy-0000EJ-Di
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 09:47:37 +0000
Received: by mail-qk1-x741.google.com with SMTP id m2so5301806qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 02:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kc38QbcHV7pkptm5fiPW3dVekfJJ+xCxwUWXKBIaN8U=;
 b=RWWrNVi9zhN6jA53rD5YyEnuQ3736IwlQbfyNGthICPxreJz/TAJi7/YoKrFormYA3
 xXViBLLAdVjnrUBe82FiPrJrV871oPvdim/1uM1KHWarwvpyontipCCoptsjCa6GSN3C
 JXL97YxRXUApdUZCHhynLD4frQIcK6FPX9pp0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kc38QbcHV7pkptm5fiPW3dVekfJJ+xCxwUWXKBIaN8U=;
 b=K+aw4RCr66v/N8n3M2JsxuUnq1PBwJYv5yrR5KMhxGnmPk7MZeaWMiARUmKP+CG3nY
 2k67zbp8qIAUdHmiogIWBtaIebcfJ8J919iAfQUViX4OIJNEiCW4aHQ5sRkcq74DmcKR
 5ra4VhD0WVfV2S9+E8+e1jPM1YkjI71WVrusVYgWL5e5WltBax86Hi585nS2jfThhZa0
 a1GupwYCibDZE9YuVDq6YN6gZ/qXdX+VrfiH+JEkVREpBxXgIK556WscnLlz8PXw2aqY
 HJ0ZxgQlnm2WN026kQVMRvU2BEHK4XXwi7q5G2p6YkszQggY7NI2ELloEeqSXiCCuoIN
 Czkg==
X-Gm-Message-State: APjAAAUU61uaF+ZNxmKlGCgHyPJnw9bTPH9eZPMFZgCcNJzF7Mh34vAp
 mqP25RSp/xyKKiNNP7GAjlnz2oGP/RNyitg9+FFnYg==
X-Google-Smtp-Source: APXvYqxXFONLv0MJfh+N2hROFpIG7VWcScq3DFuMkmvG7aRa+F5ZRj+wqMfPnVrfEPQp0iLTZ1ClWWx1CBcp6Ze1N0c=
X-Received: by 2002:a37:5ec7:: with SMTP id
 s190mr22499051qkb.299.1565689654858; 
 Tue, 13 Aug 2019 02:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190813093821.74158-1-fshao@chromium.org>
In-Reply-To: <20190813093821.74158-1-fshao@chromium.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 13 Aug 2019 17:47:22 +0800
Message-ID: <CANMq1KCNFfWA=ApVUFoPctgTftHDSAvGjtk-Xu2hcKWBq9R1zw@mail.gmail.com>
Subject: Re: [PATCH] Input: cros_ec_keyb: Add back missing mask for event_type
To: Fei Shao <fshao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_024736_487422_B6074208 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Brian Norris <briannorris@chromium.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Ting Shen <phoenixshen@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Benson Leung <bleung@chromium.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 5:38 PM Fei Shao <fshao@chromium.org> wrote:
>
> In the previous patch we didn't mask out event_type in case statement,
> so switches are always picked instead of buttons, which results in
> ChromeOS devices misbehaving when power button is pressed.
> This patch adds back the missing mask.
>
> Fixes: d096aa3eb604 ("Input: cros_ec_keyb: mask out extra flags in event_type")
> Signed-off-by: Fei Shao <fshao@chromium.org>

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/input/keyboard/cros_ec_keyb.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
> index 38cb6d82d8fe..bef7bee6f05e 100644
> --- a/drivers/input/keyboard/cros_ec_keyb.c
> +++ b/drivers/input/keyboard/cros_ec_keyb.c
> @@ -226,6 +226,8 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
>  {
>         struct cros_ec_keyb *ckdev = container_of(nb, struct cros_ec_keyb,
>                                                   notifier);
> +       uint8_t mkbp_event_type = ckdev->ec->event_data.event_type &
> +                                 EC_MKBP_EVENT_TYPE_MASK;
>         u32 val;
>         unsigned int ev_type;
>
> @@ -237,7 +239,7 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
>         if (queued_during_suspend && !device_may_wakeup(ckdev->dev))
>                 return NOTIFY_OK;
>
> -       switch (ckdev->ec->event_data.event_type & EC_MKBP_EVENT_TYPE_MASK) {
> +       switch (mkbp_event_type) {
>         case EC_MKBP_EVENT_KEY_MATRIX:
>                 pm_wakeup_event(ckdev->dev, 0);
>
> @@ -264,7 +266,7 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
>         case EC_MKBP_EVENT_SWITCH:
>                 pm_wakeup_event(ckdev->dev, 0);
>
> -               if (ckdev->ec->event_data.event_type == EC_MKBP_EVENT_BUTTON) {
> +               if (mkbp_event_type == EC_MKBP_EVENT_BUTTON) {
>                         val = get_unaligned_le32(
>                                         &ckdev->ec->event_data.data.buttons);
>                         ev_type = EV_KEY;
> --
> 2.23.0.rc1.153.gdeed80330f-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
