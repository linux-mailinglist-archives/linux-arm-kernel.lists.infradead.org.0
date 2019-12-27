Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2C012B047
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 02:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DIEweyIZoQ3NNO6wRNH+qnbTThkYc1Vw0yUhCAc4F0=; b=Ej3/Ua6EvL9qA0
	rrknaZ9h2rqSovKkkqa0gbWsensncL+/448b1tGhtj76JLJ0CEQvBFXkJ+JUMHe+F0THH4fgN0xnt
	6dwOnhx71HELWkw0XestnAxx99K37Xb5K1eGHx6+4SXA14sr8UE2NL+QdzwUPf4rf0Wk+tkKmiMCp
	pBrtI7Dn2Vr1FJMnf8ThaKeeDTplCLNBvO5+5x0lYa6X/8LxPUjc20bVbrzSjBCSqBkTKEuaZtMik
	LGK1g2cL5BIDBV4CzJQEI0LGp1xCjIjyCXi5wB8ZmTZAGN/KrxbQXdu6ya4nLYsfWUMcjSZPq6ho9
	ahpWQXj9xPlRyB9WG6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikeWS-0007Tc-JG; Fri, 27 Dec 2019 01:34:36 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikeWF-0007S6-CD; Fri, 27 Dec 2019 01:34:25 +0000
Received: by mail-vs1-xe44.google.com with SMTP id p6so16124339vsj.11;
 Thu, 26 Dec 2019 17:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c2NZUOXB+u4N/6ynLgzIx+P3HGegc5/3CrzlQhhVkNg=;
 b=hKSl9LsHyLf6H23TKYquoRCv47amnB07IAyIWTFA9xS6edi3vbQWpcM2zU6pybyxEU
 dp+PpHmvMbMNCW2aOsz66YpRfNTAfNegZlNr5HVVZVFv5Fq6z27Z0chyKa1+aLB4q/2r
 GdVY2xhVnBRRh50DSgotuxalNVk9415GL1lhux1GUGgRHsF4hPxu1dBrDVVxx03+RUE/
 9+VGwm8yjt4qA1RSySKH+kcNmD8gq06d0ilNk9gUCN04JqE2a/r+wpP5olPyJtN21g52
 fa21lrcwK375iWKayzpmyVMMYtdIPJnP8I+HHhfhfE41ujSu7UOUhpd5lhOa3F9vlxQu
 8RIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c2NZUOXB+u4N/6ynLgzIx+P3HGegc5/3CrzlQhhVkNg=;
 b=eh/8t35bp838E2TrqDQ7zp5ed6wtCCbvBNrorhkXV/dPGi6gLw41L+PIZklp+bvxF8
 TvjVYHSBfR9DuI9pjJ8nd3zaC6whV9BViTULar71wXBPkrzniWk7C2gXgEP8KidAXxXA
 o0OUzRlgVFAho1SRVTt8WVKGvfxA9w+3X+UbQ02bgXLUEBjgXmb/eEuG4yIDQt6KvNVp
 JyREpU4jordGQdFIGSuTk6x3t6Shsbc9UTBHa4vK1SA+fqNopgee/pbvzErHXFT8iOHE
 iuA6mNwnvypAjlt3ajwgJ5UCUQTp1gnq6wmRNjIy8UbJ+A3ShyuRMXjBV/qsXsw308cg
 zwNw==
X-Gm-Message-State: APjAAAVh6pahHOZ8KfMNED82F7V3LvkMcXzXLo7Ft2vYjM7dtXba388u
 a9Q3IgJqDPXQaTvBJuqq+fPdajcFTjN0qMgabAc=
X-Google-Smtp-Source: APXvYqyVeOGbvgWGe1iD9awj8wB/SgMSBPry9zyGE8kBSWztrseHrfYrKTMNOXiqV0LTSPsEceV4deRha4vbzTbFBjY=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr27328735vsh.179.1577410461880; 
 Thu, 26 Dec 2019 17:34:21 -0800 (PST)
MIME-Version: 1.0
References: <1577192466-20762-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1577192466-20762-1-git-send-email-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Fri, 27 Dec 2019 07:03:45 +0530
Message-ID: <CAGOxZ53wWCcJJpcO3BRDuOKS=gsNmYd=EjU3YEo+8z68iT+EiQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] scsi: ufs: use existed well-defined functions
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_173423_436264_944F69C1 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alim.akhtar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, andy.teng@mediatek.com,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, chun-hung.wu@mediatek.com,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Avri Altman <avri.altman@wdc.com>,
 Can Guo <cang@codeaurora.org>, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stanley

On Tue, Dec 24, 2019 at 6:31 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Hi,
>
> This patchset fixes two small place to use existed well-defined functions to replace legacy statements.
>
> Stanley Chu (2):
>   scsi: ufs: unify scsi_block_requests usage
>   scsi: ufs: use ufshcd_vops_dbg_register_dump for vendor specific
>     dumps
>
>  drivers/scsi/ufs/ufshcd.c |    7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> --
For this series,
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

> 1.7.9.5



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
