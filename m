Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40521640B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leFunJslr1LvuLJZp+u1WkRcD1CRs3hqjzwV37fyiKY=; b=IGyPoVUgZrSlsa
	I524AKp/PFT23o2OstchBXb7z4MmjbJ7uDLNnR1AYPGaUOAfFRbkyQO4HqypqjXkfefYbElPedSX5
	MXmOW40KqueTnuOOLSrzVU/QKH+0o4SYYRZMXWmYGSUi3q+mtWfqpzTLDlaetD3UVjxrbaf0Nrfl7
	+1JvMHpnbBL3X87l6lmIh7utBkAhHpbw6d1vgSz+XKqubAEUdwkGscGA/UwVaSFMBCykoxLFmuEKx
	HiI56rEL8FV+msT72cIvquJMkPmaHtcR/FKnN/JIKHpG8SOqxeJ9SJKpyB8/Zs0aTfAg4zcoSqCac
	zn3PnVcLP2KPEbipp/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Lvq-0004sE-82; Wed, 19 Feb 2020 09:46:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Lvi-0004rv-Js
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:46:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id p11so9329429plq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 01:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hDAG6JFVrPYskd8aHZ521nfnKHBDBTlAbBs86HhuEFE=;
 b=KsNJWYKGACwLVdmFRK6FuekU0fw/ONdIY3EQhDhueKkURN2D9wswtwzMPjwvewDFrP
 2U2cDASEErOnGZEqFeI02oP9NN330fDGBZDy3f07AeJ5632ruMO3yBCp+sDiXUPUwfk/
 qdQcMcSywuQS9Q7/oWKgbi3/TTermOqPxhCKv8xPZp758x/D9BD3jmnTIA7n1vFFeMIb
 n/P32WCP8bp3B0LTBj5rJrF6u1p7t53bFuBo8s2zM9vx5hL+83cv6TVM1zkur8tAIrY1
 Lg+zz3IWGal64zoo/MRjpswolmwwQUFrZsKNugpyPSMGIBiPvqRtUk3gH0laYcR9z6Gl
 BQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hDAG6JFVrPYskd8aHZ521nfnKHBDBTlAbBs86HhuEFE=;
 b=rl9fcqKYjCGNxYTZM/1lxO3eBpmaTC9Y9pYNPo/mC+9XAaMabnZZluYnKkbFbLYvnc
 6VIU63M80gko7AwEFQ1tGrRDbIT5yhz+LDMGmKtfGfiLAK3/dFen5y6E5sWPCf1RqRmq
 aWkxTvmrEYSR/c8NwkniVbsob5vKPrKmVL4k92LCCNiOCopggjbgL/xStKrUJYkvEu7y
 h38tjP3ZYm6JwbRFSReCM22YmQygXFMP0C8Q6LPzlvWzOHg1lNap6o+9irktEn3iFKlB
 FuUbbYGAgPLdzXdgrie6rlkE0qMPNb0tOFN4itypUp78QdW0CqT5oX1ctK4K9uEGpbCo
 SICA==
X-Gm-Message-State: APjAAAUj5IEV6nHVnWiEAEa4pPQMjHoc6pqf4aNJE/acXlzU2UF107SZ
 9NL3EcYoJ/a5p49nzR/uX3rMfA==
X-Google-Smtp-Source: APXvYqwFmN27fscSw0fvFXNy0A2cynMcRf7CbFFs9OltJHXQAydBfyTTQnxbuq0NQUpEXOyPLOhUwQ==
X-Received: by 2002:a17:902:59c9:: with SMTP id
 d9mr24824685plj.184.1582105565778; 
 Wed, 19 Feb 2020 01:46:05 -0800 (PST)
Received: from localhost ([223.226.55.170])
 by smtp.gmail.com with ESMTPSA id g10sm2182824pfo.166.2020.02.19.01.46.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Feb 2020 01:46:05 -0800 (PST)
Date: Wed, 19 Feb 2020 15:16:03 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Message-ID: <20200219094603.2yfat5xxyabunlja@vireshk-i7>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014606_651948_CCC09898 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-02-20, 15:59, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Platforms may need to implement platform specific get_intermediate and
> target_intermediate hooks.
> 
> Update cpufreq-dt driver's platform data to contain those for such
> platforms.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/cpufreq/cpufreq-dt.c | 4 ++++
>  drivers/cpufreq/cpufreq-dt.h | 4 ++++
>  2 files changed, 8 insertions(+)

Looks fine to me, please lemme know the patches you want me to apply
to the cpufreq tree.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
