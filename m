Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B911BB951
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THn6eQCGFSDgEOeYdtbYogiYV8Prm6IZZcyi4R1DSS8=; b=B4uypgUIVl+2Nz
	WyhDl2lMdtG+ujvhjmseHc9OJCTs+nzznrwL2185lYPGeHoYp3rVuR7xIGS+xEfpFNTpkzPAL2PGW
	Ojek1eepEbZ9P64XWSNyobz7pbI/ho537Yxxojqy0nn1oZ9DNoh5j/cqNH4MilyKSfZpvE2/zN5jm
	FpWNCxPZU1cY0s0C/9HgMXqsFJHN53lqbOWnKMMHGpwY29ymZKARf0XY2leDcTfva3QkEV2/yN7A7
	454B+oDBqcYqfaAzYEOL+amKT/ebpG0dzGNJgSnx/offVmGUIgjb2YOrQqcKmCVybWWKGYNSVk4TP
	7puIZ4XVgve10D3vIukw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTM31-0007d6-KD; Tue, 28 Apr 2020 08:56:59 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTM2k-0007bX-F5
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:56:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id d3so2754863pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 01:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wlWsWgzvjaY6Zm713YqzHXb7hr0bB1APBMwSRZ1R5jQ=;
 b=x9bXsXHqaZwzQh11fgkLu9FwrsX7MONN5jJgeHm5EGQz3imOH1hWREYUBEmY/8LhEs
 paVGxCfQASR13jlekWOmNiE/5ETm4L0wemAzcCxWQdPF8MEekG31DnWCniZ5y8tTZNo5
 Jjagg3er6eiTO97t9DMXhwrWbn84zjQCivHYbc5HGj8owg0nqMRKmUC+0D5edfgHxqiz
 Ad1h4ntdiHG9ZoeoQWAw/KwCbMyPVKKOraZwH6pd2Oooay0HJktN11ASNkZjrV3AKhMY
 XVPIm+B7w844ZulwJFCmp8gAx6a2bUpiq3A+kVh+NsGnFeSBlzazWSjUSB9o7Ny+yo1B
 F1Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wlWsWgzvjaY6Zm713YqzHXb7hr0bB1APBMwSRZ1R5jQ=;
 b=jzV6yhcBsaGm56RH02UaOtQSOxuS5NrXMhk3PsMfv8LIhU98QvHsmnxERmPKHbbxdR
 RKvipQsWwO8sBE39c8K1ar7ZAl6f+lRUZbDe9ETMY8EtnfPkZm8Bqs/TlQVL7nodG3px
 W5+Se+TYdrN2hFHHXcZJH8wY6FlYVnw36jB0pBLZhmQxYRQhi+nd0W4q0Ci17EddX5+K
 YD9qUDXgy5Fq1mIUrajD+hysvuqAekbfH7SotvIOyP6UzMkS5XhfaHhXhpw/AUH49SI3
 n3ng1sBaBCezfINV9/T8MGKKCw/WHDFOVoH7ydBEYhn35KXDjI9uMj/XnN8slr7r6p8C
 /tvw==
X-Gm-Message-State: AGi0Pubfxc40L9Fm/98l32TfHcNUTOaCKslO50y1l8X62xVLzqnObzhd
 FP4323eT/WOyyu6bUHl4INjaqg==
X-Google-Smtp-Source: APiQypLfHyrNiZidn8JIOhptq3liNhjWyq1CmeTN5XT8QBCqjEeYVZJ6n/4C5fL/Y8PZ3RJyC65LBw==
X-Received: by 2002:a63:63c1:: with SMTP id
 x184mr12378474pgb.116.1588064201941; 
 Tue, 28 Apr 2020 01:56:41 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id g22sm1498422pju.21.2020.04.28.01.56.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 01:56:41 -0700 (PDT)
Date: Tue, 28 Apr 2020 14:26:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2] cpufreq: imx-cpufreq-dt: support i.MX7ULP
Message-ID: <20200428085639.6kt6qxxu44omajug@vireshk-i7>
References: <1588058460-11105-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588058460-11105-1-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_015642_552518_68698E65 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson.Huang@nxp.com, linux-pm@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28-04-20, 15:21, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX7ULP's ARM core clock design is totally different compared
> with i.MX7D/8M SoCs which supported by imx-cpufreq-dt. It needs
> get_intermediate and target_intermedate to configure clk MUX ready,
> before let OPP configure ARM core clk.
>                                           |---FIRC
>      |------RUN---...---SCS(MUX2) --------|
> ARM --(MUX1)                              |---SPLL_PFD0(CLK_SET_RATE_GATE)
>      |------HSRUN--...--HSRUN_SCS(MUX3)---|
>                                           |---SRIC
> 
> FIRC is step clk, SPLL_PFD0 is the normal clk driving ARM core.
> MUX2 and MUX3 share same inputs. So if MUX2/MUX3 both sources from
> SPLL_PFD0, both MUXes will lose input when configure SPLL_PFD0.
> So the target_intermediate will configure MUX2/MUX3 to FIRC, to avoid
> ARM core lose clk when configure SPLL_PFD0.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>  Fix boot break. Tested on i.MX8MN DDR4 EVK.

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
