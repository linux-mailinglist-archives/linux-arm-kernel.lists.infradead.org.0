Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC185698D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 14:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5boQxpmBpQhcGX3NjXKvxGsMy+nJHzDNxGEkeVOEkbI=; b=FHdnXPO0nZpxTd
	/J4y2Dx+dCj/+jd+qvCLEnpPovUJDRo2Iq03Ys8skhOe0RpjoSSS7yp0iS3buFRGLnHevxfFxGAXA
	mZUgx1fhh70De/abT1SnXJyCJjVZsnSfEk1oOoOTfKaoTawv0cZVFnd9gYx3TOGSqVnBH7eUUZ5AV
	d5QUFGuK8Om8G/zdWWKJ1rFlStNR/obO+7gLZ5EAHJDBi+bYsr0XXvKf9qOVBwz9IDkHK9YK68kfZ
	/98A4J+SDhIJBIkPOHCrqTlsaBuvvIPYwpvT4qgpO02LflOnWJ22RAbDjVHj2Mfuzd5n8WdurY6gQ
	h5MRYdPgRUNWPc5VO6zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7Fl-00076N-EL; Wed, 26 Jun 2019 12:42:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7FY-00075V-CQ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 12:42:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so1946443wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 05:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/89S57mpuhANqW7P0SQuk594h6BbB5jqPDSQ9Ds3jmA=;
 b=telupOueO49ezANV6MQ9EP6YOmXIXr3OEqq4W2xMbkHOazxjKzw6L5r+7c3baP7aQw
 Dy0tp1ggBs4bVBadpnGIQ9dkM+WLRGom/doa5TEgaRI2VYef8ZRiytfaVUaTg0G4BUzk
 0BbUel2tFKFOJ/xiwl2uTdiG1JgTb0beJ65TZRC+iDFzCizZ+mmDIQ77RutpM4d5mIC2
 1ygaaz5tnB7cv3SUQV0+W5NbCbzdpp/uc+FY51Dg6cGyY7geNRpWjX/Zxu+jj2xwhgoo
 4ub8y+pd1gCHMlwMy0SGFnSpG5VQMMbPdbx02mkw+e/jRv26oy7C4WlaZUjet4Za+u0Z
 avfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/89S57mpuhANqW7P0SQuk594h6BbB5jqPDSQ9Ds3jmA=;
 b=c4+mG7G0j5lspdrFOZipJspzi6nlvfaGODqWmsVg4XvEicifs5mDu8oIo3t3nbgPaM
 VIDOkYq4JEjVk3ptgVGljVqN7wFxCqCCES9C3axQHskD5w1bV6OkERI98B8FFmkIRp7j
 PIAKQfX5P+crKLuggBvYtnMLvGdb2DD03FedA0KFdA8B4EY2TKhfQP/o9UbSzQbyO4fG
 PAW4HxugqMW3soSuWEeMZVs3pP0Qk56b0DmEHU1gRyiTgzDKNp8fmtlQucESM0AvfydF
 Re1HLYdRzWY46qTqK0tPL7u9XzKg64kqtuLh9wwDcd1ejNXDE5LM6Vm5QrMMWxlMSj8Z
 E31A==
X-Gm-Message-State: APjAAAWUr6rD6pQgtpvJNN7UW36RyTK6041S4th2dPdGs5pKLE1gaekH
 yVmCkUjqyOrdt6PVYsF4K4SICVR9Mit6QHCpPu0=
X-Google-Smtp-Source: APXvYqzEfG/o6BpKhYhz+f0gbYiJr1+1nFyKt/FO8KIHz8nHEc7l11ldGst5RGwz25NqYdt6zog6+MR/Rj+QBG17bbo=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr2584418wmc.25.1561552926103; 
 Wed, 26 Jun 2019 05:42:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190626070706.24930-1-Anson.Huang@nxp.com>
In-Reply-To: <20190626070706.24930-1-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 26 Jun 2019 15:41:54 +0300
Message-ID: <CAEnQRZBsT=KY3-Gk8p1byJOqx1_y_EX-KqiBs6WnroWkT5oe_Q@mail.gmail.com>
Subject: Re: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_054208_451159_CA0A2859 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, dl-linux-imx <Linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 10:06 AM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add i.MX SCU SoC's UID(unique identifier) support, user
> can read it from sysfs:
>
> root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> 7B64280B57AC1898
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/soc/imx/soc-imx-scu.c | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
> index 676f612..8d322a1 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -27,6 +27,36 @@ struct imx_sc_msg_misc_get_soc_id {
>         } data;
>  } __packed;
>
> +struct imx_sc_msg_misc_get_soc_uid {
> +       struct imx_sc_rpc_msg hdr;
> +       u32 uid_low;
> +       u32 uid_high;
> +} __packed;
> +
> +static ssize_t soc_uid_show(struct device *dev,
> +                           struct device_attribute *attr, char *buf)
> +{
> +       struct imx_sc_msg_misc_get_soc_uid msg;
> +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +       u64 soc_uid;
> +
> +       hdr->ver = IMX_SC_RPC_VERSION;
> +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> +       hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> +       hdr->size = 1;
> +
> +       /* the return value of SCU FW is in correct, skip return value check */

Why do you mean by "in correct"?
> +       imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> +
> +       soc_uid = msg.uid_high;
> +       soc_uid <<= 32;
> +       soc_uid |= msg.uid_low;
> +
> +       return sprintf(buf, "%016llX\n", soc_uid);

snprintf?

> +}
> +
> +static DEVICE_ATTR_RO(soc_uid);
> +
>  static int imx_scu_soc_id(void)
>  {
>         struct imx_sc_msg_misc_get_soc_id msg;
> @@ -102,6 +132,11 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
>                 goto free_revision;
>         }
>
> +       ret = device_create_file(soc_device_to_device(soc_dev),
> +                                &dev_attr_soc_uid);
> +       if (ret)
> +               goto free_revision;
> +
>         return 0;
>
>  free_revision:
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
