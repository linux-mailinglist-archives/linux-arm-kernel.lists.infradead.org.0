Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF5E1DF2A3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3u13S6+YP6ZhdDHAvqGL2bijYQhvDFNqFPXPS6qV8s=; b=u+R2oTmbnhfyyM
	qhpgMeU8U8btKP+zDjWvEBo7LA7YoS8f9h7Osj3JAxlT0wqLan0nH7gEjphTuZxYm5TBlbqfca/h5
	fplNRhntzCxk92Zo8h6NgiCZg6bLhqO2dxGPu49ZZYl/ZkUX0srRlAld1UD7sywDpTMJJdIW5hnxo
	IXphlSrPIcape75PAPywpZZmOVa1klyh3boDn3LW+dJqeX3gdCZ7+SYjHXLSHoYBsgcfxub2FQIdh
	F00UnaH9VO1+MinVwEDgWJTOhbU6vAZ/CkUsK45WccnanTFztWT3q1bpDAn5TwNvV9oGTWDCOqs1b
	xMqhhj7eYCIuVyCjzoFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGgG-0007re-SN; Fri, 22 May 2020 23:02:20 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGg8-0007qw-6H
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:02:13 +0000
Received: by mail-il1-f194.google.com with SMTP id r2so1202934ila.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:02:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C/nTM//7FB1PAbN/moZIfyohRFuX/F3Z6XuMSd7PjCw=;
 b=iy+yMOHmRDKOeWz4XIxYLvkpf2mYhHcOxyfPkcoB8NakhILS6zxRSBIRweX09Qb507
 51hxrMr6Gt99DzFIxRQNDSsNsyj5XqRlB5/DBIvOcadyuTaYdjHZ9CbxomTNY7wT3/rZ
 4R3tjkcELa2DX3XGHgW7fa0VwL0ElFumXRY3nPP6XsRidArzusmqXeQekr2APeq1o0ry
 47JwxrlMPv62yb1pChHgjFArPS3wg3KoaMYYN7yO0ssOnESyeUyX3Ulu5G8o2HxUflBl
 fZ/yY3Omg5/TZxMoxECmjUx7IVFM4Rt2uVmBb5AxLy5W4H9MnjWjkBfgdig1W9Rqmdqr
 ak3A==
X-Gm-Message-State: AOAM531fN0oC6Gdx0uomJv5ETd2PiTDEOAXvnF0ZYcVRGKd6FWMBVuev
 09wMCRVUL17Ey2xbhhNV0I/uxuHm70A=
X-Google-Smtp-Source: ABdhPJzoPFWV8Y7d8dlBAhGGkLO0pkX8TIlYps6khkIHZNwhqgGqrsNI62Q07kvLaTdu/5VR+86JPw==
X-Received: by 2002:a92:aa5d:: with SMTP id j90mr15735720ili.145.1590188531025; 
 Fri, 22 May 2020 16:02:11 -0700 (PDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com.
 [209.85.166.175])
 by smtp.gmail.com with ESMTPSA id h11sm5485424ili.26.2020.05.22.16.02.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 16:02:10 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id 17so12415240ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:02:09 -0700 (PDT)
X-Received: by 2002:a92:5cc1:: with SMTP id d62mr15036209ilg.95.1590188529711; 
 Fri, 22 May 2020 16:02:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200327161349.284679-1-colin.king@canonical.com>
In-Reply-To: <20200327161349.284679-1-colin.king@canonical.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 18:01:44 -0500
X-Gmail-Original-Message-ID: <CADRPPNQ4KrnSsG2PxgXxe-+c5DQsUNQjw3f9Xq-kxP3+xAaQcQ@mail.gmail.com>
Message-ID: <CADRPPNQ4KrnSsG2PxgXxe-+c5DQsUNQjw3f9Xq-kxP3+xAaQcQ@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: qe: clean up an indentation issue
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_160212_230997_15D32C98 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kernel-janitors@vger.kernel.org,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 11:15 AM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> There is a statement that not indented correctly, remove the
> extraneous space.
>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied for next.  Thanks.

> ---
>  drivers/soc/fsl/qe/ucc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/soc/fsl/qe/ucc.c b/drivers/soc/fsl/qe/ucc.c
> index d6c93970df4d..cac0fb7693a0 100644
> --- a/drivers/soc/fsl/qe/ucc.c
> +++ b/drivers/soc/fsl/qe/ucc.c
> @@ -519,7 +519,7 @@ int ucc_set_tdm_rxtx_clk(u32 tdm_num, enum qe_clock clock,
>         int clock_bits;
>         u32 shift;
>         struct qe_mux __iomem *qe_mux_reg;
> -        __be32 __iomem *cmxs1cr;
> +       __be32 __iomem *cmxs1cr;
>
>         qe_mux_reg = &qe_immr->qmx;
>
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
