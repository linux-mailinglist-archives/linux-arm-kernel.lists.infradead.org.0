Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC2B1A1704
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 22:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVLHl/UOnyit+iOmMSNHgcWNrTnkF4EPCWYj6c6Y/hQ=; b=tu+sv2q3RIVB2P
	mtu2UW7dtT7vlA0GyUsbCQEoChZ5fIaOmmFXfxk+buCXs8KdhIyD3VQSLuMFc36sBHMdjB4fTMksL
	cVlKz4FGHQ7qGRbQG2aKVFXdQ9HDnjNtNSmAC0jJSd47cmFnzw6xXDYsGHpZz3Z32+j0VOhX0fdND
	wrCvo9YInySOVF9lcQYwaEVeropzweQQ5Gc/5dBOz4hsKud5eRIyvKoEGrMP9bLLXggKWRnqwNUrq
	BQv/cHXeqQypCABeyDiaAGMA9P4rM0WKUKVfi2sqKGNVFA4+nOMNJn+jiRgkavl3Ik0JaBGLOi2ib
	TcHsERp8GPjs8OLDIByQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvAn-0003yl-5S; Tue, 07 Apr 2020 20:50:17 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvAX-0003AR-R7
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 20:50:03 +0000
Received: by mail-pj1-x1042.google.com with SMTP id z3so253236pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 13:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8KnDK4lPfD3ThErmqjMOkJqIG1D+dLUhlEHhC7zHGyQ=;
 b=kMRk+d3kGoGcM14Fj8KK6z5Yvpj78HolILDt022nsA80s67Q95IBM+hKdlhH5N2RnO
 3/mgjP1ddXUULum6oNJhSEnrIeKVodpQSFDuAZqRhtagyUSceqFxyFLGfXYu5tqTQbh9
 HHanuj64WLpepEnv+UBQbLWE317V4JxGa1/DxCnMYQ75WmEymU8yYpuQ9elGGMpTDaFQ
 MprXCN7RI5uVTYSTxBL659EZZWhXHh6rOJm5qLunYqEBNkovi++89DtaQAR/CCLjAOdk
 jO4BLYH5uXWuCmjm5s40CHFXjoCwsKKDfEbOhaIJROGqz7uC63sa0/msjf7CDQT77wvr
 tx5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8KnDK4lPfD3ThErmqjMOkJqIG1D+dLUhlEHhC7zHGyQ=;
 b=CX9Jd0tF7d2KL5iG8Cou3NVeniYwnPs+SexLLT2i/xbcmd9w20mO129c9n/xNsylTI
 z8apLBoHj0mKeZC8jfjOxPhLFVDIMyy80YgFYpC6nE4LjGLrsJekBXzgX+jm9uTCanjP
 upgF8lxUUpC3klCja5QCTiHRLBctUFzWL6kwCV++YmwRKV7zi//GMvVg7SEAc8kZgFNq
 X0PKiWNlSIWCXxRuARCJJJuysoQANRW+MLfumw13N6KnUO2OBzJO+KV9AO8R/0Z42Yfw
 upJcjzxOh3x9YDk0nhPWmvO4t/di7ZjYSZFGk1dMY10JbgfhiXrXzio7Xj5d9dBDV+Iz
 6qnA==
X-Gm-Message-State: AGi0PuZ5BYc1QpHfmrKb9Ao50YOejRk5pVwO0ejQFYQD7sKj3Bxu5SYX
 ONgGsQU1wrhq2sbLscEsxhanGg==
X-Google-Smtp-Source: APiQypIxqfTmYOscCTssroZulr1ZWx6qppCwC/i48VMqcar+nE80Hxbwwzzdacvkw01iJ8lW+FtHrg==
X-Received: by 2002:a17:90a:1784:: with SMTP id
 q4mr1232457pja.174.1586292600830; 
 Tue, 07 Apr 2020 13:50:00 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:ec7d:96d3:6e2d:dcab?
 ([2605:e000:100e:8c61:ec7d:96d3:6e2d:dcab])
 by smtp.gmail.com with ESMTPSA id b11sm862891pgj.92.2020.04.07.13.49.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 13:50:00 -0700 (PDT)
Subject: Re: [PATCH] ata: ahci-imx: remove redundant assignment to ret
To: Colin King <colin.king@canonical.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200405115120.366864-1-colin.king@canonical.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <ac93c383-fdc3-a818-9e3b-faed462c31e5@kernel.dk>
Date: Tue, 7 Apr 2020 13:49:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200405115120.366864-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_135001_891369_C93DF2B1 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/5/20 4:51 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable ret is being initialized with a value that is never read
> and it is being updated later with a new value.  The initialization is
> redundant and can be removed.

Applied, thanks.

-- 
Jens Axboe


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
