Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8D6673E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 08:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VG2UNxoAaZUPmKsVLii9OlzCUWjK4RLvZ3wXKUFriKs=; b=uq/DMyhKGBwb/D
	7KfuHKI+k88Nv80uSjLZRz9eY9gkrGLoM2G+m/huyg58hGEci7Qn6+WKzlY6oX8Mc/GR+YVUcVKUy
	FrzO2vxVtrMYJ+n3O25iCnvuLDAPzYNffSS4peqsSQel1kmhpvlXuNE248mteQGSJkDEmF43JiCqd
	/RF3tDA1/TDFpeUl8mcpAZg5r+9DcDnuKlAbl92RzNoyqdaPJl5TKVpkjnkKra6FIZqLbY8yzOET6
	46zkMg0lR5M3ZWENOPeIdfbuoKJUv6XMyg9GZHif43dGmM5RagjiAFUuaU911WbJembXrqkpm8ZiW
	4OSMDC7CHkoWIuoM0wHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpOK-0006yW-7o; Fri, 12 Jul 2019 06:50:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpNt-0006r2-F7; Fri, 12 Jul 2019 06:50:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so4107278pgl.2;
 Thu, 11 Jul 2019 23:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nunM8EbMx8v6iauP2cPpdPNrk0NnDajKR4vWDYT01Xk=;
 b=iBft0C0HVos4tltf5LODpwQDILpaS8gGULpyrrSpgR2rrBFNotQ5rRfkQjeyhAUXKN
 /zUFfzkOcsFSuF76M8WstPCXUBey8SdLYYYSi9h0QR/WQ/EO4CgqoYM/ebyRq6XMdXNo
 TT3JHx9HR21hObmgoJqw7CIJBjp9XgpHkd74s4RRIFzvCRM7kNByB9tqvIitkVuWdBeN
 Z4JZcwkxGTie4QAVczcWFSwigA7H3Ip9cwr/QyyhP6TNgckO9tzJ1NodTzODYolHdPcB
 UbJEgCNv6g529cBZVjZXYWIViqCmUlsq/eFnNCUVJfbrV945+qyfkneSdQG6OwpLBfdB
 YF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nunM8EbMx8v6iauP2cPpdPNrk0NnDajKR4vWDYT01Xk=;
 b=k2tUthDDqh4A7/BvV3IoqnrUNkWOJPza5gZmAQVl5Nn7eRxYNEpqwYAiwGBwFo0MB/
 81zG4uBtwMyduo+kwjlA/xOiwxqgqVAoPQYwL+hqFMfya75Ed3GG3fqqCmvRemYGW+3+
 os0YS0a4QJERKgvrxrZNX9xTGw+lKgqICyyCZA0iRU1cLy/wuBx3hJD0D3V0xX8nnySR
 0mhHH6D/fe0ia3gyF6oNK09qXue29WbyDKSy0s11pVnome71YcCo+rv6eASinJR4bsHQ
 CF+Ekm1FX7gUjc27qyd6G3NGTTF2cwei2iNCSJF3pcEdPTNNiHNC3Dd5DUakhIsjQzck
 F3eA==
X-Gm-Message-State: APjAAAVQvY6/wFaNfzT8oIwPcAl3hTNxzNlBzYT+ejBeZ1uNdhqjfnN+
 n7xgo2Vkuf4vlgKBVGTpErdhBgyguBM=
X-Google-Smtp-Source: APXvYqzK1qh1Vj/ulA4pekaBdPxj0EeE2flqAmPZtwiASLmygbcbdwa0L7WHSYjzYLBaONH9v/hNfw==
X-Received: by 2002:a63:ab08:: with SMTP id p8mr9230016pgf.340.1562914220292; 
 Thu, 11 Jul 2019 23:50:20 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id 3sm8494091pfg.186.2019.07.11.23.50.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:50:19 -0700 (PDT)
Date: Thu, 11 Jul 2019 23:50:17 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] input: keyboard: mtk-pmic-keys: Add of_node_put() before
 return
Message-ID: <20190712065017.GF150689@dtor-ws>
References: <20190709180019.14339-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709180019.14339-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_235021_554593_13724D27 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 11:30:19PM +0530, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous
> node, but in the case of a return from the middle of the loop, there is
> no put, thus causing a memory leak. Hence add an of_node_put before the
> return in three places.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Applied, thank you.

> ---
>  drivers/input/keyboard/mtk-pmic-keys.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
> index 746ff06eaf8d..62391d6c7da6 100644
> --- a/drivers/input/keyboard/mtk-pmic-keys.c
> +++ b/drivers/input/keyboard/mtk-pmic-keys.c
> @@ -277,8 +277,10 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
>  		keys->keys[index].regs = &mtk_pmic_regs->keys_regs[index];
>  
>  		keys->keys[index].irq = platform_get_irq(pdev, index);
> -		if (keys->keys[index].irq < 0)
> +		if (keys->keys[index].irq < 0) {
> +			of_node_put(child);
>  			return keys->keys[index].irq;
> +		}
>  
>  		error = of_property_read_u32(child,
>  			"linux,keycodes", &keys->keys[index].keycode);
> @@ -286,6 +288,7 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
>  			dev_err(keys->dev,
>  				"failed to read key:%d linux,keycode property: %d\n",
>  				index, error);
> +			of_node_put(child);
>  			return error;
>  		}
>  
> @@ -293,8 +296,10 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
>  			keys->keys[index].wakeup = true;
>  
>  		error = mtk_pmic_key_setup(keys, &keys->keys[index]);
> -		if (error)
> +		if (error) {
> +			of_node_put(child);
>  			return error;
> +		}
>  
>  		index++;
>  	}
> -- 
> 2.19.1
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
