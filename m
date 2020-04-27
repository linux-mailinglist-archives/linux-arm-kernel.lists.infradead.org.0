Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844271BA578
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6fOqK/6wPlBM/j+XD0K/n1eX1agWA4vUS0u/3uAAVg=; b=q54bB+5llJY0M7
	3hszV/sTviIqG5nTDKJM58mty0L7wr0f2RMUR5u4QpbbiCX836vWXUFJwt+l/Y0XeietfCRtOsW0F
	o+rf+7Eu424IkQRbiDMDM0jPazcq1wFh9nG841pFwsrsjZjWLvRPmRqhhQAbEmSDQQb1rPwpcBQ8O
	B6S99twLcgBBhe9qloLBWdTxVT+oywV2QGes7I7j8BU4GEgWUKToOXYldxVGfxhyHHpRGybckhmDu
	tQyDtTnciX+5EjIzU7E7/oLWC6OXtnBiDJquCMEmhCSlJxCsGp3h6kyvpBReImFUTc9exflWVrgJS
	VZmcXvD0jKcT1SPM5nJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4Dq-00056D-SU; Mon, 27 Apr 2020 13:54:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4Dc-000547-Qf
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:54:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id g2so7028517plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 06:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WkPQMFO/KuaBqYk9Nypu1pA8BIWkzLoSV8j4Q+IbtAM=;
 b=mWLUMqts+QedHyQoQhdb0FCA64OqMJNyoKu8gmgUTGZ4nNlbJ2oAbBXRzypOSnHPUO
 6PKAre5WNsx64Hxwl/NNJh/GKsf1uP4nv7WoRHccxcmFoVeR0EI8mIKkzNA85F7o2dtM
 2DgOShqXtoy60ZJgg3YSTxiBQ/qwWaCbn9oJC1jP+j/Dyg8iaJv/Z5jZayfzZu/FBEK8
 1fjUO0JUXYEDDrLwcNL3IdgmRy+LDR4mjbiimHO5eKayhKMHn9/gpuA01BxVUkVh0Qgt
 EtJ7igozKgS3uSCgga+i+4Z3SkqbtOoyea2UhM1ZykOMHA/0nkXLlSp84vod5WZgXtWt
 a+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WkPQMFO/KuaBqYk9Nypu1pA8BIWkzLoSV8j4Q+IbtAM=;
 b=dj5GVdPVViW1OG7YwEAxtMJ5O0G9f+RJMPpwqnT9aruF6BhBQES8CAY/25S8+e3v93
 aGpCvlPeKGDKr6KrvHBZSnV3YmlGx66VSZ8tXhy4sshRtG/T1M1X04oL3fT/5kGDYEzI
 7g380Hk4/Cqm846sgjTEFsSHAmvAZCK8DKl53geNSVcT8xbe4QrjY0URsY23L+phMv/8
 R3NozWN+SaZ3fLpRQD6YYQpHDIzMBwJ12Ed7xEJwCZ3ff3MXyqyP+xKVaGPgZ8Gt/KfT
 GOvsQOvCKjdgYmZ3/MZrolaRU8On9t28McyYFKMhXCKsvRa2m/AmF+aqfYQ3Uyn1/kyz
 EM/w==
X-Gm-Message-State: AGi0PuYb3KnwuGMp/EE+DVnl5oIJClni3fGToRkgEMfrfFenPNnYnnZi
 1IJLBKZOHcm+gY78+2KcccQ=
X-Google-Smtp-Source: APiQypLW04Sx0ZwKYGFg2oMQHSnmLgpVId01PLU5pGKEhnjwHQnIJsaC9bUkvI5F4ZAx2Fcba3vb1A==
X-Received: by 2002:a17:902:7d85:: with SMTP id
 a5mr132628plm.106.1587995683444; 
 Mon, 27 Apr 2020 06:54:43 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id q2sm12689701pfl.174.2020.04.27.06.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 06:54:42 -0700 (PDT)
Date: Mon, 27 Apr 2020 06:54:41 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [PATCH] arm64: dts: fsl: add fsl, extts-fifo property for fman ptp
Message-ID: <20200427135441.GB26508@localhost>
References: <20200427035131.21109-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427035131.21109-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_065444_871015_3AB94285 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richardcochran[at]gmail.com]
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
Cc: Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:51:31AM +0800, Yangbo Lu wrote:
> The 1588 timer supports external trigger timestamp FIFO on
> FMan on QorIQ ARM platforms.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Acked-by: Richard Cochran <richardcochran@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
