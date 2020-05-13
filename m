Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400FC1D1039
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SnRQeSp7bVH/aa7djSe/ztWNyS5HLZw41vU18BW6Ns=; b=IMdtzmpTsDNgMN
	ESOxriewouCy0I08w/7modbDw3uvMPMVDwZjbc2YPXJXBGtxCIyBbtnPiKWICIbCMrA06kgs1y5HL
	eBymlhD3JmFCNNN/Ot9FQUiMULAJFTJd2h3cJwC4VWbC59DnUceW9dQCHcvfALtpgjnFJyxRpWaax
	tRsqyRNqzpVulvct/4zn1wb26fpEGy+j5x98PUCe1byPXmIsyE7HK4dFBUp8s/2I95xKBB6CxlOAF
	ju2wNFIBOj4c9pf35maszIN232no+zjnRJnhqXcwUuFEsnAZzXs1p2TImp2u41moSEQ+0tpyIVn3p
	ZIIerkSj38WPM9XU8vTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYox9-0005Hr-PR; Wed, 13 May 2020 10:49:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYowY-00054z-Sk
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:49:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id i15so20246635wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sO6BEKMLJDnGkUHjWQKUCP+ZMX/Ww5RqBHbOyanaXJA=;
 b=aly/NyYQrfZmTDdjjX0N7GhJJxddUzBQDRMzhy2jAgnfv6XLG+emDrnDB6w5Idc/IU
 TG3gybeup5BLkvP/+TBj+S3HidnwRr4T4CljOHE/nudbJCxvjnveHSQpWPMOGEyUhr2o
 M6RQYzW8iHAKKIa/LAvNbBdpSCeb08k4NmGblEttU0cOr62an5t/KKoZ8E90xgU6OCls
 P4RJd3+iVYW4j0wyvwPvJ00SpkYl5zn1Klzp2qyG2Ds4u2w67MZR1dmuBiv8CZh2lkww
 HONB/90Oo8RRJgylca7IAeAE+3yZPPsgZnt1bL59pgKeybrBnrLjzDEEWIxs+gZS1m5P
 QpaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sO6BEKMLJDnGkUHjWQKUCP+ZMX/Ww5RqBHbOyanaXJA=;
 b=iH4vLZ0A95+Vfljd/mBEIJunscbOSd0ksOeQNF9R7RXvtHBXiCIaCn8Is9muiH0UVK
 Red0z1aY1o+EYghyyE1OzAQ0resWwwzlkG8qenIDDtod5s7ameFICtIfCxSfge3Y0DWA
 zITG1s6xV3sAn/j3LBhMsKantdJ/6s/ARTevlOEC3eA1zMt5jgIiAzyu6bgxaHEhUeuv
 zP6zuRuJ2iykaMt2Z6I2/q4pPb9PU688LbeED6qEVLNi+biWFlsgeKuUZvejedha6vPe
 REhGXPT9whnBf92s7almawmQln/TRdrcIwBTYFH97ITBQqlAzY/UWMLlOhsM2Tg5qBGZ
 wvmw==
X-Gm-Message-State: AOAM533XwPIVwmwCykOw2yFuu0u2IrvBWNXIHqhuCmEWhLuNro+nSS+c
 XPpR90M1gLL4Z6RjxFncTYE0rfUe
X-Google-Smtp-Source: ABdhPJwZuFy2lPpOfVeUIpq8oWa8K5Ux3L8zpnGkjtAWw18u7oXEDFSPBvFtH8JtgZxhwWzqe3QIoQ==
X-Received: by 2002:a5d:56c7:: with SMTP id m7mr7598535wrw.256.1589366933342; 
 Wed, 13 May 2020 03:48:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id l18sm5516910wmj.22.2020.05.13.03.48.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 03:48:52 -0700 (PDT)
Subject: Re: [PATCH 12/14] prctl.2: Clarify the unsupported hardware case of
 EINVAL
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-13-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <12b559c1-21c9-833f-1a5e-37ddad284880@gmail.com>
Date: Wed, 13 May 2020 12:48:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-13-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_034854_944835_82191E47 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Dave,

On 5/12/20 6:36 PM, Dave Martin wrote:
> prctls that are architecture-specific won't work on other
> architectures, and arch-specific prctls that manipulate optional
> hardware features likewise won't work if that hardware feature is
> not present.
> 
> The established pattern seems to be to treat such prctls as if they
> are unimplemented, when attempted on the wrong hardware.
> 
> Cover these cases with some generic weasel words in the closet
> existing EINVAL clause.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Thanks. Patch applied

Cheers,

Michael

> ---
>  man2/prctl.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 2361b44..7f511d2 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1616,7 +1616,8 @@ is an invalid address.
>  .B EINVAL
>  The value of
>  .I option
> -is not recognized.
> +is not recognized,
> +or not supported on this system.
>  .TP
>  .B EINVAL
>  .I option
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
