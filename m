Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324401B8916
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 21:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWNpgrYwII8St4X1F+lPu1Oaxbb6MjN/VmiEGpRZsLI=; b=MQy35B2mPOrEhX
	cFZMGmfZndQ0FC+0C3cXjBSZZQxy52dSZ8r+AsALTR3betw3Us5mKIhpPq07TWY60sfHkA8Rt5aJ0
	IANEK/cXCs9vN8sLF2flZ1imiiMwROsyTJhBydgiMRDm2qdNTBDPijkD8gwwqFR2ul+4iXZVAycKN
	72jpZB02lIuxCZcNhcvo1Lr6GgL4DAdY06T/H75wVXgGSD6eYZy0hUj3kDB2+i2p7VyPJPc0k0Bnm
	8t6+Ijx1q6F07xPdKRnQ/V1enhXyj4WKOK6fffRYBm9ww1Kqb7qQ3vUSufW7CuoN21QCMkCL6Fy4k
	IzpVmoRRxpnc51jrQt2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQeP-0000Om-H0; Sat, 25 Apr 2020 19:39:45 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQeB-0000Lx-Fm
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 19:39:36 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a32so5402197pje.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Apr 2020 12:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=FFJ+RlIhSOPxhMwKLc97vVcR1rOxDF8GYeyH64M0ydo=;
 b=i3Lalq5cuGCVKoML246R4E8KH9Vsvt1oOUaMLmiW0f02n1iwTSO2C7ec3YfI6FkZY5
 dyC8mB7Y4nHzjjPkMlSt5hkzbzMJMeRAj9M3k2cZtyFEmLRfmaNs5b5z/Q3XkJgJNsIK
 WAVu/yAWl3WZ2xxyUxnFkKt7QWECEHLjbbvzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=FFJ+RlIhSOPxhMwKLc97vVcR1rOxDF8GYeyH64M0ydo=;
 b=rPHeApL0wdg5mehnnBTXCQdBjgviL4Hxt3voB3zZzx3ctV2Aj+EnRbQ4A5cHXPQN8G
 m/9WHUls27y/5nQ85RjdgSw4GEbdF0CFq+HWb5e+bhMJWLC90CHJYuvWgo8m+I6BZlo3
 aKvm7cPWascGzjL1n8XCjEVWXAVzgsX4oGYYgFEKWOorqguqLJMPEViHea+c+MVwI+2e
 FAjd3ZRY3vUgiT8VtF/DYYu16hXOzcjvi028hLI/1rzoqe2FHp3TI8qH/xoFen4rhwpJ
 RtX92WVbI7YJbhUdFX+ay/1J4PNcdWrP55J/dAavHHI+1FN686yvqhrws7tRHOMhlqL9
 u8Lw==
X-Gm-Message-State: AGi0PuYCDWgl1NG0bi8Cgj5TmwdlRihbco91AMF/pI7n79OLUgt+CxGt
 k2vHKqH94QoXMLIAWFC5ml4dqw==
X-Google-Smtp-Source: APiQypJjb7QoZatoPvZ0C5SA3OcumKCIMFSbn7THfXcy0NM0yccE/7t+zWNjac26pi33jCqWjxp58A==
X-Received: by 2002:a17:90a:d709:: with SMTP id
 y9mr14198065pju.50.1587843570681; 
 Sat, 25 Apr 2020 12:39:30 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id n16sm8679956pfq.61.2020.04.25.12.39.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 12:39:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200424111644.27970-1-saiprakash.ranjan@codeaurora.org>
References: <20200424111644.27970-1-saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Support ETMv4 power management
From: Stephen Boyd <swboyd@chromium.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, devicetree@vger.kernel.org
Date: Sat, 25 Apr 2020 12:39:29 -0700
Message-ID: <158784356931.117437.2821018841391441959@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_123931_519908_BD8B84B4 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-04-24 04:16:44)
> Now that deep idle states are properly supported on SC7180,
> we need to add "coresight-loses-context-with-cpu" property
> to avoid failure of trace session because of losing context
> on entering deep idle states.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
