Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B0C48377
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERClU10zmfJzJXfUGqKhGXDdhBZJWaO5z8Dm4QWBgTY=; b=PJtKRuq9Z6R0NS
	GL9H/jIRZtmsmYhmFz8y0wNANzFn+0K+HrnVd/d5JU75u7b7b0+l4vpKPDYa2yjN5i6woIsJ16y4z
	UmcpLZjMuJzvF3ujipUKWG5TN3WA0+HBTwdTmmn3oe02DG9B8GyhMKzRTIv64pltlfY5pkhqqEo4F
	oCuJ+vxQGDIApXFLLMgpT/3/sCWTS4qi+2hYls6VtICICHfLAQW+NqqPkLPdLzZFnGZsmiapnJhmu
	0+DEYzlxCVsT2Y2+UrqIF4OlIqUV7u2F5c5d0s3Ouxx7OPWr+XhCIJC7iYRA0ZwgrMjeUt8EyVqXZ
	hctbLPsWOGeFT9CaskyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrLA-0005N5-Dz; Mon, 17 Jun 2019 13:06:28 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrK9-0004gE-5y
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:05:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id r9so9226843ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6+a6LzOkznKqnUaLZCO2aGdfchIFnCvw96EhVNt76fQ=;
 b=XouSp0zb13XJfEwjwDOFYMOLvCaplpCbR1EhLP7aU/UoM67o6jZ3XIV7sh7e4ZCHho
 L5zhC+BnqVXvIAGw4zfZQY09niJE8jWW5KeiIRnnt5xqMSQAFJ1pTRKjPpkbnpBBKLFz
 OWefyFJbk/3yzefUCuIO5fAEs3aMF7Xq6/kagrKChXsG8YRTTd4MAuNfbscKLa2gWRWc
 7Op6JWSZ0205sSAYr7nuqZruqP+LYELqeh4lZPql1urcgeQaU5LonxEzuHyOGWG1FmEt
 sHzLVyWo4fKe/d1EKDbo4Lzx8ih2rWQPO6lgpQh0WJKAJbM2HjmQwrqUMsbB2aTMgUEw
 7xGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6+a6LzOkznKqnUaLZCO2aGdfchIFnCvw96EhVNt76fQ=;
 b=avQDAFGhmN2Zjd61JpRwrFt3jX2e1v33FhtJvmJQc1EGIXpxOEgW9PtGyQpf8EJ1/f
 OBOpkwscrS5BDabgFNTDZYW2deMiiv+1yX/BMPmnXd3nGogqrmJ+3QWhXy5T6bSc3sjL
 qN24ILbE20GzQfjdWfpG8KSySvw7Cyun3CnvYRtTAxdgnLD0Ksnt/AE6XHvB0RqHeVMl
 wdJHJkrlMXswsKGkxKDDMzid47GHRVpBkgqEWMuRqXcY3A0KyyuZMxoxrMBxUbQ47YoQ
 I5xNqBQ34Efd/BxW1Pem7scv5gi3btKh9NfgeqmEILfiKq+lxNWlB6civX3HGGuzADyj
 eaOg==
X-Gm-Message-State: APjAAAVfZbV/r89jl3GHaBA+E/d2ikHAf9si/uNtOCBvRgZipDHPFDP7
 BARS8uOcLpvSY0CsmU0dmoNx4A==
X-Google-Smtp-Source: APXvYqygeZJwXbO27VNFJ5qUrcVWv9722IrZCLpcNBOACLZWz4kqEAtrLWQANhOhucMBMaw0qIMa8g==
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr477133ljk.106.1560776723409; 
 Mon, 17 Jun 2019 06:05:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h13sm2105823ljb.10.2019.06.17.06.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:05:21 -0700 (PDT)
Date: Mon, 17 Jun 2019 05:14:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 3/3] Rockchip soc32 updates for 5.3 round 1
Message-ID: <20190617121440.hafvcek4m34m6cwd@localhost>
References: <3004130.oi6ZuZy1Zf@phil>
 <6757963.JBp9oB5bj2@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6757963.JBp9oB5bj2@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060525_240252_0B20AAD8 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:55:28AM +0200, Heiko Stuebner wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-soc32-1
> 
> for you to fetch changes up to c2af88f1a0cdf4cbe94b51fd93e52a3f55606a13:
> 
>   ARM: rockchip: fix missing of_node_put calls in smp code (2019-05-20 01:00:41 +0200)
> 
> ----------------------------------------------------------------
> Another missing of_node_put

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
