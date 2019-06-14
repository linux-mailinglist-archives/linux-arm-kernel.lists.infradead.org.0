Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791D4598B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RFMjJaHL3pO3RIDz6xuJ08ezO3+6buykXjEcIaIUnBI=; b=dLthQE8yoVsqPStvNlM7hEzwb
	Hrj/3CVfcOW/LDKkIU36SMCUvn0tgkn1mIi+4R/HNAHZA8w3Z9fwcYehI0MlIuuainnIi0KC0qjcr
	EqVEF7Ggj+pOCT5wveiSJwmwyh8cag8S/e2OHc34zetT0idsbRFjtPFUghA8JvaUJMa7Qas7OibYu
	UoR7bNIZlkYxL02R0t4DikACbFsEKK5ma8fvzGzodN5VMC52FTsFm8OM4LUz6gRcvItG6UXSmlv62
	J5X6eiefpLsZEqKkxJujpkaj/q8tEydQRpkjBPzQPpXI0PI6bYa/vjBH5drxSdyW+3f7OWyJHBzS8
	dIgrhrGFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbivD-0001CU-Ex; Fri, 14 Jun 2019 09:54:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiud-0000qD-EI; Fri, 14 Jun 2019 09:54:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id x4so1837760wrt.6;
 Fri, 14 Jun 2019 02:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=LWEB8ckSGavXUOifK/FNIHz754vMT8jwdxRqtMwH6kE=;
 b=G7LRvmk3POU+NfRGqqYuCSJMz3UH106Tx4DzVHDT00eqoT1JMmhdt419m+q4PA4cWA
 GqS1td5Y02NnWmca3NBhGZ5RBdkUD+ftxMiA9ng1vLPGpejuSv9CL3XQd33bCsAaSHNJ
 GKYUb/ViSQxYFVPB3UYyAgTmuWyXk2zxoMZDwM40Xh6np86G664ZmIzHrfKP2ZdGc1/c
 /OeckQtPvyK2glURjFGggu9hCmnZqO5K8PgMK9VwNdO0QevYdQjgZ54kMy/kFwEgnDRJ
 6O95dLwZSw6adB/ygzgxQJ2XGUMzjxktFd5atTerYJWKce7h6hL1A7DcdxzcOwhgPg5U
 8Z4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=LWEB8ckSGavXUOifK/FNIHz754vMT8jwdxRqtMwH6kE=;
 b=HsAiL7mm05MfOqU0jqmTX4GeFcFI5MEcr21By6pqDvWoCNSDGnWc1Mh7/6wxYVphv/
 k8lteCjsMZJUmcqQFmfl5FXubHRx7bnlc01mNxWdB28qJ5mlnzJWojezpCALCVTNFSPK
 h3wE9xvJPsYpKNGQfOXhS3ei2IvoQBbBc9s2LyC3t5fetlQ5Qlx+jeMRwCprYWg6J7dG
 d4IVqH0+uZR8Qvo1EN9rwElw4qJ64yOkVfD6M5FP2FR1OMvUFtYiq44Wg80lamyJjucv
 HfnFyl8KpuiI08JlrSbcmmlGyPKuEigkGUWaKojaRr4pEXIs58x1BWfRt0n8EJcqs/cm
 VHxg==
X-Gm-Message-State: APjAAAX8fajFBCiLSuYHvTWc2HPIh7YpU4gc65WcH8PiOh9mKIHDfSCC
 gJYpmn0Qd0nxTEOxlAAguTs=
X-Google-Smtp-Source: APXvYqzB7aNgd0DaRCc0E3obAyX4lpX8BdOe5J7ACbuWSLX34+034VaK+l8Z/815LR4vBxwXv2kD4w==
X-Received: by 2002:adf:f3c7:: with SMTP id g7mr62795063wrp.133.1560506061675; 
 Fri, 14 Jun 2019 02:54:21 -0700 (PDT)
Received: from X555LD ([2a02:85f:51e:5d00:f1ab:2da6:d378:d0de])
 by smtp.gmail.com with ESMTPSA id h84sm3825923wmf.43.2019.06.14.02.54.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 02:54:21 -0700 (PDT)
Date: Fri, 14 Jun 2019 12:54:14 +0300
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: add clock for the watchdog pclk on
 rk3328
To: Heiko Stuebner <heiko@sntech.de>
Message-Id: <1560506054.1367.0@gmail.com>
In-Reply-To: <5657669.4RvfzeBcXs@phil>
References: <20190605235714.22432-1-papadakospan@gmail.com>
 <3485393.4UdOu2YNQE@phil> <1559821340.1384.0@gmail.com>
 <5657669.4RvfzeBcXs@phil>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_025423_533279_742BBD63 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 itdaniher@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Were you able yet to take a look at the clock-patches I Cc'ed you on
> and look at reworking your patch accrodingly?
> 
> 
> Thanks
> Heiko
> 
My time is limited due to exams, and I have no knowledge on how the clk 
stuff works, but I'll read up when I have the time. The patched you 
CCed me on is certainly helpful in this regard



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
