Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCFDB69D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qxv/dOvoajN56SccigtpVhNHUlSEvLkkTHvM/hDzBAQ=; b=TUucm4772XYiqK
	BJ2kNu+mReORyNNX7JwYsLY+Fk9+IoblewroCf5oe2BbLjOP8Tnt8UrG6oftvSY4gkPurU2GcwFzo
	jVj6OPXZm7EDFHUtyRA/FKXnkfDENBb+Y7nBeXpw5FEjKB2NtnzZgRACZKBJqkPIaaIT+ziBO1nPk
	D9Fg0THT+S7j5lJ1ZbR+99gPVrxCUjgjUEbOfGUnFzjJY7lU0VhGrO4GhBVwc8IWXAeCyxbufsFQ8
	BCn3HunC4pWpqfekiNLjhQ/CCEXOBq0aI3M3G30tRloBzYSNe3OQY025sDrQ3sUVwFGubCbtsUmOq
	nFCwzoi9GVVPJAJ2aZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqN3-0000Zl-8z; Sun, 28 Apr 2019 20:25:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHT-0008Ij-Lw
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id t10so6425215ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lT2S7Q41J31sCP6SmAFYi7XGfcEABBt2Q6xlbRzlZc4=;
 b=EEKQt53CYGXBcLut0a2ED4LcVB9CYnhVG/7NVsNjR44BP3PQbY3BJ3keL9dAAgkYDB
 xIhEraQJ0uhzrBbW/YJ/rpDC71teDFJTbivtzyKGs9V8WIIIAnwLbpM2HT2y1IwGw+a1
 QCIBNskL6DahP5cMdUc1s6MbJxmJy0nwJf8QFAPAn5lywklfBB+Te4zfDaN7vLu/YjUi
 1iWBRgy/3v1xCLWT9OIv/ESBPJSGB3IKsXV+j/2dA+xS2rnc3Y1DZ6mKAGsBcYhg3d24
 b34WnX1PoiwWw09nKhp+W69r+dx98x+UWyyXI65VghHBe840c5p+Zd9oS4ED0gwmi4fS
 T2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lT2S7Q41J31sCP6SmAFYi7XGfcEABBt2Q6xlbRzlZc4=;
 b=oFA5aWTObKRkp1WGiJxwXWk7QZJ1lGBD5z7poeDrq3kHUA7WJZdMK3kTT0VYkn50Xa
 3x19Aj9zdSTlfa8tAr5/ncgQ4ND7j+VHcmbv2RdjX2Gd50tB5jMg+FaqPv9nKcJkFQjH
 WT5qPNwrT8XGagkW3pasPNVBboE5N8G+B4oT0GEV+inhuB4zhohpXl0ZB1Si4vc56B0s
 QjWQACPJZKzDZVDyl4tNekwlMSlbKDpnOObjWIbpkFGMlzUymF3fISRkodyKfXW248+Y
 ivZHjg7NWsAR19e8dNpMtA5TiAzMtNoUzEI+iWIM3fnWf4RSe1k77pW/4P16lqzEopak
 oOzw==
X-Gm-Message-State: APjAAAXreJ3BluMMSVf3pSXF2AR6Lup/JwHGhKSvxIw9HTgfHSVBCDcS
 RVJOXktofagUWo+9LNv9FWvvAw==
X-Google-Smtp-Source: APXvYqzXZw97OoyMZ6YmrJECIkBXKS0jT2PaBPy5mL3n8PicqFGtllwzaJwx1QL0DiMMvbCSKa8mXw==
X-Received: by 2002:a2e:9d12:: with SMTP id t18mr30964853lji.163.1556482810062; 
 Sun, 28 Apr 2019 13:20:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y7sm6518981ljy.65.2019.04.28.13.20.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:08 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:52:14 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <andygro@gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.2
Message-ID: <20190428195214.e5fqygkxvsgjtlny@localhost>
References: <1555997248-11513-1-git-send-email-agross@kernel.org>
 <1555997248-11513-2-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555997248-11513-2-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132011_831995_D2DDF370 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 12:27:25AM -0500, Andy Gross wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git tags/qcom-arm64-for-5.2
> 
> for you to fetch changes up to 6ef7c11b31a57e43062da15a36fac54fcb97b533:
> 
>   arm64: dts: sdm845: Introduce ADSP and CDSP PAS nodes (2019-04-23 00:10:35 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm ARM64 Updates for v5.2
> 
> * Add gpio ranges for Qualcomm platforms
> * Fix MSM8998 BLSP2 I2C5 address
> * Add MSM8998 UFS nodes and associated information
> * Add SDM845 interconnect header and usage
> * Add ADSP and CDSP PAS, RMTFS memory, and UFS phy reset on SDM845
> * Update reserved memory map on SDM845
> * Add QCS404 spmi regulators, ethernet, bluetooth, and uart3
> * Remove remotely-controlled property as default for BAM on QCS404
> * Add spmi regulators on PMS405
> * Fixup QCS404 l3 voltages and regulator supply names
> * Fixup thermal trip names on Qualcomm platforms
> * Add thermal sensors on Qualcomm platforms
> * Remove invalid efficiency property on MSM8998
> * Change QCS404-evb compatible to help distinguish platforms
> * Add rpmhd header file and convert to use definitions on SDM845
> * Add interconnect header file on SDM845
> * Add PMS405 ADC binding

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
