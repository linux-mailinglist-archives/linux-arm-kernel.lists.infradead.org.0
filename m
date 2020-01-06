Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4388130DA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 07:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V3CA7AuG8n5MX0bIqfYQGWQaDG1zIgEBy86u+vLIDs=; b=qOp0nrCPWtbtKI
	wwyyDdBpi7MW4HqjiBMFsZ+uC+nPgLV1uzDu6tde10ylvWzouC/eFhVKpYx54dyDDxQ52CSDFz4fz
	x6StUYoT9234GzUcM/7pJT9Djz3zTX3Z6s+zU07XLI09vEzaUSNZ/Oh/EzrtFjSiyHNfp9WFJ/u5n
	dmGD6gyuPxbWVkLdsqEUeTRxacxSJBF8N/h5YFbyrYGDy3zTZKRUYxMQ8DH0zMDM/C1CXQ2IvUGb5
	vdHFJSG/AadougjKJ1Q1rRuHAXTxKM0MjTtvzkbq6jhye1jLRA7WLSqo+883tOIUqFJ35PUq1q8Fy
	R1r6bkkIyrbQ00gcnfVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioM87-0001Y4-Ix; Mon, 06 Jan 2020 06:44:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioM7z-0001XJ-0Q
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 06:44:40 +0000
Received: by mail-pl1-x643.google.com with SMTP id b22so21474662pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 22:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EtTkEMlum47Eo5QGpV+9ONHr5+Y1zR1ZsS8D7gLSzu8=;
 b=yO2AwmQ+Q8RgVsCI8cdNTM8ykEE1L0NA2W2MKMAFbiZ+Z3VwGZIIU64YA+C/mAVeMk
 I3e3M6YzZCKziiO7ZSh0OUToMQgZNSAd3Vhz72GBsvy+qNH3v7hT5JnKQuOAgKO/+N1l
 cQ5J4J4xnyx0kYKeEc4gV1eHB3+hi2lKxxSdu1GaBqnFcaFmaKNtNPwvpoiWhrMewj9v
 LqTAyFabvrmIQvYz8S7ttjFbADCVUHaKL7jKs2QXnbHf4+szVm9iRj3v8VB6QyJhFcAO
 BegkOjRecBccj2XDUW0XAsgTvBkeikV1Ii5NCmAbkxefD0/8JVRPDtwwN8FT1kUnP9N5
 kJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EtTkEMlum47Eo5QGpV+9ONHr5+Y1zR1ZsS8D7gLSzu8=;
 b=pgfA0w48IYS/Adc1CkikgKxww4DSp7KxSqgQNR8zQOg3JTrj4fKb1VYlaRB/oqh+NU
 J/+k/aiVQdreju9LFIKGAFtcKspmvtG0fZKVEWuHWj+EU/7MI00U4JJyVi+MMNAZf/Ts
 xh76Uexo/9ygbQjXvmpZOPJwoMvtfnvKUmwMJk0nOQgGvHMvPeq/J3zP55fCQZffhSOK
 wbfBtY+s3IZm4P4inVtF3DgSzD7/y7o5Cgqf6xDGcQeqcLzbDTazPR4+F4b7zoMUGutv
 n9fvp2vE1a5xX+o2ylvmyA1dIAjmBE81yU9WKDKfC0OxBzFz6ADl3hd/Xq2X1X6ZJ91B
 Qpmw==
X-Gm-Message-State: APjAAAUQKAL28JXbx2DnZHbs5fDwAj/jlZDWxwUd7I/7yfobZJsAdQuK
 IbKNXV1C2AZXj25HAv2wkcunGA==
X-Google-Smtp-Source: APXvYqzWI+lJf+c6E2JQwLAcXgFQCe17ew2SqYD91/pThAY1j0/MUPGl/r5pUEAFSVMR4ldm12hbvA==
X-Received: by 2002:a17:902:8685:: with SMTP id
 g5mr106362163plo.5.1578293077952; 
 Sun, 05 Jan 2020 22:44:37 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id k3sm73183955pgc.3.2020.01.05.22.44.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 22:44:37 -0800 (PST)
Date: Mon, 6 Jan 2020 12:14:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] cpufreq: Use imx-cpufreq-dt for i.MX8MP's speed
 grading
Message-ID: <20200106064434.y6lgh6nekiomt6wv@vireshk-i7>
References: <1577343167-16376-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577343167-16376-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_224439_183901_4C36B31F 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26-12-19, 14:52, Anson Huang wrote:
> Add i.MX8MP to blacklist, so that imx-cpufreq-dt driver can handle
> speed grading bits just like other i.MX8M SoCs.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index f1d170d..a2e5f3a 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -109,6 +109,7 @@ static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "fsl,imx8mq", },
>  	{ .compatible = "fsl,imx8mm", },
>  	{ .compatible = "fsl,imx8mn", },
> +	{ .compatible = "fsl,imx8mp", },
>  
>  	{ .compatible = "marvell,armadaxp", },

Applied both (after minor formatting fixes). Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
