Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAE3B4174
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 21:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbeP7z9cdZ3STx6M1QiJpfaoBZqQVdmlUOSEKMCIzDM=; b=jgFSb5FasD+AO+
	WOied6ZhOCx9rPQlUfGxQjH+44UU+wDBxY4EFsyDlTyn59Z4JfXN9soKftvvqacwxL6akJWw/6oVy
	JKJ71d3MtIfyroYQA8umG/LtSCYD+hkAjwROxtdJfWcBL0mWpeUltJ1MFzx9SZedspFhWnKrXpCcf
	psxJ8TWe4bNMYp5Yry20AIqEylCmMT93Ar60ftmJId6doM+lFB13M3FeiT4vKrqqpYVtFpbnQPbsi
	XvWJ+WFREdAHcMy6GZUZ2fkXP2FRvjHQnoY58qKWNgSnNEeEkqlamzug6UpYlUFtBUTGIBEtMQNOM
	YV7Utf6gHZgIEmnbi/oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9x91-0006aw-FS; Mon, 16 Sep 2019 19:58:43 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9x8o-0006ad-Kf
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 19:58:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id z12so585171pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 12:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WKnGYAG21cr4F0EkTKpCt83Xz7HJk93dFnPyX/CHoGE=;
 b=ZWL/OuUIRQL/X0Ez6ClDIs67n4bz9LiEtVnd2XjDQCnmYfl5thqSN0S+jLSCYjkqD+
 7kZSJGxUvTiosSWCtbEcszjb5uV4tq0Nf2Y2CJ5LC7Fs2hBb2qCi9m7j8uiKZBC/mvDT
 A17m1DVZLlFxA03RzZV+gt8NPUO6xYsPAMC6PGIYpA5zsq5mgyBeQleJj+RjjCXK5n40
 lCz5LNmlGHSQ0/1jeKjnK3rN1BlEv+YHc6MOfJU2LKVn//9qWPUQ5xO5SNz5rsDHsuZR
 yKyIStbaOFsWhZa+0Q58EPFfC4pbuDquMYGvYj0Re8W5g7qNKY72+oYqWSe9gndaQKwR
 RXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WKnGYAG21cr4F0EkTKpCt83Xz7HJk93dFnPyX/CHoGE=;
 b=PQOuIFp+DVOzbiMJfIRdT3GpI3GiS9jcg7e9e4fW9DQ5zFByEPSwc33WaWz0WpWBn7
 oYbdef2odBybMCTi/WvAoGIYzqls5pscLw04UTpyuWMLgQLlGON8JTdeItlvLKWoO71A
 prgqr8TDjzQgXQRVPmyi4xpONknazia3MTKD16URyD5IvrUdzSPKlKQwGFyN1XlzkjLK
 tZqaS6E4P5RgghU2NC8u6x7PESi2OX3lcJv3OcLrU/PjeUwggM+zrkstm/u+wNm1Q1XQ
 W93Z+lYtdKyZEpYkHPXavXG+8vxaUkdd07Z3793gj1qjqmcwIxLVFjquQBVNUvXg+ip8
 ZKRg==
X-Gm-Message-State: APjAAAXt8HVErcvQXjSaO8167n6CPtNQItuWHVt9TesCKehKUroncKUv
 rD7EDfEmn57DSEPW5sedIkVLww==
X-Google-Smtp-Source: APXvYqyd4UYC0qxEwGIFrLpFnO092xfrTortHoQ0K+E7uSofmEDYVeaLpMWfCPwNvxKUNsZ094mcyQ==
X-Received: by 2002:a17:90a:d356:: with SMTP id
 i22mr997330pjx.24.1568663909263; 
 Mon, 16 Sep 2019 12:58:29 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w69sm50158909pgd.91.2019.09.16.12.58.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Sep 2019 12:58:28 -0700 (PDT)
Date: Mon, 16 Sep 2019 13:58:26 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
Subject: Re: [PATCH v2] coresight: etm4x: Add support for ThunderX2
Message-ID: <20190916195826.GA16787@xps15>
References: <1568096664-13252-1-git-send-email-tanmay@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568096664-13252-1-git-send-email-tanmay@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_125830_706360_95F1ECAA 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 06:25:02AM +0000, Tanmay Vilas Kumar Jagdale wrote:
> Add ETMv4 periperhal ID for Marvell's ThunderX2 chip.
> This chip contains ETMv4.1 version.
> 
> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>

mpoirier@xps15:~/work/coresight/kernel-maint$ ./scripts/checkpatch.pl 0001-coresight-etm4x-Add-support-for-ThunderX2.patch
WARNING: Missing Signed-off-by: line by nominal patch author 'Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>'

total: 0 errors, 1 warnings, 7 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplace.

0001-coresight-etm4x-Add-support-for-ThunderX2.patch has style problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS

> ---
> Changes since v1:
> - Updated commit message.
> - Use UCI to identify ETMv4.
> - Remove addition of ETMv4.1 version checks.
> 
>  drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index a128b5063f46..47839b4a8bc0 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1211,6 +1211,7 @@ static const struct amba_id etm4_ids[] = {
>  	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
>  	CS_AMBA_ID(0x000bb802),			/* Qualcomm Kryo 385 Cortex-A55 */
>  	CS_AMBA_ID(0x000bb803),			/* Qualcomm Kryo 385 Cortex-A75 */
> +	CS_AMBA_UCI_ID(0x000cc0af, uci_id_etm4),/* Marvell ThunderX2 */
>  	{},
>  };
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
