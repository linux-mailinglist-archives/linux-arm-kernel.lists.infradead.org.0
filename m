Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0419E11ED61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYKuky0kgtE4DISZiA/JjvIgWYSz/rY2rPuDJwSLdx8=; b=OSWaWk04C8quN8
	GcyRWbLhDgpqBONMsbQE/bMgZQ8lwDV48xMCwcIwVO4jDHUGCeSvn+Fc73cunvLBD0RgT/aeg/3Rg
	OxQYbgJyzagQk4QOV/e+pbpHjF6pVHw5U061W4HV8ixdc2bh1QAbtKa1UuQoIOhpNvHq6f256yuaW
	oVdXGCRowm31uiAXlPVSY7ACXAM+hzPC1B8MYmOTazYyhGj0k+pnxV40qRk2rpDbK2Fla58+S+EvX
	1xzYZPxX0YcKcGKqybbMlYRYVGZ6r3KDEzcPWjYBh+jk7cQxw9DnWjoCWX+ZLabodR6y4a0SDnwkt
	TmIwY1VQQ+tPRlXVXmgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ift25-0003ey-3i; Fri, 13 Dec 2019 22:03:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ift1y-0003eI-3e
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:03:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id d199so2165300pfd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tC9e56OkB9iMx5UogC2mae0NvXUXXZ3j9VUfeJ/X5wk=;
 b=tRoNRQRh+sJGD73mI4PDIDyRvkzBaNEx53l8oRH/Sn6LiwA5jhvcsHTHKt0UYjOfKD
 hI8+MAPu3GAvso6itHVboQN17c5NMohOaIdXDa6aP8XILG0jThspeOMRlB1IUC3yIWCZ
 swEyhbgSOV49JTywMJrODnCc7u4bYKMNWk/ZTtAn4jlE/qSBoeS6gnQhmOISmdYhsicT
 hv+UQszp8avxtmsIrnninBVWrvPdjhm37eQU53sSaxYhTcKtZ0QgecyWFxjbi9uOTD96
 HCfXiVXAKR3OXOiwCQKS/hI0lN37hSjKxmU3aTbHAd2fk7aMPw55CqanJVLyHSFl5OxB
 QQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tC9e56OkB9iMx5UogC2mae0NvXUXXZ3j9VUfeJ/X5wk=;
 b=PbEytHuJkjuzsgAfPwi1xrfyuZCfQL7YQ9CH6Ahf2Q46JE9mW6G597ZZG9id50a0wa
 r/j+8haX05qS2NqYJrFHX0cDczIg/wYQPmHyPicRJE/mWkJoR4fQGyuKT0EXm1+M6l+4
 A/y3qWlLAGjplweVkqcxqctNysrsYKpO4UMS933oft//RSjJua8IlaBV6zXBPOY2xjGH
 48drRqGyIhnJuJV4eynr+A+A+zHHfxGYm5HCCChj3/qmS7T2xSk9QfT8FwU1p6s5YYG6
 vh+KqRuAX2diglrPQ8rjT020DAy/p2KbgxokfEsMrozT6oHK8diR3wygzjgd7/CJ6N/X
 zuiw==
X-Gm-Message-State: APjAAAUQaKcGUVXT8G4E1tGMsJps+0Ta42omON2M6fWL0+0h2AUK1Ip6
 O1SjV6KyVfxPE//GIrB88/Jgx5T6
X-Google-Smtp-Source: APXvYqzBpAfl1hUow2NLUi+eXe/GatKLhViFfkqNuiWd45s78/xW4KFQIoMtOkjNEpVCqNgoFHYxSw==
X-Received: by 2002:a63:d358:: with SMTP id u24mr1975871pgi.218.1576274604884; 
 Fri, 13 Dec 2019 14:03:24 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id h7sm13693878pfq.36.2019.12.13.14.03.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 14:03:24 -0800 (PST)
Date: Fri, 13 Dec 2019 14:03:21 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] input: keyboard: imx_sc_key: Only take the valid data
 from SCU firmware as key state
Message-ID: <20191213220321.GJ101194@dtor-ws>
References: <1576202909-1661-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576202909-1661-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_140326_148043_17FAA423 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 linux-input@vger.kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:08:29AM +0800, Anson Huang wrote:
> When reading key state from SCU, the response data from SCU firmware
> is 4 bytes due to MU message protocol, but ONLY the first byte is the
> key state, other 3 bytes could be some dirty data, so we should ONLY
> take the first byte as key state to avoid reporting incorrect state.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thank you.

> ---
>  drivers/input/keyboard/imx_sc_key.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
> index 5379952..9f809ae 100644
> --- a/drivers/input/keyboard/imx_sc_key.c
> +++ b/drivers/input/keyboard/imx_sc_key.c
> @@ -78,7 +78,13 @@ static void imx_sc_check_for_events(struct work_struct *work)
>  		return;
>  	}
>  
> -	state = (bool)msg.state;
> +	/*
> +	 * The response data from SCU firmware is 4 bytes,
> +	 * but ONLY the first byte is the key state, other
> +	 * 3 bytes could be some dirty data, so we should
> +	 * ONLY take the first byte as key state.
> +	 */
> +	state = (bool)(msg.state & 0xff);
>  
>  	if (state ^ priv->keystate) {
>  		priv->keystate = state;
> -- 
> 2.7.4
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
