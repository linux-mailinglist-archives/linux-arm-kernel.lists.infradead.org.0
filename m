Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F0C12C051
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 04:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8g6uPd+ha2w5A4NU0mSIxiwrApDjH5Ahhmn+9M2BAM=; b=S9MxdRRwFdWIDO
	vN8IzzRToEHr2mzTozy/Y/JXtqw/TEVl/Fx1xS7VS8Q5vJyxh/bfxqVbS76NwKvPqjARS8KHCfomV
	X3hGo3zD2tUo1famskvHjTroeQK6M7oEeAERFh0NaSXYgYu0YlvWHqwgJ3T20i6/oGE8E4jlSwQcC
	P+8Djo2zPB3dx8qekPt35fdaE4MhWe+vuGxUpglUl/utG7tax9/FVinYeOMWVowmy0h6cVugE/Hd4
	hBaIrTllohDhBuQ3it5hyEIlZvPYI2udYu/p31yLKdjNmUXkENdmEJVRmsNZ5fKX0dT3IuYuJ7tSp
	JJG8gi319EEZ6bRuATYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilPMn-0000Ep-O9; Sun, 29 Dec 2019 03:35:45 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilPMc-0000EQ-1j
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 03:35:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id k197so16444199pga.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 19:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mPy3u4+QpRgdQYQ9Mp1NkaSkxalaThVlLa9KXxTz7Ew=;
 b=QD9ypE87A8v3ue0tIqTrH58ucVhmQHzMSX98LP8WrAkrOFprag+vQmQtsvovWYRHOa
 Z46L9sDfdQTq9Pwwa7DJ+uLxTPQEhohIvBrVoXuJ/xHhx4OEZD/9qea6X3QcIq2Q8rEo
 1UGBgmYBrsXiO7d+Q14Zuyyt13FRsi31CxCSWdm+0hSTz6zBA0btMNBSgQmMjbx1KRCZ
 +gYKUqM4QPVamvcNsTl5Ojm7IIMe8iw5e4DlvfGqbeXQkomZD1/v7+McOUelPf3B9OGd
 qEVL4nWrf+kyMu9wc9W4nx6w3/2w3gUUz/HiYo5ndU+Wmw2nNS6qVAlPoDVqBfpeXwVQ
 kdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mPy3u4+QpRgdQYQ9Mp1NkaSkxalaThVlLa9KXxTz7Ew=;
 b=fYKA5BWEjPbpwKZ3z8p7ylQZTcLO9qOJYpjV3t0IsnvvDDWye2JPkst1zesSxIMRuU
 eNJK5bpe4mxswA5BGyv/Uwmtnpn7Id5+BOc6tkuajRmelInQacaa4SKWNKC8u0Z+qCI2
 maUUz7LYctwO4pbiZoEf9AzzbO3bMmuU5cwTnUCxff/Xzzi4L2AV6TjvuTP4VFMnB/sz
 8dVV0f0r/HMiI519xi9njrE4505xQafO6XXdW7E64FDyIwg35v0urWfjNc78JBc6UZqZ
 V2cgxnG/LJfOCPO8zrrvbq5Br6N3IxALsACxi8IUh0rkz2PRJlCm01YjWGkrp5lpCLsb
 VpJQ==
X-Gm-Message-State: APjAAAV4reSVtGI3tdm5vEB0E2Lrg99r3ACAB6hm5b0z0FgUfYv+6vCQ
 jU9vp7MOgqh+3pICGBgpz1nM3g==
X-Google-Smtp-Source: APXvYqw3kcXlDAF9TLI0e6b0J3kH+Y2RIgxToCoMfP0JnE5f7DAMHXdqG6gnSuPT9MTpjghI10BToQ==
X-Received: by 2002:a65:5788:: with SMTP id b8mr63501355pgr.324.1577590533167; 
 Sat, 28 Dec 2019 19:35:33 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id d22sm44458904pfo.187.2019.12.28.19.35.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 19:35:32 -0800 (PST)
Date: Sat, 28 Dec 2019 19:35:30 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V2 2/7] pinctrl: qcom: Add ipq6018 pinctrl driver
Message-ID: <20191229033530.GN3755841@builder>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
 <1576752109-24497-3-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576752109-24497-3-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_193534_132020_9E0651E5 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 19 Dec 02:41 PST 2019, Sricharan R wrote:
> diff --git a/drivers/pinctrl/qcom/pinctrl-ipq6018.c b/drivers/pinctrl/qcom/pinctrl-ipq6018.c
[..]
> +static const struct msm_function ipq6018_functions[] = {
[..]
> +	FUNCTION(qpic_pad),
> +	FUNCTION(qpic_pad0),
> +	FUNCTION(qpic_pad1),
> +	FUNCTION(qpic_pad2),
> +	FUNCTION(qpic_pad3),
> +	FUNCTION(qpic_pad4),
> +	FUNCTION(qpic_pad5),
> +	FUNCTION(qpic_pad6),
> +	FUNCTION(qpic_pad7),
> +	FUNCTION(qpic_pad8),

Shouldn't the qpic_padN entries be removed now? (Please double check the
rest as well)

[..]
> +
> +static const struct msm_pingroup ipq6018_groups[] = {
> +	PINGROUP(0, qpic_pad, wci20, qdss_traceclk_b, _, burn0, _, _, _, _),
> +	PINGROUP(1, qpic_pad, mac12, qdss_tracectl_b, _, burn1, _, _, _, _),
> +	PINGROUP(2, qpic_pad, wci20, qdss_tracedata_b, _, _, _, _, _, _),
> +	PINGROUP(3, qpic_pad, mac01, qdss_tracedata_b, _, _, _, _, _, _),
> +	PINGROUP(4, qpic_pad, mac01, qdss_tracedata_b, _, _, _, _, _, _),
> +	PINGROUP(5, qpic_pad, mac21, qdss_tracedata_b, _, _, _, _, _, _),
> +	PINGROUP(6, qpic_pad, mac21, qdss_tracedata_b, _, _, _, _, _, _),
> +	PINGROUP(7, qpic_pad, qdss_tracedata_b, _, _, _, _, _, _, _),
> +	PINGROUP(8, qpic_pad, qdss_tracedata_b, _, _, _, _, _, _, _),
> +	PINGROUP(9, qpic_pad, atest_char, cxc0, mac13, dbg_out, qdss_tracedata_b, _, _, _),
> +	PINGROUP(10, qpic_pad, qdss_tracedata_b, _, _, _, _, _, _, _),
> +	PINGROUP(11, qpic_pad, wci22, mac12, qdss_tracedata_b, _, _, _, _, _),
> +	PINGROUP(12, qpic_pad, qdss_tracedata_b, _, _, _, _, _, _, _),
> +	PINGROUP(13, qpic_pad, qdss_tracedata_b, _, _, _, _, _, _, _),
> +	PINGROUP(14, qpic_pad, qdss_tracedata_b, _, _, _, _, _, _, _),
> +	PINGROUP(15, qpic_pad, qdss_tracedata_b, _, _, _, _, _, _, _),
> +	PINGROUP(16, qpic_pad, cxc0, mac13, qdss_tracedata_b, _, _, _, _, _),
> +	PINGROUP(17, qpic_pad, qdss_tracedata_b, wci22, _, _, _, _, _, _),

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
