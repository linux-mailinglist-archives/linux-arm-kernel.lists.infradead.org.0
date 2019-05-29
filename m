Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEF32E687
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 22:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaGZLBV/44dYRlg5GWchdaqoBYSJDzfsjNjMQEaiUhY=; b=ldzbUj7jyEEDke
	C8hVX11KGEBYQQuh/qi4HaDNY9ifTbp0G6PGUuWSz4cckSGSEAMWu6y2RQvRNSlq24jE3m9ths7rY
	V5GiYD9FJkgpgXWGtVcVzA6xbXHQ8ZiZGSYrBFzcni/VXhpQSbi3wbg8JZ5lug+jgV0YyauO4R7ON
	XkbfqH7ZFPJiNal64d8cq7zTvb/dEfItlx9uAXJj6batroXaZNEALU0iqwJs4z9awTCf7jWgSKZ6S
	y1XEnSK59rkhven/g0ctuhbo+MSBfEurNONW0HLqFkA7D08140DcY3gf7wSlOcACXoE7X3buCpyKb
	eqnmw2H/bsCJrgYViJJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5Zs-0005fh-Q2; Wed, 29 May 2019 20:53:40 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5Zl-0005fD-Vx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 20:53:36 +0000
Received: by mail-oi1-f170.google.com with SMTP id a132so3255274oib.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 13:53:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D2+H7EZcpvU21TkBJqjVERhn4aghur1shp/MYn/imNU=;
 b=a6c5JyxsK7PZJq2Uf21HJ/LdNqkn4EY5/nOcGNbZ/lFbn5fHSxXyp2qQLsvyrRxGQf
 UmiZAqfPiwWboKA/oZ9aiwPCZ9ZChXAu4+2qJOqSu2G3PATMpl5zrT5Kb+6Id/hMuvyt
 eVSFenhjCd058eyv5tDDvPWlRFAzewlKu+qz3ktqI/+Xj3YQc7764jotfNWpVjCRfDYt
 YAfQyWCzXvNdnmCa8ZjzRD6RPYOWWeGivqdcFrrSiyQ/8iRYA4Ic3wbwbmwTPxO1G8tV
 p6DI1UAIS1Usnq8w5Fcu/K9yvx6d6vuN1OFRuzrLLbIqwNoRm7xa1NLkxvvUOUphizHk
 yhqQ==
X-Gm-Message-State: APjAAAU/pMw/ufLudnxyna523CTnJYAMJR7KesqwozwpPWQkRSnHm0Cz
 Dlwkqto7Zm7rPO1RFsRqI0py3RtM
X-Google-Smtp-Source: APXvYqwKFaa6vBA8R7VemFgEF7B0fHF1HlvI65KafNhgblfxkuO2k4KbjuWGkPtXnsDXI92umtl/wQ==
X-Received: by 2002:aca:b155:: with SMTP id a82mr164443oif.59.1559163207352;
 Wed, 29 May 2019 13:53:27 -0700 (PDT)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com.
 [209.85.210.49])
 by smtp.gmail.com with ESMTPSA id c19sm240796otl.70.2019.05.29.13.53.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 13:53:26 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id l25so3459414otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 13:53:26 -0700 (PDT)
X-Received: by 2002:a9d:7343:: with SMTP id l3mr58178960otk.63.1559163206194; 
 Wed, 29 May 2019 13:53:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190521085624.13665-1-colin.king@canonical.com>
In-Reply-To: <20190521085624.13665-1-colin.king@canonical.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 29 May 2019 15:53:15 -0500
X-Gmail-Original-Message-ID: <CADRPPNS5EbVrQ_ayvs=s7fYAc4JM1DfNeXwrmCXMvk6HzPouEQ@mail.gmail.com>
Message-ID: <CADRPPNS5EbVrQ_ayvs=s7fYAc4JM1DfNeXwrmCXMvk6HzPouEQ@mail.gmail.com>
Subject: Re: [PATCH][next] soc: fsl: fix spelling mistake "Firmaware" ->
 "Firmware"
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_135334_026074_5C694C08 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kernel-janitors@vger.kernel.org,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 3:57 AM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> There is a spelling mistake in a pr_err message. Fix it.
>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied.  Thanks!

Regards,
Leo
> ---
>  drivers/soc/fsl/dpaa2-console.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/soc/fsl/dpaa2-console.c b/drivers/soc/fsl/dpaa2-console.c
> index 9168d8ddc932..27243f706f37 100644
> --- a/drivers/soc/fsl/dpaa2-console.c
> +++ b/drivers/soc/fsl/dpaa2-console.c
> @@ -73,7 +73,7 @@ static u64 get_mc_fw_base_address(void)
>
>         mcfbaregs = ioremap(mc_base_addr.start, resource_size(&mc_base_addr));
>         if (!mcfbaregs) {
> -               pr_err("could not map MC Firmaware Base registers\n");
> +               pr_err("could not map MC Firmware Base registers\n");
>                 return 0;
>         }
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
