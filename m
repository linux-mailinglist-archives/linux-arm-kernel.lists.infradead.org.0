Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504F614A2DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsUIzsE+EmUN6Od5oqQ4C67GQqOKnYNzIbuPWO4FSOs=; b=WwNPxExxloZ4QL
	ZqoUDGttTnEZvMXk8ln2V6fobEIyQtogZrR7URKwCprMEigOi6izF/zDZF6a7ngYPuVgAeReuLHpq
	K04urJSNYnV7Wb4CUDfXmZcBk+oxuq5U5jwWucHHZyI6qBOV6lbLsz3KlW5nN3wVqzPPWWCBs1r1d
	0JikkQvcx0bl1MCjwM2qYjHbxBvu9dtPv7ivi0wR+/niKyxvFPMUZeDB2Y3heoB5IaA8Mrlg7mv5d
	AG9OlLFXv7shKFbhLga3OroX4Vx+UdYWQK2ilYp3sadiF1jFAu+RI9I9i3whR2dZadFbKEJxcANbW
	XNn45iI89zId2G9UsYew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2Ox-0003uj-AA; Mon, 27 Jan 2020 11:17:55 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2Oo-0003u3-8O
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:17:47 +0000
Received: by mail-ed1-x543.google.com with SMTP id dc19so10341397edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 03:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=URicdRNDSRXDR1lupXQbSUVybSg17tNT9soEhKW0QAo=;
 b=pUTN0aoOns3aVn96Ine8HG45pYsXt0YaSdk0G7yHj/qcwFOgvU2c8xIhj4X2KTVC23
 OiFJu4c/MZqkuay5j6cuhxcfsvVDsfGvIHEDn5hQ/DrRPjqxbEgRM6eiNuRhU04Y2zgb
 pd5akd/gqBv83BFitRXcBQ71lGp1Wt7e08aPOMiz1L76mhxS8M9ISq2jV6f9ARZ9UgVJ
 pDKTjHefte5tJAEqVx++qzchSPyudt7SxGQgX8AfLChWQlW7Q2B15QW8kbYl/jGNx0XG
 +TbChqBLSA+HFqQBZYGJ6UVorpbdr1eSXg8Da4Na36nPe6DZX8qLIyKThIoeYhBiJgCp
 aG9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=URicdRNDSRXDR1lupXQbSUVybSg17tNT9soEhKW0QAo=;
 b=n3+tVaWtqZtoFGM2QQnQkvoY5ITyVYgH2RzT23rDjxpwQP5cCCDNK56L+qeutBshC3
 2s93KFHwxN7kYTCANJ3pXBtjUydAbkU5tjmfj4d6pGA1B75PBsE3WC5LQwrq/KESk6g0
 XQWURn/eb5LWXLrjVXMya7cURwnVrAzk+Iskw9PtKaWHKwaK35NThtT8ISt0S3O1Dm3M
 pU5tcMcVi7v63OQJ7JZGroG6Xkezua9Jka0wLPEx/4L43/dDd2uMiifDzK6jOvP7J9/E
 MTnhqfOqX/Y8Oz+G0ok5wDMNN0Y4WwKvA5SUT78D4GX9CjjrjOKjrTSNGOhF7bBWZ5Ii
 tGYA==
X-Gm-Message-State: APjAAAV+QLm9cSmyWaYi9kAoY/2C5llBXK/lm/qdbXUyAmsWrIWfyNXW
 38DQ/sQtkNwafQtVLdD4HT+jDJL8BvmN7/M/SaE=
X-Google-Smtp-Source: APXvYqziQE9LV2rl/8tkESiGWi9hkeo3170AZ/wKEoqTmy3Gmiki1HzT/6UUwf2yRfVFGg+MOn0gQka/qfkY0gHedrI=
X-Received: by 2002:aa7:ccc7:: with SMTP id y7mr13298482edt.45.1580123864420; 
 Mon, 27 Jan 2020 03:17:44 -0800 (PST)
MIME-Version: 1.0
References: <20200127102303.44133-1-colin.king@canonical.com>
In-Reply-To: <20200127102303.44133-1-colin.king@canonical.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Mon, 27 Jan 2020 16:47:33 +0530
Message-ID: <CAKfKVtHMbOvwppZcLN=J+2VvJ1GOFgZ2-DDAfav5w9zf1EjZKQ@mail.gmail.com>
Subject: Re: [PATCH][next][V2] i2c: xiic: fix indentation issue
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_031746_299988_FF97A850 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shubhrajyoti.datta[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 kernel-janitors@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-i2c <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 4:46 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> There is a statement that is indented one level too deeply, remove
> the extraneous tab.
>
Reviewed-by: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
> V2: fix type in commit message
> ---
>  drivers/i2c/busses/i2c-xiic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
> index b17d30c9ab40..90c1c362394d 100644
> --- a/drivers/i2c/busses/i2c-xiic.c
> +++ b/drivers/i2c/busses/i2c-xiic.c
> @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
>                 xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
>                 if (time_after(jiffies, timeout)) {
>                         dev_err(i2c->dev, "Failed to clear rx fifo\n");
> -                               return -ETIMEDOUT;
> +                       return -ETIMEDOUT;
>                 }
>         }
>
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
