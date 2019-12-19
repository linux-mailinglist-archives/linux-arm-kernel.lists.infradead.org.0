Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44F112690B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:26:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5/pYArIaDB8X0hsM5DSrf4SJY+9rx9Y1iJq7GyTbFM=; b=p2iYKuO9Y0PMrr
	LsIt/W5AtXlzx0W8bps9gIKnkADDNTBGwo7DU6g9GE1CSKExlACNRz1JpLTYOEFEQ76IYpIoZK/bs
	4IM0GpX6xXPQiKjXo0jYeuR24L+Y1DADZC/hUyDUar62W9sM9QbX+VdHqPJW/62O0QeS00Xgf4opU
	v9jHKha+nto2gMr/O+gBfT7Jg3JMAmCujkbv0Za3niu7aeclB7Lhh1T6t4F8fgna81UZCYSFaEKuP
	Chah6OxuW3Mrs8laOO1gzG7b0mB7zf6yTzbJCNqnYSXWGb7h1BF4N8j/Ow+Ck+F1AmkxPwqJ1owv1
	q/KCaUFkZN8ATIi0nU8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0VL-0004ED-G7; Thu, 19 Dec 2019 18:26:31 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0V8-0004D0-GL; Thu, 19 Dec 2019 18:26:19 +0000
Received: by mail-vs1-xe42.google.com with SMTP id n27so4399398vsa.0;
 Thu, 19 Dec 2019 10:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rFab9TFuVyy0B0hidssVyx0Ip53fX/LaEkCJxLNWYBA=;
 b=njedkY2JO/DXhybGjAgtuJQ3ELQtSyBbr4LtklvedJ40JfEyQUuq/88wWz760rpihi
 +QPs+7JUh2ExfDnz5RJ3yVQD2clbnAeeCYgLgYcuhXKFx/trbXWgVvIHtzuyiEmHwh8U
 umfPvRs60aCXka/6STVBQOfMateoMZaMcaQtstMCwwVW4Qyja8DM8evmAdjcWrmW/WlP
 W1o0SpPgU/y0ughI3pA5oqlSyOSguwQzm/lfh9fgPHYF6ItaxFmzBhBvMX3OCu3Ka2kh
 dDp42dc9BynBuc2KdnyZo+QZ8KUWSZpBqcdXmcy9G/UA52saC7UhjAhmdqSzAG1DVI8c
 SVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rFab9TFuVyy0B0hidssVyx0Ip53fX/LaEkCJxLNWYBA=;
 b=qXkHxmgLN6AgiGBw8Frw/QmWCMXKEpHUe7RJVAULQ64m/TXgb/MOE2GMvdhua07Mcb
 LrQHRhvbZK2+z7BMUTXGInEy/bBEbz2usYXHATAjKQMYJrecYKgB7bZN5tTQs4ScoKfV
 RSaHGHLAotvUtEzm7McsOWcCKN/gqV83BcmPCWKAzU4skZGH+TY6Kgqnt2JdMeMfVUFF
 imEmeJM4/pKp9WKNJPzW0Fx736zXI1Y6FATOJ8vowk5XAZ178X/t5zACz2tY/g8USOZ8
 4zun36qHh3MyAJngF5v7BZ5Zh8Aj6W6LsAwVkZqJYT7fsmogX3aVbRuPFyI0tBtMoq+i
 F8mQ==
X-Gm-Message-State: APjAAAXYY2EjN11Ay4xYcruFa6jTygw82T74/zTfflzF4Y7WVA0rT1hC
 KQllCVvcmSbfc+MYTAwD9ZCpdGVAmZcfjx/R7Jw=
X-Google-Smtp-Source: APXvYqyLPE/PUdXmbPKj8EMXclPSXyJgYJpxajEIC9HQ1RfZo8Iy2l7Mc313mPx7rnQ5LEzufff/eY7Ua8VC1PyZ+ag=
X-Received: by 2002:a67:fb14:: with SMTP id d20mr5904491vsr.136.1576779977603; 
 Thu, 19 Dec 2019 10:26:17 -0800 (PST)
MIME-Version: 1.0
References: <1576224695-22657-1-git-send-email-stanley.chu@mediatek.com>
 <1576224695-22657-4-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1576224695-22657-4-git-send-email-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Thu, 19 Dec 2019 23:55:41 +0530
Message-ID: <CAGOxZ50orn8JYxvCv4S6ziMdnB6+BG0DSdkand=x9Vw3H-Dejw@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] scsi: ufs-mediatek: configure customized
 auto-hibern8 timer
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_102618_564677_268C8FD3 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alim.akhtar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, andy.teng@mediatek.com,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, chun-hung.wu@mediatek.com,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Avri Altman <avri.altman@wdc.com>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Pedro Sousa <pedrom.sousa@synopsys.com>, linux-arm-kernel@lists.infradead.org,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 3:04 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Configure customized auto-hibern8 timer in MediaTek Chipsets.
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 690483c78212..71e2e0e4ea11 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -7,6 +7,7 @@
>   */
>
>  #include <linux/arm-smccc.h>
> +#include <linux/bitfield.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/phy/phy.h>
> @@ -300,6 +301,13 @@ static int ufs_mtk_post_link(struct ufs_hba *hba)
>         /* enable unipro clock gating feature */
>         ufs_mtk_cfg_unipro_cg(hba, true);
>
> +       /* configure auto-hibern8 timer to 10ms */
> +       if (ufshcd_is_auto_hibern8_supported(hba)) {
> +               ufshcd_auto_hibern8_update(hba,
> +                       FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 10) |
> +                       FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3));
> +       }
> +
>         return 0;
>  }
>
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
