Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF096101290
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 05:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2H/zIPeUp38/dPW0FMYoGfB9gxZckeQ7kSkPeG+Ias=; b=nkVbPjsjkpZZxY
	wrdg5q1NMYAQBmDGPVBEUANASgIrz3iWjpJF5iyXt/ttfXE/v00sU6YBZsxumIVNKJGQPF1WiWlvh
	1Yf1JeYuDN7WIXDFAwUybGEwTXQz5RRAn0o53zbK+yQ9VGUM6uNqGqy5WXKAqOe3IbiH5jPhPIhxG
	j9k5Ic7x9evO8hml3MH2v5szcQ5bkYqosfRnwCsnpRrqt7yjn97tJtZy6UE+KsYI2Xp/WqTFFtFkT
	zpjOAW8dobrqxBCWVnKGC9cyvhfUTLDXvDNTE3WqJ24ShIzjlv86HyR+7Uz8svewcMkeWBr+LBvdA
	Blc2ED58wxask8DZ46SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWvIY-00037A-T0; Tue, 19 Nov 2019 04:39:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWvIL-00036I-1w
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 04:39:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id d29so11044230plj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 20:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3Q2xgiO0SCUHCJ01fPdKFNn4jj9dQWkJKPBYAQQCb+M=;
 b=RaG20AKfRfRSNJs29D/cPmOTrEFYL4nPFHgmG5xo24MqBUzPA9NQEETVpH2uFb7Zrs
 OJOYq5t88Af765f3ykzYuaFi1qoYb68ULdaVnvAnmJShKgtwU/zLRNuFRaIuLJykgIRp
 YnzQaZLR17rSR9Aevo+/S+inPEJGDvxiyhlIsrlys7lMUWdBgraaOgjEDCwYnFMF8UGV
 INxfmosBpUAYqmKnb9zYkLLGa1NdIoy1g3EaVL7KWIMiUnAMM5D+OfMeG5PUdkW9DihT
 TsphKiY0fY3NdbTAsKjwwi9dhPriE7wXeLEcYv4nqqaM/qCdAk/xxLEhBsE35Tq5PTLL
 VsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3Q2xgiO0SCUHCJ01fPdKFNn4jj9dQWkJKPBYAQQCb+M=;
 b=YaLpKVS5kHkoPHs0+Vnj8IAx3s9BG6M2YZgRLjl8axoNIJ6TrHfXwqGeCew/Qs7KNN
 pYlGLz+ggmsdZIa4AEqNB6iWUsGYr+v2JedpBV+LGUdfQSWUyeVsorcqnrlk4VTu9oCF
 929rmJxfW7Lx4CL+tGBlbOfeESMd1tDaCSJKzUJVmblhPsLRFZ0sMmP+n4EbA+CaM4Ss
 mYRfWlK3AuVri3zOS312arfifCWohIRsDmuXVDAS/zErCJaZLNVgjhC/of8ZcmkE8jJs
 Nncx3GVrdnbBxamsp1rF9aa5fvAZe0O6YEEI4PhRmiBoVLYlEWLt0a8yeP7hgL/jY4SW
 bppw==
X-Gm-Message-State: APjAAAVB9SvXgqIXQTyL3lo1ZGwn1RoauT3bjo4icRCL7qtq8mfrKju+
 r/YxZIIfSXLi+Ughwn6eqPNabw==
X-Google-Smtp-Source: APXvYqzzV3JKKbYmesiphq/qNjx6W36HWDkmcjzcLqVtGtVM9zWe3dc/jdPtzPqDq4dUmntOc38riQ==
X-Received: by 2002:a17:902:ff14:: with SMTP id
 f20mr32149430plj.225.1574138355290; 
 Mon, 18 Nov 2019 20:39:15 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j7sm20638171pgl.38.2019.11.18.20.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 20:39:14 -0800 (PST)
Date: Mon, 18 Nov 2019 20:39:12 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v4] remoteproc: stm32: fix probe error case
Message-ID: <20191119043912.GT3108315@builder>
References: <1573812188-19842-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573812188-19842-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_203917_176411_7DAB04EC 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 15 Nov 02:03 PST 2019, Fabien Dessenne wrote:
> +
> +	return 0;
> +
> +err_probe:
> +	for (j = i - 1; j >= 0; j--)

It's idiomatic to just use 'i' itself here. But I applied this as is,
with Mathieu's t-b.

Thanks,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
