Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DEC1DF2C2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRgL2FKfrwVmKAlEHKS18XFW383AxvfgHcJhABYW2Xo=; b=PaPdhwkbkGZMLE
	dPUbrq7yzhmzifLTg8GqqlfCMzi9LL51YuOBXIZd4oFIl14VG4iLDggYRHlMZ2FRVWgkgKan+AiDe
	kwPl/fiXi2IoWMLiiqFFBsM2+tdzWOoCFbYpVnPCHFNyij0QIUXdCyhrXMdugohM2yeOK+H+nSdx8
	YS638YauKPnxgcuZdceO0eNVdPuAHetHZdQK5D7R1pC10zjX0wibkzbcJBhX0hjwiXaV0fr34Cj3r
	HerrUT4DKeG3BhfhY54yekRvZPtInsPVikzFlLUIQ0jhfMQwtTt8XduC9EpAjWbFwfRD+ARkvLNqE
	q0Jr35K+SO11bCk+IxRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGpa-0005cv-F9; Fri, 22 May 2020 23:11:58 +0000
Received: from mail-io1-f49.google.com ([209.85.166.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGpP-0005cF-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:11:48 +0000
Received: by mail-io1-f49.google.com with SMTP id d5so3745368ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:11:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TtCZ0bOQ8dVl/wcwOWZuf6hM21Yr4PMWRA6hQoilBR4=;
 b=fYWIIUpJ+BUakyvQJyJrEKaWeJ39VHsW6/ge6YyjYXUC+9PQ1DkIcKOvV7ycHPvZJ6
 gAPjo7gCiZpOgg6B5pwpD9w6ODhI8Jh5rINMe7OZdEmTtdBiVIDarQCZ8e9W6v0VEu0L
 b4j2W+xURPqEKHa2n3om8x00YwCFZRgxuvmYSCiQp7Cc1oyOSvKSwBudrnOvrs6PVlI8
 B0/hnqN3k+OpjVukKZahjAUY3W5oNXB1KVKriNK0Y3gijWXbX3+FO+EWn+EpvW1mwlX6
 7J58SeN/gb/SElubNS78jL8PXYWerleM/5oeyC6xgHrU6w/7TImwjCaRtvth0h0OJ1h5
 24Hw==
X-Gm-Message-State: AOAM532ezoPRV8RhLK4xX7p98OVIEzzxgxjFp8pq5ADpnnWCsaasC0Km
 ayA+14vOV5zxYB1i0IHkomSGjbHf56k=
X-Google-Smtp-Source: ABdhPJyXuoiO8jKVrofJnRWFDKmZyZAnFARPovr2+fHPI3yBUpEHudWy47GxUWhPF6MwzejeLf+p+A==
X-Received: by 2002:a02:c804:: with SMTP id p4mr3862296jao.115.1590189105821; 
 Fri, 22 May 2020 16:11:45 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id w23sm4354548iod.9.2020.05.22.16.11.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 16:11:45 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id f3so13289782ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:11:45 -0700 (PDT)
X-Received: by 2002:a6b:1505:: with SMTP id 5mr5062071iov.198.1590189105156;
 Fri, 22 May 2020 16:11:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200508140947.28712-1-yuehaibing@huawei.com>
In-Reply-To: <20200508140947.28712-1-yuehaibing@huawei.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 18:11:21 -0500
X-Gmail-Original-Message-ID: <CADRPPNRfS1LTeCPtyfMzDUBvf871v=Vs2rpYGCevvX08OuN-Mw@mail.gmail.com>
Message-ID: <CADRPPNRfS1LTeCPtyfMzDUBvf871v=Vs2rpYGCevvX08OuN-Mw@mail.gmail.com>
Subject: Re: [PATCH -next] soc: fsl: dpio: Remove unused inline function
 qbman_write_eqcr_am_rt_register
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_161147_426371_DDEA63E1 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.49 listed in wl.mailspike.net]
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
Cc: Roy Pledge <Roy.Pledge@nxp.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Youri Querry <youri.querry_1@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 9:13 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> There's no callers in-tree anymore since commit
> 3b2abda7d28c ("soc: fsl: dpio: Replace QMAN array mode with ring mode enqueue")
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied to next.  Thanks.

Regards,
Leo
> ---
>  drivers/soc/fsl/dpio/qbman-portal.c | 12 ------------
>  1 file changed, 12 deletions(-)
>
> diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
> index 804b8ba9bf5c..e2e9fbb58a72 100644
> --- a/drivers/soc/fsl/dpio/qbman-portal.c
> +++ b/drivers/soc/fsl/dpio/qbman-portal.c
> @@ -572,18 +572,6 @@ void qbman_eq_desc_set_qd(struct qbman_eq_desc *d, u32 qdid,
>  #define EQAR_VB(eqar)      ((eqar) & 0x80)
>  #define EQAR_SUCCESS(eqar) ((eqar) & 0x100)
>
> -static inline void qbman_write_eqcr_am_rt_register(struct qbman_swp *p,
> -                                                  u8 idx)
> -{
> -       if (idx < 16)
> -               qbman_write_register(p, QBMAN_CINH_SWP_EQCR_AM_RT + idx * 4,
> -                                    QMAN_RT_MODE);
> -       else
> -               qbman_write_register(p, QBMAN_CINH_SWP_EQCR_AM_RT2 +
> -                                    (idx - 16) * 4,
> -                                    QMAN_RT_MODE);
> -}
> -
>  #define QB_RT_BIT ((u32)0x100)
>  /**
>   * qbman_swp_enqueue_direct() - Issue an enqueue command
> --
> 2.17.1
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
