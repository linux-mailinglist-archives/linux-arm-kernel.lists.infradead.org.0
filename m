Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5561BAC26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 20:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmCnolj+zmWl0RczayDpD8WJLxZ6XFYRk8e3EfkHIWQ=; b=rq/qlRdTDx/cqE
	yh1ePm5LQU+UNOeYLN90GttYWw5c6B9bDpwQoFPEe4p+4EiWwjxpcG2KQNEoH3RiiGdRdPHV+c5y0
	r8Oz8GQvV0w9O28TN5PPbU25w/YItnuwdrsrBBB8XuqXVaOjcjIC8J1aCn+QMFt60trVJqppomYe1
	YGh/Wx+rZoIFUlfNW6JjVqYgTr7N9adaZMv0o8Xy/mefZ3bIjyO9OMdpBKR7fUrQEnJYONuc63llR
	EpO8vNIuFb1FssENT0jRsRpkQzGbRevBWTWbZJ6wlElfeC+MSzqDPkdGHd7pF0PbAFQw9V4bvXooI
	HZxuCHx5VSgywAuX6jEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8Ij-00019L-Gu; Mon, 27 Apr 2020 18:16:17 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8IZ-00017n-Kj
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 18:16:08 +0000
Received: by mail-il1-x142.google.com with SMTP id u189so17652369ilc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 11:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cmLQU8rm1MaDWTn/mChW2COr9I5pa8fmPALHO00ydSY=;
 b=OS71vo6P5vRGR7AIQ9CH2o0GTvUWbKTixJVTcs8LBpJy78MN68wS+w1L/NE2W7QQ0A
 aT7sxCcpIFOPqcZDHmn7H+jdLo9NrBNf7E8pdvxvhTEORZeDHUbNdFnjyXc/NckLS8U0
 Fcyz8/Jm9yBAsfkM0QSWqYbYadsnwxVb9kzDFpCuUg1pOYe7FDMmxxwNJPsMOlPpYllr
 4KBARKthF33uAlP1AcLoagxMY1RvIEdLoTW7UUzvR7F1yVQJqv1GEn+6aDTNmjYcwxn0
 76w/tx7QqpRKlJ7VFipVo9CMKljrrDXIoVcx/+OqNjWFl9LWUWII2yr06aDbQ5Pu6L/U
 uPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cmLQU8rm1MaDWTn/mChW2COr9I5pa8fmPALHO00ydSY=;
 b=GfNtuiTG3wzaBp9gqZeb81c8gRz2r4Gwlw5ljkvK3215yss524kcpLpK1chQhkQGjl
 eDrm5971BBVbwd7CR0Bo/NPn6L4fjz2w68fbwT9tEXeC86q8kzwSPDu1dYzyGFrhhQzl
 ZdQXLa54OMTxnFxQtCX6nmd4to2A7KqTZwubEk3cmHI2EB2WmNNbupwA32zgfB9WnttD
 I7ftz69TaTJ1yVN6WqSIO5UdTmqC88QxYJJzHyFacsCzB9ITXK35GE2mf3Nfqf7dFgMj
 oKFezXxX951SG1xPX65MJpqtzWGP+kjipNNrWnbuIpiPpLfHGUhxO2EyucASKHo/0pdv
 1J0w==
X-Gm-Message-State: AGi0Pua78MY0ux3qj1FosWrMhoJ8dtbxL+pWeP/76tNY8Bjhf3E08IwW
 vC6/npZPkH093/H/0WKkkqK8XztzW85E2QiTjb8=
X-Google-Smtp-Source: APiQypLEFdWzJWGk/lNHboue27tEM3hzSIhfOKIUkk9TPbjUAgDLUVW2lGpgBWDg32c6b08IKL9eiTEpm2bkOIzlDUo=
X-Received: by 2002:a92:d846:: with SMTP id h6mr19975276ilq.248.1588011366489; 
 Mon, 27 Apr 2020 11:16:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200426081211.10876-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20200426081211.10876-1-wsa+renesas@sang-engineering.com>
From: Kamal Dasu <kdasu.kdev@gmail.com>
Date: Mon, 27 Apr 2020 14:15:54 -0400
Message-ID: <CAC=U0a2p+vGfzTJOBaAuFUWh1azJC49cundYAOG0C5JjMgQtzA@mail.gmail.com>
Subject: Re: [PATCH RFT] i2c: brcmstb: properly check NACK condition
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_111607_703291_E6AC37D4 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 4:12 AM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> From: Wolfram Sang <wsa@the-dreams.de>
>
> cppcheck rightfully complains about:
>
> drivers/i2c/busses/i2c-brcmstb.c:319:7: warning: Condition 'CMD_RD' is always true [knownConditionTrueFalse]
> drivers/i2c/busses/i2c-brcmstb.c:319:17: warning: Condition 'CMD_WR' is always false [knownConditionTrueFalse]
>  if ((CMD_RD || CMD_WR) &&
>
> Compare the values to the 'cmd' variable.
>
> Fixes: dd1aa2524bc5 ("i2c: brcmstb: Add Broadcom settop SoC i2c controller driver")
> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>

Reviewed-by: Kamal Dasu <kdasu.kdev@gmail.com>

 ---
>
> Not tested on HW.
>
>  drivers/i2c/busses/i2c-brcmstb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/busses/i2c-brcmstb.c b/drivers/i2c/busses/i2c-brcmstb.c
> index d4e0a0f6732a..ba766d24219e 100644
> --- a/drivers/i2c/busses/i2c-brcmstb.c
> +++ b/drivers/i2c/busses/i2c-brcmstb.c
> @@ -316,7 +316,7 @@ static int brcmstb_send_i2c_cmd(struct brcmstb_i2c_dev *dev,
>                 goto cmd_out;
>         }
>
> -       if ((CMD_RD || CMD_WR) &&
> +       if ((cmd == CMD_RD || cmd == CMD_WR) &&
>             bsc_readl(dev, iic_enable) & BSC_IIC_EN_NOACK_MASK) {
>                 rc = -EREMOTEIO;
>                 dev_dbg(dev->device, "controller received NOACK intr for %s\n",
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
