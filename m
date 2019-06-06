Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224D236A5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 05:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hdaj+xrpHK1iUgeNMbvVk32NeDXRTDbGa5Og2VtVCJY=; b=emjM9eFEwEdKwP
	1TUfl1/8ivlPc624mZ/09tTD7LxvGEF/JHJTQF/DPczDs59gIRdCzvEtXMselio8MHPTsCxyKBngo
	Uvoul8TzWTu5uuDh7U8gcQCsHX7G+qAKIDD1F+84KRQu+oPqqW5sXC17jaR2Y2dAXrtC87fEYmKRo
	gLlfY623F/d07WFHvvKXLSSozJE+BPI5pbz2YU5uwTy/ms/s7xe3MmkAlovGYziM2v+bESBHYqzb9
	p5XD6mfJkzGDI/A3mB+Y8ZqNS7gltatRqC8SzKPInkzVkL8f65r1LPr0JVjJzYNFi2txc1AZo7LFe
	vtvvOM2J3Byr6+rtveVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYilm-0002o7-7k; Thu, 06 Jun 2019 03:08:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYile-0002nl-NA
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 03:08:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id q17so552499pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 20:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=157Y1FSkEpgFHORp56rh1nI0WU8l5d95hEqCJnoZ1zQ=;
 b=S11yJqAQvNMNx/FLEr4GLL3lNC1xffvpUIhbLiWYBUpL9Hrn0RqPwY+PG/vnm5Dfm0
 SXXlfcidEPOgKIoLrxYaOeOP5S1gZu9hHtDOwcLg2OPDvjVnUIcnc8P4iT5694iOiNkH
 NyF3OcUXkW6G0JXJM40e8MGS3m/RnCugrTEUtAEOeUGwb6fahD/Gpsrha1/TZN/LbPb8
 1YLs6o9/3hFaSaho6fgLs++G09g38mvPzPK/X0XoGaWeCa0lm0CQkN8n4jN+obPv411s
 mu1w2VkfCo8L0wqb3t3NOZqgbw+13uRvrh23/k3/kqbGQHFOOttSC4/Uq8pTsxygSVSH
 EZ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=157Y1FSkEpgFHORp56rh1nI0WU8l5d95hEqCJnoZ1zQ=;
 b=tZ/PIdhN1sgiq01TjbkYaQq79iE0PU3CsvLe8QqlXGMrlsWl7HC2Re/VWO0SNeTXQp
 dnrlbE5JhwS0Xr1/yV1R8sGE3gWrWekKGig6Oajr6hZPGYzhecYbWa+hVW5hCxdZVa5z
 ++bTvBG2PmBrGT6zUGOZ6rblUNV8q9GumBqHOau9viwcU24dQtS/4i3pbDWsRK+MqIlX
 LkuJ4WUPwX1Ert93l8rE7bfY7X7yOq4LaFkvM55FTPansD+qGD5HjS2DGkEBHohRdCgg
 iyNEDOKOBQ3DA6mSXY0Sc3JtXQrSBuAnu0mgxZu2fIdm8zbqPk0jshrvGb+AhZ3Qnp46
 hlxg==
X-Gm-Message-State: APjAAAV+nm4UZCKMQ8djxRxBd87TOlS9gecZRKNDrZ+gICSom9GGKgQV
 X3vk6SnCUCyRkNPfe5JwVVIjUVzGvZw=
X-Google-Smtp-Source: APXvYqx8jN0DbcEzxR1c+CvAck59cwW4vwDnsu02/f7RDZiy8JeYL6Qeh0npBCnvbGQnn7ms24iGQA==
X-Received: by 2002:aa7:818b:: with SMTP id g11mr8973487pfi.207.1559790521317; 
 Wed, 05 Jun 2019 20:08:41 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id n37sm353110pjb.0.2019.06.05.20.08.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 20:08:40 -0700 (PDT)
Date: Thu, 6 Jun 2019 08:38:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 0/5] Add imx7d speed grading and higher OPPs
Message-ID: <20190606030838.l45zjkdl6uycp75j@vireshk-i7>
References: <cover.1559730963.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1559730963.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_200842_761607_9C6C04E9 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-06-19, 13:37, Leonard Crestez wrote:
> Changes since v1:
>  * Remove the match list from imx-cpufreq-dt
>  * Split arch and cpufreq changes
> Link to v1: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=124427
> 
> Leonard Crestez (5):
>   cpufreq: imx-cpufreq-dt: Remove global platform match list

Added following to this patch:

Suggested-by: Viresh Kumar <viresh.kumar@linaro.org>

>   cpufreq: Switch imx7d to imx-cpufreq-dt for speed grading

Applied the first two patches. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
