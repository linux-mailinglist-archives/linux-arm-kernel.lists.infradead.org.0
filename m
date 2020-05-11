Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FE31CE498
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h777hjayqdipm/dEJ97KHQ9AyM//6PnTLgDP4K96KNo=; b=spDh7wvJ6YxS15
	Nd5zwc9A2LAXLRNHJnIeOQFfNCMXU9uIHQPYjAez3E3Dk2+C0KWbU2Md4fTyHZ0ZiSsghvMPsGpwd
	MOLk++QGxToOp6iSK96YxQQ8HPf4FvLAbUzPqpZYnUMobJ1Siq/d40nwMscijAn2WwB26RUwSOgK1
	pnKFfkCKR4E61AujU2N6MKAXR8dD4s1cWGtxHO50Mn78k9nwsY1ADVSeNlP7U8IeY5sOpx5EqDLKe
	03uK69x8qgwa4+YE/NvPLnUgwvewjNMOiS3EKQDVCHUJyhHodx2baX6Alo8FwFmbrtXMGJAdhBZKl
	/qtfO46u2yNacppzQgNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYEEq-0002iu-Od; Mon, 11 May 2020 19:37:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYEEi-0002i1-Q4
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 19:37:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id k19so4345300pll.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 12:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=4+TfwVXKgl+kCzrXzLvbtXwZoeSbQHCRrZFbCPATzF0=;
 b=B3Fuj2xS9vF2SEGI6Xmh49i0Ps/UE5wXP9tUU9qj2fDX2G7Lxv+YRKSOPuyDvlddDv
 ETcNZUmUS6KMOMSzB6bUc05QWaHt7YMuedWyW3+xvmAgD7PeLLqzn6wklbmQDOlW4pv8
 EvawUg2xIJvv+bBu0oGoC582VWszan8PBlTCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=4+TfwVXKgl+kCzrXzLvbtXwZoeSbQHCRrZFbCPATzF0=;
 b=M6A4vV8fa9GyZKOIi6t5WTvc4QaDqGyuIfUkcqPUgneZQgmLB0ZKJqB9d2mcx4sBQz
 pJ29ddnPZYZC0gqoI9u9wElSmz8ryvvKqvVy2d2envc5WDo2aZ5Dc5SVYzmIbDGq7yF9
 W0HIqdgQrFGkSIcKVSu5iQjtqCCvwbk9oIADLIExUPlWUm2aVnc9+HP8Hlg984uxFoGQ
 2XpdVh1L6YbejuxzuplEPK1X5HgdFW389SsKc7pDRbD6fbyRJDqJrj3DesBeu56JmZj3
 CHS29xTle8ClhmYe1UUeOcQ+b+StUTR/FBVT3h8bKL+VQ+Bfc8pDpUy8PHOcyc24kxnI
 zf+w==
X-Gm-Message-State: AGi0PubxYRZjPlTL9z5OB/DvdgaXFfgxlSdx0aEtJfeLmDDZ2OFJvN/W
 +zlGW+FZwc7wZ/nRtW15mIvKunsmUBk=
X-Google-Smtp-Source: APiQypIcUFafUBeCy0rKTAZwm5qMdMe4CvAczlQJ0wpJxs6R6jWIuAB1kzwSF1szCKdbLPDVD2RDyA==
X-Received: by 2002:a17:902:8688:: with SMTP id
 g8mr17323717plo.268.1589225831184; 
 Mon, 11 May 2020 12:37:11 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id cv21sm11083259pjb.23.2020.05.11.12.37.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 12:37:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200511175532.25874-1-sibis@codeaurora.org>
References: <20200511175532.25874-1-sibis@codeaurora.org>
Subject: Re: [PATCH v6] iommu/arm-smmu-qcom: Request direct mapping for modem
 device
From: Stephen Boyd <swboyd@chromium.org>
To: Sibi Sankar <sibis@codeaurora.org>, joro@8bytes.org, robin.murphy@arm.com,
 will@kernel.org
Date: Mon, 11 May 2020 12:37:09 -0700
Message-ID: <158922582972.26370.14084228362776489859@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_123712_864901_C2694223 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-msm@vger.kernel.org, dianders@chromium.org, evgreen@chromium.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 mka@chromium.org, Sibi Sankar <sibis@codeaurora.org>,
 bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sibi Sankar (2020-05-11 10:55:32)
> The modem remote processor has two access paths to DDR. One path is
> directly connected to DDR and another path goes through an SMMU. The
> SMMU path is configured to be a direct mapping because it's used by
> various peripherals in the modem subsystem. Typically this direct
> mapping is configured statically at EL2 by QHEE (Qualcomm's Hypervisor
> Execution Environment) before the kernel is entered.
> 
> In certain firmware configuration, especially when the kernel is already
> in full control of the SMMU, defer programming the modem SIDs to the
> kernel. Let's add compatibles here so that we can have the kernel
> program the SIDs for the modem in these cases.
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
