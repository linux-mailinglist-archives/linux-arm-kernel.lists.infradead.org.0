Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C4B21045
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 23:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETRC6lHsVUkeBOwEq0cENsLDYriD1wYtAB3s+0nJO1A=; b=g7P0LmGAzEwvnQ
	7NPa3ztKL3Tuej2/cI6UaCA8dGXM7+AzOTEo/sBDBxXOyPwuKy9rjDcSZmrapCDCd0F3Ed9jJf9MG
	SbP40/ptK9NX3EUz/Szmge2F+x8PT/XKaZFDIB02A8VaOTzKy7QbSGwQnbOIwlyEwMsDoFfqT4xuM
	hVNQ1LCjbyXOOeMbMveodH8sBgVzj5+4kTJOrPMoE7X9aYYJ2xKAMmJtA6v5OVJOBE+jc74D38s8Q
	gWzLSanhGMjkIYYU7hQLZVmUxvZpL1SsWy+RAVswxlJ8mxuWe9kifERygYTHz79j+8eRmoDoaa+iT
	BKdtv1u+wGOSBRinxw+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROHW-00054p-Do; Thu, 16 May 2019 21:51:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROHO-000544-7W
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 21:51:11 +0000
Received: by mail-lj1-x243.google.com with SMTP id w1so4515288ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 14:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rQ486v7/+lFC+0C10/1HSU/dAUcUYwocGLqU5d/PNiE=;
 b=VZjhIAPa7wz0aagS0zRQq87ux8qNQnOd/eEqJ3whEmgJH9V3r2MCHmqkfSn6wkShgi
 blx8XQcNi/K2mQUkcBq3S/OjrcDOnWEAvhCjK2UFAEooDhnk9dSWCaSufQC/i+qU0usv
 YF3Fka6CWTe3GwACK6y8fuK89WpSwGsnHeGgp1MYMLMlwVN+A1/b4DxAR18H3NNDyacY
 WXJGtcBr4nhNEugSl/IzuI33lXhFS8pp3MYsPiV3drBVn5pN4kfsiJpomUc1jy/gFCCV
 KmtT9hAY7If0VQKCX3sjq+eCOpCZLJ9HdAGAgQUIBmJr3DuTNcS1o+IUlhrIaDm4Smwz
 kVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rQ486v7/+lFC+0C10/1HSU/dAUcUYwocGLqU5d/PNiE=;
 b=egkviwJ2W+EkRbsWO8LiD4tsNhQi8pqStSIQ5p+wsr5YY2JdyOVzmkcyq1jLlPcKgz
 hMsidx6wI1pKit5kI+pFbhepPs3STSkKaU8bWE1OnbZlyoKU6TjKc/7Td9Zpe/tfwmgG
 68x/Fx+iNluKA8fPkfz17p/5jgUQfMReGM81i9wUlNOznJx1dadWeWECnniGmR/MC4Ly
 df36sH4/c0W5ZZW57ctn8opfobpX6nyYmEvY8NRjd5AWsyGmFV/1QSZzfgmUWESY0iz3
 ptuPaW55V7KQRQ1ZSSn8iFsO201NwnoaDLKnL76vq2ZPAzQnJZQcdFePmWRnKxpp/QGL
 B2PA==
X-Gm-Message-State: APjAAAXcA9Mzy/yel6UN9JJUKYi6Z3KKjKi+cHQ9LYCz+9g2PTweQixl
 Fa81f70E4mpl6rgCs8MoU6j/rQ==
X-Google-Smtp-Source: APXvYqyoR03Ehfj3ojjApBgIzWWuU5NWZW4AT5OOLTz6COtQltQch4b5sqKTVODUFWGIgXoKEeSxzQ==
X-Received: by 2002:a2e:97cf:: with SMTP id m15mr9579164ljj.135.1558043468356; 
 Thu, 16 May 2019 14:51:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l76sm1171256lfe.77.2019.05.16.14.51.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 14:51:06 -0700 (PDT)
Date: Thu, 16 May 2019 14:43:41 -0700
From: Olof Johansson <olof@lixom.net>
To: Baolin Wang <baolin.wang@linaro.org>
Subject: Re: [PATCH] arm64: dts: sprd: Add clock properties for serial devices
Message-ID: <20190516214341.2qxtmg4turuuozkn@localhost>
References: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_145110_441925_BDD07603 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arm@kernel.org,
 arnd@arndb.de, zhang.lyra@gmail.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 10, 2019 at 03:22:50PM +0800, Baolin Wang wrote:
> We've introduced power management logics for the Spreadtrum serial
> controller by commit 062ec2774c8a ("serial: sprd: Add power management
> for the Spreadtrum serial controller"), thus add related clock properties
> to support this feature.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Applied to arm/late.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
