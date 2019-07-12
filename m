Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7146673C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 08:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWWhxvXxNPS0bWbq0I8/uD9tCoOj4gKBaUuFS3vPHpM=; b=du12LuuD09Wpu1
	Z0x6KOGwQRTrI/v77Wf8ShWppJO0YLSgpjlWHL9fa7oMN7og6fMXhkhb1mYlVYrHLyR8oz2bK2bt+
	SGr3TiPp1IrzjbinhjH5zdMPSsJ5qITL6VweAWi2NDMjVALPEq9xd9S68eLYRoHoi9NZeKALgwmzN
	Qkg6j+RHcOV88GG9s9UKuiHRuffRp6XJqrqKwGYJGlbSJELbW7g+39OV+eNxmeIIGOJ1yJdQE+AtS
	RZKsU3J6sTJXZQElqro/wM+dGb6bbNKmr28Qvhf3a6EfsLic+f1ZQNSjTbhPXfWTCZM+JtFoaIOD3
	IRQCzoY45jOWlPyWSH9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpNz-0006o4-Eu; Fri, 12 Jul 2019 06:50:27 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpNm-0006nb-RZ
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 06:50:16 +0000
Received: by mail-pg1-x544.google.com with SMTP id z75so4093811pgz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 23:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CfCP6AM+q26Tk6D03k1iE3+elCvT4lB1HPpCLmqktB0=;
 b=uIglaz3JhPuRKxPH+jBqVn6oInErsfOz7ggSmmU9JE0y/0mbUj9Xo+hq1SWo9mplfU
 k/yTkbNxLpSTYYjGxxhwcq8PVC5CAJsqITVvzsR4uHKfe4XGxDMNlhd+zQLkkU01cNur
 vd9k9AQLM84lJLuoQF2D9SWc7ZjaJ5ryEC1rg7foUH8rpuW/sFJbd/V+CTo+AAHIABbX
 ukOj2Ls3scyFYPiuRGmYRbCAlszJ0iIDZfkhEizxvd2q405n73cYeS5vOVYk8DmT7HpF
 lt38mbuLCFz9f+FL213Dop9lhhCL5/l99rU9+v7KMqnvzWYz0bpTJJEuTRkCUwCyw+u/
 7mhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CfCP6AM+q26Tk6D03k1iE3+elCvT4lB1HPpCLmqktB0=;
 b=fZROPuDUXfFdX/+q7rG6nS7YOcyCuWIdgL7pUODHyvJo46pjY12S0YYl1bTmoh3tJi
 DhMmcKgjJOdeboVdmoSgbJKzFBPY7EeV8THclXaAnGoaWI0M7riBHfzSI/IKh/yPIPvD
 ccFKkPaTxBkor1tCPplhXd4HWRCTWIZn+8wrOR4L1U2nUMaJ3JAJc9GKznnLsONwFlA0
 sjfaWOjoxlTeFuy5A+rN0a9DHopbMWRBPunj4ViDQrgqmIWVuk0pd0N8DSEGC41xAMPR
 +Yyg7TTaeaYx9FOosu70OOKTCw26RUdCJwN/cMNjQGGPQ7lXBVoUz/EbwilCQXgYykgo
 9dRA==
X-Gm-Message-State: APjAAAWiRVFTXnwKCVIAMHU+HdiE12/oEL+ICwlW6CYHJkAnDpqBQQTQ
 3+QJluiNAsbEzMTJL7+8Rz4=
X-Google-Smtp-Source: APXvYqz/Ozc/pWGLJdSYhomnv0SNHeqaJCrHX5Twx6PhMiDoGboYFAkwhRjAtONTxzxoldIegoP/aA==
X-Received: by 2002:a17:90a:1b48:: with SMTP id
 q66mr9313016pjq.83.1562914211991; 
 Thu, 11 Jul 2019 23:50:11 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id 25sm7372302pfp.76.2019.07.11.23.50.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:50:11 -0700 (PDT)
Date: Thu, 11 Jul 2019 23:50:09 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] input: keyboard: sun4i-lradc-keys: Add of_node_put()
 before return
Message-ID: <20190712065009.GE150689@dtor-ws>
References: <20190709175707.14278-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709175707.14278-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_235015_349295_F21C03EB 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: maxime.ripard@bootlin.com, hdegoede@redhat.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 11:27:07PM +0530, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous
> node, but in the case of a return from the middle of the loop, there is
> no put, thus causing a memory leak. Hence add an of_node_put before the
> return in three places.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Applied, thank you.

> ---
>  drivers/input/keyboard/sun4i-lradc-keys.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/input/keyboard/sun4i-lradc-keys.c b/drivers/input/keyboard/sun4i-lradc-keys.c
> index 6ffdc26b9c89..4a796bed48ac 100644
> --- a/drivers/input/keyboard/sun4i-lradc-keys.c
> +++ b/drivers/input/keyboard/sun4i-lradc-keys.c
> @@ -198,18 +198,21 @@ static int sun4i_lradc_load_dt_keymap(struct device *dev,
>  		error = of_property_read_u32(pp, "channel", &channel);
>  		if (error || channel != 0) {
>  			dev_err(dev, "%pOFn: Inval channel prop\n", pp);
> +			of_node_put(pp);
>  			return -EINVAL;
>  		}
>  
>  		error = of_property_read_u32(pp, "voltage", &map->voltage);
>  		if (error) {
>  			dev_err(dev, "%pOFn: Inval voltage prop\n", pp);
> +			of_node_put(pp);
>  			return -EINVAL;
>  		}
>  
>  		error = of_property_read_u32(pp, "linux,code", &map->keycode);
>  		if (error) {
>  			dev_err(dev, "%pOFn: Inval linux,code prop\n", pp);
> +			of_node_put(pp);
>  			return -EINVAL;
>  		}
>  
> -- 
> 2.19.1
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
