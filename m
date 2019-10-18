Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC394DCE73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vaSNPOKUjiJXYHAVferuQcNfGzJobxu0rryJ1lXdIhE=; b=JtDgiYaFpDwJWN
	SC/HUA8EMjdSXTdavzh1JToPKuBZ2wgu+7Q9gxx7eDwWw4SEkWKUgiz1Zo2diAZ7jl/qsTZZ8VvC3
	giZQg/BV7UHbGGLtDKuHejZo6WddPl/+hIUb3SLdAnO5McihTZas00hP2w3sn9zii/C6KIiTMiK2S
	UoaJdOJCtWTledbfrgtWc/TXgzPvCuOWpUmnH8vhXuLTnP1oL4nLbd9aOaDB6Xy1uD/s1TKgBB39P
	L+NLeJeXlozWNttCkpRHEjq7j8GzO5ydN49d4qrKOD40A+FWWJC8RgXmNx01xfMpkRVh6rDRwggGk
	8ShP7lyMgOv7buf1L4zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXAz-0004MG-DJ; Fri, 18 Oct 2019 18:40:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXAn-0004Lv-Dq
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:40:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id v4so4401179pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E0Nr+xgvo/HGPyIRgeBTMe73qDbXu0iO1es6rYh3atw=;
 b=Bf5mqpce+ifo+PJO0O/SZ7JgDewHLwuztM3akSVpq1Vran9Cwo7TXbaD18j+XelfCz
 /vH1vTG4DsHYGzitLUHuNsDcjMGHoowXtcrHus+0aTCVda86N8BYRjPe84ybpLvopGC1
 0bTmUK8pxbRiyO3f67IAHOa+e0fYPtCyC7XEnyHkSQm3O7ozpLeaMNJfOVqLo2/esk0i
 gH1xIU1LRpcgoGHqQmw81kZNn9sjhBlsjMsm//1QPwir6pjOAljIfplB1CDZo9jr8Wfi
 /X/MoZPaw01qrVsPPGIVn+2X6PlTzeR/z7s8O+F+XeNJQDjw2jzpdFXHBFVA854YXxWL
 t7og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E0Nr+xgvo/HGPyIRgeBTMe73qDbXu0iO1es6rYh3atw=;
 b=pPo7PZ5LrlSftNv6/ygLyU1Wr9YPpBqArFcEkA9X6us2+fiS+jxoxFWt/FU79/IJNy
 DgVvHCNWZSQaMjcZh2FD1IQ8fNPSuVMxdl+ylca1Nqr2/K/K36ngAlrG7SfdRdPkaOQ7
 2Kkh0L4F6QL7AAEZOj7FO59pFmTkNfy2fWcHq2LhmYd/atxKFdrVAngU3gk8PPdNS981
 rCoxpNvESw7XnYQCFV8Hr229UEHJ2CQV+D9gl0SKFf/QtA5u6Ff1EK+KXjEcVnVZ+Gzr
 k0fs1eVlYs3TlAuVALA+wX4/FiLmjG9ZPOvi6UNg7YfI6hbO3mU57Mv1XAhfGnl5N8k2
 zZzQ==
X-Gm-Message-State: APjAAAVX4kDUb/DSDfUuxmYQGKqDZ76y6kisxd6n7NOUG3V6GAaOyR0D
 nZJV1rmaSSwNvWGpdTaqHao=
X-Google-Smtp-Source: APXvYqxZXck+TqDk8p3s1SMIsgJls7MRurLbHvbPWJuC+WsBJrXRQkFb0GC5zMWshR4Y7Y8BVTdeWQ==
X-Received: by 2002:a63:155e:: with SMTP id 30mr12136523pgv.204.1571424024619; 
 Fri, 18 Oct 2019 11:40:24 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id w25sm6570261pfi.60.2019.10.18.11.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 11:40:23 -0700 (PDT)
Date: Fri, 18 Oct 2019 11:40:21 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 27/46] input: touchscreen: mainstone: fix pxa2xx+pxa3xx
 configuration
Message-ID: <20191018184021.GN35946@dtor-ws>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-27-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018154201.1276638-27-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_114025_469542_52408495 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 linux-input@vger.kernel.org, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 05:41:42PM +0200, Arnd Bergmann wrote:
> There are two different ways of flushing the ac97 queue
> in this driver, selected by a compile time option.
> 
> Change this to a runtime selection to make it work when both
> are enabled.
> 
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: linux-input@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
