Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 615E61BE617
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1f2EW3VGfXIebQFqeqi2hDJmCpTg7FDGvmATrf3Lnk=; b=V7OXjkZlM02Sa5
	f3ZZcB1Se9FaXd3MHYKfFNFXJcOaQCDgOVDTtZTCPy9f9cGcmezwPteVW0ZefPkaf9GQAXxeSPaXS
	5cKP8aj3i8i+BfnqRk1xCjrSVBHbYlWP/4ZoWfsMUuGt45hg8sAgpWDimRHblXjiAWwqyU/ZZRcRe
	pgrjzHijCrZ97LAnSX5Emf96pogj6rzlXvpOe4sQB0o4rLMsi8mn9eu3J2Nu1UpuJJeX8yyKOWjY7
	ezvfjliEwqCsl/hKIC1tXYQBFXVtHKbMS0m8YLkaJWxj85x+ekPO9h+PqXDHMsEapxIuFEKxa5VEq
	NNYwGxGszws0lpF7aGQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrHK-0000D5-8K; Wed, 29 Apr 2020 18:17:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrH7-0000Bd-Cy
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:17:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so3710365wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=6lfBNlbD4T5zHjO+6zb4aZNCWH8fCBIeJ2zjUEDU5Bc=;
 b=FKjVRVJHicGYD5WTdJMpWpXGtXFSDFjc3LSxc/83GGZ8OWLBuAvH48kbmhFmH5ZKHB
 d6KbAlikjeM2P79sOAnW/zi0L2TjWf6Cr6J/FSc9jNiv/XGitGeOwKbgrCuHv9ganP1U
 /fZeIlvVbQ1LF9LRihu8SJyJ4OHY0kVwWrIMT4nC0afpeRcj4PspcxUtSdELtnTvVhRv
 5rFC1BrK19UiqlmhPKi8ZsKVsvwJC4YuRI2YvtiSDgPHSiH0Qz01kzhtgLmpHjiY2U1K
 +LdAafAP9WKp1Z4p9nowV648/ClsicXciqHrLDPmj4I2kWcm5QXnh+y7IOgSx9nDF1lw
 AWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=6lfBNlbD4T5zHjO+6zb4aZNCWH8fCBIeJ2zjUEDU5Bc=;
 b=AKEsSKKlO1OYZse4eF86EnKwdjcSlWqui4IVr0uisyLlNDbvovr7SgaB+t3Nnu28u7
 OJVIjiotm6yk0CcW18rH84FUYHlO5wEst20srxpe9/z9Lh2dxbghUDHIgwFpJSeTlHEm
 H7ZnH+zkNspMa9rG/35rpU7bfcwkromQgb/PV/4zBVqAgNp0ghSEi1AwSO4qBWXricOe
 w0SblqjHFwJk+kDfHNSivWbURteY2DsKD/ccfV2gftCTUn8rQMCXCIH6GAhLHfxr1PJP
 WD9bFOKwFvUufUn6voAdmkUNhPLjmJ9IyWul4CEdRvMu4ElQn5hUm13jqvB/ire9fHQq
 e28A==
X-Gm-Message-State: AGi0PuZ8rUUXLzixoarM+dLwhDew4sV6mclDX0yCEcTdIILR9TJ8eRNH
 fuWJiZ6okd93XHtpd1PxcFnGgA==
X-Google-Smtp-Source: APiQypKmIw7W+i+Z4WSURtf6yTrOuBc3eZpc5F2oz+HJ9/6IIKwwniMHrNOG570XslOxNrE5vDfyfA==
X-Received: by 2002:a5d:5081:: with SMTP id a1mr44188891wrt.81.1588184255519; 
 Wed, 29 Apr 2020 11:17:35 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id a24sm8596897wmb.24.2020.04.29.11.17.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 11:17:34 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, kishon@ti.com, balbi@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: Re: [PATCH v2 10/14] arm64: dts: amlogic: use the new USB control
 driver for GXL and GXM
In-Reply-To: <20200326134507.4808-11-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
 <20200326134507.4808-11-narmstrong@baylibre.com>
Date: Wed, 29 Apr 2020 11:17:31 -0700
Message-ID: <7hr1w6kvgk.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_111737_506919_F591AB05 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
> Add the correcly architectured USB Glue node and adapt all the Amlogic
> GXL and GXM board to the new organization.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.8,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
