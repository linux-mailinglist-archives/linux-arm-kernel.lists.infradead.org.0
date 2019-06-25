Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2C654FDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26c3jdUD9/xWvTcGxizR8EJGRoJW4jdD+AFRyVnQ3R8=; b=AaWfthRddu6hnp
	YL351OrktYtNyNsjGz3gAoADmXS++gWKFWmKgS9Cp4MKVsWSQrXNH2oOVIoDAExOy2csMTV9sQHaK
	l5NVAdmGspQQRzCmtDBKxpaHtehTsxM3P5iWzDlgTBEsZRVza+d2KQLorAwFebSei4j4Ydaq73ld5
	bJMSwulcS8dKTjyomUNiyI4h2a7mKCTrZAyOy03ME8RTpI1F0uh2aZ/XpzXn5CCRYy6UdEJ7WfcO2
	vCOa9j4SaKGp3i4TxkiqyBmDZZ/ng8Qof3PdnAzPmjMCM2gqFWrHv+OhVSNDZrqI6vfJuaPPQUfdY
	alhdM/26eMvPmolInIRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflC5-0005Pp-Lu; Tue, 25 Jun 2019 13:09:05 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl81-0001c2-54
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:56 +0000
Received: by mail-lf1-x142.google.com with SMTP id x144so5131097lfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QvCzs2OEz28t37MaYhx6njYcchjdmn9fO6I52zy4pLQ=;
 b=pUzsJ95bnukiZaC6ETnrYJf0XDBNJQSFx43LsEpntqF/4fSmvl88ibd9V1fH/bsI4S
 ubo1bYawtjEFz+Vx3LLmcuIBGsIg3YzjeRtVxiqWa5TuJHjtDn4qZ/qPs/AmmshSIj2+
 Z0ARoAdD+eg8FzBQ/E8i9LIiS3rAzJpRzM5JvK0jY/+04L47WkIVkB9e0iiAY0foky89
 3p7xcVYAY2zPg7fBD8at7Q/VvOtTO9dnE11L0gtu76CpSpTxSWFLtQDw8YxgHOV0LuYh
 0wl6v032yVspjaEiYk2GjtlVjQR7z8e8dVihupDYaZ02Lo7T7uzUb6rKHj8rPSLQWcHd
 IxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QvCzs2OEz28t37MaYhx6njYcchjdmn9fO6I52zy4pLQ=;
 b=Q7mrKPV47EndcODgd+skAB5rLWyP976xjPYoz5ODvQ/sVHMzNh4uidGggrNhwYmW89
 7gdgvODtKjn8TtSmVZlGz33WpstfW3PW/F9XooSDUHZZIF7sjDUmqquo34qwVeYRFfiH
 fV51wZ/i3OZKI6ENPEx0H/SH7Du5QLJVPrWV7bLVYR3VrbMvaVWSNHOd9PEbIgk6i8VV
 KUOtBH7bDoFkKHhzt63Ie+ZaANINaQlZvmEgOBF3Mhospc6YUjKZI1YtZxOukJgo7+Mw
 gLpEAxmpXFGHzNl28NbiNxCSuCKNnb+AMoBD7iLg68u2BTihFZs8owpIVahAAn1bd5oI
 Xc3w==
X-Gm-Message-State: APjAAAW6KsJBmc/XCTuDEoxv74J/0M8QYW76yb/n3yij/kZ9/bLShckK
 0Q38m0ZRF2CEFJ1e9FaZfq9QWA==
X-Google-Smtp-Source: APXvYqzk6gFyl/+6p+l3Zvw1nCvlVtLXhDzbDr8R9gC/2x2W7zJUNcB/bh1iPz7b10i641kGXmCGzw==
X-Received: by 2002:ac2:43b7:: with SMTP id t23mr30136867lfl.110.1561467891248; 
 Tue, 25 Jun 2019 06:04:51 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y18sm2262581ljh.1.2019.06.25.06.04.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:49 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:42:24 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 2/5] memory: tegra: Changes for v5.3-rc1
Message-ID: <20190625124224.dyccwpfgv2b3b4vo@localhost>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
 <20190621150206.19037-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621150206.19037-2-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060453_259256_0EE51C3B 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 05:02:03PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-memory
> 
> for you to fetch changes up to 76ce48bdb303afa6e33cfbadca9d6bee23a4f559:
> 
>   memory: tegra: Fix -Wunused-const-variable (2019-06-14 18:02:02 +0200)


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
