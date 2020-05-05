Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686BA1C5992
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAoexy00yCfmPhzdORigm+fVmRSH7iTKFu0p5PcODxs=; b=dV9rLQXp5V3moa
	3INkD5eumVUAE8NnJeE3hMN6apjtkCzDiu9iFnNgt/+V9qm0k97CpTQHW1DMI2fy22zycHwdt4rvs
	Vj11Ap9Sk8ZyPMsVvjPyeQUO84UC1hFy13nvr/D+CyVWOqJkcQMiHNg9+6WfdMKtYOdLauuvbsCSJ
	dWf6U71l7N1QDoYQZ7TRtuzsceuTSwAu57MX5G7sGtUZfAHedoKllGui9DlFEMqiQ3AwfvvEkPgjO
	TPPWW3dPwxjkSDFEd7qyKCBbO7R0wbWqznczRyx3EbqXwDp3yJhGOEbtv1A1+cyn/wtAbx/HknS+s
	MZclFhRZHZfkILTx++qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyad-0004ZW-15; Tue, 05 May 2020 14:30:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyaV-0004Yx-AA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:30:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id w65so938849pfc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/8ydx1OQ+D7IiH04ZB0o6wh3QFLRJGOF1BFo03aMjE0=;
 b=Vz5o8n1cIrMmoGP44Q46Zmp0HCKTGVL6iSF8j/jpP+jsAwG2FzRJOfqClcI3JFfmIL
 VVD5IleJMQZXj13SdtF2r6cI0s13BqDa5RMBeC/I162mPJrW54BKbV9HSfCLMcDexZij
 LeTo1mFhwp6asz6sKuuLUX8UP5WPTN6N6PkU3EFJkGN98n0Gi+xTTKLopwxSdxr+vOKE
 HxBhiq8nV6SAvixOSrpMVtSDIaWDat6asa/2G7DxMbBy745Rv0Ccvfvgg8BbrPhKOLh7
 OpPX+31VkVkC/LVUqL+18lYlS13egiSbwNvHYLzf6mYkRTlATOOT4keTyrvbgMmIQaDc
 zHFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/8ydx1OQ+D7IiH04ZB0o6wh3QFLRJGOF1BFo03aMjE0=;
 b=RtLjA14JADGjd/MOHZacNSSWoHJdDN7ArXBqCu6/CeuTebvAMp8HCb6hQAEg9Xk60G
 5rneAE40GlPJEJDLD6qqYst/CSyabDppbelEPfToVt1MMkQKQoKpX+VWz6iiQ1zoEzL4
 Tg0AYcgP6qbYb45RBscU2j/c7pexTiydq/66TRYhfTaRm8ASKkj/Siekwtw9xU32qVho
 1CkMTXuIduRggjbsRzBIj6fBb5F077KOdmw5PuTUbuQCqeqHbXL+2Em1QWFDXLqnkvhq
 ndj7Ap7i01F7dnu9vEDjR0SzDbNCxLNnKqkwF91oK0JKd6kU/ASAw19kDcSnfHDtHaUr
 2WIA==
X-Gm-Message-State: AGi0PuZBM0RDC1wianMB7llF0F5IFavdYuGIn15pAIXQ/Fan9yfVAOtG
 2BKGAZUDIQ7kDAwXs6gCfBuJyabp
X-Google-Smtp-Source: APiQypJ9VDBm38O+rpfRbbRf4g5lKVbtUGdAU5GjiMUuycn6ou/4sv+IOjnuV2xTcLQTRwBKy1xcWQ==
X-Received: by 2002:a62:6385:: with SMTP id x127mr3582714pfb.276.1588689022537; 
 Tue, 05 May 2020 07:30:22 -0700 (PDT)
Received: from localhost ([49.207.51.154])
 by smtp.gmail.com with ESMTPSA id j2sm2304373pfb.73.2020.05.05.07.30.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 05 May 2020 07:30:19 -0700 (PDT)
Date: Tue, 5 May 2020 20:00:17 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap1: fix irq setup
Message-ID: <20200505143017.GA5263@afzalpc>
References: <20200505141400.767312-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505141400.767312-1-arnd@arndb.de>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_073024_391285_BABC6CFF 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, May 05, 2020 at 04:13:48PM +0200, Arnd Bergmann wrote:

> A recent cleanup introduced a bug on any omap1 machine that has
> no wakeup IRQ, i.e. omap15xx:

> Move this code into a separate function to deal with it cleanly.
> 
> Fixes: b75ca5217743 ("ARM: OMAP: replace setup_irq() by request_irq()")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Sorry for the mistake and thanks for the fix,

Acked-by: afzal mohammed <afzal.mohd.ma@gmail.com>

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
