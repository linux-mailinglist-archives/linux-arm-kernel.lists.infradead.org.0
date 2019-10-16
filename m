Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2320D97B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+JDlnvVCcVBDTq4feRe35f0aDiCFcUx3kj4SspMlyo=; b=kR5s0xAYEKtWGD
	VbANhaQqQHCLO/SsXGA3dAkpsDmKA7w5TNjfZxIAvA8tVUQWhKi+fUH3RR4CHJSScrvY4AU7JVeDh
	PnT1z6QtPPvcxePRs0BqWRiX0QbYuhksbF6CtmbP8YCyyfcF3g03FWNMOIXZu1QdXPyRYHXYx2Y4B
	PF7mMHDuZ1ir/eKQPKhXUYcrPyVLFu+2bkNZm4sgCHZyDEAy5Peuacbjw2o8kt9reDCEfvf8IsXgW
	Gaa+Y0Bc5y9yy87lKgAY9Nfo4LlrhDo14aLYq0vKc2wgvsV9GnYb42DGV01ed3xqh9SaonhEejIZs
	8bmV6jvrO0YBogrWcf8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmOI-0007xq-1t; Wed, 16 Oct 2019 16:43:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmNw-0007tc-PC
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:42:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id u12so11508276pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=57uyxmoXhyIZG8+XPLz4fjpdkC+Q+fEOX17k+/hG6tY=;
 b=rUVvtmAdciiJfC7zc4iHMpw0uFh5wPbykASFgtkhhw4m6QvnfcyqH34IwbX3rt2paY
 S5eDisYcUokzkMN0ZlmKCeGbkDuF9ZpAO+PqcB9/zZacqIJvpbgiEQZKMVUEVyA5zNlz
 dkXXvQ867OpBmcb0Txd1GiCGy3r8/dK57xR4mNDDpRLHNaO0SM81tF4UH5eF5Kx8uQUY
 5E9cNIQMD0zJdPtVFt7+OEY2+ZJCDurQ07h3cRCzwpA59yudNtwCCW7htiobEkO5+sKy
 BY5woMUym4gpM5RN5h0C6g9T/oPCjR13uI5ktka4HojeQajPoJZHgLzDzzCLXmqZOtw9
 12jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=57uyxmoXhyIZG8+XPLz4fjpdkC+Q+fEOX17k+/hG6tY=;
 b=lhKAvtrUu3PC31zsFvskgy/83LGx69PFWgI8s4w99JEsPvE8QHHkTui2rCOrY97qu7
 +Odt/RAd7I/pvZZCrlvDVYBZQd29pg89/EzP8Cv28kZ5Mf3Skr2hLJMT+sVFzj91LCtT
 2DsrGLGveM+yaO/gdnr56nWIU6d0juhs5v8JfUL951X+KF4f4eRwW6mYL3ukaLz3i/+1
 RlctDu4A5kbBzKyjlIAapvjvlDhGvBEad9GJNaxw47UzshgRMv/5B+bzOzWFCOYrZxtv
 u5/rShf5KOBHrSCnnxLZmWqo8yH+s97FcpT35dtn0LuyfLNsyVKqF5kMCZ3PvuFKQEWq
 tuwA==
X-Gm-Message-State: APjAAAUUccMJn5r9Gx8Ygx8eKfrqS8MT5DhNDNd5shPlxYHfdHZPmOFH
 eaa33ttInFJ/yedxdLgUAZRmWQ==
X-Google-Smtp-Source: APXvYqzYGefqM+N97RnNolUGlVbbJgqvYENkUacnJagIFtdqHenQ0FP2dvlvfgAmmN8wCkoVChDPiQ==
X-Received: by 2002:a17:902:8505:: with SMTP id
 bj5mr6102750plb.31.1571244171732; 
 Wed, 16 Oct 2019 09:42:51 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id n23sm23363431pff.137.2019.10.16.09.42.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 09:42:51 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, amit.kucheria@linaro.org,
 rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org
Subject: Re: [PATCH v7 4/7] arm64: dts: meson: g12: Add minimal thermal zone
In-Reply-To: <20191004090114.30694-5-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
 <20191004090114.30694-5-glaroque@baylibre.com>
Date: Wed, 16 Oct 2019 09:42:50 -0700
Message-ID: <7hsgnsfxpx.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_094252_852140_9540AB06 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> Add minimal thermal zone for two temperature sensor
> One is located close to the DDR and the other one is
> located close to the PLLs (between the CPU and GPU)

nit: subject should be "arm64: dts: amlogic" (not meson).

I fixed it up when applying,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
