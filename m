Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54184120FFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7liUCkCtuwQnGahR0LO/CGtgzNmZmDqrADB4CPCMEC4=; b=sK3bpzEoUNkm+c
	FMuuM3eHvXvZtD1niqq2BGqWJAWcdwLalXI9u3c/efrl4WRbv9WahsBZeSWt+YuJNBP3wUy1qn7YY
	8VvD50NYcsFdYBEfI1dO+fVdcMkP7tQtq9Od0GTl2SNRdhvv8WPBh4hRnidPPfC9qrTF54/POB8kl
	fd1BoDG4puJq+WEQ0Kxnbggb3QWc6pQFgrEHH0CaQhHNN8P0ig9dfb4iCwHLZ1hR1FmVkQvNaiblz
	7uLbV3J7+Fnge6NkiwVkt861bkOOj5PVpzAt4zIApkMA6WqowkZi25rrvDmNVHNbzLAqQLBlLlqU2
	UBa+CxYdRJSJicRAfeWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtYT-0004Oc-12; Mon, 16 Dec 2019 16:49:09 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtYK-0004Nn-UY
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:49:02 +0000
Received: by mail-pg1-x531.google.com with SMTP id q127so4035676pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:to:from:cc:user-agent:date;
 bh=g0u6MYVXB1r8q7tLRy3ssmuddCpp1ygE+qNfEAR+tzs=;
 b=GkO3p/N3v9DaMjY7s3JJKqo9ZYMrAiq7NezoyL1jtHl6rflpR5LpxodzDPOS8dZeg5
 QtHOw6SaEFGm0JM8ZeTFp+c9CyZE3latVdmMaNlabZHZwEDIGKnqD4/f4WVZ92UEe6V0
 JLkYF7c7oqGbJsZ4js+mM2KbizqOYu/UwJGSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:to:from:cc
 :user-agent:date;
 bh=g0u6MYVXB1r8q7tLRy3ssmuddCpp1ygE+qNfEAR+tzs=;
 b=uKcxeMXTtv5b+8Le/UErUm9DlnyoeEr+jsIBZbNDgSWi/Zis+k0XmPgzNADL8JrRYX
 JsXZT9eIoEfXAGNd1A6WrjJdJA5+4PVe23LxbYqIUczdp788RL/hZdeua8K5KxrdgnQK
 sIKaMwuGdHetNvqhMcWcLZRQP+2+LmzPALKekQZClCUgYfu0aOuMTN3qsfKon8jTxJVw
 rv9GwknlseRyNOXCDInau0qdE1Qph80dPfSLb/k7y7YbCg1JzA3Vq7AcQDjM6kGuRu7y
 DhRThUe3LICohf2xsVS2AZ8BwYDiu5F5rADFwZYXehwDq1Kky4rgIpkCpLr/AYYMCmhI
 H/yQ==
X-Gm-Message-State: APjAAAWKSeyADR6AQ10u5McdKOyJ0ZtyAAukhgh7mOACqbvLK/vxk41z
 iGYywax2FmRhMieVbZFmCxeX/A==
X-Google-Smtp-Source: APXvYqxCcxTpMnkRTvpz5cLBjNYbPUx15IUg+xR6p8uH9udpwIzZK5vvkm1iTdzAgUHQrgxw+yGwzQ==
X-Received: by 2002:a65:66d7:: with SMTP id c23mr19824054pgw.40.1576514939270; 
 Mon, 16 Dec 2019 08:48:59 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id d24sm23769672pfq.75.2019.12.16.08.48.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 08:48:57 -0800 (PST)
Message-ID: <5df7b579.1c69fb81.c9187.3f3a@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20191213064934.4112-1-saiprakash.ranjan@codeaurora.org>
References: <20191213064934.4112-1-saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] watchdog: qcom: Use platform_get_irq_optional() for bark
 irq
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Mon, 16 Dec 2019 08:48:56 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_084901_008669_6C107C25 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2019-12-12 22:49:34)
> platform_get_irq() prints an error message when the interrupt
> is not available. So on platforms where bark interrupt is
> not specified, following error message is observed on SDM845.
> 
> [    2.975888] qcom_wdt 17980000.watchdog: IRQ index 0 not found
> 
> This is also seen on SC7180, SM8150 SoCs as well.
> Fix this by using platform_get_irq_optional() instead.
> 
> Fixes: 36375491a4395654 ("watchdog: qcom: support pre-timeout when the bark irq is available")
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
